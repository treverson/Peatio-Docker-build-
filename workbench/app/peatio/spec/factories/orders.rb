# encoding: UTF-8
# frozen_string_literal: true

FactoryBot.define do
  factory :order_bid do
    bid { Currency.find_by!(code: :usd).id }
    ask { Currency.find_by!(code: :btc).id }
    market { Market.find(:btcusd) }
    state :wait
    source 'Web'
    ord_type 'limit'
    price { '1'.to_d }
    volume { '1'.to_d }
    origin_volume { volume }
    locked { price.to_d * volume.to_d }
    origin_locked { locked }
    member { create(:member) }
  end

  factory :order_ask do
    bid { Currency.find_by!(code: :usd).id }
    ask { Currency.find_by!(code: :btc).id }
    market { Market.find(:btcusd) }
    state :wait
    source 'Web'
    ord_type 'limit'
    price { '1'.to_d }
    volume { '1'.to_d }
    origin_volume { volume }
    locked { volume }
    origin_locked { locked }
    member { create(:member) }
  end
end

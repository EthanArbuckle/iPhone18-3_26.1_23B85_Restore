@interface MTRCommodityTariffClusterTariffPriceStruct
- (MTRCommodityTariffClusterTariffPriceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityTariffClusterTariffPriceStruct

- (MTRCommodityTariffClusterTariffPriceStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRCommodityTariffClusterTariffPriceStruct;
  v2 = [(MTRCommodityTariffClusterTariffPriceStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    priceType = v2->_priceType;
    v2->_priceType = &unk_284C3E588;

    price = v3->_price;
    v3->_price = 0;

    priceLevel = v3->_priceLevel;
    v3->_priceLevel = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterTariffPriceStruct);
  priceType = [(MTRCommodityTariffClusterTariffPriceStruct *)self priceType];
  [(MTRCommodityTariffClusterTariffPriceStruct *)v4 setPriceType:priceType];

  price = [(MTRCommodityTariffClusterTariffPriceStruct *)self price];
  [(MTRCommodityTariffClusterTariffPriceStruct *)v4 setPrice:price];

  priceLevel = [(MTRCommodityTariffClusterTariffPriceStruct *)self priceLevel];
  [(MTRCommodityTariffClusterTariffPriceStruct *)v4 setPriceLevel:priceLevel];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: priceType:%@ price:%@; priceLevel:%@; >", v5, self->_priceType, self->_price, self->_priceLevel];;

  return v6;
}

@end
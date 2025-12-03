@interface MTRCommodityPriceClusterCommodityPriceStruct
- (MTRCommodityPriceClusterCommodityPriceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterCommodityPriceStruct

- (MTRCommodityPriceClusterCommodityPriceStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRCommodityPriceClusterCommodityPriceStruct;
  v2 = [(MTRCommodityPriceClusterCommodityPriceStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    periodStart = v2->_periodStart;
    v2->_periodStart = &unk_284C3E588;

    periodEnd = v3->_periodEnd;
    v3->_periodEnd = 0;

    price = v3->_price;
    v3->_price = 0;

    priceLevel = v3->_priceLevel;
    v3->_priceLevel = 0;

    descriptionString = v3->_descriptionString;
    v3->_descriptionString = 0;

    components = v3->_components;
    v3->_components = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterCommodityPriceStruct);
  periodStart = [(MTRCommodityPriceClusterCommodityPriceStruct *)self periodStart];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPeriodStart:periodStart];

  periodEnd = [(MTRCommodityPriceClusterCommodityPriceStruct *)self periodEnd];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPeriodEnd:periodEnd];

  price = [(MTRCommodityPriceClusterCommodityPriceStruct *)self price];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPrice:price];

  priceLevel = [(MTRCommodityPriceClusterCommodityPriceStruct *)self priceLevel];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPriceLevel:priceLevel];

  descriptionString = [(MTRCommodityPriceClusterCommodityPriceStruct *)self descriptionString];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setDescriptionString:descriptionString];

  components = [(MTRCommodityPriceClusterCommodityPriceStruct *)self components];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setComponents:components];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: periodStart:%@ periodEnd:%@; price:%@; priceLevel:%@; descriptionString:%@; components:%@; >", v5, self->_periodStart, self->_periodEnd, self->_price, self->_priceLevel, self->_descriptionString, self->_components];;

  return v6;
}

@end
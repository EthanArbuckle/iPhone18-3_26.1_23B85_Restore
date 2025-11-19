@interface MTRCommodityPriceClusterCommodityPriceStruct
- (MTRCommodityPriceClusterCommodityPriceStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterCommodityPriceStruct);
  v5 = [(MTRCommodityPriceClusterCommodityPriceStruct *)self periodStart];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPeriodStart:v5];

  v6 = [(MTRCommodityPriceClusterCommodityPriceStruct *)self periodEnd];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPeriodEnd:v6];

  v7 = [(MTRCommodityPriceClusterCommodityPriceStruct *)self price];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPrice:v7];

  v8 = [(MTRCommodityPriceClusterCommodityPriceStruct *)self priceLevel];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setPriceLevel:v8];

  v9 = [(MTRCommodityPriceClusterCommodityPriceStruct *)self descriptionString];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setDescriptionString:v9];

  v10 = [(MTRCommodityPriceClusterCommodityPriceStruct *)self components];
  [(MTRCommodityPriceClusterCommodityPriceStruct *)v4 setComponents:v10];

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
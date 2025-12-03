@interface MTRCommodityPriceClusterCommodityPriceComponentStruct
- (MTRCommodityPriceClusterCommodityPriceComponentStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterCommodityPriceComponentStruct

- (MTRCommodityPriceClusterCommodityPriceComponentStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCommodityPriceClusterCommodityPriceComponentStruct;
  v2 = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    price = v2->_price;
    v2->_price = &unk_284C3E588;

    source = v3->_source;
    v3->_source = &unk_284C3E588;

    descriptionString = v3->_descriptionString;
    v3->_descriptionString = 0;

    tariffComponentID = v3->_tariffComponentID;
    v3->_tariffComponentID = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterCommodityPriceComponentStruct);
  price = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self price];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setPrice:price];

  source = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self source];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setSource:source];

  descriptionString = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self descriptionString];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setDescriptionString:descriptionString];

  tariffComponentID = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self tariffComponentID];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setTariffComponentID:tariffComponentID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: price:%@ source:%@; descriptionString:%@; tariffComponentID:%@; >", v5, self->_price, self->_source, self->_descriptionString, self->_tariffComponentID];;

  return v6;
}

@end
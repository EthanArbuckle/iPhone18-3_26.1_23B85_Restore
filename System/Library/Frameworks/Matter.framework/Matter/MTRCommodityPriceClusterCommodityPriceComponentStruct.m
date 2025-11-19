@interface MTRCommodityPriceClusterCommodityPriceComponentStruct
- (MTRCommodityPriceClusterCommodityPriceComponentStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterCommodityPriceComponentStruct);
  v5 = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self price];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setPrice:v5];

  v6 = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self source];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setSource:v6];

  v7 = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self descriptionString];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setDescriptionString:v7];

  v8 = [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)self tariffComponentID];
  [(MTRCommodityPriceClusterCommodityPriceComponentStruct *)v4 setTariffComponentID:v8];

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
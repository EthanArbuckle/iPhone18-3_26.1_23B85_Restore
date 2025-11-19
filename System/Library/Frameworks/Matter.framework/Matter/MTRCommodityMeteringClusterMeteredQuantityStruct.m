@interface MTRCommodityMeteringClusterMeteredQuantityStruct
- (MTRCommodityMeteringClusterMeteredQuantityStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityMeteringClusterMeteredQuantityStruct

- (MTRCommodityMeteringClusterMeteredQuantityStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRCommodityMeteringClusterMeteredQuantityStruct;
  v2 = [(MTRCommodityMeteringClusterMeteredQuantityStruct *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    tariffComponentIDs = v2->_tariffComponentIDs;
    v2->_tariffComponentIDs = v3;

    quantity = v2->_quantity;
    v2->_quantity = &unk_284C3E588;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityMeteringClusterMeteredQuantityStruct);
  v5 = [(MTRCommodityMeteringClusterMeteredQuantityStruct *)self tariffComponentIDs];
  [(MTRCommodityMeteringClusterMeteredQuantityStruct *)v4 setTariffComponentIDs:v5];

  v6 = [(MTRCommodityMeteringClusterMeteredQuantityStruct *)self quantity];
  [(MTRCommodityMeteringClusterMeteredQuantityStruct *)v4 setQuantity:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: tariffComponentIDs:%@ quantity:%@; >", v5, self->_tariffComponentIDs, self->_quantity];;

  return v6;
}

@end
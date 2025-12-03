@interface MTRCommodityPriceClusterPriceChangeEvent
- (MTRCommodityPriceClusterPriceChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterPriceChangeEvent

- (MTRCommodityPriceClusterPriceChangeEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRCommodityPriceClusterPriceChangeEvent;
  v2 = [(MTRCommodityPriceClusterPriceChangeEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    currentPrice = v2->_currentPrice;
    v2->_currentPrice = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterPriceChangeEvent);
  currentPrice = [(MTRCommodityPriceClusterPriceChangeEvent *)self currentPrice];
  [(MTRCommodityPriceClusterPriceChangeEvent *)v4 setCurrentPrice:currentPrice];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: currentPrice:%@ >", v5, self->_currentPrice];;

  return v6;
}

@end
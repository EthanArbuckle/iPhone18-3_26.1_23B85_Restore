@interface MTRCommodityTariffClusterTariffPeriodStruct
- (MTRCommodityTariffClusterTariffPeriodStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterTariffPeriodStruct

- (MTRCommodityTariffClusterTariffPeriodStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRCommodityTariffClusterTariffPeriodStruct;
  v2 = [(MTRCommodityTariffClusterTariffPeriodStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    label = v2->_label;
    v2->_label = 0;

    v5 = [MEMORY[0x277CBEA60] array];
    dayEntryIDs = v3->_dayEntryIDs;
    v3->_dayEntryIDs = v5;

    v7 = [MEMORY[0x277CBEA60] array];
    tariffComponentIDs = v3->_tariffComponentIDs;
    v3->_tariffComponentIDs = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterTariffPeriodStruct);
  v5 = [(MTRCommodityTariffClusterTariffPeriodStruct *)self label];
  [(MTRCommodityTariffClusterTariffPeriodStruct *)v4 setLabel:v5];

  v6 = [(MTRCommodityTariffClusterTariffPeriodStruct *)self dayEntryIDs];
  [(MTRCommodityTariffClusterTariffPeriodStruct *)v4 setDayEntryIDs:v6];

  v7 = [(MTRCommodityTariffClusterTariffPeriodStruct *)self tariffComponentIDs];
  [(MTRCommodityTariffClusterTariffPeriodStruct *)v4 setTariffComponentIDs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: label:%@ dayEntryIDs:%@; tariffComponentIDs:%@; >", v5, self->_label, self->_dayEntryIDs, self->_tariffComponentIDs];;

  return v6;
}

@end
@interface MTRCommodityTariffClusterTariffPeriodStruct
- (MTRCommodityTariffClusterTariffPeriodStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

    array = [MEMORY[0x277CBEA60] array];
    dayEntryIDs = v3->_dayEntryIDs;
    v3->_dayEntryIDs = array;

    array2 = [MEMORY[0x277CBEA60] array];
    tariffComponentIDs = v3->_tariffComponentIDs;
    v3->_tariffComponentIDs = array2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterTariffPeriodStruct);
  label = [(MTRCommodityTariffClusterTariffPeriodStruct *)self label];
  [(MTRCommodityTariffClusterTariffPeriodStruct *)v4 setLabel:label];

  dayEntryIDs = [(MTRCommodityTariffClusterTariffPeriodStruct *)self dayEntryIDs];
  [(MTRCommodityTariffClusterTariffPeriodStruct *)v4 setDayEntryIDs:dayEntryIDs];

  tariffComponentIDs = [(MTRCommodityTariffClusterTariffPeriodStruct *)self tariffComponentIDs];
  [(MTRCommodityTariffClusterTariffPeriodStruct *)v4 setTariffComponentIDs:tariffComponentIDs];

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
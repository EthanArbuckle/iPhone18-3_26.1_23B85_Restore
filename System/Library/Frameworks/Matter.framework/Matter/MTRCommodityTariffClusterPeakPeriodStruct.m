@interface MTRCommodityTariffClusterPeakPeriodStruct
- (MTRCommodityTariffClusterPeakPeriodStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterPeakPeriodStruct

- (MTRCommodityTariffClusterPeakPeriodStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRCommodityTariffClusterPeakPeriodStruct;
  v2 = [(MTRCommodityTariffClusterPeakPeriodStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    severity = v2->_severity;
    v2->_severity = &unk_284C3E588;

    peakPeriod = v3->_peakPeriod;
    v3->_peakPeriod = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterPeakPeriodStruct);
  v5 = [(MTRCommodityTariffClusterPeakPeriodStruct *)self severity];
  [(MTRCommodityTariffClusterPeakPeriodStruct *)v4 setSeverity:v5];

  v6 = [(MTRCommodityTariffClusterPeakPeriodStruct *)self peakPeriod];
  [(MTRCommodityTariffClusterPeakPeriodStruct *)v4 setPeakPeriod:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: severity:%@ peakPeriod:%@; >", v5, self->_severity, self->_peakPeriod];;

  return v6;
}

@end
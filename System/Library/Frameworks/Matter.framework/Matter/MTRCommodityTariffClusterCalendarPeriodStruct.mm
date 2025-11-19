@interface MTRCommodityTariffClusterCalendarPeriodStruct
- (MTRCommodityTariffClusterCalendarPeriodStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterCalendarPeriodStruct

- (MTRCommodityTariffClusterCalendarPeriodStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRCommodityTariffClusterCalendarPeriodStruct;
  v2 = [(MTRCommodityTariffClusterCalendarPeriodStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    startDate = v2->_startDate;
    v2->_startDate = 0;

    v5 = [MEMORY[0x277CBEA60] array];
    dayPatternIDs = v3->_dayPatternIDs;
    v3->_dayPatternIDs = v5;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterCalendarPeriodStruct);
  v5 = [(MTRCommodityTariffClusterCalendarPeriodStruct *)self startDate];
  [(MTRCommodityTariffClusterCalendarPeriodStruct *)v4 setStartDate:v5];

  v6 = [(MTRCommodityTariffClusterCalendarPeriodStruct *)self dayPatternIDs];
  [(MTRCommodityTariffClusterCalendarPeriodStruct *)v4 setDayPatternIDs:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: startDate:%@ dayPatternIDs:%@; >", v5, self->_startDate, self->_dayPatternIDs];;

  return v6;
}

@end
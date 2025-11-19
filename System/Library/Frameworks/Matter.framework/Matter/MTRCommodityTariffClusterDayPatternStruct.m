@interface MTRCommodityTariffClusterDayPatternStruct
- (MTRCommodityTariffClusterDayPatternStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterDayPatternStruct

- (MTRCommodityTariffClusterDayPatternStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCommodityTariffClusterDayPatternStruct;
  v2 = [(MTRCommodityTariffClusterDayPatternStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    dayPatternID = v2->_dayPatternID;
    v2->_dayPatternID = &unk_284C3E588;

    daysOfWeek = v3->_daysOfWeek;
    v3->_daysOfWeek = &unk_284C3E588;

    v6 = [MEMORY[0x277CBEA60] array];
    dayEntryIDs = v3->_dayEntryIDs;
    v3->_dayEntryIDs = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterDayPatternStruct);
  v5 = [(MTRCommodityTariffClusterDayPatternStruct *)self dayPatternID];
  [(MTRCommodityTariffClusterDayPatternStruct *)v4 setDayPatternID:v5];

  v6 = [(MTRCommodityTariffClusterDayPatternStruct *)self daysOfWeek];
  [(MTRCommodityTariffClusterDayPatternStruct *)v4 setDaysOfWeek:v6];

  v7 = [(MTRCommodityTariffClusterDayPatternStruct *)self dayEntryIDs];
  [(MTRCommodityTariffClusterDayPatternStruct *)v4 setDayEntryIDs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: dayPatternID:%@ daysOfWeek:%@; dayEntryIDs:%@; >", v5, self->_dayPatternID, self->_daysOfWeek, self->_dayEntryIDs];;

  return v6;
}

@end
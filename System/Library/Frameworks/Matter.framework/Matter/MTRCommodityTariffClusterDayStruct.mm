@interface MTRCommodityTariffClusterDayStruct
- (MTRCommodityTariffClusterDayStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityTariffClusterDayStruct

- (MTRCommodityTariffClusterDayStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCommodityTariffClusterDayStruct;
  v2 = [(MTRCommodityTariffClusterDayStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    date = v2->_date;
    v2->_date = &unk_284C3E588;

    dayType = v3->_dayType;
    v3->_dayType = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    dayEntryIDs = v3->_dayEntryIDs;
    v3->_dayEntryIDs = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterDayStruct);
  date = [(MTRCommodityTariffClusterDayStruct *)self date];
  [(MTRCommodityTariffClusterDayStruct *)v4 setDate:date];

  dayType = [(MTRCommodityTariffClusterDayStruct *)self dayType];
  [(MTRCommodityTariffClusterDayStruct *)v4 setDayType:dayType];

  dayEntryIDs = [(MTRCommodityTariffClusterDayStruct *)self dayEntryIDs];
  [(MTRCommodityTariffClusterDayStruct *)v4 setDayEntryIDs:dayEntryIDs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: date:%@ dayType:%@; dayEntryIDs:%@; >", v5, self->_date, self->_dayType, self->_dayEntryIDs];;

  return v6;
}

@end
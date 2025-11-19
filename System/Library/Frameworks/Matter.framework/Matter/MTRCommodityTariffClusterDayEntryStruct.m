@interface MTRCommodityTariffClusterDayEntryStruct
- (MTRCommodityTariffClusterDayEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCommodityTariffClusterDayEntryStruct

- (MTRCommodityTariffClusterDayEntryStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRCommodityTariffClusterDayEntryStruct;
  v2 = [(MTRCommodityTariffClusterDayEntryStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    dayEntryID = v2->_dayEntryID;
    v2->_dayEntryID = &unk_284C3E588;

    startTime = v3->_startTime;
    v3->_startTime = &unk_284C3E588;

    duration = v3->_duration;
    v3->_duration = 0;

    randomizationOffset = v3->_randomizationOffset;
    v3->_randomizationOffset = 0;

    randomizationType = v3->_randomizationType;
    v3->_randomizationType = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCommodityTariffClusterDayEntryStruct);
  v5 = [(MTRCommodityTariffClusterDayEntryStruct *)self dayEntryID];
  [(MTRCommodityTariffClusterDayEntryStruct *)v4 setDayEntryID:v5];

  v6 = [(MTRCommodityTariffClusterDayEntryStruct *)self startTime];
  [(MTRCommodityTariffClusterDayEntryStruct *)v4 setStartTime:v6];

  v7 = [(MTRCommodityTariffClusterDayEntryStruct *)self duration];
  [(MTRCommodityTariffClusterDayEntryStruct *)v4 setDuration:v7];

  v8 = [(MTRCommodityTariffClusterDayEntryStruct *)self randomizationOffset];
  [(MTRCommodityTariffClusterDayEntryStruct *)v4 setRandomizationOffset:v8];

  v9 = [(MTRCommodityTariffClusterDayEntryStruct *)self randomizationType];
  [(MTRCommodityTariffClusterDayEntryStruct *)v4 setRandomizationType:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: dayEntryID:%@ startTime:%@; duration:%@; randomizationOffset:%@; randomizationType:%@; >", v5, self->_dayEntryID, self->_startTime, self->_duration, self->_randomizationOffset, self->_randomizationType];;

  return v6;
}

@end
@interface MTREnergyEVSEClusterChargingTargetScheduleStruct
- (MTREnergyEVSEClusterChargingTargetScheduleStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTREnergyEVSEClusterChargingTargetScheduleStruct

- (MTREnergyEVSEClusterChargingTargetScheduleStruct)init
{
  v8.receiver = self;
  v8.super_class = MTREnergyEVSEClusterChargingTargetScheduleStruct;
  v2 = [(MTREnergyEVSEClusterChargingTargetScheduleStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    dayOfWeekForSequence = v2->_dayOfWeekForSequence;
    v2->_dayOfWeekForSequence = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    chargingTargets = v3->_chargingTargets;
    v3->_chargingTargets = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterChargingTargetScheduleStruct);
  dayOfWeekForSequence = [(MTREnergyEVSEClusterChargingTargetScheduleStruct *)self dayOfWeekForSequence];
  [(MTREnergyEVSEClusterChargingTargetScheduleStruct *)v4 setDayOfWeekForSequence:dayOfWeekForSequence];

  chargingTargets = [(MTREnergyEVSEClusterChargingTargetScheduleStruct *)self chargingTargets];
  [(MTREnergyEVSEClusterChargingTargetScheduleStruct *)v4 setChargingTargets:chargingTargets];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: dayOfWeekForSequence:%@ chargingTargets:%@; >", v5, self->_dayOfWeekForSequence, self->_chargingTargets];;

  return v6;
}

@end
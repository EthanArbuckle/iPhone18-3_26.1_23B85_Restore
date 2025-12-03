@interface MTREnergyEVSEClusterChargingTargetStruct
- (MTREnergyEVSEClusterChargingTargetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTREnergyEVSEClusterChargingTargetStruct

- (MTREnergyEVSEClusterChargingTargetStruct)init
{
  v8.receiver = self;
  v8.super_class = MTREnergyEVSEClusterChargingTargetStruct;
  v2 = [(MTREnergyEVSEClusterChargingTargetStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    targetTimeMinutesPastMidnight = v2->_targetTimeMinutesPastMidnight;
    v2->_targetTimeMinutesPastMidnight = &unk_284C3E588;

    targetSoC = v3->_targetSoC;
    v3->_targetSoC = 0;

    addedEnergy = v3->_addedEnergy;
    v3->_addedEnergy = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterChargingTargetStruct);
  targetTimeMinutesPastMidnight = [(MTREnergyEVSEClusterChargingTargetStruct *)self targetTimeMinutesPastMidnight];
  [(MTREnergyEVSEClusterChargingTargetStruct *)v4 setTargetTimeMinutesPastMidnight:targetTimeMinutesPastMidnight];

  targetSoC = [(MTREnergyEVSEClusterChargingTargetStruct *)self targetSoC];
  [(MTREnergyEVSEClusterChargingTargetStruct *)v4 setTargetSoC:targetSoC];

  addedEnergy = [(MTREnergyEVSEClusterChargingTargetStruct *)self addedEnergy];
  [(MTREnergyEVSEClusterChargingTargetStruct *)v4 setAddedEnergy:addedEnergy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: targetTimeMinutesPastMidnight:%@ targetSoC:%@; addedEnergy:%@; >", v5, self->_targetTimeMinutesPastMidnight, self->_targetSoC, self->_addedEnergy];;

  return v6;
}

@end
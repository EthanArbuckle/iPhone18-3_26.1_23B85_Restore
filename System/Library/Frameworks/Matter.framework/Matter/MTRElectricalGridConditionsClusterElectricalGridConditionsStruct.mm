@interface MTRElectricalGridConditionsClusterElectricalGridConditionsStruct
- (MTRElectricalGridConditionsClusterElectricalGridConditionsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalGridConditionsClusterElectricalGridConditionsStruct

- (MTRElectricalGridConditionsClusterElectricalGridConditionsStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRElectricalGridConditionsClusterElectricalGridConditionsStruct;
  v2 = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    periodStart = v2->_periodStart;
    v2->_periodStart = &unk_284C3E588;

    periodEnd = v3->_periodEnd;
    v3->_periodEnd = 0;

    gridCarbonIntensity = v3->_gridCarbonIntensity;
    v3->_gridCarbonIntensity = &unk_284C3E588;

    gridCarbonLevel = v3->_gridCarbonLevel;
    v3->_gridCarbonLevel = &unk_284C3E588;

    localCarbonIntensity = v3->_localCarbonIntensity;
    v3->_localCarbonIntensity = &unk_284C3E588;

    localCarbonLevel = v3->_localCarbonLevel;
    v3->_localCarbonLevel = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct);
  periodStart = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)self periodStart];
  [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)v4 setPeriodStart:periodStart];

  periodEnd = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)self periodEnd];
  [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)v4 setPeriodEnd:periodEnd];

  gridCarbonIntensity = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)self gridCarbonIntensity];
  [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)v4 setGridCarbonIntensity:gridCarbonIntensity];

  gridCarbonLevel = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)self gridCarbonLevel];
  [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)v4 setGridCarbonLevel:gridCarbonLevel];

  localCarbonIntensity = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)self localCarbonIntensity];
  [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)v4 setLocalCarbonIntensity:localCarbonIntensity];

  localCarbonLevel = [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)self localCarbonLevel];
  [(MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *)v4 setLocalCarbonLevel:localCarbonLevel];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: periodStart:%@ periodEnd:%@; gridCarbonIntensity:%@; gridCarbonLevel:%@; localCarbonIntensity:%@; localCarbonLevel:%@; >", v5, self->_periodStart, self->_periodEnd, self->_gridCarbonIntensity, self->_gridCarbonLevel, self->_localCarbonIntensity, self->_localCarbonLevel];;

  return v6;
}

@end
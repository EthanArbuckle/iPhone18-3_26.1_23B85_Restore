@interface MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct
- (MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct

- (MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct;
  v2 = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    importedResetTimestamp = v2->_importedResetTimestamp;
    v2->_importedResetTimestamp = 0;

    exportedResetTimestamp = v3->_exportedResetTimestamp;
    v3->_exportedResetTimestamp = 0;

    importedResetSystime = v3->_importedResetSystime;
    v3->_importedResetSystime = 0;

    exportedResetSystime = v3->_exportedResetSystime;
    v3->_exportedResetSystime = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct);
  v5 = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)self importedResetTimestamp];
  [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)v4 setImportedResetTimestamp:v5];

  v6 = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)self exportedResetTimestamp];
  [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)v4 setExportedResetTimestamp:v6];

  v7 = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)self importedResetSystime];
  [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)v4 setImportedResetSystime:v7];

  v8 = [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)self exportedResetSystime];
  [(MTRElectricalEnergyMeasurementClusterCumulativeEnergyResetStruct *)v4 setExportedResetSystime:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: importedResetTimestamp:%@ exportedResetTimestamp:%@; importedResetSystime:%@; exportedResetSystime:%@; >", v5, self->_importedResetTimestamp, self->_exportedResetTimestamp, self->_importedResetSystime, self->_exportedResetSystime];;

  return v6;
}

@end
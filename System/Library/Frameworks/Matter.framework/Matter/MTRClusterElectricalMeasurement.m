@interface MTRClusterElectricalMeasurement
- (NSDictionary)readAttributeAcActivePowerOverloadWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcCurrentDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcCurrentMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcCurrentOverloadWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcFrequencyDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcFrequencyMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcFrequencyMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcFrequencyMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcFrequencyWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcOverloadAlarmsMaskWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcPowerDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcPowerMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcReactivePowerOverloadWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcVoltageDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcVoltageMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcVoltageOverloadWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveCurrentPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveCurrentPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerMaxPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerMaxPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerMinPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerMinPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActivePowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeApparentPowerPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeApparentPowerPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeApparentPowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsOverVoltageCounterPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsOverVoltageCounterPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsOverVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsUnderVoltageCounterPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsUnderVoltageCounterPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsUnderVoltageCounterWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsUnderVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAverageRmsVoltageMeasurementPeriodWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentOverloadWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcCurrentDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcCurrentMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcCurrentMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcCurrentMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcPowerDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcPowerMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcPowerMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcPowerMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcPowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcVoltageDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcVoltageMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcVoltageMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcVoltageMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDcVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeHarmonicCurrentMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeInstantaneousActiveCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeInstantaneousLineCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeInstantaneousPowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeInstantaneousReactiveCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeInstantaneousVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLineCurrentPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLineCurrentPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasured11thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasured1stHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasured3rdHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasured5thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasured7thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasured9thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasuredPhase11thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasuredPhase1stHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasuredPhase3rdHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasuredPhase5thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasuredPhase7thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasuredPhase9thHarmonicCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeasurementTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNeutralCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOverloadAlarmsMaskWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePhaseHarmonicCurrentMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePowerDivisorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePowerFactorPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePowerFactorPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePowerFactorWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePowerMultiplierWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeReactiveCurrentPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeReactiveCurrentPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeReactivePowerPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeReactivePowerPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeReactivePowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentMaxPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentMaxPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentMinPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentMinPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeOverVoltagePeriodWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeOverVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeUnderVoltagePeriodWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsExtremeUnderVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageMaxPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageMaxPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageMinPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageMinPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltagePhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltagePhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSagPeriodPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSagPeriodPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSagPeriodWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSagWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSwellPeriodPhaseBWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSwellPeriodPhaseCWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSwellPeriodWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageSwellWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRmsVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTotalActivePowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTotalApparentPowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTotalReactivePowerWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeVoltageOverloadWithParams:(MTRReadParams *)params;
- (void)getMeasurementProfileCommandWithParams:(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)getProfileInfoCommandWithParams:(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)writeAttributeAcOverloadAlarmsMaskWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeAverageRmsUnderVoltageCounterWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeAverageRmsVoltageMeasurementPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOverloadAlarmsMaskWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeRmsExtremeOverVoltagePeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeRmsExtremeUnderVoltagePeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeRmsVoltageSagPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeRmsVoltageSwellPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterElectricalMeasurement

- (void)getProfileInfoCommandWithParams:(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v7 = completion;
  v8 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23927BE4C;
  block[3] = &unk_278A72B88;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)getMeasurementProfileCommandWithParams:(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v7 = completion;
  v8 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23927BF90;
  block[3] = &unk_278A72B88;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (NSDictionary)readAttributeMeasurementTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C407D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40958 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcVoltageMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40A78 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcVoltageMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40A90 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40970 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcCurrentMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40AA8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcCurrentMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40AC0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcPowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40AD8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcPowerMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40AF0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcPowerMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcVoltageMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcVoltageDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B38 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcCurrentMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcCurrentDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B68 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcPowerMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B80 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDcPowerDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40B98 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcFrequencyWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C406A0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcFrequencyMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40BB0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcFrequencyMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40BC8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNeutralCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40BE0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTotalActivePowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40BF8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTotalReactivePowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40C10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTotalApparentPowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40C28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasured1stHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40C40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasured3rdHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40C58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasured5thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40C70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasured7thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40C88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasured9thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40CA0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasured11thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40CB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasuredPhase1stHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40CD0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasuredPhase3rdHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40CE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasuredPhase5thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D00 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasuredPhase7thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D18 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasuredPhase9thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D30 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeasuredPhase11thHarmonicCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D48 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcFrequencyMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D60 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcFrequencyDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D78 params:v4];

  return v7;
}

- (NSDictionary)readAttributePowerMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40D90 params:v4];

  return v7;
}

- (NSDictionary)readAttributePowerDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40DA8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeHarmonicCurrentMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40DC0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePhaseHarmonicCurrentMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40DD8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeInstantaneousVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40DF0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeInstantaneousLineCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeInstantaneousActiveCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeInstantaneousReactiveCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E38 params:v4];

  return v7;
}

- (NSDictionary)readAttributeInstantaneousPowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E68 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E80 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40E98 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40EB0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40EC8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40EE0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40EF8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40F10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40F28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeReactivePowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40F40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeApparentPowerWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40F58 params:v4];

  return v7;
}

- (NSDictionary)readAttributePowerFactorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40F70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsVoltageMeasurementPeriodWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40F88 params:v4];

  return v7;
}

- (void)writeAttributeAverageRmsVoltageMeasurementPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C40F88 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeAverageRmsUnderVoltageCounterWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40FA0 params:v4];

  return v7;
}

- (void)writeAttributeAverageRmsUnderVoltageCounterWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C40FA0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeRmsExtremeOverVoltagePeriodWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40FB8 params:v4];

  return v7;
}

- (void)writeAttributeRmsExtremeOverVoltagePeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C40FB8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeRmsExtremeUnderVoltagePeriodWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40FD0 params:v4];

  return v7;
}

- (void)writeAttributeRmsExtremeUnderVoltagePeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C40FD0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeRmsVoltageSagPeriodWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40FE8 params:v4];

  return v7;
}

- (void)writeAttributeRmsVoltageSagPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C40FE8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeRmsVoltageSwellPeriodWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41000 params:v4];

  return v7;
}

- (void)writeAttributeRmsVoltageSwellPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C41000 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeAcVoltageMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41018 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcVoltageDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41030 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcCurrentMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41048 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcCurrentDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41060 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcPowerMultiplierWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41078 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcPowerDivisorWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41090 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOverloadAlarmsMaskWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C410A8 params:v4];

  return v7;
}

- (void)writeAttributeOverloadAlarmsMaskWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C410A8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeVoltageOverloadWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C410C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentOverloadWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C410D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcOverloadAlarmsMaskWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C410F0 params:v4];

  return v7;
}

- (void)writeAttributeAcOverloadAlarmsMaskWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C40A60 attributeID:&unk_284C410F0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeAcVoltageOverloadWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41108 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcCurrentOverloadWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41120 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcActivePowerOverloadWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41138 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcReactivePowerOverloadWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41150 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsOverVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41168 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsUnderVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41180 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsExtremeOverVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41198 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsExtremeUnderVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C411B0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageSagWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C411C8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageSwellWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C411E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLineCurrentPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C411F8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveCurrentPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41210 params:v4];

  return v7;
}

- (NSDictionary)readAttributeReactiveCurrentPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41228 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltagePhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41240 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageMinPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41258 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageMaxPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41270 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41288 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentMinPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C412A0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentMaxPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C412B8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C412D0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerMinPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C412E8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerMaxPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41300 params:v4];

  return v7;
}

- (NSDictionary)readAttributeReactivePowerPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41318 params:v4];

  return v7;
}

- (NSDictionary)readAttributeApparentPowerPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41330 params:v4];

  return v7;
}

- (NSDictionary)readAttributePowerFactorPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41348 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41360 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsOverVoltageCounterPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41378 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsUnderVoltageCounterPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41390 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C413A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C413C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageSagPeriodPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C413D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageSwellPeriodPhaseBWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C413F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLineCurrentPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41408 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveCurrentPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41420 params:v4];

  return v7;
}

- (NSDictionary)readAttributeReactiveCurrentPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41438 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltagePhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41450 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageMinPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41468 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageMaxPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41480 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41498 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentMinPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C414B0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsCurrentMaxPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C414C8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C414E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerMinPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C414F8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActivePowerMaxPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41510 params:v4];

  return v7;
}

- (NSDictionary)readAttributeReactivePowerPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41528 params:v4];

  return v7;
}

- (NSDictionary)readAttributeApparentPowerPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41540 params:v4];

  return v7;
}

- (NSDictionary)readAttributePowerFactorPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41558 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41570 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsOverVoltageCounterPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41588 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAverageRmsUnderVoltageCounterPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C415A0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C415B8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C415D0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageSagPeriodPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C415E8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRmsVoltageSwellPeriodPhaseCWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C41600 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40808 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40820 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40838 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40850 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C40A60 attributeID:&unk_284C40868 params:v4];

  return v7;
}

@end
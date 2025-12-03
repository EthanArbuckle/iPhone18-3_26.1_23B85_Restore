@interface MTRClusterElectricalPowerMeasurement
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeAccuracyWithParams:(id)params;
- (id)readAttributeActiveCurrentWithParams:(id)params;
- (id)readAttributeActivePowerWithParams:(id)params;
- (id)readAttributeApparentCurrentWithParams:(id)params;
- (id)readAttributeApparentPowerWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeFrequencyWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeHarmonicCurrentsWithParams:(id)params;
- (id)readAttributeHarmonicPhasesWithParams:(id)params;
- (id)readAttributeNeutralCurrentWithParams:(id)params;
- (id)readAttributeNumberOfMeasurementTypesWithParams:(id)params;
- (id)readAttributePowerFactorWithParams:(id)params;
- (id)readAttributePowerModeWithParams:(id)params;
- (id)readAttributeRMSCurrentWithParams:(id)params;
- (id)readAttributeRMSPowerWithParams:(id)params;
- (id)readAttributeRMSVoltageWithParams:(id)params;
- (id)readAttributeRangesWithParams:(id)params;
- (id)readAttributeReactiveCurrentWithParams:(id)params;
- (id)readAttributeReactivePowerWithParams:(id)params;
- (id)readAttributeVoltageWithParams:(id)params;
@end

@implementation MTRClusterElectricalPowerMeasurement

- (id)readAttributePowerModeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeNumberOfMeasurementTypesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAccuracyWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributeRangesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributeVoltageWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeActiveCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (id)readAttributeReactiveCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41840 params:paramsCopy];

  return v7;
}

- (id)readAttributeApparentCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41B10 params:paramsCopy];

  return v7;
}

- (id)readAttributeActivePowerWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41918 params:paramsCopy];

  return v7;
}

- (id)readAttributeReactivePowerWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41B28 params:paramsCopy];

  return v7;
}

- (id)readAttributeApparentPowerWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41B40 params:paramsCopy];

  return v7;
}

- (id)readAttributeRMSVoltageWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41B58 params:paramsCopy];

  return v7;
}

- (id)readAttributeRMSCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41B70 params:paramsCopy];

  return v7;
}

- (id)readAttributeRMSPowerWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41B88 params:paramsCopy];

  return v7;
}

- (id)readAttributeFrequencyWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41BA0 params:paramsCopy];

  return v7;
}

- (id)readAttributeHarmonicCurrentsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41960 params:paramsCopy];

  return v7;
}

- (id)readAttributeHarmonicPhasesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41978 params:paramsCopy];

  return v7;
}

- (id)readAttributePowerFactorWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41990 params:paramsCopy];

  return v7;
}

- (id)readAttributeNeutralCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C419A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C425A8 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end
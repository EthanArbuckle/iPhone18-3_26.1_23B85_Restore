@interface MTRClusterElectricalPowerMeasurement
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeAccuracyWithParams:(id)a3;
- (id)readAttributeActiveCurrentWithParams:(id)a3;
- (id)readAttributeActivePowerWithParams:(id)a3;
- (id)readAttributeApparentCurrentWithParams:(id)a3;
- (id)readAttributeApparentPowerWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeFrequencyWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeHarmonicCurrentsWithParams:(id)a3;
- (id)readAttributeHarmonicPhasesWithParams:(id)a3;
- (id)readAttributeNeutralCurrentWithParams:(id)a3;
- (id)readAttributeNumberOfMeasurementTypesWithParams:(id)a3;
- (id)readAttributePowerFactorWithParams:(id)a3;
- (id)readAttributePowerModeWithParams:(id)a3;
- (id)readAttributeRMSCurrentWithParams:(id)a3;
- (id)readAttributeRMSPowerWithParams:(id)a3;
- (id)readAttributeRMSVoltageWithParams:(id)a3;
- (id)readAttributeRangesWithParams:(id)a3;
- (id)readAttributeReactiveCurrentWithParams:(id)a3;
- (id)readAttributeReactivePowerWithParams:(id)a3;
- (id)readAttributeVoltageWithParams:(id)a3;
@end

@implementation MTRClusterElectricalPowerMeasurement

- (id)readAttributePowerModeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeNumberOfMeasurementTypesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeAccuracyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeRangesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeVoltageWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (id)readAttributeActiveCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (id)readAttributeReactiveCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (id)readAttributeApparentCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (id)readAttributeActivePowerWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (id)readAttributeReactivePowerWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (id)readAttributeApparentPowerWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (id)readAttributeRMSVoltageWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (id)readAttributeRMSCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (id)readAttributeRMSPowerWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41B88 params:v4];

  return v7;
}

- (id)readAttributeFrequencyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41BA0 params:v4];

  return v7;
}

- (id)readAttributeHarmonicCurrentsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (id)readAttributeHarmonicPhasesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (id)readAttributePowerFactorWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (id)readAttributeNeutralCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C425A8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
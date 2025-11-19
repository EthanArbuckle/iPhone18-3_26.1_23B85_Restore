@interface MTRClusterPowerSource
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveBatChargeFaultsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveBatFaultsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveWiredFaultsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatANSIDesignationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatApprovedChemistryWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatCapacityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatChargeLevelWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatChargeStateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatChargingCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatCommonDesignationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatFunctionalWhileChargingWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatIECDesignationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatPercentRemainingWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatPresentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatQuantityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatReplaceabilityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatReplacementDescriptionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatReplacementNeededWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatTimeRemainingWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatTimeToFullChargeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBatVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDescriptionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOrderWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeStatusWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredAssessedCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredAssessedInputFrequencyWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredAssessedInputVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredCurrentTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredMaximumCurrentWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredNominalVoltageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiredPresentWithParams:(MTRReadParams *)params;
- (id)readAttributeEndpointListWithParams:(id)a3;
@end

@implementation MTRClusterPowerSource

- (NSDictionary)readAttributeStatusWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOrderWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDescriptionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredAssessedInputVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredAssessedInputFrequencyWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredCurrentTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredAssessedCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredNominalVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredMaximumCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiredPresentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveWiredFaultsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatVoltageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatPercentRemainingWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatTimeRemainingWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41B88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatChargeLevelWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41BA0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatReplacementNeededWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatReplaceabilityWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatPresentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveBatFaultsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatReplacementDescriptionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatCommonDesignationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatANSIDesignationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatIECDesignationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatApprovedChemistryWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatCapacityWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41BE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatQuantityWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41CF0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatChargeStateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41D08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatTimeToFullChargeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41D20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatFunctionalWhileChargingWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C419F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBatChargingCurrentWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41A08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveBatChargeFaultsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41A20 params:v4];

  return v7;
}

- (id)readAttributeEndpointListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41A50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41CC0 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
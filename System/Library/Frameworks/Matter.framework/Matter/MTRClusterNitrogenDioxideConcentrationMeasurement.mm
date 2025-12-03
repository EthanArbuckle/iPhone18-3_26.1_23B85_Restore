@interface MTRClusterNitrogenDioxideConcentrationMeasurement
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeAverageMeasuredValueWindowWithParams:(id)params;
- (id)readAttributeAverageMeasuredValueWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeLevelValueWithParams:(id)params;
- (id)readAttributeMaxMeasuredValueWithParams:(id)params;
- (id)readAttributeMeasuredValueWithParams:(id)params;
- (id)readAttributeMeasurementMediumWithParams:(id)params;
- (id)readAttributeMeasurementUnitWithParams:(id)params;
- (id)readAttributeMinMeasuredValueWithParams:(id)params;
- (id)readAttributePeakMeasuredValueWindowWithParams:(id)params;
- (id)readAttributePeakMeasuredValueWithParams:(id)params;
- (id)readAttributeUncertaintyWithParams:(id)params;
@end

@implementation MTRClusterNitrogenDioxideConcentrationMeasurement

- (id)readAttributeMeasuredValueWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeMinMeasuredValueWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaxMeasuredValueWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributePeakMeasuredValueWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributePeakMeasuredValueWindowWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAverageMeasuredValueWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (id)readAttributeAverageMeasuredValueWindowWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41840 params:paramsCopy];

  return v7;
}

- (id)readAttributeUncertaintyWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41B10 params:paramsCopy];

  return v7;
}

- (id)readAttributeMeasurementUnitWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41918 params:paramsCopy];

  return v7;
}

- (id)readAttributeMeasurementMediumWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41B28 params:paramsCopy];

  return v7;
}

- (id)readAttributeLevelValueWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41B40 params:paramsCopy];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42F98 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end
@interface MTRClusterNitrogenDioxideConcentrationMeasurement
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeAverageMeasuredValueWindowWithParams:(id)a3;
- (id)readAttributeAverageMeasuredValueWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeLevelValueWithParams:(id)a3;
- (id)readAttributeMaxMeasuredValueWithParams:(id)a3;
- (id)readAttributeMeasuredValueWithParams:(id)a3;
- (id)readAttributeMeasurementMediumWithParams:(id)a3;
- (id)readAttributeMeasurementUnitWithParams:(id)a3;
- (id)readAttributeMinMeasuredValueWithParams:(id)a3;
- (id)readAttributePeakMeasuredValueWindowWithParams:(id)a3;
- (id)readAttributePeakMeasuredValueWithParams:(id)a3;
- (id)readAttributeUncertaintyWithParams:(id)a3;
@end

@implementation MTRClusterNitrogenDioxideConcentrationMeasurement

- (id)readAttributeMeasuredValueWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeMinMeasuredValueWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeMaxMeasuredValueWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributePeakMeasuredValueWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributePeakMeasuredValueWindowWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (id)readAttributeAverageMeasuredValueWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (id)readAttributeAverageMeasuredValueWindowWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (id)readAttributeUncertaintyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (id)readAttributeMeasurementUnitWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (id)readAttributeMeasurementMediumWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (id)readAttributeLevelValueWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42F98 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
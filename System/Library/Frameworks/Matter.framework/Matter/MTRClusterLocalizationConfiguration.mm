@interface MTRClusterLocalizationConfiguration
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveLocaleWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSupportedLocalesWithParams:(MTRReadParams *)params;
- (void)writeAttributeActiveLocaleWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterLocalizationConfiguration

- (NSDictionary)readAttributeActiveLocaleWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (void)writeAttributeActiveLocaleWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C416A8 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeSupportedLocalesWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41C60 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
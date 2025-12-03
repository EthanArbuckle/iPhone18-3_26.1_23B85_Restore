@interface MTRClusterModeSelect
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDescriptionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOnModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeStandardNamespaceWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeStartUpModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSupportedModesWithParams:(MTRReadParams *)params;
- (void)changeToModeWithParams:(MTRModeSelectClusterChangeToModeParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)writeAttributeOnModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeStartUpModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterModeSelect

- (void)changeToModeWithParams:(MTRModeSelectClusterChangeToModeParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRModeSelectClusterChangeToModeParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23930C360;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRModeSelectClusterChangeToModeParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRModeSelectClusterChangeToModeParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42218 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (NSDictionary)readAttributeDescriptionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeStandardNamespaceWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSupportedModesWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeStartUpModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (void)writeAttributeStartUpModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C417E0 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeOnModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (void)writeAttributeOnModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41948 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42230 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
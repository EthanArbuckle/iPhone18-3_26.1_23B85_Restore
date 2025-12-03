@interface MTRClusterZoneManagement
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeMaxUserDefinedZonesWithParams:(id)params;
- (id)readAttributeMaxZonesWithParams:(id)params;
- (id)readAttributeSensitivityMaxWithParams:(id)params;
- (id)readAttributeSensitivityWithParams:(id)params;
- (id)readAttributeTriggersWithParams:(id)params;
- (id)readAttributeTwoDCartesianMaxWithParams:(id)params;
- (id)readAttributeZonesWithParams:(id)params;
- (void)createOrUpdateTriggerWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)createTwoDCartesianZoneWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)removeTriggerWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)removeZoneWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)updateTwoDCartesianZoneWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)writeAttributeSensitivityWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
@end

@implementation MTRClusterZoneManagement

- (void)createTwoDCartesianZoneWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRZoneManagementClusterCreateTwoDCartesianZoneParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239360074;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43370 commandID:&unk_284C41660 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)updateTwoDCartesianZoneWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239360290;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43370 commandID:&unk_284C41780 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)removeZoneWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRZoneManagementClusterRemoveZoneParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393604B0;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRZoneManagementClusterRemoveZoneParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRZoneManagementClusterRemoveZoneParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43370 commandID:&unk_284C41798 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)createOrUpdateTriggerWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRZoneManagementClusterCreateOrUpdateTriggerParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393606D0;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRZoneManagementClusterCreateOrUpdateTriggerParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43370 commandID:&unk_284C417B0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)removeTriggerWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRZoneManagementClusterRemoveTriggerParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393608F0;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRZoneManagementClusterRemoveTriggerParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRZoneManagementClusterRemoveTriggerParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43370 commandID:&unk_284C417C8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (id)readAttributeMaxUserDefinedZonesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaxZonesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeZonesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributeTriggersWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributeSensitivityMaxWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeSensitivityWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (void)writeAttributeSensitivityWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41948 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeTwoDCartesianMaxWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41840 params:paramsCopy];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43388 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end
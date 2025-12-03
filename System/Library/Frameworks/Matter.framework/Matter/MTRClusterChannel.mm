@interface MTRClusterChannel
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeChannelListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentChannelWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLineupWithParams:(MTRReadParams *)params;
- (void)cancelRecordProgramWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)changeChannelByNumberWithParams:(MTRChannelClusterChangeChannelByNumberParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)changeChannelWithParams:(MTRChannelClusterChangeChannelParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)changeChannelWithParams:(MTRChannelClusterChangeChannelParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)getProgramGuideWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)recordProgramWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)skipChannelWithParams:(MTRChannelClusterSkipChannelParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
@end

@implementation MTRClusterChannel

- (void)changeChannelWithParams:(MTRChannelClusterChangeChannelParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRChannelClusterChangeChannelParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239352C14;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRChannelClusterChangeChannelParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRChannelClusterChangeChannelParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43118 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)changeChannelByNumberWithParams:(MTRChannelClusterChangeChannelByNumberParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRChannelClusterChangeChannelByNumberParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239352E30;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRChannelClusterChangeChannelByNumberParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRChannelClusterChangeChannelByNumberParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43118 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)skipChannelWithParams:(MTRChannelClusterSkipChannelParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRChannelClusterSkipChannelParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239353050;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRChannelClusterSkipChannelParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRChannelClusterSkipChannelParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43118 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)getProgramGuideWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRChannelClusterGetProgramGuideParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23935329C;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRChannelClusterGetProgramGuideParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRChannelClusterGetProgramGuideParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43118 commandID:&unk_284C417B0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)recordProgramWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRChannelClusterRecordProgramParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393534B8;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRChannelClusterRecordProgramParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRChannelClusterRecordProgramParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43118 commandID:&unk_284C418D0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)cancelRecordProgramWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRChannelClusterCancelRecordProgramParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393536D8;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRChannelClusterCancelRecordProgramParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRChannelClusterCancelRecordProgramParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C43118 commandID:&unk_284C418E8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (NSDictionary)readAttributeChannelListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLineupWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentChannelWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C43130 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (void)changeChannelWithParams:(MTRChannelClusterChangeChannelParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239353E60;
  v12[3] = &unk_278A736B8;
  v13 = v10;
  v11 = v10;
  [(MTRClusterChannel *)self changeChannelWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end
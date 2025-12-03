@interface MTRClusterOperationalState
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeCountdownTimeWithParams:(id)params;
- (id)readAttributeCurrentPhaseWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeOperationalErrorWithParams:(id)params;
- (id)readAttributeOperationalStateListWithParams:(id)params;
- (id)readAttributeOperationalStateWithParams:(id)params;
- (id)readAttributePhaseListWithParams:(id)params;
- (void)pauseWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)resumeWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)startWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)stopWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
@end

@implementation MTRClusterOperationalState

- (void)pauseWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTROperationalStateClusterPauseParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23931438C;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTROperationalStateClusterPauseParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTROperationalStateClusterPauseParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42458 commandID:&unk_284C41660 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)stopWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTROperationalStateClusterStopParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2393145D4;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTROperationalStateClusterStopParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTROperationalStateClusterStopParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42458 commandID:&unk_284C41768 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)startWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTROperationalStateClusterStartParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23931481C;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTROperationalStateClusterStartParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTROperationalStateClusterStartParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42458 commandID:&unk_284C41780 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)resumeWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTROperationalStateClusterResumeParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239314A64;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTROperationalStateClusterResumeParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTROperationalStateClusterResumeParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42458 commandID:&unk_284C41798 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (id)readAttributePhaseListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeCurrentPhaseWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeCountdownTimeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributeOperationalStateListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributeOperationalStateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeOperationalErrorWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42470 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end
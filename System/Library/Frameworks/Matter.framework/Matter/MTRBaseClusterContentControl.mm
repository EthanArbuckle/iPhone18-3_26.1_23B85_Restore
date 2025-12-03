@interface MTRBaseClusterContentControl
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeBlockUnratedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeOnDemandRatingThresholdWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeOnDemandRatingsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeRemainingScreenTimeWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeScheduledContentRatingThresholdWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeScheduledContentRatingsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeScreenDailyTimeWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
- (void)addBonusTimeWithParams:(id)params completion:(id)completion;
- (void)blockUnratedContentWithParams:(id)params completion:(id)completion;
- (void)disableWithParams:(id)params completion:(id)completion;
- (void)enableWithParams:(id)params completion:(id)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)completion;
- (void)readAttributeAttributeListWithCompletion:(id)completion;
- (void)readAttributeBlockUnratedWithCompletion:(id)completion;
- (void)readAttributeClusterRevisionWithCompletion:(id)completion;
- (void)readAttributeEnabledWithCompletion:(id)completion;
- (void)readAttributeFeatureMapWithCompletion:(id)completion;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)completion;
- (void)readAttributeOnDemandRatingThresholdWithCompletion:(id)completion;
- (void)readAttributeOnDemandRatingsWithCompletion:(id)completion;
- (void)readAttributeRemainingScreenTimeWithCompletion:(id)completion;
- (void)readAttributeScheduledContentRatingThresholdWithCompletion:(id)completion;
- (void)readAttributeScheduledContentRatingsWithCompletion:(id)completion;
- (void)readAttributeScreenDailyTimeWithCompletion:(id)completion;
- (void)resetPINWithParams:(id)params completion:(id)completion;
- (void)setOnDemandRatingThresholdWithParams:(id)params completion:(id)completion;
- (void)setScheduledContentRatingThresholdWithParams:(id)params completion:(id)completion;
- (void)setScreenDailyTimeWithParams:(id)params completion:(id)completion;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAttributeListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeBlockUnratedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeClusterRevisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeFeatureMapWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeOnDemandRatingThresholdWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeOnDemandRatingsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeRemainingScreenTimeWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeScheduledContentRatingThresholdWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeScheduledContentRatingsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeScreenDailyTimeWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)unblockUnratedContentWithParams:(id)params completion:(id)completion;
- (void)updatePINWithParams:(id)params completion:(id)completion;
@end

@implementation MTRBaseClusterContentControl

- (void)updatePINWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterUpdatePINParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391481D8;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterUpdatePINParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterUpdatePINParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E678 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)resetPINWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterResetPINParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2391483E0;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRContentControlClusterResetPINParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterResetPINParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E768 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)enableWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterEnableParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391485D4;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterEnableParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterEnableParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E798 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)disableWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterDisableParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391487CC;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterDisableParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterDisableParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E7B0 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)addBonusTimeWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterAddBonusTimeParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391489C4;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterAddBonusTimeParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterAddBonusTimeParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E7C8 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setScreenDailyTimeWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterSetScreenDailyTimeParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239148BB0;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterSetScreenDailyTimeParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterSetScreenDailyTimeParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E8A0 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)blockUnratedContentWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterBlockUnratedContentParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239148DA8;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterBlockUnratedContentParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterBlockUnratedContentParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E8B8 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)unblockUnratedContentWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterUnblockUnratedContentParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239148FA0;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterUnblockUnratedContentParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterUnblockUnratedContentParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3E8D0 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setOnDemandRatingThresholdWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterSetOnDemandRatingThresholdParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23914918C;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterSetOnDemandRatingThresholdParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterSetOnDemandRatingThresholdParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3EA68 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setScheduledContentRatingThresholdWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentControlClusterSetScheduledContentRatingThresholdParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239149378;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRContentControlClusterSetScheduledContentRatingThresholdParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentControlClusterSetScheduledContentRatingThresholdParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C400E8 commandID:&unk_284C3EA80 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6A8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6A8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:0 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeOnDemandRatingsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6C0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeOnDemandRatingsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6C0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeOnDemandRatingsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:1 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeOnDemandRatingThresholdWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E8E8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeOnDemandRatingThresholdWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E8E8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeOnDemandRatingThresholdWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:2 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeScheduledContentRatingsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E900 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeScheduledContentRatingsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E900 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeScheduledContentRatingsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:3 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeScheduledContentRatingThresholdWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E918 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeScheduledContentRatingThresholdWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E918 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeScheduledContentRatingThresholdWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:4 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeScreenDailyTimeWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E930 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeScreenDailyTimeWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E930 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeScreenDailyTimeWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:5 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeRemainingScreenTimeWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E948 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeRemainingScreenTimeWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E948 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeRemainingScreenTimeWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:6 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeBlockUnratedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3EAC8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeBlockUnratedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3EAC8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeBlockUnratedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:7 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6D8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6D8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:65528 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6F0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E6F0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:65529 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAttributeListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E708 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAttributeListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E708 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:65531 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E720 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E720 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:65532 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E738 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C400E8 attributeID:&unk_284C3E738 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1295 queue:65533 completion:{queueCopy, completionCopy}];
}

@end
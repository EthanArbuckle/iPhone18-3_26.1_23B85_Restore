@interface MTRBaseClusterContentAppObserver
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
- (void)contentAppMessageWithParams:(id)params completion:(id)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)completion;
- (void)readAttributeAttributeListWithCompletion:(id)completion;
- (void)readAttributeClusterRevisionWithCompletion:(id)completion;
- (void)readAttributeFeatureMapWithCompletion:(id)completion;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)completion;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAttributeListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeClusterRevisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeFeatureMapWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
@end

@implementation MTRBaseClusterContentAppObserver

- (void)contentAppMessageWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRContentAppObserverClusterContentAppMessageParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23914B99C;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRContentAppObserverClusterContentAppMessageParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRContentAppObserverClusterContentAppMessageParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40100 commandID:&unk_284C3E678 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E6D8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E6D8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1296 queue:65528 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E6F0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E6F0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1296 queue:65529 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAttributeListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E708 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAttributeListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E708 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1296 queue:65531 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E720 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E720 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1296 queue:65532 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E738 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40100 attributeID:&unk_284C3E738 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1296 queue:65533 completion:{queueCopy, completionCopy}];
}

@end
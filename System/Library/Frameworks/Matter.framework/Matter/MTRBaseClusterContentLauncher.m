@interface MTRBaseClusterContentLauncher
+ (void)readAttributeAcceptHeaderWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptHeaderWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeSupportedStreamingProtocolsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSupportedStreamingProtocolsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
- (void)launchContentWithParams:(MTRContentLauncherClusterLaunchContentParams *)params completion:(void *)completion;
- (void)launchContentWithParams:(MTRContentLauncherClusterLaunchContentParams *)params completionHandler:(void *)completionHandler;
- (void)launchURLWithParams:(MTRContentLauncherClusterLaunchURLParams *)params completion:(void *)completion;
- (void)launchURLWithParams:(MTRContentLauncherClusterLaunchURLParams *)params completionHandler:(void *)completionHandler;
- (void)readAttributeAcceptHeaderWithCompletion:(void *)completion;
- (void)readAttributeAcceptHeaderWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttributeListWithCompletion:(void *)completion;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletion:(void *)completion;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletion:(void *)completion;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSupportedStreamingProtocolsWithCompletion:(void *)completion;
- (void)readAttributeSupportedStreamingProtocolsWithCompletionHandler:(void *)completionHandler;
- (void)subscribeAttributeAcceptHeaderWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptHeaderWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSupportedStreamingProtocolsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSupportedStreamingProtocolsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)writeAttributeSupportedStreamingProtocolsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
@end

@implementation MTRBaseClusterContentLauncher

- (void)launchContentWithParams:(MTRContentLauncherClusterLaunchContentParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentLauncherClusterLaunchContentParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239136B9C;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRContentLauncherClusterLaunchContentParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentLauncherClusterLaunchContentParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C40070 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)launchURLWithParams:(MTRContentLauncherClusterLaunchURLParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentLauncherClusterLaunchURLParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239136D94;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRContentLauncherClusterLaunchURLParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentLauncherClusterLaunchURLParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C40070 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)readAttributeAcceptHeaderWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E6A8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptHeaderWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E6A8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptHeaderWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:0 queue:v10 completion:v11];
}

- (void)readAttributeSupportedStreamingProtocolsWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E6C0 params:0 queue:v6 completion:v7];
}

- (void)writeAttributeSupportedStreamingProtocolsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeSupportedStreamingProtocolsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E6C0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSupportedStreamingProtocolsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:1 queue:v10 completion:v11];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E6D8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E6D8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:65528 queue:v10 completion:v11];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E6F0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E6F0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:65529 queue:v10 completion:v11];
}

- (void)readAttributeAttributeListWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E708 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E708 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:65531 queue:v10 completion:v11];
}

- (void)readAttributeFeatureMapWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E720 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E720 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:65532 queue:v10 completion:v11];
}

- (void)readAttributeClusterRevisionWithCompletion:(void *)completion
{
  v7 = completion;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C40070 attributeID:&unk_284C3E738 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C40070 attributeID:&unk_284C3E738 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:1290 attributeID:65533 queue:v10 completion:v11];
}

- (void)launchContentWithParams:(MTRContentLauncherClusterLaunchContentParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239138628;
  v8[3] = &unk_278A737D0;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterContentLauncher *)self launchContentWithParams:params completion:v8];
}

- (void)launchURLWithParams:(MTRContentLauncherClusterLaunchURLParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2391386F4;
  v8[3] = &unk_278A737D0;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterContentLauncher *)self launchURLWithParams:params completion:v8];
}

- (void)readAttributeAcceptHeaderWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2391387B0;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeAcceptHeaderWithCompletion:v6];
}

- (void)subscribeAttributeAcceptHeaderWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239138930;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeAcceptHeaderWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptHeaderWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239138A58;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeAcceptHeaderWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSupportedStreamingProtocolsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239138B14;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeSupportedStreamingProtocolsWithCompletion:v6];
}

- (void)subscribeAttributeSupportedStreamingProtocolsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239138CA4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeSupportedStreamingProtocolsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSupportedStreamingProtocolsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239138DCC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeSupportedStreamingProtocolsWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239138E88;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeGeneratedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239139008;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239139130;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeGeneratedCommandListWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2391391EC;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeAcceptedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23913936C;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239139494;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeAcceptedCommandListWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239139550;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeAttributeListWithCompletion:v6];
}

- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2391396D0;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2391397F8;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeAttributeListWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2391398B4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeFeatureMapWithCompletion:v6];
}

- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239139A34;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239139B5C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeFeatureMapWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239139C18;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterContentLauncher *)self readAttributeClusterRevisionWithCompletion:v6];
}

- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239139D98;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterContentLauncher *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239139EC0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeClusterRevisionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

@end
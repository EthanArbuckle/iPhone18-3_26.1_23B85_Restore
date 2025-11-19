@interface MTRBaseClusterOnOffSwitchConfiguration
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
+ (void)readAttributeSwitchActionsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSwitchActionsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeSwitchTypeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSwitchTypeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
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
- (void)readAttributeSwitchActionsWithCompletion:(void *)completion;
- (void)readAttributeSwitchActionsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSwitchTypeWithCompletion:(void *)completion;
- (void)readAttributeSwitchTypeWithCompletionHandler:(void *)completionHandler;
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
- (void)subscribeAttributeSwitchActionsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSwitchActionsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSwitchTypeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSwitchTypeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)writeAttributeSwitchActionsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
@end

@implementation MTRBaseClusterOnOffSwitchConfiguration

- (void)readAttributeSwitchTypeWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922B9CC;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeSwitchTypeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922BB14;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeSwitchTypeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922BC34;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeSwitchActionsWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922BD7C;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeSwitchActionsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922BED0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeSwitchActionsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C014;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeSwitchActionsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C134;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C27C;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C3C4;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C4E4;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C62C;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C774;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C894;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAttributeListWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922C9DC;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922CB24;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922CC44;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeFeatureMapWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922CD8C;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922CED4;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922CFF4;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeClusterRevisionWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922D13C;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922D284;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922D3A4;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeSwitchTypeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23922D4DC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeSwitchTypeWithCompletion:v6];
}

- (void)subscribeAttributeSwitchTypeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23922D65C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeSwitchTypeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSwitchTypeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922D784;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeSwitchTypeWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSwitchActionsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23922D840;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeSwitchActionsWithCompletion:v6];
}

- (void)subscribeAttributeSwitchActionsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23922D9D0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeSwitchActionsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSwitchActionsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922DAF8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeSwitchActionsWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23922DBB4;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeGeneratedCommandListWithCompletion:v6];
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
  v19[2] = sub_23922DD34;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922DE5C;
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
  v6[2] = sub_23922DF18;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeAcceptedCommandListWithCompletion:v6];
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
  v19[2] = sub_23922E098;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922E1C0;
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
  v6[2] = sub_23922E27C;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeAttributeListWithCompletion:v6];
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
  v19[2] = sub_23922E3FC;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922E524;
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
  v6[2] = sub_23922E5E0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeFeatureMapWithCompletion:v6];
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
  v19[2] = sub_23922E760;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922E888;
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
  v6[2] = sub_23922E944;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self readAttributeClusterRevisionWithCompletion:v6];
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
  v19[2] = sub_23922EAC4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterOnOffSwitchConfiguration *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23922EBEC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeClusterRevisionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

@end
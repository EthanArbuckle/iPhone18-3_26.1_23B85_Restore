@interface MTRBaseClusterBarrierControl
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierCapabilitiesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierCapabilitiesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierCloseEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierCloseEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierClosePeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierClosePeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierCommandCloseEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierCommandCloseEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierCommandOpenEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierCommandOpenEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierMovingStateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierMovingStateWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierOpenEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierOpenEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierOpenPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierOpenPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierPositionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierPositionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBarrierSafetyStatusWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBarrierSafetyStatusWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
- (void)barrierControlGoToPercentWithParams:(MTRBarrierControlClusterBarrierControlGoToPercentParams *)params completion:(MTRStatusCompletion)completion;
- (void)barrierControlStopWithParams:(MTRBarrierControlClusterBarrierControlStopParams *)params completion:(MTRStatusCompletion)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttributeListWithCompletion:(void *)completion;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierCapabilitiesWithCompletion:(void *)completion;
- (void)readAttributeBarrierCapabilitiesWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierCloseEventsWithCompletion:(void *)completion;
- (void)readAttributeBarrierCloseEventsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierClosePeriodWithCompletion:(void *)completion;
- (void)readAttributeBarrierClosePeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierCommandCloseEventsWithCompletion:(void *)completion;
- (void)readAttributeBarrierCommandCloseEventsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierCommandOpenEventsWithCompletion:(void *)completion;
- (void)readAttributeBarrierCommandOpenEventsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierMovingStateWithCompletion:(void *)completion;
- (void)readAttributeBarrierMovingStateWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierOpenEventsWithCompletion:(void *)completion;
- (void)readAttributeBarrierOpenEventsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierOpenPeriodWithCompletion:(void *)completion;
- (void)readAttributeBarrierOpenPeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierPositionWithCompletion:(void *)completion;
- (void)readAttributeBarrierPositionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBarrierSafetyStatusWithCompletion:(void *)completion;
- (void)readAttributeBarrierSafetyStatusWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletion:(void *)completion;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletion:(void *)completion;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCapabilitiesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCapabilitiesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCloseEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCloseEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierClosePeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierClosePeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCommandCloseEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCommandCloseEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCommandOpenEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierCommandOpenEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierMovingStateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierMovingStateWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierOpenEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierOpenEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierOpenPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierOpenPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierPositionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierPositionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierSafetyStatusWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBarrierSafetyStatusWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)writeAttributeBarrierCloseEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeBarrierClosePeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeBarrierCommandCloseEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeBarrierCommandOpenEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeBarrierOpenEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeBarrierOpenPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
@end

@implementation MTRBaseClusterBarrierControl

- (void)barrierControlGoToPercentWithParams:(MTRBarrierControlClusterBarrierControlGoToPercentParams *)params completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  v6 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392371A4;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)barrierControlStopWithParams:(MTRBarrierControlClusterBarrierControlStopParams *)params completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  v6 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392372F4;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)readAttributeBarrierMovingStateWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237438;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeBarrierMovingStateWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237580;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierMovingStateWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392376A0;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierSafetyStatusWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392377E8;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeBarrierSafetyStatusWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237930;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierSafetyStatusWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237A50;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierCapabilitiesWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237B98;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeBarrierCapabilitiesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237CE0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierCapabilitiesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237E00;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierOpenEventsWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239237F48;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeBarrierOpenEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23923809C;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeBarrierOpenEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392381E0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierOpenEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238300;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierCloseEventsWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238448;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeBarrierCloseEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23923859C;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeBarrierCloseEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392386E0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierCloseEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238800;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierCommandOpenEventsWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238948;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeBarrierCommandOpenEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238A9C;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeBarrierCommandOpenEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238BE0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierCommandOpenEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238D00;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierCommandCloseEventsWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238E48;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeBarrierCommandCloseEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239238F9C;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeBarrierCommandCloseEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392390E0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierCommandCloseEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239200;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierOpenPeriodWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239348;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeBarrierOpenPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23923949C;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeBarrierOpenPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392395E0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierOpenPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239700;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierClosePeriodWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239848;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)writeAttributeBarrierClosePeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23923999C;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)subscribeAttributeBarrierClosePeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239AE0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierClosePeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239C00;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierPositionWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239D48;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscribeAttributeBarrierPositionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  v7 = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239E90;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)readAttributeBarrierPositionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239239FB0;
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
  block[2] = sub_23923A0F8;
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
  block[2] = sub_23923A240;
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
  block[2] = sub_23923A360;
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
  block[2] = sub_23923A4A8;
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
  block[2] = sub_23923A5F0;
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
  block[2] = sub_23923A710;
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
  block[2] = sub_23923A858;
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
  block[2] = sub_23923A9A0;
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
  block[2] = sub_23923AAC0;
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
  block[2] = sub_23923AC08;
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
  block[2] = sub_23923AD50;
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
  block[2] = sub_23923AE70;
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
  block[2] = sub_23923AFB8;
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
  block[2] = sub_23923B100;
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
  block[2] = sub_23923B220;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeBarrierMovingStateWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923B36C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierMovingStateWithCompletion:v6];
}

- (void)subscribeAttributeBarrierMovingStateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923B4EC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierMovingStateWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierMovingStateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923B614;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierMovingStateWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierSafetyStatusWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923B6D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierSafetyStatusWithCompletion:v6];
}

- (void)subscribeAttributeBarrierSafetyStatusWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923B850;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierSafetyStatusWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierSafetyStatusWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923B978;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierSafetyStatusWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierCapabilitiesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923BA34;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierCapabilitiesWithCompletion:v6];
}

- (void)subscribeAttributeBarrierCapabilitiesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923BBB4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierCapabilitiesWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierCapabilitiesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923BCDC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierCapabilitiesWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierOpenEventsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923BD98;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierOpenEventsWithCompletion:v6];
}

- (void)subscribeAttributeBarrierOpenEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923BF28;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierOpenEventsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierOpenEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923C050;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierOpenEventsWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierCloseEventsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923C10C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierCloseEventsWithCompletion:v6];
}

- (void)subscribeAttributeBarrierCloseEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923C29C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierCloseEventsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierCloseEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923C3C4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierCloseEventsWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierCommandOpenEventsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923C480;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierCommandOpenEventsWithCompletion:v6];
}

- (void)subscribeAttributeBarrierCommandOpenEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923C610;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierCommandOpenEventsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierCommandOpenEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923C738;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierCommandOpenEventsWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierCommandCloseEventsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923C7F4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierCommandCloseEventsWithCompletion:v6];
}

- (void)subscribeAttributeBarrierCommandCloseEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923C984;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierCommandCloseEventsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierCommandCloseEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923CAAC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierCommandCloseEventsWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierOpenPeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923CB68;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierOpenPeriodWithCompletion:v6];
}

- (void)subscribeAttributeBarrierOpenPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923CCF8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierOpenPeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierOpenPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923CE20;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierOpenPeriodWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierClosePeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923CEDC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierClosePeriodWithCompletion:v6];
}

- (void)subscribeAttributeBarrierClosePeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923D06C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierClosePeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierClosePeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923D194;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierClosePeriodWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBarrierPositionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923D250;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeBarrierPositionWithCompletion:v6];
}

- (void)subscribeAttributeBarrierPositionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23923D3D0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeBarrierPositionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBarrierPositionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923D4F8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeBarrierPositionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23923D5B4;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeGeneratedCommandListWithCompletion:v6];
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
  v19[2] = sub_23923D734;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923D85C;
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
  v6[2] = sub_23923D918;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeAcceptedCommandListWithCompletion:v6];
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
  v19[2] = sub_23923DA98;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923DBC0;
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
  v6[2] = sub_23923DC7C;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeAttributeListWithCompletion:v6];
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
  v19[2] = sub_23923DDFC;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923DF24;
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
  v6[2] = sub_23923DFE0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeFeatureMapWithCompletion:v6];
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
  v19[2] = sub_23923E160;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923E288;
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
  v6[2] = sub_23923E344;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBarrierControl *)self readAttributeClusterRevisionWithCompletion:v6];
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
  v19[2] = sub_23923E4C4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBarrierControl *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23923E5EC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeClusterRevisionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

@end
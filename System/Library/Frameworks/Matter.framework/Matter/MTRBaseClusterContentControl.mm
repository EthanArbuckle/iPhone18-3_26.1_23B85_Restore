@interface MTRBaseClusterContentControl
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeBlockUnratedWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeEnabledWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeOnDemandRatingThresholdWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeOnDemandRatingsWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeRemainingScreenTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeScheduledContentRatingThresholdWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeScheduledContentRatingsWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeScreenDailyTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)addBonusTimeWithParams:(id)a3 completion:(id)a4;
- (void)blockUnratedContentWithParams:(id)a3 completion:(id)a4;
- (void)disableWithParams:(id)a3 completion:(id)a4;
- (void)enableWithParams:(id)a3 completion:(id)a4;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3;
- (void)readAttributeAttributeListWithCompletion:(id)a3;
- (void)readAttributeBlockUnratedWithCompletion:(id)a3;
- (void)readAttributeClusterRevisionWithCompletion:(id)a3;
- (void)readAttributeEnabledWithCompletion:(id)a3;
- (void)readAttributeFeatureMapWithCompletion:(id)a3;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3;
- (void)readAttributeOnDemandRatingThresholdWithCompletion:(id)a3;
- (void)readAttributeOnDemandRatingsWithCompletion:(id)a3;
- (void)readAttributeRemainingScreenTimeWithCompletion:(id)a3;
- (void)readAttributeScheduledContentRatingThresholdWithCompletion:(id)a3;
- (void)readAttributeScheduledContentRatingsWithCompletion:(id)a3;
- (void)readAttributeScreenDailyTimeWithCompletion:(id)a3;
- (void)resetPINWithParams:(id)a3 completion:(id)a4;
- (void)setOnDemandRatingThresholdWithParams:(id)a3 completion:(id)a4;
- (void)setScheduledContentRatingThresholdWithParams:(id)a3 completion:(id)a4;
- (void)setScreenDailyTimeWithParams:(id)a3 completion:(id)a4;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeBlockUnratedWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeEnabledWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeOnDemandRatingThresholdWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeOnDemandRatingsWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeRemainingScreenTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeScheduledContentRatingThresholdWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeScheduledContentRatingsWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeScreenDailyTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)unblockUnratedContentWithParams:(id)a3 completion:(id)a4;
- (void)updatePINWithParams:(id)a3 completion:(id)a4;
@end

@implementation MTRBaseClusterContentControl

- (void)updatePINWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterUpdatePINParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391481D8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterUpdatePINParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterUpdatePINParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)resetPINWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterResetPINParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2391483E0;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRContentControlClusterResetPINParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterResetPINParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)enableWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterEnableParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391485D4;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterEnableParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterEnableParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E798 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)disableWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterDisableParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391487CC;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterDisableParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterDisableParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E7B0 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)addBonusTimeWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterAddBonusTimeParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2391489C4;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterAddBonusTimeParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterAddBonusTimeParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E7C8 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)setScreenDailyTimeWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterSetScreenDailyTimeParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239148BB0;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterSetScreenDailyTimeParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterSetScreenDailyTimeParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E8A0 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)blockUnratedContentWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterBlockUnratedContentParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239148DA8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterBlockUnratedContentParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterBlockUnratedContentParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E8B8 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)unblockUnratedContentWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterUnblockUnratedContentParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239148FA0;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterUnblockUnratedContentParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterUnblockUnratedContentParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3E8D0 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)setOnDemandRatingThresholdWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterSetOnDemandRatingThresholdParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23914918C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterSetOnDemandRatingThresholdParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterSetOnDemandRatingThresholdParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3EA68 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)setScheduledContentRatingThresholdWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRContentControlClusterSetScheduledContentRatingThresholdParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239149378;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRContentControlClusterSetScheduledContentRatingThresholdParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRContentControlClusterSetScheduledContentRatingThresholdParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C400E8 commandID:&unk_284C3EA80 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeEnabledWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6A8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeEnabledWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6A8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnabledWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:0 completion:{v10, v11}];
}

- (void)readAttributeOnDemandRatingsWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6C0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeOnDemandRatingsWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6C0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOnDemandRatingsWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:1 completion:{v10, v11}];
}

- (void)readAttributeOnDemandRatingThresholdWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E8E8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeOnDemandRatingThresholdWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E8E8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOnDemandRatingThresholdWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:2 completion:{v10, v11}];
}

- (void)readAttributeScheduledContentRatingsWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E900 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeScheduledContentRatingsWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E900 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeScheduledContentRatingsWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:3 completion:{v10, v11}];
}

- (void)readAttributeScheduledContentRatingThresholdWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E918 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeScheduledContentRatingThresholdWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E918 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeScheduledContentRatingThresholdWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:4 completion:{v10, v11}];
}

- (void)readAttributeScreenDailyTimeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E930 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeScreenDailyTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E930 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeScreenDailyTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:5 completion:{v10, v11}];
}

- (void)readAttributeRemainingScreenTimeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E948 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeRemainingScreenTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E948 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRemainingScreenTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:6 completion:{v10, v11}];
}

- (void)readAttributeBlockUnratedWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3EAC8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeBlockUnratedWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3EAC8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeBlockUnratedWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:7 completion:{v10, v11}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6D8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6D8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:65528 completion:{v10, v11}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6F0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E6F0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:65529 completion:{v10, v11}];
}

- (void)readAttributeAttributeListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E708 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E708 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:65531 completion:{v10, v11}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E720 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E720 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:65532 completion:{v10, v11}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C400E8 attributeID:&unk_284C3E738 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C400E8 attributeID:&unk_284C3E738 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:1295 queue:65533 completion:{v10, v11}];
}

@end
@interface MTRBaseClusterScenesManagement
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeFabricSceneInfoWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeSceneTableSizeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)addSceneWithParams:(id)a3 completion:(id)a4;
- (void)copySceneWithParams:(id)a3 completion:(id)a4;
- (void)getSceneMembershipWithParams:(id)a3 completion:(id)a4;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3;
- (void)readAttributeAttributeListWithCompletion:(id)a3;
- (void)readAttributeClusterRevisionWithCompletion:(id)a3;
- (void)readAttributeFabricSceneInfoWithParams:(id)a3 completion:(id)a4;
- (void)readAttributeFeatureMapWithCompletion:(id)a3;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3;
- (void)readAttributeSceneTableSizeWithCompletion:(id)a3;
- (void)recallSceneWithParams:(id)a3 completion:(id)a4;
- (void)removeAllScenesWithParams:(id)a3 completion:(id)a4;
- (void)removeSceneWithParams:(id)a3 completion:(id)a4;
- (void)storeSceneWithParams:(id)a3 completion:(id)a4;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeFabricSceneInfoWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeSceneTableSizeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)viewSceneWithParams:(id)a3 completion:(id)a4;
@end

@implementation MTRBaseClusterScenesManagement

- (void)addSceneWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterAddSceneParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239026930;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterAddSceneParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterAddSceneParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)viewSceneWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterViewSceneParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239026B28;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterViewSceneParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterViewSceneParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)removeSceneWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterRemoveSceneParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239026D20;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterRemoveSceneParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterRemoveSceneParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E780 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)removeAllScenesWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterRemoveAllScenesParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239026F18;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterRemoveAllScenesParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterRemoveAllScenesParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E798 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)storeSceneWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterStoreSceneParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239027110;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterStoreSceneParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterStoreSceneParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E7B0 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)recallSceneWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterRecallSceneParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390272F8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRScenesManagementClusterRecallSceneParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterRecallSceneParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E7C8 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)getSceneMembershipWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterGetSceneMembershipParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390274F4;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterGetSceneMembershipParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterGetSceneMembershipParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E8A0 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)copySceneWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRScenesManagementClusterCopySceneParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390276EC;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  v10 = [(MTRScenesManagementClusterCopySceneParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRScenesManagementClusterCopySceneParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  v15 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F440 commandID:&unk_284C3E690 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:v14 queue:v15 completion:{v9, v16, v17, v18, v19}];
}

- (void)readAttributeSceneTableSizeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F440 attributeID:&unk_284C3E6C0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeSceneTableSizeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E6C0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSceneTableSizeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:1 completion:{v10, v11}];
}

- (void)readAttributeFabricSceneInfoWithParams:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MTRGenericBaseCluster *)self device];
  v8 = [(MTRCluster *)self endpointID];
  v9 = [(MTRCluster *)self callbackQueue];
  [v7 _readKnownAttributeWithEndpointID:v8 clusterID:&unk_284C3F440 attributeID:&unk_284C3E8E8 params:v10 queue:v9 completion:v6];
}

- (void)subscribeAttributeFabricSceneInfoWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E8E8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFabricSceneInfoWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:2 completion:{v10, v11}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F440 attributeID:&unk_284C3E6D8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E6D8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:65528 completion:{v10, v11}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F440 attributeID:&unk_284C3E6F0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E6F0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:65529 completion:{v10, v11}];
}

- (void)readAttributeAttributeListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F440 attributeID:&unk_284C3E708 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E708 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:65531 completion:{v10, v11}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F440 attributeID:&unk_284C3E720 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E720 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:65532 completion:{v10, v11}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F440 attributeID:&unk_284C3E738 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F440 attributeID:&unk_284C3E738 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:98 queue:65533 completion:{v10, v11}];
}

@end
@interface MTRBaseClusterWaterHeaterManagement
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeBoostStateWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeEstimatedHeatRequiredWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeHeatDemandWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeHeaterTypesWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeTankPercentageWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeTankVolumeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)boostWithParams:(id)a3 completion:(id)a4;
- (void)cancelBoostWithParams:(id)a3 completion:(id)a4;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3;
- (void)readAttributeAttributeListWithCompletion:(id)a3;
- (void)readAttributeBoostStateWithCompletion:(id)a3;
- (void)readAttributeClusterRevisionWithCompletion:(id)a3;
- (void)readAttributeEstimatedHeatRequiredWithCompletion:(id)a3;
- (void)readAttributeFeatureMapWithCompletion:(id)a3;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3;
- (void)readAttributeHeatDemandWithCompletion:(id)a3;
- (void)readAttributeHeaterTypesWithCompletion:(id)a3;
- (void)readAttributeTankPercentageWithCompletion:(id)a3;
- (void)readAttributeTankVolumeWithCompletion:(id)a3;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeBoostStateWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeEstimatedHeatRequiredWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeHeatDemandWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeHeaterTypesWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeTankPercentageWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeTankVolumeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
@end

@implementation MTRBaseClusterWaterHeaterManagement

- (void)boostWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRWaterHeaterManagementClusterBoostParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239039D14;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRWaterHeaterManagementClusterBoostParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRWaterHeaterManagementClusterBoostParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F4E8 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)cancelBoostWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRWaterHeaterManagementClusterCancelBoostParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239039F0C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRWaterHeaterManagementClusterCancelBoostParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRWaterHeaterManagementClusterCancelBoostParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F4E8 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeHeaterTypesWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6A8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeHeaterTypesWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6A8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeHeaterTypesWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:0 completion:{v10, v11}];
}

- (void)readAttributeHeatDemandWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6C0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeHeatDemandWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6C0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeHeatDemandWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:1 completion:{v10, v11}];
}

- (void)readAttributeTankVolumeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E8E8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeTankVolumeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E8E8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTankVolumeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:2 completion:{v10, v11}];
}

- (void)readAttributeEstimatedHeatRequiredWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E900 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeEstimatedHeatRequiredWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E900 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEstimatedHeatRequiredWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:3 completion:{v10, v11}];
}

- (void)readAttributeTankPercentageWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E918 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeTankPercentageWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E918 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTankPercentageWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:4 completion:{v10, v11}];
}

- (void)readAttributeBoostStateWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E930 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeBoostStateWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E930 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeBoostStateWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:5 completion:{v10, v11}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6D8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6D8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:65528 completion:{v10, v11}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6F0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E6F0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:65529 completion:{v10, v11}];
}

- (void)readAttributeAttributeListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E708 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E708 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:65531 completion:{v10, v11}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E720 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E720 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:65532 completion:{v10, v11}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E738 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4E8 attributeID:&unk_284C3E738 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:148 queue:65533 completion:{v10, v11}];
}

@end
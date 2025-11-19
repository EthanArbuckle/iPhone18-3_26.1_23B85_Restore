@interface MTRBaseClusterValveConfigurationAndControl
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeAutoCloseTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeCurrentLevelWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeCurrentStateWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeDefaultOpenDurationWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeDefaultOpenLevelWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeLevelStepWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeOpenDurationWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeRemainingDurationWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeTargetLevelWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeTargetStateWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeValveFaultWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)closeWithParams:(id)a3 completion:(id)a4;
- (void)openWithParams:(id)a3 completion:(id)a4;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3;
- (void)readAttributeAttributeListWithCompletion:(id)a3;
- (void)readAttributeAutoCloseTimeWithCompletion:(id)a3;
- (void)readAttributeClusterRevisionWithCompletion:(id)a3;
- (void)readAttributeCurrentLevelWithCompletion:(id)a3;
- (void)readAttributeCurrentStateWithCompletion:(id)a3;
- (void)readAttributeDefaultOpenDurationWithCompletion:(id)a3;
- (void)readAttributeDefaultOpenLevelWithCompletion:(id)a3;
- (void)readAttributeFeatureMapWithCompletion:(id)a3;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3;
- (void)readAttributeLevelStepWithCompletion:(id)a3;
- (void)readAttributeOpenDurationWithCompletion:(id)a3;
- (void)readAttributeRemainingDurationWithCompletion:(id)a3;
- (void)readAttributeTargetLevelWithCompletion:(id)a3;
- (void)readAttributeTargetStateWithCompletion:(id)a3;
- (void)readAttributeValveFaultWithCompletion:(id)a3;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeAutoCloseTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeCurrentLevelWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeCurrentStateWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeDefaultOpenDurationWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeDefaultOpenLevelWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeLevelStepWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeOpenDurationWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeRemainingDurationWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeTargetLevelWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeTargetStateWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeValveFaultWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)writeAttributeDefaultOpenDurationWithValue:(id)a3 params:(id)a4 completion:(id)a5;
- (void)writeAttributeDefaultOpenLevelWithValue:(id)a3 params:(id)a4 completion:(id)a5;
@end

@implementation MTRBaseClusterValveConfigurationAndControl

- (void)openWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRValveConfigurationAndControlClusterOpenParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390302A4;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRValveConfigurationAndControlClusterOpenParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRValveConfigurationAndControlClusterOpenParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F4A0 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)closeWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRValveConfigurationAndControlClusterCloseParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23903049C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRValveConfigurationAndControlClusterCloseParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRValveConfigurationAndControlClusterCloseParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F4A0 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeOpenDurationWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6A8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeOpenDurationWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6A8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOpenDurationWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:0 completion:{v10, v11}];
}

- (void)readAttributeDefaultOpenDurationWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6C0 params:0 queue:v6 completion:v7];
}

- (void)writeAttributeDefaultOpenDurationWithValue:(id)a3 params:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 copy];

  [v7 copy];
  operator new();
}

- (void)subscribeAttributeDefaultOpenDurationWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6C0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDefaultOpenDurationWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:1 completion:{v10, v11}];
}

- (void)readAttributeAutoCloseTimeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E8E8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAutoCloseTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E8E8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAutoCloseTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:2 completion:{v10, v11}];
}

- (void)readAttributeRemainingDurationWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E900 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeRemainingDurationWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E900 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRemainingDurationWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:3 completion:{v10, v11}];
}

- (void)readAttributeCurrentStateWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E918 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeCurrentStateWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E918 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCurrentStateWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:4 completion:{v10, v11}];
}

- (void)readAttributeTargetStateWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E930 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeTargetStateWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E930 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTargetStateWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:5 completion:{v10, v11}];
}

- (void)readAttributeCurrentLevelWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E948 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeCurrentLevelWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E948 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCurrentLevelWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:6 completion:{v10, v11}];
}

- (void)readAttributeTargetLevelWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EAC8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeTargetLevelWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EAC8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTargetLevelWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:7 completion:{v10, v11}];
}

- (void)readAttributeDefaultOpenLevelWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EAE0 params:0 queue:v6 completion:v7];
}

- (void)writeAttributeDefaultOpenLevelWithValue:(id)a3 params:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 copy];

  [v7 copy];
  operator new();
}

- (void)subscribeAttributeDefaultOpenLevelWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EAE0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDefaultOpenLevelWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:8 completion:{v10, v11}];
}

- (void)readAttributeValveFaultWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EAF8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeValveFaultWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EAF8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeValveFaultWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:9 completion:{v10, v11}];
}

- (void)readAttributeLevelStepWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EB10 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeLevelStepWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3EB10 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLevelStepWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:10 completion:{v10, v11}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6D8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6D8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:65528 completion:{v10, v11}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6F0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E6F0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:65529 completion:{v10, v11}];
}

- (void)readAttributeAttributeListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E708 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E708 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:65531 completion:{v10, v11}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E720 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E720 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:65532 completion:{v10, v11}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E738 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F4A0 attributeID:&unk_284C3E738 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:129 queue:65533 completion:{v10, v11}];
}

@end
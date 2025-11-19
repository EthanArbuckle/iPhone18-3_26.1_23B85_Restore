@interface MTRBaseClusterMicrowaveOvenControl
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeCookTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeMaxCookTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeMaxPowerWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeMinPowerWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributePowerSettingWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributePowerStepWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeSelectedWattIndexWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeSupportedWattsWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)readAttributeWattRatingWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)addMoreTimeWithParams:(id)a3 completion:(id)a4;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3;
- (void)readAttributeAttributeListWithCompletion:(id)a3;
- (void)readAttributeClusterRevisionWithCompletion:(id)a3;
- (void)readAttributeCookTimeWithCompletion:(id)a3;
- (void)readAttributeFeatureMapWithCompletion:(id)a3;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3;
- (void)readAttributeMaxCookTimeWithCompletion:(id)a3;
- (void)readAttributeMaxPowerWithCompletion:(id)a3;
- (void)readAttributeMinPowerWithCompletion:(id)a3;
- (void)readAttributePowerSettingWithCompletion:(id)a3;
- (void)readAttributePowerStepWithCompletion:(id)a3;
- (void)readAttributeSelectedWattIndexWithCompletion:(id)a3;
- (void)readAttributeSupportedWattsWithCompletion:(id)a3;
- (void)readAttributeWattRatingWithCompletion:(id)a3;
- (void)setCookingParametersWithParams:(id)a3 completion:(id)a4;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeCookTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeMaxCookTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeMaxPowerWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeMinPowerWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributePowerSettingWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributePowerStepWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeSelectedWattIndexWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeSupportedWattsWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
- (void)subscribeAttributeWattRatingWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5;
@end

@implementation MTRBaseClusterMicrowaveOvenControl

- (void)setCookingParametersWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRMicrowaveOvenControlClusterSetCookingParametersParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23901F30C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRMicrowaveOvenControlClusterSetCookingParametersParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F3F8 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)addMoreTimeWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRMicrowaveOvenControlClusterAddMoreTimeParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23901F4F8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  v10 = [(MTRMicrowaveOvenControlClusterAddMoreTimeParams *)v6 timedInvokeTimeoutMs];
  v11 = [(MTRGenericBaseCluster *)self device];
  v12 = [(MTRCluster *)self endpointID];
  v13 = [(MTRMicrowaveOvenControlClusterAddMoreTimeParams *)v6 serverSideProcessingTimeout];
  v14 = [(MTRCluster *)self callbackQueue];
  [v11 _invokeKnownCommandWithEndpointID:v12 clusterID:&unk_284C3F3F8 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v10 serverSideProcessingTimeout:v13 responseClass:0 queue:v14 completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeCookTimeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6A8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeCookTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6A8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCookTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:0 completion:{v10, v11}];
}

- (void)readAttributeMaxCookTimeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6C0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeMaxCookTimeWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6C0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMaxCookTimeWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:1 completion:{v10, v11}];
}

- (void)readAttributePowerSettingWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E8E8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributePowerSettingWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E8E8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePowerSettingWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:2 completion:{v10, v11}];
}

- (void)readAttributeMinPowerWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E900 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeMinPowerWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E900 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMinPowerWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:3 completion:{v10, v11}];
}

- (void)readAttributeMaxPowerWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E918 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeMaxPowerWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E918 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMaxPowerWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:4 completion:{v10, v11}];
}

- (void)readAttributePowerStepWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E930 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributePowerStepWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E930 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePowerStepWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:5 completion:{v10, v11}];
}

- (void)readAttributeSupportedWattsWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E948 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeSupportedWattsWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E948 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSupportedWattsWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:6 completion:{v10, v11}];
}

- (void)readAttributeSelectedWattIndexWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3EAC8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeSelectedWattIndexWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3EAC8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSelectedWattIndexWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:7 completion:{v10, v11}];
}

- (void)readAttributeWattRatingWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3EAE0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeWattRatingWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3EAE0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeWattRatingWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:8 completion:{v10, v11}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6D8 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6D8 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:65528 completion:{v10, v11}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6F0 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E6F0 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:65529 completion:{v10, v11}];
}

- (void)readAttributeAttributeListWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E708 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E708 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:65531 completion:{v10, v11}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E720 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E720 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:65532 completion:{v10, v11}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MTRGenericBaseCluster *)self device];
  v5 = [(MTRCluster *)self endpointID];
  v6 = [(MTRCluster *)self callbackQueue];
  [v4 _readKnownAttributeWithEndpointID:v5 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E738 params:0 queue:v6 completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)a3 subscriptionEstablished:(id)a4 reportHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTRGenericBaseCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  v12 = [(MTRCluster *)self callbackQueue];
  [v10 _subscribeToKnownAttributeWithEndpointID:v11 clusterID:&unk_284C3F3F8 attributeID:&unk_284C3E738 params:v13 queue:v12 reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)a3 endpoint:(id)a4 queue:(id)a5 completion:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v12 _readKnownCachedAttributeWithEndpointID:objc_msgSend(v9 clusterID:"unsignedShortValue") attributeID:95 queue:65533 completion:{v10, v11}];
}

@end
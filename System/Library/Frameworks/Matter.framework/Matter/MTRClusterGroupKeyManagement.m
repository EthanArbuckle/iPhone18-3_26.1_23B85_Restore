@interface MTRClusterGroupKeyManagement
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGroupKeyMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGroupTableWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxGroupKeysPerFabricWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxGroupsPerFabricWithParams:(MTRReadParams *)params;
- (void)keySetReadAllIndicesWithParams:(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)keySetReadAllIndicesWithParams:(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)keySetReadWithParams:(MTRGroupKeyManagementClusterKeySetReadParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)keySetReadWithParams:(MTRGroupKeyManagementClusterKeySetReadParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)keySetRemoveWithParams:(MTRGroupKeyManagementClusterKeySetRemoveParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)keySetWriteWithParams:(MTRGroupKeyManagementClusterKeySetWriteParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)writeAttributeGroupKeyMapWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterGroupKeyManagement

- (void)keySetWriteWithParams:(MTRGroupKeyManagementClusterKeySetWriteParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetWriteParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239306510;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRGroupKeyManagementClusterKeySetWriteParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C420F8 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)keySetReadWithParams:(MTRGroupKeyManagementClusterKeySetReadParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetReadParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239306748;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRGroupKeyManagementClusterKeySetReadParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRGroupKeyManagementClusterKeySetReadParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C420F8 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)keySetRemoveWithParams:(MTRGroupKeyManagementClusterKeySetRemoveParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetRemoveParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239306964;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRGroupKeyManagementClusterKeySetRemoveParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRGroupKeyManagementClusterKeySetRemoveParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C420F8 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)keySetReadAllIndicesWithParams:(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239306BB0;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C420F8 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (NSDictionary)readAttributeGroupKeyMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (void)writeAttributeGroupKeyMapWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C41FD8 attributeID:&unk_284C416A8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeGroupTableWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxGroupsPerFabricWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxGroupKeysPerFabricWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41FD8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (void)keySetReadWithParams:(MTRGroupKeyManagementClusterKeySetReadParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239307504;
  v12[3] = &unk_278A73550;
  v13 = v10;
  v11 = v10;
  [(MTRClusterGroupKeyManagement *)self keySetReadWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)keySetReadAllIndicesWithParams:(MTRGroupKeyManagementClusterKeySetReadAllIndicesParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2393075EC;
  v12[3] = &unk_278A73578;
  v13 = v10;
  v11 = v10;
  [(MTRClusterGroupKeyManagement *)self keySetReadAllIndicesWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end
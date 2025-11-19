@interface MTRClusterAdministratorCommissioning
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAdminFabricIndexWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAdminVendorIdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWindowStatusWithParams:(MTRReadParams *)params;
- (void)openBasicCommissioningWindowWithParams:(MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)openCommissioningWindowWithParams:(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)revokeCommissioningWithParams:(MTRAdministratorCommissioningClusterRevokeCommissioningParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
@end

@implementation MTRClusterAdministratorCommissioning

- (void)openCommissioningWindowWithParams:(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393032B0;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v10 timedInvokeTimeoutMs];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  v18 = [(MTRGenericCluster *)self device];
  v19 = [(MTRCluster *)self endpointID];
  v20 = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42098 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)openBasicCommissioningWindowWithParams:(MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393034DC;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams *)v10 timedInvokeTimeoutMs];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  v18 = [(MTRGenericCluster *)self device];
  v19 = [(MTRCluster *)self endpointID];
  v20 = [(MTRAdministratorCommissioningClusterOpenBasicCommissioningWindowParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42098 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)revokeCommissioningWithParams:(MTRAdministratorCommissioningClusterRevokeCommissioningParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRAdministratorCommissioningClusterRevokeCommissioningParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23930371C;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRAdministratorCommissioningClusterRevokeCommissioningParams *)v10 timedInvokeTimeoutMs];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  v18 = [(MTRGenericCluster *)self device];
  v19 = [(MTRCluster *)self endpointID];
  v20 = [(MTRAdministratorCommissioningClusterRevokeCommissioningParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42098 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (NSDictionary)readAttributeWindowStatusWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAdminFabricIndexWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAdminVendorIdWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F90 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
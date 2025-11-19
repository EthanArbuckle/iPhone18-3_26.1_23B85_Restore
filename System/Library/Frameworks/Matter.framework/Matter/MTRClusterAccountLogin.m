@interface MTRClusterAccountLogin
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (void)getSetupPINWithParams:(MTRAccountLoginClusterGetSetupPINParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getSetupPINWithParams:(MTRAccountLoginClusterGetSetupPINParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)loginWithParams:(MTRAccountLoginClusterLoginParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)logoutWithParams:(MTRAccountLoginClusterLogoutParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
@end

@implementation MTRClusterAccountLogin

- (void)getSetupPINWithParams:(MTRAccountLoginClusterGetSetupPINParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v23 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v22 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRAccountLoginClusterGetSetupPINParams);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_23935CEF4;
  v24[3] = &unk_278A73118;
  v13 = v12;
  v25 = v13;
  v14 = MEMORY[0x23EE78590](v24);
  v15 = [(MTRAccountLoginClusterGetSetupPINParams *)v10 timedInvokeTimeoutMs];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &unk_284C42080;
  }

  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRAccountLoginClusterGetSetupPINParams *)v10 serverSideProcessingTimeout];
  v20 = objc_opt_class();
  v21 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C432E0 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v23 expectedValueInterval:v11 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:v20 queue:v21 completion:{v14, v22}];
}

- (void)loginWithParams:(MTRAccountLoginClusterLoginParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRAccountLoginClusterLoginParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23935D11C;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRAccountLoginClusterLoginParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRAccountLoginClusterLoginParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C432E0 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)logoutWithParams:(MTRAccountLoginClusterLogoutParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRAccountLoginClusterLogoutParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23935D35C;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRAccountLoginClusterLogoutParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRAccountLoginClusterLogoutParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C432E0 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C432F8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C432F8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C432F8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C432F8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C432F8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (void)getSetupPINWithParams:(MTRAccountLoginClusterGetSetupPINParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23935D8A4;
  v12[3] = &unk_278A73870;
  v13 = v10;
  v11 = v10;
  [(MTRClusterAccountLogin *)self getSetupPINWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end
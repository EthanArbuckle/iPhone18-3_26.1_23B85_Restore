@interface MTRClusterNetworkCommissioning
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeConnectMaxTimeSecondsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeInterfaceEnabledWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLastConnectErrorValueWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLastNetworkIDWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLastNetworkingStatusWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxNetworksWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNetworksWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeScanMaxTimeSecondsWithParams:(MTRReadParams *)params;
- (id)readAttributeSupportedThreadFeaturesWithParams:(id)a3;
- (id)readAttributeSupportedWiFiBandsWithParams:(id)a3;
- (id)readAttributeThreadVersionWithParams:(id)a3;
- (void)addOrUpdateThreadNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)addOrUpdateThreadNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)addOrUpdateWiFiNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)addOrUpdateWiFiNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)connectNetworkWithParams:(MTRNetworkCommissioningClusterConnectNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)connectNetworkWithParams:(MTRNetworkCommissioningClusterConnectNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)queryIdentityWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)removeNetworkWithParams:(MTRNetworkCommissioningClusterRemoveNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)removeNetworkWithParams:(MTRNetworkCommissioningClusterRemoveNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)reorderNetworkWithParams:(MTRNetworkCommissioningClusterReorderNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)reorderNetworkWithParams:(MTRNetworkCommissioningClusterReorderNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)scanNetworksWithParams:(MTRNetworkCommissioningClusterScanNetworksParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)scanNetworksWithParams:(MTRNetworkCommissioningClusterScanNetworksParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)writeAttributeInterfaceEnabledWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterNetworkCommissioning

- (void)scanNetworksWithParams:(MTRNetworkCommissioningClusterScanNetworksParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterScanNetworksParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F6368;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterScanNetworksParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterScanNetworksParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)addOrUpdateWiFiNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F659C;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)addOrUpdateThreadNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F67D0;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)removeNetworkWithParams:(MTRNetworkCommissioningClusterRemoveNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterRemoveNetworkParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F6A04;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterRemoveNetworkParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterRemoveNetworkParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)connectNetworkWithParams:(MTRNetworkCommissioningClusterConnectNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterConnectNetworkParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F6C38;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterConnectNetworkParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterConnectNetworkParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C418D0 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)reorderNetworkWithParams:(MTRNetworkCommissioningClusterReorderNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterReorderNetworkParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F6E6C;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C41900 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)queryIdentityWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRNetworkCommissioningClusterQueryIdentityParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2392F70A0;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C41D68 commandID:&unk_284C41A80 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (NSDictionary)readAttributeMaxNetworksWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNetworksWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeScanMaxTimeSecondsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeConnectMaxTimeSecondsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeInterfaceEnabledWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (void)writeAttributeInterfaceEnabledWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C41D80 attributeID:&unk_284C417E0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeLastNetworkingStatusWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLastNetworkIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLastConnectErrorValueWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (id)readAttributeSupportedWiFiBandsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (id)readAttributeSupportedThreadFeaturesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (id)readAttributeThreadVersionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41D80 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (void)scanNetworksWithParams:(MTRNetworkCommissioningClusterScanNetworksParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F7F30;
  v12[3] = &unk_278A73398;
  v13 = v10;
  v11 = v10;
  [(MTRClusterNetworkCommissioning *)self scanNetworksWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)addOrUpdateWiFiNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F8014;
  v12[3] = &unk_278A733C0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterNetworkCommissioning *)self addOrUpdateWiFiNetworkWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)addOrUpdateThreadNetworkWithParams:(MTRNetworkCommissioningClusterAddOrUpdateThreadNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F80F8;
  v12[3] = &unk_278A733C0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterNetworkCommissioning *)self addOrUpdateThreadNetworkWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)removeNetworkWithParams:(MTRNetworkCommissioningClusterRemoveNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F81DC;
  v12[3] = &unk_278A733C0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterNetworkCommissioning *)self removeNetworkWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)connectNetworkWithParams:(MTRNetworkCommissioningClusterConnectNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F82C0;
  v12[3] = &unk_278A733E8;
  v13 = v10;
  v11 = v10;
  [(MTRClusterNetworkCommissioning *)self connectNetworkWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)reorderNetworkWithParams:(MTRNetworkCommissioningClusterReorderNetworkParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2392F83A4;
  v12[3] = &unk_278A733C0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterNetworkCommissioning *)self reorderNetworkWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end
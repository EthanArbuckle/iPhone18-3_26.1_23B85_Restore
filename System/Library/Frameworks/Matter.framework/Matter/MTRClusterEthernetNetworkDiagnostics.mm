@interface MTRClusterEthernetNetworkDiagnostics
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCarrierDetectWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCollisionCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFullDuplexWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOverrunCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePHYRateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePacketRxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePacketTxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTimeSinceResetWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxErrCountWithParams:(MTRReadParams *)params;
- (void)resetCountsWithParams:(MTREthernetNetworkDiagnosticsClusterResetCountsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
@end

@implementation MTRClusterEthernetNetworkDiagnostics

- (void)resetCountsWithParams:(MTREthernetNetworkDiagnosticsClusterResetCountsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREthernetNetworkDiagnosticsClusterResetCountsParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2392FF16C;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTREthernetNetworkDiagnosticsClusterResetCountsParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTREthernetNetworkDiagnosticsClusterResetCountsParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42020 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (NSDictionary)readAttributePHYRateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFullDuplexWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePacketRxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributePacketTxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxErrCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCollisionCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOverrunCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCarrierDetectWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTimeSinceResetWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F18 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
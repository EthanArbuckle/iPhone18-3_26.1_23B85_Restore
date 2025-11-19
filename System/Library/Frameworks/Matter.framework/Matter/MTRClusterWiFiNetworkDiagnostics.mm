@interface MTRClusterWiFiNetworkDiagnostics
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBSSIDWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBeaconLostCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBeaconRxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBssidWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeChannelNumberWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentMaxRateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOverrunCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePacketMulticastRxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePacketMulticastTxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePacketUnicastRxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePacketUnicastTxCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRSSIWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRssiWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSecurityTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWiFiVersionWithParams:(MTRReadParams *)params;
- (void)resetCountsWithParams:(MTRWiFiNetworkDiagnosticsClusterResetCountsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
@end

@implementation MTRClusterWiFiNetworkDiagnostics

- (void)resetCountsWithParams:(MTRWiFiNetworkDiagnosticsClusterResetCountsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRWiFiNetworkDiagnosticsClusterResetCountsParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2392FE0A8;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRWiFiNetworkDiagnosticsClusterResetCountsParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRWiFiNetworkDiagnosticsClusterResetCountsParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42008 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (NSDictionary)readAttributeBSSIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSecurityTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWiFiVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeChannelNumberWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRSSIWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBeaconLostCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBeaconRxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributePacketMulticastRxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributePacketMulticastTxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributePacketUnicastRxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (NSDictionary)readAttributePacketUnicastTxCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentMaxRateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOverrunCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F00 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBssidWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterWiFiNetworkDiagnostics *)self readAttributeBSSIDWithParams:params];

  return v3;
}

- (NSDictionary)readAttributeRssiWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterWiFiNetworkDiagnostics *)self readAttributeRSSIWithParams:params];

  return v3;
}

@end
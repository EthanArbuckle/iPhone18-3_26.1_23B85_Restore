@interface MTRClusterThreadNetworkDiagnostics
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveNetworkFaultsListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActiveTimestampWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttachAttemptCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeBetterPartitionAttachAttemptCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeChannelPage0MaskWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeChannelWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeChildRoleCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDataVersionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDelayWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDetachedRoleCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeExtendedPanIdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLeaderRoleCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLeaderRouterIdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMeshLocalPrefixWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNeighborTableListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNeighborTableWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNetworkNameWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOperationalDatasetComponentsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOverrunCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePanIdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeParentChangeCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePartitionIdChangeCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePartitionIdWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePendingTimestampWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRouteTableListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRouteTableWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRouterRoleCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRoutingRoleWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxAddressFilteredCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxBeaconCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxBeaconRequestCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxBroadcastCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxDataCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxDataPollCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxDestAddrFilteredCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxDuplicatedCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxErrFcsCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxErrInvalidSrcAddrCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxErrNoFrameCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxErrOtherCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxErrSecCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxErrUnknownNeighborCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxOtherCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxTotalCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRxUnicastCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSecurityPolicyWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeStableDataVersionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxAckRequestedCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxAckedCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxBeaconCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxBeaconRequestCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxBroadcastCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxDataCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxDataPollCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxDirectMaxRetryExpiryCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxErrAbortCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxErrBusyChannelCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxErrCcaCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxIndirectMaxRetryExpiryCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxNoAckRequestedCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxOtherCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxRetryCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxTotalCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTxUnicastCountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWeightingWithParams:(MTRReadParams *)params;
- (id)readAttributeExtAddressWithParams:(id)params;
- (id)readAttributeRloc16WithParams:(id)params;
- (void)resetCountsWithParams:(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
@end

@implementation MTRClusterThreadNetworkDiagnostics

- (void)resetCountsWithParams:(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterResetCountsParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2392FA8E4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C41E28 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (NSDictionary)readAttributeChannelWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRoutingRoleWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNetworkNameWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributePanIdWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeExtendedPanIdWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMeshLocalPrefixWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOverrunCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNeighborTableWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRouteTableWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributePartitionIdWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWeightingWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDataVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeStableDataVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLeaderRouterIdWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41B88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDetachedRoleCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41BA0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeChildRoleCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRouterRoleCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLeaderRoleCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttachAttemptCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePartitionIdChangeCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeBetterPartitionAttachAttemptCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeParentChangeCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxTotalCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxUnicastCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxBroadcastCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41BE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxAckRequestedCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41CF0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxAckedCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41D08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxNoAckRequestedCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41D20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxDataCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C419F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxDataPollCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41A08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxBeaconCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41A20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxBeaconRequestCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41A50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxOtherCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41E58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxRetryCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxDirectMaxRetryExpiryCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41E88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxIndirectMaxRetryExpiryCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41EA0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxErrCcaCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41EB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxErrAbortCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41AC8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTxErrBusyChannelCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41ED0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxTotalCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41EE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxUnicastCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41AF8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxBroadcastCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41C18 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxDataCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41C48 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxDataPollCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41C60 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxBeaconCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41C78 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxBeaconRequestCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41C90 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxOtherCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41CA8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxAddressFilteredCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41CC0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxDestAddrFilteredCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41D50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxDuplicatedCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41D80 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxErrNoFrameCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41DB0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxErrUnknownNeighborCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41DE0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxErrInvalidSrcAddrCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41E10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxErrSecCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41E40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxErrFcsCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F00 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRxErrOtherCountWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F18 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveTimestampWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F30 params:v4];

  return v7;
}

- (NSDictionary)readAttributePendingTimestampWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F48 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDelayWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F60 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSecurityPolicyWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F78 params:v4];

  return v7;
}

- (NSDictionary)readAttributeChannelPage0MaskWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41F90 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOperationalDatasetComponentsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41FA8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActiveNetworkFaultsListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41FC0 params:v4];

  return v7;
}

- (id)readAttributeExtAddressWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41FD8 params:paramsCopy];

  return v7;
}

- (id)readAttributeRloc16WithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41FF0 params:paramsCopy];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41E40 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNeighborTableListWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterThreadNetworkDiagnostics *)self readAttributeNeighborTableWithParams:params];

  return v3;
}

- (NSDictionary)readAttributeRouteTableListWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterThreadNetworkDiagnostics *)self readAttributeRouteTableWithParams:params];

  return v3;
}

@end
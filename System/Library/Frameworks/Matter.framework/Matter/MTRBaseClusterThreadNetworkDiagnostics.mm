@interface MTRBaseClusterThreadNetworkDiagnostics
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActiveNetworkFaultsListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActiveNetworkFaultsListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActiveTimestampWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActiveTimestampWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAttachAttemptCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttachAttemptCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeBetterPartitionAttachAttemptCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeBetterPartitionAttachAttemptCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeChannelPage0MaskWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeChannelPage0MaskWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeChannelWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeChannelWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeChildRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeChildRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDataVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDataVersionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDelayWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDelayWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDetachedRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDetachedRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeExtAddressWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeExtendedPanIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeExtendedPanIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLeaderRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLeaderRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLeaderRouterIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLeaderRouterIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeshLocalPrefixWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeshLocalPrefixWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNeighborTableListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNeighborTableWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNetworkNameWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNetworkNameWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeOperationalDatasetComponentsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeOperationalDatasetComponentsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeOverrunCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeOverrunCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePanIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePanIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeParentChangeCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeParentChangeCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePartitionIdChangeCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePartitionIdChangeCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePartitionIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePartitionIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePendingTimestampWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePendingTimestampWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRloc16WithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeRouteTableListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRouteTableWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRouterRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRouterRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRoutingRoleWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRoutingRoleWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxAddressFilteredCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxAddressFilteredCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxBeaconCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxBeaconCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxBeaconRequestCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxBeaconRequestCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxBroadcastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxBroadcastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxDataCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxDataCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxDataPollCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxDataPollCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxDestAddrFilteredCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxDestAddrFilteredCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxDuplicatedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxDuplicatedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxErrFcsCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxErrFcsCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxErrInvalidSrcAddrCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxErrInvalidSrcAddrCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxErrNoFrameCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxErrNoFrameCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxErrOtherCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxErrOtherCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxErrSecCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxErrSecCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxErrUnknownNeighborCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxErrUnknownNeighborCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxOtherCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxOtherCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxTotalCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxTotalCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRxUnicastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRxUnicastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeSecurityPolicyWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSecurityPolicyWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeStableDataVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeStableDataVersionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxAckRequestedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxAckRequestedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxAckedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxAckedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxBeaconCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxBeaconCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxBeaconRequestCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxBeaconRequestCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxBroadcastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxBroadcastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxDataCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxDataCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxDataPollCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxDataPollCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxDirectMaxRetryExpiryCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxDirectMaxRetryExpiryCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxErrAbortCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxErrAbortCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxErrBusyChannelCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxErrBusyChannelCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxErrCcaCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxErrCcaCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxIndirectMaxRetryExpiryCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxIndirectMaxRetryExpiryCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxNoAckRequestedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxNoAckRequestedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxOtherCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxOtherCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxRetryCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxRetryCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxTotalCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxTotalCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTxUnicastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTxUnicastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeWeightingWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeWeightingWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActiveNetworkFaultsListWithCompletion:(void *)completion;
- (void)readAttributeActiveNetworkFaultsListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActiveTimestampWithCompletion:(void *)completion;
- (void)readAttributeActiveTimestampWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttachAttemptCountWithCompletion:(void *)completion;
- (void)readAttributeAttachAttemptCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttributeListWithCompletion:(void *)completion;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeBetterPartitionAttachAttemptCountWithCompletion:(void *)completion;
- (void)readAttributeBetterPartitionAttachAttemptCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeChannelPage0MaskWithCompletion:(void *)completion;
- (void)readAttributeChannelPage0MaskWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeChannelWithCompletion:(void *)completion;
- (void)readAttributeChannelWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeChildRoleCountWithCompletion:(void *)completion;
- (void)readAttributeChildRoleCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletion:(void *)completion;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDataVersionWithCompletion:(void *)completion;
- (void)readAttributeDataVersionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDelayWithCompletion:(void *)completion;
- (void)readAttributeDelayWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDetachedRoleCountWithCompletion:(void *)completion;
- (void)readAttributeDetachedRoleCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeExtAddressWithCompletion:(id)completion;
- (void)readAttributeExtendedPanIdWithCompletion:(void *)completion;
- (void)readAttributeExtendedPanIdWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletion:(void *)completion;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLeaderRoleCountWithCompletion:(void *)completion;
- (void)readAttributeLeaderRoleCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLeaderRouterIdWithCompletion:(void *)completion;
- (void)readAttributeLeaderRouterIdWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeshLocalPrefixWithCompletion:(void *)completion;
- (void)readAttributeMeshLocalPrefixWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNeighborTableListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNeighborTableWithCompletion:(void *)completion;
- (void)readAttributeNetworkNameWithCompletion:(void *)completion;
- (void)readAttributeNetworkNameWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeOperationalDatasetComponentsWithCompletion:(void *)completion;
- (void)readAttributeOperationalDatasetComponentsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeOverrunCountWithCompletion:(void *)completion;
- (void)readAttributeOverrunCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePanIdWithCompletion:(void *)completion;
- (void)readAttributePanIdWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeParentChangeCountWithCompletion:(void *)completion;
- (void)readAttributeParentChangeCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePartitionIdChangeCountWithCompletion:(void *)completion;
- (void)readAttributePartitionIdChangeCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePartitionIdWithCompletion:(void *)completion;
- (void)readAttributePartitionIdWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePendingTimestampWithCompletion:(void *)completion;
- (void)readAttributePendingTimestampWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRloc16WithCompletion:(id)completion;
- (void)readAttributeRouteTableListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRouteTableWithCompletion:(void *)completion;
- (void)readAttributeRouterRoleCountWithCompletion:(void *)completion;
- (void)readAttributeRouterRoleCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRoutingRoleWithCompletion:(void *)completion;
- (void)readAttributeRoutingRoleWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxAddressFilteredCountWithCompletion:(void *)completion;
- (void)readAttributeRxAddressFilteredCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxBeaconCountWithCompletion:(void *)completion;
- (void)readAttributeRxBeaconCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxBeaconRequestCountWithCompletion:(void *)completion;
- (void)readAttributeRxBeaconRequestCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxBroadcastCountWithCompletion:(void *)completion;
- (void)readAttributeRxBroadcastCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxDataCountWithCompletion:(void *)completion;
- (void)readAttributeRxDataCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxDataPollCountWithCompletion:(void *)completion;
- (void)readAttributeRxDataPollCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxDestAddrFilteredCountWithCompletion:(void *)completion;
- (void)readAttributeRxDestAddrFilteredCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxDuplicatedCountWithCompletion:(void *)completion;
- (void)readAttributeRxDuplicatedCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxErrFcsCountWithCompletion:(void *)completion;
- (void)readAttributeRxErrFcsCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxErrInvalidSrcAddrCountWithCompletion:(void *)completion;
- (void)readAttributeRxErrInvalidSrcAddrCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxErrNoFrameCountWithCompletion:(void *)completion;
- (void)readAttributeRxErrNoFrameCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxErrOtherCountWithCompletion:(void *)completion;
- (void)readAttributeRxErrOtherCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxErrSecCountWithCompletion:(void *)completion;
- (void)readAttributeRxErrSecCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxErrUnknownNeighborCountWithCompletion:(void *)completion;
- (void)readAttributeRxErrUnknownNeighborCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxOtherCountWithCompletion:(void *)completion;
- (void)readAttributeRxOtherCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxTotalCountWithCompletion:(void *)completion;
- (void)readAttributeRxTotalCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRxUnicastCountWithCompletion:(void *)completion;
- (void)readAttributeRxUnicastCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSecurityPolicyWithCompletion:(void *)completion;
- (void)readAttributeSecurityPolicyWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeStableDataVersionWithCompletion:(void *)completion;
- (void)readAttributeStableDataVersionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxAckRequestedCountWithCompletion:(void *)completion;
- (void)readAttributeTxAckRequestedCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxAckedCountWithCompletion:(void *)completion;
- (void)readAttributeTxAckedCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxBeaconCountWithCompletion:(void *)completion;
- (void)readAttributeTxBeaconCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxBeaconRequestCountWithCompletion:(void *)completion;
- (void)readAttributeTxBeaconRequestCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxBroadcastCountWithCompletion:(void *)completion;
- (void)readAttributeTxBroadcastCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxDataCountWithCompletion:(void *)completion;
- (void)readAttributeTxDataCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxDataPollCountWithCompletion:(void *)completion;
- (void)readAttributeTxDataPollCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxDirectMaxRetryExpiryCountWithCompletion:(void *)completion;
- (void)readAttributeTxDirectMaxRetryExpiryCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxErrAbortCountWithCompletion:(void *)completion;
- (void)readAttributeTxErrAbortCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxErrBusyChannelCountWithCompletion:(void *)completion;
- (void)readAttributeTxErrBusyChannelCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxErrCcaCountWithCompletion:(void *)completion;
- (void)readAttributeTxErrCcaCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxIndirectMaxRetryExpiryCountWithCompletion:(void *)completion;
- (void)readAttributeTxIndirectMaxRetryExpiryCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxNoAckRequestedCountWithCompletion:(void *)completion;
- (void)readAttributeTxNoAckRequestedCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxOtherCountWithCompletion:(void *)completion;
- (void)readAttributeTxOtherCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxRetryCountWithCompletion:(void *)completion;
- (void)readAttributeTxRetryCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxTotalCountWithCompletion:(void *)completion;
- (void)readAttributeTxTotalCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTxUnicastCountWithCompletion:(void *)completion;
- (void)readAttributeTxUnicastCountWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeWeightingWithCompletion:(void *)completion;
- (void)readAttributeWeightingWithCompletionHandler:(void *)completionHandler;
- (void)resetCountsWithParams:(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)params completion:(MTRStatusCompletion)completion;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveNetworkFaultsListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveNetworkFaultsListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveTimestampWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveTimestampWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttachAttemptCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttachAttemptCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBetterPartitionAttachAttemptCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeBetterPartitionAttachAttemptCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeChannelPage0MaskWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeChannelPage0MaskWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeChannelWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeChannelWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeChildRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeChildRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDataVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDataVersionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDelayWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDelayWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDetachedRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDetachedRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeExtAddressWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeExtendedPanIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeExtendedPanIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLeaderRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLeaderRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLeaderRouterIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLeaderRouterIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeshLocalPrefixWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeshLocalPrefixWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNeighborTableListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNeighborTableWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNetworkNameWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNetworkNameWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOperationalDatasetComponentsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOperationalDatasetComponentsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOverrunCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOverrunCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePanIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePanIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeParentChangeCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeParentChangeCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePartitionIdChangeCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePartitionIdChangeCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePartitionIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePartitionIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePendingTimestampWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePendingTimestampWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRloc16WithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeRouteTableListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRouteTableWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRouterRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRouterRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRoutingRoleWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRoutingRoleWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxAddressFilteredCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxAddressFilteredCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxBeaconCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxBeaconCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxBeaconRequestCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxBeaconRequestCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxBroadcastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxBroadcastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDataCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDataCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDataPollCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDataPollCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDestAddrFilteredCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDestAddrFilteredCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDuplicatedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxDuplicatedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrFcsCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrFcsCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrInvalidSrcAddrCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrInvalidSrcAddrCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrNoFrameCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrNoFrameCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrOtherCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrOtherCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrSecCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrSecCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrUnknownNeighborCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxErrUnknownNeighborCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxOtherCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxOtherCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxTotalCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxTotalCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxUnicastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRxUnicastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSecurityPolicyWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSecurityPolicyWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeStableDataVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeStableDataVersionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxAckRequestedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxAckRequestedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxAckedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxAckedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxBeaconCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxBeaconCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxBeaconRequestCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxBeaconRequestCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxBroadcastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxBroadcastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxDataCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxDataCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxDataPollCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxDataPollCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxDirectMaxRetryExpiryCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxDirectMaxRetryExpiryCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxErrAbortCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxErrAbortCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxErrBusyChannelCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxErrBusyChannelCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxErrCcaCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxErrCcaCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxIndirectMaxRetryExpiryCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxIndirectMaxRetryExpiryCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxNoAckRequestedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxNoAckRequestedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxOtherCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxOtherCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxRetryCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxRetryCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxTotalCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxTotalCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxUnicastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTxUnicastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWeightingWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWeightingWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
@end

@implementation MTRBaseClusterThreadNetworkDiagnostics

- (void)resetCountsWithParams:(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterResetCountsParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_238FB0160;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRThreadNetworkDiagnosticsClusterResetCountsParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3EDB0 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeChannelWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6A8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeChannelWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6A8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeChannelWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:0 queue:v10 completion:v11];
}

- (void)readAttributeRoutingRoleWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6C0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRoutingRoleWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6C0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRoutingRoleWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:1 queue:v10 completion:v11];
}

- (void)readAttributeNetworkNameWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E8E8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNetworkNameWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E8E8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNetworkNameWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:2 queue:v10 completion:v11];
}

- (void)readAttributePanIdWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E900 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePanIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E900 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePanIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:3 queue:v10 completion:v11];
}

- (void)readAttributeExtendedPanIdWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E918 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeExtendedPanIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E918 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeExtendedPanIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:4 queue:v10 completion:v11];
}

- (void)readAttributeMeshLocalPrefixWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E930 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeMeshLocalPrefixWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E930 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMeshLocalPrefixWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:5 queue:v10 completion:v11];
}

- (void)readAttributeOverrunCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E948 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeOverrunCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E948 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOverrunCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:6 queue:v10 completion:v11];
}

- (void)readAttributeNeighborTableWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EAC8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNeighborTableWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EAC8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNeighborTableWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:7 queue:v10 completion:v11];
}

- (void)readAttributeRouteTableWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EAE0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRouteTableWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EAE0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRouteTableWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:8 queue:v10 completion:v11];
}

- (void)readAttributePartitionIdWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EAF8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePartitionIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EAF8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePartitionIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:9 queue:v10 completion:v11];
}

- (void)readAttributeWeightingWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB10 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeWeightingWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB10 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeWeightingWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:10 queue:v10 completion:v11];
}

- (void)readAttributeDataVersionWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB28 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeDataVersionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB28 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDataVersionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:11 queue:v10 completion:v11];
}

- (void)readAttributeStableDataVersionWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB40 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeStableDataVersionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB40 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeStableDataVersionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:12 queue:v10 completion:v11];
}

- (void)readAttributeLeaderRouterIdWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB58 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeLeaderRouterIdWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB58 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLeaderRouterIdWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:13 queue:v10 completion:v11];
}

- (void)readAttributeDetachedRoleCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB70 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeDetachedRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB70 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDetachedRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:14 queue:v10 completion:v11];
}

- (void)readAttributeChildRoleCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E960 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeChildRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E960 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeChildRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:15 queue:v10 completion:v11];
}

- (void)readAttributeRouterRoleCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E978 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRouterRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E978 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRouterRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:16 queue:v10 completion:v11];
}

- (void)readAttributeLeaderRoleCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E990 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeLeaderRoleCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E990 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLeaderRoleCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:17 queue:v10 completion:v11];
}

- (void)readAttributeAttachAttemptCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E9A8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAttachAttemptCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E9A8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttachAttemptCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:18 queue:v10 completion:v11];
}

- (void)readAttributePartitionIdChangeCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E9C0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePartitionIdChangeCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E9C0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePartitionIdChangeCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:19 queue:v10 completion:v11];
}

- (void)readAttributeBetterPartitionAttachAttemptCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E9D8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeBetterPartitionAttachAttemptCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E9D8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeBetterPartitionAttachAttemptCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:20 queue:v10 completion:v11];
}

- (void)readAttributeParentChangeCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB88 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeParentChangeCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EB88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeParentChangeCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:21 queue:v10 completion:v11];
}

- (void)readAttributeTxTotalCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EBA0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxTotalCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EBA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxTotalCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:22 queue:v10 completion:v11];
}

- (void)readAttributeTxUnicastCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EC78 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxUnicastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EC78 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxUnicastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:23 queue:v10 completion:v11];
}

- (void)readAttributeTxBroadcastCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EBB8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxBroadcastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EBB8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxBroadcastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:24 queue:v10 completion:v11];
}

- (void)readAttributeTxAckRequestedCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EC90 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxAckRequestedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EC90 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxAckRequestedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:25 queue:v10 completion:v11];
}

- (void)readAttributeTxAckedCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECA8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxAckedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECA8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxAckedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:26 queue:v10 completion:v11];
}

- (void)readAttributeTxNoAckRequestedCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECC0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxNoAckRequestedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECC0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxNoAckRequestedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:27 queue:v10 completion:v11];
}

- (void)readAttributeTxDataCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECD8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxDataCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECD8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxDataCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:28 queue:v10 completion:v11];
}

- (void)readAttributeTxDataPollCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECF0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxDataPollCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ECF0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxDataPollCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:29 queue:v10 completion:v11];
}

- (void)readAttributeTxBeaconCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ED08 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxBeaconCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ED08 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxBeaconCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:30 queue:v10 completion:v11];
}

- (void)readAttributeTxBeaconRequestCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ED20 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxBeaconRequestCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3ED20 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxBeaconRequestCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:31 queue:v10 completion:v11];
}

- (void)readAttributeTxOtherCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EDC8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxOtherCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EDC8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxOtherCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:32 queue:v10 completion:v11];
}

- (void)readAttributeTxRetryCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EDE0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxRetryCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EDE0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxRetryCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:33 queue:v10 completion:v11];
}

- (void)readAttributeTxDirectMaxRetryExpiryCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EDF8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxDirectMaxRetryExpiryCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EDF8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxDirectMaxRetryExpiryCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:34 queue:v10 completion:v11];
}

- (void)readAttributeTxIndirectMaxRetryExpiryCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE10 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxIndirectMaxRetryExpiryCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE10 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxIndirectMaxRetryExpiryCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:35 queue:v10 completion:v11];
}

- (void)readAttributeTxErrCcaCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE28 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxErrCcaCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE28 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxErrCcaCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:36 queue:v10 completion:v11];
}

- (void)readAttributeTxErrAbortCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE40 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxErrAbortCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE40 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxErrAbortCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:37 queue:v10 completion:v11];
}

- (void)readAttributeTxErrBusyChannelCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE58 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeTxErrBusyChannelCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE58 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeTxErrBusyChannelCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:38 queue:v10 completion:v11];
}

- (void)readAttributeRxTotalCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE70 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxTotalCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE70 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxTotalCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:39 queue:v10 completion:v11];
}

- (void)readAttributeRxUnicastCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE88 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxUnicastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EE88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxUnicastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:40 queue:v10 completion:v11];
}

- (void)readAttributeRxBroadcastCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EEA0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxBroadcastCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EEA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxBroadcastCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:41 queue:v10 completion:v11];
}

- (void)readAttributeRxDataCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EEB8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxDataCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EEB8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxDataCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:42 queue:v10 completion:v11];
}

- (void)readAttributeRxDataPollCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EED0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxDataPollCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EED0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxDataPollCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:43 queue:v10 completion:v11];
}

- (void)readAttributeRxBeaconCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EEE8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxBeaconCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EEE8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxBeaconCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:44 queue:v10 completion:v11];
}

- (void)readAttributeRxBeaconRequestCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF00 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxBeaconRequestCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF00 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxBeaconRequestCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:45 queue:v10 completion:v11];
}

- (void)readAttributeRxOtherCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF18 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxOtherCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF18 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxOtherCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:46 queue:v10 completion:v11];
}

- (void)readAttributeRxAddressFilteredCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF30 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxAddressFilteredCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF30 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxAddressFilteredCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:47 queue:v10 completion:v11];
}

- (void)readAttributeRxDestAddrFilteredCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF48 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxDestAddrFilteredCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF48 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxDestAddrFilteredCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:48 queue:v10 completion:v11];
}

- (void)readAttributeRxDuplicatedCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF60 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxDuplicatedCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF60 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxDuplicatedCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:49 queue:v10 completion:v11];
}

- (void)readAttributeRxErrNoFrameCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF78 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxErrNoFrameCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF78 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxErrNoFrameCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:50 queue:v10 completion:v11];
}

- (void)readAttributeRxErrUnknownNeighborCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF90 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxErrUnknownNeighborCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EF90 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxErrUnknownNeighborCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:51 queue:v10 completion:v11];
}

- (void)readAttributeRxErrInvalidSrcAddrCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFA8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxErrInvalidSrcAddrCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFA8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxErrInvalidSrcAddrCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:52 queue:v10 completion:v11];
}

- (void)readAttributeRxErrSecCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFC0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxErrSecCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFC0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxErrSecCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:53 queue:v10 completion:v11];
}

- (void)readAttributeRxErrFcsCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFD8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxErrFcsCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFD8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxErrFcsCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:54 queue:v10 completion:v11];
}

- (void)readAttributeRxErrOtherCountWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFF0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRxErrOtherCountWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3EFF0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRxErrOtherCountWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:55 queue:v10 completion:v11];
}

- (void)readAttributeActiveTimestampWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F008 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeActiveTimestampWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F008 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeActiveTimestampWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:56 queue:v10 completion:v11];
}

- (void)readAttributePendingTimestampWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F020 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePendingTimestampWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F020 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePendingTimestampWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:57 queue:v10 completion:v11];
}

- (void)readAttributeDelayWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F038 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeDelayWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F038 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDelayWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:58 queue:v10 completion:v11];
}

- (void)readAttributeSecurityPolicyWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F050 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeSecurityPolicyWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F050 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSecurityPolicyWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:59 queue:v10 completion:v11];
}

- (void)readAttributeChannelPage0MaskWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F068 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeChannelPage0MaskWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F068 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeChannelPage0MaskWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:60 queue:v10 completion:v11];
}

- (void)readAttributeOperationalDatasetComponentsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F080 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeOperationalDatasetComponentsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F080 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOperationalDatasetComponentsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:61 queue:v10 completion:v11];
}

- (void)readAttributeActiveNetworkFaultsListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F098 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeActiveNetworkFaultsListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F098 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeActiveNetworkFaultsListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:62 queue:v10 completion:v11];
}

- (void)readAttributeExtAddressWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F0B0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeExtAddressWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F0B0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeExtAddressWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:53 queue:63 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeRloc16WithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F0C8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeRloc16WithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3F0C8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeRloc16WithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:53 queue:64 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6D8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6D8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:65528 queue:v10 completion:v11];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6F0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E6F0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:65529 queue:v10 completion:v11];
}

- (void)readAttributeAttributeListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E708 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E708 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:65531 queue:v10 completion:v11];
}

- (void)readAttributeFeatureMapWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E720 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E720 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:65532 queue:v10 completion:v11];
}

- (void)readAttributeClusterRevisionWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E738 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3EDB0 attributeID:&unk_284C3E738 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:53 attributeID:65533 queue:v10 completion:v11];
}

- (void)readAttributeChannelWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBC4E0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeChannelWithCompletion:v6];
}

- (void)subscribeAttributeChannelWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBC660;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeChannelWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeChannelWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBC788;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeChannelWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRoutingRoleWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBC844;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRoutingRoleWithCompletion:v6];
}

- (void)subscribeAttributeRoutingRoleWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBC9C4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRoutingRoleWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRoutingRoleWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBCAEC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRoutingRoleWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNetworkNameWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBCBA8;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeNetworkNameWithCompletion:v6];
}

- (void)subscribeAttributeNetworkNameWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBCD28;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeNetworkNameWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNetworkNameWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBCE50;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [self readAttributeNetworkNameWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePanIdWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBCF0C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributePanIdWithCompletion:v6];
}

- (void)subscribeAttributePanIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBD08C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributePanIdWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePanIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBD1B4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePanIdWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeExtendedPanIdWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBD270;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeExtendedPanIdWithCompletion:v6];
}

- (void)subscribeAttributeExtendedPanIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBD3F0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeExtendedPanIdWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeExtendedPanIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBD518;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeExtendedPanIdWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeshLocalPrefixWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBD5D4;
  v6[3] = &unk_278A73410;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeMeshLocalPrefixWithCompletion:v6];
}

- (void)subscribeAttributeMeshLocalPrefixWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBD754;
  v19[3] = &unk_278A73410;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeMeshLocalPrefixWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeshLocalPrefixWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBD87C;
  v15[3] = &unk_278A73410;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeshLocalPrefixWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeOverrunCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBD938;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeOverrunCountWithCompletion:v6];
}

- (void)subscribeAttributeOverrunCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBDAB8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeOverrunCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeOverrunCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBDBE0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeOverrunCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNeighborTableListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBDC9C;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeNeighborTableWithCompletion:v6];
}

- (void)subscribeAttributeNeighborTableListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBDE1C;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeNeighborTableWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNeighborTableListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBDF44;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeNeighborTableWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRouteTableListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBE000;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRouteTableWithCompletion:v6];
}

- (void)subscribeAttributeRouteTableListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBE180;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRouteTableWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRouteTableListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBE2A8;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeRouteTableWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePartitionIdWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBE364;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributePartitionIdWithCompletion:v6];
}

- (void)subscribeAttributePartitionIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBE4E4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributePartitionIdWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePartitionIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBE60C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePartitionIdWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeWeightingWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBE6C8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeWeightingWithCompletion:v6];
}

- (void)subscribeAttributeWeightingWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBE848;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeWeightingWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeWeightingWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBE970;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeWeightingWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDataVersionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBEA2C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeDataVersionWithCompletion:v6];
}

- (void)subscribeAttributeDataVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBEBAC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeDataVersionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDataVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBECD4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDataVersionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeStableDataVersionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBED90;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeStableDataVersionWithCompletion:v6];
}

- (void)subscribeAttributeStableDataVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBEF10;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeStableDataVersionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeStableDataVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBF038;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeStableDataVersionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLeaderRouterIdWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBF0F4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeLeaderRouterIdWithCompletion:v6];
}

- (void)subscribeAttributeLeaderRouterIdWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBF274;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeLeaderRouterIdWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLeaderRouterIdWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBF39C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLeaderRouterIdWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDetachedRoleCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBF458;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeDetachedRoleCountWithCompletion:v6];
}

- (void)subscribeAttributeDetachedRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBF5D8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeDetachedRoleCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDetachedRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBF700;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDetachedRoleCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeChildRoleCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBF7BC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeChildRoleCountWithCompletion:v6];
}

- (void)subscribeAttributeChildRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBF93C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeChildRoleCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeChildRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBFA64;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeChildRoleCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRouterRoleCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBFB20;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRouterRoleCountWithCompletion:v6];
}

- (void)subscribeAttributeRouterRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FBFCA0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRouterRoleCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRouterRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FBFDC8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRouterRoleCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLeaderRoleCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FBFE84;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeLeaderRoleCountWithCompletion:v6];
}

- (void)subscribeAttributeLeaderRoleCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC0004;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeLeaderRoleCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLeaderRoleCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC012C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLeaderRoleCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAttachAttemptCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC01E8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeAttachAttemptCountWithCompletion:v6];
}

- (void)subscribeAttributeAttachAttemptCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC0368;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeAttachAttemptCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttachAttemptCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC0490;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAttachAttemptCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePartitionIdChangeCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC054C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributePartitionIdChangeCountWithCompletion:v6];
}

- (void)subscribeAttributePartitionIdChangeCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC06CC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributePartitionIdChangeCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePartitionIdChangeCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC07F4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePartitionIdChangeCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeBetterPartitionAttachAttemptCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC08B0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeBetterPartitionAttachAttemptCountWithCompletion:v6];
}

- (void)subscribeAttributeBetterPartitionAttachAttemptCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC0A30;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeBetterPartitionAttachAttemptCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeBetterPartitionAttachAttemptCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC0B58;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeBetterPartitionAttachAttemptCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeParentChangeCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC0C14;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeParentChangeCountWithCompletion:v6];
}

- (void)subscribeAttributeParentChangeCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC0D94;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeParentChangeCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeParentChangeCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC0EBC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeParentChangeCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxTotalCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC0F78;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxTotalCountWithCompletion:v6];
}

- (void)subscribeAttributeTxTotalCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC10F8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxTotalCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxTotalCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC1220;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxTotalCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxUnicastCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC12DC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxUnicastCountWithCompletion:v6];
}

- (void)subscribeAttributeTxUnicastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC145C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxUnicastCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxUnicastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC1584;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxUnicastCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxBroadcastCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC1640;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxBroadcastCountWithCompletion:v6];
}

- (void)subscribeAttributeTxBroadcastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC17C0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxBroadcastCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxBroadcastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC18E8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxBroadcastCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxAckRequestedCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC19A4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxAckRequestedCountWithCompletion:v6];
}

- (void)subscribeAttributeTxAckRequestedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC1B24;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxAckRequestedCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxAckRequestedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC1C4C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxAckRequestedCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxAckedCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC1D08;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxAckedCountWithCompletion:v6];
}

- (void)subscribeAttributeTxAckedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC1E88;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxAckedCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxAckedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC1FB0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxAckedCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxNoAckRequestedCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC206C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxNoAckRequestedCountWithCompletion:v6];
}

- (void)subscribeAttributeTxNoAckRequestedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC21EC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxNoAckRequestedCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxNoAckRequestedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC2314;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxNoAckRequestedCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxDataCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC23D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxDataCountWithCompletion:v6];
}

- (void)subscribeAttributeTxDataCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC2550;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxDataCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxDataCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC2678;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxDataCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxDataPollCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC2734;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxDataPollCountWithCompletion:v6];
}

- (void)subscribeAttributeTxDataPollCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC28B4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxDataPollCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxDataPollCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC29DC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxDataPollCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxBeaconCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC2A98;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxBeaconCountWithCompletion:v6];
}

- (void)subscribeAttributeTxBeaconCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC2C18;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxBeaconCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxBeaconCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC2D40;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxBeaconCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxBeaconRequestCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC2DFC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxBeaconRequestCountWithCompletion:v6];
}

- (void)subscribeAttributeTxBeaconRequestCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC2F7C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxBeaconRequestCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxBeaconRequestCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC30A4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxBeaconRequestCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxOtherCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC3160;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxOtherCountWithCompletion:v6];
}

- (void)subscribeAttributeTxOtherCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC32E0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxOtherCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxOtherCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC3408;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxOtherCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxRetryCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC34C4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxRetryCountWithCompletion:v6];
}

- (void)subscribeAttributeTxRetryCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC3644;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxRetryCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxRetryCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC376C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxRetryCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxDirectMaxRetryExpiryCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC3828;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxDirectMaxRetryExpiryCountWithCompletion:v6];
}

- (void)subscribeAttributeTxDirectMaxRetryExpiryCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC39A8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxDirectMaxRetryExpiryCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxDirectMaxRetryExpiryCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC3AD0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxDirectMaxRetryExpiryCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxIndirectMaxRetryExpiryCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC3B8C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxIndirectMaxRetryExpiryCountWithCompletion:v6];
}

- (void)subscribeAttributeTxIndirectMaxRetryExpiryCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC3D0C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxIndirectMaxRetryExpiryCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxIndirectMaxRetryExpiryCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC3E34;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxIndirectMaxRetryExpiryCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxErrCcaCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC3EF0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxErrCcaCountWithCompletion:v6];
}

- (void)subscribeAttributeTxErrCcaCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC4070;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxErrCcaCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxErrCcaCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC4198;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxErrCcaCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxErrAbortCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC4254;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxErrAbortCountWithCompletion:v6];
}

- (void)subscribeAttributeTxErrAbortCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC43D4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxErrAbortCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxErrAbortCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC44FC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxErrAbortCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTxErrBusyChannelCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC45B8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeTxErrBusyChannelCountWithCompletion:v6];
}

- (void)subscribeAttributeTxErrBusyChannelCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC4738;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeTxErrBusyChannelCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTxErrBusyChannelCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC4860;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTxErrBusyChannelCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxTotalCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC491C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxTotalCountWithCompletion:v6];
}

- (void)subscribeAttributeRxTotalCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC4A9C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxTotalCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxTotalCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC4BC4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxTotalCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxUnicastCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC4C80;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxUnicastCountWithCompletion:v6];
}

- (void)subscribeAttributeRxUnicastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC4E00;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxUnicastCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxUnicastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC4F28;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxUnicastCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxBroadcastCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC4FE4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxBroadcastCountWithCompletion:v6];
}

- (void)subscribeAttributeRxBroadcastCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC5164;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxBroadcastCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxBroadcastCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC528C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxBroadcastCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxDataCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC5348;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxDataCountWithCompletion:v6];
}

- (void)subscribeAttributeRxDataCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC54C8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxDataCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxDataCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC55F0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxDataCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxDataPollCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC56AC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxDataPollCountWithCompletion:v6];
}

- (void)subscribeAttributeRxDataPollCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC582C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxDataPollCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxDataPollCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC5954;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxDataPollCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxBeaconCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC5A10;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxBeaconCountWithCompletion:v6];
}

- (void)subscribeAttributeRxBeaconCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC5B90;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxBeaconCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxBeaconCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC5CB8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxBeaconCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxBeaconRequestCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC5D74;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxBeaconRequestCountWithCompletion:v6];
}

- (void)subscribeAttributeRxBeaconRequestCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC5EF4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxBeaconRequestCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxBeaconRequestCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC601C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxBeaconRequestCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxOtherCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC60D8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxOtherCountWithCompletion:v6];
}

- (void)subscribeAttributeRxOtherCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC6258;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxOtherCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxOtherCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC6380;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxOtherCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxAddressFilteredCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC643C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxAddressFilteredCountWithCompletion:v6];
}

- (void)subscribeAttributeRxAddressFilteredCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC65BC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxAddressFilteredCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxAddressFilteredCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC66E4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxAddressFilteredCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxDestAddrFilteredCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC67A0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxDestAddrFilteredCountWithCompletion:v6];
}

- (void)subscribeAttributeRxDestAddrFilteredCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC6920;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxDestAddrFilteredCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxDestAddrFilteredCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC6A48;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxDestAddrFilteredCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxDuplicatedCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC6B04;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxDuplicatedCountWithCompletion:v6];
}

- (void)subscribeAttributeRxDuplicatedCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC6C84;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxDuplicatedCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxDuplicatedCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC6DAC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxDuplicatedCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxErrNoFrameCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC6E68;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxErrNoFrameCountWithCompletion:v6];
}

- (void)subscribeAttributeRxErrNoFrameCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC6FE8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxErrNoFrameCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxErrNoFrameCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC7110;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxErrNoFrameCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxErrUnknownNeighborCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC71CC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxErrUnknownNeighborCountWithCompletion:v6];
}

- (void)subscribeAttributeRxErrUnknownNeighborCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC734C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxErrUnknownNeighborCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxErrUnknownNeighborCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC7474;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxErrUnknownNeighborCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxErrInvalidSrcAddrCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC7530;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxErrInvalidSrcAddrCountWithCompletion:v6];
}

- (void)subscribeAttributeRxErrInvalidSrcAddrCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC76B0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxErrInvalidSrcAddrCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxErrInvalidSrcAddrCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC77D8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxErrInvalidSrcAddrCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxErrSecCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC7894;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxErrSecCountWithCompletion:v6];
}

- (void)subscribeAttributeRxErrSecCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC7A14;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxErrSecCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxErrSecCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC7B3C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxErrSecCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxErrFcsCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC7BF8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxErrFcsCountWithCompletion:v6];
}

- (void)subscribeAttributeRxErrFcsCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC7D78;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxErrFcsCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxErrFcsCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC7EA0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxErrFcsCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRxErrOtherCountWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC7F5C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeRxErrOtherCountWithCompletion:v6];
}

- (void)subscribeAttributeRxErrOtherCountWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC80DC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeRxErrOtherCountWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRxErrOtherCountWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC8204;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRxErrOtherCountWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActiveTimestampWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC82C0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeActiveTimestampWithCompletion:v6];
}

- (void)subscribeAttributeActiveTimestampWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC8440;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeActiveTimestampWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActiveTimestampWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC8568;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActiveTimestampWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePendingTimestampWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC8624;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributePendingTimestampWithCompletion:v6];
}

- (void)subscribeAttributePendingTimestampWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC87A4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributePendingTimestampWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePendingTimestampWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC88CC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePendingTimestampWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDelayWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC8988;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeDelayWithCompletion:v6];
}

- (void)subscribeAttributeDelayWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC8B08;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeDelayWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDelayWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC8C30;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDelayWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSecurityPolicyWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC8CEC;
  v6[3] = &unk_278A73460;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeSecurityPolicyWithCompletion:v6];
}

- (void)subscribeAttributeSecurityPolicyWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC8E6C;
  v19[3] = &unk_278A73460;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeSecurityPolicyWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSecurityPolicyWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC8F94;
  v15[3] = &unk_278A73460;
  v14 = v12;
  v16 = v14;
  [self readAttributeSecurityPolicyWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeChannelPage0MaskWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC9050;
  v6[3] = &unk_278A73410;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeChannelPage0MaskWithCompletion:v6];
}

- (void)subscribeAttributeChannelPage0MaskWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC91D0;
  v19[3] = &unk_278A73410;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeChannelPage0MaskWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeChannelPage0MaskWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC92F8;
  v15[3] = &unk_278A73410;
  v14 = v12;
  v16 = v14;
  [self readAttributeChannelPage0MaskWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeOperationalDatasetComponentsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC93B4;
  v6[3] = &unk_278A73488;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeOperationalDatasetComponentsWithCompletion:v6];
}

- (void)subscribeAttributeOperationalDatasetComponentsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC9534;
  v19[3] = &unk_278A73488;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeOperationalDatasetComponentsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeOperationalDatasetComponentsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC965C;
  v15[3] = &unk_278A73488;
  v14 = v12;
  v16 = v14;
  [self readAttributeOperationalDatasetComponentsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActiveNetworkFaultsListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC9718;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeActiveNetworkFaultsListWithCompletion:v6];
}

- (void)subscribeAttributeActiveNetworkFaultsListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC9898;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeActiveNetworkFaultsListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActiveNetworkFaultsListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC99C0;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeActiveNetworkFaultsListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC9A7C;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeGeneratedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC9BFC;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FC9D24;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeGeneratedCommandListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FC9DE0;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeAcceptedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FC9F60;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FCA088;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcceptedCommandListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FCA144;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeAttributeListWithCompletion:v6];
}

- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FCA2C4;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FCA3EC;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeAttributeListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FCA4A8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeFeatureMapWithCompletion:v6];
}

- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FCA628;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FCA750;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeFeatureMapWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238FCA80C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self readAttributeClusterRevisionWithCompletion:v6];
}

- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238FCA98C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterThreadNetworkDiagnostics *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238FCAAB4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeClusterRevisionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

@end
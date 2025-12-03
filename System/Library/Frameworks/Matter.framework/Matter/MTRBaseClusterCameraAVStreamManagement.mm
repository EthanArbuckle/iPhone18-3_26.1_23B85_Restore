@interface MTRBaseClusterCameraAVStreamManagement
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAllocatedAudioStreamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAllocatedSnapshotStreamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAllocatedVideoStreamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAttributeListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeCurrentFrameRateWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeFeatureMapWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeHDRModeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeHardPrivacyModeOnWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeImageFlipHorizontalWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeImageFlipVerticalWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeImageRotationWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeLocalSnapshotRecordingEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeLocalVideoRecordingEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMaxConcurrentEncodersWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMaxContentBufferSizeWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMaxEncodedPixelRateWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMaxNetworkBandwidthWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMicrophoneAGCEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMicrophoneCapabilitiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMicrophoneMaxLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMicrophoneMinLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMicrophoneMutedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMicrophoneVolumeLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeMinViewportResolutionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeNightVisionIllumWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeNightVisionUsesInfraredWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeNightVisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeRateDistortionTradeOffPointsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSnapshotCapabilitiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSoftLivestreamPrivacyModeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSoftRecordingPrivacyModeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSpeakerCapabilitiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSpeakerMaxLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSpeakerMinLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSpeakerMutedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSpeakerVolumeLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeStatusLightBrightnessWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeStatusLightEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeStreamUsagePrioritiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeSupportedStreamUsagesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeTwoWayTalkSupportWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeVideoSensorParamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeViewportWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
- (void)audioStreamAllocateWithParams:(id)params completion:(id)completion;
- (void)audioStreamDeallocateWithParams:(id)params completion:(id)completion;
- (void)captureSnapshotWithParams:(id)params completion:(id)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(id)completion;
- (void)readAttributeAllocatedAudioStreamsWithCompletion:(id)completion;
- (void)readAttributeAllocatedSnapshotStreamsWithCompletion:(id)completion;
- (void)readAttributeAllocatedVideoStreamsWithCompletion:(id)completion;
- (void)readAttributeAttributeListWithCompletion:(id)completion;
- (void)readAttributeClusterRevisionWithCompletion:(id)completion;
- (void)readAttributeCurrentFrameRateWithCompletion:(id)completion;
- (void)readAttributeFeatureMapWithCompletion:(id)completion;
- (void)readAttributeGeneratedCommandListWithCompletion:(id)completion;
- (void)readAttributeHDRModeEnabledWithCompletion:(id)completion;
- (void)readAttributeHardPrivacyModeOnWithCompletion:(id)completion;
- (void)readAttributeImageFlipHorizontalWithCompletion:(id)completion;
- (void)readAttributeImageFlipVerticalWithCompletion:(id)completion;
- (void)readAttributeImageRotationWithCompletion:(id)completion;
- (void)readAttributeLocalSnapshotRecordingEnabledWithCompletion:(id)completion;
- (void)readAttributeLocalVideoRecordingEnabledWithCompletion:(id)completion;
- (void)readAttributeMaxConcurrentEncodersWithCompletion:(id)completion;
- (void)readAttributeMaxContentBufferSizeWithCompletion:(id)completion;
- (void)readAttributeMaxEncodedPixelRateWithCompletion:(id)completion;
- (void)readAttributeMaxNetworkBandwidthWithCompletion:(id)completion;
- (void)readAttributeMicrophoneAGCEnabledWithCompletion:(id)completion;
- (void)readAttributeMicrophoneCapabilitiesWithCompletion:(id)completion;
- (void)readAttributeMicrophoneMaxLevelWithCompletion:(id)completion;
- (void)readAttributeMicrophoneMinLevelWithCompletion:(id)completion;
- (void)readAttributeMicrophoneMutedWithCompletion:(id)completion;
- (void)readAttributeMicrophoneVolumeLevelWithCompletion:(id)completion;
- (void)readAttributeMinViewportResolutionWithCompletion:(id)completion;
- (void)readAttributeNightVisionIllumWithCompletion:(id)completion;
- (void)readAttributeNightVisionUsesInfraredWithCompletion:(id)completion;
- (void)readAttributeNightVisionWithCompletion:(id)completion;
- (void)readAttributeRateDistortionTradeOffPointsWithCompletion:(id)completion;
- (void)readAttributeSnapshotCapabilitiesWithCompletion:(id)completion;
- (void)readAttributeSoftLivestreamPrivacyModeEnabledWithCompletion:(id)completion;
- (void)readAttributeSoftRecordingPrivacyModeEnabledWithCompletion:(id)completion;
- (void)readAttributeSpeakerCapabilitiesWithCompletion:(id)completion;
- (void)readAttributeSpeakerMaxLevelWithCompletion:(id)completion;
- (void)readAttributeSpeakerMinLevelWithCompletion:(id)completion;
- (void)readAttributeSpeakerMutedWithCompletion:(id)completion;
- (void)readAttributeSpeakerVolumeLevelWithCompletion:(id)completion;
- (void)readAttributeStatusLightBrightnessWithCompletion:(id)completion;
- (void)readAttributeStatusLightEnabledWithCompletion:(id)completion;
- (void)readAttributeStreamUsagePrioritiesWithCompletion:(id)completion;
- (void)readAttributeSupportedStreamUsagesWithCompletion:(id)completion;
- (void)readAttributeTwoWayTalkSupportWithCompletion:(id)completion;
- (void)readAttributeVideoSensorParamsWithCompletion:(id)completion;
- (void)readAttributeViewportWithCompletion:(id)completion;
- (void)setStreamPrioritiesWithParams:(id)params completion:(id)completion;
- (void)snapshotStreamAllocateWithParams:(id)params completion:(id)completion;
- (void)snapshotStreamDeallocateWithParams:(id)params completion:(id)completion;
- (void)snapshotStreamModifyWithParams:(id)params completion:(id)completion;
- (void)subscribeAttributeAcceptedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAllocatedAudioStreamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAllocatedSnapshotStreamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAllocatedVideoStreamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAttributeListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeClusterRevisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeCurrentFrameRateWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeFeatureMapWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeHDRModeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeHardPrivacyModeOnWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeImageFlipHorizontalWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeImageFlipVerticalWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeImageRotationWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeLocalSnapshotRecordingEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeLocalVideoRecordingEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMaxConcurrentEncodersWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMaxContentBufferSizeWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMaxEncodedPixelRateWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMaxNetworkBandwidthWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMicrophoneAGCEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMicrophoneCapabilitiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMicrophoneMaxLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMicrophoneMinLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMicrophoneMutedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMicrophoneVolumeLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeMinViewportResolutionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeNightVisionIllumWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeNightVisionUsesInfraredWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeNightVisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeRateDistortionTradeOffPointsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSnapshotCapabilitiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSoftLivestreamPrivacyModeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSoftRecordingPrivacyModeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSpeakerCapabilitiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSpeakerMaxLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSpeakerMinLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSpeakerMutedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSpeakerVolumeLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeStatusLightBrightnessWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeStatusLightEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeStreamUsagePrioritiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeSupportedStreamUsagesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeTwoWayTalkSupportWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeVideoSensorParamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeViewportWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)videoStreamAllocateWithParams:(id)params completion:(id)completion;
- (void)videoStreamDeallocateWithParams:(id)params completion:(id)completion;
- (void)videoStreamModifyWithParams:(id)params completion:(id)completion;
- (void)writeAttributeHDRModeEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeImageFlipHorizontalWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeImageFlipVerticalWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeImageRotationWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeLocalSnapshotRecordingEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeLocalVideoRecordingEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeMicrophoneAGCEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeMicrophoneMutedWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeMicrophoneVolumeLevelWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeNightVisionIllumWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeNightVisionWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeSoftLivestreamPrivacyModeEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeSoftRecordingPrivacyModeEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeSpeakerMutedWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeSpeakerVolumeLevelWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeStatusLightBrightnessWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeStatusLightEnabledWithValue:(id)value params:(id)params completion:(id)completion;
- (void)writeAttributeViewportWithValue:(id)value params:(id)params completion:(id)completion;
@end

@implementation MTRBaseClusterCameraAVStreamManagement

- (void)audioStreamAllocateWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23914F8D4;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3E678 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)audioStreamDeallocateWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23914FABC;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3E780 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)videoStreamAllocateWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23914FCB8;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3E798 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)videoStreamModifyWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamModifyParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23914FEA0;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamModifyParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamModifyParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3E7C8 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)videoStreamDeallocateWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23915008C;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3E8A0 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)snapshotStreamAllocateWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239150288;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3E8B8 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)snapshotStreamModifyWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239150470;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3EA68 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)snapshotStreamDeallocateWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_23915065C;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3EA80 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setStreamPrioritiesWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239150848;
  v18 = &unk_278A73118;
  v8 = completionCopy;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3EA98 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)captureSnapshotWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterCaptureSnapshotParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239150A44;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C40130 commandID:&unk_284C3F1B8 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)readAttributeMaxConcurrentEncodersWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6A8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMaxConcurrentEncodersWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6A8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMaxConcurrentEncodersWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:0 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMaxEncodedPixelRateWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6C0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMaxEncodedPixelRateWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6C0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMaxEncodedPixelRateWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:1 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeVideoSensorParamsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E8E8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeVideoSensorParamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E8E8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeVideoSensorParamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:2 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeNightVisionUsesInfraredWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E900 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeNightVisionUsesInfraredWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E900 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeNightVisionUsesInfraredWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:3 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMinViewportResolutionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E918 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMinViewportResolutionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E918 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMinViewportResolutionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:4 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeRateDistortionTradeOffPointsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E930 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeRateDistortionTradeOffPointsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E930 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeRateDistortionTradeOffPointsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:5 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMaxContentBufferSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E948 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMaxContentBufferSizeWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E948 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMaxContentBufferSizeWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:6 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMicrophoneCapabilitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EAC8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMicrophoneCapabilitiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EAC8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMicrophoneCapabilitiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:7 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSpeakerCapabilitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EAE0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeSpeakerCapabilitiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EAE0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSpeakerCapabilitiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:8 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeTwoWayTalkSupportWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EAF8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeTwoWayTalkSupportWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EAF8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeTwoWayTalkSupportWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:9 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSnapshotCapabilitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB10 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeSnapshotCapabilitiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB10 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSnapshotCapabilitiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:10 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMaxNetworkBandwidthWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB28 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMaxNetworkBandwidthWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB28 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMaxNetworkBandwidthWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:11 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeCurrentFrameRateWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB40 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeCurrentFrameRateWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB40 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeCurrentFrameRateWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:12 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeHDRModeEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB58 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeHDRModeEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeHDRModeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB58 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeHDRModeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:13 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSupportedStreamUsagesWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB70 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeSupportedStreamUsagesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB70 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSupportedStreamUsagesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:14 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAllocatedVideoStreamsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E960 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAllocatedVideoStreamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E960 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAllocatedVideoStreamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:15 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAllocatedAudioStreamsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E978 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAllocatedAudioStreamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E978 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAllocatedAudioStreamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:16 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAllocatedSnapshotStreamsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E990 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAllocatedSnapshotStreamsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E990 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAllocatedSnapshotStreamsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:17 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeStreamUsagePrioritiesWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E9A8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeStreamUsagePrioritiesWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E9A8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeStreamUsagePrioritiesWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:18 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSoftRecordingPrivacyModeEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E9C0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeSoftRecordingPrivacyModeEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeSoftRecordingPrivacyModeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E9C0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSoftRecordingPrivacyModeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:19 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSoftLivestreamPrivacyModeEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E9D8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeSoftLivestreamPrivacyModeEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeSoftLivestreamPrivacyModeEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E9D8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSoftLivestreamPrivacyModeEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:20 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeHardPrivacyModeOnWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB88 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeHardPrivacyModeOnWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EB88 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeHardPrivacyModeOnWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:21 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeNightVisionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EBA0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeNightVisionWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeNightVisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EBA0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeNightVisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:22 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeNightVisionIllumWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EC78 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeNightVisionIllumWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeNightVisionIllumWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EC78 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeNightVisionIllumWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:23 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeViewportWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EBB8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeViewportWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeViewportWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EBB8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeViewportWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:24 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSpeakerMutedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EC90 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeSpeakerMutedWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeSpeakerMutedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EC90 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSpeakerMutedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:25 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSpeakerVolumeLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECA8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeSpeakerVolumeLevelWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeSpeakerVolumeLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECA8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSpeakerVolumeLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:26 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSpeakerMaxLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECC0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeSpeakerMaxLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECC0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSpeakerMaxLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:27 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeSpeakerMinLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECD8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeSpeakerMinLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECD8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeSpeakerMinLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:28 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMicrophoneMutedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECF0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeMicrophoneMutedWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeMicrophoneMutedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ECF0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMicrophoneMutedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:29 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMicrophoneVolumeLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ED08 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeMicrophoneVolumeLevelWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeMicrophoneVolumeLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ED08 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMicrophoneVolumeLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:30 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMicrophoneMaxLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ED20 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMicrophoneMaxLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3ED20 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMicrophoneMaxLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:31 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMicrophoneMinLevelWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EDC8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeMicrophoneMinLevelWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EDC8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMicrophoneMinLevelWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:32 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeMicrophoneAGCEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EDE0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeMicrophoneAGCEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeMicrophoneAGCEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EDE0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeMicrophoneAGCEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:33 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeImageRotationWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EDF8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeImageRotationWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeImageRotationWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EDF8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeImageRotationWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:34 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeImageFlipHorizontalWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE10 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeImageFlipHorizontalWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeImageFlipHorizontalWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE10 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeImageFlipHorizontalWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:35 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeImageFlipVerticalWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE28 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeImageFlipVerticalWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeImageFlipVerticalWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE28 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeImageFlipVerticalWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:36 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeLocalVideoRecordingEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE40 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeLocalVideoRecordingEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeLocalVideoRecordingEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE40 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeLocalVideoRecordingEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:37 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeLocalSnapshotRecordingEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE58 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeLocalSnapshotRecordingEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeLocalSnapshotRecordingEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE58 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeLocalSnapshotRecordingEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:38 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeStatusLightEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE70 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeStatusLightEnabledWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeStatusLightEnabledWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE70 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeStatusLightEnabledWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:39 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeStatusLightBrightnessWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE88 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)writeAttributeStatusLightBrightnessWithValue:(id)value params:(id)params completion:(id)completion
{
  valueCopy = value;
  paramsCopy = params;
  completionCopy = completion;
  [paramsCopy copy];

  [valueCopy copy];
  operator new();
}

- (void)subscribeAttributeStatusLightBrightnessWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3EE88 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeStatusLightBrightnessWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:40 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6D8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6D8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:65528 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6F0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E6F0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:65529 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAttributeListWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E708 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAttributeListWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E708 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:65531 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeFeatureMapWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E720 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeFeatureMapWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E720 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:65532 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeClusterRevisionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E738 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeClusterRevisionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C40130 attributeID:&unk_284C3E738 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:1361 queue:65533 completion:{queueCopy, completionCopy}];
}

@end
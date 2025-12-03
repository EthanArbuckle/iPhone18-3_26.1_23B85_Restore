@interface MTRClusterCameraAVStreamManagement
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeAllocatedAudioStreamsWithParams:(id)params;
- (id)readAttributeAllocatedSnapshotStreamsWithParams:(id)params;
- (id)readAttributeAllocatedVideoStreamsWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeCurrentFrameRateWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeHDRModeEnabledWithParams:(id)params;
- (id)readAttributeHardPrivacyModeOnWithParams:(id)params;
- (id)readAttributeImageFlipHorizontalWithParams:(id)params;
- (id)readAttributeImageFlipVerticalWithParams:(id)params;
- (id)readAttributeImageRotationWithParams:(id)params;
- (id)readAttributeLocalSnapshotRecordingEnabledWithParams:(id)params;
- (id)readAttributeLocalVideoRecordingEnabledWithParams:(id)params;
- (id)readAttributeMaxConcurrentEncodersWithParams:(id)params;
- (id)readAttributeMaxContentBufferSizeWithParams:(id)params;
- (id)readAttributeMaxEncodedPixelRateWithParams:(id)params;
- (id)readAttributeMaxNetworkBandwidthWithParams:(id)params;
- (id)readAttributeMicrophoneAGCEnabledWithParams:(id)params;
- (id)readAttributeMicrophoneCapabilitiesWithParams:(id)params;
- (id)readAttributeMicrophoneMaxLevelWithParams:(id)params;
- (id)readAttributeMicrophoneMinLevelWithParams:(id)params;
- (id)readAttributeMicrophoneMutedWithParams:(id)params;
- (id)readAttributeMicrophoneVolumeLevelWithParams:(id)params;
- (id)readAttributeMinViewportResolutionWithParams:(id)params;
- (id)readAttributeNightVisionIllumWithParams:(id)params;
- (id)readAttributeNightVisionUsesInfraredWithParams:(id)params;
- (id)readAttributeNightVisionWithParams:(id)params;
- (id)readAttributeRateDistortionTradeOffPointsWithParams:(id)params;
- (id)readAttributeSnapshotCapabilitiesWithParams:(id)params;
- (id)readAttributeSoftLivestreamPrivacyModeEnabledWithParams:(id)params;
- (id)readAttributeSoftRecordingPrivacyModeEnabledWithParams:(id)params;
- (id)readAttributeSpeakerCapabilitiesWithParams:(id)params;
- (id)readAttributeSpeakerMaxLevelWithParams:(id)params;
- (id)readAttributeSpeakerMinLevelWithParams:(id)params;
- (id)readAttributeSpeakerMutedWithParams:(id)params;
- (id)readAttributeSpeakerVolumeLevelWithParams:(id)params;
- (id)readAttributeStatusLightBrightnessWithParams:(id)params;
- (id)readAttributeStatusLightEnabledWithParams:(id)params;
- (id)readAttributeStreamUsagePrioritiesWithParams:(id)params;
- (id)readAttributeSupportedStreamUsagesWithParams:(id)params;
- (id)readAttributeTwoWayTalkSupportWithParams:(id)params;
- (id)readAttributeVideoSensorParamsWithParams:(id)params;
- (id)readAttributeViewportWithParams:(id)params;
- (void)audioStreamAllocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)audioStreamDeallocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)captureSnapshotWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)setStreamPrioritiesWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)snapshotStreamAllocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)snapshotStreamDeallocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)snapshotStreamModifyWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)videoStreamAllocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)videoStreamDeallocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)videoStreamModifyWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)writeAttributeHDRModeEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeImageFlipHorizontalWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeImageFlipVerticalWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeImageRotationWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeLocalSnapshotRecordingEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeLocalVideoRecordingEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeMicrophoneAGCEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeMicrophoneMutedWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeMicrophoneVolumeLevelWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeNightVisionIllumWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeNightVisionWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeSoftLivestreamPrivacyModeEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeSoftRecordingPrivacyModeEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeSpeakerMutedWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeSpeakerVolumeLevelWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeStatusLightBrightnessWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeStatusLightEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeViewportWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
@end

@implementation MTRClusterCameraAVStreamManagement

- (void)audioStreamAllocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239361534;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C41660 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)audioStreamDeallocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239361750;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C41780 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)videoStreamAllocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239361988;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C41798 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)videoStreamModifyWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamModifyParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239361BA4;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamModifyParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamModifyParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C417C8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)videoStreamDeallocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239361DC4;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C418D0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)snapshotStreamAllocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239361FFC;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C418E8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (void)snapshotStreamModifyWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239362218;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C41A80 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)snapshotStreamDeallocateWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239362438;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C41A98 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)setStreamPrioritiesWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239362658;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C41AB0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)captureSnapshotWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v21 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRCameraAVStreamManagementClusterCaptureSnapshotParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239362890;
  v23[3] = &unk_278A73118;
  v13 = completionCopy;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)paramsCopy serverSideProcessingTimeout];
  v19 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C433A0 commandID:&unk_284C420C8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v19 queue:callbackQueue completion:{v14, v21}];
}

- (id)readAttributeMaxConcurrentEncodersWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaxEncodedPixelRateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeVideoSensorParamsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributeNightVisionUsesInfraredWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributeMinViewportResolutionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeRateDistortionTradeOffPointsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaxContentBufferSizeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41840 params:paramsCopy];

  return v7;
}

- (id)readAttributeMicrophoneCapabilitiesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B10 params:paramsCopy];

  return v7;
}

- (id)readAttributeSpeakerCapabilitiesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41918 params:paramsCopy];

  return v7;
}

- (id)readAttributeTwoWayTalkSupportWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B28 params:paramsCopy];

  return v7;
}

- (id)readAttributeSnapshotCapabilitiesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B40 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaxNetworkBandwidthWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B58 params:paramsCopy];

  return v7;
}

- (id)readAttributeCurrentFrameRateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B70 params:paramsCopy];

  return v7;
}

- (id)readAttributeHDRModeEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B88 params:paramsCopy];

  return v7;
}

- (void)writeAttributeHDRModeEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41B88 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeSupportedStreamUsagesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41BA0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAllocatedVideoStreamsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41960 params:paramsCopy];

  return v7;
}

- (id)readAttributeAllocatedAudioStreamsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41978 params:paramsCopy];

  return v7;
}

- (id)readAttributeAllocatedSnapshotStreamsWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41990 params:paramsCopy];

  return v7;
}

- (id)readAttributeStreamUsagePrioritiesWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C419A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeSoftRecordingPrivacyModeEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C419C0 params:paramsCopy];

  return v7;
}

- (void)writeAttributeSoftRecordingPrivacyModeEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C419C0 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeSoftLivestreamPrivacyModeEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C419D8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeSoftLivestreamPrivacyModeEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C419D8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeHardPrivacyModeOnWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41BB8 params:paramsCopy];

  return v7;
}

- (id)readAttributeNightVisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41BD0 params:paramsCopy];

  return v7;
}

- (void)writeAttributeNightVisionWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41BD0 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeNightVisionIllumWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41CD8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeNightVisionIllumWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41CD8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeViewportWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41BE8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeViewportWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41BE8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeSpeakerMutedWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41CF0 params:paramsCopy];

  return v7;
}

- (void)writeAttributeSpeakerMutedWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41CF0 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeSpeakerVolumeLevelWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41D08 params:paramsCopy];

  return v7;
}

- (void)writeAttributeSpeakerVolumeLevelWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41D08 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeSpeakerMaxLevelWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41D20 params:paramsCopy];

  return v7;
}

- (id)readAttributeSpeakerMinLevelWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C419F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeMicrophoneMutedWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41A08 params:paramsCopy];

  return v7;
}

- (void)writeAttributeMicrophoneMutedWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41A08 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeMicrophoneVolumeLevelWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41A20 params:paramsCopy];

  return v7;
}

- (void)writeAttributeMicrophoneVolumeLevelWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41A20 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeMicrophoneMaxLevelWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41A50 params:paramsCopy];

  return v7;
}

- (id)readAttributeMicrophoneMinLevelWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41E58 params:paramsCopy];

  return v7;
}

- (id)readAttributeMicrophoneAGCEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41E70 params:paramsCopy];

  return v7;
}

- (void)writeAttributeMicrophoneAGCEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41E70 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeImageRotationWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41E88 params:paramsCopy];

  return v7;
}

- (void)writeAttributeImageRotationWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41E88 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeImageFlipHorizontalWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41EA0 params:paramsCopy];

  return v7;
}

- (void)writeAttributeImageFlipHorizontalWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41EA0 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeImageFlipVerticalWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41EB8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeImageFlipVerticalWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41EB8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeLocalVideoRecordingEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41AC8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeLocalVideoRecordingEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41AC8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeLocalSnapshotRecordingEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41ED0 params:paramsCopy];

  return v7;
}

- (void)writeAttributeLocalSnapshotRecordingEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41ED0 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeStatusLightEnabledWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41EE8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeStatusLightEnabledWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41EE8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeStatusLightBrightnessWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41AF8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeStatusLightBrightnessWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41AF8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C433B8 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end
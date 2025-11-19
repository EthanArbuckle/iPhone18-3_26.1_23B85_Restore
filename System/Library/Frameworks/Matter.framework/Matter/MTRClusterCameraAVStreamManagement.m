@interface MTRClusterCameraAVStreamManagement
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeAllocatedAudioStreamsWithParams:(id)a3;
- (id)readAttributeAllocatedSnapshotStreamsWithParams:(id)a3;
- (id)readAttributeAllocatedVideoStreamsWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeCurrentFrameRateWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeHDRModeEnabledWithParams:(id)a3;
- (id)readAttributeHardPrivacyModeOnWithParams:(id)a3;
- (id)readAttributeImageFlipHorizontalWithParams:(id)a3;
- (id)readAttributeImageFlipVerticalWithParams:(id)a3;
- (id)readAttributeImageRotationWithParams:(id)a3;
- (id)readAttributeLocalSnapshotRecordingEnabledWithParams:(id)a3;
- (id)readAttributeLocalVideoRecordingEnabledWithParams:(id)a3;
- (id)readAttributeMaxConcurrentEncodersWithParams:(id)a3;
- (id)readAttributeMaxContentBufferSizeWithParams:(id)a3;
- (id)readAttributeMaxEncodedPixelRateWithParams:(id)a3;
- (id)readAttributeMaxNetworkBandwidthWithParams:(id)a3;
- (id)readAttributeMicrophoneAGCEnabledWithParams:(id)a3;
- (id)readAttributeMicrophoneCapabilitiesWithParams:(id)a3;
- (id)readAttributeMicrophoneMaxLevelWithParams:(id)a3;
- (id)readAttributeMicrophoneMinLevelWithParams:(id)a3;
- (id)readAttributeMicrophoneMutedWithParams:(id)a3;
- (id)readAttributeMicrophoneVolumeLevelWithParams:(id)a3;
- (id)readAttributeMinViewportResolutionWithParams:(id)a3;
- (id)readAttributeNightVisionIllumWithParams:(id)a3;
- (id)readAttributeNightVisionUsesInfraredWithParams:(id)a3;
- (id)readAttributeNightVisionWithParams:(id)a3;
- (id)readAttributeRateDistortionTradeOffPointsWithParams:(id)a3;
- (id)readAttributeSnapshotCapabilitiesWithParams:(id)a3;
- (id)readAttributeSoftLivestreamPrivacyModeEnabledWithParams:(id)a3;
- (id)readAttributeSoftRecordingPrivacyModeEnabledWithParams:(id)a3;
- (id)readAttributeSpeakerCapabilitiesWithParams:(id)a3;
- (id)readAttributeSpeakerMaxLevelWithParams:(id)a3;
- (id)readAttributeSpeakerMinLevelWithParams:(id)a3;
- (id)readAttributeSpeakerMutedWithParams:(id)a3;
- (id)readAttributeSpeakerVolumeLevelWithParams:(id)a3;
- (id)readAttributeStatusLightBrightnessWithParams:(id)a3;
- (id)readAttributeStatusLightEnabledWithParams:(id)a3;
- (id)readAttributeStreamUsagePrioritiesWithParams:(id)a3;
- (id)readAttributeSupportedStreamUsagesWithParams:(id)a3;
- (id)readAttributeTwoWayTalkSupportWithParams:(id)a3;
- (id)readAttributeVideoSensorParamsWithParams:(id)a3;
- (id)readAttributeViewportWithParams:(id)a3;
- (void)audioStreamAllocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)audioStreamDeallocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)captureSnapshotWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setStreamPrioritiesWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)snapshotStreamAllocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)snapshotStreamDeallocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)snapshotStreamModifyWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)videoStreamAllocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)videoStreamDeallocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)videoStreamModifyWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)writeAttributeHDRModeEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeImageFlipHorizontalWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeImageFlipVerticalWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeImageRotationWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeLocalSnapshotRecordingEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeLocalVideoRecordingEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeMicrophoneAGCEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeMicrophoneMutedWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeMicrophoneVolumeLevelWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeNightVisionIllumWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeNightVisionWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeSoftLivestreamPrivacyModeEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeSoftRecordingPrivacyModeEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeSpeakerMutedWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeSpeakerVolumeLevelWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeStatusLightBrightnessWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeStatusLightEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeViewportWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
@end

@implementation MTRClusterCameraAVStreamManagement

- (void)audioStreamAllocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239361534;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C433A0 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)audioStreamDeallocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239361750;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRCameraAVStreamManagementClusterAudioStreamDeallocateParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C433A0 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)videoStreamAllocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239361988;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C433A0 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)videoStreamModifyWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamModifyParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239361BA4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRCameraAVStreamManagementClusterVideoStreamModifyParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRCameraAVStreamManagementClusterVideoStreamModifyParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C433A0 commandID:&unk_284C417C8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)videoStreamDeallocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239361DC4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRCameraAVStreamManagementClusterVideoStreamDeallocateParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C433A0 commandID:&unk_284C418D0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)snapshotStreamAllocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239361FFC;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C433A0 commandID:&unk_284C418E8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)snapshotStreamModifyWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239362218;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRCameraAVStreamManagementClusterSnapshotStreamModifyParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C433A0 commandID:&unk_284C41A80 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)snapshotStreamDeallocateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239362438;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRCameraAVStreamManagementClusterSnapshotStreamDeallocateParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C433A0 commandID:&unk_284C41A98 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setStreamPrioritiesWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239362658;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRCameraAVStreamManagementClusterSetStreamPrioritiesParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C433A0 commandID:&unk_284C41AB0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)captureSnapshotWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRCameraAVStreamManagementClusterCaptureSnapshotParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239362890;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C433A0 commandID:&unk_284C420C8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (id)readAttributeMaxConcurrentEncodersWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeMaxEncodedPixelRateWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeVideoSensorParamsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeNightVisionUsesInfraredWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeMinViewportResolutionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (id)readAttributeRateDistortionTradeOffPointsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (id)readAttributeMaxContentBufferSizeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (id)readAttributeMicrophoneCapabilitiesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (id)readAttributeSpeakerCapabilitiesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (id)readAttributeTwoWayTalkSupportWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (id)readAttributeSnapshotCapabilitiesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (id)readAttributeMaxNetworkBandwidthWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (id)readAttributeCurrentFrameRateWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (id)readAttributeHDRModeEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41B88 params:v4];

  return v7;
}

- (void)writeAttributeHDRModeEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41B88 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSupportedStreamUsagesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41BA0 params:v4];

  return v7;
}

- (id)readAttributeAllocatedVideoStreamsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (id)readAttributeAllocatedAudioStreamsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (id)readAttributeAllocatedSnapshotStreamsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (id)readAttributeStreamUsagePrioritiesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (id)readAttributeSoftRecordingPrivacyModeEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (void)writeAttributeSoftRecordingPrivacyModeEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C419C0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSoftLivestreamPrivacyModeEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (void)writeAttributeSoftLivestreamPrivacyModeEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C419D8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeHardPrivacyModeOnWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (id)readAttributeNightVisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (void)writeAttributeNightVisionWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41BD0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeNightVisionIllumWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (void)writeAttributeNightVisionIllumWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41CD8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeViewportWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41BE8 params:v4];

  return v7;
}

- (void)writeAttributeViewportWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41BE8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSpeakerMutedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41CF0 params:v4];

  return v7;
}

- (void)writeAttributeSpeakerMutedWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41CF0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSpeakerVolumeLevelWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41D08 params:v4];

  return v7;
}

- (void)writeAttributeSpeakerVolumeLevelWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41D08 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSpeakerMaxLevelWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41D20 params:v4];

  return v7;
}

- (id)readAttributeSpeakerMinLevelWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C419F0 params:v4];

  return v7;
}

- (id)readAttributeMicrophoneMutedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41A08 params:v4];

  return v7;
}

- (void)writeAttributeMicrophoneMutedWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41A08 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeMicrophoneVolumeLevelWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41A20 params:v4];

  return v7;
}

- (void)writeAttributeMicrophoneVolumeLevelWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41A20 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeMicrophoneMaxLevelWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41A50 params:v4];

  return v7;
}

- (id)readAttributeMicrophoneMinLevelWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41E58 params:v4];

  return v7;
}

- (id)readAttributeMicrophoneAGCEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (void)writeAttributeMicrophoneAGCEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41E70 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeImageRotationWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41E88 params:v4];

  return v7;
}

- (void)writeAttributeImageRotationWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41E88 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeImageFlipHorizontalWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41EA0 params:v4];

  return v7;
}

- (void)writeAttributeImageFlipHorizontalWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41EA0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeImageFlipVerticalWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41EB8 params:v4];

  return v7;
}

- (void)writeAttributeImageFlipVerticalWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41EB8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeLocalVideoRecordingEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41AC8 params:v4];

  return v7;
}

- (void)writeAttributeLocalVideoRecordingEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41AC8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeLocalSnapshotRecordingEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41ED0 params:v4];

  return v7;
}

- (void)writeAttributeLocalSnapshotRecordingEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41ED0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeStatusLightEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41EE8 params:v4];

  return v7;
}

- (void)writeAttributeStatusLightEnabledWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41EE8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeStatusLightBrightnessWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41AF8 params:v4];

  return v7;
}

- (void)writeAttributeStatusLightBrightnessWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C433B8 attributeID:&unk_284C41AF8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C433B8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end
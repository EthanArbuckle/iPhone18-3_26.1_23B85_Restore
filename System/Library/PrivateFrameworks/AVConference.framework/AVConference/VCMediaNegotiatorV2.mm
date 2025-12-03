@interface VCMediaNegotiatorV2
+ (BOOL)addFeatureListStringsToStreamGroupConfig:(id)config fromStreamGroupBlob:(id)blob;
+ (BOOL)addV1FeatureListStringsToStreamGroupConfig:(id)config mediaType:(unsigned __int8)type;
+ (BOOL)addV2FeatureListStringsToStreamGroupConfig:(id)config fromStreamGroupBlob:(id)blob;
+ (BOOL)initializeLocalConfiguration:(id)configuration negotiationData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload;
+ (BOOL)updateCameraU1Config:(id)config forNegotiationBlob:(id)blob localSupportedVideoPayloads:(id)payloads u1AuthTagEnabled:(BOOL)enabled;
+ (BOOL)updateStreamGroupU1Config:(id)config forGroupId:(unsigned int)id withNegotiationBlob:(id)blob streamGroupBlob:(id)groupBlob localSupportedVideoPayloads:(id)payloads u1AuthTagEnabled:(BOOL)enabled;
+ (BOOL)updateVideoU1ConfigWithStreamGroupConfig:(id)config forNegotiationBlob:(id)blob streamGroupBlob:(id)groupBlob localSupportedVideoPayloads:(id)payloads u1AuthTagEnabled:(BOOL)enabled;
+ (CGSize)resolutionForStreamGroupConfig:(id)config;
+ (float)frameRateForMediaType:(unsigned __int8)type;
+ (id)featureStringWithMediaBlob:(id)blob;
+ (id)newCompressedBlob:(id)blob;
+ (id)newDecompressedBlob:(id)blob;
+ (id)newUnserializedMediaBlob:(id)blob;
+ (id)streamGroupIDsWithMediaBlob:(id)blob;
+ (id)u1RemoteSupportedCipherSuitesForBlob:(id)blob mediaType:(unsigned __int8)type u1AuthTagEnabled:(BOOL)enabled;
+ (unsigned)capabilitiesWithMomentSettings:(id)settings;
+ (void)dumpRemoteNegotiationData:(id)data forceFileDump:(BOOL)dump;
- (BOOL)appendBandwidthSettingsToMediaBlob:(id)blob;
- (BOOL)appendCameraOneToOneSettingsToMediaBlob:(id)blob;
- (BOOL)appendCodecFeaturesToMediaBlob:(id)blob;
- (BOOL)appendGeneralInfoToMediaBlob:(id)blob;
- (BOOL)appendStreamGroupsToMediaBlob:(id)blob;
- (BOOL)mediaBlobHasFLSPerCodec:(id)codec;
- (BOOL)negotiateStreamGroupConfig:(id)config remoteInviteBlob:(id)blob;
- (BOOL)negotiateU1SettingsForStreamGroup:(id)group;
- (BOOL)processRemoteNegotiationData:(id)data;
- (BOOL)selectBestDecodeVideoRuleForTransport:(unsigned __int8)transport payload:(int)payload localVideoRuleCollection:(id)collection remoteVideoRuleCollection:(id)ruleCollection;
- (BOOL)setupNegotiatedMomentsResultsWithRemoteMediaBlob:(id)blob;
- (BOOL)setupNegotiatedResultsWithRemoteMediaBlob:(id)blob;
- (BOOL)setupNegotiatedVideoSettingsWithRemoteMediaBlob:(id)blob;
- (BOOL)setupStreamGroupsWithRemoteMediaBlob:(id)blob;
- (id)negotiationData;
- (unsigned)remoteMaxBandwidthForArbiterMode:(unsigned __int8)mode connectionType:(int)type;
- (void)appendCameraOneToOneFullScreenCaptureSettingsToCameraSetttings:(id)setttings;
- (void)setUpNegotiatedSystemAudioResultsWithRemoteMediaBlob:(id)blob;
- (void)setupNegotiatedAudioResultsWithRemoteMediaBlob:(id)blob;
- (void)setupNegotiatedFaceTimeSettingsWithRemoteMediaBlob:(id)blob;
@end

@implementation VCMediaNegotiatorV2

+ (id)newCompressedBlob:(id)blob
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = [blob length];
  v4 = malloc_type_calloc(1uLL, v9, 0x100004077774924uLL);
  if (v4)
  {
    [blob bytes];
    [blob length];
    if (CompressionUtils_CompressWithZLib())
    {
      v5 = 0;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *&buf[4] = v6;
          v11 = 2080;
          v12 = "+[VCMediaNegotiatorV2 newCompressedBlob:]";
          v13 = 1024;
          v14 = 87;
          v15 = 1024;
          v16 = [blob length];
          v17 = 1024;
          v18 = v9;
          v19 = 2048;
          v20 = (v9 / [blob length]);
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media blob v2 size=%d -> %d bytes with ratio %f", buf, 0x32u);
        }
      }

      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:v9];
    }
  }

  else
  {
    +[VCMediaNegotiatorV2 newCompressedBlob:];
    v5 = *buf;
  }

  free(v4);
  return v5;
}

+ (id)newDecompressedBlob:(id)blob
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = ([blob length] * 1.5);
  v4 = malloc_type_calloc(1uLL, v9, 0x100004077774924uLL);
  if (v4)
  {
    [blob bytes];
    [blob length];
    if (CompressionUtils_DecompressWithZlib())
    {
      v5 = 0;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v6;
          v11 = 2080;
          v12 = "+[VCMediaNegotiatorV2 newDecompressedBlob:]";
          v13 = 1024;
          v14 = 101;
          v15 = 1024;
          v16 = [blob length];
          v17 = 1024;
          v18 = v9;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media blob size=%d -> %d bytes", buf, 0x28u);
        }
      }

      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:v9];
    }
  }

  else
  {
    +[VCMediaNegotiatorV2 newDecompressedBlob:];
    v5 = *buf;
  }

  free(v4);
  return v5;
}

+ (id)newUnserializedMediaBlob:(id)blob
{
  if (!blob)
  {
    +[VCMediaNegotiatorV2 newUnserializedMediaBlob:];
    return v5;
  }

  blobCopy = blob;
  if (VCDefaults_GetBoolValueForKey(@"mediaNegotiatorV2CompressionEnabled", 0))
  {
    blobCopy = [VCMediaNegotiatorV2 newDecompressedBlob:blobCopy];
    if (!blobCopy)
    {
      +[VCMediaNegotiatorV2 newUnserializedMediaBlob:];
      return v5;
    }
  }

  return [[VCMediaNegotiationBlobV2 alloc] initWithData:blobCopy];
}

- (BOOL)processRemoteNegotiationData:(id)data
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!data)
  {
    [(VCMediaNegotiatorV2 *)&v9 processRemoteNegotiationData:v10];
LABEL_13:
    v7 = v9;
    v6 = v10[0];
    goto LABEL_7;
  }

  [VCMediaNegotiatorV2 dumpRemoteNegotiationData:data forceFileDump:0];
  v5 = [VCMediaNegotiatorV2 newUnserializedMediaBlob:data];
  if (!v5)
  {
    [(VCMediaNegotiatorV2 *)&v9 processRemoteNegotiationData:v10];
    goto LABEL_13;
  }

  v6 = v5;
  [v5 printWithTitle:@"Received invite media blob (version 2)" logFile:0];
  if (![(VCMediaNegotiatorV2 *)self setupNegotiatedResultsWithRemoteMediaBlob:v6])
  {
    [(VCMediaNegotiatorV2 *)v6 processRemoteNegotiationData:v10];
    goto LABEL_13;
  }

  [(VCMediaNegotiatorV2 *)self setupNegotiatedFaceTimeSettingsWithRemoteMediaBlob:v6];
  if (![(VCMediaNegotiatorV2 *)self setupNegotiatedMomentsResultsWithRemoteMediaBlob:v6])
  {
    [(VCMediaNegotiatorV2 *)v6 processRemoteNegotiationData:v10];
    goto LABEL_13;
  }

  if (![(VCMediaNegotiatorV2 *)self setupStreamGroupsWithRemoteMediaBlob:v6])
  {
    [(VCMediaNegotiatorV2 *)v6 processRemoteNegotiationData:v10];
    goto LABEL_13;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

+ (BOOL)initializeLocalConfiguration:(id)configuration negotiationData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = [[VCMediaNegotiationBlobV2 alloc] initWithData:data];
  if (!v7)
  {
    +[VCMediaNegotiatorV2 initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
    v28 = v33;
    goto LABEL_38;
  }

  [configuration resetStreamGroups];
  [configuration setOneToOneAuthTagEnabled:1];
  [configuration setFecHeaderVersion:{-[VCMediaNegotiationBlobV2GeneralInfo fecHeaderVersion](-[VCMediaNegotiationBlobV2 generalInfo](v7, "generalInfo"), "fecHeaderVersion")}];
  [configuration setRtxVersion:{-[VCMediaNegotiationBlobV2GeneralInfo rtxVersion](-[VCMediaNegotiationBlobV2 generalInfo](v7, "generalInfo"), "rtxVersion")}];
  [configuration setEnableACC24ForU1:{(-[VCMediaNegotiationBlobV2MicrophoneSettingsU1 payloads](-[VCMediaNegotiationBlobV2 microphoneU1](v7, "microphoneU1"), "payloads") >> 5) & 1}];
  v8 = [configuration mediaConfigurationForMediaType:1];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = v7;
  obj = [(VCMediaNegotiationBlobV2 *)v7 streamGroups];
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v30 = 0;
  v11 = *v41;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v40 + 1) + 8 * i);
      v33 = 0;
      if (([v13 getStreamGroupConfig:&v33] & 0x80000000) != 0 || !v33)
      {
        +[VCMediaNegotiatorV2 initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
        goto LABEL_36;
      }

      [configuration addStreamGroupConfig:?];
      v14 = [configuration mediaConfigurationForMediaType:2];
      +[VCMediaNegotiatorV2 updateStreamGroupU1Config:forGroupId:withNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:](VCMediaNegotiatorV2, "updateStreamGroupU1Config:forGroupId:withNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:", v33, [v33 groupID], v32, v13, objc_msgSend(objc_msgSend(v14, "videoRuleCollections"), "supportedPayloads"), objc_msgSend(configuration, "isOneToOneAuthTagEnabled"));
      if ([v33 groupID] == 1937339233 && objc_msgSend(v33, "u1Config"))
      {
        v15 = [VCMediaNegotiatorAudioConfiguration alloc];
        allowAudioSwitching = [v8 allowAudioSwitching];
        allowAudioRecording = [v8 allowAudioRecording];
        useSBR = [v8 useSBR];
        v19 = -[VCMediaNegotiatorAudioConfiguration initWithAllowAudioSwitching:allowAudioRecording:useSBR:ssrc:audioUnitNumber:](v15, "initWithAllowAudioSwitching:allowAudioRecording:useSBR:ssrc:audioUnitNumber:", allowAudioSwitching, allowAudioRecording, useSBR, [objc_msgSend(v33 "u1Config")], objc_msgSend(v8, "audioUnitNumber"));
        if (v19)
        {
          v20 = v19;
          [(VCMediaNegotiatorAudioConfiguration *)v19 addAudioPayload:101 isSecondary:0];
          [configuration setMediaConfiguration:v20 forMediaType:4];

          continue;
        }

        +[VCMediaNegotiatorV2 initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
LABEL_36:
        v28 = 0;
        goto LABEL_37;
      }

      if ([v33 groupID] == 1935897189 && objc_msgSend(v33, "u1Config"))
      {
        v30 = 1;
      }

      else if ([v33 groupID] == 1835623282)
      {
        if ([configuration enableACC24ForGFT])
        {
          enableACC24ForGFT = 1;
        }

        else
        {
          enableACC24ForGFT = [v33 enableACC24ForGFT];
        }

        [configuration setEnableACC24ForGFT:enableACC24ForGFT];
      }
    }

    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  if ((v30 & 1) == 0)
  {
LABEL_24:
    [configuration setMediaConfiguration:0 forMediaType:4];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    streamGroupConfigs = [configuration streamGroupConfigs];
    v23 = [streamGroupConfigs countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(streamGroupConfigs);
          }

          v27 = *(*(&v35 + 1) + 8 * j);
          if ([v27 groupID] == 1937339233)
          {
            [v27 setU1Config:0];
          }
        }

        v24 = [streamGroupConfigs countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v24);
    }
  }

  v28 = 1;
  [configuration setOneToOneModeSupported:1];
LABEL_37:
  v7 = v32;
LABEL_38:

  return v28;
}

- (unsigned)remoteMaxBandwidthForArbiterMode:(unsigned __int8)mode connectionType:(int)type
{
  modeCopy = mode;
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  bandwidthConfigurations = [(VCMediaNegotiatorResults *)self->super._negotiatedSettings bandwidthConfigurations];
  v7 = [(NSSet *)bandwidthConfigurations countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    maxBandwidth = 0;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(bandwidthConfigurations);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if ([v12 connectionType] == type)
        {
          if ([v12 mode] == modeCopy)
          {
            maxBandwidth = [v12 maxBandwidth];
            if (maxBandwidth)
            {
              return maxBandwidth;
            }

            goto LABEL_15;
          }

          if ([v12 isDefaultMode])
          {
            maxBandwidth = [v12 maxBandwidth];
          }
        }
      }

      v8 = [(NSSet *)bandwidthConfigurations countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (maxBandwidth)
    {
      return maxBandwidth;
    }
  }

LABEL_15:
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v13;
      v18 = 2080;
      v19 = "[VCMediaNegotiatorV2 remoteMaxBandwidthForArbiterMode:connectionType:]";
      v20 = 1024;
      v21 = 246;
      v22 = 1024;
      v23 = modeCopy;
      v24 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Max bandwidth not found for operatingMode=%hhu connectionType=%d", &v16, 0x28u);
    }
  }

  return 0;
}

- (BOOL)appendGeneralInfoToMediaBlob:(id)blob
{
  v4 = [[VCMediaNegotiationBlobV2GeneralInfo alloc] initWithCreationTime:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings creationTime] screenResolution:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches] abSwitches:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings fecHeaderVersion] fecHeaderVersion:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings rtxVersion] rtxVersion:+[VCHardwareSettings screenWidth](VCHardwareSettings, "screenWidth"), +[VCHardwareSettings screenHeight]];
  if (v4)
  {
    [blob setGeneralInfo:v4];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaNegotiatorV2 appendGeneralInfoToMediaBlob:];
    }
  }

  return v4 != 0;
}

- (BOOL)appendBandwidthSettingsToMediaBlob:(id)blob
{
  v4 = [[VCMediaNegotiationBlobV2BandwidthSettings alloc] initWithBandwidthConfigurations:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings bandwidthConfigurations]];
  v5 = v4;
  if (v4)
  {
    if (![(VCMediaNegotiationBlobV2BandwidthSettings *)v4 isDefaultSettings])
    {
      [blob setBandwidthSettings:v5];
    }
  }

  else
  {
    [VCMediaNegotiatorV2 appendBandwidthSettingsToMediaBlob:];
  }

  return v5 != 0;
}

- (BOOL)appendCodecFeaturesToMediaBlob:(id)blob
{
  v22 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v5 = [VCModeSpecificHardwareSettings encoderUsageTypeWithHardwareSettingsMode:1];
    v6 = VCPCodecCopyProperties();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v6)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiatorV2 appendCodecFeaturesToMediaBlob:];
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCMediaNegotiatorV2 appendCodecFeaturesToMediaBlob:]";
        v16 = 1024;
        v17 = 293;
        v18 = 2112;
        v19 = 0;
        v20 = 1024;
        v21 = v5;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] kVCPCodecProperty_FeatureBitField=%@ for encoderUsage=%d", buf, 0x2Cu);
      }
    }
  }

  v10 = -[VCMediaNegotiationBlobV2CodecFeatures initWithAllowAudioRecording:videoFeatures:]([VCMediaNegotiationBlobV2CodecFeatures alloc], "initWithAllowAudioRecording:videoFeatures:", [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](self->super._localSettings mediaConfigurationForMediaType:{1), "allowAudioRecording"}], 0);
  if (v10)
  {
    [blob setCodecSupport:v10];
  }

  else
  {
    [VCMediaNegotiatorV2 appendCodecFeaturesToMediaBlob:];
  }

  return v10 != 0;
}

- (void)appendCameraOneToOneFullScreenCaptureSettingsToCameraSetttings:(id)setttings
{
  [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings orientationMismatchFullScreenAspectRatioLandscape];
  if (v5 != 0.0)
  {
    [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings orientationMismatchFullScreenAspectRatioLandscape];
    [setttings setMismatchedFullScreenDisplayAspectRatioX:v6];
    [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings orientationMismatchFullScreenAspectRatioLandscape];
    [setttings setMismatchedFullScreenDisplayAspectRatioY:v7];
  }

  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings frontCameraFullScreenSupported])
  {
    [setttings setFrontCameraFullScreenCaptureSupported:{-[VCMediaNegotiatorLocalConfiguration frontCameraFullScreenSupported](self->super._localSettings, "frontCameraFullScreenSupported")}];
  }

  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings backCameraFullScreenSupported])
  {
    [setttings setBackCameraFullScreenCaptureSupported:{-[VCMediaNegotiatorLocalConfiguration backCameraFullScreenSupported](self->super._localSettings, "backCameraFullScreenSupported")}];
  }

  v8 = [VCMediaNegotiationBlobV2CameraSettingsU1 negotiationDeviceOrientationFromDeviceOrientation:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings deviceInitialOrientation]];

  [setttings setDeviceOrientation:v8];
}

- (BOOL)appendCameraOneToOneSettingsToMediaBlob:(id)blob
{
  v40 = *MEMORY[0x1E69E9840];
  if (![(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings oneToOneModeSupported])
  {
    v27 = 0;
    goto LABEL_8;
  }

  v5 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:2];
  v6 = [objc_msgSend(v5 "videoRuleCollections")];
  if ([objc_msgSend(v6 "supportedPayloads")])
  {
    videoFeatureStringsFixedPosition = [v5 videoFeatureStringsFixedPosition];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v8;
        v34 = 2080;
        v35 = "[VCMediaNegotiatorV2 appendCameraOneToOneSettingsToMediaBlob:]";
        v36 = 1024;
        v37 = 357;
        v38 = 2112;
        v39 = videoFeatureStringsFixedPosition;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoFeatureStringsFixedPosition=%@", buf, 0x26u);
      }
    }

    v10 = [VCMediaNegotiationBlobV2CameraSettingsU1 alloc];
    ssrc = [v5 ssrc];
    [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings screenSize];
    v13 = v12;
    v15 = v14;
    [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings aspectRatioPortrait];
    v17 = v16;
    v19 = v18;
    [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings aspectRatioLandscape];
    v21 = v20;
    v23 = v22;
    [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings orientationMismatchAspectRatioLandscape];
    v26 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)v10 initWithSSRC:ssrc videoRuleCollections:v6 screenSize:videoFeatureStringsFixedPosition aspectRatioPortrait:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings isOneToOneAuthTagEnabled] aspectRatioLandscape:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings videoFrameMetadataSupportedVersion] orientationMismatchAspectRatioLandscape:v13 featureListStrings:v15 u1AuthTagEnabled:v17 videoFrameMetadataSupportedVersion:v19, v21, v23, v24, v25];
    if (!v26)
    {
      [(VCMediaNegotiatorV2 *)buf appendCameraOneToOneSettingsToMediaBlob:?];
      v27 = *buf;
      v28 = v32;
      goto LABEL_9;
    }

    v27 = v26;
    [(VCMediaNegotiatorV2 *)self appendCameraOneToOneFullScreenCaptureSettingsToCameraSetttings:v26];
    [blob setCameraU1:v27];
LABEL_8:
    v28 = 1;
LABEL_9:

    return v28;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v29;
      v34 = 2080;
      v35 = "[VCMediaNegotiatorV2 appendCameraOneToOneSettingsToMediaBlob:]";
      v36 = 1024;
      v37 = 353;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No supported payloads for the device", buf, 0x1Cu);
    }
  }

  return 1;
}

- (BOOL)appendStreamGroupsToMediaBlob:(id)blob
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  streamGroupConfigs = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings streamGroupConfigs];
  v5 = [(NSSet *)streamGroupConfigs countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(streamGroupConfigs);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 groupID] == 1835623282)
        {
          [v9 setEnableACC24ForGFT:{-[VCMediaNegotiatorLocalConfiguration enableACC24ForGFT](self->super._localSettings, "enableACC24ForGFT")}];
        }

        v10 = [[VCMediaNegotiationBlobV2StreamGroup alloc] initWithStreamGroupConfig:v9];
        if (!v10)
        {
          [VCMediaNegotiatorV2 appendStreamGroupsToMediaBlob:];
          return v14;
        }

        v11 = v10;
        [blob addStreamGroups:v10];
      }

      v6 = [(NSSet *)streamGroupConfigs countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

+ (void)dumpRemoteNegotiationData:(id)data forceFileDump:(BOOL)dump
{
  dumpCopy = dump;
  v14 = *MEMORY[0x1E69E9840];
  if ([+[VCDefaults dumpMediaBlob]|| dumpCopy sharedInstance]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v6;
        v10 = 2080;
        v11 = "+[VCMediaNegotiatorV2 dumpRemoteNegotiationData:forceFileDump:]";
        v12 = 1024;
        v13 = 419;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media blob dump enabled !!", buf, 0x1Cu);
      }
    }

    memset(buf, 170, sizeof(buf));
    __sprintf_chk(buf, 0, 0xCuLL, "%010u", 0);
    v8 = VRLogfileAlloc(0, buf, "mediablob_invite_remote", ".blob", "com.apple.VideoConference.MediaBlob", 9);
    VRLogfileWrite(v8, [data bytes], objc_msgSend(data, "length"));
    VRLogfileFree(&v8);
  }
}

- (BOOL)setupNegotiatedResultsWithRemoteMediaBlob:(id)blob
{
  if ([blob bandwidthSettings])
  {
    bandwidthSettings = [blob bandwidthSettings];
  }

  else
  {
    bandwidthSettings = objc_alloc_init(VCMediaNegotiationBlobV2BandwidthSettings);
  }

  v6 = bandwidthSettings;
  if (bandwidthSettings)
  {
    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings addBandwidthConfigurations:[(VCMediaNegotiationBlobV2BandwidthSettings *)bandwidthSettings bandwidthConfigurations]];

    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setMediaControlInfoVersion:2];
    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBlobVersion:2];
    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setControlChannelVersion:2];
    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setSupportsDynamicMaxBitrate:1];
    -[VCMediaNegotiatorResults setRemoteBlobCreationTime:](self->super._negotiatedSettings, "setRemoteBlobCreationTime:", [objc_msgSend(blob "generalInfo")]);
    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setAccessNetworkType:2];
    fecHeaderVersion = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings fecHeaderVersion];
    v8 = [objc_msgSend(blob "generalInfo")];
    if (v8 >= fecHeaderVersion)
    {
      v9 = fecHeaderVersion;
    }

    else
    {
      v9 = v8;
    }

    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setFecHeaderVersion:v9];
    rtxVersion = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings rtxVersion];
    v11 = [objc_msgSend(blob "generalInfo")];
    if (v11 >= rtxVersion)
    {
      v12 = rtxVersion;
    }

    else
    {
      v12 = v11;
    }

    [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRtxVersion:v12];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaNegotiatorV2 setupNegotiatedResultsWithRemoteMediaBlob:];
    }
  }

  return v6 != 0;
}

- (void)setupNegotiatedAudioResultsWithRemoteMediaBlob:(id)blob
{
  v5 = +[VCAudioRuleCollection getForcedPayload];
  v6 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F5797E78];
  v7 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:1];
  [v6 setRemoteSSRC:{objc_msgSend(objc_msgSend(blob, "microphoneU1"), "rtpSSRC")}];
  [v6 setAudioUnitModel:65792];
  [v6 setUseSBR:1];
  if ([v7 allowAudioRecording])
  {
    v8 = [objc_msgSend(blob "codecSupport")];
  }

  else
  {
    v8 = 0;
  }

  [v6 setAllowRecording:v8];
  [v6 setAllowSwitching:v5 == 128];
  if (v5 == 128)
  {
    v9 = +[VCMediaNegotiatorBase newNegotiatedAudioPayloadsWithLocalPayloads:remotePayloads:](VCMediaNegotiatorBase, "newNegotiatedAudioPayloadsWithLocalPayloads:remotePayloads:", [v7 audioPayloads], objc_msgSend(objc_msgSend(blob, "microphoneU1"), "audioPayloads"));
    [VCMediaNegotiatorBase setupNegotiatedAudioPayloads:v9 negotiatedAudioSettings:v6 primaryPayloadPreference:&unk_1F579C888];
  }

  else
  {

    [v6 setPrimaryPayload:v5];
  }
}

- (void)setUpNegotiatedSystemAudioResultsWithRemoteMediaBlob:(id)blob
{
  v5 = [-[VCMediaNegotiatorBase negotiatedStreamGroupConfigForGroupID:negotiatedStreamGroupConfigs:](self negotiatedStreamGroupConfigForGroupID:1937339233 negotiatedStreamGroupConfigs:{-[NSSet allObjects](-[VCMediaNegotiatorLocalConfiguration streamGroupConfigs](-[VCMediaNegotiatorBase localSettings](self, "localSettings"), "streamGroupConfigs"), "allObjects")), "u1Config"}];
  v7 = objc_alloc_init(VCMediaNegotiatorStreamGroupU1Configuration);
  -[VCMediaNegotiatorStreamGroupU1Configuration setSupportedCipherSuites:](v7, "setSupportedCipherSuites:", +[VCMediaNegotiationBlobV2SettingsU1 mediaStreamCipherSuitesFromNegotiationCipherSuites:](VCMediaNegotiationBlobV2SettingsU1, "mediaStreamCipherSuitesFromNegotiationCipherSuites:", +[VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:u1AuthTagEnabled:](VCMediaNegotiationBlobV2, "pruneDisabledCipherSuites:u1AuthTagEnabled:", [objc_msgSend(blob "microphoneU1")], -[VCMediaNegotiatorLocalConfiguration isOneToOneAuthTagEnabled](self->super._localSettings, "isOneToOneAuthTagEnabled"))));
  [(VCMediaNegotiatorStreamGroupU1Configuration *)v7 setSupportedDirection:2];
  v6 = [(VCMediaNegotiatorBase *)self negotiatedResultsForGroupID:1937339233 localU1Config:v5 remoteU1Config:v7];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._negotiatedU1MediaSettings, "setObject:forKeyedSubscript:", v6, [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID(1937339233)]);
}

- (BOOL)selectBestDecodeVideoRuleForTransport:(unsigned __int8)transport payload:(int)payload localVideoRuleCollection:(id)collection remoteVideoRuleCollection:(id)ruleCollection
{
  v7 = *&payload;
  transportCopy = transport;
  v27 = *MEMORY[0x1E69E9840];
  v10 = [collection getVideoRulesForTransport:transport payload:*&payload encodingType:2];
  if (!v10)
  {
    [VCMediaNegotiatorV2 selectBestDecodeVideoRuleForTransport:transportCopy payload:v7 localVideoRuleCollection:&v21 remoteVideoRuleCollection:?];
LABEL_17:
    LOBYTE(v13) = v21;
    return v13;
  }

  v11 = v10;
  v12 = [ruleCollection getVideoRulesForTransport:1 payload:v7 encodingType:2];
  if (!v12)
  {
    [VCMediaNegotiatorV2 selectBestDecodeVideoRuleForTransport:transportCopy payload:v7 localVideoRuleCollection:&v21 remoteVideoRuleCollection:?];
    goto LABEL_17;
  }

  v13 = [v12 count];
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F5797EF0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          [v18 fPref];
          if (v19 == 1.0)
          {
            [v14 addVideoRules:objc_msgSend(MEMORY[0x1E695DF70] transportType:"arrayWithObject:" payload:v18) encodingType:{transportCopy, v7, 2}];
            LOBYTE(v13) = 1;
            return v13;
          }
        }

        v15 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
        LOBYTE(v13) = 0;
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  return v13;
}

+ (id)featureStringWithMediaBlob:(id)blob
{
  v17 = *MEMORY[0x1E69E9840];
  if ([blob hasCameraU1])
  {
    v15 = NAN;
    v16 = NAN;
    v13 = NAN;
    v14 = NAN;
    v11 = NAN;
    v12 = NAN;
    v9 = NAN;
    v10 = NAN;
    cameraU1 = [blob cameraU1];
    [objc_msgSend(blob "generalInfo")];
    [cameraU1 aspectRatioPortrait:&v15 aspectRatioLandscape:&v13 orientationMismatchAspectRatioLandscape:&v11 orientationMismatchAspectRatioPortrait:&v9 screenSize:?];
    cameraU12 = [blob cameraU1];
    [objc_msgSend(blob "generalInfo")];
    [cameraU12 aspectRatioPortrait:&v15 aspectRatioLandscape:&v13 mismatchFullScreenAspectRatios:&v8 screenSize:?];
    return [VCVideoFeatureListStringHelper deriveAspectRatioFLSWithPortraitRatio:&v8 landscapeRatio:v15 expectedPortraitRatio:v16 expectedLandscapeRatio:v13 expectedFullScreenRatios:v14, v9, v10, v11, v12];
  }

  else
  {
    v7 = +[VCVideoFeatureListStringHelper newEmptyFeatureString];

    return v7;
  }
}

- (BOOL)setupNegotiatedVideoSettingsWithRemoteMediaBlob:(id)blob
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F5797EF0];
  [v5 setIsSupported:0];
  v6 = [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](self->super._localSettings mediaConfigurationForMediaType:{2), "videoRuleCollections"}];
  if (![objc_msgSend(v6 "rules")])
  {
    [VCMediaNegotiatorV2 setupNegotiatedVideoSettingsWithRemoteMediaBlob:];
    return v24;
  }

  if (([blob hasCameraU1] & 1) == 0)
  {
    [VCMediaNegotiatorV2 setupNegotiatedVideoSettingsWithRemoteMediaBlob:];
    return v24;
  }

  v7 = [objc_msgSend(blob "cameraU1")];
  if (![objc_msgSend(v7 "rules")])
  {
    [VCMediaNegotiatorV2 setupNegotiatedVideoSettingsWithRemoteMediaBlob:];
    return v24;
  }

  v8 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:1 aspectRatioFLS:[VCMediaNegotiatorV2 featureStringWithMediaBlob:blob] version:1];
  [v5 setFeatureStrings:v8];

  if (![v5 featureStrings])
  {
    [VCMediaNegotiatorV2 setupNegotiatedVideoSettingsWithRemoteMediaBlob:];
    return v24;
  }

  obj = +[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:](VCMediaNegotiatorV2, "getPreferredVideoPayloadList:localSupportedPayloads:mediaType:", [v7 supportedPayloads], objc_msgSend(v6, "supportedPayloads"), 2);
  if (![obj count])
  {
    [VCMediaNegotiatorV2 setupNegotiatedVideoSettingsWithRemoteMediaBlob:];
    return v24;
  }

  v22 = v6;
  [v5 setRemoteSSRC:{objc_msgSend(objc_msgSend(blob, "cameraU1"), "rtpSSRC")}];
  [v5 setIsRTCPFBEnabled:0];
  [v5 setTilesPerFrame:1];
  [v5 setLtrpEnabled:1];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [objc_msgSend(blob "cameraU1")];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v5 addParameterSet:objc_msgSend(MEMORY[0x1E696AD98] payload:{"numberWithUnsignedInt:", objc_msgSend(*(*(&v31 + 1) + 8 * i), "videoParameterSupport")), objc_msgSend(*(*(&v31 + 1) + 8 * i), "payload")}];
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v11);
  }

  v14 = 1;
  while (2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (!v15)
    {
LABEL_26:
      [VCMediaNegotiatorV2 setupNegotiatedVideoSettingsWithRemoteMediaBlob:];
      return v24;
    }

    v16 = v15;
    v17 = *v27;
LABEL_16:
    v18 = 0;
    while (1)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = v14;
      if (+[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:](VCMediaNegotiatorV2, "selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:", 1, [*(*(&v26 + 1) + 8 * v18) unsignedIntValue], v14, v5, v22, v7))
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }
    }

    ++v14;
    if (v19 < 2)
    {
      continue;
    }

    break;
  }

  v20 = 1;
  [v5 setIsSupported:1];
  return v20;
}

+ (unsigned)capabilitiesWithMomentSettings:(id)settings
{
  capabilitiesMultiway = [settings capabilitiesMultiway];
  videoCodecs = [settings videoCodecs];
  if ((capabilitiesMultiway & 2) != 0)
  {
    v6 = 2 * ([videoCodecs count] != 0);
  }

  else
  {
    v6 = 0;
  }

  if ((capabilitiesMultiway & 3) != 0)
  {
    imageTypes = [settings imageTypes];
    if ([imageTypes count])
    {
      ++v6;
    }

    if ([imageTypes containsObject:&unk_1F5797F08])
    {
      v6 |= 4u;
    }
  }

  return v6;
}

- (BOOL)setupNegotiatedMomentsResultsWithRemoteMediaBlob:(id)blob
{
  if (([blob hasMomentsSettings] & 1) == 0)
  {
    [VCMediaNegotiatorV2 setupNegotiatedMomentsResultsWithRemoteMediaBlob:];
    return v11;
  }

  if (![+[VCDefaults momentsUserPreferenceEnabled] sharedInstance]
  {
    [VCMediaNegotiatorV2 setupNegotiatedMomentsResultsWithRemoteMediaBlob:];
    return v12;
  }

  momentsSettings = [blob momentsSettings];
  videoCodecs = [momentsSettings videoCodecs];
  if ([videoCodecs containsObject:&unk_1F5797F20] && +[VCHardwareSettings supportsHEVCEncoding](VCHardwareSettings, "supportsHEVCEncoding"))
  {
    v7 = 100;
  }

  else
  {
    if (([videoCodecs containsObject:&unk_1F5797F38] & 1) == 0)
    {
      [VCMediaNegotiatorV2 setupNegotiatedMomentsResultsWithRemoteMediaBlob:];
      return v13;
    }

    v7 = 123;
  }

  [(VCMediaNegotiatorResultsMediaRecorder *)self->super._negotiatedMediaRecorderSettings setVideoCodec:v7];
  imageTypes = [momentsSettings imageTypes];
  if ([imageTypes containsObject:&unk_1F5797F08] && +[VCHardwareSettings supportsHEIFEncoding](VCHardwareSettings, "supportsHEIFEncoding"))
  {
    v9 = 1;
  }

  else
  {
    if (([imageTypes containsObject:&unk_1F5797F50] & 1) == 0)
    {
      [VCMediaNegotiatorV2 setupNegotiatedMomentsResultsWithRemoteMediaBlob:];
      return v14;
    }

    v9 = 0;
  }

  [(VCMediaNegotiatorResultsMediaRecorder *)self->super._negotiatedMediaRecorderSettings setImageType:v9];
  [(VCMediaNegotiatorResultsMediaRecorder *)self->super._negotiatedMediaRecorderSettings setCapabilities:[VCMediaNegotiatorV2 capabilitiesWithMomentSettings:momentsSettings]];
  return 1;
}

- (BOOL)mediaBlobHasFLSPerCodec:(id)codec
{
  v15 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = [codec hasCameraU1];
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [objc_msgSend(codec "cameraU1")];
    v4 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) hasEncodeDecodeFeatures])
          {
            LOBYTE(v4) = 1;
            return v4;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
        LOBYTE(v4) = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  return v4;
}

- (BOOL)negotiateStreamGroupConfig:(id)config remoteInviteBlob:(id)blob
{
  selfCopy7 = self;
  v98 = *MEMORY[0x1E69E9840];
  if ([config mediaType] != 1835365473 && objc_msgSend(config, "mediaType") != 1986618469 && objc_msgSend(config, "mediaType") != 1936684398)
  {
    if (objc_opt_class() != selfCopy7)
    {
      if (objc_opt_respondsToSelector())
      {
        v58 = [(VCMediaNegotiatorV2 *)selfCopy7 performSelector:sel_logPrefix];
      }

      else
      {
        v58 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_79;
      }

      v60 = VRTraceErrorLogLevelToCSTR();
      v55 = *MEMORY[0x1E6986650];
      v45 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v45)
      {
        return v45;
      }

      *buf = 136316674;
      v85 = v60;
      v86 = 2080;
      v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
      v88 = 1024;
      v89 = 664;
      v90 = 2112;
      v91 = v58;
      v92 = 2048;
      selfCopy6 = selfCopy7;
      v94 = 2080;
      v95 = FourccToCStr([config mediaType]);
      v96 = 2080;
      v97 = FourccToCStr([config groupID]);
      v51 = " [%s] %s:%d %@(%p) Unsupported media type (%s). Ignoring streamGroup groupID=%s";
LABEL_77:
      v52 = v55;
      v53 = 68;
      goto LABEL_78;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_79;
    }

    v59 = VRTraceErrorLogLevelToCSTR();
    v48 = *MEMORY[0x1E6986650];
    v45 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v45)
    {
      return v45;
    }

    *buf = 136316162;
    v85 = v59;
    v86 = 2080;
    v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
    v88 = 1024;
    v89 = 664;
    v90 = 2080;
    v91 = FourccToCStr([config mediaType]);
    v92 = 2080;
    selfCopy6 = FourccToCStr([config groupID]);
    v51 = " [%s] %s:%d Unsupported media type (%s). Ignoring streamGroup groupID=%s";
LABEL_72:
    v52 = v48;
    v53 = 48;
LABEL_78:
    _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
    goto LABEL_79;
  }

  if (![+[VCHardwareSettings supportedVideoPayloads](VCHardwareSettings "supportedVideoPayloads")] && objc_msgSend(config, "mediaType") == 1986618469)
  {
    [VCMediaNegotiatorV2 negotiateStreamGroupConfig:config remoteInviteBlob:?];
    LOBYTE(v45) = buf[0];
    return v45;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [config streamConfigs];
  v6 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
  if (!v6)
  {
    goto LABEL_59;
  }

  v8 = v6;
  v9 = 0;
  v10 = &selRef_isLatencySensitiveModeEnabled;
  v68 = *v81;
  *&v7 = 136315906;
  v62 = v7;
LABEL_8:
  v11 = 0;
  v12 = v9;
  v64 = v10[456];
  v63 = v9 + v8;
  v67 = v8;
  while (1)
  {
    if (*v81 != v68)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v80 + 1) + 8 * v11);
    if (![objc_msgSend(v13 codecs] && !objc_msgSend(objc_msgSend(v13, "payloads"), "count"))
    {
      if (objc_opt_class() != selfCopy7)
      {
        if (objc_opt_respondsToSelector())
        {
          v46 = [(VCMediaNegotiatorV2 *)selfCopy7 performSelector:v64];
        }

        else
        {
          v46 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_79;
        }

        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x1E6986650];
        v45 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v45)
        {
          return v45;
        }

        v56 = FourccToCStr([config mediaType]);
        v57 = FourccToCStr([config mediaSubtype]);
        *buf = 136316674;
        v85 = v54;
        v86 = 2080;
        v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
        v88 = 1024;
        v89 = 670;
        v90 = 2112;
        v91 = v46;
        v92 = 2048;
        selfCopy6 = selfCopy7;
        v94 = 2080;
        v95 = v56;
        v96 = 2080;
        v97 = v57;
        v51 = " [%s] %s:%d %@(%p) Missing codecs or payloads for mediaType=%s mediaSubtype=%s";
        goto LABEL_77;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
LABEL_79:
        LOBYTE(v45) = 0;
        return v45;
      }

      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      v45 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v45)
      {
        return v45;
      }

      v49 = FourccToCStr([config mediaType]);
      v50 = FourccToCStr([config mediaSubtype]);
      *buf = 136316162;
      v85 = v47;
      v86 = 2080;
      v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
      v88 = 1024;
      v89 = 670;
      v90 = 2080;
      v91 = v49;
      v92 = 2080;
      selfCopy6 = v50;
      v51 = " [%s] %s:%d Missing codecs or payloads for mediaType=%s mediaSubtype=%s";
      goto LABEL_72;
    }

    if (!+[VCHardwareSettings supportsHEVCDecoding])
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      codecs = [v13 codecs];
      v15 = [codecs countByEnumeratingWithState:&v75 objects:v74 count:16];
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = v15;
      v17 = *v76;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v76 != v17)
          {
            objc_enumerationMutation(codecs);
          }

          if ([objc_msgSend(objc_msgSend(config "codecConfigs")] == 102)
          {
            selfCopy7 = self;
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v26 = VRTraceErrorLogLevelToCSTR();
                v27 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v28 = FourccToCStr([config groupID]);
                  *buf = v62;
                  v85 = v26;
                  v86 = 2080;
                  v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
                  v88 = 1024;
                  v89 = 676;
                  v90 = 2080;
                  v91 = v28;
                  v23 = v27;
                  v24 = " [%s] %s:%d HEVC codec not supported, removing all higher quality streams from streamGroup=%s";
                  v25 = 38;
LABEL_32:
                  _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
                }
              }
            }

            else
            {
              v19 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v19 = [(VCMediaNegotiatorV2 *)self performSelector:v64];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v20 = VRTraceErrorLogLevelToCSTR();
                v21 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v22 = FourccToCStr([config groupID]);
                  *buf = 136316418;
                  v85 = v20;
                  v86 = 2080;
                  v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
                  v88 = 1024;
                  v89 = 676;
                  v90 = 2112;
                  v91 = v19;
                  v92 = 2048;
                  selfCopy6 = self;
                  v94 = 2080;
                  v95 = v22;
                  v23 = v21;
                  v24 = " [%s] %s:%d %@(%p) HEVC codec not supported, removing all higher quality streams from streamGroup=%s";
                  v25 = 58;
                  goto LABEL_32;
                }
              }
            }

            v8 = v67;
            if (v12 == -1)
            {
              goto LABEL_34;
            }

LABEL_58:
            [config removeStreamConfigs:{v12, objc_msgSend(objc_msgSend(config, "streamConfigs"), "count") - v12}];
LABEL_59:
            if ([objc_msgSend(config "streamConfigs")])
            {
              [(NSMutableArray *)selfCopy7->super._negotiatedStreamGroups addObject:config];
            }

            LOBYTE(v45) = [objc_msgSend(config "streamConfigs")] != 0;
            return v45;
          }
        }

        v16 = [codecs countByEnumeratingWithState:&v75 objects:v74 count:16];
        selfCopy7 = self;
        v8 = v67;
      }

      while (v16);
LABEL_34:
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      payloads = [v13 payloads];
      v30 = [payloads countByEnumeratingWithState:&v70 objects:v69 count:16];
      if (v30)
      {
        break;
      }
    }

LABEL_55:
    ++v12;
    if (++v11 == v8)
    {
      v8 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
      v9 = v63;
      v10 = &selRef_isLatencySensitiveModeEnabled;
      if (!v8)
      {
        goto LABEL_59;
      }

      goto LABEL_8;
    }
  }

  v31 = v30;
  v32 = *v71;
LABEL_36:
  v33 = 0;
  while (1)
  {
    if (*v71 != v32)
    {
      objc_enumerationMutation(payloads);
    }

    v34 = +[VCMediaNegotiationBlobV2VideoPayload rtpPayloadWithPayload:](VCMediaNegotiationBlobV2VideoPayload, "rtpPayloadWithPayload:", [*(*(&v70 + 1) + 8 * v33) intValue]);
    if (v34 == 100)
    {
      selfCopy7 = self;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v44 = FourccToCStr([config groupID]);
            *buf = v62;
            v85 = v42;
            v86 = 2080;
            v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
            v88 = 1024;
            v89 = 688;
            v90 = 2080;
            v91 = v44;
            v39 = v43;
            v40 = " [%s] %s:%d HEVC payload not supported, removing all higher quality streams from streamGroup=%s";
            v41 = 38;
            goto LABEL_53;
          }
        }
      }

      else
      {
        v35 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v35 = [(VCMediaNegotiatorV2 *)self performSelector:v64];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v38 = FourccToCStr([config groupID]);
            *buf = 136316418;
            v85 = v36;
            v86 = 2080;
            v87 = "[VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:]";
            v88 = 1024;
            v89 = 688;
            v90 = 2112;
            v91 = v35;
            v92 = 2048;
            selfCopy6 = self;
            v94 = 2080;
            v95 = v38;
            v39 = v37;
            v40 = " [%s] %s:%d %@(%p) HEVC payload not supported, removing all higher quality streams from streamGroup=%s";
            v41 = 58;
LABEL_53:
            _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
          }
        }
      }

      v8 = v67;
      if (v12 != -1)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    if (v34 == 128)
    {
      break;
    }

    if (v31 == ++v33)
    {
      v31 = [payloads countByEnumeratingWithState:&v70 objects:v69 count:16];
      selfCopy7 = self;
      if (v31)
      {
        goto LABEL_36;
      }

      goto LABEL_55;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_79;
  }

  VRTraceErrorLogLevelToCSTR();
  v45 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v45)
  {
    [VCMediaNegotiatorV2 negotiateStreamGroupConfig:remoteInviteBlob:];
    goto LABEL_79;
  }

  return v45;
}

- (BOOL)setupStreamGroupsWithRemoteMediaBlob:(id)blob
{
  blobCopy = blob;
  v55 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(blob "streamGroups")])
  {
    v28 = 0;
    LOBYTE(v6) = 0;
LABEL_39:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v43 = v29;
        v44 = 2080;
        v45 = "[VCMediaNegotiatorV2 setupStreamGroupsWithRemoteMediaBlob:]";
        v46 = 1024;
        v47 = 759;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote end does not support system audio settings, update system audio settings", buf, 0x1Cu);
      }
    }

    [(VCMediaNegotiatorV2 *)self setUpNegotiatedSystemAudioResultsWithRemoteMediaBlob:blobCopy];
    if (v6)
    {
LABEL_34:
      if ((v28 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_43:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v43 = v31;
          v44 = 2080;
          v45 = "[VCMediaNegotiatorV2 setupStreamGroupsWithRemoteMediaBlob:]";
          v46 = 1024;
          v47 = 764;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiate for audio settings using microphoneU1", buf, 0x1Cu);
        }
      }

      [(VCMediaNegotiatorV2 *)self setupNegotiatedAudioResultsWithRemoteMediaBlob:blobCopy];
      if ((v28 & 1) == 0)
      {
LABEL_47:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v43 = v33;
            v44 = 2080;
            v45 = "[VCMediaNegotiatorV2 setupStreamGroupsWithRemoteMediaBlob:]";
            v46 = 1024;
            v47 = 769;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiate for video settings using cameraU1", buf, 0x1Cu);
          }
        }

        if (![(VCMediaNegotiatorV2 *)self setupNegotiatedVideoSettingsWithRemoteMediaBlob:blobCopy])
        {
          [VCMediaNegotiatorV2 setupStreamGroupsWithRemoteMediaBlob:];
          goto LABEL_58;
        }
      }
    }

    return 1;
  }

  v40 = [objc_msgSend(-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](self->super._localSettings mediaConfigurationForMediaType:{2), "videoRuleCollections"), "supportedPayloads"}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  streamGroups = [blobCopy streamGroups];
  v6 = [streamGroups countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (!v6)
  {
    v28 = 0;
    goto LABEL_39;
  }

  v39 = 0;
  v38 = 0;
  v8 = 0;
  v9 = *v52;
  *&v7 = 136315906;
  v37 = v7;
  v10 = blobCopy;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v52 != v9)
    {
      objc_enumerationMutation(streamGroups);
    }

    v12 = *(*(&v51 + 1) + 8 * v11);
    v41 = 0;
    v13 = [v12 getStreamGroupConfig:{&v41, v37}];
    if (v41)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 == -2142961648;
    }

    if (v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v43 = v25;
          v44 = 2080;
          v45 = "[VCMediaNegotiatorV2 setupStreamGroupsWithRemoteMediaBlob:]";
          v46 = 1024;
          v47 = 722;
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping unknown stream group", buf, 0x1Cu);
        }

        blobCopy = v10;
      }

      goto LABEL_30;
    }

    if (!v41)
    {
      v36 = [(VCMediaNegotiatorV2 *)v13 setupStreamGroupsWithRemoteMediaBlob:v8];
      goto LABEL_54;
    }

    if (+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 8 || [v41 groupID] != 1650745716 && objc_msgSend(v41, "groupID") != 1718909044)
    {
      break;
    }

LABEL_30:
    if (v6 == ++v11)
    {
      v6 = [streamGroups countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      if ((v39 & 1) == 0)
      {
        v28 = BYTE4(v39);
        LOBYTE(v6) = v38;
        goto LABEL_39;
      }

      v28 = BYTE4(v39);
      if ((v38 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }
  }

  v15 = [(VCMediaNegotiatorV2 *)self negotiateStreamGroupConfig:v41 remoteInviteBlob:blobCopy];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v15)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = FourccToCStr([v41 groupID]);
        *buf = v37;
        v43 = v17;
        v44 = 2080;
        v45 = "[VCMediaNegotiatorV2 setupStreamGroupsWithRemoteMediaBlob:]";
        v46 = 1024;
        v47 = 734;
        v48 = 2080;
        v49 = v19;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setup U1 config for stream group for groupID=%s", buf, 0x26u);
      }
    }

    v20 = v41;
    groupID = [v41 groupID];
    isOneToOneAuthTagEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings isOneToOneAuthTagEnabled];
    v23 = v20;
    blobCopy = v10;
    [VCMediaNegotiatorV2 updateStreamGroupU1Config:v23 forGroupId:groupID withNegotiationBlob:v10 streamGroupBlob:v12 localSupportedVideoPayloads:v40 u1AuthTagEnabled:isOneToOneAuthTagEnabled];
    v24 = [(VCMediaNegotiatorV2 *)self negotiateU1SettingsForStreamGroup:v41];
    if ([v41 groupID] == 1667329381 && v24)
    {
      v8 = 0;
      BYTE4(v39) = 1;
    }

    else if ([v41 groupID] == 1835623282 && v24)
    {
      v8 = 0;
      v38 = 1;
    }

    else
    {
      groupID2 = [v41 groupID];
      LOBYTE(v39) = (groupID2 == 1937339233 && v24) | v39;
      v8 = groupID2 != 1937339233 && v24;
    }

    goto LABEL_30;
  }

  v36 = [(VCMediaNegotiatorV2 *)ErrorLogLevelForModule setupStreamGroupsWithRemoteMediaBlob:v8];
LABEL_54:
  if (v36)
  {
    if (v36 == 1)
    {
      return 1;
    }
  }

  else if (v8)
  {
    return 1;
  }

LABEL_58:
  [(NSMutableArray *)self->super._negotiatedStreamGroups removeAllObjects];
  return 0;
}

- (BOOL)negotiateU1SettingsForStreamGroup:(id)group
{
  v23 = *MEMORY[0x1E69E9840];
  groupID = [group groupID];
  v6 = [objc_opt_class() isU1StreamGroup:groupID];
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    streamGroupConfigs = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings streamGroupConfigs];
    v8 = [(NSSet *)streamGroupConfigs countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(streamGroupConfigs);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if ([v12 groupID] == groupID)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSSet *)streamGroupConfigs countByEnumeratingWithState:&v19 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = 0;
    }

    v13 = -[VCMediaNegotiatorBase negotiatedResultsForGroupID:localU1Config:remoteU1Config:](self, "negotiatedResultsForGroupID:localU1Config:remoteU1Config:", groupID, [v12 u1Config], objc_msgSend(group, "u1Config"));
    v14 = v13;
    v15 = groupID == 1667329381 || groupID == 1835623282;
    if ((!v15 || v13) && (-[NSMutableDictionary setObject:forKeyedSubscript:](self->super._negotiatedU1MediaSettings, "setObject:forKeyedSubscript:", v13, [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID(groupID)]), v14))
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      [VCMediaNegotiatorV2 negotiateU1SettingsForStreamGroup:];
      LOBYTE(v6) = v17;
    }
  }

  return v6;
}

- (void)setupNegotiatedFaceTimeSettingsWithRemoteMediaBlob:(id)blob
{
  -[VCMediaNegotiatorResultsFaceTimeSettings setOneToOneModeSupported:](self->super._negotiatedFaceTimeSettings, "setOneToOneModeSupported:", [blob hasMicrophoneU1]);
  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setSecureMessagingRequired:0];
  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setSIPDisabled:0];
  -[VCMediaNegotiatorResultsFaceTimeSettings setFaceTimeSwitches:](self->super._negotiatedFaceTimeSettings, "setFaceTimeSwitches:", [objc_msgSend(blob "generalInfo")]);
  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setRemoteFaceTimeSwitchesAvailable:[(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings faceTimeSwitches]!= 0];
  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setMediaControlInfoFECFeedbackVersion:0];
  negotiatedFaceTimeSettings = self->super._negotiatedFaceTimeSettings;

  [(VCMediaNegotiatorResultsFaceTimeSettings *)negotiatedFaceTimeSettings setRemoteLinkProbingCapabilityVersion:0];
}

+ (id)streamGroupIDsWithMediaBlob:(id)blob
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA8] set];
  if (!v4)
  {
    +[VCMediaNegotiatorV2 streamGroupIDsWithMediaBlob:];
LABEL_17:
    v6 = v14;
    goto LABEL_14;
  }

  v5 = [VCMediaNegotiatorV2 newUnserializedMediaBlob:blob];
  if (!v5)
  {
    +[VCMediaNegotiatorV2 streamGroupIDsWithMediaBlob:];
    goto LABEL_17;
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  streamGroups = [v5 streamGroups];
  v8 = [streamGroups countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(streamGroups);
        }

        v12 = +[VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupIDFromStreamGroup:", [*(*(&v16 + 1) + 8 * i) streamGroup]);
        [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12)}];
      }

      v9 = [streamGroups countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v9);
  }

  if ([v6 hasMicrophoneU1])
  {
    [v4 addObject:&unk_1F5797F68];
  }

  if ([v6 hasCameraU1])
  {
    [v4 addObject:&unk_1F5797F80];
  }

LABEL_14:

  return v4;
}

+ (BOOL)updateStreamGroupU1Config:(id)config forGroupId:(unsigned int)id withNegotiationBlob:(id)blob streamGroupBlob:(id)groupBlob localSupportedVideoPayloads:(id)payloads u1AuthTagEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = v14;
      v21 = 2080;
      v22 = "+[VCMediaNegotiatorV2 updateStreamGroupU1Config:forGroupId:withNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:]";
      v23 = 1024;
      v24 = 858;
      v25 = 2080;
      v26 = FourccToCStr(id);
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update stream group U1 config for groupID=%s", &v19, 0x26u);
    }
  }

  u1Config = [config u1Config];
  result = 0;
  if (id > 1835623281)
  {
    switch(id)
    {
      case 0x73797361u:
        [u1Config setAllowAudioRecording:{objc_msgSend(objc_msgSend(blob, "codecSupport"), "allowAudioRecording")}];
        [u1Config setAudioPayloads:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", &unk_1F579C8B8)}];
        v18 = &unk_1F579C8D0;
        break;
      case 0x73637265u:
        return [VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:config forNegotiationBlob:blob streamGroupBlob:groupBlob localSupportedVideoPayloads:payloads u1AuthTagEnabled:enabledCopy];
      case 0x6D696372u:
        [u1Config setAllowAudioRecording:{objc_msgSend(objc_msgSend(blob, "codecSupport"), "allowAudioRecording")}];
        [u1Config setAudioPayloads:{objc_msgSend(objc_msgSend(blob, "microphoneU1"), "audioPayloads")}];
        v18 = &unk_1F579C8A0;
        break;
      default:
        return result;
    }

    [u1Config setPayloadPreference:v18];
    [u1Config setSupportedCipherSuites:{+[VCMediaNegotiationBlobV2SettingsU1 mediaStreamCipherSuitesFromNegotiationCipherSuites:](VCMediaNegotiationBlobV2SettingsU1, "mediaStreamCipherSuitesFromNegotiationCipherSuites:", +[VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:u1AuthTagEnabled:](VCMediaNegotiationBlobV2, "pruneDisabledCipherSuites:u1AuthTagEnabled:", objc_msgSend(objc_msgSend(blob, "microphoneU1"), "cipherSuites"), enabledCopy))}];
    return 1;
  }

  switch(id)
  {
    case 0x62646174u:
      return [VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:config forNegotiationBlob:blob streamGroupBlob:groupBlob localSupportedVideoPayloads:payloads u1AuthTagEnabled:enabledCopy];
    case 0x63616D65u:
      return [VCMediaNegotiatorV2 updateCameraU1Config:u1Config forNegotiationBlob:blob localSupportedVideoPayloads:payloads u1AuthTagEnabled:enabledCopy];
    case 0x66747874u:
      return [VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:config forNegotiationBlob:blob streamGroupBlob:groupBlob localSupportedVideoPayloads:payloads u1AuthTagEnabled:enabledCopy];
  }

  return result;
}

+ (BOOL)updateCameraU1Config:(id)config forNegotiationBlob:(id)blob localSupportedVideoPayloads:(id)payloads u1AuthTagEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  blobCopy = blob;
  configCopy = config;
  v57 = *MEMORY[0x1E69E9840];
  [config setVideoRuleCollections:{objc_msgSend(objc_msgSend(blob, "cameraU1"), "videoRuleCollections")}];
  if (![objc_msgSend(objc_msgSend(configCopy "videoRuleCollections")])
  {
    [(VCMediaNegotiatorV2 *)&v44 updateCameraU1Config:&v46 + 7 forNegotiationBlob:v10 localSupportedVideoPayloads:v11 u1AuthTagEnabled:v12, v13, v14, v35, *(&v35 + 1), v38, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52];
LABEL_33:
    v20 = v44;
    v33 = HIBYTE(v46);

    goto LABEL_27;
  }

  [configCopy setPayloadPreference:{+[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:](VCMediaNegotiatorV2, "getPreferredVideoPayloadList:localSupportedPayloads:mediaType:", objc_msgSend(objc_msgSend(configCopy, "videoRuleCollections"), "supportedPayloads"), payloads, 2)}];
  if (![objc_msgSend(configCopy "payloadPreference")])
  {
    [VCMediaNegotiatorV2 updateCameraU1Config:&v45 forNegotiationBlob:&v46 + 7 localSupportedVideoPayloads:? u1AuthTagEnabled:?];
    goto LABEL_33;
  }

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v43)
  {
    [VCMediaNegotiatorV2 updateCameraU1Config:&v45 forNegotiationBlob:&v46 + 7 localSupportedVideoPayloads:? u1AuthTagEnabled:?];
    goto LABEL_33;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v15)
  {
    [(VCMediaNegotiatorV2 *)v43 updateCameraU1Config:&v45 forNegotiationBlob:&v46 + 7 localSupportedVideoPayloads:v16 u1AuthTagEnabled:v17, v18, v19, v35, v38, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52];
    goto LABEL_33;
  }

  v20 = v15;
  v41 = enabledCopy;
  v21 = [VCMediaNegotiatorV2 featureStringWithMediaBlob:blobCopy];
  v22 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:1 aspectRatioFLS:v21 version:1];
  [configCopy setVideoFeatureStrings:v22];

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = [objc_msgSend(blobCopy "cameraU1")];
  v25 = [v24 countByEnumeratingWithState:&v53 objects:&v47 count:16];
  if (v25)
  {
    v26 = v25;
    v36 = v21;
    v37 = blobCopy;
    v39 = configCopy;
    v27 = 0;
    v28 = *v54;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v53 + 1) + 8 * i);
        [v43 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v30, "payload", v36))}];
        [v20 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v30, "parameterSet"))}];
        if ([v30 hasEncodeDecodeFeatures])
        {
          [v30 encodeDecodeFeatures];
          [v23 setObject:VCPCreateDecompressedFLS() forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v30, "payload"))}];
          v27 = 1;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v53 objects:&v47 count:16];
    }

    while (v26);
    blobCopy = v37;
    configCopy = v39;
    if (v27)
    {
      v31 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithVCP:v23 aspectRatioFLS:v36];
      [v39 setVideoFeatureStringsFixedPosition:v31];
    }
  }

  if (![configCopy videoFeatureStrings] && !objc_msgSend(configCopy, "videoFeatureStringsFixedPosition"))
  {
    [(VCMediaNegotiatorV2 *)v20 updateCameraU1Config:v43 forNegotiationBlob:&v44 localSupportedVideoPayloads:&v45 u1AuthTagEnabled:&v46 + 7];
    goto LABEL_33;
  }

  [configCopy setSupportedCipherSuites:{+[VCMediaNegotiationBlobV2SettingsU1 mediaStreamCipherSuitesFromNegotiationCipherSuites:](VCMediaNegotiationBlobV2SettingsU1, "mediaStreamCipherSuitesFromNegotiationCipherSuites:", +[VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:u1AuthTagEnabled:](VCMediaNegotiationBlobV2, "pruneDisabledCipherSuites:u1AuthTagEnabled:", objc_msgSend(objc_msgSend(blobCopy, "cameraU1"), "cipherSuites"), v41))}];
  [configCopy setVideoPayloads:v43];
  [configCopy setVideoParameterSet:v20];
  cameraU1 = [blobCopy cameraU1];
  if ([cameraU1 hasFrontCameraFullScreenCaptureSupported])
  {
    [configCopy setFullScreenFrontCameraCaptureSupported:{objc_msgSend(cameraU1, "frontCameraFullScreenCaptureSupported") != 0}];
  }

  if ([cameraU1 hasBackCameraFullScreenCaptureSupported])
  {
    [configCopy setFullScreenBackCameraCaptureSupported:{objc_msgSend(cameraU1, "backCameraFullScreenCaptureSupported") != 0}];
  }

  if ([cameraU1 hasDeviceOrientation])
  {
    [configCopy setDeviceInitialOrientation:{+[VCMediaNegotiationBlobV2CameraSettingsU1 deviceOrientationFromNegotiationDeviceOrientation:](VCMediaNegotiationBlobV2CameraSettingsU1, "deviceOrientationFromNegotiationDeviceOrientation:", objc_msgSend(cameraU1, "deviceOrientation"))}];
  }

  if ([cameraU1 hasVideoFrameMetadataSupportedVersion])
  {
    [configCopy setVideoFrameMetadataSupportedVersion:{objc_msgSend(cameraU1, "videoFrameMetadataSupportedVersion")}];
  }

  v33 = 1;

LABEL_27:
  return v33;
}

+ (CGSize)resolutionForStreamGroupConfig:(id)config
{
  v4 = VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID([config groupID]);
  switch(v4)
  {
    case 6:
      v7 = 480.0;
      v8 = 480.0;
      break;
    case 5:
      v9 = VCFeatureFlagManager_PersonaV2Enabled();
      v8 = 1024.0;
      if (!v9)
      {
        v8 = 768.0;
      }

      v7 = 256.0;
      if (v9)
      {
        v7 = 1536.0;
      }

      break;
    case 3:
      u1Config = [config u1Config];
      [u1Config setScreenPixelCount:5603328];
      screenPixelCount = [u1Config screenPixelCount];

      [VideoUtil computeResolutionForMainDisplayWithMaxScreenPixelCount:screenPixelCount];
      break;
    default:
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v7 = 0.0;
      v8 = 0.0;
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        v7 = 0.0;
        v8 = 0.0;
        if (v11)
        {
          +[VCMediaNegotiatorV2 resolutionForStreamGroupConfig:];
          v7 = 0.0;
          v8 = 0.0;
        }
      }

      break;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

+ (BOOL)addV1FeatureListStringsToStreamGroupConfig:(id)config mediaType:(unsigned __int8)type
{
  typeCopy = type;
  u1Config = [config u1Config];
  if (![VCMediaNegotiatorBase v1FeatureListStringsSupportedForMediaType:typeCopy])
  {
    return 1;
  }

  v6 = 1;
  v7 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:[VCMediaNegotiatorBase featureListStringTypeForMediaType:typeCopy] aspectRatioFLS:0 version:1];
  [u1Config setVideoFeatureStrings:v7];

  if (![u1Config videoFeatureStrings])
  {
    +[VCMediaNegotiatorV2 addV1FeatureListStringsToStreamGroupConfig:mediaType:];
    return v9;
  }

  return v6;
}

+ (BOOL)addV2FeatureListStringsToStreamGroupConfig:(id)config fromStreamGroupBlob:(id)blob
{
  v22 = *MEMORY[0x1E69E9840];
  u1Config = [config u1Config];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [objc_msgSend(blob "settingsU1")];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [v11 encodeDecodeFeatures];
        v12 = VCPCreateDecompressedFLS();
        [v5 setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v11, "rtpPayload"))}];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v6 count] && (objc_msgSend(v15, "setVideoFeatureStringsFixedPosition:", v5), !objc_msgSend(v15, "videoFeatureStringsFixedPosition")))
  {
    [VCMediaNegotiatorV2 addV2FeatureListStringsToStreamGroupConfig:v5 fromStreamGroupBlob:?];
    return v16;
  }

  else
  {

    return 1;
  }
}

+ (BOOL)addFeatureListStringsToStreamGroupConfig:(id)config fromStreamGroupBlob:(id)blob
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID([config groupID]);
  if ([VCMediaNegotiatorBase featureListStringsRequiredForMediaType:v7])
  {
    if (([self addV1FeatureListStringsToStreamGroupConfig:config mediaType:v7] & 1) == 0)
    {
      +[VCMediaNegotiatorV2 addFeatureListStringsToStreamGroupConfig:fromStreamGroupBlob:];
      return v11;
    }

    if (([self addV2FeatureListStringsToStreamGroupConfig:config fromStreamGroupBlob:blob] & 1) == 0)
    {
      +[VCMediaNegotiatorV2 addFeatureListStringsToStreamGroupConfig:fromStreamGroupBlob:];
      return v11;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "+[VCMediaNegotiatorV2 addFeatureListStringsToStreamGroupConfig:fromStreamGroupBlob:]";
      v15 = 1024;
      v16 = 1031;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping FLS string add for mediaType=%hhu because it isn't needed", &v11, 0x22u);
    }
  }

  return 1;
}

+ (float)frameRateForMediaType:(unsigned __int8)type
{
  v3 = 30.0;
  if ((type - 5) >= 2)
  {
    if (type == 3)
    {
      return +[VCHardwareSettings maxFrameRateSupportedScreenShare];
    }

    else
    {
      v3 = 0.0;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCMediaNegotiatorV2 frameRateForMediaType:];
        }
      }
    }
  }

  return v3;
}

+ (id)u1RemoteSupportedCipherSuitesForBlob:(id)blob mediaType:(unsigned __int8)type u1AuthTagEnabled:(BOOL)enabled
{
  if (type <= 6u)
  {
    enabledCopy = enabled;
    if (((1 << type) & 0x6C) != 0)
    {
      cameraU1 = [blob cameraU1];
LABEL_6:
      v7 = +[VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:u1AuthTagEnabled:](VCMediaNegotiationBlobV2, "pruneDisabledCipherSuites:u1AuthTagEnabled:", [cameraU1 cipherSuites], enabledCopy);

      return [VCMediaNegotiationBlobV2SettingsU1 mediaStreamCipherSuitesFromNegotiationCipherSuites:v7];
    }

    if (((1 << type) & 0x12) != 0)
    {
      cameraU1 = [blob microphoneU1];
      goto LABEL_6;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VCMediaNegotiatorV2 u1RemoteSupportedCipherSuitesForBlob:mediaType:u1AuthTagEnabled:];
    }
  }

  return 0;
}

+ (BOOL)updateVideoU1ConfigWithStreamGroupConfig:(id)config forNegotiationBlob:(id)blob streamGroupBlob:(id)groupBlob localSupportedVideoPayloads:(id)payloads u1AuthTagEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configCopy = config;
  v95 = *MEMORY[0x1E69E9840];
  v13 = VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID([config groupID]);
  u1Config = [configCopy u1Config];
  [self resolutionForStreamGroupConfig:configCopy];
  v16 = v15;
  v18 = v17;
  [self frameRateForMediaType:v13];
  if (v16)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:];
      }
    }

LABEL_61:
    v44 = 0;
    v43 = 0;
LABEL_49:
    v45 = 0;
    goto LABEL_50;
  }

  v21 = v19;
  groupBlobCopy = groupBlob;
  blobCopy = blob;
  v62 = enabledCopy;
  v22 = objc_alloc_init(VCVideoRuleCollections);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [configCopy streamConfigs];
  v70 = configCopy;
  v67 = [obj countByEnumeratingWithState:&v91 objects:v90 count:16];
  HIDWORD(v64) = v13;
  selfCopy = self;
  if (v67)
  {
    v68 = *v92;
    *&v59 = payloads;
    *(&v59 + 1) = u1Config;
    do
    {
      v23 = 0;
      do
      {
        if (*v92 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v23;
        v24 = *(*(&v91 + 1) + 8 * v23);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        codecs = [v24 codecs];
        v26 = [codecs countByEnumeratingWithState:&v86 objects:v85 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v87;
          while (2)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v87 != v28)
              {
                objc_enumerationMutation(codecs);
              }

              v30 = [objc_msgSend(objc_msgSend(configCopy "codecConfigs")];
              if (v30 == 128)
              {
                [VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:buf forNegotiationBlob:&v72 + 7 streamGroupBlob:? localSupportedVideoPayloads:? u1AuthTagEnabled:?];
                goto LABEL_33;
              }

              v31 = v30;
              v32 = [VCVideoRule alloc];
              LODWORD(v33) = v21;
              v34 = [(VCVideoRule *)v32 initWithFrameWidth:v16 frameHeight:v18 frameRate:v31 payload:v33];
              v35 = [MEMORY[0x1E695DF70] arrayWithObject:v34];
              [(VCVideoRuleCollections *)v22 addVideoRules:v35 transportType:1 payload:v31 encodingType:1];
              v36 = v35;
              configCopy = v70;
              [(VCVideoRuleCollections *)v22 addVideoRules:v36 transportType:1 payload:v31 encodingType:2];
            }

            v27 = [codecs countByEnumeratingWithState:&v86 objects:v85 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v23 = v69 + 1;
      }

      while (v69 + 1 != v67);
      v13 = HIDWORD(v64);
      u1Config = *(&v59 + 1);
      payloads = v59;
      self = selfCopy;
      v67 = [obj countByEnumeratingWithState:&v91 objects:v90 count:16];
    }

    while (v67);
  }

  if (v13 == 3 && +[VCHardwareSettings supportsHEVCEncoding])
  {
    v37 = [VCVideoRule alloc];
    *&v38 = +[VCHardwareSettings maxFrameRateSupportedScreenShare];
    v39 = [(VCVideoRule *)v37 initWithFrameWidth:v16 frameHeight:v18 frameRate:100 payload:v38];
    -[VCVideoRuleCollections addVideoRules:transportType:payload:encodingType:](v22, "addVideoRules:transportType:payload:encodingType:", [MEMORY[0x1E695DF70] arrayWithObject:v39], 1, 100, 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v40;
        v79 = 2080;
        v80 = "+[VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:]";
        v81 = 1024;
        v82 = 1114;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding HEVC decode video rule for kTransportTypeWifi explicitly for screen stream group", buf, 0x1Cu);
      }
    }
  }

  [u1Config setVideoRuleCollections:v22];

  if (![objc_msgSend(objc_msgSend(u1Config "videoRuleCollections")])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v57;
        v79 = 2080;
        v80 = "+[VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:]";
        v81 = 1024;
        v82 = 1119;
        v83 = 1024;
        v84 = v13;
        _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating settings, as the local device does not support mediaType=%hhu", buf, 0x22u);
      }
    }

    v44 = 0;
    v43 = 0;
LABEL_45:
    v45 = 1;
    goto LABEL_50;
  }

  if (([self addFeatureListStringsToStreamGroupConfig:v70 fromStreamGroupBlob:groupBlobCopy] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:];
      }
    }

    goto LABEL_61;
  }

  [u1Config setPayloadPreference:{+[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:](VCMediaNegotiatorV2, "getPreferredVideoPayloadList:localSupportedPayloads:mediaType:", objc_msgSend(objc_msgSend(u1Config, "videoRuleCollections"), "supportedPayloads"), payloads, v13)}];
  if ([objc_msgSend(u1Config "payloadPreference")])
  {
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v42)
    {
      v43 = v42;
      if (v13 == 6)
      {
        v44 = 0;
LABEL_35:
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v50 = [objc_msgSend(u1Config "videoRuleCollections")];
        v51 = [v50 countByEnumeratingWithState:&v74 objects:v73 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v75;
          while (2)
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v75 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v74 + 1) + 8 * j);
              if ([v55 unsignedIntValue] == 128)
              {

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    +[VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:];
                  }
                }

                goto LABEL_49;
              }

              [v43 addObject:v55];
              [v44 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", VCVideoParamaterSets_DefaultSupportedSets(objc_msgSend(v55, "unsignedIntValue")))}];
            }

            v52 = [v50 countByEnumeratingWithState:&v74 objects:v73 count:16];
            if (v52)
            {
              continue;
            }

            break;
          }
        }

        [u1Config setSupportedCipherSuites:{objc_msgSend(selfCopy, "u1RemoteSupportedCipherSuitesForBlob:mediaType:u1AuthTagEnabled:", blobCopy, HIDWORD(v64), v62)}];
        [u1Config setVideoPayloads:v43];
        if ([v44 count])
        {
          [u1Config setVideoParameterSet:v44];
        }

        goto LABEL_45;
      }

      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v44)
      {
        goto LABEL_35;
      }

      [(VCMediaNegotiatorV2 *)v43 updateVideoU1ConfigWithStreamGroupConfig:buf forNegotiationBlob:&v72 + 7 streamGroupBlob:v46 localSupportedVideoPayloads:v47 u1AuthTagEnabled:v48, v49, v59, blobCopy, v61, selfCopy, v64, groupBlobCopy, obj, v67, v68, v69, v70, v71, v72];
    }

    else
    {
      [VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:buf forNegotiationBlob:&v72 + 7 streamGroupBlob:? localSupportedVideoPayloads:? u1AuthTagEnabled:?];
    }
  }

  else
  {
    [VCMediaNegotiatorV2 updateVideoU1ConfigWithStreamGroupConfig:buf forNegotiationBlob:&v72 + 7 streamGroupBlob:? localSupportedVideoPayloads:? u1AuthTagEnabled:?];
  }

LABEL_33:
  v44 = v71;
  v43 = *buf;
  v45 = HIBYTE(v72);
LABEL_50:

  return v45;
}

- (id)negotiationData
{
  v2 = objc_alloc_init(VCMediaNegotiationBlobV2);
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_19;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_19;
    }

LABEL_20:
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
LABEL_19:
    v3 = 0;
    goto LABEL_16;
  }

  if (![OUTLINED_FUNCTION_27() appendGeneralInfoToMediaBlob:?] || !objc_msgSend(OUTLINED_FUNCTION_27(), "appendBandwidthSettingsToMediaBlob:") || !objc_msgSend(OUTLINED_FUNCTION_27(), "appendCodecFeaturesToMediaBlob:") || !objc_msgSend(OUTLINED_FUNCTION_27(), "appendMicrophoneOneToOneSettingsToMediaBlob:") || !objc_msgSend(OUTLINED_FUNCTION_27(), "appendCameraOneToOneSettingsToMediaBlob:") || !objc_msgSend(OUTLINED_FUNCTION_27(), "appendMomentsSettingsToMediaBlob:") || !objc_msgSend(OUTLINED_FUNCTION_27(), "appendStreamGroupsToMediaBlob:"))
  {
    goto LABEL_19;
  }

  if (VCDefaults_GetBoolValueForKey(@"mediaNegotiatorV2CompressionEnabled", 0))
  {
    v3 = [VCMediaNegotiatorV2 newCompressedBlob:[(VCMediaNegotiationBlobV2 *)v2 data]];
    if (!v3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_19;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v3 = [-[VCMediaNegotiationBlobV2 data](v2 "data")];
  }

  [(VCMediaNegotiationBlobV2 *)v2 printWithTitle:@"Created invite media blob (version 2)" logFile:0];
LABEL_16:

  return v3;
}

+ (void)newCompressedBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)newDecompressedBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)newUnserializedMediaBlob:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

+ (void)newUnserializedMediaBlob:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)newUnserializedMediaBlob:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)processRemoteNegotiationData:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_18();
}

- (void)processRemoteNegotiationData:(uint64_t)a1 .cold.5(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_18();
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate system audio configuration", v2, v3, v4, v5, v6);
    }
  }
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)appendGeneralInfoToMediaBlob:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 257;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate media blob (v2) general info", v2);
}

- (void)appendBandwidthSettingsToMediaBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate media blob (v2) banwidth settings", v2, v3, v4, v5, v6);
    }
  }
}

- (void)appendCodecFeaturesToMediaBlob:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)appendCodecFeaturesToMediaBlob:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate media blob (v2) codec features", v2, v3, v4, v5, v6);
    }
  }
}

- (void)appendCameraOneToOneSettingsToMediaBlob:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

- (void)appendStreamGroupsToMediaBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupNegotiatedResultsWithRemoteMediaBlob:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 432;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrive the bandwdith settings", v2);
}

- (void)selectBestDecodeVideoRuleForTransport:(_BYTE *)a3 payload:localVideoRuleCollection:remoteVideoRuleCollection:.cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v4, v5, v6, v7, v8, 0x2Eu);
    }
  }

  *a3 = 0;
}

- (void)selectBestDecodeVideoRuleForTransport:(_BYTE *)a3 payload:localVideoRuleCollection:remoteVideoRuleCollection:.cold.2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v4, v5, v6, v7, v8, 0x2Eu);
    }
  }

  *a3 = 0;
}

- (void)setupNegotiatedVideoSettingsWithRemoteMediaBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14();
}

- (void)setupNegotiatedVideoSettingsWithRemoteMediaBlob:.cold.2()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupNegotiatedVideoSettingsWithRemoteMediaBlob:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupNegotiatedVideoSettingsWithRemoteMediaBlob:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupNegotiatedVideoSettingsWithRemoteMediaBlob:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14();
}

- (void)setupNegotiatedVideoSettingsWithRemoteMediaBlob:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14();
}

- (void)setupNegotiatedMomentsResultsWithRemoteMediaBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14();
}

- (void)setupNegotiatedMomentsResultsWithRemoteMediaBlob:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_14();
}

- (void)setupNegotiatedMomentsResultsWithRemoteMediaBlob:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupNegotiatedMomentsResultsWithRemoteMediaBlob:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)negotiateStreamGroupConfig:remoteInviteBlob:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 686;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid payload in streamconfig", v2);
}

- (void)negotiateStreamGroupConfig:(void *)a1 remoteInviteBlob:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      FourccToCStr([a1 groupID]);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_16();
      _os_log_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_14();
}

- (uint64_t)setupStreamGroupsWithRemoteMediaBlob:(char)a3 .cold.1(int a1, uint64_t a2, char a3)
{
  if (a1 < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = OUTLINED_FUNCTION_28();
  if (result)
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
    if (a3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (uint64_t)setupStreamGroupsWithRemoteMediaBlob:(char)a3 .cold.2(uint64_t a1, uint64_t a2, char a3)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = OUTLINED_FUNCTION_40();
  if (result)
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_24();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    if (a3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)setupStreamGroupsWithRemoteMediaBlob:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to generated negotiated video results", v2, v3, v4, v5, v6);
    }
  }
}

- (void)negotiateU1SettingsForStreamGroup:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(v0);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)streamGroupIDsWithMediaBlob:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)streamGroupIDsWithMediaBlob:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)updateCameraU1Config:(void *)a3 forNegotiationBlob:(void *)a4 localSupportedVideoPayloads:(_BYTE *)a5 u1AuthTagEnabled:.cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = v10;
      OUTLINED_FUNCTION_0();
      v15 = 922;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v11, v12, " [%s] %s:%d Video features are not successfully updated", &v13);
    }
  }

  *a5 = 0;
  *a4 = a2;
  *a3 = a1;
}

+ (void)updateCameraU1Config:(uint64_t)a3 forNegotiationBlob:(uint64_t)a4 localSupportedVideoPayloads:(uint64_t)a5 u1AuthTagEnabled:(uint64_t)a6 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37();
  a20 = v24;
  a21 = v25;
  OUTLINED_FUNCTION_38();
  a13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = v26;
      OUTLINED_FUNCTION_0();
      a11 = 897;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v27, v28, " [%s] %s:%d Failed to allocate videoParameterSet array", &a9);
    }
  }

  *v22 = 0;
  *v21 = v23;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

+ (void)updateCameraU1Config:(uint64_t)a3 forNegotiationBlob:(uint64_t)a4 localSupportedVideoPayloads:(uint64_t)a5 u1AuthTagEnabled:(uint64_t)a6 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_15();
  a14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      a12 = 889;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating video settings, as the remote device does not support video", &a9, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_36();
}

+ (void)resolutionForStreamGroupConfig:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)addV1FeatureListStringsToStreamGroupConfig:mediaType:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)addV2FeatureListStringsToStreamGroupConfig:(void *)a1 fromStreamGroupBlob:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)addFeatureListStringsToStreamGroupConfig:fromStreamGroupBlob:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)addFeatureListStringsToStreamGroupConfig:fromStreamGroupBlob:.cold.2()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)frameRateForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)u1RemoteSupportedCipherSuitesForBlob:mediaType:u1AuthTagEnabled:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)updateVideoU1ConfigWithStreamGroupConfig:(uint64_t)a3 forNegotiationBlob:(uint64_t)a4 streamGroupBlob:(uint64_t)a5 localSupportedVideoPayloads:(uint64_t)a6 u1AuthTagEnabled:(uint64_t)a7 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37();
  a20 = v24;
  a21 = v25;
  OUTLINED_FUNCTION_38();
  a13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = v26;
      OUTLINED_FUNCTION_0();
      a11 = 1131;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v27, v28, " [%s] %s:%d Failed to allocate videoParameterSet array", &a9);
    }
  }

  *v22 = 0;
  *v21 = v23;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

+ (void)updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 1134;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid payload in streamconfig", v2);
}

+ (void)updateVideoU1ConfigWithStreamGroupConfig:forNegotiationBlob:streamGroupBlob:localSupportedVideoPayloads:u1AuthTagEnabled:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end
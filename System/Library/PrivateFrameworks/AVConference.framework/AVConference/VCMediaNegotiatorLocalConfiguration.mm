@interface VCMediaNegotiatorLocalConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualBandwidthConfigurations:(id)configurations;
- (BOOL)isEqualFaceTimeSettings:(id)settings;
- (BOOL)isEqualMediaRecorderImageTypes:(id)types;
- (BOOL)isEqualMediaRecorderVideoCodecs:(id)codecs;
- (BOOL)isEqualMultiwayAudioStreamSet:(id)set;
- (BOOL)isEqualMultiwayVideoStreamSet:(id)set;
- (BOOL)isEqualStreamGroupConfigs:(id)configs;
- (BOOL)setupBandwidthConfigurationsWithArbiter:(id)arbiter;
- (BOOL)setupBandwidthExtensionConfiguration:(id)configuration;
- (CGSize)aspectRatioLandscape;
- (CGSize)aspectRatioPortrait;
- (CGSize)orientationMismatchAspectRatioLandscape;
- (CGSize)orientationMismatchFullScreenAspectRatioLandscape;
- (CGSize)screenSize;
- (VCMediaNegotiatorLocalConfiguration)init;
- (VCMediaNegotiatorLocalConfiguration)initWithBitrateArbiter:(id)arbiter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mediaConfigurationForMediaType:(unsigned __int8)type;
- (void)dealloc;
- (void)init;
- (void)setMediaConfiguration:(id)configuration forMediaType:(unsigned __int8)type;
@end

@implementation VCMediaNegotiatorLocalConfiguration

- (VCMediaNegotiatorLocalConfiguration)init
{
  v36 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCMediaNegotiatorLocalConfiguration;
  v2 = [(VCMediaNegotiatorLocalConfiguration *)&v19 init];
  if (!v2)
  {
    return v2;
  }

  v3 = micro();
  *(v2 + 8) = MicroToNTP(v3);
  *(v2 + 32) = 1;
  v2[133] = 1;
  *(v2 + 74) = 0;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  *(v2 + 9) = v4;
  if (!v4)
  {
    [VCMediaNegotiatorLocalConfiguration init];
LABEL_22:

    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  *(v2 + 10) = v5;
  if (!v5)
  {
    [VCMediaNegotiatorLocalConfiguration init];
    goto LABEL_22;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  *(v2 + 5) = v6;
  if (!v6)
  {
    [VCMediaNegotiatorLocalConfiguration init];
    goto LABEL_22;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  *(v2 + 17) = v7;
  if (!v7)
  {
    [VCMediaNegotiatorLocalConfiguration init];
    goto LABEL_22;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  *(v2 + 18) = v8;
  if (!v8)
  {
    [VCMediaNegotiatorLocalConfiguration init];
    goto LABEL_22;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  *(v2 + 20) = v9;
  if (!v9)
  {
    [VCMediaNegotiatorLocalConfiguration init];
    goto LABEL_22;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v2 + 1) = v10;
  if (!v10)
  {
    [VCMediaNegotiatorLocalConfiguration init];
    goto LABEL_22;
  }

  v2[152] = 0;
  *(v2 + 21) = +[VCHardwareSettings screenWidth];
  *(v2 + 22) = +[VCHardwareSettings screenHeight];
  [VCVideoFeatureListStringHelper aspectRatioPortrait:v2 + 200 landscape:v2 + 184 isMismatchedOrientation:0];
  [VCVideoFeatureListStringHelper aspectRatioPortrait:0 landscape:v2 + 216 isMismatchedOrientation:1];
  if (+[VCHardwareSettings supportsFullBleedReceive])
  {
    *(v2 + 232) = *(v2 + 184);
  }

  *(v2 + 62) = 1;
  *(v2 + 66) = [objc_msgSend(+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v2 + 29);
      v14 = *(v2 + 30);
      v15 = v2[252];
      v16 = v2[253];
      v17 = *(v2 + 66);
      *buf = 136316930;
      v21 = v11;
      v22 = 2080;
      v23 = "[VCMediaNegotiatorLocalConfiguration init]";
      v24 = 1024;
      v25 = 166;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = v16;
      v34 = 1024;
      v35 = v17;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [RDAR] _orientationMismatchFullScreenAspectRatioLandscape=%fx%f _frontCameraFullScreenSupported=%d _backCameraFullScreenSupported=%d _deviceInitialOrientation=%d", buf, 0x42u);
    }
  }

  return v2;
}

- (VCMediaNegotiatorLocalConfiguration)initWithBitrateArbiter:(id)arbiter
{
  v4 = [(VCMediaNegotiatorLocalConfiguration *)self init];
  v5 = v4;
  if (v4 && ![(VCMediaNegotiatorLocalConfiguration *)v4 setupBandwidthConfigurationsWithArbiter:arbiter])
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorLocalConfiguration;
  [(VCMediaNegotiatorLocalConfiguration *)&v3 dealloc];
}

- (void)setMediaConfiguration:(id)configuration forMediaType:(unsigned __int8)type
{
  u1StreamConfigurations = self->_u1StreamConfigurations;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:type];

  [(NSMutableDictionary *)u1StreamConfigurations setObject:configuration forKeyedSubscript:v6];
}

- (id)mediaConfigurationForMediaType:(unsigned __int8)type
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_u1StreamConfigurations, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:type]);

  return v3;
}

- (BOOL)setupBandwidthConfigurationsWithArbiter:(id)arbiter
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [&unk_1F579CF48 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v17)
  {
    v18 = *v27;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(&unk_1F579CF48);
        }

        v19 = v5;
        intValue = [*(*(&v26 + 1) + 8 * v5) intValue];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = [&unk_1F579CF60 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          while (2)
          {
            v10 = 0;
            do
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(&unk_1F579CF60);
              }

              intValue2 = [*(*(&v21 + 1) + 8 * v10) intValue];
              v12 = -[VCMediaNegotiatorBandwidthConfiguration initWithArbiterMode:connectionType:maxBandwidth:]([VCMediaNegotiatorBandwidthConfiguration alloc], "initWithArbiterMode:connectionType:maxBandwidth:", intValue2, intValue, [arbiter maxAllowedBitrateForConnectionType:intValue arbiterMode:intValue2]);
              if (!v12)
              {
                [VCMediaNegotiatorLocalConfiguration setupBandwidthConfigurationsWithArbiter:];
                goto LABEL_20;
              }

              v13 = v12;
              [(NSMutableSet *)self->_bandwidthConfigurations addObject:v12];

              ++v10;
            }

            while (v8 != v10);
            v8 = [&unk_1F579CF60 countByEnumeratingWithState:&v21 objects:v20 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v14 = -[VCMediaNegotiatorBandwidthConfiguration initWithConnectionType:maxBandwidth:]([VCMediaNegotiatorBandwidthConfiguration alloc], "initWithConnectionType:maxBandwidth:", intValue, [arbiter maxAllowedBitrateForConnectionType:intValue arbiterMode:2]);
        if (!v14)
        {
          [VCMediaNegotiatorLocalConfiguration setupBandwidthConfigurationsWithArbiter:];
          goto LABEL_20;
        }

        v15 = v14;
        [(NSMutableSet *)self->_bandwidthConfigurations addObject:v14];

        v5 = v19 + 1;
      }

      while (v19 + 1 != v17);
      v17 = [&unk_1F579CF48 countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if ([(VCMediaNegotiatorLocalConfiguration *)self setupBandwidthExtensionConfiguration:arbiter])
  {
    return 1;
  }

  [VCMediaNegotiatorLocalConfiguration setupBandwidthConfigurationsWithArbiter:];
LABEL_20:
  [(NSMutableSet *)self->_bandwidthConfigurations removeAllObjects];
  return 0;
}

- (BOOL)setupBandwidthExtensionConfiguration:(id)configuration
{
  v55 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v31 = [&unk_1F579CF78 countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v31)
  {
    v32 = *v52;
    do
    {
      v5 = 0;
      do
      {
        if (*v52 != v32)
        {
          objc_enumerationMutation(&unk_1F579CF78);
        }

        v33 = v5;
        intValue = [*(*(&v51 + 1) + 8 * v5) intValue];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v7 = [&unk_1F579CF90 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v47;
          while (2)
          {
            v10 = 0;
            do
            {
              if (*v47 != v9)
              {
                objc_enumerationMutation(&unk_1F579CF90);
              }

              intValue2 = [*(*(&v46 + 1) + 8 * v10) intValue];
              v12 = -[VCMediaNegotiatorBandwidthConfiguration initWithArbiterMode:connectionType:maxBandwidth:]([VCMediaNegotiatorBandwidthConfiguration alloc], "initWithArbiterMode:connectionType:maxBandwidth:", intValue2, intValue, [configuration maxAllowedBitrateForConnectionType:intValue arbiterMode:intValue2]);
              if (!v12)
              {
                [(VCMediaNegotiatorLocalConfiguration *)intValue2 setupBandwidthExtensionConfiguration:intValue];
                return v34;
              }

              v13 = v12;
              [(NSMutableSet *)self->_bandwidthConfigurations addObject:v12];

              ++v10;
            }

            while (v8 != v10);
            v8 = [&unk_1F579CF90 countByEnumeratingWithState:&v46 objects:v45 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v5 = v33 + 1;
      }

      while (v33 + 1 != v31);
      v31 = [&unk_1F579CF78 countByEnumeratingWithState:&v51 objects:v50 count:16];
    }

    while (v31);
  }

  v14 = -[VCMediaNegotiatorBandwidthConfiguration initWithArbiterMode:connectionType:maxBandwidth:]([VCMediaNegotiatorBandwidthConfiguration alloc], "initWithArbiterMode:connectionType:maxBandwidth:", 1, 6, [configuration maxAllowedBitrateForConnectionType:6 arbiterMode:1]);
  if (v14)
  {
    v15 = v14;
    [(NSMutableSet *)self->_bandwidthConfigurations addObject:v14];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [&unk_1F579CFA8 countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(&unk_1F579CFA8);
          }

          intValue3 = [*(*(&v41 + 1) + 8 * v19) intValue];
          v21 = -[VCMediaNegotiatorBandwidthConfiguration initWithArbiterMode:connectionType:maxBandwidth:]([VCMediaNegotiatorBandwidthConfiguration alloc], "initWithArbiterMode:connectionType:maxBandwidth:", intValue3, 3, [configuration maxAllowedBitrateForConnectionType:3 arbiterMode:intValue3]);
          if (!v21)
          {
            [VCMediaNegotiatorLocalConfiguration setupBandwidthExtensionConfiguration:];
            return v34;
          }

          v22 = v21;
          [(NSMutableSet *)self->_bandwidthConfigurations addObject:v21];

          ++v19;
        }

        while (v17 != v19);
        v17 = [&unk_1F579CFA8 countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = [&unk_1F579CFC0 countByEnumeratingWithState:&v36 objects:v35 count:{16, v31}];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(&unk_1F579CFC0);
          }

          intValue4 = [*(*(&v36 + 1) + 8 * v26) intValue];
          v28 = -[VCMediaNegotiatorBandwidthConfiguration initWithArbiterMode:connectionType:maxBandwidth:]([VCMediaNegotiatorBandwidthConfiguration alloc], "initWithArbiterMode:connectionType:maxBandwidth:", intValue4, 7, [configuration maxAllowedBitrateForConnectionType:7 arbiterMode:intValue4]);
          if (!v28)
          {
            [VCMediaNegotiatorLocalConfiguration setupBandwidthExtensionConfiguration:];
            return v34;
          }

          v29 = v28;
          [(NSMutableSet *)self->_bandwidthConfigurations addObject:v28];

          ++v26;
        }

        while (v24 != v26);
        v24 = [&unk_1F579CFC0 countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  else
  {
    [VCMediaNegotiatorLocalConfiguration setupBandwidthExtensionConfiguration:];
    return v34;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_u1StreamConfigurations mutableCopyWithZone:zone];
    [v5 setU1StreamConfigurations:v6];

    [v5 setPreferredAudioCodec:self->_preferredAudioCodec];
    [v5 setDeviceRole:self->_deviceRole];
    [v5 setAllowRTCPFB:self->_allowRTCPFB];
    [v5 setIsCaller:self->_isCaller];
    [v5 setBasebandCodec:self->_basebandCodec];
    [v5 setBasebandCodecSampleRate:self->_basebandCodecSampleRate];
    [v5 setBandwidthConfigurations:self->_bandwidthConfigurations];
    [v5 setCaptionsSenderLanguages:self->_captionsSenderLanguages];
    [v5 setCaptionsReceiverLanguages:self->_captionsReceiverLanguages];
    [v5 setCallLogFile:self->_callLogFile];
    [v5 setCreationTime:self->_creationTime.wide];
    [v5 setMediaControlInfoVersion:self->_mediaControlInfoVersion];
    [v5 setMultiwayAudioStreams:self->_multiwayAudioStreams];
    [v5 setMultiwayVideoStreams:self->_multiwayVideoStreams];
    [v5 setMediaRecorderVideoCodecs:self->_mediaRecorderVideoCodecs];
    [v5 setMediaRecorderImageTypes:self->_mediaRecorderImageTypes];
    [v5 setSIPDisabled:self->_SIPDisabled];
    [v5 setSecureMessagingRequired:self->_secureMessagingRequired];
    [v5 setFaceTimeSwitches:self->_faceTimeSwitches];
    [v5 setOneToOneModeSupported:self->_oneToOneModeSupported];
    [v5 setPixelFormats:self->_pixelFormats];
    [v5 setHdrModesSupported:self->_hdrModesSupported];
    [v5 setMediaControlInfoFECFeedbackVersion:self->_mediaControlInfoFECFeedbackVersion];
    [v5 setLinkProbingCapabilityVersion:self->_linkProbingCapabilityVersion];
    [v5 setAccessNetworkType:self->_accessNetworkType];
    [v5 setFecEnabled:self->_fecEnabled];
    [v5 setRtxEnabled:self->_rtxEnabled];
    [v5 setOneToOneAuthTagEnabled:self->_oneToOneAuthTagEnabled];
    [v5 setBlackFrameOnClearScreenEnabled:self->_blackFrameOnClearScreenEnabled];
    [v5 setVideoFrameMetadataSupportedVersion:self->_videoFrameMetadataSupportedVersion];
    [v5 setFrontCameraFullScreenSupported:self->_frontCameraFullScreenSupported];
    [v5 setBackCameraFullScreenSupported:self->_backCameraFullScreenSupported];
    [v5 setOrientationMismatchFullScreenAspectRatioLandscape:{self->_orientationMismatchFullScreenAspectRatioLandscape.width, self->_orientationMismatchFullScreenAspectRatioLandscape.height}];
    [v5 setDeviceInitialOrientation:self->_deviceInitialOrientation];
    [v5 setFecHeaderVersion:self->_fecHeaderVersion];
    [v5 setRtxVersion:self->_rtxVersion];
    [v5 setEnableInterleavedEncoding:self->_enableInterleavedEncoding];
    [v5 setEnableACC24ForU1:self->_enableACC24ForU1];
    [v5 setEnableACC24ForGFT:self->_enableACC24ForGFT];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    streamGroupConfigs = self->_streamGroupConfigs;
    v8 = [(NSMutableSet *)streamGroupConfigs countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(streamGroupConfigs);
          }

          [v5 addStreamGroupConfig:*(*(&v14 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [(NSMutableSet *)streamGroupConfigs countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (BOOL)isEqualBandwidthConfigurations:(id)configurations
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  bandwidthConfigurations = self->_bandwidthConfigurations;
  v5 = [(NSMutableSet *)bandwidthConfigurations countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
LABEL_4:
      if (*v22 != v7)
      {
        objc_enumerationMutation(bandwidthConfigurations);
      }

      v9 = *(*(&v21 + 1) + 8 * v8);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [configurations countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = *v17;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(configurations);
        }

        if ([v9 isEqual:*(*(&v16 + 1) + 8 * v13)])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v10 = [configurations countByEnumeratingWithState:&v16 objects:v15 count:16];
          v11 = v10;
          if (v10)
          {
            goto LABEL_8;
          }

          return v10;
        }
      }

      if (++v8 != v6)
      {
        goto LABEL_4;
      }

      v6 = [(NSMutableSet *)bandwidthConfigurations countByEnumeratingWithState:&v21 objects:v20 count:16];
      LOBYTE(v10) = 1;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)isEqualMultiwayAudioStreamSet:(id)set
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableOrderedSet *)self->_multiwayAudioStreams count];
  if (v5 == [set count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    multiwayAudioStreams = self->_multiwayAudioStreams;
    v7 = [(NSMutableOrderedSet *)multiwayAudioStreams countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
LABEL_5:
        if (*v24 != v9)
        {
          objc_enumerationMutation(multiwayAudioStreams);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = *v19;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(set);
          }

          if ([v11 isEqual:*(*(&v18 + 1) + 8 * v15)])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v12 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
            v13 = v12;
            if (v12)
            {
              goto LABEL_9;
            }

            return v12;
          }
        }

        if (++v10 != v8)
        {
          goto LABEL_5;
        }

        v8 = [(NSMutableOrderedSet *)multiwayAudioStreams countByEnumeratingWithState:&v23 objects:v22 count:16];
        LOBYTE(v12) = 1;
      }

      while (v8);
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)isEqualMultiwayVideoStreamSet:(id)set
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableOrderedSet *)self->_multiwayVideoStreams count];
  if (v5 == [set count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    multiwayVideoStreams = self->_multiwayVideoStreams;
    v7 = [(NSMutableOrderedSet *)multiwayVideoStreams countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
LABEL_5:
        if (*v24 != v9)
        {
          objc_enumerationMutation(multiwayVideoStreams);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = *v19;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(set);
          }

          if ([v11 isEqual:*(*(&v18 + 1) + 8 * v15)])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v12 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
            v13 = v12;
            if (v12)
            {
              goto LABEL_9;
            }

            return v12;
          }
        }

        if (++v10 != v8)
        {
          goto LABEL_5;
        }

        v8 = [(NSMutableOrderedSet *)multiwayVideoStreams countByEnumeratingWithState:&v23 objects:v22 count:16];
        LOBYTE(v12) = 1;
      }

      while (v8);
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)isEqualStreamGroupConfigs:(id)configs
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableSet *)self->_streamGroupConfigs count];
  if (v5 == [configs count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    streamGroupConfigs = self->_streamGroupConfigs;
    v7 = [(NSMutableSet *)streamGroupConfigs countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
LABEL_5:
        if (*v24 != v9)
        {
          objc_enumerationMutation(streamGroupConfigs);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [configs countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = *v19;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(configs);
          }

          if ([v11 isEqual:*(*(&v18 + 1) + 8 * v15)])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v12 = [configs countByEnumeratingWithState:&v18 objects:v17 count:16];
            v13 = v12;
            if (v12)
            {
              goto LABEL_9;
            }

            return v12;
          }
        }

        if (++v10 != v8)
        {
          goto LABEL_5;
        }

        v8 = [(NSMutableSet *)streamGroupConfigs countByEnumeratingWithState:&v23 objects:v22 count:16];
        LOBYTE(v12) = 1;
      }

      while (v8);
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)isEqualMediaRecorderImageTypes:(id)types
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NSSet count](self->_mediaRecorderImageTypes, "count"), v5 == [objc_msgSend(types "mediaRecorderImageTypes")]))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    mediaRecorderImageTypes = [types mediaRecorderImageTypes];
    v7 = [mediaRecorderImageTypes countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(mediaRecorderImageTypes);
        }

        v11 = [(NSSet *)self->_mediaRecorderImageTypes containsObject:*(*(&v14 + 1) + 8 * v10)];
        if (!v11)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [mediaRecorderImageTypes countByEnumeratingWithState:&v14 objects:v13 count:16];
          LOBYTE(v11) = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return v11;
        }
      }
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isEqualMediaRecorderVideoCodecs:(id)codecs
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NSSet count](self->_mediaRecorderVideoCodecs, "count"), v5 == [objc_msgSend(codecs "mediaRecorderVideoCodecs")]))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    mediaRecorderVideoCodecs = [codecs mediaRecorderVideoCodecs];
    v7 = [mediaRecorderVideoCodecs countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(mediaRecorderVideoCodecs);
        }

        v11 = [(NSSet *)self->_mediaRecorderVideoCodecs containsObject:*(*(&v14 + 1) + 8 * v10)];
        if (!v11)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [mediaRecorderVideoCodecs countByEnumeratingWithState:&v14 objects:v13 count:16];
          LOBYTE(v11) = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          return v11;
        }
      }
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isEqualFaceTimeSettings:(id)settings
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  SIPDisabled = self->_SIPDisabled;
  if (SIPDisabled != [settings SIPDisabled])
  {
    return 0;
  }

  secureMessagingRequired = self->_secureMessagingRequired;
  if (secureMessagingRequired != [settings secureMessagingRequired])
  {
    return 0;
  }

  faceTimeSwitches = self->_faceTimeSwitches;
  if (faceTimeSwitches != [settings faceTimeSwitches])
  {
    return 0;
  }

  oneToOneModeSupported = self->_oneToOneModeSupported;
  if (oneToOneModeSupported != [settings oneToOneModeSupported])
  {
    return 0;
  }

  mediaControlInfoFECFeedbackVersion = self->_mediaControlInfoFECFeedbackVersion;
  if (mediaControlInfoFECFeedbackVersion != [settings mediaControlInfoFECFeedbackVersion])
  {
    return 0;
  }

  linkProbingCapabilityVersion = self->_linkProbingCapabilityVersion;
  return linkProbingCapabilityVersion == [settings linkProbingCapabilityVersion];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![objc_msgSend(equal "u1StreamConfigurations")])
  {
    return 0;
  }

  if ([equal preferredAudioCodec] != self->_preferredAudioCodec)
  {
    return 0;
  }

  if ([equal deviceRole] != self->_deviceRole)
  {
    return 0;
  }

  if ([equal creationTime] != self->_creationTime.wide)
  {
    return 0;
  }

  if ([equal mediaControlInfoVersion] != self->_mediaControlInfoVersion)
  {
    return 0;
  }

  if ([equal basebandCodec] != self->_basebandCodec)
  {
    return 0;
  }

  if ([equal basebandCodecSampleRate] != self->_basebandCodecSampleRate)
  {
    return 0;
  }

  v5 = [objc_msgSend(equal "bandwidthConfigurations")];
  if (v5 != [(NSMutableSet *)self->_bandwidthConfigurations count])
  {
    return 0;
  }

  if (self->_allowRTCPFB != [equal allowRTCPFB])
  {
    return 0;
  }

  if (self->_isCaller != [equal isCaller])
  {
    return 0;
  }

  if ([equal accessNetworkType] != self->_accessNetworkType)
  {
    return 0;
  }

  if (self->_fecEnabled != [equal fecEnabled])
  {
    return 0;
  }

  if (self->_rtxEnabled != [equal rtxEnabled])
  {
    return 0;
  }

  if (self->_oneToOneAuthTagEnabled != [equal isOneToOneAuthTagEnabled])
  {
    return 0;
  }

  if (self->_blackFrameOnClearScreenEnabled != [equal blackFrameOnClearScreenEnabled])
  {
    return 0;
  }

  if ([equal videoFrameMetadataSupportedVersion] != self->_videoFrameMetadataSupportedVersion)
  {
    return 0;
  }

  if (self->_frontCameraFullScreenSupported != [equal frontCameraFullScreenSupported])
  {
    return 0;
  }

  if (self->_backCameraFullScreenSupported != [equal backCameraFullScreenSupported])
  {
    return 0;
  }

  if ([equal deviceInitialOrientation] != self->_deviceInitialOrientation)
  {
    return 0;
  }

  if (self->_enableInterleavedEncoding != [equal enableInterleavedEncoding])
  {
    return 0;
  }

  if (self->_enableACC24ForU1 != [equal enableACC24ForU1])
  {
    return 0;
  }

  if (self->_enableACC24ForGFT != [equal enableACC24ForGFT])
  {
    return 0;
  }

  [equal orientationMismatchFullScreenAspectRatioLandscape];
  if (v7 != self->_orientationMismatchFullScreenAspectRatioLandscape.width || v6 != self->_orientationMismatchFullScreenAspectRatioLandscape.height || !-[VCMediaNegotiatorLocalConfiguration isEqualBandwidthConfigurations:](self, "isEqualBandwidthConfigurations:", [equal bandwidthConfigurations]) || !-[VCMediaNegotiatorLocalConfiguration isEqualMultiwayAudioStreamSet:](self, "isEqualMultiwayAudioStreamSet:", objc_msgSend(equal, "multiwayAudioStreams")) || !-[VCMediaNegotiatorLocalConfiguration isEqualMultiwayVideoStreamSet:](self, "isEqualMultiwayVideoStreamSet:", objc_msgSend(equal, "multiwayVideoStreams")) || !-[VCMediaNegotiatorLocalConfiguration isEqualMediaRecorderImageTypes:](self, "isEqualMediaRecorderImageTypes:", equal) || !-[VCMediaNegotiatorLocalConfiguration isEqualMediaRecorderVideoCodecs:](self, "isEqualMediaRecorderVideoCodecs:", equal) || !-[VCMediaNegotiatorLocalConfiguration isEqualFaceTimeSettings:](self, "isEqualFaceTimeSettings:", equal))
  {
    return 0;
  }

  streamGroupConfigs = [equal streamGroupConfigs];

  return [(VCMediaNegotiatorLocalConfiguration *)self isEqualStreamGroupConfigs:streamGroupConfigs];
}

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)aspectRatioLandscape
{
  width = self->_aspectRatioLandscape.width;
  height = self->_aspectRatioLandscape.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)aspectRatioPortrait
{
  width = self->_aspectRatioPortrait.width;
  height = self->_aspectRatioPortrait.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)orientationMismatchAspectRatioLandscape
{
  width = self->_orientationMismatchAspectRatioLandscape.width;
  height = self->_orientationMismatchAspectRatioLandscape.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)orientationMismatchFullScreenAspectRatioLandscape
{
  width = self->_orientationMismatchFullScreenAspectRatioLandscape.width;
  height = self->_orientationMismatchFullScreenAspectRatioLandscape.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate multiway audio stream set", v2, v3, v4, v5, v6);
    }
  }
}

- (void)setupBandwidthConfigurationsWithArbiter:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)setupBandwidthConfigurationsWithArbiter:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)setupBandwidthConfigurationsWithArbiter:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate bandwidth extension configuration", v2, v3, v4, v5, v6);
    }
  }
}

- (void)setupBandwidthExtensionConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136316162;
      v6 = v3;
      v7 = 2080;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_16();
      v8 = a2;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate bandwidth configuration for mode=%hhu connectionType:%d", &v5, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupBandwidthExtensionConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupBandwidthExtensionConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupBandwidthExtensionConfiguration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_18();
}

@end
@interface VCHardwareSettings
+ (BOOL)allowScreenShareResolutionModuloAdjustment;
+ (BOOL)disableMLScalarDuringSharing;
+ (BOOL)isCaptionsSupported;
+ (BOOL)isDeviceLargeScreen;
+ (BOOL)isDisplayPortrait;
+ (BOOL)isExternalCameraSupported;
+ (BOOL)isHEVCDecodeSupportedForHardwareSettingsMode:(unsigned __int8)a3;
+ (BOOL)isHEVCEncodeSupportedForHardwareSettingsMode:(unsigned __int8)a3;
+ (BOOL)isMLEnhanceOneToOneSupported;
+ (BOOL)isMediaRecordingSupported;
+ (BOOL)isRemoteCameraSenderSupported;
+ (BOOL)isSiriVoicePlayoutSupported;
+ (BOOL)isSiriVoiceTapSupported;
+ (BOOL)isSpatialAudioSupported;
+ (BOOL)isVCRateControlMLSupported;
+ (BOOL)isVideoRenderingSupported;
+ (BOOL)isViewPointCorrectionSupported;
+ (BOOL)isVoiceProcessingAt24KSupported;
+ (BOOL)limitCameraDownlinkBitrateDuringSharing;
+ (BOOL)retainPixelBufferForMediaRecordingEnabled;
+ (BOOL)shouldCameraEffectsFrontCameraMirror;
+ (BOOL)shouldDisable1080pForOneToOne;
+ (BOOL)shouldEnableLowPowerMode;
+ (BOOL)shouldEnforceBinnedCameraFormatSelection;
+ (BOOL)shouldEnforceScreenFrameRateLimit;
+ (BOOL)supportsCompressedPixelFormat;
+ (BOOL)supportsDecodingSquareCameraVideo;
+ (BOOL)supportsDedicatedSystemAudioStream;
+ (BOOL)supportsFoveation;
+ (BOOL)supportsFrontCameraFullBleedCapture;
+ (BOOL)supportsFullBleedReceive;
+ (BOOL)supportsHEIFEncoding;
+ (BOOL)supportsHEVCDecoding;
+ (BOOL)supportsHEVCEncoding;
+ (BOOL)supportsMVHEVCDecode;
+ (BOOL)supportsMVHEVCEncode;
+ (BOOL)supportsMultiway1080pStream;
+ (BOOL)supportsMultiway720pStream;
+ (BOOL)supportsOptimizedHandoversForTelephony;
+ (BOOL)supportsOutOfProcessAudioDecoding;
+ (BOOL)supportsOutOfProcessVideoDecoding;
+ (BOOL)supportsPSVoiceOnAP;
+ (BOOL)supportsScreenCapture;
+ (BOOL)supportsSystemAudioTap;
+ (BOOL)supportsVideoStabilization;
+ (double)previewPreferredAspectRatio;
+ (id)featureListStringForPayload:(int)a3 hardwareSettingsMode:(unsigned __int8)a4 version:(int64_t)a5;
+ (id)supportedVideoPayloads;
+ (id)virtualHardwareSettings:(id)a3;
+ (int64_t)screenShareCapabilities;
+ (unint64_t)maxScreenEncodingSizeSupported;
+ (unsigned)builtinMicCount;
+ (unsigned)maxActiveScreenEncoders;
+ (unsigned)maxActiveVideoDecoders;
+ (unsigned)maxActiveVideoEncoders;
+ (unsigned)maxFpsCameraCaptureDuringSharing;
+ (unsigned)maxFrameRateSupportedBackgroundBlur;
+ (unsigned)maxFrameRateSupportedScreenShare;
+ (unsigned)maxHighTierMLEnhanceParticipants;
+ (unsigned)maxMultiwayFramerateSupported;
+ (unsigned)maxOneToOneFramerateSupported;
+ (unsigned)maxRemoteParticipants30fps;
+ (unsigned)screenHeight;
+ (unsigned)screenHeightForDisplayID:(unsigned int)a3;
+ (unsigned)screenWidth;
+ (unsigned)screenWidthForDisplayID:(unsigned int)a3;
+ (unsigned)tilesPerVideoFrameForHardwareSettingsMode:(unsigned __int8)a3 hdrMode:(unint64_t)a4;
- (BOOL)storeHardwareSettingsForAllOperatingModes;
- (BOOL)supportHEVC;
- (BOOL)vcpSupportsHEVCEncoder;
- (VCHardwareSettings)init;
- (id)featureListStringForPayload:(int)a3 hardwareSettingsMode:(unsigned __int8)a4 version:(int64_t)a5;
- (unsigned)maxNetworkBitrateMultiwayAudioOnWifi:(BOOL)a3 isLowLatencyAudio:(BOOL)a4;
- (void)dealloc;
- (void)init;
- (void)storeHardwareSettingsForAllOperatingModes;
@end

@implementation VCHardwareSettings

+ (id)virtualHardwareSettings:(id)a3
{
  v4 = VCVirtualHardwareConfigurations_DevicePlatform(a3);
  switch(v4)
  {
    case 2:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCHardwareSettings virtualHardwareSettings:];
        }
      }

      break;
    case 1:
      v5 = VCHardwareSettingsMac;
      return [(__objc2_class *)v5 virtualHardwareSettings:a3];
    case 0:
      v5 = VCHardwareSettingsEmbedded;
      return [(__objc2_class *)v5 virtualHardwareSettings:a3];
  }

  return 0;
}

- (VCHardwareSettings)init
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCHardwareSettings;
  v2 = [(VCHardwareSettings *)&v6 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_opt_new();
  v2->_hardwareUsageModeSettings = v3;
  if (!v3)
  {
    [VCHardwareSettings init];
LABEL_9:

    return 0;
  }

  if (![(VCHardwareSettings *)v2 storeHardwareSettingsForAllOperatingModes])
  {
    [VCHardwareSettings init];
    goto LABEL_9;
  }

  v2->_supportHEVC = -1;
  [(VCHardwareSettings *)v2 supportHEVC];
  [(VCHardwareSettings *)v2 vcpSupportsHEVCEncoder];
  v2->_isSiriVoicePlayoutSupported = 1;
  v4 = objc_opt_new();
  v2->_pixelFormatCollections = v4;
  if (!v4)
  {
    [(VCHardwareSettings *)v2 init];
    return v7[0];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCHardwareSettings;
  [(VCHardwareSettings *)&v3 dealloc];
}

+ (id)featureListStringForPayload:(int)a3 hardwareSettingsMode:(unsigned __int8)a4 version:(int64_t)a5
{
  v6 = a4;
  v7 = *&a3;
  v8 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettings *)v8 featureListStringForPayload:v7 hardwareSettingsMode:v6 version:a5];
}

- (id)featureListStringForPayload:(int)a3 hardwareSettingsMode:(unsigned __int8)a4 version:(int64_t)a5
{
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_hardwareUsageModeSettings, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4]);
  if (a3 == 126 || a3 == 123)
  {
    if (a5 == 2)
    {

      return [v7 featureListStringFixedPositionH264];
    }

    else
    {

      return [v7 featureListStringH264];
    }
  }

  else if (a3 == 100)
  {
    if (a5 == 2)
    {

      return [v7 featureListStringFixedPositionHEVC];
    }

    else
    {

      return [v7 featureListStringHEVC];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCHardwareSettings featureListStringForPayload:hardwareSettingsMode:version:];
      }
    }

    return 0;
  }
}

- (BOOL)supportHEVC
{
  supportHEVC = self->_supportHEVC;
  if (supportHEVC == -1)
  {
    v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_hardwareUsageModeSettings objectForKeyedSubscript:{&unk_1F579C2E8), "vcpSupportsHEVCDecoder"}];
    self->_supportHEVC = v3;
  }

  else
  {
    LOBYTE(v3) = supportHEVC == 1;
  }

  return v3;
}

- (BOOL)vcpSupportsHEVCEncoder
{
  result = [-[NSMutableDictionary objectForKeyedSubscript:](self->_hardwareUsageModeSettings objectForKeyedSubscript:{&unk_1F579C2E8), "vcpSupportsHEVCEncoder"}];
  self->_supportVCPEncoder = result;
  return result;
}

+ (BOOL)isHEVCEncodeSupportedForHardwareSettingsMode:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [a1 sharedInstance];
  if (v4)
  {
    v5 = [v4 hardwareUsageModeSettings];
    v6 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", v3)}];

    LOBYTE(v4) = [v6 vcpSupportsHEVCEncoder];
  }

  return v4;
}

+ (BOOL)isHEVCDecodeSupportedForHardwareSettingsMode:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [a1 sharedInstance];
  if (v4)
  {
    v5 = [v4 hardwareUsageModeSettings];
    v6 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", v3)}];

    LOBYTE(v4) = [v6 vcpSupportsHEVCDecoder];
  }

  return v4;
}

+ (unsigned)tilesPerVideoFrameForHardwareSettingsMode:(unsigned __int8)a3 hdrMode:(unint64_t)a4
{
  v5 = a3;
  v6 = [a1 sharedInstance];
  if (!v6)
  {
    return -1;
  }

  v7 = [v6 hardwareUsageModeSettings];
  v8 = [v7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", v5)}];

  return [v8 numTilesPerVideoFrameForHDRMode:a4];
}

- (BOOL)storeHardwareSettingsForAllOperatingModes
{
  LOBYTE(v3) = 1;
  v4 = [[VCModeSpecificHardwareSettings alloc] initWithHardwareSettingsMode:1];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_hardwareUsageModeSettings, "setObject:forKeyedSubscript:", v5, [MEMORY[0x1E696AD98] numberWithUnsignedChar:v3]);

      if (v6 == 8)
      {
        return 1;
      }

      v3 = storeHardwareSettingsForAllOperatingModes_hardwareSettingsModes[v6 + 1];
      v5 = [[VCModeSpecificHardwareSettings alloc] initWithHardwareSettingsMode:v3];
      ++v6;
      if (!v5)
      {
        v7 = (v6 - 1) > 7;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_9:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCHardwareSettings storeHardwareSettingsForAllOperatingModes];
      }
    }
  }

  return v7;
}

- (unsigned)maxNetworkBitrateMultiwayAudioOnWifi:(BOOL)a3 isLowLatencyAudio:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[VCDefaults sharedInstance];
  if (v5)
  {
    result = [(VCDefaults *)v6 multiwayAudioNetworkBitrateCapWifi];
    if (v4)
    {
      v8 = 165600;
    }

    else
    {
      v8 = 73400;
    }

    v9 = result == -1;
  }

  else
  {
    result = [(VCDefaults *)v6 multiwayAudioNetworkBitrateCapCellular];
    v9 = result == -1;
    v8 = 55000;
  }

  if (v9)
  {
    return v8;
  }

  return result;
}

+ (unsigned)builtinMicCount
{
  v6 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
    CFRelease(v3);
    LODWORD(v2) = valuePtr;
  }

  return v2;
}

+ (unsigned)maxRemoteParticipants30fps
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxRemoteParticipants30fps];
}

+ (unsigned)maxFpsCameraCaptureDuringSharing
{
  v2 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded maxFpsCameraCaptureDuringSharing];

  return VCDefaults_GetIntValueForKey(@"maxCameraFrameRateWhenScreenIsEnabled", v2);
}

+ (unsigned)screenWidth
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 screenWidth];
}

+ (unsigned)screenHeight
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 screenHeight];
}

+ (unsigned)screenWidthForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v4 screenWidthForDisplayID:v3];
}

+ (unsigned)screenHeightForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v4 screenHeightForDisplayID:v3];
}

+ (unint64_t)maxScreenEncodingSizeSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxScreenEncodingSizeSupported];
}

+ (BOOL)allowScreenShareResolutionModuloAdjustment
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 allowScreenShareResolutionModuloAdjustment];
}

+ (unsigned)maxFrameRateSupportedScreenShare
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxFrameRateSupportedScreenShare];
}

+ (BOOL)shouldEnforceScreenFrameRateLimit
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 shouldEnforceScreenFrameRateLimit];
}

+ (unsigned)maxActiveScreenEncoders
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxActiveScreenEncoders];
}

+ (unsigned)maxFrameRateSupportedBackgroundBlur
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxFrameRateSupportedBackgroundBlur];
}

+ (BOOL)isDisplayPortrait
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isDisplayPortrait];
}

+ (BOOL)isSpatialAudioSupported
{
  v18 = *MEMORY[0x1E69E9840];
  if (VCDefaults_GetBoolValueForKey(@"enableSpatialAudio", 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v2;
        v12 = 2080;
        v13 = "+[VCHardwareSettings isSpatialAudioSupported]";
        v14 = 1024;
        v15 = 617;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Spatial audio feature force enabled", &v10, 0x1Cu);
      }
    }

    LOBYTE(v4) = 1;
  }

  else if (_os_feature_enabled_impl())
  {
    v4 = +[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 8 || [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded isSpatialAudioSupported];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "+[VCHardwareSettings isSpatialAudioSupported]";
        v14 = 1024;
        v15 = 636;
        v16 = 1024;
        v17 = v4;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Spatial audio feature enabled. deviceSupportsSpatialAudio=%d", &v10, 0x22u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "+[VCHardwareSettings isSpatialAudioSupported]";
        v14 = 1024;
        v15 = 621;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Spatial audio feature disabled", &v10, 0x1Cu);
      }
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isCaptionsSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isCaptionsSupported];
}

+ (BOOL)isVoiceProcessingAt24KSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isVoiceProcessingAt24KSupported];
}

+ (BOOL)supportsHEIFEncoding
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsHEIFEncoding];
}

+ (BOOL)supportsHEVCEncoding
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettings *)v2 vcpSupportsHEVCEncoder];
}

+ (BOOL)supportsHEVCDecoding
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettings *)v2 supportHEVC];
}

+ (BOOL)supportsMVHEVCEncode
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsMVHEVCEncode];
}

+ (BOOL)supportsMVHEVCDecode
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsMVHEVCDecode];
}

+ (BOOL)supportsMultiway1080pStream
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsMultiway1080pStream];
}

+ (BOOL)supportsDecodingSquareCameraVideo
{
  v2 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded supportsDecodingSquareCameraVideo];

  return [VCDefaults BOOLeanValueForKey:@"preferDecodingSquareCameraVideo" defaultValue:v2];
}

+ (unsigned)maxOneToOneFramerateSupported
{
  result = VCDefaults_GetIntValueForKey(@"MaxOneToOneFramerate", 0xFFFFFFFFLL);
  if (result == -1)
  {
    v3 = +[VCHardwareSettingsEmbedded sharedInstance];

    return [(VCHardwareSettingsEmbedded *)v3 maxOneToOneFramerateSupported];
  }

  return result;
}

+ (unsigned)maxMultiwayFramerateSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxMultiwayFramerateSupported];
}

+ (id)supportedVideoPayloads
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportedVideoPayloads];
}

+ (BOOL)limitCameraDownlinkBitrateDuringSharing
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 limitCameraDownlinkBitrateDuringSharing];
}

+ (BOOL)supportsScreenCapture
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsScreenCapture];
}

+ (BOOL)supportsSystemAudioTap
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsSystemAudioTap];
}

+ (BOOL)supportsDedicatedSystemAudioStream
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsDedicatedSystemAudioStream];
}

+ (BOOL)disableMLScalarDuringSharing
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 disableMLScalarDuringSharing];
}

+ (double)previewPreferredAspectRatio
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  [(VCHardwareSettingsEmbedded *)v2 previewPreferredAspectRatio];
  return result;
}

+ (int64_t)screenShareCapabilities
{
  if (VCDefaults_GetBoolValueForKey(@"kVCDefaultForceScreenCaptureCapabilitiesSendWithCamera", 0))
  {
    return 2;
  }

  v3 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v3 screenShareCapabilities];
}

+ (unsigned)maxActiveVideoEncoders
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxActiveVideoEncoders];
}

+ (unsigned)maxActiveVideoDecoders
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 maxActiveVideoDecoders];
}

+ (BOOL)isVideoRenderingSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettings *)v2 isVideoRenderingSupported];
}

+ (BOOL)isSiriVoiceTapSupported
{
  v12 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = +[VCHardwareSettingsEmbedded sharedInstance];

    return [(VCHardwareSettings *)v2 isSiriVoiceTapSupported];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "+[VCHardwareSettings isSiriVoiceTapSupported]";
        v10 = 1024;
        v11 = 895;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Siri audio feature disabled", &v6, 0x1Cu);
      }
    }

    return 0;
  }
}

+ (BOOL)isSiriVoicePlayoutSupported
{
  v12 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = +[VCHardwareSettingsEmbedded sharedInstance];

    return [(VCHardwareSettings *)v2 isSiriVoicePlayoutSupported];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "+[VCHardwareSettings isSiriVoicePlayoutSupported]";
        v10 = 1024;
        v11 = 909;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Siri audio feature disabled", &v6, 0x1Cu);
      }
    }

    return 0;
  }
}

+ (BOOL)isViewPointCorrectionSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isViewPointCorrectionSupported];
}

+ (BOOL)isExternalCameraSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isExternalCameraSupported];
}

void __VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFArrayGetTypeID() && CFArrayGetCount(v1) >= 2)
    {
      [CFArrayGetValueAtIndex(v1 0)];
      *&VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_offset_0 = (v4 / -1000.0);
      [CFArrayGetValueAtIndex(v1 1)];
      v3 = (v5 / 1000.0);
    }

    else
    {
      VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_offset_0 = 0xBFB19CCFC02D6854;
      v3 = 0.00722700031;
    }

    VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_offset_1 = *&v3;

    CFRelease(v1);
  }

  else
  {
    VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_offset_0 = 0xBFB19CCFC02D6854;
    VCHardwareSettings_FrontCameraOffsetFromDisplayCenter_offset_1 = 0x3F7D9A0F1FAC9276;
  }
}

+ (BOOL)retainPixelBufferForMediaRecordingEnabled
{
  v2 = ((+[VCHardwareSettings deviceClass]- 4) & 0xFFFFFFFFFFFFFFFBLL) != 0;

  return VCDefaults_GetBoolValueForKey(@"enableRetainPixelBufferForMediaRecording", v2);
}

+ (BOOL)supportsMultiway720pStream
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsMultiway720pStream];
}

+ (BOOL)isRemoteCameraSenderSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isRemoteCameraSenderSupported];
}

+ (BOOL)isMediaRecordingSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isMediaRecordingSupported];
}

+ (BOOL)supportsCompressedPixelFormat
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsCompressedPixelFormat];
}

+ (BOOL)isDeviceLargeScreen
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isDeviceLargeScreen];
}

+ (BOOL)isVCRateControlMLSupported
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFEqual(v2, *MEMORY[0x1E695E4D0]);
  v5 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded isVCRateControlMLSupported];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

+ (BOOL)isMLEnhanceOneToOneSupported
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isMLEnhanceOneToOneSupported];
}

+ (unsigned)maxHighTierMLEnhanceParticipants
{
  v2 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded maxHighTierMLEnhanceParticipants];

  return VCDefaults_GetIntValueForKey(@"mlEnhanceNumberMLEnhancedParticipants", v2);
}

+ (BOOL)supportsOutOfProcessVideoDecoding
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsOutOfProcessVideoDecoding];
}

+ (BOOL)supportsOutOfProcessAudioDecoding
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsOutOfProcessAudioDecoding];
}

+ (BOOL)supportsPSVoiceOnAP
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsPSVoiceOnAP];
}

+ (BOOL)supportsOptimizedHandoversForTelephony
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsOptimizedHandoversForTelephony];
}

+ (BOOL)supportsFoveation
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsFoveation];
}

+ (BOOL)shouldEnableLowPowerMode
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 shouldEnableLowPowerMode];
}

+ (BOOL)shouldDisable1080pForOneToOne
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 shouldDisable1080pForOneToOne];
}

+ (BOOL)shouldEnforceBinnedCameraFormatSelection
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 shouldEnforceBinnedCameraFormatSelection];
}

+ (BOOL)supportsFrontCameraFullBleedCapture
{
  v12 = *MEMORY[0x1E69E9840];
  if ([+[VCHardwareSettingsEmbedded supportsFrontCameraFullBleedCapture] sharedInstance]
  {
    if (!VCDefaults_Prod_GetUserPreferenceAFBDisabled(0))
    {
      v4 = 1;
      return VCDefaults_GetBoolValueForKeyQuiet(@"forceFrontCameraFullBleedCapture", v4);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v2;
        v8 = 2080;
        v9 = "+[VCHardwareSettings supportsFrontCameraFullBleedCapture]";
        v10 = 1024;
        v11 = 1226;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FaceTime user setting prefers to disable AFB", &v6, 0x1Cu);
      }
    }
  }

  v4 = 0;
  return VCDefaults_GetBoolValueForKeyQuiet(@"forceFrontCameraFullBleedCapture", v4);
}

+ (BOOL)shouldCameraEffectsFrontCameraMirror
{
  v2 = +[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") != 1 || [MEMORY[0x1E69870A0] deviceWithUniqueID:@"com.apple.avfoundation.avcapturedevice.built-in_video:8"] == 0;

  return VCDefaults_GetBoolValueForKey(@"forceHardwareRuleCameraEffectsFrontCameraMirrored", v2);
}

+ (BOOL)supportsFullBleedReceive
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsFullBleedReceive];
}

+ (BOOL)supportsVideoStabilization
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 supportsVideoStabilization];
}

+ (void)virtualHardwareSettings:(void *)a3 .cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "+[VCHardwareSettings virtualHardwareSettings:]";
      v13 = 1024;
      v14 = 253;
      v15 = 2112;
      v16 = a1;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to find platform for device=%@, error=%@", &v9, 0x30u);
    }
  }

  *a3 = 0;
}

+ (void)virtualHardwareSettings:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
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
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCHardwareSettings: Failed to allocate memory for hardware usage mode settings", v2, v3, v4, v5, v6);
    }
  }
}

- (void)featureListStringForPayload:hardwareSettingsMode:version:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)storeHardwareSettingsForAllOperatingModes
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end
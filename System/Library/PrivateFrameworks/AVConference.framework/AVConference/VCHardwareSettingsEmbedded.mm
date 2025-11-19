@interface VCHardwareSettingsEmbedded
+ (id)sharedInstance;
+ (id)virtualHardwareSettings:(id)a3;
+ (int64_t)deviceClass;
- (BOOL)allowScreenShareResolutionModuloAdjustment;
- (BOOL)canDo1080p;
- (BOOL)deviceSupportsMultiway1080p;
- (BOOL)disableMLScalarDuringSharing;
- (BOOL)hasAppleNeuralEngine;
- (BOOL)hasBaseband;
- (BOOL)iPadSupportsOutOfProcessDecoding;
- (BOOL)iPhoneSupportsOutOfProcessDecoding;
- (BOOL)isCaptionsSupported;
- (BOOL)isCaptureSIFRPreferred;
- (BOOL)isExternalCameraSupported;
- (BOOL)isHEVC444DecodeSupported;
- (BOOL)isMLEnhanceOneToOneSupported;
- (BOOL)isRemoteCameraSenderSupported;
- (BOOL)isRemoteCameraSenderSupportediPad;
- (BOOL)isRemoteCameraSenderSupportediPhone;
- (BOOL)isSecondDisplaySupportEnabled;
- (BOOL)isSmartBrakeSupported;
- (BOOL)isSmartBrakeSupportedATV;
- (BOOL)isSmartBrakeSupportedIPad;
- (BOOL)isSmartBrakeSupportedIPhone;
- (BOOL)isSpatialAudioSupported;
- (BOOL)isSpatialAudioSupportedAppleTV;
- (BOOL)isSpatialAudioSupportedIPad;
- (BOOL)isSpatialAudioSupportedIPhone;
- (BOOL)isViewPointCorrectionSupported;
- (BOOL)isViewPointCorrectionSupportedNoDispatch;
- (BOOL)isVoiceProcessingAt24KSupported;
- (BOOL)limitCameraDownlinkBitrateDuringSharing;
- (BOOL)shouldDisable1080pForOneToOne;
- (BOOL)shouldEnableLowPowerMode;
- (BOOL)shouldEnforceBinnedCameraFormatSelection;
- (BOOL)supportsCompressedPixelFormat;
- (BOOL)supportsDedicatedSystemAudioStream;
- (BOOL)supportsFrontCameraFullBleedCapture;
- (BOOL)supportsFullBleedReceive;
- (BOOL)supportsHEIFEncoding;
- (BOOL)supportsMVHEVCDecode;
- (BOOL)supportsMultiway1080pStream;
- (BOOL)supportsMultiway1080pStreamEmbeddedOS;
- (BOOL)supportsMultiway720pStream;
- (BOOL)supportsOptimizedHandoversForTelephony;
- (BOOL)supportsOutOfProcessDecoding;
- (BOOL)supportsPSVoiceOnAP;
- (BOOL)supportsVideoStabilization;
- (NSArray)supportedVideoPayloads;
- (NSString)deviceName;
- (VCHardwareSettingsEmbedded)init;
- (double)previewPreferredAspectRatio;
- (id)initForDevice:(id)a3;
- (id)marketingName;
- (int64_t)chipId;
- (int64_t)deviceClass;
- (int64_t)screenShareCapabilities;
- (int64_t)screenShareCapabilitiesATV;
- (int64_t)screenShareCapabilitiesIPad;
- (int64_t)screenShareCapabilitiesIPhone;
- (int64_t)videoEncoderType;
- (unint64_t)maxScreenEncodingSizeSupported;
- (unsigned)audioPacketLossConcealmentAlgorithmAACELD;
- (unsigned)maxActiveScreenEncoders;
- (unsigned)maxActiveVideoDecoders;
- (unsigned)maxActiveVideoEncoders;
- (unsigned)maxDisplayRefreshRate;
- (unsigned)maxFpsCameraCaptureDuringSharing;
- (unsigned)maxFrameRateSupportedBackgroundBlur;
- (unsigned)maxFrameRateSupportedScreenShare;
- (unsigned)maxHighTierMLEnhanceParticipants;
- (unsigned)maxMultiwayFramerateSupported;
- (unsigned)maxOneToOneFramerateSupported;
- (unsigned)maxRemoteParticipants30fps;
- (unsigned)screenHeight;
- (unsigned)screenHeightForDisplayID:(unsigned int)a3;
- (unsigned)screenWidth;
- (unsigned)screenWidthForDisplayID:(unsigned int)a3;
- (void)_initializeScreenDimension;
- (void)addPixelFormat;
- (void)dealloc;
- (void)setupSiriSupport;
- (void)supportsOutOfProcessDecoding;
@end

@implementation VCHardwareSettingsEmbedded

- (VCHardwareSettingsEmbedded)init
{
  v15 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCHardwareSettingsEmbedded;
  v2 = [(VCHardwareSettings *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(VCHardwareSettingsEmbedded *)v2 addPixelFormat];
    [(VCHardwareSettingsEmbedded *)v3 setupSiriSupport];
    *&v3->_productType = MGGetProductType();
    v4 = +[VCHardwareSettingsEmbedded deviceClass];
    v3->_deviceClass = v4;
    if (v4 == -1 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCHardwareSettingsEmbedded init]";
        v13 = 1024;
        v14 = 123;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _deviceClass is kVCDeviceClassTypeInvalid", buf, 0x1Cu);
      }
    }
  }

  return v3;
}

- (id)initForDevice:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(VCHardwareSettingsEmbedded *)self init];
  if (v4)
  {
    if (a3)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v12 = v5;
      v13 = v5;
      v11 = v5;
      if (VCVirtualHardwareConfigurations_EmbeddedConfigurationForDevice(a3, &v11))
      {

        v6 = [v11 copy];
        v4->_deviceName = v6;
        if (v6)
        {
          *&v4->_screenWidth = *(&v11 + 1);
          v7 = v13;
          v4->_chipId = v12;
          v4->_videoEncoderType = v7;
          if (BYTE10(v13) == 1)
          {
            v8 = BYTE11(v13);
          }

          else
          {
            v8 = MGGetBoolAnswer();
          }

          v4->_hasAppleNeuralEngine = v8;
          v4->_deviceClass = DWORD2(v12);
          v4->super._supportVCPEncoderInitialized = 1;
          v4->super._supportVCPEncoder = BYTE9(v13);
          v9 = BYTE8(v13);
          v4->super._supportHEVC = BYTE8(v13);
          if (v9 == 1)
          {
            [(NSMutableSet *)v4->super._pixelFormatCollections addObject:&unk_1F579A500];
          }

          [(NSMutableSet *)v4->super._pixelFormatCollections addObject:&unk_1F579A518];
          [(NSMutableSet *)v4->super._pixelFormatCollections addObject:&unk_1F579A530];
          v4->_isInitialized = 1;
        }

        else
        {
          [VCHardwareSettingsEmbedded initForDevice:];
        }
      }

      else
      {
        [VCHardwareSettingsEmbedded initForDevice:a3];
      }
    }

    else
    {
      [VCHardwareSettingsEmbedded initForDevice:];
    }
  }

  else
  {
    [VCHardwareSettingsEmbedded initForDevice:];
  }

  if (!v4->_isInitialized)
  {

    return 0;
  }

  return v4;
}

+ (id)virtualHardwareSettings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (virtualHardwareSettings___virtualHardwareSettingsDeviceA_0)
  {
    if ([a3 isEqual:{objc_msgSend(virtualHardwareSettings___virtualHardwareSettingsDeviceA_0, "deviceName")}])
    {
      return virtualHardwareSettings___virtualHardwareSettingsDeviceA_0;
    }

    else if (virtualHardwareSettings___virtualHardwareSettingsDeviceB_0)
    {
      if ([a3 isEqual:{objc_msgSend(virtualHardwareSettings___virtualHardwareSettingsDeviceB_0, "deviceName")}])
      {
        return virtualHardwareSettings___virtualHardwareSettingsDeviceB_0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = 136315650;
            v12 = v9;
            v13 = 2080;
            v14 = "+[VCHardwareSettingsEmbedded virtualHardwareSettings:]";
            v15 = 1024;
            v16 = 201;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clearing existing virtual hardware settings.", &v11, 0x1Cu);
          }
        }

        virtualHardwareSettings___virtualHardwareSettingsDeviceA_0 = 0;
        virtualHardwareSettings___virtualHardwareSettingsDeviceB_0 = 0;
        return [VCHardwareSettingsEmbedded virtualHardwareSettings:a3];
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "+[VCHardwareSettingsEmbedded virtualHardwareSettings:]";
          v15 = 1024;
          v16 = 191;
          v17 = 2112;
          v18 = a3;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initializing new virtual hardware settings B for device=%@", &v11, 0x26u);
        }
      }

      result = [[VCHardwareSettingsEmbedded alloc] initForDevice:a3];
      virtualHardwareSettings___virtualHardwareSettingsDeviceB_0 = result;
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
        v11 = 136315906;
        v12 = v5;
        v13 = 2080;
        v14 = "+[VCHardwareSettingsEmbedded virtualHardwareSettings:]";
        v15 = 1024;
        v16 = 181;
        v17 = 2112;
        v18 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initializing new virtual hardware settings A for device=%@", &v11, 0x26u);
      }
    }

    result = [[VCHardwareSettingsEmbedded alloc] initForDevice:a3];
    virtualHardwareSettings___virtualHardwareSettingsDeviceA_0 = result;
  }

  return result;
}

+ (id)sharedInstance
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (VRTraceIsInternalOSInstalled() && (v4 = [+[VCDefaults virtualHardware] sharedInstance]!= 0)
  {
    v5 = [a1 virtualHardwareSettings:v4];
    objc_sync_exit(v3);
  }

  else
  {
    if (!sharedInstance__hardwareSettings_0)
    {
      sharedInstance__hardwareSettings_0 = objc_alloc_init(VCHardwareSettingsEmbedded);
    }

    objc_sync_exit(v3);
    return sharedInstance__hardwareSettings_0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCHardwareSettingsEmbedded;
  [(VCHardwareSettings *)&v3 dealloc];
}

- (void)setupSiriSupport
{
  v3 = +[VCHardwareSettings deviceClass]== 8;
  self->super._isSiriVoicePlayoutSupported = v3;
  self->super._isSiriVoiceTapSupported = v3;
}

- (void)_initializeScreenDimension
{
  v29 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings deviceClass]== 8)
  {
    if (VCDefaults_GetBoolValueForKey(@"enableHighScreenCaptureResolution", 1))
    {
      v3 = 1904;
    }

    else
    {
      v3 = 1080;
    }

    v4 = 1920;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceScreenDimensionWidth", v4);
  if (IntValueForKey)
  {
    v6 = IntValueForKey;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316162;
        v21 = v7;
        v22 = 2080;
        v23 = "[VCHardwareSettingsEmbedded _initializeScreenDimension]";
        v24 = 1024;
        v25 = 259;
        v26 = 2112;
        *v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
        *&v27[8] = 2112;
        v28 = @"forceScreenDimensionWidth";
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing 'width' portion of screen dimensions to %@ as specified by the '%@' preference", &v20, 0x30u);
      }
    }
  }

  else
  {
    LODWORD(v6) = MGGetSInt32Answer();
  }

  v9 = VCDefaults_GetIntValueForKey(@"forceScreenDimensionHeight", v3);
  if (v9)
  {
    v10 = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
        v20 = 136316162;
        v21 = v11;
        v22 = 2080;
        v23 = "[VCHardwareSettingsEmbedded _initializeScreenDimension]";
        v24 = 1024;
        v25 = 266;
        v26 = 2112;
        *v27 = v13;
        *&v27[8] = 2112;
        v28 = @"forceScreenDimensionHeight";
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing 'height' portion of screen dimensions to %@ as specified by the '%@' preference", &v20, 0x30u);
      }
    }
  }

  else
  {
    LODWORD(v10) = MGGetSInt32Answer();
  }

  if (v6 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v6 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v6;
  }

  self->_screenWidth = v14;
  self->_screenHeight = v15;
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      screenWidth = self->_screenWidth;
      screenHeight = self->_screenHeight;
      v20 = 136316162;
      v21 = v16;
      v22 = 2080;
      v23 = "[VCHardwareSettingsEmbedded _initializeScreenDimension]";
      v24 = 1024;
      v25 = 279;
      v26 = 1024;
      *v27 = screenWidth;
      *&v27[4] = 1024;
      *&v27[6] = screenHeight;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d screenWidth=%d, screenHeight=%d", &v20, 0x28u);
    }
  }
}

- (NSString)deviceName
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_deviceName)
  {
    self->_deviceName = MGCopyAnswer();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        deviceName = self->_deviceName;
        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCHardwareSettingsEmbedded deviceName]";
        v11 = 1024;
        v12 = 285;
        v13 = 2112;
        v14 = deviceName;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _deviceName=%@", &v7, 0x26u);
      }
    }
  }

  return self->_deviceName;
}

- (id)marketingName
{
  result = self->_marketingName;
  if (!result)
  {
    result = MGCopyAnswer();
    self->_marketingName = result;
  }

  return result;
}

- (BOOL)hasBaseband
{
  if (!self->_hasBasebandInitialized)
  {
    self->_hasBaseband = MGGetBoolAnswer();
    self->_hasBasebandInitialized = 1;
  }

  return self->_hasBaseband;
}

- (BOOL)isSpatialAudioSupportedIPhone
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 33024)
  {
    if (v2 <= 35151 || v2 != 35152 && v2 != 35168)
    {
      return 1;
    }
  }

  else
  {
    if ((v2 - 0x8000) <= 0x30)
    {
      if (((1 << v2) & 0x210009) != 0)
      {
        return result;
      }

      if (v2 == 32800 || v2 == 32816)
      {
        return 1;
      }
    }

    if (v2 != 28672)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isSpatialAudioSupportedAppleTV
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  if (v2 > 32799)
  {
    return 1;
  }

  v3 = 0;
  if (v2 != 28672 && v2 != 32785)
  {
    return 1;
  }

  return v3;
}

- (BOOL)isSpatialAudioSupportedIPad
{
  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v3 <= 32799)
  {
    if (v3 <= 32770)
    {
      if ((v3 - 28672) >= 2 && (v3 - 0x8000) >= 2)
      {
        return 1;
      }

      return result;
    }

    if (v3 == 32771)
    {
      return result;
    }

    if (v3 == 32784)
    {
      v6 = *&self->_productType;
      if (v6 == -1)
      {
        v6 = MGGetProductType();
        *&self->_productType = v6;
      }

      return v6 == 3645319985 || v6 == 228444038;
    }

    v5 = 32785;
    goto LABEL_16;
  }

  if (v3 <= 33026 || v3 <= 35156)
  {
    return 1;
  }

  if (v3 != 35157)
  {
    v5 = 35168;
LABEL_16:
    if (v3 != v5)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)shouldEnableLowPowerMode
{
  v2 = +[VCHardwareSettingsEmbedded deviceClass]== 1;

  return VCDefaults_GetBoolValueForKey(@"forceEnableLowPowerMode", v2);
}

- (BOOL)shouldDisable1080pForOneToOne
{
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"shouldDisable1080pForOneToOne", 0);
  if (BoolValueForKey)
  {

    LOBYTE(BoolValueForKey) = [(VCHardwareSettingsEmbedded *)self shouldEnableLowPowerMode];
  }

  return BoolValueForKey;
}

- (BOOL)shouldEnforceBinnedCameraFormatSelection
{
  if (+[VCHardwareSettingsEmbedded deviceClass]!= 1)
  {
    return 0;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v3 > 35151)
  {
    if (v3 != 35152 && v3 != 35168)
    {
      return 1;
    }
  }

  else if (((v3 - 0x8000) > 0x30 || ((1 << v3) & 0x1000100210009) == 0) && v3 != 28672)
  {
    return 1;
  }

  return result;
}

- (BOOL)supportsPSVoiceOnAP
{
  v15 = *MEMORY[0x1E69E9840];
  if (supportsPSVoiceOnAP_onceToken != -1)
  {
    [VCHardwareSettingsEmbedded supportsPSVoiceOnAP];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCHardwareSettingsEmbedded supportsPSVoiceOnAP]";
      v9 = 1024;
      v10 = 452;
      v11 = 1024;
      v12 = supportsPSVoiceOnAP_supportsPSVoiceOnAP;
      v13 = 1024;
      v14 = supportsPSVoiceOnAP_radioVendor;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d supportsPSVoiceOnAP=%d, radioVendor=%u", &v5, 0x28u);
    }
  }

  return supportsPSVoiceOnAP_supportsPSVoiceOnAP;
}

uint64_t __49__VCHardwareSettingsEmbedded_supportsPSVoiceOnAP__block_invoke()
{
  result = TelephonyRadiosGetRadioVendor();
  supportsPSVoiceOnAP_radioVendor = result;
  if (result == 3)
  {
    supportsPSVoiceOnAP_supportsPSVoiceOnAP = 1;
  }

  return result;
}

- (BOOL)supportsOptimizedHandoversForTelephony
{
  if ([(VCHardwareSettingsEmbedded *)self supportsPSVoiceOnAP]|| VCCarrierBundle_GetPSVoiceOnAPEnabled())
  {
    v2 = VCFeatureFlagManager_UseOptimizedTelephonyHandovers();
  }

  else
  {
    v2 = 0;
  }

  return VCDefaults_GetBoolValueForKey(@"enableOptimizedTelephonyHandovers", v2);
}

- (BOOL)isSpatialAudioSupported
{
  v3 = +[VCHardwareSettingsEmbedded deviceClass];
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      return v3 == 8;
    }

    return [(VCHardwareSettingsEmbedded *)self isSpatialAudioSupportedIPad];
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {

        return [(VCHardwareSettingsEmbedded *)self isSpatialAudioSupportedIPod];
      }

      return 0;
    }

    return [(VCHardwareSettingsEmbedded *)self isSpatialAudioSupportedIPhone];
  }
}

- (BOOL)isCaptureSIFRPreferred
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = _os_feature_enabled_impl();
  if (self->_deviceClass == 4)
  {
    return 0;
  }

  v5 = v3;
  v6 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded chipId];
  v7 = 0;
  if ((v6 - 0x8000) > 0x27 || ((1 << v6) & 0x810023000BLL) == 0)
  {
    v9 = (v6 - 35152) > 0x10 || ((1 << (v6 - 80)) & 0x10021) == 0;
    if (v9 && (v6 - 28672) >= 2)
    {
      v7 = 1;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCHardwareSettingsEmbedded isCaptureSIFRPreferred]";
      v16 = 1024;
      v17 = 530;
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d featureFlagEnabled = %d, hardwareSupport = %d", &v12, 0x28u);
    }
  }

  return v5 & v7;
}

- (unsigned)screenWidth
{
  result = self->_screenWidth;
  if (!result)
  {
    [(VCHardwareSettingsEmbedded *)self _initializeScreenDimension];
    return self->_screenWidth;
  }

  return result;
}

- (unsigned)screenWidthForDisplayID:(unsigned int)a3
{
  v4 = [(VCHardwareSettingsEmbedded *)self screenWidth];
  if (!a3 && +[VCHardwareSettings deviceClass]!= 8)
  {
    v5 = [MEMORY[0x1E6979328] mainDisplay];
    if (v5)
    {
      v6 = v5;
      if ([objc_msgSend(v5 "currentMode")])
      {
        return [objc_msgSend(v6 "currentMode")];
      }
    }
  }

  return v4;
}

- (unsigned)screenHeight
{
  result = self->_screenHeight;
  if (!result)
  {
    [(VCHardwareSettingsEmbedded *)self _initializeScreenDimension];
    return self->_screenHeight;
  }

  return result;
}

- (unsigned)screenHeightForDisplayID:(unsigned int)a3
{
  v4 = [(VCHardwareSettingsEmbedded *)self screenHeight];
  if (!a3 && +[VCHardwareSettings deviceClass]!= 8)
  {
    v5 = [MEMORY[0x1E6979328] mainDisplay];
    if (v5)
    {
      v6 = v5;
      if ([objc_msgSend(v5 "currentMode")])
      {
        return [objc_msgSend(v6 "currentMode")];
      }
    }
  }

  return v4;
}

- (double)previewPreferredAspectRatio
{
  deviceClass = self->_deviceClass;
  v3 = deviceClass == 8 || deviceClass == 3;
  result = 1.77777778;
  if (v3)
  {
    return 1.33333333;
  }

  return result;
}

- (unint64_t)maxScreenEncodingSizeSupported
{
  v3 = 921600;
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 5603328;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  if (((v4 - 0x8000) > 0x20 || ((1 << v4) & 0x10023000BLL) == 0) && ((v4 - 35152) > 0x10 || ((1 << (v4 - 80)) & 0x10021) == 0) && (v4 - 28672) >= 2)
  {
    return 5603328;
  }

  return v3;
}

- (BOOL)allowScreenShareResolutionModuloAdjustment
{
  if (+[VCHardwareSettingsEmbedded deviceClass]!= 1)
  {
    return 0;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  if ((v3 - 0x8000) <= 0x20 && ((1 << v3) & 0x10023000BLL) != 0)
  {
    return 0;
  }

  if ((v3 - 35152) > 0x10)
  {
    return (v3 - 28672) >= 2;
  }

  v4 = 0;
  if (((1 << (v3 - 80)) & 0x10021) == 0)
  {
    return (v3 - 28672) >= 2;
  }

  return v4;
}

- (unsigned)maxFrameRateSupportedScreenShare
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 30;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 30;
  if (((v4 - 0x8000) > 0x20 || ((1 << v4) & 0x10023000BLL) == 0) && ((v4 - 35152) > 0x10 || ((1 << (v4 - 80)) & 0x10021) == 0))
  {
    if ((v4 - 28672) >= 2)
    {
      return 60;
    }

    else
    {
      return 30;
    }
  }

  return result;
}

- (unsigned)maxFrameRateSupportedBackgroundBlur
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 1)
  {
    v3 = [(VCHardwareSettingsEmbedded *)self chipId];
    result = 24;
    if (v3 > 35151)
    {
      if (v3 != 35152 && v3 != 35168)
      {
        return 60;
      }
    }

    else if (((v3 - 0x8000) > 0x30 || ((1 << v3) & 0x1000100210009) == 0) && v3 != 28672)
    {
      return 60;
    }
  }

  else if (self->_deviceClass == 4)
  {
    return 24;
  }

  else
  {
    return 60;
  }

  return result;
}

+ (int64_t)deviceClass
{
  v18 = *MEMORY[0x1E69E9840];
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceDeviceClass", 0xFFFFFFFFLL);
  if (IntValueForKey == -1)
  {
    v6 = MGGetSInt32Answer() - 1;
    if (v6 > 0xA)
    {
      return -1;
    }

    else
    {
      return qword_1DBD4E9B8[v6];
    }
  }

  else
  {
    v3 = IntValueForKey;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "+[VCHardwareSettingsEmbedded deviceClass]";
        v12 = 1024;
        v13 = 695;
        v14 = 2112;
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
        v16 = 2112;
        v17 = @"forceDeviceClass";
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing device class to %@ as specified by the '%@' preference", &v8, 0x30u);
      }
    }
  }

  return v3;
}

- (int64_t)deviceClass
{
  v2 = self;
  LODWORD(self) = *(self + 56);
  if (!self)
  {
    LODWORD(self) = +[VCHardwareSettingsEmbedded deviceClass];
    *(v2 + 56) = self;
  }

  return self;
}

- (int64_t)chipId
{
  result = self->_chipId;
  if (!result)
  {
    result = MGGetSInt64Answer();
    self->_chipId = result;
  }

  return result;
}

- (int64_t)videoEncoderType
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 2;
  }

  result = self->_videoEncoderType;
  if (!result)
  {
    v4 = [(VCHardwareSettingsEmbedded *)self chipId];
    if ((v4 - 35152) <= 0x10 && ((1 << (v4 - 80)) & 0x10021) != 0)
    {
      result = 1;
    }

    else
    {
      result = 2;
    }

    self->_videoEncoderType = result;
  }

  return result;
}

- (BOOL)supportsMultiway720pStream
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  if (!VCDefaults_GetBoolValueForKey(@"supportsMultiway720pStream", 1))
  {
    return 0;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  if ((v4 - 0x8000) <= 0x11 && ((1 << v4) & 0x3000B) != 0)
  {
    return 0;
  }

  if ((v4 - 35152) > 0x10)
  {
    return (v4 - 28672) >= 2;
  }

  v3 = 0;
  if (((1 << (v4 - 80)) & 0x10021) == 0)
  {
    return (v4 - 28672) >= 2;
  }

  return v3;
}

- (BOOL)supportsMultiway1080pStreamEmbeddedOS
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 33024)
  {
    if (((v2 - 35152) > 0x10 || ((1 << (v2 - 80)) & 0x10021) == 0) && v2 != 33025 && v2 != 33027)
    {
      return 1;
    }
  }

  else if (((v2 - 0x8000) > 0x30 || ((1 << v2) & 0x100810023000BLL) == 0) && (v2 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)deviceSupportsMultiway1080p
{
  v3 = +[VCHardwareSettingsEmbedded deviceClass];
  if (v3 > 7)
  {
    return 0;
  }

  if (((1 << v3) & 0xCE) != 0)
  {

    return [(VCHardwareSettingsEmbedded *)self supportsMultiway1080pStreamEmbeddedOS];
  }

  if (v3 != 4)
  {
    return 0;
  }

  return [(VCHardwareSettingsEmbedded *)self supportsMultiway1080pStreamATV];
}

- (BOOL)supportsMultiway1080pStream
{
  v2 = [(VCHardwareSettingsEmbedded *)self deviceSupportsMultiway1080p];

  return VCDefaults_GetBoolValueForKey(@"supportsMultiway1080pStream", v2);
}

- (unsigned)maxOneToOneFramerateSupported
{
  v2 = +[VCHardwareSettingsEmbedded deviceClass];
  if ((v2 - 3) > 5)
  {
    return 30;
  }

  else
  {
    return dword_1DBD4EA10[v2 - 3];
  }
}

- (unsigned)maxMultiwayFramerateSupported
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 30;
  }

  result = VCDefaults_GetIntValueForKey(@"MaxMultiwayFramerate", 0xFFFFFFFFLL);
  if (result == -1)
  {
    v4 = [(VCHardwareSettingsEmbedded *)self chipId];
    result = 15;
    if (v4 > 35156)
    {
      if (v4 != 35157 && v4 != 35168)
      {
        return 30;
      }
    }

    else if (((v4 - 0x8000) > 0x10 || ((1 << v4) & 0x1000B) == 0) && (v4 - 28672) >= 2)
    {
      return 30;
    }
  }

  return result;
}

- (unsigned)maxDisplayRefreshRate
{
  v2 = 60;
  if (+[VCHardwareSettingsEmbedded deviceClass]!= 8)
  {
    if (MGGetBoolAnswer())
    {
      return 120;
    }

    else
    {
      return 60;
    }
  }

  return v2;
}

- (unsigned)maxActiveVideoEncoders
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 6;
  }

  result = [+[VCDefaults sharedInstance](VCDefaults maxActiveVideoEncoders];
  if (result == -1)
  {
    v4 = [(VCHardwareSettingsEmbedded *)self chipId];
    v5 = v4;
    if (v4 <= 35156)
    {
      if ((v4 - 0x8000) <= 0x11)
      {
        if (((1 << v4) & 0xB) != 0)
        {
          return 3;
        }

        if (((1 << v4) & 0x30000) != 0)
        {
          return 5;
        }
      }

      if ((v4 - 28672) < 2)
      {
        return 3;
      }

      return 6;
    }

    result = 1;
    if (v5 != 35157 && v5 != 35168)
    {
      return 6;
    }
  }

  return result;
}

- (unsigned)maxActiveVideoDecoders
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 15;
  }

  v3 = [+[VCDefaults sharedInstance](VCDefaults maxActiveVideoDecoders];
  if (v3 != -1)
  {
    return v3;
  }

  v5 = [(VCHardwareSettingsEmbedded *)self chipId];
  if (v5 <= 32788)
  {
    if (v5 > 32770)
    {
      if ((v5 - 32784) < 2)
      {
        return 9;
      }

      if (v5 != 32771)
      {
        goto LABEL_25;
      }
    }

    else if ((v5 - 28672) >= 2 && (v5 - 0x8000) >= 2)
    {
LABEL_25:
      v6 = 24;
      goto LABEL_26;
    }

    return 4;
  }

  if (v5 <= 32815)
  {
    if (v5 == 32789)
    {
      v7 = 10;
      v6 = 10;
      goto LABEL_27;
    }

    if (v5 != 32800 && v5 != 32807)
    {
      goto LABEL_25;
    }

    v6 = 12;
LABEL_26:
    v7 = 11;
LABEL_27:
    if (+[VCHardwareSettingsEmbedded deviceClass]== 3)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  if (v5 == 32816)
  {
    v6 = 16;
    goto LABEL_26;
  }

  v3 = 1;
  if (v5 != 35157 && v5 != 35168)
  {
    goto LABEL_25;
  }

  return v3;
}

- (unsigned)maxActiveScreenEncoders
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 1;
  if (v4 > 35156)
  {
    if (v4 != 35157 && v4 != 35168)
    {
      return 2;
    }
  }

  else if (((v4 - 0x8000) > 0x20 || ((1 << v4) & 0x10023000BLL) == 0) && (v4 - 28672) >= 2)
  {
    return 2;
  }

  return result;
}

- (BOOL)supportsCompressedPixelFormat
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 33024)
  {
    if ((v2 - 33025) > 0x11 || ((1 << (v2 - 1)) & 0x28005) == 0)
    {
      v4 = v2 - 35152;
      if (v4 > 0x10 || ((1 << v4) & 0x10021) == 0)
      {
        return 1;
      }
    }
  }

  else if (((v2 - 0x8000) > 0x30 || ((1 << v2) & 0x100810023000BLL) == 0) && (v2 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)hasAppleNeuralEngine
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__VCHardwareSettingsEmbedded_hasAppleNeuralEngine__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  if (hasAppleNeuralEngine_onceToken != -1)
  {
    dispatch_once(&hasAppleNeuralEngine_onceToken, v4);
  }

  return self->_hasAppleNeuralEngine;
}

uint64_t __50__VCHardwareSettingsEmbedded_hasAppleNeuralEngine__block_invoke(uint64_t a1)
{
  result = MGGetBoolAnswer();
  *(*(a1 + 32) + 88) = result;
  return result;
}

- (BOOL)isCaptionsSupported
{
  if (![(VCHardwareSettingsEmbedded *)self hasAppleNeuralEngine])
  {
    return 0;
  }

  if (+[VCHardwareSettingsEmbedded deviceClass]!= 1)
  {
    return +[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") == 3 || +[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") == 4 || +[VCHardwareSettingsEmbedded deviceClass]== 8;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  if ((v3 - 0x8000) <= 0x15 && ((1 << v3) & 0x23000B) != 0)
  {
    return 0;
  }

  if ((v3 - 35152) > 0x10)
  {
    return (v3 - 28672) >= 2;
  }

  v4 = 0;
  if (((1 << (v3 - 80)) & 0x10021) == 0)
  {
    return (v3 - 28672) >= 2;
  }

  return v4;
}

- (BOOL)isVoiceProcessingAt24KSupported
{
  if (+[VCHardwareSettingsEmbedded deviceClass]!= 1)
  {
    return 0;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v3 > 33024)
  {
    if (v3 != 33025 && v3 != 35152 && v3 != 35168)
    {
      return 1;
    }
  }

  else if (((v3 - 0x8000) > 0x30 || ((1 << v3) & 0x1000100210009) == 0) && v3 != 28672)
  {
    return 1;
  }

  return result;
}

- (BOOL)supportsHEIFEncoding
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  if ((v4 - 0x8000) <= 3 && v4 != 32770)
  {
    return 0;
  }

  if ((v4 - 35152) > 0x10)
  {
    return (v4 - 28672) >= 2;
  }

  v3 = 0;
  if (((1 << (v4 - 80)) & 0x10021) == 0)
  {
    return (v4 - 28672) >= 2;
  }

  return v3;
}

- (BOOL)supportsMVHEVCDecode
{
  v2 = +[VCHardwareSettingsEmbedded deviceClass];
  if (VTIsStereoMVHEVCDecodeSupported())
  {
    v3 = v2 == 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return VCDefaults_GetBoolValueForKey(@"forceEnableMVHEVCSupport", v4);
}

- (unsigned)audioPacketLossConcealmentAlgorithmAACELD
{
  if (+[VCHardwareSettingsEmbedded deviceClass]!= 6)
  {
    return 6;
  }

  if ([(VCHardwareSettingsEmbedded *)self chipId]== 28674)
  {
    return 3;
  }

  return 4;
}

- (BOOL)isRemoteCameraSenderSupportediPad
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 35156)
  {
    if (v2 != 35157 && v2 != 35168)
    {
      return 1;
    }
  }

  else if (((v2 - 0x8000) > 3 || v2 == 32770) && (v2 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)isRemoteCameraSenderSupportediPhone
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  if (v3 > 32815)
  {
    if (v3 == 32816 || v3 == 33040)
    {
      return 1;
    }

    v5 = 33025;
LABEL_8:
    if (v3 != v5 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCHardwareSettingsEmbedded isRemoteCameraSenderSupportediPhone]";
        v13 = 1024;
        v14 = 1192;
        v15 = 2048;
        v16 = [(VCHardwareSettingsEmbedded *)self chipId];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown chipID 0x%llx", &v9, 0x26u);
      }
    }

    return 1;
  }

  v4 = 0;
  if (v3 != 32784 && v3 != 32789)
  {
    v5 = 32800;
    goto LABEL_8;
  }

  return v4;
}

- (BOOL)isRemoteCameraSenderSupported
{
  v3 = +[VCHardwareSettingsEmbedded deviceClass];
  switch(v3)
  {
    case 4:

      return MGGetBoolAnswer();
    case 3:

      return [(VCHardwareSettingsEmbedded *)self isRemoteCameraSenderSupportediPad];
    case 1:

      return [(VCHardwareSettingsEmbedded *)self isRemoteCameraSenderSupportediPhone];
    default:
      return 0;
  }
}

- (BOOL)isSecondDisplaySupportEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  if (+[VCHardwareSettingsEmbedded deviceClass]!= 3)
  {
    return 0;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v4 > 33026)
  {
    if (v4 == 35168 || v4 == 35157)
    {
      return result;
    }

    if (v4 != 33027)
    {
      goto LABEL_15;
    }

    return 1;
  }

  if ((v4 - 0x8000) <= 0x27)
  {
    if (((1 << v4) & 0x810003000ALL) == 0)
    {
      if (v4 == 0x8000)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 1;
  }

LABEL_8:
  if ((v4 - 28672) >= 2)
  {
LABEL_15:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCHardwareSettingsEmbedded isSecondDisplaySupportEnabled]";
        v11 = 1024;
        v12 = 1231;
        v13 = 2048;
        v14 = [(VCHardwareSettingsEmbedded *)self chipId];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown chipID 0x%llx", &v7, 0x26u);
      }
    }

    return 1;
  }

  return result;
}

- (BOOL)isHEVC444DecodeSupported
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v3 > 33024)
  {
    if (v3 <= 35156)
    {
      if (v3 == 33025 || v3 == 33027)
      {
        return 1;
      }

      goto LABEL_16;
    }

    if (v3 != 35157 && v3 != 35168)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v3 - 0x8000) > 0x30)
    {
      goto LABEL_12;
    }

    if (((1 << v3) & 0x1008100230000) != 0)
    {
      return 1;
    }

    if (((1 << v3) & 0xB) == 0)
    {
LABEL_12:
      if ((v3 - 28672) >= 2)
      {
LABEL_16:
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v7 = 136315906;
            v8 = v5;
            v9 = 2080;
            v10 = "[VCHardwareSettingsEmbedded isHEVC444DecodeSupported]";
            v11 = 1024;
            v12 = 1261;
            v13 = 2048;
            v14 = [(VCHardwareSettingsEmbedded *)self chipId];
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown chipID 0x%llx", &v7, 0x26u);
          }
        }

        return 1;
      }
    }
  }

  return result;
}

- (BOOL)canDo1080p
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v4 > 32788)
  {
    if (v4 <= 32815)
    {
      if (v4 == 32800)
      {
        return +[VCHardwareSettingsEmbedded deviceClass]!= 3;
      }

      return 1;
    }

    if ((v4 - 35152) > 0x10 || ((1 << (v4 - 80)) & 0x10021) == 0)
    {
      return 1;
    }
  }

  else if (v4 > 32770)
  {
    if (v4 != 32771)
    {
      if (v4 == 32784)
      {
        return +[VCHardwareSettingsEmbedded deviceClass]== 1;
      }

      return 1;
    }
  }

  else if ((v4 - 28672) >= 2 && (v4 - 0x8000) >= 2)
  {
    return 1;
  }

  return result;
}

- (unsigned)maxRemoteParticipants30fps
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 32;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 4;
  if (((v4 - 0x8000) > 0x15 || ((1 << v4) & 0x23000B) == 0) && ((v4 - 35152) > 0x10 || ((1 << (v4 - 80)) & 0x10021) == 0))
  {
    if ((v4 - 28672) >= 2)
    {
      return 32;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (unsigned)maxFpsCameraCaptureDuringSharing
{
  if (+[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") == 8 || +[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") == 3 && +[VCHardwareSettings isAppleSilicon])
  {
    return 30;
  }

  else
  {
    return 15;
  }
}

- (void)addPixelFormat
{
  v5 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F579A518];
  [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F579A530];
  v4.receiver = self;
  v4.super_class = VCHardwareSettingsEmbedded;
  if ([(VCHardwareSettings *)&v4 vcpSupportsHEVCEncoder])
  {
    [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F579A500];
  }

  if ([(VCHardwareSettingsEmbedded *)self isSecondDisplaySupportEnabled]&& [(VCHardwareSettingsEmbedded *)self isHEVC444DecodeSupported])
  {
    [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F579A548];
LABEL_7:
    v3 = &unk_1F579A560;
LABEL_12:
    [(NSMutableSet *)self->super._pixelFormatCollections addObject:v3];
    return;
  }

  if ([(VCHardwareSettingsEmbedded *)self deviceClass]== 1)
  {
    goto LABEL_7;
  }

  if ([(VCHardwareSettingsEmbedded *)self deviceClass]== 4 && [(VCHardwareSettingsEmbedded *)self isHDRSupportedAppleTV]|| [(VCHardwareSettingsEmbedded *)self deviceClass]== 8)
  {
    v3 = &unk_1F579A578;
    goto LABEL_12;
  }
}

- (NSArray)supportedVideoPayloads
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(VCHardwareSettingsEmbedded *)self deviceClass];
  if ((v4 - 1) >= 4)
  {
    if (v4 == 6)
    {
      v5 = &unk_1F579A5A8;
      goto LABEL_8;
    }

    if (v4 != 8)
    {
      return v3;
    }
  }

  [(NSArray *)v3 addObject:&unk_1F579A590];
  [(NSArray *)v3 addObject:&unk_1F579A5A8];
  if ([(VCHardwareSettings *)self supportHEVC])
  {
    v5 = &unk_1F579A5C0;
LABEL_8:
    [(NSArray *)v3 addObject:v5];
  }

  return v3;
}

- (BOOL)limitCameraDownlinkBitrateDuringSharing
{
  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 1;
  if (v4 > 33024)
  {
    if (((v4 - 35152) > 0x10 || ((1 << (v4 - 80)) & 0x10021) == 0) && v4 != 33025)
    {
      return +[VCHardwareSettingsEmbedded deviceClass]!= 3;
    }
  }

  else if (((v4 - 0x8000) > 0x30 || ((1 << v4) & 0x100810023000BLL) == 0) && (v4 - 28672) >= 2)
  {
    return +[VCHardwareSettingsEmbedded deviceClass]!= 3;
  }

  return result;
}

- (BOOL)supportsDedicatedSystemAudioStream
{
  if (![(VCHardwareSettingsEmbedded *)self supportsSystemAudioTap])
  {
    return 0;
  }

  if (+[VCHardwareSettingsEmbedded deviceClass]== 8)
  {
    return 1;
  }

  v4 = [(VCHardwareSettingsEmbedded *)self chipId];
  if ((v4 - 0x8000) <= 0x20 && ((1 << v4) & 0x10023000BLL) != 0)
  {
    return 0;
  }

  if ((v4 - 35152) > 0x10)
  {
    return (v4 - 28672) >= 2;
  }

  v3 = 0;
  if (((1 << (v4 - 80)) & 0x10021) == 0)
  {
    return (v4 - 28672) >= 2;
  }

  return v3;
}

- (BOOL)disableMLScalarDuringSharing
{
  if (+[VCHardwareSettingsEmbedded deviceClass]!= 8)
  {
    [(VCHardwareSettingsEmbedded *)self chipId];
  }

  return 1;
}

- (int64_t)screenShareCapabilities
{
  v3 = +[VCHardwareSettingsEmbedded deviceClass];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {

      return [(VCHardwareSettingsEmbedded *)self screenShareCapabilitiesIPhone];
    }

    else
    {
      if (v3 != 2)
      {
        return 0;
      }

      return [(VCHardwareSettingsEmbedded *)self screenShareCapabilitiesIPod];
    }
  }

  else
  {
    switch(v3)
    {
      case 3:

        return [(VCHardwareSettingsEmbedded *)self screenShareCapabilitiesIPad];
      case 4:

        return [(VCHardwareSettingsEmbedded *)self screenShareCapabilitiesATV];
      case 8:
        return 2;
      default:
        return 0;
    }
  }
}

- (int64_t)screenShareCapabilitiesIPhone
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 1;
  if (v2 > 35151)
  {
    if (v2 != 35152 && v2 != 35168)
    {
      return 2;
    }
  }

  else if (((v2 - 0x8000) > 0x30 || ((1 << v2) & 0x1000100210009) == 0) && v2 != 28672)
  {
    return 2;
  }

  return result;
}

- (int64_t)screenShareCapabilitiesIPad
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 < 0x8000)
  {
    if (v2 != 28672)
    {
      if (v2 == 28673)
      {
        return 1;
      }

      return 2;
    }
  }

  else
  {
    if ((v2 - 0x8000) <= 0x20 && ((1 << v2) & 0x10003000BLL) != 0)
    {
      return 1;
    }

    if (v2 != 35157 && v2 != 35168)
    {
      return 2;
    }
  }

  return result;
}

- (int64_t)screenShareCapabilitiesATV
{
  if (MGGetBoolAnswer())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isViewPointCorrectionSupportedNoDispatch
{
  v29 = *MEMORY[0x1E69E9840];
  if (![(VCHardwareSettingsEmbedded *)self hasAppleNeuralEngine])
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    LODWORD(v3) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v3)
    {
      return v3;
    }

    *buf = 136315650;
    v20 = v13;
    v21 = 2080;
    v22 = "[VCHardwareSettingsEmbedded isViewPointCorrectionSupportedNoDispatch]";
    v23 = 1024;
    v24 = 1618;
    v10 = " [%s] %s:%d No AppleNeuralEngine";
LABEL_12:
    v11 = v14;
    v12 = 28;
    goto LABEL_16;
  }

  v3 = +[VCHardwareSettingsEmbedded deviceClass];
  if (v3 == 1)
  {
    return v3;
  }

  v4 = v3;
  if (v3 != 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      LODWORD(v3) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (v3)
      {
        *buf = 136315906;
        v20 = v15;
        v21 = 2080;
        v22 = "[VCHardwareSettingsEmbedded isViewPointCorrectionSupportedNoDispatch]";
        v23 = 1024;
        v24 = 1615;
        v25 = 2048;
        v26 = v4;
        v10 = " [%s] %s:%d VCDeviceClassType=%ld is not supported";
        v11 = v16;
        v12 = 38;
        goto LABEL_16;
      }

      return v3;
    }

LABEL_17:
    LOBYTE(v3) = 0;
    return v3;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    LODWORD(v3) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v3)
    {
      return v3;
    }

    *buf = 136315650;
    v20 = v17;
    v21 = 2080;
    v22 = "[VCHardwareSettingsEmbedded isViewPointCorrectionSupportedNoDispatch]";
    v23 = 1024;
    v24 = 1594;
    v10 = " [%s] %s:%d iPad feature flag is off";
    goto LABEL_12;
  }

  v5 = [(VCHardwareSettingsEmbedded *)self productType];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F579A5D8, &unk_1F579A5F0, &unk_1F579A608, &unk_1F579A620, &unk_1F579A638, &unk_1F579A650, &unk_1F579A668, &unk_1F579A680, &unk_1F579A698, &unk_1F579A6B0, &unk_1F579A6C8, &unk_1F579A6E0, &unk_1F579A6F8, &unk_1F579A710, &unk_1F579A728, &unk_1F579A740, &unk_1F579A758, &unk_1F579A770, &unk_1F579A788, &unk_1F579A7A0, &unk_1F579A7B8, &unk_1F579A7D0, &unk_1F579A7E8, &unk_1F579A800, &unk_1F579A818, &unk_1F579A830, &unk_1F579A848, &unk_1F579A860, &unk_1F579A878, &unk_1F579A890, &unk_1F579A8A8, &unk_1F579A8C0, &unk_1F579A8D8, &unk_1F579A8F0, &unk_1F579A908, &unk_1F579A920, &unk_1F579A938, &unk_1F579A950, 0}];
  if (![v6 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v5)}])
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_17;
  }

  v7 = VRTraceErrorLogLevelToCSTR();
  v8 = *MEMORY[0x1E6986650];
  LODWORD(v3) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    deviceName = self->_deviceName;
    *buf = 136316162;
    v20 = v7;
    v21 = 2080;
    v22 = "[VCHardwareSettingsEmbedded isViewPointCorrectionSupportedNoDispatch]";
    v23 = 1024;
    v24 = 1610;
    v25 = 2048;
    v26 = v5;
    v27 = 2112;
    v28 = deviceName;
    v10 = " [%s] %s:%d iPad productType=0x%lx, model=%@ is not supported.";
    v11 = v8;
    v12 = 48;
LABEL_16:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_17;
  }

  return v3;
}

- (BOOL)isViewPointCorrectionSupported
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__VCHardwareSettingsEmbedded_isViewPointCorrectionSupported__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  if (isViewPointCorrectionSupported_onceToken != -1)
  {
    dispatch_once(&isViewPointCorrectionSupported_onceToken, v3);
  }

  return isViewPointCorrectionSupported_result;
}

uint64_t __60__VCHardwareSettingsEmbedded_isViewPointCorrectionSupported__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isViewPointCorrectionSupportedNoDispatch];
  isViewPointCorrectionSupported_result = result;
  return result;
}

- (BOOL)isSmartBrakeSupportedIPhone
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  v4 = (v2 - 0x8000) > 0x27 || ((1 << v2) & 0x810023000BLL) == 0;
  if (v4 && ((v2 - 35152) > 0x10 || ((1 << (v2 - 80)) & 0x10021) == 0))
  {
    return (v2 - 28672) >= 2;
  }

  return result;
}

- (BOOL)isSmartBrakeSupportedIPad
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 35156)
  {
    if (v2 != 35157 && v2 != 35168)
    {
      return 1;
    }
  }

  else if (((v2 - 0x8000) > 0x20 || ((1 << v2) & 0x10003000BLL) == 0) && (v2 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)isSmartBrakeSupportedATV
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  if (v2 > 32799)
  {
    return 1;
  }

  v3 = 0;
  if (v2 != 28672 && v2 != 32785)
  {
    return 1;
  }

  return v3;
}

- (BOOL)isSmartBrakeSupported
{
  v3 = [(VCHardwareSettingsEmbedded *)self deviceClass];
  switch(v3)
  {
    case 4:

      return [(VCHardwareSettingsEmbedded *)self isSmartBrakeSupportedATV];
    case 3:

      return [(VCHardwareSettingsEmbedded *)self isSmartBrakeSupportedIPad];
    case 1:

      return [(VCHardwareSettingsEmbedded *)self isSmartBrakeSupportedIPhone];
    default:
      return 0;
  }
}

- (BOOL)isExternalCameraSupported
{
  if ([(VCHardwareSettingsEmbedded *)self deviceClass]!= 3)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)isMLEnhanceOneToOneSupported
{
  if ([(VCHardwareSettingsEmbedded *)self deviceClass]!= 3)
  {
    return 0;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v3 > 33024)
  {
    if (((v3 - 35152) > 0x10 || ((1 << (v3 - 80)) & 0x10021) == 0) && v3 != 33025 && v3 != 33040)
    {
      return 1;
    }
  }

  else if (((v3 - 0x8000) > 0x30 || ((1 << v3) & 0x100810023000BLL) == 0) && (v3 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (unsigned)maxHighTierMLEnhanceParticipants
{
  v3 = [(VCHardwareSettingsEmbedded *)self deviceClass];
  if (v3 != 1)
  {
    if (v3 != 4)
    {
      return 2;
    }

    v4 = [(VCHardwareSettingsEmbedded *)self chipId];
    result = 1;
    if (((v4 - 0x8000) > 0x20 || ((1 << v4) & 0x10023000BLL) == 0) && ((v4 - 35152) > 0x10 || ((1 << (v4 - 80)) & 0x10021) == 0))
    {
      if ((v4 - 28672) >= 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return result;
  }

  v6 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v6 <= 33024)
  {
    if ((v6 - 0x8000) <= 0x30 && ((1 << v6) & 0x1000100210009) != 0 || v6 == 28672)
    {
      return result;
    }

    return 1;
  }

  if (v6 > 35151)
  {
    if (v6 == 35152)
    {
      return result;
    }

    v7 = 35168;
  }

  else
  {
    if (v6 == 33025)
    {
      return result;
    }

    v7 = 33040;
  }

  if (v6 != v7)
  {
    return 1;
  }

  return result;
}

- (BOOL)supportsOutOfProcessDecoding
{
  v3 = [(VCHardwareSettingsEmbedded *)self deviceClass];
  LOBYTE(v4) = 1;
  if (v3 <= 1)
  {
    if (v3 == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v4)
        {
          return v4;
        }

        [(VCHardwareSettingsEmbedded *)v5 supportsOutOfProcessDecoding];
      }

      goto LABEL_22;
    }

    if (v3)
    {
      if (v3 == 1)
      {

        LOBYTE(v4) = [(VCHardwareSettingsEmbedded *)self iPhoneSupportsOutOfProcessDecoding];
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCHardwareSettingsEmbedded *)v6 supportsOutOfProcessDecoding];
        }
      }

      LOBYTE(v4) = 1;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 != 2)
      {
        if (v3 == 3)
        {

          LOBYTE(v4) = [(VCHardwareSettingsEmbedded *)self iPadSupportsOutOfProcessDecoding];
        }

        return v4;
      }

LABEL_22:
      LOBYTE(v4) = 0;
      return v4;
    }

    if (v3 == 5)
    {
      goto LABEL_22;
    }

    if (v3 == 8)
    {

      LOBYTE(v4) = [(VCHardwareSettingsEmbedded *)self visionSupportsOutOfProcessDecoding];
    }
  }

  return v4;
}

- (BOOL)iPhoneSupportsOutOfProcessDecoding
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 33024)
  {
    if (((v2 - 35152) > 0x10 || ((1 << (v2 - 80)) & 0x10021) == 0) && v2 != 33025 && v2 != 33027)
    {
      return 1;
    }
  }

  else if (((v2 - 0x8000) > 0x30 || ((1 << v2) & 0x100810023000BLL) == 0) && (v2 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)iPadSupportsOutOfProcessDecoding
{
  v2 = [(VCHardwareSettingsEmbedded *)self chipId];
  result = 0;
  if (v2 > 35156)
  {
    if (v2 != 35157 && v2 != 35168)
    {
      return 1;
    }
  }

  else if (((v2 - 0x8000) > 0x10 || ((1 << v2) & 0x1000B) == 0) && (v2 - 28672) >= 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)supportsFrontCameraFullBleedCapture
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[VCHardwareSettingsEmbedded deviceClass]== 1 && AVGestaltGetBoolAnswer() && VCFeatureFlagManager_AFB();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCHardwareSettingsEmbedded supportsFrontCameraFullBleedCapture]";
      v10 = 1024;
      v11 = 1902;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d result=%d", &v6, 0x22u);
    }
  }

  return v2;
}

- (BOOL)supportsFullBleedReceive
{
  if (+[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") != 1 && +[VCHardwareSettingsEmbedded deviceClass](VCHardwareSettingsEmbedded, "deviceClass") != 3 && +[VCHardwareSettingsEmbedded deviceClass]!= 4)
  {
    return 0;
  }

  v3 = [(VCHardwareSettingsEmbedded *)self screenHeight];
  return v3 - [(VCHardwareSettingsEmbedded *)self screenWidth]> 0x13;
}

- (BOOL)supportsVideoStabilization
{
  v2 = 0;
  v3 = MGGetProductType();
  if (v3 <= 3048527335)
  {
    if (v3 != 1781728947)
    {
      v4 = 1872992317;
      goto LABEL_6;
    }

    return 1;
  }

  if (v3 == 3591055299)
  {
    return 1;
  }

  v4 = 3048527336;
LABEL_6:
  if (v3 == v4)
  {
    return 1;
  }

  return v2;
}

- (void)initForDevice:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCHardwareSettingsEmbedded initForDevice:]";
      v8 = 1024;
      v9 = 137;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to find configuration for virtual embedded device=%@", &v4, 0x26u);
    }
  }
}

- (void)initForDevice:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to copy device name", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initForDevice:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Attempting to initialize with NULL device code", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initForDevice:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize", v2, v3, v4, v5, v6);
    }
  }
}

- (void)supportsOutOfProcessDecoding
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 1810;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d deviceClass kVCDeviceClassTypeInvalid is invalid", &v2, 0x1Cu);
}

@end
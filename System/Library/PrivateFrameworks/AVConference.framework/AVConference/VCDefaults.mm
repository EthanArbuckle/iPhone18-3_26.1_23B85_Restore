@interface VCDefaults
+ (BOOL)BOOLeanValueForKey:(__CFString *)key defaultValue:(BOOL)value;
+ (id)copyStringValueForKey:(__CFString *)key;
+ (id)screenVirtualDisplayLabelName;
+ (id)sharedInstance;
- (BOOL)audioRecordingEnabled;
- (BOOL)enableBitstreamCapture;
- (BOOL)enableTxBitstreamDump;
- (BOOL)enableTxTimestampAlignmentLogs;
- (BOOL)forceARCapture;
- (BOOL)forceDisableMediaEncryption;
- (BOOL)forceDisableMessageEncryption;
- (BOOL)forceDisableSSRCCollisionDetection;
- (BOOL)forceHWI;
- (BOOL)forceMultiwayHWI;
- (BOOL)forceScreenHWI;
- (BOOL)mediaQueueDumpEnabled;
- (BOOL)rateControlDumpEnabled;
- (BOOL)shouldDisplayVideoInfoLayer;
- (BOOL)shouldOverrideEffectsFramerate:(unsigned int *)framerate;
- (BOOL)supportsOneToOneMode;
- (BOOL)useVirtualCapture;
- (NSString)virtualHardware;
- (VCDefaults)init;
- (int)bundleAudio;
- (int)enableRxDecodeYUVDump;
- (int)enableTxSourceYuvDump;
- (int)localWRMLinkType;
- (int)max2GRate;
- (int)rateControlForceRxRate;
- (int)rateControlForceTxCap;
- (int)rateControlForceTxRate;
- (unsigned)forceAudioPriorityValue;
- (unsigned)prominenceActiveProbabilityThreshold;
- (void)forceMultiwayHWI;
- (void)separateString:(id)string;
@end

@implementation VCDefaults

+ (id)sharedInstance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__VCDefaults_sharedInstance__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  if (sharedInstance_onceToken_19 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_19, v3);
  }

  return _sharedInstance;
}

Class *__28__VCDefaults_sharedInstance__block_invoke(Class *result)
{
  if (!_sharedInstance)
  {
    result = objc_alloc_init(result[4]);
    _sharedInstance = result;
    if (result)
    {
      CFPreferencesAppSynchronize(@"com.apple.VideoConference");
      v1 = *MEMORY[0x1E695E8A0];
      v2 = *MEMORY[0x1E695E898];

      return CFPreferencesSynchronize(@"com.apple.VideoConference", v1, v2);
    }
  }

  return result;
}

+ (BOOL)BOOLeanValueForKey:(__CFString *)key defaultValue:(BOOL)value
{
  valueCopy = value;
  if (!VRTraceIsInternalOSInstalled())
  {
    return valueCopy;
  }

  return _VCDefaults_GetBoolValueForKey(key, valueCopy, 1);
}

+ (id)copyStringValueForKey:(__CFString *)key
{
  TypeID = CFStringGetTypeID();

  return VCDefaults_CopyValueForKey(key, TypeID);
}

- (VCDefaults)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCDefaults;
  return [(VCDefaults *)&v3 init];
}

- (BOOL)forceScreenHWI
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"forceScreenHWI", @"com.apple.VideoConference");
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [v3 componentsSeparatedByString:@":"];
    if ([v5 count] == 3)
    {
      self->_forceEncodeWidth = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "intValue"}];
      self->_forceEncodeHeight = [objc_msgSend(v5 objectAtIndexedSubscript:{1), "intValue"}];
      self->_forceEncodeFramerate = [objc_msgSend(v5 objectAtIndexedSubscript:{2), "intValue"}];
    }

    objc_autoreleasePoolPop(v4);

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        forceEncodeWidth = self->_forceEncodeWidth;
        forceEncodeHeight = self->_forceEncodeHeight;
        forceFramerate = self->_forceFramerate;
        v12 = 136316418;
        v13 = v6;
        v14 = 2080;
        v15 = "[VCDefaults forceScreenHWI]";
        v16 = 1024;
        v17 = 170;
        v18 = 1024;
        v19 = forceEncodeWidth;
        v20 = 1024;
        v21 = forceEncodeHeight;
        v22 = 1024;
        v23 = forceFramerate;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Forced screen capture settings: %dx%d@%dfps", &v12, 0x2Eu);
      }
    }
  }

  return v3 != 0;
}

- (BOOL)forceHWI
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"forceHWI", @"com.apple.VideoConference");
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    [(VCDefaults *)self separateString:v3];
    objc_autoreleasePoolPop(v4);

    v5.i64[0] = *&self->_forceEncodeWidth;
    v5.i64[1] = v5.i64[0];
    v6.i64[0] = 0x80000000800;
    v6.i64[1] = 0x80000000800;
    *&self->_forceCaptureWidth = vmaxq_s32(vminq_s32(v5, v6), xmmword_1DBD513F0);
    forceFramerate = self->_forceFramerate;
    if (forceFramerate >= 60)
    {
      forceFramerate = 60;
    }

    if (forceFramerate <= 5)
    {
      forceFramerate = 5;
    }

    self->_forceFramerate = forceFramerate;
    if (*MEMORY[0x1E6986638] >= 6)
    {
      v43 = 0;
      *v41 = 0u;
      v42 = 0u;
      if (self->_forceVideoPayload != 128)
      {
        __sprintf_chk(v41, 0, 0x28uLL, "payload: %d", self->_forceVideoPayload);
      }

      if (self->_forceRecvVideoPayload != 128)
      {
        __sprintf_chk(v41, 0, 0x28uLL, "receive payload: %d", self->_forceVideoPayload);
      }

      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v10 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          forceCaptureWidth = self->_forceCaptureWidth;
          forceCaptureHeight = self->_forceCaptureHeight;
          v15 = self->_forceFramerate;
          *buf = 136316418;
          v24 = v11;
          v25 = 2080;
          v26 = "[VCDefaults forceHWI]";
          v27 = 1024;
          v28 = 212;
          v29 = 1024;
          v30 = forceCaptureWidth;
          v31 = 1024;
          v32 = forceCaptureHeight;
          v33 = 1024;
          v34 = v15;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forced camera settings %dx%d@%dfps", buf, 0x2Eu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          forceEncodeWidth = self->_forceEncodeWidth;
          forceEncodeHeight = self->_forceEncodeHeight;
          v20 = self->_forceFramerate;
          forceBitrate = self->_forceBitrate;
          forceKeyFrameInterval = self->_forceKeyFrameInterval;
          *buf = 136317186;
          v24 = v16;
          v25 = 2080;
          v26 = "[VCDefaults forceHWI]";
          v27 = 1024;
          v28 = 215;
          v29 = 1024;
          v30 = forceEncodeWidth;
          v31 = 1024;
          v32 = forceEncodeHeight;
          v33 = 1024;
          v34 = v20;
          v35 = 1024;
          v36 = forceBitrate;
          v37 = 1024;
          v38 = forceKeyFrameInterval;
          v39 = 2080;
          v40 = v41;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forced encoder settings: %dx%d@%dfps, %d Kbps, %d IDR/sec, %s", buf, 0x44u);
        }
      }
    }
  }

  return v3 != 0;
}

- (BOOL)forceMultiwayHWI
{
  v3 = CFPreferencesCopyAppValue(@"forceMultiwayHWI", @"com.apple.VideoConference");
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    [(VCDefaults *)self separateString:v3];
    objc_autoreleasePoolPop(v4);

    if (*MEMORY[0x1E6986638] >= 6)
    {
      [(VCDefaults *)self forceMultiwayHWI];
    }
  }

  return v3 != 0;
}

- (void)separateString:(id)string
{
  v4 = [string componentsSeparatedByString:@":"];
  if (v4)
  {
    v5 = v4;
    if ([v4 count])
    {
      self->_forceEncodeWidth = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "intValue"}];
    }

    if ([v5 count] >= 2)
    {
      self->_forceEncodeHeight = [objc_msgSend(v5 objectAtIndexedSubscript:{1), "intValue"}];
    }

    if ([v5 count] >= 3)
    {
      self->_forceBitrate = [objc_msgSend(v5 objectAtIndexedSubscript:{2), "intValue"}];
    }

    if ([v5 count] >= 4)
    {
      self->_forceFramerate = [objc_msgSend(v5 objectAtIndexedSubscript:{3), "intValue"}];
    }

    if ([v5 count] < 5)
    {
      v6 = 128;
    }

    else
    {
      v6 = [objc_msgSend(v5 objectAtIndexedSubscript:{4), "intValue"}];
    }

    self->_forceVideoPayload = v6;
    if ([v5 count] < 6)
    {
      v7 = 128;
    }

    else
    {
      v7 = [objc_msgSend(v5 objectAtIndexedSubscript:{5), "intValue"}];
    }

    self->_forceRecvVideoPayload = v7;
    if ([v5 count] < 7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [objc_msgSend(v5 objectAtIndexedSubscript:{6), "intValue"}];
    }

    self->_forceKeyFrameInterval = v8;
  }
}

- (BOOL)forceARCapture
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"ARCaptureEnabled"];
  }

  return IsInternalOSInstalled;
}

- (BOOL)enableBitstreamCapture
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"enableBitstreamCapture"];
  }

  return IsInternalOSInstalled;
}

- (int)enableRxDecodeYUVDump
{
  v19 = *MEMORY[0x1E69E9840];
  if (!VRTraceIsInternalOSInstalled() || (keyExistsAndHasValidFormat = -86, AppIntegerValue = CFPreferencesGetAppIntegerValue(@"enableRxDecodeYUVDump", @"com.apple.VideoConference", &keyExistsAndHasValidFormat), !keyExistsAndHasValidFormat))
  {
LABEL_10:
    LODWORD(v3) = 0;
    return v3;
  }

  v3 = AppIntegerValue;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3 > 2)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCDefaults enableRxDecodeYUVDump]";
        v15 = 1024;
        v16 = 385;
        v17 = 1024;
        v18 = v3;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Found enableRxDecodeYUVDump but the value[%d] is invalid (should be 1 or 2)", buf, 0x22u);
      }
    }

    goto LABEL_10;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCDefaults enableRxDecodeYUVDump]";
      v15 = 1024;
      v16 = 382;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Found enableRxDecodeYUVDump set to %d", buf, 0x22u);
    }
  }

  return v3;
}

- (int)enableTxSourceYuvDump
{
  v19 = *MEMORY[0x1E69E9840];
  if (!VRTraceIsInternalOSInstalled() || (keyExistsAndHasValidFormat = -86, AppIntegerValue = CFPreferencesGetAppIntegerValue(@"enableTxSourceYuvDump", @"com.apple.VideoConference", &keyExistsAndHasValidFormat), !keyExistsAndHasValidFormat))
  {
LABEL_10:
    LODWORD(v3) = 0;
    return v3;
  }

  v3 = AppIntegerValue;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3 > 2)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCDefaults enableTxSourceYuvDump]";
        v15 = 1024;
        v16 = 412;
        v17 = 1024;
        v18 = v3;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Found enableTxSourceYuvDump but the value[%d] is invalid (should be 1 or 2)", buf, 0x22u);
      }
    }

    goto LABEL_10;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCDefaults enableTxSourceYuvDump]";
      v15 = 1024;
      v16 = 409;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Found enableTxSourceYuvDump set to %d", buf, 0x22u);
    }
  }

  return v3;
}

- (BOOL)enableTxBitstreamDump
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"enableTxBitstreamDump"];
  }

  return IsInternalOSInstalled;
}

- (BOOL)enableTxTimestampAlignmentLogs
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"enableTxTimestampAlignmentLogs"];
  }

  return IsInternalOSInstalled;
}

- (int)bundleAudio
{
  v20 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"bundleAudio", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  v3 = AppIntegerValue;
  v4 = AppIntegerValue - 1;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4 > 9)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCDefaults bundleAudio]";
        v16 = 1024;
        v17 = 477;
        v18 = 1024;
        v19 = v3;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Found bundleAudio but the value[%d] is invalid (should be 1-10)", buf, 0x22u);
      }
    }

    return 0;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCDefaults bundleAudio]";
      v16 = 1024;
      v17 = 474;
      v18 = 1024;
      v19 = v3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: Found bundleAudio. Bundling %d audio packets", buf, 0x22u);
    }
  }

  return v3;
}

- (BOOL)audioRecordingEnabled
{
  v28 = *MEMORY[0x1E69E9840];
  if (audioRecordingEnabled_hasChecked == 1)
  {
    IsInternalOSInstalled = audioRecordingEnabled_isAudioRecordingEnabled;
    return IsInternalOSInstalled & 1;
  }

  keyExistsAndHasValidFormat = -86;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAudioRecording", @"com.apple.facetime", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCDefaults audioRecordingEnabled]";
      v19 = 1024;
      v20 = 494;
      v21 = 1024;
      *v22 = AppBooleanValue;
      *&v22[4] = 1024;
      *&v22[6] = keyExistsAndHasValidFormat;
      v8 = " [%s] %s:%d allowAudioRecording: %d keyExists: %d";
      v9 = v7;
      v10 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCDefaults *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCDefaults audioRecordingEnabled]";
      v19 = 1024;
      v20 = 494;
      v21 = 2112;
      *v22 = v5;
      *&v22[8] = 2048;
      selfCopy = self;
      v24 = 1024;
      v25 = AppBooleanValue;
      v26 = 1024;
      v27 = keyExistsAndHasValidFormat;
      v8 = " [%s] %s:%d %@(%p) allowAudioRecording: %d keyExists: %d";
      v9 = v12;
      v10 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_15:
    CFPreferencesSetAppValue(@"AllowAudioRecording", 0, @"com.apple.facetime");
    CFPreferencesAppSynchronize(@"com.apple.facetime");
  }

  IsInternalOSInstalled = 1;
  if (!AppBooleanValue)
  {
    IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  }

  audioRecordingEnabled_isAudioRecordingEnabled = IsInternalOSInstalled;
  audioRecordingEnabled_hasChecked = 1;
  return IsInternalOSInstalled & 1;
}

- (BOOL)mediaQueueDumpEnabled
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();

  return [VCDefaults BOOLeanValueForKey:@"enableMediaQueueDump" defaultValue:IsInternalOSInstalled];
}

- (BOOL)rateControlDumpEnabled
{
  if (VRTraceIsInternalOSInstalled())
  {
    IsSeedOSInstalled = 1;
  }

  else
  {
    IsSeedOSInstalled = VRTraceIsSeedOSInstalled();
  }

  return [VCDefaults BOOLeanValueForKey:@"enableTFRCDump" defaultValue:IsSeedOSInstalled];
}

- (int)rateControlForceTxCap
{
  ForcedCapBitrate = VCTestMonitorManager_GetForcedCapBitrate();

  return VCDefaults_GetIntValueForKey(@"forcedTxCap", ForcedCapBitrate);
}

- (int)rateControlForceTxRate
{
  ForcedTargetBitrate = VCTestMonitorManager_GetForcedTargetBitrate();

  return VCDefaults_GetIntValueForKey(@"forcedTxRate", ForcedTargetBitrate);
}

- (int)rateControlForceRxRate
{
  ForcedTargetBitrate = VCTestMonitorManager_GetForcedTargetBitrate();

  return VCDefaults_GetIntValueForKey(@"forcedRxRate", ForcedTargetBitrate);
}

- (int)max2GRate
{
  IntValueForKey = VCDefaults_GetIntValueForKey(@"max2GRate", 0xFFFFFFFFLL);
  if (IntValueForKey >= 229 || IntValueForKey == 0)
  {
    v4 = 100;
  }

  else
  {
    v4 = IntValueForKey;
  }

  if (IntValueForKey >= 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (int)localWRMLinkType
{
  v6 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"localWRMLinkType", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (AppIntegerValue >= 2 || keyExistsAndHasValidFormat == 0)
  {
    LODWORD(AppIntegerValue) = -1;
  }

  return AppIntegerValue;
}

- (BOOL)shouldDisplayVideoInfoLayer
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = _VCDefaults_GetBoolValueForKey(@"shouldDisplayVideoInfoLayer", 0, 1);
  }

  return IsInternalOSInstalled;
}

- (BOOL)supportsOneToOneMode
{
  if ([VCDefaults BOOLeanValueForKey:@"SupportsOneToOneMode" defaultValue:0])
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (unsigned)forceAudioPriorityValue
{
  v18 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceAudioPriorityValue", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if ((AppIntegerValue - 256) >= 0xFFFFFFFFFFFFFF01)
    {
      v3 = AppIntegerValue;
    }

    else
    {
      v3 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "[VCDefaults forceAudioPriorityValue]";
        v12 = 1024;
        v13 = 854;
        v14 = 2112;
        v15 = @"forceAudioPriorityValue";
        v16 = 1024;
        v17 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: %@=%d", buf, 0x2Cu);
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)shouldOverrideEffectsFramerate:(unsigned int *)framerate
{
  v21 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"effectsFrameRate", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  v5 = keyExistsAndHasValidFormat;
  if (framerate && keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCDefaults shouldOverrideEffectsFramerate:]";
        v15 = 1024;
        v16 = 900;
        v17 = 2112;
        v18 = @"effectsFrameRate";
        v19 = 1024;
        v20 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: %@=%d", buf, 0x2Cu);
      }
    }

    *framerate = v6;
    v5 = keyExistsAndHasValidFormat;
  }

  return v5 != 0;
}

- (BOOL)forceDisableMediaEncryption
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"forceDisableMediaEncryption"];
  }

  return IsInternalOSInstalled;
}

- (BOOL)forceDisableMessageEncryption
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"forceDisableMessageEncryption"];
  }

  return IsInternalOSInstalled;
}

- (BOOL)forceDisableSSRCCollisionDetection
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"forceDisableSSRCCollisionDetection"];
  }

  return IsInternalOSInstalled;
}

- (BOOL)useVirtualCapture
{
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (IsInternalOSInstalled)
  {

    LOBYTE(IsInternalOSInstalled) = [VCDefaults BOOLeanValueForKey:@"useVirtualCapture" defaultValue:0];
  }

  return IsInternalOSInstalled;
}

- (NSString)virtualHardware
{
  TypeID = CFStringGetTypeID();
  v3 = VCDefaults_CopyValueForKey(@"virtualHardware", TypeID);

  return v3;
}

- (unsigned)prominenceActiveProbabilityThreshold
{
  v18 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"prominenceActiveProbabilityThreshold", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 127;
  }

  v3 = AppBooleanValue;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCDefaults prominenceActiveProbabilityThreshold]";
      v12 = 1024;
      v13 = 968;
      v14 = 2112;
      v15 = @"prominenceActiveProbabilityThreshold";
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceDefaults: %@=%u", buf, 0x2Cu);
    }
  }

  return v3;
}

+ (id)screenVirtualDisplayLabelName
{
  TypeID = CFStringGetTypeID();
  v3 = VCDefaults_CopyValueForKey(@"screenVirtualDisplayLabelName", TypeID);

  return v3;
}

- (void)forceMultiwayHWI
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = 0;
  *v9 = 0u;
  v10 = 0u;
  if (self[9] != 128)
  {
    __sprintf_chk(v9, 0, 0x28uLL, "payload: %d", self[9]);
  }

  if (self[10] != 128)
  {
    __sprintf_chk(v9, 0, 0x28uLL, "receive payload: %d", self[9]);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = self[4];
      v5 = self[5];
      v6 = self[7];
      v7 = self[8];
      v8 = self[11];
      *buf = 136317186;
      v13 = v2;
      v14 = 2080;
      v15 = "[VCDefaults forceMultiwayHWI]";
      v16 = 1024;
      v17 = 252;
      v18 = 1024;
      v19 = v4;
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      v24 = 1024;
      v25 = v7;
      v26 = 1024;
      v27 = v8;
      v28 = 2080;
      v29 = v9;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Forced multiway encoder settings: %dx%d@%dfps, %d Kbps, %d IDR/sec, %s", buf, 0x44u);
    }
  }
}

@end
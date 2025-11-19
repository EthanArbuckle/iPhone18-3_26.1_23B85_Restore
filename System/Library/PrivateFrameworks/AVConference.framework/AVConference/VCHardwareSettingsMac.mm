@interface VCHardwareSettingsMac
+ (id)sharedInstance;
+ (id)virtualHardwareSettings:(id)a3;
- (BOOL)_isMachineNewerThanSandybridge:(int)a3;
- (BOOL)canDoHEVC;
- (BOOL)canDoHiDefDecoding;
- (BOOL)canDoHiDefEncoding;
- (BOOL)isGVAEncoderAvailable;
- (BOOL)isMacBookWVGA;
- (BOOL)isSpatialAudioSupported;
- (BOOL)shouldOverrideGPUMuxing;
- (BOOL)supportsDedicatedSystemAudioStream;
- (BOOL)supportsFilteredScreenCapture;
- (BOOL)supportsMVHEVCDecode;
- (BOOL)supportsMVHEVCEncode;
- (BOOL)supportsMultiway1080pStream;
- (BOOL)useSoftFramerateSwitching;
- (NSArray)supportedVideoPayloads;
- (VCHardwareSettingsMac)init;
- (id)_getCPUTypeStringForMachineType:(int)a3;
- (id)initForDevice:(id)a3;
- (id)queryBoardId;
- (int)_getCPUFamilyType;
- (int)hardwareScore;
- (unint64_t)maxScreenEncodingSizeSupported;
- (unsigned)hwEncoderEnterBitrate;
- (unsigned)hwEncoderExitBitrate;
- (unsigned)maxActiveScreenEncoders;
- (unsigned)maxActiveVideoDecoders;
- (unsigned)maxActiveVideoEncoders;
- (unsigned)maxFpsCameraCaptureDuringSharing;
- (unsigned)maxFrameRateSupportedScreenShare;
- (unsigned)maxRemoteParticipants30fps;
- (unsigned)screenHeight;
- (unsigned)screenWidth;
- (void)addPixelFormat;
- (void)dealloc;
- (void)setupMachineName;
- (void)supportsMVHEVCEncode;
@end

@implementation VCHardwareSettingsMac

- (VCHardwareSettingsMac)init
{
  v47 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCHardwareSettingsMac;
  v2 = [(VCHardwareSettings *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_isGVAEncoderAvailable = [(VCHardwareSettingsMac *)v2 canDoHiDefEncoding];
    v3->_mhrtz = VCCPUCount();
    v3->_isG5 = ProcessorSpeedMHz();
    v3->_hardwareScore = hasG5();
    v3->_cpuFamily = MachineType();
    [(VCHardwareSettingsMac *)v3 setupMachineName];
    v3->_numProcessors = [(VCHardwareSettingsMac *)v3 _getCPUFamilyType];
    v3->_cpuType = [(VCHardwareSettingsMac *)v3 _getCPUTypeStringForMachineType:v3->_cpuFamily];
    v3->_boardId = [(VCHardwareSettingsMac *)v3 queryBoardId];
    [(VCHardwareSettingsMac *)v3 addPixelFormat];
    [(VCHardwareSettingsMac *)v3 isGVAEncoderAvailable];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        supportHEVC = v3->super._supportHEVC;
        supportVCPEncoder = v3->super._supportVCPEncoder;
        machineType_low = LOBYTE(v3->_machineType);
        machineName = v3->_machineName;
        cpuFamily = v3->_cpuFamily;
        cpuType = v3->_cpuType;
        numProcessors = v3->_numProcessors;
        isG5 = v3->_isG5;
        hardwareScore = v3->_hardwareScore;
        mhrtz = v3->_mhrtz;
        isGVAEncoderAvailable = v3->_isGVAEncoderAvailable;
        *buf = 136318466;
        v20 = v4;
        v21 = 2080;
        v22 = "[VCHardwareSettingsMac init]";
        v23 = 1024;
        v24 = 107;
        v25 = 1024;
        v26 = supportHEVC;
        v27 = 1024;
        v28 = supportVCPEncoder;
        v29 = 1024;
        v30 = machineType_low;
        v31 = 2112;
        v32 = machineName;
        v33 = 1024;
        v34 = cpuFamily;
        v35 = 2112;
        v36 = cpuType;
        v37 = 1024;
        v38 = numProcessors;
        v39 = 1024;
        v40 = isG5;
        v41 = 1024;
        v42 = hardwareScore;
        v43 = 1024;
        v44 = mhrtz;
        v45 = 1024;
        v46 = isGVAEncoderAvailable;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d { %d, %d, %d, @%@, 0x%x, @%@, 0x%08x, %d, %d, %d, %d }", buf, 0x66u);
      }
    }
  }

  return v3;
}

- (id)initForDevice:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(VCHardwareSettingsMac *)self init];
  if (!v4)
  {
    [VCHardwareSettingsMac initForDevice:];
LABEL_7:

    return 0;
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  if ((VCVirtualHardwareConfigurations_OSXConfigurationForDevice(a3, &v6) & 1) == 0)
  {
    [VCHardwareSettingsMac initForDevice:a3];
    goto LABEL_7;
  }

  v4->_machineName = [*(&v6 + 1) copy];
  v4->_cpuFamily = v7;
  v4->_cpuType = *(&v7 + 1);
  v4->_numProcessors = v8;
  *&v4->_isG5 = *(&v8 + 4);
  v4->_mhrtz = HIDWORD(v8);
  v4->_isGVAEncoderAvailable = v9;
  LOBYTE(v4->_machineType) = BYTE2(v6);
  *(&v4->_isGVAEncoderAvailable + 1) = 1;
  v4->_screenWidth = HIDWORD(v9);
  v4->_screenHeight = v10;
  v4->super._supportVCPEncoderInitialized = 1;
  v4->super._supportVCPEncoder = BYTE1(v6);
  v4->super._supportHEVC = v6;
  [(NSMutableSet *)v4->super._pixelFormatCollections addObject:&unk_1F5798100];
  [(NSMutableSet *)v4->super._pixelFormatCollections addObject:&unk_1F5798118];
  return v4;
}

+ (id)virtualHardwareSettings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (virtualHardwareSettings___virtualHardwareSettingsDeviceA)
  {
    if ([a3 isEqual:{objc_msgSend(virtualHardwareSettings___virtualHardwareSettingsDeviceA, "machineName")}])
    {
      return virtualHardwareSettings___virtualHardwareSettingsDeviceA;
    }

    else if (virtualHardwareSettings___virtualHardwareSettingsDeviceB)
    {
      if ([a3 isEqual:{objc_msgSend(virtualHardwareSettings___virtualHardwareSettingsDeviceB, "machineName")}])
      {
        return virtualHardwareSettings___virtualHardwareSettingsDeviceB;
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
            v14 = "+[VCHardwareSettingsMac virtualHardwareSettings:]";
            v15 = 1024;
            v16 = 184;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clearing existing virtual hardware settings.", &v11, 0x1Cu);
          }
        }

        virtualHardwareSettings___virtualHardwareSettingsDeviceA = 0;
        virtualHardwareSettings___virtualHardwareSettingsDeviceB = 0;
        return [VCHardwareSettingsMac virtualHardwareSettings:a3];
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
          v14 = "+[VCHardwareSettingsMac virtualHardwareSettings:]";
          v15 = 1024;
          v16 = 174;
          v17 = 2112;
          v18 = a3;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initializing new virtual hardware settings B for device=%@", &v11, 0x26u);
        }
      }

      result = [[VCHardwareSettingsMac alloc] initForDevice:a3];
      virtualHardwareSettings___virtualHardwareSettingsDeviceB = result;
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
        v14 = "+[VCHardwareSettingsMac virtualHardwareSettings:]";
        v15 = 1024;
        v16 = 164;
        v17 = 2112;
        v18 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initializing new virtual hardware settings A for device=%@", &v11, 0x26u);
      }
    }

    result = [[VCHardwareSettingsMac alloc] initForDevice:a3];
    virtualHardwareSettings___virtualHardwareSettingsDeviceA = result;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCHardwareSettingsMac;
  [(VCHardwareSettings *)&v3 dealloc];
}

- (void)setupMachineName
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v8 = 64;
  if (!sysctlbyname("hw.model", v9, &v8, 0, 0))
  {
    v7 = 0;
    self->_machineName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9];
    v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([^0-9]+)([0-9]+) options:([0-9]+)$" error:{0, &v7}];
    machineName = self->_machineName;
    v5 = [(NSString *)machineName length];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__VCHardwareSettingsMac_setupMachineName__block_invoke;
    v6[3] = &unk_1E85F3F28;
    v6[4] = self;
    [v3 enumerateMatchesInString:machineName options:0 range:0 usingBlock:{v5, v6}];
  }
}

uint64_t __41__VCHardwareSettingsMac_setupMachineName__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 80);
  v5 = [a2 rangeAtIndex:1];
  *(*(a1 + 32) + 112) = [v4 substringWithRange:{v5, v6}];
  v7 = *(*(a1 + 32) + 80);
  v8 = [a2 rangeAtIndex:2];
  *(*(a1 + 32) + 120) = [objc_msgSend(v7 substringWithRange:{v8, v9), "intValue"}];
  v10 = *(*(a1 + 32) + 80);
  v11 = [a2 rangeAtIndex:3];
  result = [objc_msgSend(v10 substringWithRange:{v11, v12), "intValue"}];
  *(*(a1 + 32) + 124) = result;
  return result;
}

- (int)_getCPUFamilyType
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = -1431655766;
  v9 = 4;
  v2 = sysctlbyname("hw.cpufamily", &v10, &v9, 0, 0);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315906;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCHardwareSettingsMac _getCPUFamilyType]";
      v15 = 1024;
      v16 = 232;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCHardwareSettingsMac: Your machine arch is CPUFAMILY_UNKNOWN, 0x%x", buf, 0x22u);
    }

    return 0;
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCHardwareSettingsMac _getCPUFamilyType]";
        v15 = 1024;
        v16 = 228;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCHardwareSettingsMac: Your machine arch is 0x%x", buf, 0x22u);
      }
    }

    return v10;
  }
}

- (id)_getCPUTypeStringForMachineType:(int)a3
{
  if ((a3 & 0x400) != 0)
  {
LABEL_9:
    if (layoutID() == 80)
    {
      return @"Intel-K65";
    }

    else
    {
      return @"Intel";
    }
  }

  v3 = @"G5";
  if ((a3 & 0x100) == 0)
  {
    v3 = @"G4";
    if ((a3 & 2) == 0)
    {
      if (a3)
      {
        return @"G3";
      }

      VectorTypeAvailable = GetVectorTypeAvailable();
      if (VectorTypeAvailable < 1)
      {
        return @"G3";
      }

      if ((VectorTypeAvailable & 1) == 0)
      {
        if ((VectorTypeAvailable & 4) == 0)
        {
          return &stru_1F570E008;
        }

        goto LABEL_9;
      }

      if (hasG5())
      {
        return @"G5";
      }
    }
  }

  return v3;
}

- (BOOL)_isMachineNewerThanSandybridge:(int)a3
{
  result = 0;
  if (a3 > 1463508715)
  {
    if (a3 > 2009171117)
    {
      if (a3 == 2009171118)
      {
        return result;
      }

      v4 = 2028621756;
    }

    else
    {
      if (a3 == 1463508716)
      {
        return result;
      }

      v4 = 1801080018;
    }
  }

  else if (a3 > -310978391)
  {
    if (a3 == -310978390)
    {
      return result;
    }

    v4 = 1418770316;
  }

  else
  {
    if (a3 == -1439483605)
    {
      return result;
    }

    v4 = -823913143;
  }

  if (a3 != v4)
  {
    return 1;
  }

  return result;
}

- (BOOL)isGVAEncoderAvailable
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(&self->_isGVAEncoderAvailable + 1))
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/AppleGVA.framework/Versions/Current/AppleGVA", 1);
    if (v4)
    {
      v5 = v4;
      v6 = dlsym(v4, "AVFQTXENC_GetEncodeAvailability");
      if (!dlerror())
      {
        LOBYTE(self->_machineType) = v6();
      }

      dlclose(v5);
    }

    p_machineType = &self->_machineType;
    machineType_low = LOBYTE(self->_machineType);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (machineType_low == 1)
    {
      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_15;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v14 = 136315650;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCHardwareSettingsMac isGVAEncoderAvailable]";
      v18 = 1024;
      v19 = 317;
      v11 = " [%s] %s:%d VCHardwareSettingsMac: HW encoder is available on this platform.";
    }

    else
    {
      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_15;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v14 = 136315650;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCHardwareSettingsMac isGVAEncoderAvailable]";
      v18 = 1024;
      v19 = 319;
      v11 = " [%s] %s:%d VCHardwareSettingsMac: HW encoder is NOT available on this platform.";
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x1Cu);
LABEL_15:
    *(&self->_isGVAEncoderAvailable + 1) = 1;
    return *p_machineType;
  }

  p_machineType = &self->_machineType;
  return *p_machineType;
}

- (BOOL)canDoHiDefEncoding
{
  if (![(VCHardwareSettingsMac *)self _isModel:@"MacBookAir"]|| (v3 = [(VCHardwareSettingsMac *)self _isMachineNewerThanSandybridge:[(VCHardwareSettingsMac *)self _getCPUFamilyType]]))
  {
    if (-[VCHardwareSettingsMac isGVAEncoderAvailable](self, "isGVAEncoderAvailable") || -[VCHardwareSettingsMac _isModel:](self, "_isModel:", @"MacBookPro8") || -[VCHardwareSettingsMac _isModel:](self, "_isModel:", @"MacPro") && -[NSString intValue](-[NSString substringFromIndex:](-[VCHardwareSettingsMac machineName](self, "machineName"), "substringFromIndex:", [@"MacPro" length]), "intValue") > 5)
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(VCHardwareSettingsMac *)self _isModel:@"iMacPro"];
    }
  }

  return v3;
}

- (BOOL)supportsMVHEVCEncode
{
  v9 = *MEMORY[0x1E69E9840];
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  if (!VTIsStereoMVHEVCEncodeSupported())
  {
    v4 = 0;
    if (!IsInternalOSInstalled)
    {
      goto LABEL_3;
    }

LABEL_10:
    [(VCHardwareSettingsMac *)self supportsMVHEVCEncode];
    v5 = v8;
    return VCDefaults_GetBoolValueForKey(@"forceEnableMVHEVCSupport", v5);
  }

  v4 = [(VCHardwareSettingsMac *)self isAppleSiliconMac];
  if (IsInternalOSInstalled)
  {
    goto LABEL_10;
  }

LABEL_3:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCHardwareSettingsMac_supportsMVHEVCEncode__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  if (supportsMVHEVCEncode_onceToken != -1)
  {
    dispatch_once(&supportsMVHEVCEncode_onceToken, block);
  }

  v5 = supportsMVHEVCEncode_coreCount > 3 && v4;
  return VCDefaults_GetBoolValueForKey(@"forceEnableMVHEVCSupport", v5);
}

void __45__VCHardwareSettingsMac_supportsMVHEVCEncode__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  propertyValueOut = 0;
  session = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = VTCompressionSessionCreate(*MEMORY[0x1E695E480], 4320, 4320, 0x68766331u, 0, 0, *MEMORY[0x1E695E480], 0, 0, &session);
  if (v3)
  {
    __45__VCHardwareSettingsMac_supportsMVHEVCEncode__block_invoke_cold_1(a1, v3);
    goto LABEL_8;
  }

  v4 = VTSessionCopyProperty(session, *MEMORY[0x1E6983750], v2, &propertyValueOut);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = propertyValueOut == 0;
  }

  if (!v5)
  {
    v6 = CFGetTypeID(propertyValueOut);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(propertyValueOut, kCFNumberSInt32Type, &supportsMVHEVCEncode_coreCount);
      goto LABEL_8;
    }
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = CFGetTypeID(propertyValueOut);
        TypeID = CFNumberGetTypeID();
        *buf = 136316418;
        v23 = v8;
        v24 = 2080;
        v25 = "[VCHardwareSettingsMac supportsMVHEVCEncode]_block_invoke";
        v26 = 1024;
        v27 = 365;
        v28 = 1024;
        *v29 = v4;
        *&v29[4] = 2048;
        *&v29[6] = v10;
        *&v29[14] = 2048;
        *&v29[16] = TypeID;
        v12 = " [%s] %s:%d Unexpected result while querying number of cores err=%d typeID=%ld expectedTypeId=%ld";
        v13 = v9;
        v14 = 54;
LABEL_25:
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v18 = CFGetTypeID(propertyValueOut);
        v19 = CFNumberGetTypeID();
        *buf = 136316930;
        v23 = v15;
        v24 = 2080;
        v25 = "[VCHardwareSettingsMac supportsMVHEVCEncode]_block_invoke";
        v26 = 1024;
        v27 = 365;
        v28 = 2112;
        *v29 = v7;
        *&v29[8] = 2048;
        *&v29[10] = v17;
        *&v29[18] = 1024;
        *&v29[20] = v4;
        v30 = 2048;
        v31 = v18;
        v32 = 2048;
        v33 = v19;
        v12 = " [%s] %s:%d %@(%p) Unexpected result while querying number of cores err=%d typeID=%ld expectedTypeId=%ld";
        v13 = v16;
        v14 = 74;
        goto LABEL_25;
      }
    }
  }

LABEL_8:
  if (session)
  {
    VTCompressionSessionInvalidate(session);
    if (session)
    {
      CFRelease(session);
      session = 0;
    }
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }
}

- (BOOL)supportsMVHEVCDecode
{
  if (VTIsStereoMVHEVCDecodeSupported())
  {
    v3 = [(VCHardwareSettingsMac *)self isAppleSiliconMac];
  }

  else
  {
    v3 = 0;
  }

  return VCDefaults_GetBoolValueForKey(@"forceEnableMVHEVCSupport", v3);
}

- (BOOL)canDoHEVC
{
  result = 0;
  numProcessors = self->_numProcessors;
  if (numProcessors <= 1418770315)
  {
    if (numProcessors <= -310978391)
    {
      v5 = numProcessors == -1439483605;
      v6 = -823913143;
    }

    else
    {
      v5 = numProcessors == -310978390 || numProcessors == 280134364;
      v6 = 526772277;
    }
  }

  else if (numProcessors > 1801080017)
  {
    v5 = numProcessors == 1801080018 || numProcessors == 2009171118;
    v6 = 2028621756;
  }

  else
  {
    v5 = numProcessors == 1418770316 || numProcessors == 1463508716;
    v6 = 1479463068;
  }

  if (!v5 && numProcessors != v6)
  {
    return 1;
  }

  return result;
}

- (BOOL)canDoHiDefDecoding
{
  if ([(VCHardwareSettingsMac *)self _isModel:@"MacBookPro7, 1"]|| [(VCHardwareSettingsMac *)self _isModel:@"MacBookPro6, 2"]|| [(VCHardwareSettingsMac *)self _isModel:@"iMac10, 1"])
  {
    return 1;
  }

  return [(VCHardwareSettingsMac *)self _isModel:@"iMac11, 1"];
}

- (BOOL)isSpatialAudioSupported
{
  if ([(NSString *)self->_modelName compare:@"MacBookPro" options:1]== NSOrderedSame)
  {
    v4 = 14;
    return self->_modelVersion > v4;
  }

  if ([(NSString *)self->_modelName compare:@"MacBookAir" options:1]== NSOrderedSame)
  {
    goto LABEL_8;
  }

  if ([(NSString *)self->_modelName compare:@"iMac" options:1]== NSOrderedSame)
  {
    v4 = 19;
    return self->_modelVersion > v4;
  }

  if ([(NSString *)self->_modelName compare:@"Macmini" options:1]== NSOrderedSame)
  {
LABEL_8:
    v4 = 7;
    return self->_modelVersion > v4;
  }

  v3 = 1;
  if ([(NSString *)self->_modelName compare:@"MacPro" options:1]== NSOrderedSame)
  {
    v4 = 6;
    return self->_modelVersion > v4;
  }

  return v3;
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
    if (!sharedInstance__hardwareSettings)
    {
      sharedInstance__hardwareSettings = objc_alloc_init(VCHardwareSettingsMac);
    }

    objc_sync_exit(v3);
    return sharedInstance__hardwareSettings;
  }

  return v5;
}

- (BOOL)isMacBookWVGA
{
  if ([(VCHardwareSettingsMac *)self _isModel:@"MacBook8"]|| [(VCHardwareSettingsMac *)self _isModel:@"MacBook9"])
  {
    return 1;
  }

  return [(VCHardwareSettingsMac *)self _isModel:@"MacBook10"];
}

- (unsigned)hwEncoderExitBitrate
{
  result = 700000;
  numProcessors = self->_numProcessors;
  if (numProcessors <= 1463508715)
  {
    if (numProcessors > -310978391)
    {
      v5 = numProcessors == -310978390;
      v6 = 1418770316;
    }

    else
    {
      v5 = numProcessors == -1439483605;
      v6 = -823913143;
    }

    goto LABEL_10;
  }

  if (numProcessors > 1801080017)
  {
    v5 = numProcessors == 1801080018 || numProcessors == 2009171118;
    v6 = 2028621756;
LABEL_10:
    if (!v5 && numProcessors != v6)
    {
      return 300000;
    }

    return result;
  }

  if (numProcessors != 1463508716)
  {
    if (numProcessors == 1479463068)
    {
      return 450000;
    }

    return 300000;
  }

  return result;
}

- (unsigned)hwEncoderEnterBitrate
{
  result = 1000000;
  numProcessors = self->_numProcessors;
  if (numProcessors <= 1463508715)
  {
    if (numProcessors > -310978391)
    {
      v5 = numProcessors == -310978390;
      v6 = 1418770316;
    }

    else
    {
      v5 = numProcessors == -1439483605;
      v6 = -823913143;
    }

    goto LABEL_10;
  }

  if (numProcessors > 1801080017)
  {
    v5 = numProcessors == 1801080018 || numProcessors == 2009171118;
    v6 = 2028621756;
LABEL_10:
    if (!v5 && numProcessors != v6)
    {
      return 450000;
    }

    return result;
  }

  if (numProcessors != 1463508716)
  {
    if (numProcessors == 1479463068)
    {
      return 600000;
    }

    return 450000;
  }

  return result;
}

- (int)hardwareScore
{
  result = *(&self->_hardwareScore + 1);
  if (!result)
  {
    v4 = [(VCHardwareSettingsMac *)self _isMachineNewerThanSandybridge:self->_numProcessors];
    if (![(NSString *)self->_cpuType isEqual:@"Intel"])
    {
      result = -1;
LABEL_40:
      *(&self->_hardwareScore + 1) = result;
      return result;
    }

    v5 = *(&self->_hardwareScore + 1);
    *(&self->_hardwareScore + 1) = v5 + 5;
    isG5 = self->_isG5;
    if (isG5 >= 0xBB9)
    {
      v7 = 17;
    }

    else
    {
      v7 = 15;
    }

    if (isG5 >= 0xA29)
    {
      v8 = v7;
    }

    else
    {
      v8 = 13;
    }

    if (isG5 >= 0x835)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    if (isG5 >= 0x709)
    {
      v10 = v9;
    }

    else
    {
      v10 = 9;
    }

    if (isG5 >= 801)
    {
      v11 = v10;
    }

    else
    {
      v11 = 7;
    }

    v12 = v5 + v11;
    *(&self->_hardwareScore + 1) = v12;
    mhrtz = self->_mhrtz;
    if (mhrtz <= 7)
    {
      if (mhrtz <= 3)
      {
        if (mhrtz < 2)
        {
          goto LABEL_26;
        }

        v14 = 2;
      }

      else
      {
        v14 = 8;
      }
    }

    else
    {
      v14 = 16;
    }

    *(&self->_hardwareScore + 1) = v12 + v14;
LABEL_26:
    v15 = [(VCHardwareSettingsMac *)self _isModel:@"MacBookAir"];
    numProcessors = self->_numProcessors;
    if (v15)
    {
      if (numProcessors == 1418770316 || v4)
      {
        v17 = 21;
      }

      else
      {
        v17 = *(&self->_hardwareScore + 1) - 2;
      }
    }

    else if (numProcessors == 1418770316 || numProcessors == 1463508716 || numProcessors == 1801080018 || v4)
    {
      v17 = 2 * *(&self->_hardwareScore + 1);
    }

    else
    {
      if (numProcessors != 2028621756)
      {
LABEL_36:
        if (self->_isGVAEncoderAvailable)
        {
          result = 30;
        }

        else
        {
          result = *(&self->_hardwareScore + 1);
          if (result < 26)
          {
            return result;
          }

          result = 25;
        }

        goto LABEL_40;
      }

      v17 = (*(&self->_hardwareScore + 1) * 1.5);
    }

    *(&self->_hardwareScore + 1) = v17;
    goto LABEL_36;
  }

  return result;
}

- (BOOL)useSoftFramerateSwitching
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"MacBookAir4, 1", @"MacBookAir5, 1", @"MacBookPro10, 2", 0}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(NSString *)[(VCHardwareSettingsMac *)self machineName] isEqualToString:*(*(&v11 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (unsigned)maxActiveVideoEncoders
{
  numProcessors = self->_numProcessors;
  result = 3;
  if (numProcessors > 1418770315)
  {
    if (numProcessors > 1801080017)
    {
      v4 = numProcessors == 1801080018 || numProcessors == 2009171118;
      v5 = 2028621756;
    }

    else
    {
      v4 = numProcessors == 1418770316 || numProcessors == 1463508716;
      v5 = 1479463068;
    }

LABEL_22:
    if (!v4 && numProcessors != v5)
    {
      return 6;
    }

    return result;
  }

  if (numProcessors <= 280134363)
  {
    v4 = numProcessors == -1439483605 || numProcessors == -823913143;
    v5 = -310978390;
    goto LABEL_22;
  }

  if (numProcessors != 280134364 && numProcessors != 526772277)
  {
    if (numProcessors == 939270559)
    {
      return 4;
    }

    return 6;
  }

  return result;
}

- (unsigned)maxActiveVideoDecoders
{
  result = [+[VCDefaults sharedInstance](VCDefaults maxActiveVideoDecoders];
  if (result != -1)
  {
    return result;
  }

  if ([(VCHardwareSettingsMac *)self isIMacPro])
  {
    return 24;
  }

  numProcessors = self->_numProcessors;
  result = 4;
  if (numProcessors > 1418770315)
  {
    if (numProcessors > 1801080017)
    {
      v5 = numProcessors == 1801080018 || numProcessors == 2009171118;
      v6 = 2028621756;
    }

    else
    {
      v5 = numProcessors == 1418770316 || numProcessors == 1463508716;
      v6 = 1479463068;
    }

LABEL_25:
    if (!v5 && numProcessors != v6)
    {
      return 24;
    }

    return result;
  }

  if (numProcessors <= 280134363)
  {
    v5 = numProcessors == -1439483605 || numProcessors == -823913143;
    v6 = -310978390;
    goto LABEL_25;
  }

  if (numProcessors != 280134364 && numProcessors != 526772277)
  {
    if (numProcessors != 939270559)
    {
      return 24;
    }

    return 9;
  }

  return result;
}

- (void)addPixelFormat
{
  [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F5798100];
  [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F5798118];
  if ([(VCHardwareSettingsMac *)self isAppleSiliconMac])
  {
    [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F5798130];
    [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F5798148];
    [(NSMutableSet *)self->super._pixelFormatCollections addObject:&unk_1F5798160];
    pixelFormatCollections = self->super._pixelFormatCollections;

    [(NSMutableSet *)pixelFormatCollections addObject:&unk_1F5798178];
  }
}

- (unsigned)maxRemoteParticipants30fps
{
  if ([(VCHardwareSettingsMac *)self isIMacPro])
  {
    return 32;
  }

  numProcessors = self->_numProcessors;
  result = 4;
  if (numProcessors <= 1418770315)
  {
    if (numProcessors <= -310978391)
    {
      v5 = numProcessors == -1439483605;
      v6 = -823913143;
    }

    else
    {
      v5 = numProcessors == -310978390 || numProcessors == 280134364;
      v6 = 526772277;
    }
  }

  else if (numProcessors > 1801080017)
  {
    v5 = numProcessors == 1801080018 || numProcessors == 2009171118;
    v6 = 2028621756;
  }

  else
  {
    v5 = numProcessors == 1418770316 || numProcessors == 1463508716;
    v6 = 1479463068;
  }

  if (!v5 && numProcessors != v6)
  {
    return 32;
  }

  return result;
}

- (unsigned)maxFpsCameraCaptureDuringSharing
{
  if ([(VCHardwareSettingsMac *)self isAppleSiliconMac])
  {
    return 30;
  }

  v3 = 30;
  if (![(VCHardwareSettingsMac *)self isMacPro])
  {
    if ([(VCHardwareSettingsMac *)self isIMacPro])
    {
      return 30;
    }

    else
    {
      return 15;
    }
  }

  return v3;
}

- (BOOL)supportsMultiway1080pStream
{
  v2 = [(VCHardwareSettingsMac *)self isAppleSiliconMac];

  return VCDefaults_GetBoolValueForKey(@"supportsMultiway1080pStream", v2);
}

- (unsigned)screenWidth
{
  result = self->_screenWidth;
  if (!result)
  {
    [(VCHardwareSettingsMac *)self _initializeScreenDimension];
    return self->_screenWidth;
  }

  return result;
}

- (BOOL)shouldOverrideGPUMuxing
{
  if ([(VCHardwareSettingsMac *)self _isModel:@"MacBookPro13, 3"])
  {
    return 1;
  }

  return [(VCHardwareSettingsMac *)self _isModel:@"MacBookPro14, 3"];
}

- (unsigned)screenHeight
{
  result = self->_screenHeight;
  if (!result)
  {
    [(VCHardwareSettingsMac *)self _initializeScreenDimension];
    return self->_screenHeight;
  }

  return result;
}

- (BOOL)supportsFilteredScreenCapture
{
  result = 0;
  numProcessors = self->_numProcessors;
  if (numProcessors <= 1418770315)
  {
    if (numProcessors <= -310978391)
    {
      v5 = numProcessors == -1439483605;
      v6 = -823913143;
    }

    else
    {
      v5 = numProcessors == -310978390 || numProcessors == 280134364;
      v6 = 526772277;
    }
  }

  else if (numProcessors > 1801080017)
  {
    v5 = numProcessors == 1801080018 || numProcessors == 2009171118;
    v6 = 2028621756;
  }

  else
  {
    v5 = numProcessors == 1418770316 || numProcessors == 1463508716;
    v6 = 1479463068;
  }

  if (!v5 && numProcessors != v6)
  {
    return 1;
  }

  return result;
}

- (unint64_t)maxScreenEncodingSizeSupported
{
  result = 2073600;
  numProcessors = self->_numProcessors;
  if (numProcessors > 943936838)
  {
    if (numProcessors <= 1479463067)
    {
      v5 = numProcessors == 943936839 || numProcessors == 1418770316;
      v6 = 1463508716;
    }

    else if (numProcessors > 2009171117)
    {
      v5 = numProcessors == 2009171118;
      v6 = 2028621756;
    }

    else
    {
      v5 = numProcessors == 1479463068;
      v6 = 1801080018;
    }
  }

  else if (numProcessors <= 260141637)
  {
    v5 = numProcessors == -1439483605 || numProcessors == -823913143;
    v6 = -310978390;
  }

  else if (numProcessors > 526772276)
  {
    v5 = numProcessors == 526772277;
    v6 = 939270559;
  }

  else
  {
    v5 = numProcessors == 260141638;
    v6 = 280134364;
  }

  if (!v5 && numProcessors != v6)
  {
    return 5603328;
  }

  return result;
}

- (unsigned)maxActiveScreenEncoders
{
  v18 = *MEMORY[0x1E69E9840];
  numProcessors = self->_numProcessors;
  v3 = 2;
  if (numProcessors > 943936838)
  {
    if (numProcessors <= 1479463067)
    {
      v4 = numProcessors == 943936839 || numProcessors == 1418770316;
      v5 = 1463508716;
    }

    else if (numProcessors > 2009171117)
    {
      v4 = numProcessors == 2028621756;
      v5 = 2009171118;
    }

    else
    {
      v4 = numProcessors == 1479463068;
      v5 = 1801080018;
    }
  }

  else if (numProcessors <= 260141637)
  {
    v4 = numProcessors == -1439483605 || numProcessors == -823913143;
    v5 = -310978390;
  }

  else if (numProcessors > 526772276)
  {
    v4 = numProcessors == 526772277;
    v5 = 939270559;
  }

  else
  {
    v4 = numProcessors == 260141638;
    v5 = 280134364;
  }

  v6 = v4 || numProcessors == v5;
  if (v6 && [(VCHardwareSettingsMac *)self isMacBookAir])
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return 1;
    }

    else
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v3 = 1;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCHardwareSettingsMac maxActiveScreenEncoders]";
        v14 = 1024;
        v15 = 1036;
        v16 = 1024;
        v17 = 1;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing max screen encoders=%d", &v10, 0x22u);
      }
    }
  }

  return v3;
}

- (unsigned)maxFrameRateSupportedScreenShare
{
  numProcessors = self->_numProcessors;
  if (numProcessors > 943936838)
  {
    if (numProcessors <= 1479463067)
    {
      if (numProcessors == 943936839)
      {
        if (![(VCHardwareSettingsMac *)self isMacBookAir])
        {
          return 60;
        }

        return 30;
      }

      v3 = numProcessors == 1418770316;
      v4 = 1463508716;
    }

    else if (numProcessors > 2009171117)
    {
      v3 = numProcessors == 2028621756;
      v4 = 2009171118;
    }

    else
    {
      v3 = numProcessors == 1479463068;
      v4 = 1801080018;
    }

    goto LABEL_20;
  }

  if (numProcessors <= 260141637)
  {
    v3 = numProcessors == -1439483605 || numProcessors == -823913143;
    v4 = -310978390;
LABEL_20:
    if (!v3 && numProcessors != v4)
    {
      return 60;
    }

    goto LABEL_25;
  }

  if (numProcessors > 526772276)
  {
    if (numProcessors != 526772277)
    {
      if (numProcessors != 939270559)
      {
        return 60;
      }

      return 30;
    }

LABEL_25:
    if ([(VCHardwareSettingsMac *)self isMacBookAir])
    {
      return 10;
    }

    return 30;
  }

  if (numProcessors != 260141638)
  {
    if (numProcessors != 280134364)
    {
      return 60;
    }

    goto LABEL_25;
  }

  return 30;
}

- (id)queryBoardId
{
  v18 = *MEMORY[0x1E69E9840];
  iterator = 0;
  v2 = *MEMORY[0x1E696CD68];
  RootEntry = IORegistryGetRootEntry(*MEMORY[0x1E696CD68]);
  if (!RootEntry)
  {
    return 0;
  }

  v4 = RootEntry;
  if (IORegistryCreateIterator(v2, "IOService", 0, &iterator) || (v7 = IOIteratorNext(iterator)) == 0)
  {
LABEL_3:
    v5 = 0;
  }

  else
  {
    v8 = v7;
    while (1)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v17 + 9) = v9;
      v17[0] = v9;
      v16 = v9;
      v15 = v9;
      v14 = v9;
      v13 = v9;
      v12 = v9;
      strcpy(className, "IOPlatformExpertDevice");
      if (IOObjectConformsTo(v8, className))
      {
        break;
      }

      IOObjectRelease(v8);
      v8 = IOIteratorNext(iterator);
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    v5 = IORegistryEntrySearchCFProperty(v8, "IOService", @"board-id", *MEMORY[0x1E695E480], 1u);
    IOObjectRelease(v8);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  IOObjectRelease(v4);
  if (v5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSArray)supportedVideoPayloads
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(NSArray *)v3 addObject:&unk_1F5798190];
  [(NSArray *)v3 addObject:&unk_1F57981A8];
  if ([(VCHardwareSettings *)self supportHEVC])
  {
    [(NSArray *)v3 addObject:&unk_1F57981C0];
  }

  return v3;
}

- (BOOL)supportsDedicatedSystemAudioStream
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VCHardwareSettingsMac *)self supportsSystemAudioTap];
  if (v3)
  {
    numProcessors = self->_numProcessors;
    LOBYTE(v3) = 1;
    if (numProcessors <= 943936838)
    {
      if (numProcessors > 260141637)
      {
        v5 = numProcessors == 260141638 || numProcessors == 280134364;
        v6 = 526772277;
      }

      else
      {
        v5 = numProcessors == -1439483605 || numProcessors == -823913143;
        v6 = -310978390;
      }
    }

    else if (numProcessors <= 1479463067)
    {
      v5 = numProcessors == 943936839 || numProcessors == 1418770316;
      v6 = 1463508716;
    }

    else if (numProcessors > 2009171117)
    {
      v5 = numProcessors == 2028621756;
      v6 = 2009171118;
    }

    else
    {
      v5 = numProcessors == 1479463068;
      v6 = 1801080018;
    }

    if (v5 || numProcessors == v6)
    {
      if (![(VCHardwareSettingsMac *)self isMacBookAir])
      {
        LOBYTE(v3) = 1;
        return v3;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v3)
        {
          return v3;
        }

        v11 = 136315650;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCHardwareSettingsMac supportsDedicatedSystemAudioStream]";
        v15 = 1024;
        v16 = 1182;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing mixed in system audio", &v11, 0x1Cu);
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)initForDevice:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      v4 = "[VCHardwareSettingsMac initForDevice:]";
      v5 = 1024;
      v6 = 124;
      v7 = 2112;
      v8 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to find configuration for virtual OSX device=%@", v3, 0x26u);
    }
  }
}

- (void)initForDevice:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 120;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to initialize", &v2, 0x1Cu);
    }
  }
}

- (void)supportsMVHEVCEncode
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v7;
        OUTLINED_FUNCTION_0();
        v16 = 352;
        v9 = " [%s] %s:%d Skipping AVE multicore checks on internal install";
        v10 = v8;
        v11 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v12;
        OUTLINED_FUNCTION_0();
        v16 = 352;
        v17 = 2112;
        v18 = v6;
        v19 = 2048;
        v20 = a1;
        v9 = " [%s] %s:%d %@(%p) Skipping AVE multicore checks on internal install";
        v10 = v13;
        v11 = 48;
        goto LABEL_11;
      }
    }
  }

  *a3 = a2 & 1;
}

void __45__VCHardwareSettingsMac_supportsMVHEVCEncode__block_invoke_cold_1(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_1_1();
    v15 = "[VCHardwareSettingsMac supportsMVHEVCEncode]_block_invoke";
    v16 = 1024;
    v17 = 361;
    v18 = 1024;
    LODWORD(v19) = a2;
    v6 = " [%s] %s:%d Failed to create VTCompressionSession to query number of cores err=%d";
    v7 = v5;
    v8 = 34;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, v6, &v12, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 136316418;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCHardwareSettingsMac supportsMVHEVCEncode]_block_invoke";
      v16 = 1024;
      v17 = 361;
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = v11;
      v22 = 1024;
      v23 = a2;
      v6 = " [%s] %s:%d %@(%p) Failed to create VTCompressionSession to query number of cores err=%d";
      v7 = v10;
      v8 = 54;
      goto LABEL_12;
    }
  }
}

@end
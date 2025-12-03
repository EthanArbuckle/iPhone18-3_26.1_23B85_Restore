@interface ASDTIOPAudioLPMicDevice
+ (id)enableListeningOnGesturePropertyForService:(id)service;
+ (id)enableListeningPropertyForService:(id)service;
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioLPMicDevice)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin;
- (ASDTIOPAudioLPMicStream)inputStream;
- (BOOL)getEnabledChannelMask:(unsigned int *)mask;
- (BOOL)nonSecureInputEnabled;
- (BOOL)setEnabledChannelMask:(unsigned int)mask;
- (BOOL)setupCustomProperties:(id)properties;
- (BOOL)subclassInitWithConfig:(id)config;
- (BOOL)updateFromStreamDescription;
- (id).cxx_construct;
- (id)getZeroTimestampBlock;
- (int)performPowerStatePrewarm:(int)prewarm;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (unsigned)availablePastDataFrames;
- (unsigned)ioBufferSizeFrames;
- (unsigned)timestampPeriod;
- (void)exclavesStatusTracker;
- (void)updateFromStreamDescription;
@end

@implementation ASDTIOPAudioLPMicDevice

+ (id)enableListeningPropertyForService:(id)service
{
  v12[4] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = *MEMORY[0x277CEFC28];
  v11[0] = *MEMORY[0x277CEFC58];
  v11[1] = v4;
  v12[0] = @"ASDTIOPAudioCMEnableProperty";
  v12[1] = &unk_285359B20;
  v5 = *MEMORY[0x277CEFC38];
  v12[2] = serviceCopy;
  v6 = *MEMORY[0x277CEFC30];
  v11[2] = v5;
  v11[3] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)enableListeningOnGesturePropertyForService:(id)service
{
  v12[4] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = *MEMORY[0x277CEFC28];
  v11[0] = *MEMORY[0x277CEFC58];
  v11[1] = v4;
  v12[0] = @"ASDTIOPAudioCMEnableProperty";
  v12[1] = &unk_285359B38;
  v5 = *MEMORY[0x277CEFC38];
  v12[2] = serviceCopy;
  v6 = *MEMORY[0x277CEFC30];
  v11[2] = v5;
  v11[3] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v9[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtServiceID = [configCopy asdtServiceID];
  v5 = [(ASDTIOServiceManager *)ASDTIOPAudioLPMicServiceManager dependencyForID:asdtServiceID andConfiguration:configCopy];

  if (v5)
  {
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTIOPAudioLPMicDevice)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin
{
  v13 = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  asdtServiceID = [configCopy asdtServiceID];
  v11 = [(ASDTIOServiceManager *)ASDTIOPAudioLPMicServiceManager matchedIOServiceForID:asdtServiceID];

  [v11 ioObject];
  [v11 idValue];
  [objc_claimAutoreleasedReturnValue() clientType];
  operator new();
}

- (BOOL)subclassInitWithConfig:(id)config
{
  v16 = *MEMORY[0x277D85DE8];
  configCopy = config;
  ASDT::IOUserClient::SetAlwaysLoadPropertiesFromRegistry(self->_lpMicUserClient.__ptr_);
  if ((ASDT::IOUserClient::OpenConnection(self->_lpMicUserClient.__ptr_) & 1) == 0)
  {
    v13 = ASDTIOPLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice subclassInitWithConfig:];
    }

    goto LABEL_17;
  }

  modelName = [(ASDAudioDevice *)self modelName];
  v6 = [modelName isEqualToString:@"AOP Audio-1"];

  if (v6)
  {
    [(ASDAudioDevice *)self setModelName:@"ASDTIOPAudioLPMicDevice"];
  }

  deviceName = [(ASDAudioDevice *)self deviceName];
  v8 = [deviceName isEqualToString:@"AOP Audio-1"];

  if (v8)
  {
    [(ASDAudioDevice *)self setDeviceName:@"AOP Audio"];
  }

  if (![(ASDAudioDevice *)self transportType])
  {
    [(ASDAudioDevice *)self setTransportType:1651274862];
  }

  [(ASDAudioDevice *)self setClockDomain:ASDT::IOPAudio::LPMic::UserClient::GetClockDomain(self->_lpMicUserClient.__ptr_)];
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  firstObject = [inputStreams firstObject];
  [(ASDTIOPAudioLPMicDevice *)self setInputStream:firstObject];

  inputStream = [(ASDTIOPAudioLPMicDevice *)self inputStream];
  objc_opt_class();
  LOBYTE(firstObject) = objc_opt_isKindOfClass();

  if ((firstObject & 1) == 0)
  {
    v13 = ASDTIOPLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice subclassInitWithConfig:];
    }

    goto LABEL_17;
  }

  if (![(ASDTIOPAudioLPMicDevice *)self setupCustomProperties:configCopy])
  {
    v13 = ASDTIOPLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice subclassInitWithConfig:];
    }

LABEL_17:

    updateFromStreamDescription = 0;
    goto LABEL_18;
  }

  updateFromStreamDescription = [(ASDTIOPAudioLPMicDevice *)self updateFromStreamDescription];
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return updateFromStreamDescription;
}

- (BOOL)nonSecureInputEnabled
{
  nonSecureInputEnableProperty = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];
  if (nonSecureInputEnableProperty)
  {
    nonSecureInputEnableProperty2 = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];
    enabled = [nonSecureInputEnableProperty2 enabled];
  }

  else
  {
    enabled = 1;
  }

  return enabled;
}

- (BOOL)setupCustomProperties:(id)properties
{
  v35[8] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  HistoricDataSupported = ASDT::IOPAudio::LPMic::UserClient::GetHistoricDataSupported(self->_lpMicUserClient.__ptr_);
  if (![propertiesCopy asdtAddNonSecurePathEnable])
  {
    goto LABEL_4;
  }

  createForInput = [MEMORY[0x277CEFBA0] createForInput];
  [(ASDTIOPAudioLPMicDevice *)self setNonSecureInputEnableProperty:createForInput];

  nonSecureInputEnableProperty = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];

  if (nonSecureInputEnableProperty)
  {
    nonSecureInputEnableProperty2 = [(ASDTIOPAudioLPMicDevice *)self nonSecureInputEnableProperty];
    [(ASDTAudioDevice *)self addCustomProperty:nonSecureInputEnableProperty2];

LABEL_4:
    v9 = *MEMORY[0x277CEFC28];
    v33[0] = *MEMORY[0x277CEFC58];
    v8 = v33[0];
    v33[1] = v9;
    v10 = *MEMORY[0x277CEFC00];
    v11 = MEMORY[0x277CBEC28];
    v34[1] = &unk_285359B50;
    v34[2] = MEMORY[0x277CBEC28];
    v12 = *MEMORY[0x277CEFC18];
    v33[4] = *MEMORY[0x277CEFC10];
    v34[0] = @"ASDTPListProperty";
    v33[2] = v10;
    v33[3] = v12;
    v13 = *MEMORY[0x277CEFC60];
    v34[3] = @"com.apple.private.audio.hal.aop-audio.user-access";
    v34[4] = v13;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
    v35[0] = v23;
    v31[0] = v8;
    v31[1] = v9;
    v32[0] = @"ASDTRawProperty";
    v32[1] = &unk_285359B68;
    v32[2] = v11;
    v31[2] = v10;
    v31[3] = v12;
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&HistoricDataSupported length:4];
    v32[3] = v22;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
    v35[1] = v14;
    v29[0] = v8;
    v29[1] = v9;
    v30[0] = @"ASDTIOPAudioLPMicUInt32Property";
    v30[1] = &unk_285359B80;
    v29[2] = v10;
    v30[2] = v11;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v35[2] = v15;
    v27[0] = v8;
    v27[1] = v9;
    v28[0] = @"ASDTIOPAudioLPMicUInt32Property";
    v28[1] = &unk_285359B98;
    v27[2] = v10;
    v28[2] = v11;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v35[3] = v16;
    v25[0] = v8;
    v25[1] = v9;
    v26[0] = @"ASDTIOPAudioLPMicUInt32Property";
    v26[1] = &unk_285359BB0;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v35[4] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];

    v19 = [(ASDTAudioDevice *)self addCustomProperties:v18];
    goto LABEL_5;
  }

  v18 = ASDTIOPLogType();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(ASDAudioDevice *)self deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTIOPAudioLPMicDevice setupCustomProperties:];
  }

  v19 = 0;
LABEL_5:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)updateFromStreamDescription
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(ASDAudioDevice *)self isRunning])
  {
    v3 = ASDTIOPLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice updateFromStreamDescription];
    }

    goto LABEL_11;
  }

  memset(&v11, 0, sizeof(v11));
  if ((ASDT::IOPAudio::LPMic::UserClient::GetStreamDescription(self->_lpMicUserClient.__ptr_, &v11) & 1) == 0)
  {
    v8 = ASDTIOPLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioLPMicDevice updateFromStreamDescription];
    }

    goto LABEL_11;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v11.var0];
  v10 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(ASDAudioDevice *)self setSamplingRates:v5];

  inputStream = [(ASDTIOPAudioLPMicDevice *)self inputStream];
  LOBYTE(v5) = [inputStream updateFromStreamDescription:&v11];

  if ((v5 & 1) == 0)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  [(ASDTAudioDevice *)self setSamplingRate:v11.var0];
  result = 1;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)timestampPeriod
{
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice timestampPeriod];
  }

  return ASDT::IOPAudio::LPMic::UserClient::GetZeroTimeStampInterval(ptr);
}

- (unsigned)ioBufferSizeFrames
{
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice ioBufferSizeFrames];
  }

  return ASDT::IOPAudio::LPMic::UserClient::GetRingBufferSize(ptr);
}

- (unsigned)availablePastDataFrames
{
  lpMicEngineStatus = [(ASDTIOPAudioLPMicDevice *)self lpMicEngineStatus];
  if (lpMicEngineStatus)
  {
    v4 = lpMicEngineStatus;
    LODWORD(lpMicEngineStatus) = [(ASDAudioDevice *)self isRunning];
    if (lpMicEngineStatus)
    {
      ASDT::IOPAudio::LPMic::EngineStatus::Snapshot(v4, &v8);
      v5 = LODWORD(v8.var1) - LODWORD(v8.var0);
      v6 = v8.var1 - v8.var0 + 1;
      LODWORD(lpMicEngineStatus) = [(ASDTIOPAudioLPMicDevice *)self maximumPastDataFrames];
      if (v6 < lpMicEngineStatus)
      {
        LODWORD(lpMicEngineStatus) = v5 + 1;
      }
    }
  }

  return lpMicEngineStatus;
}

- (BOOL)getEnabledChannelMask:(unsigned int *)mask
{
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice getEnabledChannelMask:];
  }

  if (!mask)
  {
    [ASDTIOPAudioLPMicDevice getEnabledChannelMask:];
  }

  return ASDT::IOPAudio::LPMic::UserClient::GetEnabledChannelMask(ptr, mask);
}

- (BOOL)setEnabledChannelMask:(unsigned int)mask
{
  v18 = *MEMORY[0x277D85DE8];
  ptr = self->_lpMicUserClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioLPMicDevice setEnabledChannelMask:];
  }

  v11 = 0;
  SupportedChannelMask = ASDT::IOPAudio::LPMic::UserClient::GetSupportedChannelMask(ptr, &v11);
  if (SupportedChannelMask)
  {
    if ((v11 | mask) == v11)
    {
      LOBYTE(SupportedChannelMask) = ASDT::IOPAudio::LPMic::UserClient::SetEnabledChannelMask(self->_lpMicUserClient.__ptr_, mask);
    }

    else
    {
      v7 = ASDTIOPLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        deviceUID = [(ASDAudioDevice *)self deviceUID];
        *buf = 138412802;
        v13 = deviceUID;
        v14 = 1024;
        maskCopy = mask;
        v16 = 1024;
        v17 = v11;
        _os_log_error_impl(&dword_2416E9000, v7, OS_LOG_TYPE_ERROR, "%@: Bad enabled channel mask value: %x; supported %x", buf, 0x18u);
      }

      LOBYTE(SupportedChannelMask) = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return SupportedChannelMask;
}

- (int)performPowerStatePrewarm:(int)prewarm
{
  v10 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ASDTIOPAudioLPMicDevice;
  result = [(ASDTAudioDevice *)&v9 performPowerStatePrewarm:?];
  if (!result)
  {
    if (prewarm != 1970304877)
    {
      goto LABEL_5;
    }

    ptr = self->_lpMicUserClient.__ptr_;
    if (!ptr)
    {
      [ASDTIOPAudioLPMicDevice performPowerStatePrewarm:];
    }

    if (!ASDT::IOPAudio::LPMic::UserClient::StartIO(ptr))
    {
      v7 = ASDTIOPLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOPAudioLPMicDevice performPowerStatePrewarm:];
      }

      result = 1852990585;
    }

    else
    {
LABEL_5:
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getZeroTimestampBlock
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke;
  aBlock[3] = &unk_278CE9C68;
  v6[1] = &self->_anon_2a0[56];
  objc_copyWeak(v6, &location);
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke(uint64_t a1, double *a2, unint64_t *a3, unint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = **(a1 + 40);
  if (v5)
  {
    if ((ASDT::IOPAudio::LPMic::EngineStatus::Snapshot(v5, &v15) & 1) == 0)
    {
      v9 = ASDTIOPLogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v11 = [WeakRetained deviceUID];
        __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke_cold_1(v11, v16, v9, WeakRetained);
      }
    }

    if (v15.var2)
    {
      v12 = (v15.var1 - v15.var0 + 1);
    }

    else
    {
      v12 = 0.0;
    }

    result = 0;
    *a2 = v12;
    *a3 = v15.var2;
    *a4 = v15.var3;
  }

  else
  {
    result = 1937010544;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [streamCopy teardownIsolatedIOForUseCase:case];
  }

  else
  {
    v6 = 561214578;
  }

  return v6;
}

- (void)exclavesStatusTracker
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke;
  block[3] = &unk_278CE9C90;
  block[4] = self;
  if (self->_exclavesStatusTrackerOnce != -1)
  {
    dispatch_once(&self->_exclavesStatusTrackerOnce, block);
  }

  return self->_exclavesStatusTracker.__ptr_;
}

void __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (asdt_exclaves_available())
  {
    v2 = [*(a1 + 32) exclavesSensorName];
    v3 = [v2 UTF8String];
    v4 = strlen(v3);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v12 = v4;
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    *(&__dst + v5) = 0;
    ASDT::Exclaves::StatusTracker::Create();
    v6 = *(a1 + 32);
    v7 = *(v6 + 760);
    *(v6 + 760) = v10;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v12 < 0)
    {
      operator delete(__dst);
    }

    if (!*(*(a1 + 32) + 760))
    {
      v8 = ASDTIOPLogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 32) deviceUID];
        objc_claimAutoreleasedReturnValue();
        __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke_cold_1();
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (ASDTIOPAudioLPMicStream)inputStream
{
  WeakRetained = objc_loadWeakRetained(&self->_inputStream);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_lpMicUserClient.__ptr_ = 0;
  p_lpMicEngineStatus = &self->_lpMicEngineStatus;
  self->_lpMicEngineStatus.__vftable = (MEMORY[0x277CEFBA8] + 16);
  ASDT::IOConnect::IOConnect(&self->_lpMicEngineStatus.refcount);
  *&p_lpMicEngineStatus[2].refcount = 0;
  LODWORD(p_lpMicEngineStatus[2].meta) = 0;
  self->_exclavesStatusTracker.__ptr_ = 0;
  return self;
}

- (void)initWithConfig:withDeviceManager:andPlugin:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to create LPMicDevice user client", v5);
}

- (void)subclassInitWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to open connection to LPMicDevice user client", v5);
}

- (void)subclassInitWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Bad input stream.", v5);
}

- (void)subclassInitWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to allocate custom properties.", v5);
}

- (void)setupCustomProperties:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to add non-secure input property.", v5);
}

- (void)updateFromStreamDescription
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Attempt to update stream description while running.", v5);
}

- (void)performPowerStatePrepare:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to map the engine status.", v5);
}

- (void)performPowerStatePrewarm:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to StartIO.", v5);
}

void __48__ASDTIOPAudioLPMicDevice_getZeroTimestampBlock__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_2(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v6, v7, "%@: Too many attempts at reading engine status.", v8);
}

void __48__ASDTIOPAudioLPMicDevice_exclavesStatusTracker__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to allocate memory for status tracker.", v5);
}

@end
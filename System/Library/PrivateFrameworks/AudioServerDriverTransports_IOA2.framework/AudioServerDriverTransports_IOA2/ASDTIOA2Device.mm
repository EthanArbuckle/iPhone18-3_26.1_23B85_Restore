@interface ASDTIOA2Device
+ (id)ioServiceDependenciesForConfig:(id)config;
+ (id)matcherWithDelegate:(id)delegate;
- (ASDTIOA2Device)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin;
- (BOOL)_createDeviceProperties;
- (BOOL)_openConnection;
- (BOOL)_setControlValues:(const unsigned int *)values withCount:(unint64_t)count resultValues:(unsigned int *)resultValues count:(unint64_t *)a6 forControl:(unsigned int)control;
- (BOOL)_setSamplingRate:(double)rate;
- (BOOL)_updateControls;
- (BOOL)_updateStreams;
- (BOOL)ioRequestBegin;
- (BOOL)nonSecureInputEnabled;
- (BOOL)subclassInitWithConfig:(id)config;
- (id).cxx_construct;
- (id)_channelLayoutForDirection:(unsigned int)direction;
- (id)_getCurrentFormatForStream:(unsigned int)stream;
- (id)_getObjectByUCID:(unsigned int)d fromObjects:(id)objects;
- (id)_markOrCreateStreamsForDirection:(unsigned int)direction;
- (id)_streamInfoForStream:(unsigned int)stream;
- (id)customDataPropertyWithKey:(id)key;
- (id)customPropertyWithKey:(id)key;
- (id)getZeroTimestampBlock;
- (id)samplingRates;
- (id)unmarkedObjects:(id)objects;
- (id)updateClientInputPositionBlock;
- (id)updateClientOutputPositionBlock;
- (int)performPowerStatePrewarm:(int)prewarm;
- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case;
- (int)systemSleepPending;
- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case;
- (shared_lock<std::shared_mutex>)lockConfigShared;
- (unique_lock<std::shared_mutex>)lockConfigExclusive;
- (unsigned)customUInt32WithKey:(id)key defaultValue:(unsigned int)value;
- (void)_addControls:(id)controls;
- (void)_addStreams:(id)streams;
- (void)_openConnection;
- (void)_performUnderlyingStopIO:(unint64_t)o;
- (void)_removeControls:(id)controls;
- (void)_removeStreams:(id)streams;
- (void)_requestUnderlyingStopIO;
- (void)_updateProperties;
- (void)clearInputBuffers;
- (void)clearMark:(id)mark;
- (void)clearOutputBuffers;
- (void)dealloc;
- (void)doConfigChange:(IOAudio2Notification *)change;
- (void)exclavesStatusTracker;
- (void)forceStopIO;
- (void)handleConfigChange:(IOAudio2Notification *)change;
- (void)handleControlChange:(IOAudio2Notification *)change;
- (void)handleIOA2PropertyChanged:(const AudioObjectPropertyAddress *)changed forObject:(id)object;
- (void)handleMachPortMessage;
- (void)handlePropertyChanged:(IOAudio2Notification *)changed;
- (void)handleTransportChanged:(IOAudio2Notification *)changed;
- (void)ioRequestBegin;
- (void)ioRequestEnd;
- (void)ioRequestsBlock;
- (void)ioRequestsRelease;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setOutputVolumesToNominal;
- (void)setSamplingRate:(double)rate;
- (void)setupCustomPropertySelectorMap;
- (void)updateInjectionVisibility;
@end

@implementation ASDTIOA2Device

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v11[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtDeviceUID = [configCopy asdtDeviceUID];
  if (asdtDeviceUID)
  {
    [objc_msgSend(self "ioServiceManagerClass")];
  }

  else
  {
    [objc_msgSend(self "ioServiceManagerClass")];
  }
  v6 = ;
  v7 = v6;
  if (v6)
  {
    v11[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (ASDTIOA2Device)initWithConfig:(id)config withDeviceManager:(id)manager andPlugin:(id)plugin
{
  configCopy = config;
  managerCopy = manager;
  pluginCopy = plugin;
  v11 = MEMORY[0x277CEFB90];
  asdtDeviceUID = [configCopy asdtDeviceUID];
  v13 = [v11 forIdentifier:asdtDeviceUID andClientType:0];

  v14 = [objc_msgSend(objc_opt_class() "ioServiceManagerClass")];
  v15 = -[ASDTIOA2Device initWithIOA2Device:config:deviceManager:plugin:](self, "initWithIOA2Device:config:deviceManager:plugin:", [v14 ioObject], configCopy, managerCopy, pluginCopy);

  return v15;
}

- (BOOL)subclassInitWithConfig:(id)config
{
  cf[3] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtExclavesInputBufferName = [configCopy asdtExclavesInputBufferName];
  [(ASDTIOA2Device *)self setExclavesInputBufferName:asdtExclavesInputBufferName];

  asdtExclavesInjectionBufferName = [configCopy asdtExclavesInjectionBufferName];
  [(ASDTIOA2Device *)self setExclavesInjectionBufferName:asdtExclavesInjectionBufferName];

  -[ASDTIOA2Device setIsolatedInputUseCaseID:](self, "setIsolatedInputUseCaseID:", [configCopy asdtIsolatedInputUseCaseID]);
  if ([configCopy asdtAddNonSecurePathEnable])
  {
    createForInput = [MEMORY[0x277CEFBA0] createForInput];
    [(ASDTIOA2Device *)self setNonSecureInputEnableProperty:createForInput];

    nonSecureInputEnableProperty = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];

    if (!nonSecureInputEnableProperty)
    {
      v24 = ASDTIOA2LogType();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOA2Device subclassInitWithConfig:];
      }

      goto LABEL_38;
    }

    nonSecureInputEnableProperty2 = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];
    [(ASDTAudioDevice *)self addCustomProperty:nonSecureInputEnableProperty2];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  deviceUID = [(ASDAudioDevice *)self deviceUID];
  v14 = [v10 stringWithFormat:@"%s.%@.%@.stopIO", "com.apple.AudioServerDriverTransports", v12, deviceUID];

  uTF8String = [v14 UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(uTF8String, v16);
  v18 = *(self + 149);
  *(self + 149) = v17;

  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  deviceUID2 = [(ASDAudioDevice *)self deviceUID];
  v23 = [v19 stringWithFormat:@"%s.%@.%@.notification", "com.apple.AudioServerDriverTransports", v21, deviceUID2];

  v24 = v23;
  uTF8String2 = [v23 UTF8String];
  v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v27 = dispatch_queue_create(uTF8String2, v26);
  v28 = *(self + 151);
  *(self + 151) = v27;

  if (!*(self + 149) || !*(self + 151))
  {
    v40 = ASDTIOA2LogType();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

    goto LABEL_37;
  }

  NumberStreams = ASDT::IOA2UserClient::GetNumberStreams(*(self + 77), 1);
  v30 = NumberStreams != 0;
  v31 = [configCopy objectForKey:*MEMORY[0x277CEFBC8]];

  if (v31)
  {
    canBeDefaultInputDevice = [(ASDAudioDevice *)self canBeDefaultInputDevice];
    if (NumberStreams)
    {
      v30 = canBeDefaultInputDevice;
    }

    else
    {
      v30 = 0;
    }
  }

  [(ASDAudioDevice *)self setCanBeDefaultInputDevice:v30];
  v33 = ASDT::IOA2UserClient::GetNumberStreams(*(self + 77), 0);
  v34 = v33 != 0;
  v35 = [configCopy objectForKey:*MEMORY[0x277CEFBD0]];

  if (v35)
  {
    canBeDefaultOutputDevice = [(ASDAudioDevice *)self canBeDefaultOutputDevice];
    if (v33)
    {
      v34 = canBeDefaultOutputDevice;
    }

    else
    {
      v34 = 0;
    }
  }

  [(ASDAudioDevice *)self setCanBeDefaultOutputDevice:v34];
  v37 = [configCopy objectForKey:*MEMORY[0x277CEFBD8]];

  if (!v37)
  {
    [(ASDAudioDevice *)self setCanBeDefaultSystemDevice:1];
  }

  ASDT::IOA2UserClient::CopyDeviceName(*(self + 77), cf);
  [(ASDAudioDevice *)self setDeviceName:cf[0]];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  ASDT::IOA2UserClient::CopyDeviceManufacturer(*(self + 77), cf);
  [(ASDAudioDevice *)self setManufacturerName:cf[0]];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (![(ASDTIOA2Device *)self _openConnection])
  {
    v40 = ASDTIOA2LogType();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

    goto LABEL_37;
  }

  if (![(ASDTIOA2Device *)self _createDeviceProperties])
  {
    v40 = ASDTIOA2LogType();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

    goto LABEL_37;
  }

  if (![(ASDTIOA2Device *)self _updateControls])
  {
    v40 = ASDTIOA2LogType();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (![(ASDTIOA2Device *)self _updateStreams])
  {
    v40 = ASDTIOA2LogType();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
LABEL_36:
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device subclassInitWithConfig:];
    }

LABEL_37:

LABEL_38:
    v39 = 0;
    goto LABEL_39;
  }

  ASDT::IOUserClient::SetAlwaysLoadPropertiesFromRegistry(*(self + 77));
  v38 = *(self + 77);
  v39 = 1;
  ASDT::IOUserClient::SetTerminationNotificationEnabled(v38);
LABEL_39:

  v41 = *MEMORY[0x277D85DE8];
  return v39;
}

- (void)dealloc
{
  injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
  [injectionStreamEnableProperty removeObserver:self forKeyPath:@"value"];

  v4.receiver = self;
  v4.super_class = ASDTIOA2Device;
  [(ASDAudioDevice *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
  v11 = injectionStreamEnableProperty;
  if (injectionStreamEnableProperty == objectCopy)
  {
    v12 = [pathCopy isEqualToString:@"value"];

    if (v12)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__ASDTIOA2Device_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v13[3] = &unk_278CE8C18;
      objc_copyWeak(&v14, &location);
      [(ASDAudioDevice *)self requestConfigurationChange:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __65__ASDTIOA2Device_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateInjectionVisibility];
}

- (void)exclavesStatusTracker
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke;
  block[3] = &unk_278CE8C40;
  block[4] = self;
  if (*(self + 145) != -1)
  {
    dispatch_once(self + 145, block);
  }

  return *(self + 146);
}

void __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke(uint64_t a1)
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
    v7 = *(v6 + 1168);
    *(v6 + 1168) = v10;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v12 < 0)
    {
      operator delete(__dst);
    }

    if (!*(*(a1 + 32) + 1168))
    {
      v8 = ASDTIOA2LogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 32) deviceUID];
        objc_claimAutoreleasedReturnValue();
        __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke_cold_1();
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unique_lock<std::shared_mutex>)lockConfigExclusive
{
  v3 = (self + 808);
  *v2 = v3;
  *(v2 + 8) = 1;
  std::__shared_mutex_base::lock(v3);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (shared_lock<std::shared_mutex>)lockConfigShared
{
  v3 = (self + 808);
  *v2 = v3;
  *(v2 + 8) = 1;
  std::__shared_mutex_base::lock_shared(v3);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)handleMachPortMessage
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to receive a message.", v5);
}

void __39__ASDTIOA2Device_handleMachPortMessage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleConfigChange:*(*(a1 + 32) + 8) + 48];
}

- (void)ioRequestsBlock
{
  OUTLINED_FUNCTION_2_0(self, a2);
  v6 = OUTLINED_FUNCTION_1_0(v3, 5.7781e-34, v4, v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v9, v10);
}

- (void)ioRequestsRelease
{
  OUTLINED_FUNCTION_2_0(self, a2);
  v6 = OUTLINED_FUNCTION_1_0(v3, 5.7781e-34, v4, v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v9, v10);
}

- (BOOL)ioRequestBegin
{
  v8 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 1040));
  v3 = *(self + 288);
  if (v3 <= 0)
  {
    *(self + 288) = v3 - 1;
    v4 = ASDTIOA2LogType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      [(ASDTIOA2Device *)deviceUID ioRequestBegin];
    }
  }

  std::mutex::unlock((self + 1040));
  v6 = *MEMORY[0x277D85DE8];
  return v3 < 1;
}

- (void)ioRequestEnd
{
  OUTLINED_FUNCTION_2_0(self, a2);
  v6 = OUTLINED_FUNCTION_1_0(v3, 5.7781e-34, v4, v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v9, v10);
}

- (void)handleConfigChange:(IOAudio2Notification *)change
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = ASDTIOA2LogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = deviceUID;
    _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@: Handle configuration change.", &buf, 0xCu);
  }

  [(ASDTAudioDevice *)self powerState];
  if ((asdtPowerStateCompare() & 0x80000000) != 0)
  {
    [(ASDTIOA2Device *)self doConfigChange:change];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x5012000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = &unk_2416E317F;
    v7 = *&change->var4;
    v17 = *&change->var0;
    v18 = v7;
    objc_initWeak(&location, self);
    [(ASDTIOA2Device *)self ioRequestsBlock];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__ASDTIOA2Device_handleConfigChange___block_invoke;
    v9[3] = &unk_278CE8C68;
    objc_copyWeak(&v10, &location);
    v9[4] = &buf;
    [(ASDAudioDevice *)self requestConfigurationChange:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __37__ASDTIOA2Device_handleConfigChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained doConfigChange:*(*(a1 + 32) + 8) + 48];
  [WeakRetained ioRequestsRelease];
}

- (void)doConfigChange:(IOAudio2Notification *)change
{
  buf[3] = *MEMORY[0x277D85DE8];
  v5 = ASDTIOA2LogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = deviceUID;
    _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@: Do configuration change.", buf, 0xCu);
  }

  [(ASDTIOA2Device *)self forceStopIO];
  [(ASDTIOA2Device *)self lockConfigExclusive];
  if (!ASDT::IOA2UserClient::PerformConfigChange(*(self + 77), change))
  {
    v7 = ASDTIOA2LogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device doConfigChange:];
    }
  }

  v8 = *(self + 128);
  std::mutex::lock(v8);
  std::mutex::unlock(v8);
  std::condition_variable::notify_all((self + 976));
  v9 = ASDTIOA2LogType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    deviceUID2 = [(ASDAudioDevice *)self deviceUID];
    v13 = 138412290;
    v14 = deviceUID2;
    _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_INFO, "%@: Signaled sample rate waiting thread", &v13, 0xCu);
  }

  if (*(self + 91))
  {
    v11 = ASDTIOA2LogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device doConfigChange:];
    }

    ASDT::IOMemoryMap::Release((self + 624));
  }

  [(ASDTIOA2Device *)self _updateProperties];
  [(ASDTIOA2Device *)self _updateControls];
  [(ASDTIOA2Device *)self _updateStreams];
  if (LOBYTE(buf[1]) == 1)
  {
    std::__shared_mutex_base::unlock(buf[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleControlChange:(IOAudio2Notification *)change
{
  v34 = *MEMORY[0x277D85DE8];
  [(ASDTIOA2Device *)self lockConfigShared];
  v5 = [(ASDTIOA2Device *)self _getControlByUCID:change->var0];
  var1 = change->var1;
  if (var1 == 1668443751)
  {
    (*(**(self + 77) + 24))(*(self + 77));
    v10 = ASDTIOA2LogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      if ([v5 objectClass] >> 29 && objc_msgSend(v5, "objectClass") >> 24 <= 0x7E)
      {
        v12 = [v5 objectClass] >> 24;
      }

      else
      {
        v12 = 32;
      }

      if (([v5 objectClass] & 0xE00000) != 0 && (objc_msgSend(v5, "objectClass") >> 16) <= 0x7Eu)
      {
        v14 = ([v5 objectClass] >> 16);
      }

      else
      {
        v14 = 32;
      }

      if (([v5 objectClass] & 0xE000) != 0 && (objc_msgSend(v5, "objectClass") >> 8) <= 0x7Eu)
      {
        v16 = ([v5 objectClass] >> 8);
      }

      else
      {
        v16 = 32;
      }

      if (([v5 objectClass] & 0xE0) != 0 && objc_msgSend(v5, "objectClass") <= 0x7Eu)
      {
        objectClass = [v5 objectClass];
      }

      else
      {
        objectClass = 32;
      }

      *buf = 138413314;
      *&buf[4] = deviceUID;
      v24 = 1024;
      v25 = v12;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = objectClass;
      _os_log_impl(&dword_2416BA000, v10, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' range change notification.", buf, 0x24u);
    }

    ASDT::IOA2UserClient::CopyControlDictionaryByID(*(self + 77), change->var0, buf);
    if (v22)
    {
      std::__shared_mutex_base::unlock_shared(v21);
      v22 = 0;
      [v5 synchronizeWithRegistryDictionary:*buf];
      if (*buf)
      {
        CFRelease(*buf);
      }

      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (var1 == 1668702572)
  {
    v7 = ASDTIOA2LogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      if ([v5 objectClass] >> 29 && objc_msgSend(v5, "objectClass") >> 24 <= 0x7E)
      {
        v9 = [v5 objectClass] >> 24;
      }

      else
      {
        v9 = 32;
      }

      if (([v5 objectClass] & 0xE00000) != 0 && (objc_msgSend(v5, "objectClass") >> 16) <= 0x7Eu)
      {
        v13 = ([v5 objectClass] >> 16);
      }

      else
      {
        v13 = 32;
      }

      if (([v5 objectClass] & 0xE000) != 0 && (objc_msgSend(v5, "objectClass") >> 8) <= 0x7Eu)
      {
        v15 = ([v5 objectClass] >> 8);
      }

      else
      {
        v15 = 32;
      }

      if (([v5 objectClass] & 0xE0) != 0 && objc_msgSend(v5, "objectClass") <= 0x7Eu)
      {
        objectClass2 = [v5 objectClass];
      }

      else
      {
        objectClass2 = 32;
      }

      var2 = change->var2;
      *buf = 138413570;
      *&buf[4] = deviceUID2;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      v29 = v15;
      v30 = 1024;
      v31 = objectClass2;
      v32 = 1024;
      v33 = var2;
      _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' value change notification: %u", buf, 0x2Au);
    }

    if (v22)
    {
      std::__shared_mutex_base::unlock_shared(v21);
      v22 = 0;
      [v5 pushValue:change->var2];
      goto LABEL_44;
    }

LABEL_47:
    std::__throw_system_error(1, "shared_lock::unlock: not locked");
    __break(1u);
    return;
  }

LABEL_44:

  if (v22 == 1)
  {
    std::__shared_mutex_base::unlock_shared(v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleTransportChanged:(IOAudio2Notification *)changed
{
  v18 = *MEMORY[0x277D85DE8];
  var1 = changed->var1;
  if (var1 == 1751215220 || var1 == 1735354734)
  {
    v7 = ASDTIOA2LogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      v9 = deviceUID;
      v10 = changed->var1;
      v11 = HIBYTE(v10);
      if ((v10 - 0x20000000) >> 24 >= 0x5F)
      {
        v11 = 32;
      }

      v12 = BYTE2(v10);
      if (BYTE2(v10) - 32 >= 0x5F)
      {
        v12 = 32;
      }

      v13 = BYTE1(v10);
      if (BYTE1(v10) - 32 >= 0x5F)
      {
        v13 = 32;
      }

      *v15 = 138413314;
      *&v15[4] = deviceUID;
      v10 = v10;
      *&v15[12] = 1024;
      *&v15[14] = v11;
      *&v15[18] = 1024;
      *&v15[20] = v12;
      LOWORD(v16) = 1024;
      *(&v16 + 2) = v13;
      if (v10 - 32 >= 0x5F)
      {
        v10 = 32;
      }

      HIWORD(v16) = 1024;
      v17 = v10;
      _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@: change in IO state to '%c%c%c%c'", v15, 0x24u);
    }

    [(ASDTIOA2Device *)self setNotifiedIORunning:changed->var1 == 1735354734, *v15, *&v15[16], v16];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleIOA2PropertyChanged:(const AudioObjectPropertyAddress *)changed forObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    propertyChangedDelegate = [(ASDTIOA2Device *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:changed forObject:objectCopy];
  }
}

- (void)handlePropertyChanged:(IOAudio2Notification *)changed
{
  objectID = [(ASDTIOA2Device *)self objectID];
  selfCopy = self;
  v7 = selfCopy;
  if (!changed->var0)
  {
    v10 = selfCopy;
    if (!objectID)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  [(ASDTIOA2Device *)selfCopy lockConfigShared];
  (*(*v7[77] + 24))(v7[77]);
  v8 = [v7 _getStreamByUCID:changed->var0];
  v9 = v8;
  if (v8)
  {
    objectID = [v8 objectID];
    v10 = v9;
    v11 = v7;
  }

  else
  {
    v11 = [v7 _getControlByUCID:changed->var0];
    if (v11)
    {
      ASDT::IOA2UserClient::CopyControlDictionaryByID(v7[77], changed->var0, &cf);
      [v11 synchronizeWithRegistryDictionary:cf];
      objectID = [v11 objectID];
      v10 = v11;

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v10 = v7;
    }
  }

  if (var4 == 1)
  {
    std::__shared_mutex_base::unlock_shared(v15);
  }

  if (objectID)
  {
LABEL_9:
    v15 = *&changed->var2;
    var4 = changed->var4;
    [v7 handleIOA2PropertyChanged:&v15 forObject:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      injectionStream = [v12 injectionStream];
      [v7 handleIOA2PropertyChanged:&v15 forObject:injectionStream];
    }
  }

LABEL_11:
}

- (id)_getObjectByUCID:(unsigned int)d fromObjects:(id)objects
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectsCopy = objects;
  v6 = [objectsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_2853587A0, v13}] && objc_msgSend(v9, "userClientID") == d)
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [objectsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearMark:(id)mark
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  markCopy = mark;
  v4 = [markCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(markCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 setMarked:{0, v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [markCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)unmarkedObjects:(id)objects
{
  v17 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_2853587A0, v12}] && (objc_msgSend(v9, "marked") & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_markOrCreateStreamsForDirection:(unsigned int)direction
{
  v46 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  ASDT::IOA2UserClient::CopyStreamList(*(self + 77), direction == 1768845428, &theArray);
  v4 = theArray;
  if (!theArray)
  {
    goto LABEL_47;
  }

  Count = CFArrayGetCount(theArray);
  v6 = Count;
  v7 = theArray;
  if (!theArray)
  {
    v8 = 0;
    if (!Count)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v8 = CFArrayGetCount(theArray);
  if (v6)
  {
LABEL_6:
    for (i = 0; v6 != i; ++i)
    {
      if (v4 == v7 && v8 == i)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(v4, i, &cf);
      if (cf && (v11 = CFGetTypeID(cf), v11 == CFDictionaryGetTypeID()))
      {
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, &v39);
      }

      else
      {
        v39 = 0;
      }

      v38 = 0;
      if ((ASDT::IOA2UserClient::GetStreamInfo_ID(&v39, &v38, v10) & 1) == 0)
      {
        v12 = ASDTIOA2LogType();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          deviceUID = [(ASDAudioDevice *)self deviceUID];
          v20 = v39;
          *buf = 138412546;
          v43 = deviceUID;
          v44 = 2112;
          v45 = v20;
          _os_log_error_impl(&dword_2416BA000, v12, OS_LOG_TYPE_ERROR, "%@: Bad stream dict: %@", buf, 0x16u);
        }

        goto LABEL_36;
      }

      v12 = [(ASDTIOA2Device *)self _streamInfoForStream:v38];
      if (!v12)
      {
        v14 = ASDTIOA2LogType();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          deviceUID2 = [(ASDAudioDevice *)self deviceUID];
          *buf = 138412546;
          v43 = deviceUID2;
          v44 = 1024;
          LODWORD(v45) = v38;
          _os_log_error_impl(&dword_2416BA000, v14, OS_LOG_TYPE_ERROR, "%@: Failed to get stream dictionary for ID: %u", buf, 0x12u);
        }

        goto LABEL_35;
      }

      v13 = [(ASDTIOA2Device *)self _getStreamByUCID:v38];
      v14 = v13;
      if (v13)
      {
        [v13 setMarked:1];
        [v14 synchronizeWithRegistryDictionary:v12];
        injectionStream = [v14 injectionStream];
        if (!injectionStream)
        {
          goto LABEL_35;
        }

        v16 = ASDT::IOA2UserClient::SupportsInputStreamInjection(*(self + 77));

        if (!v16)
        {
          goto LABEL_35;
        }

        injectionStream2 = [v14 injectionStream];
        [injectionStream2 setMarked:1];

        injectionStream3 = [v14 injectionStream];
        [injectionStream3 synchronizeWithRegistryDictionary:v12];
      }

      else
      {
        v22 = [(ASDTIOA2Device *)self createStreamForUserClientID:v38 direction:direction registryDict:v12];
        injectionStream3 = v22;
        if (v22)
        {
          [v22 setMarked:1];
          [array addObject:injectionStream3];
          if (direction != 1768845428)
          {
            goto LABEL_34;
          }

          if ([injectionStream3 usesIsolatedIO])
          {
            [injectionStream3 setIsolatedUseCaseID:{-[ASDTIOA2Device isolatedInputUseCaseID](self, "isolatedInputUseCaseID")}];
            exclavesInputBufferName = [(ASDTIOA2Device *)self exclavesInputBufferName];
            [injectionStream3 setExclavesBufferName:exclavesInputBufferName];

            [(ASDAudioDevice *)self setSupportsIsolatedIO:1];
          }

          if (!ASDT::IOA2UserClient::SupportsInputStreamInjection(*(self + 77)))
          {
            goto LABEL_34;
          }

          exclavesInjectionBufferName = [(ASDTIOA2Device *)self exclavesInjectionBufferName];
          v25 = exclavesInjectionBufferName == 0;

          if (v25)
          {
            goto LABEL_34;
          }

          v26 = [[ASDTIOA2InjectionStream alloc] initWithIOA2Device:self inputStream:injectionStream3 registryDict:v12];
          if (v26)
          {
            [injectionStream3 setInjectionStream:v26];
            [(ASDTIOA2Device *)self setInjectionStream:v26];
          }

          else
          {
            log = ASDTIOA2LogType();
            v27 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
            v28 = log;
            if (v27)
            {
              deviceUID3 = [(ASDAudioDevice *)self deviceUID];
              *buf = 138412546;
              v43 = deviceUID3;
              v44 = 2112;
              v45 = v12;
              v33 = deviceUID3;
              _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@: Failed to create injection stream from %@.", buf, 0x16u);

              v28 = log;
            }
          }
        }

        else
        {
          v26 = ASDTIOA2LogType();
          if (os_log_type_enabled(&v26->super.super.super.super.super, OS_LOG_TYPE_ERROR))
          {
            deviceUID4 = [(ASDAudioDevice *)self deviceUID];
            *buf = 138412546;
            v43 = deviceUID4;
            v44 = 2112;
            v45 = v12;
            loga = deviceUID4;
            _os_log_error_impl(&dword_2416BA000, &v26->super.super.super.super.super, OS_LOG_TYPE_ERROR, "%@: Failed to create stream from: %@", buf, 0x16u);
          }
        }
      }

LABEL_34:

LABEL_35:
LABEL_36:

      if (v39)
      {
        CFRelease(v39);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

LABEL_45:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_47:
  v31 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)_createDeviceProperties
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (ASDT::IOA2UserClient::SupportsInputStreamInjection(*(self + 77)))
  {
    exclavesInjectionBufferName = [(ASDTIOA2Device *)self exclavesInjectionBufferName];

    if (exclavesInjectionBufferName)
    {
      v16 = 0;
      v4 = MEMORY[0x277CEFB88];
      v5 = *MEMORY[0x277CEFC58];
      v18[0] = @"ASDTRawProperty";
      v6 = *MEMORY[0x277CEFC18];
      v17[0] = v5;
      v17[1] = v6;
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v16 length:4];
      v18[1] = v7;
      v8 = *MEMORY[0x277CEFC20];
      v17[2] = *MEMORY[0x277CEFC28];
      v17[3] = v8;
      v18[2] = &unk_2853578B8;
      v18[3] = &unk_2853578D0;
      v17[4] = *MEMORY[0x277CEFBE8];
      v18[4] = &unk_2853578E8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
      v10 = [v4 customPropertyForConfig:v9];
      [(ASDTIOA2Device *)self setInjectionStreamEnableProperty:v10];

      injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
      LOBYTE(v7) = injectionStreamEnableProperty == 0;

      if (v7)
      {
        result = 0;
        goto LABEL_6;
      }

      injectionStreamEnableProperty2 = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
      [injectionStreamEnableProperty2 addObserver:self forKeyPath:@"value" options:1 context:0];

      injectionStreamEnableProperty3 = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
      [(ASDTAudioDevice *)self addCustomProperty:injectionStreamEnableProperty3];
    }
  }

  [(ASDTIOA2Device *)self _updateProperties];
  result = 1;
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateInjectionVisibility
{
  v19 = *MEMORY[0x277D85DE8];
  injectionStream = [(ASDTIOA2Device *)self injectionStream];

  if (injectionStream)
  {
    injectionStreamEnableProperty = [(ASDTIOA2Device *)self injectionStreamEnableProperty];
    value = [injectionStreamEnableProperty value];

    bytes = [value bytes];
    if (!bytes || [value length] < 4)
    {
      goto LABEL_13;
    }

    v7 = *bytes;
    outputStreams = [(ASDAudioDevice *)self outputStreams];
    injectionStream2 = [(ASDTIOA2Device *)self injectionStream];
    v10 = [outputStreams containsObject:injectionStream2];

    if ((v7 == 0) | v10 & 1)
    {
      if (((v7 == 0) & v10) != 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = ASDTIOA2LogType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID = [(ASDAudioDevice *)self deviceUID];
        v17 = 138412290;
        v18 = deviceUID;
        _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@: Removing injection stream.", &v17, 0xCu);
      }

      injectionStream3 = [(ASDTIOA2Device *)self injectionStream];
      [(ASDTAudioDevice *)self removeOutputStream:injectionStream3];
    }

    else
    {
      v14 = ASDTIOA2LogType();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID2 = [(ASDAudioDevice *)self deviceUID];
        v17 = 138412290;
        v18 = deviceUID2;
        _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEFAULT, "%@: Adding injection stream.", &v17, 0xCu);
      }

      injectionStream3 = [(ASDTIOA2Device *)self injectionStream];
      [(ASDTAudioDevice *)self addOutputStream:injectionStream3];
    }

    goto LABEL_13;
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateProperties
{
  v14 = *MEMORY[0x277D85DE8];
  (*(**(self + 77) + 24))(*(self + 77), a2);
  [(ASDTIOA2Device *)self setupCustomPropertySelectorMap];
  v3 = [ASDTIOA2DefaultChannelLayout forIOA2Device:self andScope:1869968496];
  v4 = [ASDTIOA2DefaultChannelLayout addressForDirection:1869968496];
  if ([(ASDTAudioDevice *)self updateCustomProperty:v3 withAddress:v4])
  {
    v5 = ASDTIOA2LogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 description];
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v12, 0xCu);
    }
  }

  v7 = [ASDTIOA2DefaultChannelLayout forIOA2Device:self andScope:1768845428];

  v8 = [ASDTIOA2DefaultChannelLayout addressForDirection:1768845428];

  if ([(ASDTAudioDevice *)self updateCustomProperty:v7 withAddress:v8])
  {
    v9 = ASDTIOA2LogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 description];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateStreams
{
  allStreams = [(ASDTAudioDevice *)self allStreams];
  [(ASDTIOA2Device *)self clearMark:allStreams];

  v4 = [(ASDTIOA2Device *)self _markOrCreateStreamsForDirection:1768845428];
  [(ASDTIOA2Device *)self _addStreams:v4];

  v5 = [(ASDTIOA2Device *)self _markOrCreateStreamsForDirection:1869968496];
  [(ASDTIOA2Device *)self _addStreams:v5];

  allStreams2 = [(ASDTAudioDevice *)self allStreams];
  v7 = [(ASDTIOA2Device *)self unmarkedObjects:allStreams2];
  [(ASDTIOA2Device *)self _removeStreams:v7];

  return 1;
}

- (BOOL)_updateControls
{
  v41 = *MEMORY[0x277D85DE8];
  controls = [(ASDAudioDevice *)self controls];
  [(ASDTIOA2Device *)self clearMark:controls];

  ASDT::IOA2UserClient::CopyControlList(*(self + 77), buf);
  v4 = *buf;
  v5 = v4;
  if (v4)
  {
    CFRelease(v4);
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v7)
  {
    v9 = *v33;
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectForKeyedSubscript:@"control ID"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = -[ASDTIOA2Device _getControlByUCID:](self, "_getControlByUCID:", [v12 unsignedIntValue]);
            v14 = v13;
            if (v13)
            {
              [v13 setMarked:1];
              [v14 synchronizeWithRegistryDictionary:v11];
            }

            else
            {
              v15 = [ASDTIOA2Control controlWithDictionary:v11 owningDevice:self];
              v16 = v15;
              if (v15)
              {
                [v15 setMarked:1];
                [(ASDTAudioDevice *)self addControl:v16];
                v14 = v16;
                [v16 synchronizeWithRegistryDictionary:v11];
              }

              else
              {
                v17 = ASDTIOA2LogType();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  deviceUID = [(ASDAudioDevice *)self deviceUID];
                  *buf = v27;
                  *&buf[4] = deviceUID;
                  v38 = 2112;
                  v39 = v11;
                  _os_log_error_impl(&dword_2416BA000, v17, OS_LOG_TYPE_ERROR, "%@: Failed to create control for dict: %@", buf, 0x16u);
                }

                v14 = 0;
              }
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  controls2 = [(ASDAudioDevice *)self controls];
  v20 = [(ASDTIOA2Device *)self unmarkedObjects:controls2];

  v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v21)
  {
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [(ASDTAudioDevice *)self removeControl:*(*(&v28 + 1) + 8 * j), v27];
      }

      v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  subclassUpdateControls = [(ASDTIOA2Device *)self subclassUpdateControls];
  v25 = *MEMORY[0x277D85DE8];
  return subclassUpdateControls;
}

- (void)setSamplingRate:(double)rate
{
  if ([(ASDTIOA2Device *)self _setSamplingRate:?])
  {
    v5.receiver = self;
    v5.super_class = ASDTIOA2Device;
    [(ASDTAudioDevice *)&v5 setSamplingRate:rate];
  }
}

- (BOOL)_setSamplingRate:(double)rate
{
  v30 = *MEMORY[0x277D85DE8];
  [(ASDTIOA2Device *)self lockConfigExclusive];
  [(ASDTIOA2Device *)self _samplingRate];
  if (v5 == rate)
  {
    goto LABEL_14;
  }

  if (!ASDT::IOA2UserClient::SetNominalSampleRate(*(self + 77), rate))
  {
    v13 = ASDTIOA2LogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device _setSamplingRate:];
    }

LABEL_14:
    v14 = 0;
LABEL_15:
    if (v23 == 1)
    {
      std::__shared_mutex_base::unlock(v22);
    }

    v15 = *MEMORY[0x277D85DE8];
    return v14;
  }

  v21 = std::chrono::system_clock::now().__d_.__rep_ + 5000000.0;
  while (1)
  {
    v6 = ASDTIOA2LogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412290;
      v25 = deviceUID;
      _os_log_impl(&dword_2416BA000, v6, OS_LOG_TYPE_INFO, "%@: Waiting to be signaled from IOA2 config change notification thread...", buf, 0xCu);
    }

    v8 = std::condition_variable_any::wait_until<std::unique_lock<std::shared_mutex>,std::chrono::system_clock,std::chrono::duration<double,std::ratio<1l,1000000l>>>(self + 976, &v22, &v21);
    [(ASDTIOA2Device *)self _samplingRate];
    v10 = v9;
    v11 = ASDTIOA2LogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v25 = deviceUID2;
      v26 = 2048;
      rateCopy2 = v10;
      v28 = 2048;
      rateCopy = rate;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_INFO, "%@: Woke! currentRate = %f, desiredRate = %f", buf, 0x20u);
    }

    if (v8)
    {
      break;
    }

    if (v10 == rate)
    {
      goto LABEL_21;
    }
  }

  v17 = ASDTIOA2LogType();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID3 = [(ASDAudioDevice *)self deviceUID];
    *buf = 138412290;
    v25 = deviceUID3;
    _os_log_impl(&dword_2416BA000, v17, OS_LOG_TYPE_DEFAULT, "%@: setSamplingRate timed out", buf, 0xCu);
  }

  if (v10 != rate)
  {
    v19 = ASDTIOA2LogType();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      deviceUID4 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412802;
      v25 = deviceUID4;
      v26 = 2048;
      rateCopy2 = rate;
      v28 = 2048;
      rateCopy = v10;
      _os_log_error_impl(&dword_2416BA000, v19, OS_LOG_TYPE_ERROR, "%@: setSamplingRate failed. Desired: %lf, Existing: %lf", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_21:
  if (v23)
  {
    std::__shared_mutex_base::unlock(v22);
    v23 = 0;
    v14 = 1;
    goto LABEL_15;
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
  return result;
}

- (id)_getCurrentFormatForStream:(unsigned int)stream
{
  cf[4] = *MEMORY[0x277D85DE8];
  ASDT::IOA2UserClient::CopyStreamDictionaryByID(*(self + 77), stream, cf);
  if (ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(cf, v9, v4))
  {
    v5 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:v9];
  }

  else
  {
    v6 = ASDTIOA2LogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASDAudioDevice *)self deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOA2Device _getCurrentFormatForStream:];
    }

    v5 = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)samplingRates
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allStreams = [(ASDTAudioDevice *)self allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    obj = allStreams;
    v26 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        physicalFormats = [v7 physicalFormats];
        v9 = [physicalFormats countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = *v28;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(physicalFormats);
              }

              v12 = *(*(&v27 + 1) + 8 * j);
              [v12 sampleRate];
              if (v13 != 0.0)
              {
                v14 = MEMORY[0x277CCABB0];
                [v12 sampleRate];
                v15 = [v14 numberWithDouble:?];
                [v3 addObject:v15];
LABEL_17:

                continue;
              }

              [v12 minimumSampleRate];
              if (v16 != 0.0)
              {
                v17 = MEMORY[0x277CCABB0];
                [v12 minimumSampleRate];
                v18 = [v17 numberWithDouble:?];
                [v3 addObject:v18];
              }

              [v12 maximumSampleRate];
              if (v19 != 0.0)
              {
                v20 = MEMORY[0x277CCABB0];
                [v12 maximumSampleRate];
                v15 = [v20 numberWithDouble:?];
                [v3 addObject:v15];
                goto LABEL_17;
              }
            }

            v9 = [physicalFormats countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v9);
        }
      }

      allStreams = obj;
      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  allObjects = [v3 allObjects];
  v22 = [allObjects sortedArrayUsingComparator:&__block_literal_global];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_openConnection
{
  v22 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  [(ASDTIOA2Device *)self createNotificationPort];
  if (v18)
  {
    v20 = *(self + 151);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __33__ASDTIOA2Device__openConnection__block_invoke;
    v16 = &unk_278CE8C18;
    objc_copyWeak(&v17, &location);
    v21 = MEMORY[0x245CEDA00](&v13);
    if ((*(*v18 + 16))(v18, &v20))
    {
      if (ASDT::IOUserClient::OpenConnection(*(self + 77)))
      {
        v3 = *(self + 77);
        v4 = v18;
        v18 = 0;
        v12 = v4;
        [(ASDTIOA2Device *)self objectID];
        v5 = ASDT::IOUserClient::SetConnectionNotification();
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        if (v5)
        {
          v6 = 1;
LABEL_18:

          objc_destroyWeak(&v17);
          goto LABEL_19;
        }

        v8 = ASDTIOA2LogType();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(ASDAudioDevice *)self deviceUID:0];
          objc_claimAutoreleasedReturnValue();
          [ASDTIOA2Device _openConnection];
        }
      }

      else
      {
        v8 = ASDTIOA2LogType();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(ASDAudioDevice *)self deviceUID];
          objc_claimAutoreleasedReturnValue();
          [ASDTIOA2Device _openConnection];
        }
      }
    }

    else
    {
      v8 = ASDTIOA2LogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOA2Device _openConnection];
      }
    }

    v6 = 0;
    goto LABEL_18;
  }

  v7 = ASDTIOA2LogType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(ASDAudioDevice *)self deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTIOA2Device _openConnection];
  }

  v6 = 0;
LABEL_19:
  v9 = v18;
  v18 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

void __33__ASDTIOA2Device__openConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleMachPortMessage];
}

- (void)_addStreams:(id)streams
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(streamsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 direction] == 1768845428)
        {
          [(ASDTAudioDevice *)self addInputStream:v8];
        }

        else
        {
          [(ASDTAudioDevice *)self addOutputStream:v8];
        }
      }

      v5 = [streamsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeStreams:(id)streams
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(streamsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 direction] == 1768845428)
        {
          [(ASDTAudioDevice *)self removeInputStream:v8];
        }

        else
        {
          [(ASDTAudioDevice *)self removeOutputStream:v8];
        }
      }

      v5 = [streamsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addControls:(id)controls
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  controlsCopy = controls;
  v5 = [controlsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(controlsCopy);
        }

        [(ASDTAudioDevice *)self addControl:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [controlsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeControls:(id)controls
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  controlsCopy = controls;
  v5 = [controlsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(controlsCopy);
        }

        [(ASDTAudioDevice *)self removeControl:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [controlsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)getZeroTimestampBlock
{
  objc_initWeak(&location, self);
  engineStatusIndirection = [(ASDTIOA2Device *)self engineStatusIndirection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke;
  v6[3] = &unk_278CE8CB0;
  v7[1] = engineStatusIndirection;
  objc_copyWeak(v7, &location);
  v4 = MEMORY[0x245CEDA00](v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);

  return v4;
}

uint64_t __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke(uint64_t a1, double *a2, unint64_t *a3, unint64_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 40);
  if (v4)
  {
    v21 = *v4;
    v20 = v4[1];
    v19 = v4[2];
    v18 = *v4;
    v17 = v20;
    v16 = v19;
    v9 = -3;
    while (v21 != v18 || v20 != v17 || v19 != v16)
    {
      v21 = *v4;
      v20 = v4[1];
      v19 = v4[2];
      v18 = *v4;
      v17 = v20;
      v16 = v19;
      if (__CFADD__(v9++, 1))
      {
        v11 = ASDTIOA2LogType();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          WeakRetained = objc_loadWeakRetained((a1 + 32));
          v13 = [WeakRetained deviceUID];
          __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke_cold_1(v13, v22, v11, WeakRetained);
        }

        break;
      }
    }

    result = 0;
    *a2 = v21;
    *a3 = v20;
    *a4 = v19;
  }

  else
  {
    result = 1937010544;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setupCustomPropertySelectorMap
{
  v27 = *MEMORY[0x277D85DE8];
  ASDT::IOA2UserClient::CopyCustomPropertyInfo(*(self + 77), buf);
  v2 = *buf;
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:{0, self}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 valueForKey:@"registry key"];
        v11 = [v9 valueForKey:@"property selector"];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [v4 setObject:v10 forKey:v11];
          v14 = ASDTIOA2LogType();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            unsignedIntValue = [v12 unsignedIntValue];
            *buf = 138412546;
            *&buf[4] = v10;
            v24 = 1024;
            v25 = unsignedIntValue;
            _os_log_debug_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEBUG, "Registry Key: %@, Selector: %u", buf, 0x12u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v6);
  }

  [v18 setCustomPropertySelectorMap:v4];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)customPropertyWithKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v5 = *(self + 77);
  applesauce::CF::StringRef::from_ns_noexcept(keyCopy, &cf);
  v6 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DictionaryRef>(v5, &cf, &v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

- (unsigned)customUInt32WithKey:(id)key defaultValue:(unsigned int)value
{
  keyCopy = key;
  valueCopy = value;
  v7 = *(self + 77);
  applesauce::CF::StringRef::from_ns_noexcept(keyCopy, &cf);
  v8 = ASDT::IOUserClient::CopyProperty<unsigned int>(v7, &cf, &valueCopy);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    value = valueCopy;
  }

  return value;
}

- (id)customDataPropertyWithKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v5 = *(self + 77);
  applesauce::CF::StringRef::from_ns_noexcept(keyCopy, &cf);
  v6 = ASDT::IOUserClient::CopyProperty<applesauce::CF::DataRef>(v5, &cf, &v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

- (void)setOutputVolumesToNominal
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  controls = [(ASDAudioDevice *)self controls];
  v3 = [controls countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(controls);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 controlScope] == 1869968496 && objc_msgSend(v6, "objectClass") == 1986817381)
        {
          LODWORD(v7) = 1.0;
          [v6 changeScalarValue:v7];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [controls countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (int)performPowerStatePrewarm:(int)prewarm
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ASDTIOA2Device;
  v5 = [(ASDTAudioDevice *)&v15 performPowerStatePrewarm:?];
  v6 = v5;
  if (prewarm != 1970304877 || v5)
  {
    goto LABEL_17;
  }

  v7 = ASDTIOA2LogType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    *buf = 138412290;
    v17 = deviceUID;
    _os_log_impl(&dword_2416BA000, v7, OS_LOG_TYPE_DEFAULT, "%@ Starting IO", buf, 0xCu);
  }

  if ([(ASDTIOA2Device *)self ioRequestBegin])
  {
    std::mutex::lock((self + 744));
    ++*(self + 150);
    *(self + 1177) = 0;
    if (![(ASDTIOA2Device *)self ucDeviceStarted])
    {
      if (!ASDT::IOA2UserClient::StartIO(*(self + 77)))
      {
        v6 = 2003329396;
        goto LABEL_14;
      }

      [(ASDTIOA2Device *)self setUcDeviceStarted:1];
    }

    v6 = 0;
LABEL_14:
    std::mutex::unlock((self + 744));
    v11 = ASDTIOA2LogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID2 = [(ASDAudioDevice *)self deviceUID];
      *buf = 138412546;
      v17 = deviceUID2;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@ Start of IO result %d", buf, 0x12u);
    }

    [(ASDTIOA2Device *)self ioRequestEnd];
    goto LABEL_17;
  }

  v9 = ASDTIOA2LogType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID3 = [(ASDAudioDevice *)self deviceUID];
    *buf = 138412290;
    v17 = deviceUID3;
    _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@ Start of IO faked.", buf, 0xCu);
  }

  v6 = 0;
LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_requestUnderlyingStopIO
{
  v3 = dispatch_time(0, 500000000);
  v4 = *(self + 150);
  *(self + 1177) = 1;
  objc_initWeak(&location, self);
  v5 = *(self + 149);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDTIOA2Device__requestUnderlyingStopIO__block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v7, &location);
  v7[1] = v4;
  dispatch_after(v3, v5, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __42__ASDTIOA2Device__requestUnderlyingStopIO__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performUnderlyingStopIO:*(a1 + 40)];
}

- (void)_performUnderlyingStopIO:(unint64_t)o
{
  v17 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 744));
  if (*(self + 1177) == 1 && *(self + 150) == o)
  {
    v5 = ASDTIOA2LogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID = [(ASDAudioDevice *)self deviceUID];
      v13 = 138412290;
      v14 = deviceUID;
      _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@ PerformUnderlyingStopIO", &v13, 0xCu);
    }

    *(self + 1177) = 0;
    if ([(ASDTIOA2Device *)self ucDeviceStarted])
    {
      [(ASDTIOA2Device *)self setUcDeviceStarted:0];
      v7 = ASDT::IOA2UserClient::StopIO(*(self + 77));
      v8 = ASDTIOA2LogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID2 = [(ASDAudioDevice *)self deviceUID];
        v10 = deviceUID2;
        v11 = "failed";
        if (v7)
        {
          v11 = "succeeded";
        }

        v13 = 138412546;
        v14 = deviceUID2;
        v15 = 2080;
        v16 = v11;
        _os_log_impl(&dword_2416BA000, v8, OS_LOG_TYPE_DEFAULT, "%@ PerformUnderlyingStopIO %s", &v13, 0x16u);
      }
    }

    else
    {
      v8 = ASDTIOA2LogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ASDAudioDevice *)self deviceUID];
        objc_claimAutoreleasedReturnValue();
        [ASDTIOA2Device _performUnderlyingStopIO:];
      }
    }
  }

  std::mutex::unlock((self + 744));
  v12 = *MEMORY[0x277D85DE8];
}

- (void)forceStopIO
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = ASDTIOA2LogType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    deviceUID = [(ASDAudioDevice *)self deviceUID];
    v5 = *(self + 1177);
    *buf = 138412546;
    v10 = deviceUID;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_2416BA000, v3, OS_LOG_TYPE_DEFAULT, "%@ forceStopIO, shouldStopIO %d", buf, 0x12u);
  }

  v6 = *(self + 149);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDTIOA2Device_forceStopIO__block_invoke;
  block[3] = &unk_278CE8C40;
  block[4] = self;
  dispatch_sync(v6, block);
  v7 = *MEMORY[0x277D85DE8];
}

- (int)systemSleepPending
{
  [(ASDTIOA2Device *)self forceStopIO];
  v4.receiver = self;
  v4.super_class = ASDTIOA2Device;
  return [(ASDTAudioDevice *)&v4 systemSleepPending];
}

- (id)updateClientOutputPositionBlock
{
  engineStatusIndirection = [(ASDTIOA2Device *)self engineStatusIndirection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ASDTIOA2Device_updateClientOutputPositionBlock__block_invoke;
  v5[3] = &__block_descriptor_40_e8_v16__0Q8l;
  v5[4] = engineStatusIndirection;
  v3 = MEMORY[0x245CEDA00](v5);

  return v3;
}

uint64_t __49__ASDTIOA2Device_updateClientOutputPositionBlock__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = **(result + 32);
  if (v2)
  {
    *(v2 + 32) = a2;
  }

  return result;
}

- (id)updateClientInputPositionBlock
{
  engineStatusIndirection = [(ASDTIOA2Device *)self engineStatusIndirection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ASDTIOA2Device_updateClientInputPositionBlock__block_invoke;
  v5[3] = &__block_descriptor_40_e8_v16__0Q8l;
  v5[4] = engineStatusIndirection;
  v3 = MEMORY[0x245CEDA00](v5);

  return v3;
}

uint64_t __48__ASDTIOA2Device_updateClientInputPositionBlock__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = **(result + 32);
  if (v2)
  {
    *(v2 + 24) = a2;
  }

  return result;
}

- (int)setupIsolatedIOForStream:(id)stream frameSize:(unsigned int)size useCase:(unint64_t)case
{
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = streamCopy;
    if ([v9 usesIsolatedIO])
    {
      if (ASDT::IOA2UserClient::SetupForIsolatedIO(*(self + 77), [v9 userClientID], case, size))
      {
        v10 = 0;
      }

      else
      {
        v10 = 2003329396;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 561214578;
  }

  return v10;
}

- (int)teardownIsolatedIOForStream:(id)stream useCase:(unint64_t)case
{
  streamCopy = stream;
  objc_opt_class();
  v7 = 561214578;
  if (objc_opt_isKindOfClass())
  {
    v8 = streamCopy;
    if ([v8 usesIsolatedIO])
    {
      if (ASDT::IOA2UserClient::TeardownForIsolatedIO(*(self + 77), [v8 userClientID], case))
      {
        v7 = 0;
      }

      else
      {
        v7 = 2003329396;
      }
    }
  }

  return v7;
}

- (id)_streamInfoForStream:(unsigned int)stream
{
  ASDT::IOA2UserClient::CopyStreamDictionaryByID(*(self + 77), stream, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (BOOL)_setControlValues:(const unsigned int *)values withCount:(unint64_t)count resultValues:(unsigned int *)resultValues count:(unint64_t *)a6 forControl:(unsigned int)control
{
  if (a6)
  {
    v8 = *a6;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v9 = ASDT::IOA2UserClient::SetMultiControlValue(*(self + 77), control, values, count, resultValues, &v11);
  if (a6 && v9)
  {
    *a6 = v11;
  }

  return v9;
}

- (id)_channelLayoutForDirection:(unsigned int)direction
{
  ASDT::IOA2UserClient::CopyDefaultChannelLayoutData(*(self + 77), direction == 1768845428, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (void)clearOutputBuffers
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  outputStreams = [(ASDAudioDevice *)self outputStreams];
  v3 = [outputStreams countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(outputStreams);
        }

        [*(*(&v7 + 1) + 8 * v5++) clearBuffer];
      }

      while (v3 != v5);
      v3 = [outputStreams countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearInputBuffers
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  inputStreams = [(ASDAudioDevice *)self inputStreams];
  v3 = [inputStreams countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(inputStreams);
        }

        [*(*(&v7 + 1) + 8 * v5++) clearBuffer];
      }

      while (v3 != v5);
      v3 = [inputStreams countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)matcherWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(MEMORY[0x277CEFB98]) initForIOServiceWithClassName:@"IOAudio2Device" withDelegate:delegateCopy];

  return v4;
}

- (BOOL)nonSecureInputEnabled
{
  nonSecureInputEnableProperty = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];

  if (!nonSecureInputEnableProperty)
  {
    return 1;
  }

  nonSecureInputEnableProperty2 = [(ASDTIOA2Device *)self nonSecureInputEnableProperty];
  enabled = [nonSecureInputEnableProperty2 enabled];

  return enabled;
}

- (id).cxx_construct
{
  *(self + 77) = 0;
  v3 = self + 624;
  *(self + 78) = MEMORY[0x277CEFBA8] + 16;
  ASDT::IOConnect::IOConnect((self + 632));
  *(v3 + 13) = 0;
  *(v3 + 28) = 0;
  *(self + 93) = 850045863;
  *(self + 47) = 0u;
  *(self + 48) = 0u;
  *(self + 49) = 0u;
  *(self + 100) = 0;
  std::__shared_mutex_base::__shared_mutex_base((self + 808));
  *(self + 122) = 1018212795;
  *(self + 984) = 0u;
  *(self + 1000) = 0u;
  *(self + 127) = 0;
  operator new();
}

- (void)initWithIOA2Device:(void *)a1 config:(uint64_t)a2 deviceManager:(uint8_t *)buf plugin:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "ASDTIOA2Device: Configuration device UID does not match: %@ vs. %@", buf, 0x16u);
}

- (void)subclassInitWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to open connection.", v5);
}

- (void)subclassInitWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Error creating device properties.", v5);
}

- (void)subclassInitWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Error creating streams", v5);
}

- (void)subclassInitWithConfig:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to allocate dispatch queue.", v5);
}

- (void)subclassInitWithConfig:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to add non-secure input property.", v5);
}

void __39__ASDTIOA2Device_exclavesStatusTracker__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to allocate memory for status tracker.", v5);
}

- (void)ioRequestBegin
{
  OUTLINED_FUNCTION_2_0(self, a2);
  v6 = OUTLINED_FUNCTION_1_0(v3, 5.7781e-34, v4, v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8);
  OUTLINED_FUNCTION_6(&dword_2416BA000, "%@: %s: IORequestCount: %d", v9, v10);
}

- (void)doConfigChange:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Error performing config change.", v5);
}

- (void)doConfigChange:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Engine status is not released!", v5);
}

- (void)_setSamplingRate:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to set nominal sampling rate.", v5);
}

- (void)_getCurrentFormatForStream:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2416BA000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to retrieve format for stream %u", v5, 0x12u);
}

- (void)_openConnection
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@: Failed to create mach port.", v5);
}

void __39__ASDTIOA2Device_getZeroTimestampBlock__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_4_0(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v6, v7, "%@: Too many attempts at reading engine status.", v8);
}

- (void)_performUnderlyingStopIO:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_0(&dword_2416BA000, v3, v4, "%@ PerformUnderlyingStopIO ucDevice not started.", v5);
}

@end
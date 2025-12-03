@interface ASDTIOA2InjectionStream
- (ASDTIOA2InjectionStream)initWithIOA2Device:(id)device inputStream:(id)stream registryDict:(id)dict;
- (ASDTIOA2Stream)inputStream;
- (BOOL)changePhysicalFormat:(id)format;
- (BOOL)deviceChangedToSamplingRate:(double)rate;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (id)physicalFormat;
- (int)pmPrewarmStream:(int)stream;
- (void)asyncDeviceChangedToSamplingRate:(double)rate;
- (void)setPhysicalFormat:(id)format alwaysNotify:(BOOL)notify;
- (void)setPhysicalFormats:(id)formats;
@end

@implementation ASDTIOA2InjectionStream

- (ASDTIOA2InjectionStream)initWithIOA2Device:(id)device inputStream:(id)stream registryDict:(id)dict
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  streamCopy = stream;
  dictCopy = dict;
  v23.receiver = self;
  v23.super_class = ASDTIOA2InjectionStream;
  v11 = [(ASDTExclavesStream *)&v23 initWithDirection:1869968496 withDevice:deviceCopy];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  [(ASDTIOA2InjectionStream *)v11 setUserClientID:0xFFFFFFFFLL];
  [(ASDTIOA2InjectionStream *)v12 setInputStream:streamCopy];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u-Injection", objc_msgSend(streamCopy, "userClientID")];
  [(ASDStream *)v12 setStreamName:v13];

  [(ASDStream *)v12 setTerminalType:1768843885];
  exclavesInjectionBufferName = [deviceCopy exclavesInjectionBufferName];
  [(ASDTExclavesStream *)v12 setExclavesBufferName:exclavesInjectionBufferName];

  exclavesBufferName = [(ASDTExclavesStream *)v12 exclavesBufferName];
  v16 = exclavesBufferName == 0;

  if (v16)
  {
    v18 = ASDTIOA2LogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      deviceUID = [deviceCopy deviceUID];
      streamName = [(ASDStream *)v12 streamName];
      [(ASDTIOA2InjectionStream *)deviceUID initWithIOA2Device:streamName inputStream:buf registryDict:v18];
    }

    goto LABEL_8;
  }

  if (![(ASDTIOA2InjectionStream *)v12 synchronizeWithRegistryDictionary:dictCopy])
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

LABEL_4:
  v17 = v12;
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  applesauce::CF::DictionaryRef::from_ns_noexcept(dictionaryCopy, &v26);
  v6 = v26;
  if (v26)
  {
    [(ASDStream *)self setStartingChannel:ASDT::IOA2UserClient::GetStreamInfo_StartingChannel(&v26, v5)];
    array = [MEMORY[0x277CBEB18] array];
    ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats(&v26, buf);
    v8 = *buf;
    v9 = v8;
    if (v8)
    {
      CFRelease(v8);
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          applesauce::CF::DictionaryRef::from_ns_noexcept(*(*(&v22 + 1) + 8 * i), &cf);
          if (ASDT::IOA2UserClient::ConstructASRDFromDictionary(&cf, buf, v14))
          {
            v15 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamRangedDescription:buf];
            [array addObject:v15];
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v11);
    }

    [(ASDTIOA2InjectionStream *)self setPhysicalFormats:array];
  }

  else
  {
    array = ASDTIOA2LogType();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412546;
      *&buf[4] = deviceUID;
      v28 = 2112;
      v29 = streamName;
      _os_log_error_impl(&dword_2416BA000, array, OS_LOG_TYPE_ERROR, "%@:%@: Bad registry dictionary.", buf, 0x16u);
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)setPhysicalFormats:(id)formats
{
  formatsCopy = formats;
  physicalFormats = [(ASDStream *)self physicalFormats];
  v6 = [physicalFormats isEqual:formatsCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ASDTIOA2InjectionStream;
    [(ASDStream *)&v7 setPhysicalFormats:formatsCopy];
  }
}

- (id)physicalFormat
{
  ioa2Device = [(ASDTIOA2InjectionStream *)self ioa2Device];
  inputStream = [(ASDTIOA2InjectionStream *)self inputStream];
  v5 = [ioa2Device _streamInfoForStream:{objc_msgSend(inputStream, "userClientID")}];

  applesauce::CF::DictionaryRef::from_ns_noexcept(v5, &cf);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(&cf, v9, v6))
  {
    v7 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:v9];
  }

  else
  {
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (void)setPhysicalFormat:(id)format alwaysNotify:(BOOL)notify
{
  v28 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  physicalFormat = [(ASDTIOA2InjectionStream *)self physicalFormat];
  if ([formatCopy isEqual:physicalFormat])
  {
    v8 = 0;
  }

  else
  {
    v9 = ASDTIOA2LogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412802;
      v23 = deviceUID;
      v24 = 2112;
      v25 = streamName;
      v26 = 2112;
      v27 = physicalFormat;
      _os_log_debug_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEBUG, "%@:%@: setPhysicalFormat: Old: %@", buf, 0x20u);
    }

    ioa2Device = [(ASDTIOA2InjectionStream *)self ioa2Device];
    inputStream = [(ASDTIOA2InjectionStream *)self inputStream];
    v8 = [ioa2Device _setCurrentFormat:formatCopy forStream:objc_msgSend(inputStream, "userClientID")];
  }

  if (notify || v8)
  {
    v21.receiver = self;
    v21.super_class = ASDTIOA2InjectionStream;
    [(ASDTStream *)&v21 setPhysicalFormat:formatCopy];
  }

  if (v8)
  {
    v12 = ASDTIOA2LogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID2 = [device2 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      physicalFormat2 = [(ASDTIOA2InjectionStream *)self physicalFormat];
      *buf = 138412802;
      v23 = deviceUID2;
      v24 = 2112;
      v25 = streamName2;
      v26 = 2112;
      v27 = physicalFormat2;
      _os_log_impl(&dword_2416BA000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: setPhysicalFormat: New: %@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormat = [(ASDTIOA2InjectionStream *)self physicalFormat];
  v6 = [physicalFormat isEqual:formatCopy];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    device = [(ASDTStream *)self device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ASDTIOA2InjectionStream_changePhysicalFormat___block_invoke;
    v9[3] = &unk_278CE8B40;
    objc_copyWeak(&v11, &location);
    v10 = formatCopy;
    [device requestConfigurationChange:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __48__ASDTIOA2InjectionStream_changePhysicalFormat___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPhysicalFormat:*(a1 + 32) alwaysNotify:1];

  v11 = objc_loadWeakRetained((a1 + 40));
  v2 = [v11 device];
  [v2 samplingRate];
  v4 = v3;
  [*(a1 + 32) sampleRate];
  v6 = v5;

  if (v4 != v6)
  {
    [*(a1 + 32) sampleRate];
    v8 = v7;
    v12 = objc_loadWeakRetained((a1 + 40));
    v9 = [v12 device];
    [v9 setSamplingRate:v8];
  }
}

- (void)asyncDeviceChangedToSamplingRate:(double)rate
{
  v3.receiver = self;
  v3.super_class = ASDTIOA2InjectionStream;
  [(ASDStream *)&v3 deviceChangedToSamplingRate:rate];
}

- (BOOL)deviceChangedToSamplingRate:(double)rate
{
  objc_initWeak(&location, self);
  device = [(ASDTStream *)self device];
  concurrentQueue = [device concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ASDTIOA2InjectionStream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v9, &location);
  v9[1] = *&rate;
  dispatch_async(concurrentQueue, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  return 1;
}

void __55__ASDTIOA2InjectionStream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained asyncDeviceChangedToSamplingRate:*(a1 + 40)];
}

- (int)pmPrewarmStream:(int)stream
{
  v29 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ASDTIOA2InjectionStream;
  v5 = [(ASDTStream *)&v22 pmPrewarmStream:?];
  v6 = v5;
  if (stream == 1970304877 && !v5)
  {
    ioa2Device = [(ASDTIOA2InjectionStream *)self ioa2Device];
    _getIOBufferFrameSize = [ioa2Device _getIOBufferFrameSize];

    physicalFormat = [(ASDTIOA2InjectionStream *)self physicalFormat];
    bytesPerFrame = [physicalFormat bytesPerFrame];

    LOBYTE(_getIOBufferFrameSize) = [(ASDTExclavesStream *)self allocExclavesAudioBuffer:(bytesPerFrame * _getIOBufferFrameSize)];
    v11 = ASDTIOA2LogType();
    v12 = v11;
    if (_getIOBufferFrameSize)
    {
      v6 = 0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        device = [(ASDTStream *)self device];
        deviceUID = [device deviceUID];
        streamName = [(ASDStream *)self streamName];
        exclavesBufferSize = [(ASDTExclavesStream *)self exclavesBufferSize];
        *buf = 138412802;
        v24 = deviceUID;
        v25 = 2112;
        v26 = streamName;
        v27 = 1024;
        v28 = exclavesBufferSize;
        _os_log_impl(&dword_2416BA000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: Exclaves inbound buffer size: %u", buf, 0x1Cu);

        v6 = 0;
      }
    }

    else
    {
      v6 = 1852990585;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v24 = deviceUID2;
        v25 = 2112;
        v26 = streamName2;
        _os_log_error_impl(&dword_2416BA000, v12, OS_LOG_TYPE_ERROR, "%@:%@: Failed to allocate exclaves inbound buffer.", buf, 0x16u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (ASDTIOA2Stream)inputStream
{
  WeakRetained = objc_loadWeakRetained(&self->_inputStream);

  return WeakRetained;
}

- (void)initWithIOA2Device:(uint8_t *)buf inputStream:(os_log_t)log registryDict:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@:%@: Exclaves injection buffer name is not supplied.", buf, 0x16u);
}

@end
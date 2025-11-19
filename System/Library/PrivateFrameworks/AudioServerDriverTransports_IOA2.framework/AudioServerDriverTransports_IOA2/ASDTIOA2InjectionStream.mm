@interface ASDTIOA2InjectionStream
- (ASDTIOA2InjectionStream)initWithIOA2Device:(id)a3 inputStream:(id)a4 registryDict:(id)a5;
- (ASDTIOA2Stream)inputStream;
- (BOOL)changePhysicalFormat:(id)a3;
- (BOOL)deviceChangedToSamplingRate:(double)a3;
- (BOOL)synchronizeWithRegistryDictionary:(id)a3;
- (id)physicalFormat;
- (int)pmPrewarmStream:(int)a3;
- (void)asyncDeviceChangedToSamplingRate:(double)a3;
- (void)setPhysicalFormat:(id)a3 alwaysNotify:(BOOL)a4;
- (void)setPhysicalFormats:(id)a3;
@end

@implementation ASDTIOA2InjectionStream

- (ASDTIOA2InjectionStream)initWithIOA2Device:(id)a3 inputStream:(id)a4 registryDict:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = ASDTIOA2InjectionStream;
  v11 = [(ASDTExclavesStream *)&v23 initWithDirection:1869968496 withDevice:v8];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  [(ASDTIOA2InjectionStream *)v11 setUserClientID:0xFFFFFFFFLL];
  [(ASDTIOA2InjectionStream *)v12 setInputStream:v9];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u-Injection", objc_msgSend(v9, "userClientID")];
  [(ASDStream *)v12 setStreamName:v13];

  [(ASDStream *)v12 setTerminalType:1768843885];
  v14 = [v8 exclavesInjectionBufferName];
  [(ASDTExclavesStream *)v12 setExclavesBufferName:v14];

  v15 = [(ASDTExclavesStream *)v12 exclavesBufferName];
  v16 = v15 == 0;

  if (v16)
  {
    v18 = ASDTIOA2LogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 deviceUID];
      v20 = [(ASDStream *)v12 streamName];
      [(ASDTIOA2InjectionStream *)v19 initWithIOA2Device:v20 inputStream:buf registryDict:v18];
    }

    goto LABEL_8;
  }

  if (![(ASDTIOA2InjectionStream *)v12 synchronizeWithRegistryDictionary:v10])
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

- (BOOL)synchronizeWithRegistryDictionary:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  applesauce::CF::DictionaryRef::from_ns_noexcept(v4, &v26);
  v6 = v26;
  if (v26)
  {
    [(ASDStream *)self setStartingChannel:ASDT::IOA2UserClient::GetStreamInfo_StartingChannel(&v26, v5)];
    v7 = [MEMORY[0x277CBEB18] array];
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
            [v7 addObject:v15];
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

    [(ASDTIOA2InjectionStream *)self setPhysicalFormats:v7];
  }

  else
  {
    v7 = ASDTIOA2LogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = [(ASDTStream *)self device];
      v19 = [v18 deviceUID];
      v20 = [(ASDStream *)self streamName];
      *buf = 138412546;
      *&buf[4] = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_error_impl(&dword_2416BA000, v7, OS_LOG_TYPE_ERROR, "%@:%@: Bad registry dictionary.", buf, 0x16u);
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)setPhysicalFormats:(id)a3
{
  v4 = a3;
  v5 = [(ASDStream *)self physicalFormats];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ASDTIOA2InjectionStream;
    [(ASDStream *)&v7 setPhysicalFormats:v4];
  }
}

- (id)physicalFormat
{
  v3 = [(ASDTIOA2InjectionStream *)self ioa2Device];
  v4 = [(ASDTIOA2InjectionStream *)self inputStream];
  v5 = [v3 _streamInfoForStream:{objc_msgSend(v4, "userClientID")}];

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

- (void)setPhysicalFormat:(id)a3 alwaysNotify:(BOOL)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ASDTIOA2InjectionStream *)self physicalFormat];
  if ([v6 isEqual:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = ASDTIOA2LogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(ASDTStream *)self device];
      v19 = [v18 deviceUID];
      v20 = [(ASDStream *)self streamName];
      *buf = 138412802;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEBUG, "%@:%@: setPhysicalFormat: Old: %@", buf, 0x20u);
    }

    v10 = [(ASDTIOA2InjectionStream *)self ioa2Device];
    v11 = [(ASDTIOA2InjectionStream *)self inputStream];
    v8 = [v10 _setCurrentFormat:v6 forStream:objc_msgSend(v11, "userClientID")];
  }

  if (a4 || v8)
  {
    v21.receiver = self;
    v21.super_class = ASDTIOA2InjectionStream;
    [(ASDTStream *)&v21 setPhysicalFormat:v6];
  }

  if (v8)
  {
    v12 = ASDTIOA2LogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ASDTStream *)self device];
      v14 = [v13 deviceUID];
      v15 = [(ASDStream *)self streamName];
      v16 = [(ASDTIOA2InjectionStream *)self physicalFormat];
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2416BA000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: setPhysicalFormat: New: %@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)changePhysicalFormat:(id)a3
{
  v4 = a3;
  v5 = [(ASDTIOA2InjectionStream *)self physicalFormat];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v7 = [(ASDTStream *)self device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ASDTIOA2InjectionStream_changePhysicalFormat___block_invoke;
    v9[3] = &unk_278CE8B40;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [v7 requestConfigurationChange:v9];

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

- (void)asyncDeviceChangedToSamplingRate:(double)a3
{
  v3.receiver = self;
  v3.super_class = ASDTIOA2InjectionStream;
  [(ASDStream *)&v3 deviceChangedToSamplingRate:a3];
}

- (BOOL)deviceChangedToSamplingRate:(double)a3
{
  objc_initWeak(&location, self);
  v5 = [(ASDTStream *)self device];
  v6 = [v5 concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ASDTIOA2InjectionStream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v9, &location);
  v9[1] = *&a3;
  dispatch_async(v6, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  return 1;
}

void __55__ASDTIOA2InjectionStream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained asyncDeviceChangedToSamplingRate:*(a1 + 40)];
}

- (int)pmPrewarmStream:(int)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ASDTIOA2InjectionStream;
  v5 = [(ASDTStream *)&v22 pmPrewarmStream:?];
  v6 = v5;
  if (a3 == 1970304877 && !v5)
  {
    v7 = [(ASDTIOA2InjectionStream *)self ioa2Device];
    v8 = [v7 _getIOBufferFrameSize];

    v9 = [(ASDTIOA2InjectionStream *)self physicalFormat];
    v10 = [v9 bytesPerFrame];

    LOBYTE(v8) = [(ASDTExclavesStream *)self allocExclavesAudioBuffer:(v10 * v8)];
    v11 = ASDTIOA2LogType();
    v12 = v11;
    if (v8)
    {
      v6 = 0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(ASDTStream *)self device];
        v14 = [v13 deviceUID];
        v15 = [(ASDStream *)self streamName];
        v16 = [(ASDTExclavesStream *)self exclavesBufferSize];
        *buf = 138412802;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        v27 = 1024;
        v28 = v16;
        _os_log_impl(&dword_2416BA000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: Exclaves inbound buffer size: %u", buf, 0x1Cu);

        v6 = 0;
      }
    }

    else
    {
      v6 = 1852990585;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = [(ASDTStream *)self device];
        v20 = [v19 deviceUID];
        v21 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
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
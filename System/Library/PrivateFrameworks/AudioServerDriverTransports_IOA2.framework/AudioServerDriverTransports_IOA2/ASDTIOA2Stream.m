@interface ASDTIOA2Stream
- (ASDTIOA2InjectionStream)injectionStream;
- (BOOL)_mapIOBuffer;
- (BOOL)changePhysicalFormat:(id)a3;
- (BOOL)deviceChangedToSamplingRate:(double)a3;
- (BOOL)synchronizeWithRegistryDictionary:(id)a3;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)physicalFormat;
- (id)readIsolatedInputBlock;
- (id)readOrWriteBlock;
- (id)updateClientPositionBlock;
- (int)pmPrewarmStream:(int)a3;
- (void)_releaseIOBuffer;
- (void)asyncDeviceChangedToSamplingRate:(double)a3;
- (void)dealloc;
- (void)ioThreadStateChange:(id)a3;
- (void)setPhysicalFormat:(id)a3 alwaysNotify:(BOOL)a4;
- (void)setPhysicalFormats:(id)a3;
- (void)updateActiveState;
@end

@implementation ASDTIOA2Stream

- (void)dealloc
{
  [(ASDTIOA2Stream *)self _releaseIOBuffer];
  v3.receiver = self;
  v3.super_class = ASDTIOA2Stream;
  [(ASDTIOA2Stream *)&v3 dealloc];
}

- (void)updateActiveState
{
  if ([(ASDStream *)self isActive])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(ASDTIOA2Stream *)self injectionStream];
    v3 = [v4 isActive];
  }

  v5 = [(ASDTIOA2Stream *)self ioa2Device];
  [v5 _setStreamActive:v3 streamUCID:self->_userClientID];
}

- (BOOL)_mapIOBuffer
{
  v25 = *MEMORY[0x277D85DE8];
  self->_ioBufferByteSize = 0;
  p_ioBufferMap = &self->_ioBufferMap;
  ASDT::IOMemoryMap::Release(&self->_ioBufferMap);
  if ([(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
  {
    v4 = [(ASDTIOA2Stream *)self physicalFormat];
    v5 = [v4 bytesPerFrame] << 12;

    LOBYTE(v4) = [(ASDTExclavesStream *)self allocExclavesAudioBuffer:v5];
    self->_ioBufferByteSize = [(ASDTExclavesStream *)self exclavesBufferSize];
    if ((v4 & 1) == 0)
    {
LABEL_12:
      v8 = ASDTIOA2LogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = [(ASDTStream *)self device];
        v17 = [v16 deviceUID];
        v18 = [(ASDStream *)self streamName];
        v19 = 138412546;
        v20 = v17;
        v21 = 2112;
        v22 = v18;
        _os_log_error_impl(&dword_2416BA000, v8, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map IO buffer", &v19, 0x16u);
      }

      v13 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = [(ASDTIOA2Stream *)self ioa2Device];
    v7 = [v6 ioa2UserClient];

    if (v7)
    {
      ASDT::IOA2UserClient::MapIOBufferForStream(v7, self->_userClientID, &v19);
      ASDT::IOMemoryMap::operator=();
      MEMORY[0x245CED200](&v19);
    }

    if (!*&p_ioBufferMap[2].refcount)
    {
      goto LABEL_12;
    }

    self->_ioBufferByteSize = p_ioBufferMap[2].meta;
  }

  v8 = ASDTIOA2LogType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ASDTStream *)self device];
    v10 = [v9 deviceUID];
    v11 = [(ASDStream *)self streamName];
    ioBufferByteSize = self->_ioBufferByteSize;
    v19 = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 1024;
    v24 = ioBufferByteSize;
    _os_log_impl(&dword_2416BA000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: Buffer mapped with size %d", &v19, 0x1Cu);
  }

  v13 = 1;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_releaseIOBuffer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  v4 = v3 != 0;
  if (v3)
  {
    [(ASDTExclavesStream *)self freeExclavesAudioBuffer];
  }

  if (*&self->_anon_1b8[56])
  {
    ASDT::IOMemoryMap::Release(&self->_ioBufferMap);
    v4 = 1;
  }

  if (self->_ioBufferByteSize)
  {
    self->_ioBufferByteSize = 0;
  }

  if (v4)
  {
    v5 = ASDTIOA2LogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ASDTStream *)self device];
      v7 = [v6 deviceUID];
      v8 = [(ASDStream *)self streamName];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2416BA000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@: Buffer released", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)synchronizeWithRegistryDictionary:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v30 = a3;
  applesauce::CF::DictionaryRef::from_ns_noexcept(v30, &v39);
  if (v39)
  {
    [(ASDStream *)self setStartingChannel:ASDT::IOA2UserClient::GetStreamInfo_StartingChannel(&v39, v4)];
    [(ASDStream *)self setTerminalType:ASDT::IOA2UserClient::GetStreamInfo_TerminalType(&v39, v5)];
    [(ASDTIOA2Stream *)self setUsesIsolatedIO:ASDT::IOA2UserClient::GetStreamInfo_UsesIsolatedIO(&v39, v6)];
    if ([(ASDTIOA2Stream *)self usesIsolatedIO])
    {
      log = [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      log = 0;
    }

    v32 = [MEMORY[0x277CBEB18] array];
    ASDT::IOA2UserClient::CopyStreamInfo_AvailableFormats(&v39, v46);
    v8 = *v46;
    v9 = v8;
    if (v8)
    {
      CFRelease(v8);
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v11)
    {
      v12 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          applesauce::CF::DictionaryRef::from_ns_noexcept(*(*(&v35 + 1) + 8 * v13), &cf);
          if (ASDT::IOA2UserClient::ConstructASRDFromDictionary(&cf, v46, v14))
          {
            v15 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamRangedDescription:v46];
            if ([(ASDTIOA2Stream *)self usesIsolatedIO])
            {
              v16 = [v15 asdtEquivalentNativeFloatPacked];
              v17 = [log objectForKey:v16];
              v18 = v17 == 0;

              if (v18)
              {
                [log setObject:v15 forKey:v16];
                [v32 addObject:v16];
              }

              else
              {
                v19 = ASDTIOA2LogType();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v31 = [(ASDTStream *)self device];
                  v20 = [v31 deviceUID];
                  v21 = [(ASDStream *)self streamName];
                  *buf = 138412802;
                  v41 = v20;
                  v42 = 2112;
                  v43 = v21;
                  v44 = 2112;
                  v45 = v15;
                  _os_log_error_impl(&dword_2416BA000, v19, OS_LOG_TYPE_ERROR, "%@:%@: Duplicate isolated IO format: %@", buf, 0x20u);
                }
              }
            }

            else
            {
              [v32 addObject:v15];
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v11);
    }

    if (-[ASDTIOA2Stream usesIsolatedIO](self, "usesIsolatedIO") && (-[ASDTIOA2Stream ioa2Device](self, "ioa2Device"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 _setupExclavesStatusTracker], v22, (v23 & 1) == 0))
    {
      v7 = 0;
    }

    else
    {
      v24 = [log copy];
      [(ASDTIOA2Stream *)self setIsolatedIOFormatMap:v24];

      [(ASDTIOA2Stream *)self setPhysicalFormats:v32];
      v7 = 1;
    }
  }

  else
  {
    log = ASDTIOA2LogType();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v27 = [(ASDTStream *)self device];
      v28 = [v27 deviceUID];
      v29 = [(ASDStream *)self streamName];
      *v46 = 138412546;
      *&v46[4] = v28;
      v47 = 2112;
      v48 = v29;
      _os_log_error_impl(&dword_2416BA000, log, OS_LOG_TYPE_ERROR, "%@:%@: Bad registry dictionary.", v46, 0x16u);
    }

    v7 = 0;
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setPhysicalFormats:(id)a3
{
  v4 = a3;
  v5 = [(ASDStream *)self physicalFormats];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ASDTIOA2Stream;
    [(ASDStream *)&v7 setPhysicalFormats:v4];
  }
}

- (id)physicalFormat
{
  v3 = [(ASDTIOA2Stream *)self ioa2Device];
  v4 = [v3 _streamInfoForStream:self->_userClientID];
  applesauce::CF::DictionaryRef::from_ns_noexcept(v4, &cf);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (ASDT::IOA2UserClient::GetStreamInfo_CurrentFormat(&cf, v9, v5))
  {
    v6 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:v9];
    if ([(ASDTIOA2Stream *)self usesIsolatedIO])
    {
      v7 = [v6 asdtEquivalentNativeFloatPacked];

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

- (void)setPhysicalFormat:(id)a3 alwaysNotify:(BOOL)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ASDTIOA2Stream *)self physicalFormat];
  if ([v6 isEqual:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = ASDTIOA2LogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(ASDTStream *)self device];
      v21 = [v20 deviceUID];
      v22 = [(ASDStream *)self streamName];
      *buf = 138412802;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEBUG, "%@:%@: setPhysicalFormat: Old: %@", buf, 0x20u);
    }

    v10 = v6;
    if ([(ASDTIOA2Stream *)self usesIsolatedIO])
    {
      v11 = [(ASDTIOA2Stream *)self isolatedIOFormatMap];
      v12 = [v11 objectForKey:v10];

      v10 = v12;
      if (!v12)
      {
        v14 = ASDTIOA2LogType();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v23 = [(ASDTStream *)self device];
          v24 = [v23 deviceUID];
          v25 = [(ASDStream *)self streamName];
          *buf = 138412546;
          v28 = v24;
          v29 = 2112;
          v30 = v25;
          _os_log_error_impl(&dword_2416BA000, v14, OS_LOG_TYPE_ERROR, "%@:%@: setPhysicalFormat: Failed to identify physical format from map.", buf, 0x16u);
        }

        goto LABEL_16;
      }
    }

    v13 = [(ASDTIOA2Stream *)self ioa2Device];
    v8 = [v13 _setCurrentFormat:v10 forStream:self->_userClientID];
  }

  if (a4 || v8)
  {
    v26.receiver = self;
    v26.super_class = ASDTIOA2Stream;
    [(ASDTStream *)&v26 setPhysicalFormat:v6];
  }

  if (v8)
  {
    v14 = ASDTIOA2LogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(ASDTStream *)self device];
      v16 = [v15 deviceUID];
      v17 = [(ASDStream *)self streamName];
      v18 = [(ASDTIOA2Stream *)self physicalFormat];
      *buf = 138412802;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2416BA000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: setPhysicalFormat: New: %@", buf, 0x20u);
    }

LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)changePhysicalFormat:(id)a3
{
  v4 = a3;
  v5 = [(ASDTIOA2Stream *)self physicalFormat];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v7 = [(ASDTStream *)self device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__ASDTIOA2Stream_changePhysicalFormat___block_invoke;
    v9[3] = &unk_278CE8B40;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [v7 requestConfigurationChange:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __39__ASDTIOA2Stream_changePhysicalFormat___block_invoke(uint64_t a1)
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
  v3.super_class = ASDTIOA2Stream;
  [(ASDStream *)&v3 deviceChangedToSamplingRate:a3];
}

- (BOOL)deviceChangedToSamplingRate:(double)a3
{
  objc_initWeak(&location, self);
  v5 = [(ASDTStream *)self device];
  v6 = [v5 concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ASDTIOA2Stream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE8B68;
  objc_copyWeak(v9, &location);
  v9[1] = *&a3;
  dispatch_async(v6, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  return 1;
}

void __46__ASDTIOA2Stream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained asyncDeviceChangedToSamplingRate:*(a1 + 40)];
}

- (id)updateClientPositionBlock
{
  v3 = [(ASDStream *)self direction];
  v4 = [(ASDTIOA2Stream *)self ioa2Device];
  v5 = v4;
  if (v3 == 1768845428)
  {
    [v4 updateClientInputPositionBlock];
  }

  else
  {
    [v4 updateClientOutputPositionBlock];
  }
  v6 = ;
  v7 = MEMORY[0x245CEDA00]();

  return v7;
}

- (int)pmPrewarmStream:(int)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ASDTIOA2Stream;
  result = [(ASDTStream *)&v15 pmPrewarmStream:?];
  if (a3 == 1970304877 && !result)
  {
    if ([(ASDTIOA2Stream *)self _mapIOBuffer])
    {
      v6 = [(ASDTIOA2Stream *)self ioa2Device];
      v7 = [v6 ioa2UserClient];

      v8 = ASDTIOA2LogType();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(ASDTStream *)self device];
        v10 = [v9 deviceUID];
        v11 = [(ASDStream *)self streamName];
        if (v7)
        {
          UserClientRefCount = ASDT::IOUserClient::GetUserClientRefCount(v7);
          ConnectionRefCount = ASDT::IOUserClient::GetConnectionRefCount(v7);
        }

        else
        {
          UserClientRefCount = -1;
          ConnectionRefCount = -1;
        }

        *buf = 138413058;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 1024;
        v21 = UserClientRefCount;
        v22 = 1024;
        v23 = ConnectionRefCount;
        _os_log_impl(&dword_2416BA000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: Clearing buffer; user client refs: %u, connection refs: %u", buf, 0x22u);
      }

      [(ASDTExclavesStream *)self clearBuffer];
      result = 0;
    }

    else
    {
      result = 1852990585;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)ioThreadStateChange:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 asdtIOThreadChangeIsolatedUseCase];
  if ([(ASDTIOA2Stream *)self usesIsolatedIO]&& [(ASDStream *)self direction]== 1768845428 && !v5)
  {
    v6 = [(ASDTIOA2Stream *)self ioa2Device];
    v7 = [v6 nonSecureInputEnabled];

    if (v7)
    {
      v8 = [v4 asdtIOThreadUseCaseIsFirstOrWasLast];
      v9 = [v4 asdtIOThreadChangeEvent];
      if (v9 == 1937010544)
      {
        if (v8)
        {
          v15 = [(ASDTIOA2Stream *)self ioa2Device];
          [v15 _teardownForIsolatedIO:self->_userClientID forUseCase:{-[ASDTStream isolatedUseCaseID](self, "isolatedUseCaseID")}];
        }
      }

      else if (v9 == 1937011316)
      {
        if (v8)
        {
          v10 = [(ASDTIOA2Stream *)self ioa2Device];
          v11 = [v10 _setupForIsolatedIO:self->_userClientID forUseCase:-[ASDTStream isolatedUseCaseID](self withIOFrameBufferSize:{"isolatedUseCaseID"), 0}];

          if ((v11 & 1) == 0)
          {
            v12 = ASDTIOA2LogType();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v19 = [(ASDTStream *)self device];
              v20 = [v19 deviceUID];
              v21 = [(ASDStream *)self streamName];
              *buf = 138412546;
              v25 = v20;
              v26 = 2112;
              v27 = v21;
              _os_log_error_impl(&dword_2416BA000, v12, OS_LOG_TYPE_ERROR, "%@:%@: Failed to setup non-secure input path.", buf, 0x16u);
            }
          }
        }
      }

      v22.receiver = self;
      v22.super_class = ASDTIOA2Stream;
      [(ASDTExclavesStream *)&v22 ioThreadStateChange:v4];
    }

    else
    {
      v14 = ASDTIOA2LogType();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [(ASDTStream *)self device];
        v17 = [v16 deviceUID];
        v18 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        _os_log_error_impl(&dword_2416BA000, v14, OS_LOG_TYPE_ERROR, "%@:%@: Non-secure input is disabled.", buf, 0x16u);
      }
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = ASDTIOA2Stream;
    [(ASDTExclavesStream *)&v23 ioThreadStateChange:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)exclavesReadInput
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTIOA2Stream *)self physicalFormat];
  v4 = [v3 bytesPerFrame];

  v5 = [(ASDTIOA2Stream *)self userClientID];
  v6 = [(ASDTStream *)self isolatedUseCaseID];
  v7 = [(ASDTStream *)self device];
  v8 = [v7 timestampPeriod];

  if (!v8 || !v4)
  {
    v19 = ASDTIOA2LogType();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [(ASDTStream *)self device];
      v23 = [v22 deviceUID];
      v24 = [(ASDStream *)self streamName];
      *buf = 138413058;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      v40 = 1024;
      v41 = v4;
      v42 = 1024;
      v43 = v8;
      _os_log_error_impl(&dword_2416BA000, v19, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, period: %u", buf, 0x22u);
    }

    goto LABEL_13;
  }

  v9 = [(ASDTIOA2Stream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:v9];

  v10 = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  v11 = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [(ASDTExclavesStream *)self ramper];
  if (!v13 || (v14 = v13, !v13[9]))
  {
    v19 = ASDTIOA2LogType();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = [(ASDTStream *)self device];
      v26 = [v25 deviceUID];
      v27 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_error_impl(&dword_2416BA000, v19, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v30 = [(ASDTStream *)self ioBufferFramesSizeMax];
  v29 = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
  v15 = [(ASDTIOA2Stream *)self ioa2Device];
  v16 = [v15 ioa2UserClient];

  if (v16)
  {
    v28 = [(ASDTExclavesStream *)self exclavesStatusTracker];
    v17 = [(ASDTIOA2Stream *)self ioa2Device];
    v18 = [v17 nonSecureInputEnabled];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __35__ASDTIOA2Stream_exclavesReadInput__block_invoke;
    v31[3] = &__block_descriptor_109_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v35 = v18;
    v31[4] = v30;
    v31[5] = v14;
    v31[6] = v29;
    v31[7] = v16;
    v32 = v8;
    v33 = v5;
    v31[8] = v6;
    v31[9] = v12;
    v34 = v4;
    v31[10] = v28;
    v31[11] = v10;
    v11 = MEMORY[0x245CEDA00](v31);
    goto LABEL_15;
  }

LABEL_14:
  v11 = 0;
LABEL_15:
  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __35__ASDTIOA2Stream_exclavesReadInput__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    __35__ASDTIOA2Stream_exclavesReadInput__block_invoke_cold_2();
  }

  v4 = a4;
  if (!a4)
  {
    __35__ASDTIOA2Stream_exclavesReadInput__block_invoke_cold_1();
  }

  if (*(a1 + 108) != 1)
  {
    return 1852990585;
  }

  v6 = *(a3 + 80);
  v7 = *(a3 + 88);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *v8;
  if (*v8 <= a2)
  {
    v10 = a2;
  }

  *v8 = v10;
  if (*(v9 + 36) < a2)
  {
    ++**(a1 + 48);
  }

  v11 = v6;
  if (*(a1 + 96) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = *(a1 + 96);
  }

  if (v12)
  {
    v24 = v6;
    v23 = v12;
    while (1)
    {
      v13 = *(*(a1 + 40) + 36) >= v12 ? v12 : *(*(a1 + 40) + 36);
      if (!ASDT::IOA2UserClient::DoIsolatedIO(*(a1 + 56), *(a1 + 100), *(a1 + 64), 0x72656164u, v13, v11, v7))
      {
        break;
      }

      v14 = *(a1 + 72);
      v15 = *(*(a1 + 40) + 24);
      v16 = *(a1 + 104);
      v17 = ASDT::Exclaves::AudioBuffer::Read();
      v18 = v17;
      if (!v17)
      {
        v19 = *(*(a1 + 40) + 24);
        v17 = ASDT::Ramper::Process();
      }

      if (*(a1 + 80))
      {
        ASDTTime::machAbsoluteTime(&v25, v17);
        ASDT::Exclaves::StatusTracker::Push();
      }

      v12 -= v13;
      v11 += v13;
      v4 += *(a1 + 104) * v13;
      if (v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = v12 == 0;
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }

    v18 = 560227702;
LABEL_30:
    v11 = v24;
    v12 = v23;
  }

  else
  {
    v18 = 0;
  }

  v21 = **(a1 + 88);
  if (v21)
  {
    (*(v21 + 16))(v21, v11 + v12);
  }

  return v18;
}

- (id)readIsolatedInputBlock
{
  v3 = [(ASDTIOA2Stream *)self userClientID];
  v4 = [(ASDTIOA2Stream *)self ioa2Device];
  v5 = [v4 ioa2UserClient];

  if (v5 && [(ASDTIOA2Stream *)self usesIsolatedIO])
  {
    v6 = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__ASDTIOA2Stream_readIsolatedInputBlock__block_invoke;
    v9[3] = &__block_descriptor_52_e187_i28__0Q8I16r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_20l;
    v10 = v3;
    v9[4] = v5;
    v9[5] = v6;
    v7 = MEMORY[0x245CEDA00](v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __40__ASDTIOA2Stream_readIsolatedInputBlock__block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    __40__ASDTIOA2Stream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  v6 = *(a4 + 80);
  v7 = ASDT::IOA2UserClient::DoIsolatedIO(*(a1 + 32), *(a1 + 48), a2, 0x72656164u, a3, v6, *(a4 + 88));
  v8 = **(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6 + a3);
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 560227702;
  }
}

- (id)readOrWriteBlock
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTIOA2Stream *)self ioa2Device];
  v4 = [v3 ioa2UserClient];

  if (!v4)
  {
    v8 = ASDTIOA2LogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(ASDTStream *)self device];
      v10 = [v9 deviceUID];
      v11 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&dword_2416BA000, v8, OS_LOG_TYPE_ERROR, "%@:%@: Failed to get IOA2UserClient", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v5 = [(ASDStream *)self direction];
  v22.receiver = self;
  v22.super_class = ASDTIOA2Stream;
  v6 = [(ASDTStream *)&v22 readOrWriteBlock];
  if (!v6)
  {
    v8 = ASDTIOA2LogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = [(ASDTStream *)self device];
      v15 = [v14 deviceUID];
      v16 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_error_impl(&dword_2416BA000, v8, OS_LOG_TYPE_ERROR, "%@:%@: Failed to get ADSTStream readOrWriteBlock", buf, 0x16u);
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!ASDT::IOA2UserClient::WantsDoIOTrapCall(v4, v5 == 1768845428))
  {
    goto LABEL_11;
  }

  v7 = [(ASDTStream *)self ioBufferFramesSizeMax];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__ASDTIOA2Stream_readOrWriteBlock__block_invoke;
  v17[3] = &unk_278CE8BD0;
  v21 = v5 == 1768845428;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v20 = v4;
  v8 = v6;
  v6 = MEMORY[0x245CEDA00](v17);

LABEL_10:
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __34__ASDTIOA2Stream_readOrWriteBlock__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    __34__ASDTIOA2Stream_readOrWriteBlock__block_invoke_cold_1();
  }

  v5 = 144;
  if (*(a1 + 64))
  {
    v5 = 80;
  }

  v6 = a3 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(a1 + 48);
  v10 = *v9;
  if (*v9 <= a2)
  {
    v10 = a2;
  }

  *v9 = v10;
  v11 = (*(*(a1 + 40) + 16))();
  if (v11)
  {
    v12 = v11;
    v13 = ASDTIOA2LogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) device];
      v15 = [v14 deviceUID];
      v16 = [*(a1 + 32) streamName];
      v17 = v16;
      v18 = BYTE3(v12);
      if ((v12 - 0x20000000) >> 24 >= 0x5F)
      {
        v18 = 32;
      }

      v19 = BYTE2(v12);
      if (BYTE2(v12) - 32 >= 0x5F)
      {
        v19 = 32;
      }

      v27 = 138413570;
      v28 = v15;
      v20 = BYTE1(v12);
      if (BYTE1(v12) - 32 >= 0x5F)
      {
        v20 = 32;
      }

      v29 = 2112;
      v30 = v16;
      v31 = 1024;
      v32 = v18;
      v33 = 1024;
      v34 = v19;
      v35 = 1024;
      v36 = v20;
      if (v12 - 32 >= 0x5F)
      {
        v21 = 32;
      }

      else
      {
        v21 = v12;
      }

      v37 = 1024;
      v38 = v21;
      _os_log_error_impl(&dword_2416BA000, v13, OS_LOG_TYPE_ERROR, "%@:%@: readOrWriteBlock Failed: %c%c%c%c", &v27, 0x2Eu);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!ASDT::IOA2UserClient::DoIO(*(a1 + 56), *(a1 + 64), a2, v7, v8))
  {
    v13 = ASDTIOA2LogType();
    v12 = 560227702;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(a1 + 32) device];
      v25 = [v24 deviceUID];
      v26 = [*(a1 + 32) streamName];
      v27 = 138412546;
      v28 = v25;
      v29 = 2112;
      v30 = v26;
      _os_log_error_impl(&dword_2416BA000, v13, OS_LOG_TYPE_ERROR, "%@:%@: IOA2UserClient::DoIO Failed", &v27, 0x16u);
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (ASDTIOA2InjectionStream)injectionStream
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionStream);

  return WeakRetained;
}

- (id).cxx_construct
{
  p_ioBufferMap = &self->_ioBufferMap;
  self->_ioBufferMap.__vftable = (MEMORY[0x277CEFBA8] + 16);
  ASDT::IOConnect::IOConnect(&self->_ioBufferMap.refcount);
  *&p_ioBufferMap[2].refcount = 0;
  LODWORD(p_ioBufferMap[2].meta) = 0;
  return self;
}

@end
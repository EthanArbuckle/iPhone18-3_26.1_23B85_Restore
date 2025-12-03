@interface ASDTIOPAudioLPMicStream
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioLPMicStream)initWithConfig:(id)config withDevice:(id)device;
- (BOOL)mapIOBuffer;
- (BOOL)updateFromStreamDescription:(StreamDescription *)description;
- (char)ioBufferRef;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)readIsolatedInputBlock;
- (int)pmPrewarmStream:(int)stream;
- (int)teardownIsolatedIOForUseCase:(unint64_t)case;
- (void)ioThreadStateChange:(id)change;
- (void)releaseIOBuffer;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDTIOPAudioLPMicStream

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v12[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtExclavesBufferName = [configCopy asdtExclavesBufferName];
  asdtServiceID = [configCopy asdtServiceID];
  v6 = off_278CE9AB8;
  if (asdtExclavesBufferName)
  {
    v6 = off_278CE9AC8;
  }

  v7 = [(__objc2_class *)*v6 dependencyForID:asdtServiceID andConfiguration:configCopy];
  v8 = v7;
  if (v7)
  {
    v12[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (ASDTIOPAudioLPMicStream)initWithConfig:(id)config withDevice:(id)device
{
  v74[5] = *MEMORY[0x277D85DE8];
  configCopy = config;
  deviceCopy = device;
  v8 = [configCopy mutableCopy];
  v73[0] = *MEMORY[0x277CEFC58];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = *MEMORY[0x277CEFC40];
  v12 = *MEMORY[0x277CEFBC0];
  v74[0] = v10;
  v74[1] = v12;
  v13 = *MEMORY[0x277CEFC08];
  v73[1] = v11;
  v73[2] = v13;
  v74[2] = @"RX";
  v73[3] = *MEMORY[0x277CEFC48];
  v14 = *MEMORY[0x277CEFBF8];
  v70[0] = *MEMORY[0x277CEFBF0];
  v70[1] = v14;
  v15 = *MEMORY[0x277CEFBB8];
  v71[0] = &unk_285359C10;
  v71[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v72 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  v73[4] = *MEMORY[0x277CEFC50];
  v74[3] = v17;
  v74[4] = &unk_285359C28;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:5];
  [v8 asdtAddMissingEntriesFromDictionary:v18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asdtServiceID = [configCopy asdtServiceID];
    asdtExclavesBufferName = [configCopy asdtExclavesBufferName];
    v64 = asdtExclavesBufferName;
    v21 = 0;
    if (asdtServiceID)
    {
      if (asdtExclavesBufferName)
      {
        v22 = [(ASDTIOServiceManager *)ASDTIOPAudioIsolatedIOBufferServiceManager matchedIOServiceForID:asdtServiceID];
      }

      else
      {
        v25 = [(ASDTIOServiceManager *)ASDTIOPAudioIOBufferServiceManager matchedIOServiceForID:asdtServiceID];
        v22 = 0;
        v21 = v25;
      }

      v23 = v21;
      v21 = v22;
      if (!(v23 | v22))
      {
        v28 = ASDTIOPLogType();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          [(ASDTIOPAudioLPMicStream *)v30 initWithConfig:buf withDevice:v28];
        }

        v21 = 0;
        v23 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v23 = 0;
    }

    v65.receiver = self;
    v65.super_class = ASDTIOPAudioLPMicStream;
    v26 = [(ASDTExclavesStream *)&v65 initWithConfig:v8 withDevice:deviceCopy];
    self = v26;
    if (v26)
    {
      [(ASDTIOPAudioLPMicStream *)v26 setIoBufferDevice:v23];
      [(ASDTIOPAudioLPMicStream *)self setIsolatedIOBufferDevice:v21];
      ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      if (ioBufferDevice)
      {
      }

      else
      {
        isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
        v32 = isolatedIOBufferDevice == 0;

        if (v32)
        {
          v46 = ASDTIOPLogType();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            device = [(ASDTStream *)self device];
            deviceUID = [device deviceUID];
            streamName = [(ASDStream *)self streamName];
            *buf = 138412546;
            v67 = deviceUID;
            v68 = 2112;
            v69 = streamName;
            _os_log_error_impl(&dword_2416E9000, v46, OS_LOG_TYPE_ERROR, "%@:%@: No (Isolated)IOBuffer defined for this stream.", buf, 0x16u);
          }

          goto LABEL_36;
        }
      }

      ioBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      if (ioBufferDevice2)
      {
        ioBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
        open = [ioBufferDevice3 open];

        if ((open & 1) == 0)
        {
          v46 = ASDTIOPLogType();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            device2 = [(ASDTStream *)self device];
            deviceUID2 = [device2 deviceUID];
            streamName2 = [(ASDStream *)self streamName];
            *buf = 138412546;
            v67 = deviceUID2;
            v68 = 2112;
            v69 = streamName2;
            _os_log_error_impl(&dword_2416E9000, v46, OS_LOG_TYPE_ERROR, "%@:%@: Failed to open connection to IOBuffer user client", buf, 0x16u);
          }

          goto LABEL_36;
        }
      }

      isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
      v37 = isolatedIOBufferDevice2 == 0;

      if (!v37)
      {
        isolatedIOBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
        open2 = [isolatedIOBufferDevice3 open];

        if (open2)
        {
          if (![(ASDTStream *)self isolatedUseCaseID])
          {
            identifier = [asdtServiceID identifier];
            v41 = identifier;
            uTF8String = [identifier UTF8String];
            if (uTF8String)
            {
              v43 = 0;
              v44 = 0;
              do
              {
                if (!*(uTF8String + v43))
                {
                  break;
                }

                v44 = *(uTF8String + v43++) | (v44 << 8);
              }

              while (v43 != 4);
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            [(ASDTStream *)self setIsolatedUseCaseID:v45];
          }

          parent = [(ASDTIOPAudioLPMicStream *)self parent];
          setupExclavesStatusTracker = [parent setupExclavesStatusTracker];

          if (setupExclavesStatusTracker)
          {
            goto LABEL_40;
          }

LABEL_41:
          selfCopy = 0;
          goto LABEL_42;
        }

        v46 = ASDTIOPLogType();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          device3 = [(ASDTStream *)self device];
          deviceUID3 = [device3 deviceUID];
          streamName3 = [(ASDStream *)self streamName];
          *buf = 138412546;
          v67 = deviceUID3;
          v68 = 2112;
          v69 = streamName3;
          _os_log_error_impl(&dword_2416E9000, v46, OS_LOG_TYPE_ERROR, "%@:%@: Failed to open connection to IsolatedIOBuffer user client", buf, 0x16u);
        }

LABEL_36:

        goto LABEL_41;
      }
    }

LABEL_40:
    self = self;
    selfCopy = self;
LABEL_42:

    goto LABEL_43;
  }

  v23 = ASDTIOPLogType();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    *buf = 138412546;
    v67 = v48;
    v68 = 2112;
    v69 = v50;
    _os_log_error_impl(&dword_2416E9000, v23, OS_LOG_TYPE_ERROR, "%@: Bad parent device class: %@", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_43:

  v53 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)updateFromStreamDescription:(StreamDescription *)description
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:description];
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

  if (isolatedIOBufferDevice)
  {
    asdtEquivalentNativeFloatPacked = [v5 asdtEquivalentNativeFloatPacked];

    v5 = asdtEquivalentNativeFloatPacked;
  }

  if (v5)
  {
    [(ASDStream *)self setLatency:description->var9];
    [(ASDTStream *)self setSafetyOffset:description->var10];
    v18 = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [(ASDStream *)self setPhysicalFormats:v8];

    [(ASDTStream *)self setPhysicalFormat:v5];
    isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
    if (!isolatedIOBufferDevice2)
    {
      v12 = 1;
      goto LABEL_11;
    }

    isolatedIOBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
    parent = [(ASDTIOPAudioLPMicStream *)self parent];
    v12 = [isolatedIOBufferDevice3 setStreamDescription:description withBufferFrameSize:{objc_msgSend(parent, "ioBufferSizeFrames")}];
  }

  else
  {
    isolatedIOBufferDevice2 = ASDTIOPLogType();
    if (os_log_type_enabled(isolatedIOBufferDevice2, OS_LOG_TYPE_ERROR))
    {
      device = [(ASDTStream *)self device];
      deviceUID = [device deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138412546;
      v20 = deviceUID;
      v21 = 2112;
      v22 = streamName;
      _os_log_error_impl(&dword_2416E9000, isolatedIOBufferDevice2, OS_LOG_TYPE_ERROR, "%@:%@: Failed to allocate stream format.", buf, 0x16u);
    }

    v12 = 0;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (char)ioBufferRef
{
  ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
  ioBufferRef = [ioBufferDevice ioBufferRef];

  return ioBufferRef;
}

- (BOOL)mapIOBuffer
{
  v37 = *MEMORY[0x277D85DE8];
  parent = [(ASDTIOPAudioLPMicStream *)self parent];
  ioBufferSizeFrames = [parent ioBufferSizeFrames];

  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];

  if (!exclavesBufferName)
  {
    ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];

    if (!ioBufferDevice)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }

    ioBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
    mapIOBuffer = [ioBufferDevice2 mapIOBuffer];

    if (mapIOBuffer)
    {
      physicalFormat = [(ASDStream *)self physicalFormat];
      bytesPerFrame = [physicalFormat bytesPerFrame];

      ioBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      ioBufferSize = [ioBufferDevice3 ioBufferSize];
      v16 = bytesPerFrame * ioBufferSizeFrames;

      if (ioBufferSize >= bytesPerFrame * ioBufferSizeFrames)
      {
        self->_ioBufferSize = v16;
        goto LABEL_4;
      }

      v17 = ASDTIOPLogType();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        device = [(ASDTStream *)self device];
        deviceUID = [device deviceUID];
        streamName = [(ASDStream *)self streamName];
        ioBufferDevice4 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
        v29 = 138413058;
        v30 = deviceUID;
        v31 = 2112;
        v32 = streamName;
        v33 = 1024;
        ioBufferSize2 = [ioBufferDevice4 ioBufferSize];
        v35 = 1024;
        v36 = v16;
        _os_log_error_impl(&dword_2416E9000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Mapped IO buffer is too small: %u < %u", &v29, 0x22u);
      }
    }

    else
    {
      v17 = ASDTIOPLogType();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        v29 = 138412546;
        v30 = deviceUID2;
        v31 = 2112;
        v32 = streamName2;
        _os_log_error_impl(&dword_2416E9000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map IO buffer", &v29, 0x16u);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  physicalFormat2 = [(ASDStream *)self physicalFormat];
  v7 = [physicalFormat2 bytesPerFrame] << 12;

  if (![(ASDTExclavesStream *)self allocExclavesAudioBuffer:v7])
  {
    v17 = ASDTIOPLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID3 = [device3 deviceUID];
      streamName3 = [(ASDStream *)self streamName];
      v29 = 138412546;
      v30 = deviceUID3;
      v31 = 2112;
      v32 = streamName3;
      _os_log_error_impl(&dword_2416E9000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map exclaves named buffer", &v29, 0x16u);
    }

    goto LABEL_16;
  }

  self->_ioBufferSize = v7;
LABEL_4:
  result = 1;
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)releaseIOBuffer
{
  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];

  if (exclavesBufferName)
  {
    [(ASDTExclavesStream *)self freeExclavesAudioBuffer];
  }

  ioBufferDevice = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];

  if (ioBufferDevice)
  {
    ioBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
    [ioBufferDevice2 releaseIOBuffer];
  }

  self->_ioBufferSize = 0;
}

- (int)pmPrewarmStream:(int)stream
{
  v9.receiver = self;
  v9.super_class = ASDTIOPAudioLPMicStream;
  result = [(ASDTStream *)&v9 pmPrewarmStream:?];
  if (stream == 1970304877 && !result)
  {
    isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

    if (isolatedIOBufferDevice && (-[ASDTIOPAudioLPMicStream isolatedIOBufferDevice](self, "isolatedIOBufferDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 setupIO], v7, (v8 & 1) == 0))
    {
      return 1852990585;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)ioThreadStateChange:(id)change
{
  v29 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  asdtIOThreadChangeIsolatedUseCase = [changeCopy asdtIOThreadChangeIsolatedUseCase];
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

  if (!isolatedIOBufferDevice || asdtIOThreadChangeIsolatedUseCase)
  {
    v24.receiver = self;
    v24.super_class = ASDTIOPAudioLPMicStream;
    [(ASDTExclavesStream *)&v24 ioThreadStateChange:changeCopy];
  }

  else
  {
    parent = [(ASDTIOPAudioLPMicStream *)self parent];
    nonSecureInputEnabled = [parent nonSecureInputEnabled];

    if (nonSecureInputEnabled)
    {
      asdtIOThreadUseCaseIsFirstOrWasLast = [changeCopy asdtIOThreadUseCaseIsFirstOrWasLast];
      asdtIOThreadChangeEvent = [changeCopy asdtIOThreadChangeEvent];
      if (asdtIOThreadChangeEvent == 1937010544)
      {
        if (asdtIOThreadUseCaseIsFirstOrWasLast)
        {
          isolatedIOBufferDevice2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
          [isolatedIOBufferDevice2 teardownClientIO:{-[ASDTStream isolatedUseCaseID](self, "isolatedUseCaseID")}];
        }
      }

      else if (asdtIOThreadChangeEvent == 1937011316)
      {
        if (asdtIOThreadUseCaseIsFirstOrWasLast)
        {
          isolatedIOBufferDevice3 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
          v12 = [isolatedIOBufferDevice3 setupClientIO:-[ASDTStream isolatedUseCaseID](self withBufferFrameSize:{"isolatedUseCaseID"), 0}];

          if ((v12 & 1) == 0)
          {
            v13 = ASDTIOPLogType();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              device = [(ASDTStream *)self device];
              deviceUID = [device deviceUID];
              streamName = [(ASDStream *)self streamName];
              *buf = 138412546;
              v26 = deviceUID;
              v27 = 2112;
              v28 = streamName;
              _os_log_error_impl(&dword_2416E9000, v13, OS_LOG_TYPE_ERROR, "%@:%@: Failed to setup non-secure input path.", buf, 0x16u);
            }
          }
        }
      }

      v23.receiver = self;
      v23.super_class = ASDTIOPAudioLPMicStream;
      [(ASDTExclavesStream *)&v23 ioThreadStateChange:changeCopy];
    }

    else
    {
      v14 = ASDTIOPLogType();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID2 = [device2 deviceUID];
        streamName2 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v26 = deviceUID2;
        v27 = 2112;
        v28 = streamName2;
        _os_log_error_impl(&dword_2416E9000, v14, OS_LOG_TYPE_ERROR, "%@:%@: Non-secure input is disabled.", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startStream
{
  [(ASDTExclavesStream *)self clearBuffer];
  v3.receiver = self;
  v3.super_class = ASDTIOPAudioLPMicStream;
  [(ASDStream *)&v3 startStream];
}

- (void)stopStream
{
  v2.receiver = self;
  v2.super_class = ASDTIOPAudioLPMicStream;
  [(ASDStream *)&v2 stopStream];
}

- (id)exclavesReadInput
{
  v40 = *MEMORY[0x277D85DE8];
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  isolatedUseCaseID = [(ASDTStream *)self isolatedUseCaseID];
  device = [(ASDTStream *)self device];
  timestampPeriod = [device timestampPeriod];

  if (!timestampPeriod || !bytesPerFrame)
  {
    v18 = ASDTIOPLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID = [device2 deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138413058;
      v33 = deviceUID;
      v34 = 2112;
      v35 = streamName;
      v36 = 1024;
      v37 = bytesPerFrame;
      v38 = 1024;
      v39 = timestampPeriod;
      _os_log_error_impl(&dword_2416E9000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, period: %u", buf, 0x22u);
    }

    goto LABEL_13;
  }

  exclavesAudioBuffer = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  if (!exclavesAudioBuffer)
  {
    goto LABEL_15;
  }

  v9 = exclavesAudioBuffer;
  ramper = [(ASDTExclavesStream *)self ramper];
  if (!ramper || (v11 = ramper, !ramper[9]))
  {
    v18 = ASDTIOPLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID2 = [device3 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v33 = deviceUID2;
      v34 = 2112;
      v35 = streamName2;
      _os_log_error_impl(&dword_2416E9000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
  ioBufferFramesUnexpectedSizeCount = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  userClient = [isolatedIOBufferDevice userClient];

  if (userClient)
  {
    exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
    parent = [(ASDTIOPAudioLPMicStream *)self parent];
    nonSecureInputEnabled = [parent nonSecureInputEnabled];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke;
    aBlock[3] = &__block_descriptor_97_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v31 = nonSecureInputEnabled;
    aBlock[4] = ioBufferFramesSizeMax;
    aBlock[5] = v11;
    aBlock[6] = ioBufferFramesUnexpectedSizeCount;
    aBlock[7] = userClient;
    aBlock[8] = isolatedUseCaseID;
    aBlock[9] = v9;
    v29 = timestampPeriod;
    v30 = bytesPerFrame;
    aBlock[10] = exclavesStatusTracker;
    exclavesAudioBuffer = _Block_copy(aBlock);
    goto LABEL_15;
  }

LABEL_14:
  exclavesAudioBuffer = 0;
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];

  return exclavesAudioBuffer;
}

uint64_t __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke_cold_2();
  }

  v4 = a4;
  if (!a4)
  {
    __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke_cold_1();
  }

  if (*(a1 + 96) != 1)
  {
    return 1852990585;
  }

  v6 = *(a3 + 80);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *v7;
  if (*v7 <= a2)
  {
    v9 = a2;
  }

  *v7 = v9;
  if (*(v8 + 36) < a2)
  {
    ++**(a1 + 48);
  }

  if (*(a1 + 88) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(a1 + 88);
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v6;
  while (1)
  {
    v12 = *(*(a1 + 40) + 36) >= v10 ? v10 : *(*(a1 + 40) + 36);
    v13 = *(a1 + 64);
    if (!ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(*(a1 + 56)))
    {
      break;
    }

    v14 = *(a1 + 72);
    v15 = *(*(a1 + 40) + 24);
    v16 = *(a1 + 92);
    v17 = ASDT::Exclaves::AudioBuffer::Read();
    v18 = v17;
    if (!v17)
    {
      v19 = *(*(a1 + 40) + 24);
      v17 = ASDT::Ramper::Process();
    }

    if (*(a1 + 80))
    {
      ASDTTime::machAbsoluteTime(&v22, v17);
      ASDT::Exclaves::StatusTracker::Push();
    }

    v10 -= v12;
    v11 += v12;
    v4 += *(a1 + 92) * v12;
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = v10 == 0;
    }

    if (v20)
    {
      return v18;
    }
  }

  return 560227702;
}

- (id)readIsolatedInputBlock
{
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  userClient = [isolatedIOBufferDevice userClient];

  if (userClient)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke;
    aBlock[3] = &__block_descriptor_40_e187_i28__0Q8I16r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_20l;
    aBlock[4] = userClient;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  v4 = *(a4 + 80);
  if (ASDT::IOPAudio::IsolatedIOBuffer::UserClient::ReadInput(*(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return 560227702;
  }
}

- (int)teardownIsolatedIOForUseCase:(unint64_t)case
{
  isolatedIOBufferDevice = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  LODWORD(case) = [isolatedIOBufferDevice teardownClientIO:case];

  if (case)
  {
    return 0;
  }

  else
  {
    return 561214578;
  }
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

- (void)initWithConfig:(uint8_t *)buf withDevice:(os_log_t)log .cold.1(void *a1, char a2, uint8_t *buf, os_log_t log)
{
  v5 = "Isolated";
  if (a2)
  {
    v5 = "";
  }

  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Failed to create %sIOBufferDevice user client", buf, 0x16u);
}

@end
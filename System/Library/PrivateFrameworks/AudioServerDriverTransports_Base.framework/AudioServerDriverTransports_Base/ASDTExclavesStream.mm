@interface ASDTExclavesStream
- (ASDTExclavesStream)initWithConfig:(id)config withDevice:(id)device;
- (BOOL)allocExclavesAudioBuffer:(unsigned int)buffer;
- (BOOL)unexpectedSensorStatus:(int)status;
- (BOOL)usesExclavesAudioBuffer;
- (NSDictionary)status;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)exclavesWriteMix;
- (id)readInputBlock;
- (id)writeMixBlock;
- (int)pmPrepareStream:(int)stream;
- (void)clearBuffer;
- (void)exclavesStatusTracker;
- (void)freeExclavesAudioBuffer;
- (void)ioThreadStateChange:(id)change;
- (void)updateSensorForIOThreadStateChange:(id)change;
@end

@implementation ASDTExclavesStream

- (ASDTExclavesStream)initWithConfig:(id)config withDevice:(id)device
{
  configCopy = config;
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = ASDTExclavesStream;
  v8 = [(ASDTStream *)&v12 initWithConfig:configCopy withDevice:deviceCopy];
  if (v8)
  {
    asdtExclavesBufferName = [configCopy asdtExclavesBufferName];
    [(ASDTExclavesStream *)v8 setExclavesBufferName:asdtExclavesBufferName];

    exclavesBufferName = [(ASDTExclavesStream *)v8 exclavesBufferName];

    if (exclavesBufferName)
    {
      [deviceCopy setSupportsIsolatedIO:1];
    }
  }

  return v8;
}

- (BOOL)usesExclavesAudioBuffer
{
  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];
  v3 = exclavesBufferName != 0;

  return v3;
}

- (BOOL)allocExclavesAudioBuffer:(unsigned int)buffer
{
  ptr = self->_audioBuffer.__ptr_;
  self->_audioBuffer.__ptr_ = 0;
  if (ptr)
  {
    (*(*&ptr->mNumberChannels + 8))(ptr, a2);
  }

  v6 = self->_inboundBuffer.__ptr_;
  self->_inboundBuffer.__ptr_ = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  exclavesBufferName = [(ASDTExclavesStream *)self exclavesBufferName];

  if (exclavesBufferName)
  {
    if ([(ASDStream *)self direction]== 1768845428)
    {
      [(ASDTExclavesStream *)self exclavesBufferName];
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      ASDT::Exclaves::AudioBuffer::Create(uTF8String, buffer);
    }

    [(ASDTExclavesStream *)self exclavesBufferName];
    uTF8String2 = [objc_claimAutoreleasedReturnValue() UTF8String];
    ASDT::Exclaves::InboundBuffer::Create(uTF8String2, buffer);
  }

  [(ASDTExclavesStream *)self setExclavesBufferSize:0];
  return 0;
}

- (void)freeExclavesAudioBuffer
{
  ptr = self->_audioBuffer.__ptr_;
  self->_audioBuffer.__ptr_ = 0;
  if (ptr)
  {
    (*(*&ptr->mNumberChannels + 8))(ptr, a2);
  }

  v4 = self->_inboundBuffer.__ptr_;
  self->_inboundBuffer.__ptr_ = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  [(ASDTExclavesStream *)self setExclavesBufferSize:0];
}

- (int)pmPrepareStream:(int)stream
{
  v22 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = ASDTExclavesStream;
  v5 = [(ASDTStream *)&v19 pmPrepareStream:?];
  if (!v5)
  {
    if (stream == 1970303090 && [(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
    {
      device = [(ASDTStream *)self device];
      exclavesSensorName = [device exclavesSensorName];
      v8 = [ASDTExclavesSensorManager forSensorName:exclavesSensorName];
      [(ASDTExclavesStream *)self setExclavesSensorManager:v8];

      exclavesSensorManager = [(ASDTExclavesStream *)self exclavesSensorManager];
      LODWORD(device) = exclavesSensorManager == 0;

      if (!device)
      {
        physicalFormat = [(ASDStream *)self physicalFormat];
        if (physicalFormat)
        {
          [physicalFormat audioStreamBasicDescription];
        }

        else
        {
          v21 = 0;
          memset(buf, 0, sizeof(buf));
        }

        operator new();
      }

      v11 = ASDTBaseLogType();
      v5 = 2003329396;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        device2 = [(ASDTStream *)self device];
        deviceUID = [device2 deviceUID];
        streamName = [(ASDStream *)self streamName];
        device3 = [(ASDTStream *)self device];
        exclavesSensorName2 = [device3 exclavesSensorName];
        *buf = 138412802;
        *&buf[4] = deviceUID;
        *&buf[12] = 2112;
        *&buf[14] = streamName;
        *&buf[22] = 2112;
        *&buf[24] = exclavesSensorName2;
        _os_log_error_impl(&dword_241659000, v11, OS_LOG_TYPE_ERROR, "%@:%@: Failed to start with bad sensor name: %@", buf, 0x20u);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)ioThreadStateChange:(id)change
{
  changeCopy = change;
  [(ASDTExclavesStream *)self updateSensorForIOThreadStateChange:changeCopy];
  v5.receiver = self;
  v5.super_class = ASDTExclavesStream;
  [(ASDTStream *)&v5 ioThreadStateChange:changeCopy];
}

- (void)exclavesStatusTracker
{
  device = [(ASDTStream *)self device];
  v4 = [device conformsToProtocol:&unk_285364AE8];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  device2 = [(ASDTStream *)self device];
  exclavesStatusTracker = [device2 exclavesStatusTracker];

  return exclavesStatusTracker;
}

- (BOOL)unexpectedSensorStatus:(int)status
{
  nonSecureStreamStarted = [(ASDTExclavesStream *)self nonSecureStreamStarted];
  if (status <= 4)
  {
    v5 = 5u >> status;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if (!nonSecureStreamStarted)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)updateSensorForIOThreadStateChange:(id)change
{
  v59 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (![changeCopy asdtIOThreadChangeIsolatedUseCase])
  {
    if ([changeCopy asdtIOThreadUseCaseIsFirstOrWasLast])
    {
      asdtIOThreadChangeEvent = [changeCopy asdtIOThreadChangeEvent];
      exclavesSensorManager = [(ASDTExclavesStream *)self exclavesSensorManager];
      [exclavesSensorManager ioThreadStartStop:asdtIOThreadChangeEvent == 1937011316 withStatusTracker:{-[ASDTExclavesStream exclavesStatusTracker](self, "exclavesStatusTracker")}];

      [(ASDTExclavesStream *)self setNonSecureStreamStarted:asdtIOThreadChangeEvent == 1937011316];
      exclavesSensorManager2 = [(ASDTExclavesStream *)self exclavesSensorManager];
      sensor = [exclavesSensorManager2 sensor];

      if (sensor)
      {
        v53 = 4;
        v54 = 0;
        device = [(ASDTStream *)self device];
        v10 = [device getProperty:"SxEatpni" withQualifierSize:0 qualifierData:0 dataSize:&v53 andData:&v54 forClient:0];

        if ((v10 & 1) == 0)
        {
          v54 = 1;
        }

        device2 = [(ASDTStream *)self device];
        exclavesSensorName = [device2 exclavesSensorName];

        if (!exclavesSensorName)
        {
          v25 = ASDTBaseLogType();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            device3 = [(ASDTStream *)self device];
            deviceUID = [device3 deviceUID];
            streamName = [(ASDStream *)self streamName];
            *buf = 138412546;
            *&buf[4] = deviceUID;
            *&buf[12] = 2112;
            *&buf[14] = streamName;
            _os_log_error_impl(&dword_241659000, v25, OS_LOG_TYPE_ERROR, "%@:%@: Bad sensor name!", buf, 0x16u);
          }

          goto LABEL_32;
        }

        v13 = ASDTBaseLogType();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          device4 = [(ASDTStream *)self device];
          deviceUID2 = [device4 deviceUID];
          streamName2 = [(ASDStream *)self streamName];
          *buf = 138412802;
          *&buf[4] = deviceUID2;
          *&buf[12] = 2112;
          *&buf[14] = streamName2;
          *&buf[22] = 2112;
          *&buf[24] = exclavesSensorName;
          _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: Using sensor: %@", buf, 0x20u);
        }

        v52 = 0;
        if (v54)
        {
          device5 = [(ASDTStream *)self device];
          deviceUID3 = [device5 deviceUID];

          if (asdtIOThreadChangeEvent == 1937011316)
          {
            device6 = [(ASDTStream *)self device];
            deviceManager = [device6 deviceManager];
            concurrentQueue = [deviceManager concurrentQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke;
            block[3] = &unk_278CE64F0;
            v51 = deviceUID3;
            dispatch_async(concurrentQueue, block);

            v22 = ASDT::Exclaves::Sensor::Start(sensor, &v52);
            v23 = &v51;
            v24 = 1;
          }

          else
          {
            v22 = ASDT::Exclaves::Sensor::Stop(sensor, &v52);
            device7 = [(ASDTStream *)self device];
            deviceManager2 = [device7 deviceManager];
            concurrentQueue2 = [deviceManager2 concurrentQueue];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke_2;
            v48[3] = &unk_278CE64F0;
            v49 = deviceUID3;
            dispatch_async(concurrentQueue2, v48);

            v23 = &v49;
            v24 = 2;
          }

          if (v22)
          {
            v29 = ASDTBaseLogType();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(ASDTExclavesStream *)exclavesSensorName updateSensorForIOThreadStateChange:v29];
            }
          }

          else
          {
            exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
            v31 = exclavesStatusTracker;
            if (exclavesStatusTracker)
            {
              v32 = v52;
              ASDTTime::machAbsoluteTime(exclavesStatusTracker, &v55);
              *&buf[8] = v55;
              *buf = -1;
              *&buf[24] = v56;
              *&buf[32] = v32;
              *&buf[36] = v24;
              ASDT::Exclaves::StatusTracker::Push(v31, buf);
            }

            v33 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v52];
            v29 = ASDTBaseLogType();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v52;
              v35 = ASDT::Exclaves::Sensor::StatusString(v52);
              v36 = "stop";
              *buf = 138413314;
              *&buf[4] = exclavesSensorName;
              if (asdtIOThreadChangeEvent == 1937011316)
              {
                v36 = "start";
              }

              *&buf[12] = 2080;
              *&buf[14] = v36;
              v37 = "un";
              *&buf[22] = 1024;
              *&buf[24] = v34;
              *&buf[28] = 2080;
              if (!v33)
              {
                v37 = "";
              }

              *&buf[30] = v35;
              *&buf[38] = 2080;
              v58 = v37;
              _os_log_impl(&dword_241659000, v29, OS_LOG_TYPE_DEFAULT, "%@: %s : resulting status: [%u] %s (%sexpected)", buf, 0x30u);
            }
          }
        }

        else
        {
          if (!ASDT::Exclaves::Sensor::GetStatus(sensor, &v52))
          {
            v39 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v52];
            v40 = ASDTBaseLogType();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v52;
              v42 = ASDT::Exclaves::Sensor::StatusString(v52);
              v43 = "";
              *buf = 138413058;
              *&buf[4] = exclavesSensorName;
              *&buf[12] = 1024;
              if (v39)
              {
                v43 = "un";
              }

              *&buf[14] = v41;
              *&buf[18] = 2080;
              *&buf[20] = v42;
              *&buf[28] = 2080;
              *&buf[30] = v43;
              _os_log_impl(&dword_241659000, v40, OS_LOG_TYPE_DEFAULT, "%@: current status: [%u] %s (%sexpected)", buf, 0x26u);
            }

            ptr = self->_ramper.__ptr_;
            if (ptr)
            {
              ASDT::Ramper::MuteForSensorStatus(ptr, v52, 1);
            }

            goto LABEL_32;
          }

          deviceUID3 = ASDTBaseLogType();
          if (os_log_type_enabled(deviceUID3, OS_LOG_TYPE_ERROR))
          {
            [(ASDTExclavesStream *)exclavesSensorName updateSensorForIOThreadStateChange:deviceUID3];
          }
        }

LABEL_32:
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke(uint64_t a1)
{
  v2 = +[ASDTSystemStatus systemStatus];
  [v2 recordingIsEnabled:1 forDeviceUID:*(a1 + 32)];
}

void __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke_2(uint64_t a1)
{
  v2 = +[ASDTSystemStatus systemStatus];
  [v2 recordingIsEnabled:0 forDeviceUID:*(a1 + 32)];
}

- (id)exclavesReadInput
{
  v41 = *MEMORY[0x277D85DE8];
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  ioBufferSize = [(ASDTExclavesStream *)self ioBufferSize];
  device = [(ASDTStream *)self device];
  timestampPeriod = [device timestampPeriod];

  if (!timestampPeriod || !bytesPerFrame || !ioBufferSize)
  {
    v18 = ASDTBaseLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      device2 = [(ASDTStream *)self device];
      deviceUID = [device2 deviceUID];
      streamName = [(ASDStream *)self streamName];
      *buf = 138413314;
      v32 = deviceUID;
      v33 = 2112;
      v34 = streamName;
      v35 = 1024;
      v36 = bytesPerFrame;
      v37 = 1024;
      v38 = ioBufferSize;
      v39 = 1024;
      v40 = timestampPeriod;
      _os_log_error_impl(&dword_241659000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, streamBufferSize: %u, period: %u", buf, 0x28u);
    }

LABEL_13:

    goto LABEL_14;
  }

  ptr = self->_ramper.__ptr_;
  exclavesStatusTracker = [(ASDTExclavesStream *)self exclavesStatusTracker];
  updateClientPositionBlock = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:updateClientPositionBlock];

  getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  v12 = self->_audioBuffer.__ptr_;
  if (v12)
  {
    if (ptr && *(ptr + 9))
    {
      v13 = getUpdateClientPositionUnretainedAddress;
      v14 = ioBufferSize / bytesPerFrame;
      ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
      ioBufferFramesUnexpectedSizeCount = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __39__ASDTExclavesStream_exclavesReadInput__block_invoke;
      v27[3] = &__block_descriptor_92_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
      v27[4] = ioBufferFramesSizeMax;
      v27[5] = ptr;
      v27[6] = ioBufferFramesUnexpectedSizeCount;
      v27[7] = v12;
      v28 = timestampPeriod;
      v29 = bytesPerFrame;
      v30 = v14;
      v27[8] = exclavesStatusTracker;
      v27[9] = v13;
      v17 = _Block_copy(v27);
      goto LABEL_15;
    }

    v18 = ASDTBaseLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      device3 = [(ASDTStream *)self device];
      deviceUID2 = [device3 deviceUID];
      streamName2 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v32 = deviceUID2;
      v33 = 2112;
      v34 = streamName2;
      _os_log_error_impl(&dword_241659000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = 0;
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

ASDTTime *__39__ASDTExclavesStream_exclavesReadInput__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    __39__ASDTExclavesStream_exclavesReadInput__block_invoke_cold_2();
  }

  v4 = a4;
  if (!a4)
  {
    __39__ASDTExclavesStream_exclavesReadInput__block_invoke_cold_1();
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

  v10 = v6;
  if (*(a1 + 80) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = *(a1 + 80);
  }

  if (v11)
  {
    v12 = *(a1 + 84);
    v23 = v6;
    v22 = v11;
    do
    {
      v13 = *(a1 + 40);
      if (*(v13 + 36) >= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = *(v13 + 36);
      }

      v29 = 0;
      v15 = ASDT::Exclaves::AudioBuffer::Read(*(a1 + 56), *(v13 + 24), v14, v12, *(a1 + 88), v10, &v29);
      v16 = v15;
      if (!v15)
      {
        ASDT::Ramper::Process(*(a1 + 40), v14, *(*(a1 + 40) + 24), v4, v29);
      }

      v17 = *(a1 + 64);
      if (v17)
      {
        v18 = v29;
        ASDTTime::machAbsoluteTime(v15, &v30);
        v24 = v10;
        v25 = v30;
        v26 = v31;
        v27 = v18;
        v28 = 3;
        ASDT::Exclaves::StatusTracker::Push(v17, &v24);
      }

      v11 -= v14;
      v10 += v14;
      v12 = *(a1 + 84);
      v4 += v12 * v14;
      if (v16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v11 == 0;
      }
    }

    while (!v19);
    v10 = v23;
    v11 = v22;
  }

  else
  {
    v16 = 0;
  }

  v20 = **(a1 + 72);
  if (v20)
  {
    (*(v20 + 16))(v20, v10 + v11);
  }

  return v16;
}

- (id)readInputBlock
{
  if ([(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
  {
    exclavesReadInput = [(ASDTExclavesStream *)self exclavesReadInput];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    exclavesReadInput = [(ASDTStream *)&v5 readInputBlock];
  }

  return exclavesReadInput;
}

- (id)exclavesWriteMix
{
  physicalFormat = [(ASDStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  ioBufferSize = [(ASDTExclavesStream *)self ioBufferSize];
  updateClientPositionBlock = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:updateClientPositionBlock];

  getUpdateClientPositionUnretainedAddress = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  ptr = self->_inboundBuffer.__ptr_;
  if (ptr)
  {
    v9 = getUpdateClientPositionUnretainedAddress;
    ioBufferFramesSizeMax = [(ASDTStream *)self ioBufferFramesSizeMax];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__ASDTExclavesStream_exclavesWriteMix__block_invoke;
    v13[3] = &__block_descriptor_64_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v13[4] = ioBufferFramesSizeMax;
    v13[5] = ptr;
    v14 = bytesPerFrame;
    v15 = ioBufferSize / bytesPerFrame;
    v13[6] = v9;
    v11 = _Block_copy(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __38__ASDTExclavesStream_exclavesWriteMix__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    __38__ASDTExclavesStream_exclavesWriteMix__block_invoke_cold_2();
  }

  if (!a4)
  {
    __38__ASDTExclavesStream_exclavesWriteMix__block_invoke_cold_1();
  }

  v6 = *(a3 + 144);
  v7 = v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *v9;
  if (*v9 <= a2)
  {
    v10 = a2;
  }

  *v9 = v10;
  v11 = ASDT::Exclaves::InboundBuffer::Write(v8, a4, a2, *(a1 + 56), *(a1 + 60), v6);
  v12 = **(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v7 + a2);
  }

  return v11;
}

- (id)writeMixBlock
{
  if ([(ASDStream *)self direction]== 1869968496 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
  {
    exclavesWriteMix = [(ASDTExclavesStream *)self exclavesWriteMix];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    exclavesWriteMix = [(ASDTStream *)&v5 writeMixBlock];
  }

  return exclavesWriteMix;
}

- (void)clearBuffer
{
  if ([(ASDStream *)self direction]== 1869968496 && self->_inboundBuffer.__ptr_)
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:{-[ASDTExclavesStream exclavesBufferSize](self, "exclavesBufferSize")}];
    bytes = [v4 bytes];
    if (bytes)
    {
      ASDT::Exclaves::InboundBuffer::Write(self->_inboundBuffer.__ptr_, bytes, [(ASDTExclavesStream *)self exclavesBufferSize], 1);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    [(ASDTStream *)&v5 clearBuffer];
  }
}

- (NSDictionary)status
{
  exclavesSensorManager = [(ASDTExclavesStream *)self exclavesSensorManager];
  sensor = [exclavesSensorManager sensor];

  if (sensor)
  {
    v16 = 0;
    if (ASDT::Exclaves::Sensor::GetStatus(sensor, &v16))
    {
      goto LABEL_3;
    }

    v5 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v16];
    v6 = MEMORY[0x277CCACA8];
    v7 = v16;
    v8 = ASDT::Exclaves::Sensor::StatusString(v16);
    v9 = "";
    if (v5)
    {
      v9 = "un";
    }

    v10 = [v6 stringWithFormat:@"[%u] %s (%sexpected)", v7, v8, v9];
    if (!v10)
    {
LABEL_3:
      sensor = 0;
    }

    else
    {
      v11 = v10;
      v12 = MEMORY[0x277CBEAC0];
      device = [(ASDTStream *)self device];
      exclavesSensorName = [device exclavesSensorName];
      sensor = [v12 dictionaryWithObject:v11 forKey:exclavesSensorName];
    }
  }

  return sensor;
}

- (id).cxx_construct
{
  *(self + 43) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0;
  return self;
}

- (void)updateSensorForIOThreadStateChange:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = "start";
  if ((a2 & 1) == 0)
  {
    v3 = "stop";
  }

  v5 = 138412546;
  v6 = a1;
  v7 = 2080;
  v8 = v3;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Failed to %s sensor", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)updateSensorForIOThreadStateChange:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to get sensor status", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
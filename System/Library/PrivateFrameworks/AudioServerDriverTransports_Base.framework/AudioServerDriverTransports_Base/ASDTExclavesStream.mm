@interface ASDTExclavesStream
- (ASDTExclavesStream)initWithConfig:(id)a3 withDevice:(id)a4;
- (BOOL)allocExclavesAudioBuffer:(unsigned int)a3;
- (BOOL)unexpectedSensorStatus:(int)a3;
- (BOOL)usesExclavesAudioBuffer;
- (NSDictionary)status;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)exclavesWriteMix;
- (id)readInputBlock;
- (id)writeMixBlock;
- (int)pmPrepareStream:(int)a3;
- (void)clearBuffer;
- (void)exclavesStatusTracker;
- (void)freeExclavesAudioBuffer;
- (void)ioThreadStateChange:(id)a3;
- (void)updateSensorForIOThreadStateChange:(id)a3;
@end

@implementation ASDTExclavesStream

- (ASDTExclavesStream)initWithConfig:(id)a3 withDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ASDTExclavesStream;
  v8 = [(ASDTStream *)&v12 initWithConfig:v6 withDevice:v7];
  if (v8)
  {
    v9 = [v6 asdtExclavesBufferName];
    [(ASDTExclavesStream *)v8 setExclavesBufferName:v9];

    v10 = [(ASDTExclavesStream *)v8 exclavesBufferName];

    if (v10)
    {
      [v7 setSupportsIsolatedIO:1];
    }
  }

  return v8;
}

- (BOOL)usesExclavesAudioBuffer
{
  v2 = [(ASDTExclavesStream *)self exclavesBufferName];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)allocExclavesAudioBuffer:(unsigned int)a3
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

  v7 = [(ASDTExclavesStream *)self exclavesBufferName];

  if (v7)
  {
    if ([(ASDStream *)self direction]== 1768845428)
    {
      [(ASDTExclavesStream *)self exclavesBufferName];
      v8 = [objc_claimAutoreleasedReturnValue() UTF8String];
      ASDT::Exclaves::AudioBuffer::Create(v8, a3);
    }

    [(ASDTExclavesStream *)self exclavesBufferName];
    v9 = [objc_claimAutoreleasedReturnValue() UTF8String];
    ASDT::Exclaves::InboundBuffer::Create(v9, a3);
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

- (int)pmPrepareStream:(int)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = ASDTExclavesStream;
  v5 = [(ASDTStream *)&v19 pmPrepareStream:?];
  if (!v5)
  {
    if (a3 == 1970303090 && [(ASDStream *)self direction]== 1768845428 && [(ASDTExclavesStream *)self usesExclavesAudioBuffer])
    {
      v6 = [(ASDTStream *)self device];
      v7 = [v6 exclavesSensorName];
      v8 = [ASDTExclavesSensorManager forSensorName:v7];
      [(ASDTExclavesStream *)self setExclavesSensorManager:v8];

      v9 = [(ASDTExclavesStream *)self exclavesSensorManager];
      LODWORD(v6) = v9 == 0;

      if (!v6)
      {
        v10 = [(ASDStream *)self physicalFormat];
        if (v10)
        {
          [v10 audioStreamBasicDescription];
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
        v12 = [(ASDTStream *)self device];
        v13 = [v12 deviceUID];
        v14 = [(ASDStream *)self streamName];
        v15 = [(ASDTStream *)self device];
        v16 = [v15 exclavesSensorName];
        *buf = 138412802;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2112;
        *&buf[24] = v16;
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

- (void)ioThreadStateChange:(id)a3
{
  v4 = a3;
  [(ASDTExclavesStream *)self updateSensorForIOThreadStateChange:v4];
  v5.receiver = self;
  v5.super_class = ASDTExclavesStream;
  [(ASDTStream *)&v5 ioThreadStateChange:v4];
}

- (void)exclavesStatusTracker
{
  v3 = [(ASDTStream *)self device];
  v4 = [v3 conformsToProtocol:&unk_285364AE8];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(ASDTStream *)self device];
  v6 = [v5 exclavesStatusTracker];

  return v6;
}

- (BOOL)unexpectedSensorStatus:(int)a3
{
  v4 = [(ASDTExclavesStream *)self nonSecureStreamStarted];
  if (a3 <= 4)
  {
    v5 = 5u >> a3;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)updateSensorForIOThreadStateChange:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 asdtIOThreadChangeIsolatedUseCase])
  {
    if ([v4 asdtIOThreadUseCaseIsFirstOrWasLast])
    {
      v5 = [v4 asdtIOThreadChangeEvent];
      v6 = [(ASDTExclavesStream *)self exclavesSensorManager];
      [v6 ioThreadStartStop:v5 == 1937011316 withStatusTracker:{-[ASDTExclavesStream exclavesStatusTracker](self, "exclavesStatusTracker")}];

      [(ASDTExclavesStream *)self setNonSecureStreamStarted:v5 == 1937011316];
      v7 = [(ASDTExclavesStream *)self exclavesSensorManager];
      v8 = [v7 sensor];

      if (v8)
      {
        v53 = 4;
        v54 = 0;
        v9 = [(ASDTStream *)self device];
        v10 = [v9 getProperty:"SxEatpni" withQualifierSize:0 qualifierData:0 dataSize:&v53 andData:&v54 forClient:0];

        if ((v10 & 1) == 0)
        {
          v54 = 1;
        }

        v11 = [(ASDTStream *)self device];
        v12 = [v11 exclavesSensorName];

        if (!v12)
        {
          v25 = ASDTBaseLogType();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v45 = [(ASDTStream *)self device];
            v46 = [v45 deviceUID];
            v47 = [(ASDStream *)self streamName];
            *buf = 138412546;
            *&buf[4] = v46;
            *&buf[12] = 2112;
            *&buf[14] = v47;
            _os_log_error_impl(&dword_241659000, v25, OS_LOG_TYPE_ERROR, "%@:%@: Bad sensor name!", buf, 0x16u);
          }

          goto LABEL_32;
        }

        v13 = ASDTBaseLogType();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(ASDTStream *)self device];
          v15 = [v14 deviceUID];
          v16 = [(ASDStream *)self streamName];
          *buf = 138412802;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          *&buf[22] = 2112;
          *&buf[24] = v12;
          _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: Using sensor: %@", buf, 0x20u);
        }

        v52 = 0;
        if (v54)
        {
          v17 = [(ASDTStream *)self device];
          v18 = [v17 deviceUID];

          if (v5 == 1937011316)
          {
            v19 = [(ASDTStream *)self device];
            v20 = [v19 deviceManager];
            v21 = [v20 concurrentQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke;
            block[3] = &unk_278CE64F0;
            v51 = v18;
            dispatch_async(v21, block);

            v22 = ASDT::Exclaves::Sensor::Start(v8, &v52);
            v23 = &v51;
            v24 = 1;
          }

          else
          {
            v22 = ASDT::Exclaves::Sensor::Stop(v8, &v52);
            v26 = [(ASDTStream *)self device];
            v27 = [v26 deviceManager];
            v28 = [v27 concurrentQueue];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __57__ASDTExclavesStream_updateSensorForIOThreadStateChange___block_invoke_2;
            v48[3] = &unk_278CE64F0;
            v49 = v18;
            dispatch_async(v28, v48);

            v23 = &v49;
            v24 = 2;
          }

          if (v22)
          {
            v29 = ASDTBaseLogType();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(ASDTExclavesStream *)v12 updateSensorForIOThreadStateChange:v29];
            }
          }

          else
          {
            v30 = [(ASDTExclavesStream *)self exclavesStatusTracker];
            v31 = v30;
            if (v30)
            {
              v32 = v52;
              ASDTTime::machAbsoluteTime(v30, &v55);
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
              *&buf[4] = v12;
              if (v5 == 1937011316)
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
          if (!ASDT::Exclaves::Sensor::GetStatus(v8, &v52))
          {
            v39 = [(ASDTExclavesStream *)self unexpectedSensorStatus:v52];
            v40 = ASDTBaseLogType();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v52;
              v42 = ASDT::Exclaves::Sensor::StatusString(v52);
              v43 = "";
              *buf = 138413058;
              *&buf[4] = v12;
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

          v18 = ASDTBaseLogType();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(ASDTExclavesStream *)v12 updateSensorForIOThreadStateChange:v18];
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
  v3 = [(ASDStream *)self physicalFormat];
  v4 = [v3 bytesPerFrame];

  v5 = [(ASDTExclavesStream *)self ioBufferSize];
  v6 = [(ASDTStream *)self device];
  v7 = [v6 timestampPeriod];

  if (!v7 || !v4 || !v5)
  {
    v18 = ASDTBaseLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [(ASDTStream *)self device];
      v22 = [v21 deviceUID];
      v23 = [(ASDStream *)self streamName];
      *buf = 138413314;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 1024;
      v36 = v4;
      v37 = 1024;
      v38 = v5;
      v39 = 1024;
      v40 = v7;
      _os_log_error_impl(&dword_241659000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, streamBufferSize: %u, period: %u", buf, 0x28u);
    }

LABEL_13:

    goto LABEL_14;
  }

  ptr = self->_ramper.__ptr_;
  v9 = [(ASDTExclavesStream *)self exclavesStatusTracker];
  v10 = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:v10];

  v11 = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  v12 = self->_audioBuffer.__ptr_;
  if (v12)
  {
    if (ptr && *(ptr + 9))
    {
      v13 = v11;
      v14 = v5 / v4;
      v15 = [(ASDTStream *)self ioBufferFramesSizeMax];
      v16 = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __39__ASDTExclavesStream_exclavesReadInput__block_invoke;
      v27[3] = &__block_descriptor_92_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
      v27[4] = v15;
      v27[5] = ptr;
      v27[6] = v16;
      v27[7] = v12;
      v28 = v7;
      v29 = v4;
      v30 = v14;
      v27[8] = v9;
      v27[9] = v13;
      v17 = _Block_copy(v27);
      goto LABEL_15;
    }

    v18 = ASDTBaseLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = [(ASDTStream *)self device];
      v25 = [v24 deviceUID];
      v26 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
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
    v3 = [(ASDTExclavesStream *)self exclavesReadInput];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    v3 = [(ASDTStream *)&v5 readInputBlock];
  }

  return v3;
}

- (id)exclavesWriteMix
{
  v3 = [(ASDStream *)self physicalFormat];
  v4 = [v3 bytesPerFrame];

  v5 = [(ASDTExclavesStream *)self ioBufferSize];
  v6 = [(ASDTStream *)self updateClientPositionBlock];
  [(ASDTStream *)self setUpdateClientPositionCopy:v6];

  v7 = [(ASDTStream *)self getUpdateClientPositionUnretainedAddress];
  ptr = self->_inboundBuffer.__ptr_;
  if (ptr)
  {
    v9 = v7;
    v10 = [(ASDTStream *)self ioBufferFramesSizeMax];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__ASDTExclavesStream_exclavesWriteMix__block_invoke;
    v13[3] = &__block_descriptor_64_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v13[4] = v10;
    v13[5] = ptr;
    v14 = v4;
    v15 = v5 / v4;
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
    v3 = [(ASDTExclavesStream *)self exclavesWriteMix];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ASDTExclavesStream;
    v3 = [(ASDTStream *)&v5 writeMixBlock];
  }

  return v3;
}

- (void)clearBuffer
{
  if ([(ASDStream *)self direction]== 1869968496 && self->_inboundBuffer.__ptr_)
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:{-[ASDTExclavesStream exclavesBufferSize](self, "exclavesBufferSize")}];
    v3 = [v4 bytes];
    if (v3)
    {
      ASDT::Exclaves::InboundBuffer::Write(self->_inboundBuffer.__ptr_, v3, [(ASDTExclavesStream *)self exclavesBufferSize], 1);
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
  v3 = [(ASDTExclavesStream *)self exclavesSensorManager];
  v4 = [v3 sensor];

  if (v4)
  {
    v16 = 0;
    if (ASDT::Exclaves::Sensor::GetStatus(v4, &v16))
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
      v4 = 0;
    }

    else
    {
      v11 = v10;
      v12 = MEMORY[0x277CBEAC0];
      v13 = [(ASDTStream *)self device];
      v14 = [v13 exclavesSensorName];
      v4 = [v12 dictionaryWithObject:v11 forKey:v14];
    }
  }

  return v4;
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
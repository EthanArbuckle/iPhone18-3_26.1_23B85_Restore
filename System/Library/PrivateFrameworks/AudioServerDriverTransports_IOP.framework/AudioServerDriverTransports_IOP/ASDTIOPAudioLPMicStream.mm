@interface ASDTIOPAudioLPMicStream
+ (id)ioServiceDependenciesForConfig:(id)a3;
- (ASDTIOPAudioLPMicStream)initWithConfig:(id)a3 withDevice:(id)a4;
- (BOOL)mapIOBuffer;
- (BOOL)updateFromStreamDescription:(StreamDescription *)a3;
- (char)ioBufferRef;
- (id).cxx_construct;
- (id)exclavesReadInput;
- (id)readIsolatedInputBlock;
- (int)pmPrewarmStream:(int)a3;
- (int)teardownIsolatedIOForUseCase:(unint64_t)a3;
- (void)ioThreadStateChange:(id)a3;
- (void)releaseIOBuffer;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDTIOPAudioLPMicStream

+ (id)ioServiceDependenciesForConfig:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 asdtExclavesBufferName];
  v5 = [v3 asdtServiceID];
  v6 = off_278CE9AB8;
  if (v4)
  {
    v6 = off_278CE9AC8;
  }

  v7 = [(__objc2_class *)*v6 dependencyForID:v5 andConfiguration:v3];
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

- (ASDTIOPAudioLPMicStream)initWithConfig:(id)a3 withDevice:(id)a4
{
  v74[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
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
    v19 = [v6 asdtServiceID];
    v20 = [v6 asdtExclavesBufferName];
    v64 = v20;
    v21 = 0;
    if (v19)
    {
      if (v20)
      {
        v22 = [(ASDTIOServiceManager *)ASDTIOPAudioIsolatedIOBufferServiceManager matchedIOServiceForID:v19];
      }

      else
      {
        v25 = [(ASDTIOServiceManager *)ASDTIOPAudioIOBufferServiceManager matchedIOServiceForID:v19];
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
    v26 = [(ASDTExclavesStream *)&v65 initWithConfig:v8 withDevice:v7];
    self = v26;
    if (v26)
    {
      [(ASDTIOPAudioLPMicStream *)v26 setIoBufferDevice:v23];
      [(ASDTIOPAudioLPMicStream *)self setIsolatedIOBufferDevice:v21];
      v27 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      if (v27)
      {
      }

      else
      {
        v31 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
        v32 = v31 == 0;

        if (v32)
        {
          v46 = ASDTIOPLogType();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v59 = [(ASDTStream *)self device];
            v63 = [v59 deviceUID];
            v60 = [(ASDStream *)self streamName];
            *buf = 138412546;
            v67 = v63;
            v68 = 2112;
            v69 = v60;
            _os_log_error_impl(&dword_2416E9000, v46, OS_LOG_TYPE_ERROR, "%@:%@: No (Isolated)IOBuffer defined for this stream.", buf, 0x16u);
          }

          goto LABEL_36;
        }
      }

      v33 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      if (v33)
      {
        v34 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
        v35 = [v34 open];

        if ((v35 & 1) == 0)
        {
          v46 = ASDTIOPLogType();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v55 = [(ASDTStream *)self device];
            v61 = [v55 deviceUID];
            v56 = [(ASDStream *)self streamName];
            *buf = 138412546;
            v67 = v61;
            v68 = 2112;
            v69 = v56;
            _os_log_error_impl(&dword_2416E9000, v46, OS_LOG_TYPE_ERROR, "%@:%@: Failed to open connection to IOBuffer user client", buf, 0x16u);
          }

          goto LABEL_36;
        }
      }

      v36 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
      v37 = v36 == 0;

      if (!v37)
      {
        v38 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
        v39 = [v38 open];

        if (v39)
        {
          if (![(ASDTStream *)self isolatedUseCaseID])
          {
            v40 = [v19 identifier];
            v41 = v40;
            v42 = [v40 UTF8String];
            if (v42)
            {
              v43 = 0;
              v44 = 0;
              do
              {
                if (!*(v42 + v43))
                {
                  break;
                }

                v44 = *(v42 + v43++) | (v44 << 8);
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

          v51 = [(ASDTIOPAudioLPMicStream *)self parent];
          v52 = [v51 setupExclavesStatusTracker];

          if (v52)
          {
            goto LABEL_40;
          }

LABEL_41:
          v24 = 0;
          goto LABEL_42;
        }

        v46 = ASDTIOPLogType();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v57 = [(ASDTStream *)self device];
          v62 = [v57 deviceUID];
          v58 = [(ASDStream *)self streamName];
          *buf = 138412546;
          v67 = v62;
          v68 = 2112;
          v69 = v58;
          _os_log_error_impl(&dword_2416E9000, v46, OS_LOG_TYPE_ERROR, "%@:%@: Failed to open connection to IsolatedIOBuffer user client", buf, 0x16u);
        }

LABEL_36:

        goto LABEL_41;
      }
    }

LABEL_40:
    self = self;
    v24 = self;
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

  v24 = 0;
LABEL_43:

  v53 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)updateFromStreamDescription:(StreamDescription *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:a3];
  v6 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

  if (v6)
  {
    v7 = [v5 asdtEquivalentNativeFloatPacked];

    v5 = v7;
  }

  if (v5)
  {
    [(ASDStream *)self setLatency:a3->var9];
    [(ASDTStream *)self setSafetyOffset:a3->var10];
    v18 = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [(ASDStream *)self setPhysicalFormats:v8];

    [(ASDTStream *)self setPhysicalFormat:v5];
    v9 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
    if (!v9)
    {
      v12 = 1;
      goto LABEL_11;
    }

    v10 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
    v11 = [(ASDTIOPAudioLPMicStream *)self parent];
    v12 = [v10 setStreamDescription:a3 withBufferFrameSize:{objc_msgSend(v11, "ioBufferSizeFrames")}];
  }

  else
  {
    v9 = ASDTIOPLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = [(ASDTStream *)self device];
      v16 = [v15 deviceUID];
      v17 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_error_impl(&dword_2416E9000, v9, OS_LOG_TYPE_ERROR, "%@:%@: Failed to allocate stream format.", buf, 0x16u);
    }

    v12 = 0;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (char)ioBufferRef
{
  v2 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
  v3 = [v2 ioBufferRef];

  return v3;
}

- (BOOL)mapIOBuffer
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTIOPAudioLPMicStream *)self parent];
  v4 = [v3 ioBufferSizeFrames];

  v5 = [(ASDTExclavesStream *)self exclavesBufferName];

  if (!v5)
  {
    v9 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];

    if (!v9)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }

    v10 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
    v11 = [v10 mapIOBuffer];

    if (v11)
    {
      v12 = [(ASDStream *)self physicalFormat];
      v13 = [v12 bytesPerFrame];

      v14 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
      v15 = [v14 ioBufferSize];
      v16 = v13 * v4;

      if (v15 >= v13 * v4)
      {
        self->_ioBufferSize = v16;
        goto LABEL_4;
      }

      v17 = ASDTIOPLogType();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = [(ASDTStream *)self device];
        v26 = [v25 deviceUID];
        v27 = [(ASDStream *)self streamName];
        v28 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
        v29 = 138413058;
        v30 = v26;
        v31 = 2112;
        v32 = v27;
        v33 = 1024;
        v34 = [v28 ioBufferSize];
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
        v22 = [(ASDTStream *)self device];
        v23 = [v22 deviceUID];
        v24 = [(ASDStream *)self streamName];
        v29 = 138412546;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_error_impl(&dword_2416E9000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Failed to map IO buffer", &v29, 0x16u);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v6 = [(ASDStream *)self physicalFormat];
  v7 = [v6 bytesPerFrame] << 12;

  if (![(ASDTExclavesStream *)self allocExclavesAudioBuffer:v7])
  {
    v17 = ASDTIOPLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [(ASDTStream *)self device];
      v20 = [v19 deviceUID];
      v21 = [(ASDStream *)self streamName];
      v29 = 138412546;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
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
  v3 = [(ASDTExclavesStream *)self exclavesBufferName];

  if (v3)
  {
    [(ASDTExclavesStream *)self freeExclavesAudioBuffer];
  }

  v4 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];

  if (v4)
  {
    v5 = [(ASDTIOPAudioLPMicStream *)self ioBufferDevice];
    [v5 releaseIOBuffer];
  }

  self->_ioBufferSize = 0;
}

- (int)pmPrewarmStream:(int)a3
{
  v9.receiver = self;
  v9.super_class = ASDTIOPAudioLPMicStream;
  result = [(ASDTStream *)&v9 pmPrewarmStream:?];
  if (a3 == 1970304877 && !result)
  {
    v6 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

    if (v6 && (-[ASDTIOPAudioLPMicStream isolatedIOBufferDevice](self, "isolatedIOBufferDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 setupIO], v7, (v8 & 1) == 0))
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

- (void)ioThreadStateChange:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 asdtIOThreadChangeIsolatedUseCase];
  v6 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];

  if (!v6 || v5)
  {
    v24.receiver = self;
    v24.super_class = ASDTIOPAudioLPMicStream;
    [(ASDTExclavesStream *)&v24 ioThreadStateChange:v4];
  }

  else
  {
    v7 = [(ASDTIOPAudioLPMicStream *)self parent];
    v8 = [v7 nonSecureInputEnabled];

    if (v8)
    {
      v9 = [v4 asdtIOThreadUseCaseIsFirstOrWasLast];
      v10 = [v4 asdtIOThreadChangeEvent];
      if (v10 == 1937010544)
      {
        if (v9)
        {
          v15 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
          [v15 teardownClientIO:{-[ASDTStream isolatedUseCaseID](self, "isolatedUseCaseID")}];
        }
      }

      else if (v10 == 1937011316)
      {
        if (v9)
        {
          v11 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
          v12 = [v11 setupClientIO:-[ASDTStream isolatedUseCaseID](self withBufferFrameSize:{"isolatedUseCaseID"), 0}];

          if ((v12 & 1) == 0)
          {
            v13 = ASDTIOPLogType();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v20 = [(ASDTStream *)self device];
              v21 = [v20 deviceUID];
              v22 = [(ASDStream *)self streamName];
              *buf = 138412546;
              v26 = v21;
              v27 = 2112;
              v28 = v22;
              _os_log_error_impl(&dword_2416E9000, v13, OS_LOG_TYPE_ERROR, "%@:%@: Failed to setup non-secure input path.", buf, 0x16u);
            }
          }
        }
      }

      v23.receiver = self;
      v23.super_class = ASDTIOPAudioLPMicStream;
      [(ASDTExclavesStream *)&v23 ioThreadStateChange:v4];
    }

    else
    {
      v14 = ASDTIOPLogType();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = [(ASDTStream *)self device];
        v18 = [v17 deviceUID];
        v19 = [(ASDStream *)self streamName];
        *buf = 138412546;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
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
  v3 = [(ASDStream *)self physicalFormat];
  v4 = [v3 bytesPerFrame];

  v5 = [(ASDTStream *)self isolatedUseCaseID];
  v6 = [(ASDTStream *)self device];
  v7 = [v6 timestampPeriod];

  if (!v7 || !v4)
  {
    v18 = ASDTIOPLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [(ASDTStream *)self device];
      v22 = [v21 deviceUID];
      v23 = [(ASDStream *)self streamName];
      *buf = 138413058;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      v36 = 1024;
      v37 = v4;
      v38 = 1024;
      v39 = v7;
      _os_log_error_impl(&dword_2416E9000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad stream format: Bbf: %u, period: %u", buf, 0x22u);
    }

    goto LABEL_13;
  }

  v8 = [(ASDTExclavesStream *)self exclavesAudioBuffer];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [(ASDTExclavesStream *)self ramper];
  if (!v10 || (v11 = v10, !v10[9]))
  {
    v18 = ASDTIOPLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = [(ASDTStream *)self device];
      v25 = [v24 deviceUID];
      v26 = [(ASDStream *)self streamName];
      *buf = 138412546;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_error_impl(&dword_2416E9000, v18, OS_LOG_TYPE_ERROR, "%@:%@: Bad physical format; ramper is nil.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v27 = [(ASDTStream *)self ioBufferFramesSizeMax];
  v12 = [(ASDTStream *)self ioBufferFramesUnexpectedSizeCount];
  v13 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  v14 = [v13 userClient];

  if (v14)
  {
    v15 = [(ASDTExclavesStream *)self exclavesStatusTracker];
    v16 = [(ASDTIOPAudioLPMicStream *)self parent];
    v17 = [v16 nonSecureInputEnabled];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__ASDTIOPAudioLPMicStream_exclavesReadInput__block_invoke;
    aBlock[3] = &__block_descriptor_97_e195_i40__0I8r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_12_v20_v28I36l;
    v31 = v17;
    aBlock[4] = v27;
    aBlock[5] = v11;
    aBlock[6] = v12;
    aBlock[7] = v14;
    aBlock[8] = v5;
    aBlock[9] = v9;
    v29 = v7;
    v30 = v4;
    aBlock[10] = v15;
    v8 = _Block_copy(aBlock);
    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];

  return v8;
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
  v2 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  v3 = [v2 userClient];

  if (v3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__ASDTIOPAudioLPMicStream_readIsolatedInputBlock__block_invoke;
    aBlock[3] = &__block_descriptor_40_e187_i28__0Q8I16r__AudioServerPlugInIOCycleInfo_QI_AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II____dd_d_20l;
    aBlock[4] = v3;
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

- (int)teardownIsolatedIOForUseCase:(unint64_t)a3
{
  v4 = [(ASDTIOPAudioLPMicStream *)self isolatedIOBufferDevice];
  LODWORD(a3) = [v4 teardownClientIO:a3];

  if (a3)
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
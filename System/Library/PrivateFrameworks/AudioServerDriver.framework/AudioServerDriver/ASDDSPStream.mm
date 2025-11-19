@interface ASDDSPStream
- (ASDDSPGraph)hardwareDSP;
- (ASDDSPStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4;
- (BOOL)_allocateStreamingResources;
- (BOOL)addClientDSP:(id)a3 withKey:(unint64_t)a4;
- (BOOL)addHardwareDSP:(id)a3;
- (BOOL)enableBasicDSPCaptureOnGraph:(id)a3 withLevel:(id)a4 andDebugType:(int64_t)a5 andMode:(int64_t)a6;
- (BOOL)graphStructureIsValid:(id)a3 clientID:(unint64_t)a4;
- (BOOL)removeClientDSPwithKey:(unint64_t)a3;
- (BOOL)removeHardwareDSP;
- (NSArray)underlyingStreams;
- (id).cxx_construct;
- (id)_hardwareDSP;
- (id)clientDSPForClient:(unsigned int)a3;
- (id)processOutputBlock;
- (id)readInputBlock;
- (id)readIsolatedInputBlock;
- (id)writeMixBlock;
- (int64_t)getAudioCaptureRingBufferModeWithDict:(id)a3;
- (int64_t)getAudioDebugTypeWithDict:(id)a3;
- (int64_t)getDSPCaptureTypeFromDefault;
- (int64_t)graphAudioValidationMode;
- (int64_t)maximumFramesPerIOCycle;
- (void)_allocateStreamingResourcesForGraphHelper:(void *)a3;
- (void)_deallocateStreamingResources;
- (void)_resumeProcessing;
- (void)_suspendProcessing;
- (void)_updateLatency;
- (void)_updateMaximumFramesPerIOCycle;
- (void)dealloc;
- (void)doSetUnderlyingStreams:(id)a3;
- (void)enableDSPCaptureByType:(int64_t)a3 withGraph:(id)a4;
- (void)enableDSPCaptureInAction;
- (void)enableDSPFileInjectionOnGraph:(id)a3 withFormat:(id)a4;
- (void)resumeProcessing;
- (void)setBypassMode:(BOOL)a3;
- (void)setGraphAudioValidationMode:(int64_t)a3;
- (void)setUnderlyingStreams:(id)a3;
- (void)sleepForNumberOfSamples:(unint64_t)a3;
- (void)startStream;
- (void)stopStream;
- (void)suspendProcessing;
- (void)updateLatency;
@end

@implementation ASDDSPStream

- (int64_t)getDSPCaptureTypeFromDefault
{
  defaults = self->_defaults;
  if (!defaults)
  {
    return 0;
  }

  v4 = [(NSUserDefaults *)defaults valueForKey:@"EnableDSPCapture"];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSPCaptureTypeBasic enabled!", buf, 2u);
    }

    v4 = 1;
  }

  v5 = [(NSUserDefaults *)self->_defaults valueForKey:@"EnableDSPCaptureOnPluginDevice"];

  if (v5)
  {
    v4 |= 2uLL;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSPCaptureTypePluginDevice enabled!", v10, 2u);
    }
  }

  v6 = [(NSUserDefaults *)self->_defaults valueForKey:@"EnableDSPCaptureOnDSPGraph"];

  if (!v6)
  {
    if (v4)
    {
      return v4;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NO DSP capture is enabled!", v8, 2u);
    }

    return 0;
  }

  v4 |= 4uLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSPCaptureTypeDSPGraph enabled!", v9, 2u);
  }

  return v4;
}

- (int64_t)getAudioDebugTypeWithDict:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting Audio Debug Type...", buf, 2u);
  }

  v4 = [v3 valueForKey:@"DebugType"];
  v5 = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v6 = 1;
      goto LABEL_15;
    }

    v11 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Using default Audio Debug Type: ReinitializeGraph!";
    v9 = &v11;
LABEL_13:
    _os_log_impl(&dword_2415D8000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_14;
  }

  if (![v4 isEqualToString:@"KeepGraphInitialized"])
  {
    if (![v5 isEqualToString:@"ReinitializeGraph"] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v12 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Using Audio Debug Type: ReinitializeGraph!";
    v9 = v12;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Debug Type: KeepGraphInitialized!", v13, 2u);
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (int64_t)getAudioCaptureRingBufferModeWithDict:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting Audio Capture Ring Buffer Mode...", buf, 2u);
  }

  v4 = [v3 valueForKey:@"RingBufferMode"];
  v5 = v4;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: None!", v8, 2u);
    }

    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"Short"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: Short!", v11, 2u);
    }

    v6 = 1;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Normal"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v6 = 2;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: Normal!", v10, 2u);
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_18;
  }

  if (![v5 isEqualToString:@"Long"])
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using Audio Capture Ring Buffer Mode: Long!", v9, 2u);
  }

  v6 = 3;
LABEL_18:

  return v6;
}

- (void)enableDSPCaptureInAction
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "enableDSPCaptureInAction!", buf, 2u);
  }

  v3 = [(ASDDSPStream *)self hardwareDSP];
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found graph, enabling DSP Capture in action!", v5, 2u);
    }

    v4 = [(ASDDSPStream *)self getDSPCaptureTypeFromDefault];
    self->_DSPCaptureType = v4;
    [(ASDDSPStream *)self enableDSPCaptureByType:v4 withGraph:v3];
  }
}

- (ASDDSPStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[ASDDSPStream initWithDirection:withPlugin:]", a4}];
  [v5 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v6}];

  return 0;
}

- (void)doSetUnderlyingStreams:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = a3;
  objc_storeStrong(&self->_underlyingStreams, a3);
  self->_underlyingInputStreamCount = 0;
  self->_underlyingOutputStreamCount = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_underlyingStreams;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) direction];
        p_underlyingInputStreamCount = &self->_underlyingInputStreamCount;
        if (v9 == 1869968496)
        {
          v11 = [(ASDStream *)self direction];
          p_underlyingInputStreamCount = &self->_underlyingOutputStreamCount;
          if (v11 == 1768845428)
          {
            v12 = [MEMORY[0x277CCA890] currentHandler];
            [v12 handleFailureInMethod:a2 object:self file:@"ASDDSPStream.mm" lineNumber:248 description:@"Underlying stream has a different direction than the DSP stream"];

            p_underlyingInputStreamCount = &self->_underlyingOutputStreamCount;
          }
        }

        ++*p_underlyingInputStreamCount;
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __72__ASDDSPStream_initWithOwningDevice_underlyingStreams_direction_plugin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enableDSPCaptureInAction];
}

- (void)setUnderlyingStreams:(id)a3
{
  v4 = a3;
  dspQueue = self->_dspQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ASDDSPStream_setUnderlyingStreams___block_invoke;
  v7[3] = &unk_278CE3BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dspQueue, v7);
}

- (NSArray)underlyingStreams
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dspQueue = self->_dspQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ASDDSPStream_underlyingStreams__block_invoke;
  v5[3] = &unk_278CE3C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dspQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setGraphAudioValidationMode:(int64_t)a3
{
  dspQueue = self->_dspQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ASDDSPStream_setGraphAudioValidationMode___block_invoke;
  v4[3] = &unk_278CE3C60;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dspQueue, v4);
}

uint64_t __44__ASDDSPStream_setGraphAudioValidationMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 384) = v1;
  result = *(*(a1 + 32) + 288);
  if (result)
  {
    return ASDDSPStreamHelper::setGraphAudioValidationMode(result, v1);
  }

  return result;
}

- (int64_t)graphAudioValidationMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dspQueue = self->_dspQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASDDSPStream_graphAudioValidationMode__block_invoke;
  v5[3] = &unk_278CE3C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dspQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startStream
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ASDDSPStream_startStream__block_invoke;
  block[3] = &unk_278CE3C60;
  block[4] = self;
  block[5] = a2;
  dispatch_sync(dspQueue, block);
  v4.receiver = self;
  v4.super_class = ASDDSPStream;
  [(ASDStream *)&v4 startStream];
}

uint64_t __27__ASDDSPStream_startStream__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _hardwareDSP];

  if (!v2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ASDDSPStream.mm" lineNumber:348 description:@"DSPStreams must have hardware DSP"];
  }

  result = *(a1 + 32);
  if (!*(result + 392))
  {
    [result _updateMaximumFramesPerIOCycle];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(*(a1 + 32) + 376);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v7++) startStream];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    if (([*(a1 + 32) _allocateStreamingResources] & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ASDDSPStream.mm" lineNumber:360 description:@"Couldn't allocate streaming resources"];
    }

    ++*(*(a1 + 32) + 392);
    result = *(a1 + 32);
  }

  *(result + 408) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sleepForNumberOfSamples:(unint64_t)a3
{
  v4 = [(ASDStream *)self physicalFormat];
  [v4 sampleRate];
  v6 = a3 / v5 * 1000000.0;

  usleep(v6);
}

- (void)stopStream
{
  v5.receiver = self;
  v5.super_class = ASDDSPStream;
  [(ASDStream *)&v5 stopStream];
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ASDDSPStream_stopStream__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

uint64_t __26__ASDDSPStream_stopStream__block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x277D85DE8];
  *(*(result + 32) + 408) = 0;
  v1 = *(result + 32);
  v2 = *(v1 + 392);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    v5 = result;
    *(v1 + 392) = v4;
    v6 = *(result + 32);
    if (!*(v6 + 392))
    {
      v7 = v6 + 296;
      v8 = *(v6 + 304);
      if (v8 != v6 + 296)
      {
        do
        {
          ASDDSPGraphHelper::resetGraph((v8 + 16));
          v8 = *(v8 + 8);
        }

        while (v8 != v7);
        v6 = *(v5 + 32);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = *(v6 + 376);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v14 + 1) + 8 * v12++) stopStream];
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }

      result = [*(v5 + 32) _deallocateStreamingResources];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_allocateStreamingResources
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ASDDSPStream__allocateStreamingResources__block_invoke;
  v5[3] = &unk_278CE3AD0;
  v5[4] = self;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void __43__ASDDSPStream__allocateStreamingResources__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) physicalFormat];
  v3 = v2;
  if (v2)
  {
    [v2 audioStreamBasicDescription];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  CAStreamBasicDescription::CAStreamBasicDescription(v27, &v26);

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(*(a1 + 32) + 376);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v18 = [v8 direction];
        v9 = [v8 physicalFormat];
        v10 = v9;
        if (v9)
        {
          [v9 audioStreamBasicDescription];
        }

        else
        {
          memset(&v26, 0, sizeof(v26));
        }

        v17 = [v8 readInputBlock];
        v16 = [v8 writeMixBlock];
        v15 = [v8 readIsolatedInputBlock];
        v11 = v24;
        if (v24 >= v25)
        {
          v12 = std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDStreamDirection,AudioStreamBasicDescription,int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned long long,unsigned int,AudioServerPlugInIOCycleInfo const*)>(&v23, &v18, &v26, &v17, &v16, &v15);
        }

        else
        {
          std::vector<ASDDSPStreamHelper::DSPStream>::__construct_one_at_end[abi:ne200100]<ASDStreamDirection,AudioStreamBasicDescription,int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned long long,unsigned int,AudioServerPlugInIOCycleInfo const*)>(&v23, &v18, &v26, &v17, &v16, &v15);
          v12 = v11 + 80;
        }

        v24 = v12;
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 32);
  v14 = v13[40];
  [v13 direction];
  operator new();
}

- (void)_deallocateStreamingResources
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ASDDSPStream__deallocateStreamingResources__block_invoke;
  v3[3] = &unk_278CE39D0;
  v3[4] = self;
  v4[0] = &unk_285344558;
  v4[3] = v4;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
}

ASDDSPStreamHelper *__45__ASDDSPStream__deallocateStreamingResources__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 296;
  v4 = *(v2 + 304);
  if (v4 != v2 + 296)
  {
    do
    {
      ASDDSPGraphHelper::deallocateStreamingResources((v4 + 16));
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v2 = *(a1 + 32);
  }

  ASDDSPStreamHelper::deallocateStreamingResources(*(v2 + 288));
  v5 = (*(a1 + 32) + 288);

  return std::unique_ptr<ASDDSPStreamHelper>::reset[abi:ne200100](v5, 0);
}

- (void)_allocateStreamingResourcesForGraphHelper:(void *)a3
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [ASDDSPStream _allocateStreamingResourcesForGraphHelper:];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__ASDDSPStream__allocateStreamingResourcesForGraphHelper___block_invoke;
  v4[3] = &unk_278CE3C60;
  v4[4] = self;
  v4[5] = a3;
  v5[0] = &unk_285344558;
  v5[3] = v5;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
}

void __58__ASDDSPStream__allocateStreamingResourcesForGraphHelper___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 288);
  if (*(v2 + 32) == -1)
  {
    v11 = ASDDSPStreamHelper::dspInStreamFormats(v3);
    v12 = ASDDSPStreamHelper::dspOutStreamFormats(*(*(a1 + 32) + 288));
    [*(a1 + 32) maximumFramesPerIOCycle];
    [*(a1 + 32) keepGraphInitialized];
    v13 = *MEMORY[0x277D85DE8];

    ASDDSPGraphHelper::allocateStreamingResources(v2, v11, v12);
  }

  else
  {
    v4 = ASDDSPStreamHelper::dspFormat(v3);
    v5 = *(a1 + 40);
    v6 = *v4;
    v7 = *(v4 + 16);
    v24 = *(v4 + 32);
    v23[0] = v6;
    v23[1] = v7;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription const*,CAStreamBasicDescription const*>(&v17, v23, &v25, 1uLL);
    v8 = *v4;
    v9 = *(v4 + 16);
    v21 = *(v4 + 32);
    v20[0] = v8;
    v20[1] = v9;
    v15 = 0;
    v16 = 0;
    __p = 0;
    std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription const*,CAStreamBasicDescription const*>(&__p, v20, &v22, 1uLL);
    [*(a1 + 32) maximumFramesPerIOCycle];
    [*(a1 + 32) keepGraphInitialized];
    ASDDSPGraphHelper::allocateStreamingResources(v5, &v17, &__p);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)enableBasicDSPCaptureOnGraph:(id)a3 withLevel:(id)a4 andDebugType:(int64_t)a5 andMode:(int64_t)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream enableBasicDSPCaptureOnGraph:withLevel:andDebugType:andMode:];
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 name];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling basic DSP Capture on dsp graph: %@ with level: %@", buf, 0x16u);
  }

  if ([v11 isEqualToString:@"Light"])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = objc_opt_new();
    v13 = [v10 inputs];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke;
    v23[3] = &unk_278CE3C88;
    v23[4] = buf;
    [v13 enumerateObjectsUsingBlock:v23];

    v14 = [v10 outputs];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke_2;
    v22[3] = &unk_278CE3C88;
    v22[4] = buf;
    [v14 enumerateObjectsUsingBlock:v22];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling basic DSP Capture on dsp graph box names:%@", v24, 0xCu);
    }

    v16 = [ASDDSPGraphUtilities startRecordingBoxes:*(*&buf[8] + 40) inGraph:v10 fromStream:self toDirectory:self->_DSPCaptureDirectory withType:a5 andMode:a6 error:0];
    _Block_object_dispose(buf, 8);

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (![v11 isEqualToString:@"Heavy"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDDSPStream enableBasicDSPCaptureOnGraph:withLevel:andDebugType:andMode:];
      }

      goto LABEL_18;
    }

    if (![ASDDSPGraphUtilities startRecordingAllBoxesInGraph:v10 fromStream:self toDirectory:self->_DSPCaptureDirectory withType:a5 error:0])
    {
LABEL_18:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v19 = [v10 name];
        [ASDDSPStream enableBasicDSPCaptureOnGraph:v19 withLevel:buf andDebugType:? andMode:?];
      }

LABEL_20:
      v18 = 0;
      goto LABEL_21;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 name];
    *buf = 138412290;
    *&buf[4] = v17;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully enabled DSP Capture on dsp graph: %@", buf, 0xCu);
  }

  v18 = 1;
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 name];
  [v2 addObject:?];
}

void __76__ASDDSPStream_enableBasicDSPCaptureOnGraph_withLevel_andDebugType_andMode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 name];
  [v2 addObject:?];
}

- (void)enableDSPCaptureByType:(int64_t)a3 withGraph:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3)
  {
    if (a3)
    {
      v7 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"EnableDSPCapture"];
      v8 = [v7 valueForKey:@"Level"];
      [(ASDDSPStream *)self enableBasicDSPCaptureOnGraph:v6 withLevel:v8 andDebugType:[(ASDDSPStream *)self getAudioDebugTypeWithDict:v7] andMode:[(ASDDSPStream *)self getAudioCaptureRingBufferModeWithDict:v7]];
    }

    if ((a3 & 2) != 0)
    {
      v9 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"EnableDSPCaptureOnPluginDevice"];
      v10 = [v9 valueForKey:@"PluginDevice"];
      v11 = [v9 valueForKey:@"Level"];
      v35 = [v9 valueForKey:@"Boxes"];
      v12 = [(ASDDSPStream *)self getAudioDebugTypeWithDict:v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
        v14 = [WeakRetained deviceUID];
        *buf = 138412546;
        v38 = v14;
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "OwningDeviceUID: %@, tagetPluginDeviceUID: %@", buf, 0x16u);
      }

      v15 = objc_loadWeakRetained(&self->_owningDevice);
      v16 = [v15 deviceUID];
      v17 = [v16 isEqualToString:v10];

      if (v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v6 name];
          *buf = 138412546;
          v38 = v18;
          v39 = 2112;
          v40 = v10;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling DSP capture on dsp graph: %@ within Plugin Device: %@", buf, 0x16u);
        }

        if (v11)
        {
          v19 = [(ASDDSPStream *)self enableBasicDSPCaptureOnGraph:v6 withLevel:v11 andDebugType:v12];
        }

        else
        {
          v19 = [ASDDSPGraphUtilities startRecordingBoxes:v35 inGraph:v6 fromStream:self toDirectory:self->_DSPCaptureDirectory withType:v12 error:0];
        }

        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v6 name];
            *buf = 138412290;
            v38 = v20;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully enabled DSP Capture on dsp graph: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v21 = [v6 name];
          [ASDDSPStream enableBasicDSPCaptureOnGraph:v21 withLevel:v36 andDebugType:? andMode:?];
        }
      }
    }

    if ((a3 & 4) != 0)
    {
      v22 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"EnableDSPCaptureOnDSPGraph"];
      v23 = [v22 valueForKey:@"DSPGraph"];
      v24 = [v22 valueForKey:@"Level"];
      v25 = [v22 valueForKey:@"Boxes"];
      v26 = [(ASDDSPStream *)self getAudioDebugTypeWithDict:v22];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v6 name];
        *buf = 138412546;
        v38 = v27;
        v39 = 2112;
        v40 = v23;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP graph name: %@, targetGraphName: %@", buf, 0x16u);
      }

      v28 = [v6 name];
      v29 = [v28 isEqualToString:v23];

      if (v29)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v6 name];
          *buf = 138412290;
          v38 = v30;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enabling DSP Capture on dsp graph: %@", buf, 0xCu);
        }

        if (v24)
        {
          v31 = [(ASDDSPStream *)self enableBasicDSPCaptureOnGraph:v6 withLevel:v24 andDebugType:v26];
        }

        else
        {
          v31 = [ASDDSPGraphUtilities startRecordingBoxes:v25 inGraph:v6 fromStream:self toDirectory:self->_DSPCaptureDirectory withType:v26 error:0];
        }

        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v6 name];
            *buf = 138412290;
            v38 = v32;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully enabled DSP Capture on dsp graph: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v33 = [v6 name];
          [ASDDSPStream enableBasicDSPCaptureOnGraph:v33 withLevel:buf andDebugType:? andMode:?];
        }
      }
    }
  }

  else
  {
    [ASDDSPGraphUtilities stopRecordingBoxesInGraph:v6];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)enableDSPFileInjectionOnGraph:(id)a3 withFormat:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  if (![ASDDSPGraphUtilities startInjectingBoxes:v7 inGraph:v5 error:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = [v5 name];
    [(ASDDSPStream *)v8 enableDSPFileInjectionOnGraph:v6 withFormat:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)addClientDSP:(id)a3 withKey:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 uninitialize];
    [v7 unconfigure];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    dspQueue = self->_dspQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__ASDDSPStream_addClientDSP_withKey___block_invoke;
    v11[3] = &unk_278CE3CB0;
    v11[4] = self;
    v13 = &v15;
    v14 = a4;
    v12 = v7;
    dispatch_sync(dspQueue, v11);
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream addClientDSP:withKey:];
    }

    v9 = 0;
  }

  return v9 & 1;
}

void __37__ASDDSPStream_addClientDSP_withKey___block_invoke(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2;
  v6[3] = &unk_278CE3CB0;
  v2 = a1[5];
  v6[4] = a1[4];
  v3 = v2;
  v4 = a1[7];
  v8 = a1[6];
  v9 = v4;
  v7 = v3;
  v10[0] = &unk_285344558;
  v10[3] = v10;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);

  v5 = *MEMORY[0x277D85DE8];
}

void __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) graphStructureIsValid:*(a1 + 40) clientID:*(a1 + 56)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  [WeakRetained samplingRate];
  v5 = v4;

  v6 = [*(a1 + 32) physicalFormat];
  v7 = [*(a1 + 32) maximumFramesPerIOCycle];
  if (v5 <= 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2_cold_1();
    }
  }

  else if (v6)
  {
    v8 = v7;
    if (v7 <= 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2_cold_2();
      }
    }

    else
    {
      if (v2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 40) name];
          v10 = [*(a1 + 32) streamName];
          *buf = 138412546;
          *&buf[4] = v9;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "configuring graph %@ for stream %@", buf, 0x16u);
        }

        v11 = *(a1 + 40);
        [v6 sampleRate];
        [v11 setVariableSliceDuration:v8 forSampleRate:v12];
        [*(a1 + 40) configure];
        v13 = *(a1 + 40);
        if (v13)
        {
          [v13 graph];
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        ASDDSPGraphHelper::ASDDSPGraphHelper(buf, &v40, *(a1 + 56));
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        [*(a1 + 32) enableDSPCaptureByType:*(*(a1 + 32) + 344) withGraph:*(a1 + 40)];
        v20 = [*(*(a1 + 32) + 368) valueForKey:@"EnableDSPFileInjectionOnDSPGraph"];
        v21 = v20 == 0;

        if (!v21)
        {
          v22 = [*(*(a1 + 32) + 368) dictionaryForKey:@"EnableDSPFileInjectionOnDSPGraph"];
          v23 = [v22 valueForKey:@"DSPGraph"];
          v24 = [*(a1 + 40) name];
          v25 = [v24 isEqualToString:v23];

          if (v25)
          {
            v26 = [v22 valueForKey:@"InjectionFormat"];
            [*(a1 + 32) enableDSPFileInjectionOnGraph:*(a1 + 40) withFormat:v26];
          }
        }

        v27 = *(a1 + 32);
        if (*(v27 + 408) == 1)
        {
          [v27 _allocateStreamingResourcesForGraphHelper:buf];
          v27 = *(a1 + 32);
        }

        v28 = *(v27 + 320);
        v29 = *(a1 + 56);
        v30 = (v28 + 16);
        atomic_fetch_add((v28 + 16), 1u);
        v31 = atomic_load((v28 + 8));
        if (v31)
        {
          caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v31, v29);
          if (v32)
          {
            atomic_fetch_add(v32, 1u);
            v33 = *(v32 + 16);
            atomic_fetch_add((v28 + 16), 0xFFFFFFFF);
            atomic_fetch_add(v32, 0xFFFFFFFF);
            caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::remove(*(*(a1 + 32) + 320), *(a1 + 56));
            v34 = *(a1 + 32) + 296;
            v42[0] = v42;
            v42[1] = v42;
            v42[2] = 0;
            v35 = *(v34 + 8);
            if (v35 != v34)
            {
              do
              {
                v36 = v35[1];
                if (v35 + 2 == v33)
                {
                  while (v36 != v34 && v36 + 2 == v33)
                  {
                    v36 = v36[1];
                  }

                  std::list<ASDDSPGraphHelper>::splice(v42, v42, v34, v35, v36);
                  if (v36 != v34)
                  {
                    v36 = v36[1];
                  }
                }

                v35 = v36;
              }

              while (v36 != v34);
            }

            std::__list_imp<ASDDSPGraphHelper>::clear(v42);
LABEL_42:
            v38 = *(a1 + 32);
            operator new();
          }

          v30 = (v28 + 16);
        }

        atomic_fetch_add(v30, 0xFFFFFFFF);
        goto LABEL_42;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 40) name];
        v15 = [*(a1 + 40) numberOfInputs];
        v16 = [*(a1 + 40) numberOfOutputs];
        v17 = *(a1 + 32);
        v18 = *(v17 + 416);
        v19 = *(v17 + 424);
        *buf = 138413314;
        *&buf[4] = v14;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        v44 = 2048;
        v45 = v16;
        v46[0] = 2048;
        *&v46[1] = v18;
        v46[5] = 2048;
        v47 = v19;
        _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@ graph structure isn't valid. numGraphInputs = %ld, numGraphOutputs = %ld, numUnderlyingInputStreams = %ld, numUnderlyingOutputStreams = %ld", buf, 0x34u);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __37__ASDDSPStream_addClientDSP_withKey___block_invoke_2_cold_3();
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeClientDSPwithKey:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  dspQueue = self->_dspQueue;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDDSPStream_removeClientDSPwithKey___block_invoke;
  block[3] = &unk_278CE3CF8;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(dspQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __39__ASDDSPStream_removeClientDSPwithKey___block_invoke(void *a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 320);
  v3 = a1[6];
  v4 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v5 = atomic_load((v2 + 8));
  if (!v5)
  {
    goto LABEL_18;
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v5, v3);
  if (!v6)
  {
    v4 = (v2 + 16);
LABEL_18:
    atomic_fetch_add(v4, 0xFFFFFFFF);
    goto LABEL_19;
  }

  atomic_fetch_add(v6, 1u);
  v7 = *(v6 + 16);
  atomic_fetch_add((v2 + 16), 0xFFFFFFFF);
  atomic_fetch_add(v6, 0xFFFFFFFF);
  v8 = a1[4];
  if (*(v8 + 408) == 1)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__ASDDSPStream_removeClientDSPwithKey___block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = v7;
    v15 = 1;
    v16[0] = *v17;
    *(v16 + 3) = *&v17[3];
    v18[0] = &unk_285344558;
    v18[3] = v18;
    ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v14);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v18);
    v8 = a1[4];
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::remove(*(v8 + 320), a1[6]);
  v9 = a1[4] + 296;
  v18[0] = v18;
  v18[1] = v18;
  v18[2] = 0;
  v10 = *(v9 + 8);
  if (v10 != v9)
  {
    do
    {
      v11 = v10[1];
      if (v10 + 2 == v7)
      {
        while (v11 != v9 && v11 + 2 == v7)
        {
          v11 = v11[1];
        }

        std::list<ASDDSPGraphHelper>::splice(v18, v18, v9, v10, v11);
        if (v11 != v9)
        {
          v11 = v11[1];
        }
      }

      v10 = v11;
    }

    while (v11 != v9);
  }

  std::__list_imp<ASDDSPGraphHelper>::clear(v18);
LABEL_19:
  *(*(a1[5] + 8) + 24) = 1;
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)graphStructureIsValid:(id)a3 clientID:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == -1)
  {
    if ([(ASDStream *)self direction]== 1768845428)
    {
      v11 = [v7 numberOfInputs];
      v12 = [(NSArray *)self->_underlyingStreams count];
      v10 = [v7 numberOfOutputs] == 1 && v11 == v12;
    }

    else
    {
      if ([(ASDStream *)self direction]!= 1869968496)
      {
        v15 = 1;
        goto LABEL_16;
      }

      v13 = [v7 numberOfOutputs];
      underlyingOutputStreamCount = self->_underlyingOutputStreamCount;
      v10 = [v7 numberOfInputs] == self->_underlyingInputStreamCount + 1 && v13 == underlyingOutputStreamCount;
    }
  }

  else
  {
    v8 = [v6 numberOfInputs];
    v9 = [v7 numberOfOutputs];
    v10 = [v7 numberOfInputs] == 1 && v8 == v9;
  }

  v15 = v10;
LABEL_16:

  return v15;
}

- (void)suspendProcessing
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDDSPStream_suspendProcessing__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

- (void)_suspendProcessing
{
  ptr = self->_streamHelper.__ptr_;
  if (ptr)
  {
    ASDDSPStreamHelper::suspendProcessing(ptr);
  }
}

- (void)resumeProcessing
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASDDSPStream_resumeProcessing__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

- (void)_resumeProcessing
{
  ptr = self->_streamHelper.__ptr_;
  if (ptr)
  {
    ASDDSPStreamHelper::resumeProcessing(ptr);
  }
}

- (void)updateLatency
{
  dspQueue = self->_dspQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDDSPStream_updateLatency__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(dspQueue, block);
}

- (void)_updateMaximumFramesPerIOCycle
{
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  self->_maximumFramesPerIOCycle = [WeakRetained timestampPeriod];
}

- (int64_t)maximumFramesPerIOCycle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ASDDSPStream_maximumFramesPerIOCycle__block_invoke;
  v5[3] = &unk_278CE3D20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__ASDDSPStream_maximumFramesPerIOCycle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateMaximumFramesPerIOCycle];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 360);
  return result;
}

- (void)_updateLatency
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_underlyingStreams;
  v4 = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        if ([v8 latency] > v4)
        {
          v4 = [v8 latency];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  p_graphHelpers = &self->_graphHelpers;
  next = self->_graphHelpers.__end_.__next_;
  if (next != &self->_graphHelpers)
  {
    v17 = 0;
    v11 = 0;
    while (1)
    {
      customPropertyQueue = next->super.super._customPropertyQueue;
      if (!customPropertyQueue)
      {
        [ASDDSPStream _updateLatency];
      }

      stateDumpHandler = next->super.super._stateDumpHandler;
      v24 = next->super.super._customPropertyQueue;
      v25 = stateDumpHandler;
      if (stateDumpHandler)
      {
        atomic_fetch_add_explicit(&stateDumpHandler->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(customPropertyQueue + 762);
      v18 = *(customPropertyQueue + 761);
      DSPGraph::Graph::configure(customPropertyQueue);
      DSPGraph::Graph::initialize(v24);
      if (next->super.super._plugin == -1)
      {
        for (j = 0; j < DSPGraph::Graph::numOutputs(v24); ++j)
        {
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __30__ASDDSPStream__updateLatency__block_invoke;
          v21[3] = &__block_descriptor_48_e5_I8__0l;
          v21[4] = &v24;
          v22 = j;
          v23 = v11;
          v31 = &unk_285344480;
          v32 = 0;
          v33 = &v31;
          v11 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v21);
          std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v31);
        }

        p_graphHelpers = &self->_graphHelpers;
        if (v14)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __30__ASDDSPStream__updateLatency__block_invoke_2;
        v19[3] = &__block_descriptor_44_e5_I8__0l;
        v19[4] = &v24;
        v20 = v17;
        v31 = &unk_285344480;
        v32 = 0;
        v33 = &v31;
        v17 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v19);
        std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v31);
        if (v14)
        {
          goto LABEL_23;
        }
      }

      DSPGraph::Graph::uninitialize(v24);
LABEL_23:
      if ((v18 & 1) == 0)
      {
        DSPGraph::Graph::unconfigure(v24);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      next = next->super.super._customProperties;
      if (next == p_graphHelpers)
      {
        goto LABEL_30;
      }
    }
  }

  v11 = 0;
  v17 = 0;
LABEL_30:
  [(ASDStream *)self setLatency:v11 + v4 + v17, self];
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __30__ASDDSPStream__updateLatency__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = DSPGraph::Graph::out(**(a1 + 32));
  v4 = DSPGraph::Box::totalLatencyInSamples(v3);
  result = *(a1 + 44);
  if (v4 > result)
  {
    v6 = *(a1 + 40);
    v7 = DSPGraph::Graph::out(**(a1 + 32));

    return DSPGraph::Box::totalLatencyInSamples(v7);
  }

  return result;
}

uint64_t __30__ASDDSPStream__updateLatency__block_invoke_2(uint64_t a1)
{
  v2 = DSPGraph::Graph::out(**(a1 + 32));
  v3 = DSPGraph::Box::totalLatencyInSamples(v2);
  result = *(a1 + 40);
  if (v3 > result)
  {
    v5 = DSPGraph::Graph::out(**(a1 + 32));

    return DSPGraph::Box::totalLatencyInSamples(v5);
  }

  return result;
}

- (BOOL)addHardwareDSP:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  v6 = [WeakRetained isRunning];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream addHardwareDSP:];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(ASDDSPStream *)self addClientDSP:v4 withKey:-1];
  }

  return v7;
}

- (BOOL)removeHardwareDSP
{
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  v4 = [WeakRetained isRunning];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPStream removeHardwareDSP];
    }

    return 0;
  }

  else
  {

    return [(ASDDSPStream *)self removeClientDSPwithKey:-1];
  }
}

- (ASDDSPGraph)hardwareDSP
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dspQueue = self->_dspQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ASDDSPStream_hardwareDSP__block_invoke;
  v5[3] = &unk_278CE3C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dspQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __27__ASDDSPStream_hardwareDSP__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hardwareDSP];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_hardwareDSP
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__ASDDSPStream__hardwareDSP__block_invoke;
  v5[3] = &unk_278CE3D88;
  v5[4] = self;
  v6[0] = &unk_285344510;
  v6[1] = 0;
  v6[3] = v6;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

ASDDSPGraph *__28__ASDDSPStream__hardwareDSP__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 320);
  v2 = (v1 + 16);
  atomic_fetch_add((v1 + 16), 1u);
  v3 = atomic_load((v1 + 8));
  if (!v3)
  {
    v10 = 0;
LABEL_11:
    atomic_fetch_add(v2, 0xFFFFFFFF);
    goto LABEL_12;
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v3, -1);
  if (!v4)
  {
    v10 = 0;
    v2 = (v1 + 16);
    goto LABEL_11;
  }

  v5 = v4;
  atomic_fetch_add(v4, 1u);
  v6 = *(v4 + 16);
  atomic_fetch_add((v1 + 16), 0xFFFFFFFF);
  v7 = [ASDDSPGraph alloc];
  if (!*v6)
  {
    __assert_rtn("providedGraph", "ASDDSPGraphHelper.h", 45, "mProvidedGraph");
  }

  v8 = v6[1];
  v12 = *v6;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = [(ASDDSPGraph *)v7 initWithDSPGraph:&v12];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v10 = v9;
  atomic_fetch_add(v5, 0xFFFFFFFF);

LABEL_12:

  return v10;
}

- (id)clientDSPForClient:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  dspQueue = self->_dspQueue;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDDSPStream_clientDSPForClient___block_invoke;
  block[3] = &unk_278CE3DB0;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(dspQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __35__ASDDSPStream_clientDSPForClient___block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__ASDDSPStream_clientDSPForClient___block_invoke_2;
  v3[3] = &unk_278CE3DB0;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  v6[0] = &unk_285344558;
  v6[3] = v6;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v3);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void __35__ASDDSPStream_clientDSPForClient___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 320);
  v3 = *(a1 + 48);
  v4 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v5 = atomic_load((v2 + 8));
  if (v5)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v5, v3);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add(v6, 1u);
      v8 = *(v6 + 16);
      atomic_fetch_add(v4, 0xFFFFFFFF);
      v9 = [ASDDSPGraph alloc];
      if (!*v8)
      {
        __assert_rtn("providedGraph", "ASDDSPGraphHelper.h", 45, "mProvidedGraph");
      }

      v10 = v8[1];
      v14 = *v8;
      v15 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = [(ASDDSPGraph *)v9 initWithDSPGraph:&v14];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v4 = v7;
    }
  }

  atomic_fetch_add(v4, 0xFFFFFFFF);
}

- (id)readInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ASDDSPStream_readInputBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __30__ASDDSPStream_readInputBlock__block_invoke(uint64_t a1, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v6 = **(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    __30__ASDDSPStream_readInputBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::readInput(v6, a2, a3, a4, a5);
}

- (id)readIsolatedInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASDDSPStream_readIsolatedInputBlock__block_invoke;
  v4[3] = &unk_278CE3E00;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __38__ASDDSPStream_readIsolatedInputBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = **(*(*(a1 + 32) + 8) + 24);
  if (!v5)
  {
    __38__ASDDSPStream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::readIsolatedInput(v5, a2, a3, a4);
}

- (id)processOutputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__ASDDSPStream_processOutputBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __34__ASDDSPStream_processOutputBlock__block_invoke(uint64_t a1, int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v7 = **(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    __34__ASDDSPStream_processOutputBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::processOutput(v7, a2, a3, a4, a5, a6);
}

- (id)writeMixBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ASDDSPStream_writeMixBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __29__ASDDSPStream_writeMixBlock__block_invoke(uint64_t a1, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v6 = **(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    __29__ASDDSPStream_writeMixBlock__block_invoke_cold_1();
  }

  return ASDDSPStreamHelper::writeMix(v6, a2, a3, a4, a5);
}

- (void)dealloc
{
  mHUPSource = self->mHUPSource;
  if (mHUPSource)
  {
    dispatch_source_cancel(mHUPSource);
    v4 = self->mHUPSource;
    self->mHUPSource = 0;
  }

  v5.receiver = self;
  v5.super_class = ASDDSPStream;
  [(ASDObject *)&v5 dealloc];
}

- (void)setBypassMode:(BOOL)a3
{
  self->_bypassMode = a3;
  ptr = self->_streamHelper.__ptr_;
  if (ptr)
  {
    ASDDSPStreamHelper::setBypassGraphMode(ptr, a3);
  }
}

- (id).cxx_construct
{
  *(self + 36) = 0;
  *(self + 37) = self + 296;
  *(self + 38) = self + 296;
  *(self + 39) = 0;
  *(self + 40) = 0;
  return self;
}

- (void)enableBasicDSPCaptureOnGraph:(void *)a1 withLevel:(uint8_t *)buf andDebugType:andMode:.cold.2(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to enable DSP Capture on dsp graph: %@", buf, 0xCu);
}

- (void)enableDSPFileInjectionOnGraph:(uint8_t *)buf withFormat:.cold.1(void *a1, uint64_t a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to enable DSP file injection on dsp graph: %@, with format %@", buf, 0x16u);
}

@end
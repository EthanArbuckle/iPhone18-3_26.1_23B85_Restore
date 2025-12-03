@interface ASDSRCStream
- (ASDSRCStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (BOOL)_allocateStreamingResources;
- (BOOL)changePhysicalFormat:(id)format;
- (id)readInputBlock;
- (id)readIsolatedInputBlock;
- (id)writeMixBlock;
- (int64_t)maximumFramesPerIOCycle;
- (void)_deallocateStreamingResources;
- (void)_updateLatency;
- (void)_updateMaximumFramesPerIOCycle;
- (void)setUnderlyingStreams:(id)streams;
- (void)startStream;
- (void)stopStream;
- (void)updateLatency;
@end

@implementation ASDSRCStream

- (ASDSRCStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[ASDSRCStream initWithDirection:withPlugin:]", plugin}];
  [v5 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v6}];

  return 0;
}

- (void)setUnderlyingStreams:(id)streams
{
  streamsCopy = streams;
  srcQueue = self->_srcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ASDSRCStream_setUnderlyingStreams___block_invoke;
  v7[3] = &unk_278CE3BE8;
  v7[4] = self;
  v8 = streamsCopy;
  v6 = streamsCopy;
  dispatch_sync(srcQueue, v7);
}

- (void)startStream
{
  srcQueue = self->_srcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ASDSRCStream_startStream__block_invoke;
  block[3] = &unk_278CE3C60;
  block[4] = self;
  block[5] = a2;
  dispatch_sync(srcQueue, block);
  v4.receiver = self;
  v4.super_class = ASDSRCStream;
  [(ASDStream *)&v4 startStream];
}

uint64_t __27__ASDSRCStream_startStream__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = *(a1 + 32);
  if (!*(result + 328))
  {
    [result _updateMaximumFramesPerIOCycle];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(*(a1 + 32) + 336);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v6++) startStream];
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    if (([*(a1 + 32) _allocateStreamingResources] & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ASDSRCStream.mm" lineNumber:86 description:@"Couldn't allocate streaming resources"];
    }

    ++*(*(a1 + 32) + 328);
    result = *(a1 + 32);
  }

  *(result + 312) = 1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopStream
{
  v5.receiver = self;
  v5.super_class = ASDSRCStream;
  [(ASDStream *)&v5 stopStream];
  srcQueue = self->_srcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ASDSRCStream_stopStream__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(srcQueue, block);
}

uint64_t __26__ASDSRCStream_stopStream__block_invoke(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  *(*(result + 32) + 312) = 0;
  v1 = *(result + 32);
  v2 = *(v1 + 328);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    v5 = result;
    *(v1 + 328) = v4;
    v6 = *(result + 32);
    if (!*(v6 + 328))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = *(v6 + 336);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * v10++) stopStream];
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      result = [*(v5 + 32) _deallocateStreamingResources];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  physicalFormat = [(ASDStream *)self physicalFormat];

  if (physicalFormat != formatCopy)
  {
    owner = [(ASDObject *)self owner];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__ASDSRCStream_changePhysicalFormat___block_invoke;
    v8[3] = &unk_278CE3BE8;
    v8[4] = self;
    v9 = formatCopy;
    [owner requestConfigurationChange:v8];
  }

  return 1;
}

uint64_t __37__ASDSRCStream_changePhysicalFormat___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPhysicalFormat:*(a1 + 40)];
  v2 = [*(a1 + 32) owner];
  [*(a1 + 40) sampleRate];
  [v2 setSamplingRate:?];

  v3 = *(a1 + 32);

  return [v3 updateLatency];
}

- (BOOL)_allocateStreamingResources
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ASDSRCStream__allocateStreamingResources__block_invoke;
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

void __43__ASDSRCStream__allocateStreamingResources__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) physicalFormat];
  v2 = v1;
  if (v1)
  {
    [v1 audioStreamBasicDescription];
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
  }

  CAStreamBasicDescription::CAStreamBasicDescription(v34, &v33);

  v30 = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 336);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v3)
  {
    v4 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v20 = [v6 readInputBlock];
        v21 = [v6 writeMixBlock];
        v22 = [v6 readIsolatedInputBlock];
        v7 = v31;
        if (v31 >= v32)
        {
          v8 = std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__emplace_back_slow_path<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks&>(&v30, &v20);
        }

        else
        {
          *v7 = MEMORY[0x245CEBEA0](v20);
          v7[1] = MEMORY[0x245CEBEA0](v21);
          v7[2] = MEMORY[0x245CEBEA0](v22);
          v8 = (v7 + 3);
        }

        v31 = v8;
        v9 = [v6 physicalFormat];
        v10 = v9;
        if (v9)
        {
          [v9 audioStreamBasicDescription];
        }

        else
        {
          memset(&v33, 0, sizeof(v33));
        }

        v11 = v28;
        if (v28 >= v29)
        {
          v13 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - __p) >> 3) + 1;
          if (v13 > 0x666666666666666)
          {
            std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v29 - __p) >> 3) > v13)
          {
            v13 = 0x999999999999999ALL * ((v29 - __p) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v29 - __p) >> 3) >= 0x333333333333333)
          {
            v14 = 0x666666666666666;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(&__p, v14);
          }

          CAStreamBasicDescription::CAStreamBasicDescription((8 * ((v28 - __p) >> 3)), &v33);
          v12 = (v15 + 40);
          v16 = (v15 - (v28 - __p));
          memcpy(v16, __p, v28 - __p);
          v17 = __p;
          __p = v16;
          v28 = v12;
          v29 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          CAStreamBasicDescription::CAStreamBasicDescription(v28, &v33);
          v12 = (v11 + 40);
        }

        v28 = v12;
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) direction];
  operator new();
}

- (void)_deallocateStreamingResources
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ASDSRCStream__deallocateStreamingResources__block_invoke;
  v3[3] = &unk_278CE39D0;
  v3[4] = self;
  v4[0] = &unk_285344558;
  v4[3] = v4;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
}

ASDSRCStreamHelper *__45__ASDSRCStream__deallocateStreamingResources__block_invoke(uint64_t a1)
{
  ASDSRCStreamHelper::deallocateStreamingResources(*(*(a1 + 32) + 288));
  v2 = (*(a1 + 32) + 288);

  return std::unique_ptr<ASDSRCStreamHelper>::reset[abi:ne200100](v2, 0);
}

- (void)updateLatency
{
  srcQueue = self->_srcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDSRCStream_updateLatency__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(srcQueue, block);
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
  v5[2] = __39__ASDSRCStream_maximumFramesPerIOCycle__block_invoke;
  v5[3] = &unk_278CE3D20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__ASDSRCStream_maximumFramesPerIOCycle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateMaximumFramesPerIOCycle];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 320);
  return result;
}

- (void)_updateLatency
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_owningDevice);
  [WeakRetained samplingRate];
  v5 = v4;
  underlyingDevice = [WeakRetained underlyingDevice];
  [underlyingDevice samplingRate];
  v8 = v7;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_underlyingStreams;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    latency = 0;
    v12 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 latency] > latency)
        {
          latency = [v14 latency];
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
    v15 = latency;
  }

  else
  {
    v15 = 0.0;
  }

  underlyingDevice2 = [WeakRetained underlyingDevice];
  [underlyingDevice2 samplingRate];
  v18 = v17;
  [WeakRetained samplingRate];
  v20 = v18 != v19;

  if (v20)
  {
    underlyingDevice3 = [WeakRetained underlyingDevice];
    [underlyingDevice3 samplingRate];
    v23 = v22;
    [WeakRetained samplingRate];
    v25 = v24;

    v26 = vcvtmd_u64_f64(5.0 / v23 * v25 + 0.5);
  }

  else
  {
    v26 = 0;
  }

  [(ASDStream *)self setLatency:v26 + vcvtpd_u64_f64(v5 / v8 * v15), v28];

  v27 = *MEMORY[0x277D85DE8];
}

- (id)readInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ASDSRCStream_readInputBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __30__ASDSRCStream_readInputBlock__block_invoke(uint64_t a1, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v7 = **(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    __30__ASDSRCStream_readInputBlock__block_invoke_cold_1();
  }

  return ASDSRCStreamHelper::readInput(v7, a2, a3, a4, a5, a6);
}

- (id)writeMixBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ASDSRCStream_writeMixBlock__block_invoke;
  v4[3] = &unk_278CE3DD8;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __29__ASDSRCStream_writeMixBlock__block_invoke(uint64_t a1, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v6 = **(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    __29__ASDSRCStream_writeMixBlock__block_invoke_cold_1();
  }

  return ASDSRCStreamHelper::writeMix(v6, a2, a3, a4, a5);
}

- (id)readIsolatedInputBlock
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = &self->_streamHelper;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASDSRCStream_readIsolatedInputBlock__block_invoke;
  v4[3] = &unk_278CE3E00;
  v4[4] = v5;
  v2 = MEMORY[0x245CEBEA0](v4, a2);
  _Block_object_dispose(v5, 8);

  return v2;
}

uint64_t __38__ASDSRCStream_readIsolatedInputBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v5 = **(*(*(a1 + 32) + 8) + 24);
  if (!v5)
  {
    __38__ASDSRCStream_readIsolatedInputBlock__block_invoke_cold_1();
  }

  return ASDSRCStreamHelper::readIsolatedInput(v5, a2, a3, a4);
}

@end
@interface ASDClockDevice
- (ASDClockDevice)initWithDeviceUID:(id)a3 withPlugin:(id)a4;
- (ASDClockDevice)initWithPlugin:(id)a3;
- (ASDDeviceConfigurationChangeDelegate)configurationChangeDelegate;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3;
- (BOOL)supportsSamplingRate:(double)a3;
- (NSArray)samplingRateRanges;
- (NSArray)samplingRates;
- (double)samplingRate;
- (id)controls;
- (int)performStartIO;
- (int)performStopIO;
- (int)startIOForClient:(unsigned int)a3;
- (int)stopIOForClient:(unsigned int)a3;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
- (void)addControl:(id)a3;
- (void)dealloc;
- (void)ioThreadStateChange:(id)a3;
- (void)performConfigurationChange:(void *)a3;
- (void)performStartIO;
- (void)performStopIO;
- (void)removeControl:(id)a3;
- (void)requestConfigurationChange:(id)a3;
- (void)setBeginIOOperationBlock:(id)a3;
- (void)setClockAlgorithm:(unsigned int)a3;
- (void)setClockDomain:(unsigned int)a3;
- (void)setClockIsStable:(BOOL)a3;
- (void)setDeviceName:(id)a3;
- (void)setEndIOOperationBlock:(id)a3;
- (void)setGetZeroTimestampBlock:(id)a3;
- (void)setInputLatency:(unsigned int)a3;
- (void)setOutputLatency:(unsigned int)a3;
- (void)setSamplingRate:(double)a3;
- (void)setSamplingRateRanges:(id)a3;
- (void)setSamplingRates:(id)a3;
- (void)setTimestampPeriod:(unsigned int)a3;
- (void)setTransportType:(unsigned int)a3;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)updateTimestampPeriod;
@end

@implementation ASDClockDevice

- (ASDClockDevice)initWithPlugin:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDClockDevice initWithPlugin:]"];
  [v4 raise:v5 format:{@"Do not call %@", v6}];

  return 0;
}

- (ASDClockDevice)initWithDeviceUID:(id)a3 withPlugin:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = ASDClockDevice;
  v9 = [(ASDObject *)&v27 initWithPlugin:v8];
  v10 = v9;
  if (v9)
  {
    v9->_isAlive = 1;
    v9->_transportType = 0;
    v9->_clockAlgorithm = 1768518246;
    v9->_clockIsStable = 1;
    objc_storeStrong(&v9->_deviceUID, a3);
    objc_storeWeak(&v10->_configurationChangeDelegate, v8);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 bundleIdentifier];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controls = v10->_controls;
    v10->_controls = v13;

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.controls", v12, v10->_deviceUID];
    v16 = dispatch_queue_create([v15 UTF8String], 0);
    controlQueue = v10->_controlQueue;
    v10->_controlQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samplingRateRanges = v10->_samplingRateRanges;
    v10->_samplingRateRanges = v18;

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.sampleRate", v12, v10->_deviceUID];
    v21 = dispatch_queue_create([v20 UTF8String], 0);
    sampleRateQueue = v10->_sampleRateQueue;
    v10->_sampleRateQueue = v21;

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.device.%@.ioReference", v12, v10->_deviceUID];
    v24 = dispatch_queue_create([v23 UTF8String], 0);
    ioReferenceQueue = v10->_ioReferenceQueue;
    v10->_ioReferenceQueue = v24;

    [(ASDObject *)v10 setupDiagnosticStateDumpHandlerWithTreeWalk:1];
  }

  return v10;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  result = 1;
  if (a3->mSelector > 1819107690)
  {
    if (mSelector <= 1853059618)
    {
      if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          return result;
        }

        v8 = 1836411236;
      }

      else
      {
        if (mSelector == 1819107691)
        {
          return result;
        }

        v8 = 1819173229;
      }

      goto LABEL_28;
    }

    if (mSelector <= 1919512166)
    {
      if (mSelector == 1853059619)
      {
        return result;
      }

      v8 = 1853059700;
      goto LABEL_28;
    }

    if (mSelector != 1919512167 && mSelector != 1935763060)
    {
      v8 = 1953653102;
LABEL_28:
      if (mSelector != v8)
      {
        v10 = v3;
        v11 = v4;
        v9.receiver = self;
        v9.super_class = ASDClockDevice;
        return [(ASDObject *)&v9 hasProperty:?];
      }
    }
  }

  else
  {
    if (mSelector <= 1668575851)
    {
      if (mSelector > 1668050794)
      {
        if (mSelector == 1668050795)
        {
          return result;
        }

        v8 = 1668510818;
      }

      else
      {
        if (mSelector == 1634429294)
        {
          return result;
        }

        v8 = 1668049764;
      }

      goto LABEL_28;
    }

    if (mSelector <= 1735354733)
    {
      if (mSelector == 1668575852)
      {
        return result;
      }

      v8 = 1668639076;
      goto LABEL_28;
    }

    if (mSelector != 1735354734 && mSelector != 1751737454)
    {
      v8 = 1818850926;
      goto LABEL_28;
    }
  }

  return result;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  v6 = 8;
  if (a3->mSelector <= 1819107690)
  {
    if (mSelector <= 1668575851)
    {
      if (mSelector > 1668050794)
      {
        if (mSelector == 1668050795)
        {
          return 4;
        }

        v9 = 1668510818;
      }

      else
      {
        if (mSelector == 1634429294)
        {
          v24 = 1633969526;
          v20 = *&a3->mSelector;
          LODWORD(v21) = a3->mElement;
          LODWORD(v20) = 1870098020;
          v12 = [(ASDObject *)self owner];
          v6 = [v12 dataSizeForProperty:&v20 withQualifierSize:4 andQualifierData:&v24];

          return v6;
        }

        v9 = 1668049764;
      }

      goto LABEL_23;
    }

    if (mSelector > 1735354733)
    {
      if (mSelector == 1735354734 || mSelector == 1751737454)
      {
        return 4;
      }

      v9 = 1818850926;
LABEL_23:
      if (mSelector != v9)
      {
        goto LABEL_39;
      }

      return 4;
    }

    if (mSelector != 1668575852)
    {
      v10 = 1668639076;
LABEL_29:
      if (mSelector == v10)
      {
        return v6;
      }

      goto LABEL_39;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    controlQueue = self->_controlQueue;
    v23 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
    v19[3] = &unk_278CE4030;
    v19[5] = &v20;
    v19[6] = a3;
    v19[4] = self;
    v14 = v19;
    goto LABEL_42;
  }

  if (mSelector > 1853059699)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector == 1919512167 || mSelector == 1953653102)
      {
        return 4;
      }

      v9 = 1935763060;
      goto LABEL_23;
    }

    if (mSelector == 1853059700)
    {
      return v6;
    }

    if (mSelector != 1870098020)
    {
      goto LABEL_39;
    }

    if (a4)
    {
      if ((a4 & 3) != 0)
      {
        return 0;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      controlQueue = self->_controlQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      block[3] = &unk_278CE4058;
      v18 = a4 >> 2;
      block[6] = a5;
      block[7] = a3;
      block[4] = self;
      block[5] = &v20;
      v14 = block;
    }

    else
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      controlQueue = self->_controlQueue;
      v23 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
      v16[3] = &unk_278CE4030;
      v16[5] = &v20;
      v16[6] = a3;
      v16[4] = self;
      v14 = v16;
    }

LABEL_42:
    dispatch_sync(controlQueue, v14);
    v6 = 4 * *(v21 + 6);
    _Block_object_dispose(&v20, 8);
    return v6;
  }

  if (mSelector <= 1819569762)
  {
    if (mSelector == 1819107691)
    {
      return v6;
    }

    v10 = 1819173229;
    goto LABEL_29;
  }

  if (mSelector == 1819569763)
  {
    return 4;
  }

  if (mSelector != 1836411236)
  {
    if (mSelector == 1853059619)
    {
      v7 = [(ASDClockDevice *)self samplingRateRanges];
      v8 = [v7 count];

      return 16 * v8;
    }

LABEL_39:
    v15.receiver = self;
    v15.super_class = ASDClockDevice;
    return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  return v6;
}

void __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1[4] + 64);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1[6] + 4) == 1735159650 || [*(*(&v9 + 1) + 8 * v7) controlScope] == *(a1[6] + 4))
        {
          ++*(*(a1[5] + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 64);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 64))
        {
          v8 = 0;
          v9 = *(*(&v11 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8) && (*(*(a1 + 56) + 4) == 1735159650 || objc_msgSend(v9, "controlScope") == *(*(a1 + 56) + 4)))
            {
              ++*(*(*(a1 + 40) + 8) + 24);
            }

            ++v8;
          }

          while (v8 < *(a1 + 64));
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

void __73__ASDClockDevice_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1[4] + 64);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1[6] + 4) == 1735159650 || [*(*(&v9 + 1) + 8 * v7) controlScope] == *(a1[6] + 4))
        {
          ++*(*(a1[5] + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

void __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 64) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 64) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(*(a1 + 32) + 64);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (*(*(a1 + 56) + 4) == 1735159650 || [*(*(&v12 + 1) + 8 * v9) controlScope] == *(*(a1 + 56) + 4))
        {
          if (*(*(*(a1 + 40) + 8) + 24) == v4)
          {
            goto LABEL_15;
          }

          *(*(a1 + 64) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [v10 objectID];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

LABEL_15:

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

void __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 64);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 80))
        {
          v8 = 0;
          v9 = *(*(&v11 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8) && (*(*(a1 + 56) + 4) == 1735159650 || objc_msgSend(v9, "controlScope") == *(*(a1 + 56) + 4)))
            {
              if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 64))
              {
                break;
              }

              *(*(a1 + 72) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [v9 objectID];
            }

            ++v8;
          }

          while (v8 < *(a1 + 80));
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

void __89__ASDClockDevice_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 64);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (*(a1[6] + 4) == 1735159650 || [*(*(&v10 + 1) + 8 * v7) controlScope] == *(a1[6] + 4))
        {
          if (*(*(a1[5] + 8) + 24) == a1[7])
          {
            goto LABEL_12;
          }

          *(a1[8] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

LABEL_12:

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1853059700)
  {
    return 1;
  }

  if (a3->mSelector == 1819173229)
  {

    return [(ASDClockDevice *)self canChangeDeviceName];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDClockDevice;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (void)addControl:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    controlQueue = self->_controlQueue;
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __29__ASDClockDevice_addControl___block_invoke;
    v15 = &unk_278CE3E78;
    v16 = self;
    v7 = v4;
    v17 = v7;
    dispatch_sync(controlQueue, &block);
    [v7 setOwner:self];
    LODWORD(v11) = 0;
    v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
    [v8 changedProperty:&v10 forObject:self];

    v9 = [(ASDObject *)self propertyChangedDelegate];
    [v9 changedProperty:&v10 forObject:self];
  }
}

- (void)removeControl:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    controlQueue = self->_controlQueue;
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __32__ASDClockDevice_removeControl___block_invoke;
    v14 = &unk_278CE3E78;
    v15 = self;
    v16 = v4;
    dispatch_sync(controlQueue, &block);
    LODWORD(v10) = 0;
    v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
    [v7 changedProperty:&v9 forObject:self];

    v8 = [(ASDObject *)self propertyChangedDelegate];
    [v8 changedProperty:&v9 forObject:self];
  }
}

- (id)controls
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  controlQueue = self->_controlQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDClockDevice_controls__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(controlQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__ASDClockDevice_controls__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 64)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)requestConfigurationChange:(id)a3
{
  v4 = a3;
  v5 = [(ASDClockDevice *)self configurationChangeDelegate];
  [v5 requestConfigurationChangeForDevice:self withBlock:v4];
}

- (void)performConfigurationChange:(void *)a3
{
  (*(a3 + 2))(a3, a2);
}

- (int)startIOForClient:(unsigned int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ioReferenceQueue = self->_ioReferenceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__ASDClockDevice_startIOForClient___block_invoke;
  v6[3] = &unk_278CE40D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ioReferenceQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __35__ASDClockDevice_startIOForClient___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 104))
  {
    v2 = objc_autoreleasePoolPush();
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) performStartIO];
    objc_autoreleasePoolPop(v2);
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    ++*(*(a1 + 32) + 104);
  }
}

- (int)stopIOForClient:(unsigned int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ioReferenceQueue = self->_ioReferenceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ASDClockDevice_stopIOForClient___block_invoke;
  v6[3] = &unk_278CE40D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ioReferenceQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __34__ASDClockDevice_stopIOForClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 104) = v4;
    if (!*(*(a1 + 32) + 104))
    {
      v6 = objc_autoreleasePoolPush();
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) performStopIO];

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (int)performStartIO
{
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice performStartIO];
  }

  self->_isRunning = 1;
  LODWORD(v6) = 0;
  v3 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62676F696ELL];
  [v3 changedProperty:&v5 forObject:self];

  return 0;
}

- (int)performStopIO
{
  if (![(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice performStopIO];
  }

  self->_isRunning = 0;
  LODWORD(v6) = 0;
  v3 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62676F696ELL];
  [v3 changedProperty:&v5 forObject:self];

  return 0;
}

- (void)ioThreadStateChange:(id)a3
{
  v4 = a3;
  ioReferenceQueue = self->_ioReferenceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ASDClockDevice_ioThreadStateChange___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ioReferenceQueue, v7);
}

- (void)setSamplingRate:(double)a3
{
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDClockDevice_setSamplingRate___block_invoke;
  block[3] = &unk_278CE3F90;
  block[4] = self;
  *&block[5] = a3;
  dispatch_sync(sampleRateQueue, block);
  LODWORD(v7) = 0;
  v5 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737274];
  [v5 changedProperty:&v6 forObject:self];
}

void __34__ASDClockDevice_setSamplingRate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 80) = *(a1 + 40);
  [*(a1 + 32) _updateTimestampPeriod:?];
  [*(a1 + 32) _updateSafetyOffsets:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (double)samplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ASDClockDevice_samplingRate__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleRateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __30__ASDClockDevice_samplingRate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setSamplingRates:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v24 + 1) + 8 * v10) doubleValue];
        v11 = [ASDSampleRateRange rangeWithSingleRate:?];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  sampleRateQueue = self->_sampleRateQueue;
  block = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __35__ASDClockDevice_setSamplingRates___block_invoke;
  v21 = &unk_278CE3E78;
  v22 = self;
  v23 = v5;
  v13 = v5;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v17) = 0;
  v14 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v14 changedProperty:&v16 forObject:self];

  v15 = *MEMORY[0x277D85DE8];
}

void __35__ASDClockDevice_setSamplingRates___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)setSamplingRateRanges:(id)a3
{
  v4 = a3;
  sampleRateQueue = self->_sampleRateQueue;
  block = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40__ASDClockDevice_setSamplingRateRanges___block_invoke;
  v13 = &unk_278CE3E78;
  v14 = self;
  v15 = v4;
  v6 = v4;
  dispatch_sync(sampleRateQueue, &block);
  LODWORD(v9) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626E737223];
  [v7 changedProperty:&v8 forObject:self];
}

void __40__ASDClockDevice_setSamplingRateRanges___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = v3;

  objc_autoreleasePoolPop(v2);
}

- (NSArray)samplingRates
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDClockDevice_samplingRates__block_invoke;
  block[3] = &unk_278CE3E28;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(sampleRateQueue, block);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v22[5];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        [v8 minimum];
        v10 = v9;
        [v8 maximum];
        if (v10 == v11)
        {
          v12 = MEMORY[0x277CCABB0];
          [v8 minimum];
          v13 = [v12 numberWithDouble:?];
          [v3 addObject:v13];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __31__ASDClockDevice_samplingRates__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)samplingRateRanges
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ASDClockDevice_samplingRateRanges__block_invoke;
  block[3] = &unk_278CE3E28;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(sampleRateQueue, block);
  if (![v25[5] count])
  {
    v4 = [(ASDClockDevice *)self samplingRates];
    if ([v4 count])
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(ASDClockDevice *)self deviceName];
        v8 = [v4 count];
        *buf = 138412546;
        v32 = v7;
        v33 = 2048;
        v34 = v8;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: building samplingRateRanges from %lu rates", buf, 0x16u);
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v30 count:16];
      if (v11)
      {
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v19 + 1) + 8 * i) doubleValue];
            v14 = [ASDSampleRateRange rangeWithSingleRate:?];
            [v9 addObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v30 count:16];
        }

        while (v11);
      }

      v15 = v25[5];
      v25[5] = v9;
    }
  }

  v16 = v25[5];
  _Block_object_dispose(&v24, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __36__ASDClockDevice_samplingRateRanges__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDeviceName:(id)a3
{
  v4 = [a3 copy];
  deviceName = self->_deviceName;
  self->_deviceName = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626C6E616DLL];
  [v6 changedProperty:&v7 forObject:self];
}

- (void)setTimestampPeriod:(unsigned int)a3
{
  if (self->_timestampPeriod != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_timestampPeriod = a3;
    LODWORD(v8) = 0;
    v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6272696E67];
    [v6 changedProperty:&v7 forObject:self];
  }
}

- (void)updateTimestampPeriod
{
  sampleRateQueue = self->_sampleRateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDClockDevice_updateTimestampPeriod__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(sampleRateQueue, block);
}

void __39__ASDClockDevice_updateTimestampPeriod__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateTimestampPeriod:*(*(a1 + 32) + 80)];

  objc_autoreleasePoolPop(v2);
}

- (void)setInputLatency:(unsigned int)a3
{
  self->_inputLatency = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x696E70746C746E63];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setOutputLatency:(unsigned int)a3
{
  self->_outputLatency = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x6F7574706C746E63];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setClockDomain:(unsigned int)a3
{
  self->_clockDomain = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62636C6B64];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setClockAlgorithm:(unsigned int)a3
{
  self->_clockAlgorithm = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F62636C6F6BLL];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setClockIsStable:(BOOL)a3
{
  self->_clockIsStable = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6263737462];
  [v4 changedProperty:&v5 forObject:self];
}

- (BOOL)supportsSamplingRate:(double)a3
{
  v35 = *MEMORY[0x277D85DE8];
  [(ASDClockDevice *)self samplingRateRanges];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = MEMORY[0x277D86220];
    v10 = *v25;
    *&v7 = 138412802;
    v23 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(ASDClockDevice *)self deviceName];
          [v12 minimum];
          v15 = v14;
          [v12 maximum];
          *buf = v23;
          v29 = v13;
          v30 = 2048;
          v31 = v15;
          v32 = 2048;
          v33 = v16;
          _os_log_impl(&dword_2415D8000, v9, OS_LOG_TYPE_DEFAULT, "%@: supportsSamplingRate checking min(%f) max (%f)", buf, 0x20u);
        }

        [v12 minimum];
        if (v17 + -0.001 <= a3)
        {
          [v12 maximum];
          if (v18 + 0.001 >= a3)
          {
            v19 = 1;
            goto LABEL_14;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(ASDClockDevice *)self deviceName];
    *buf = 138412546;
    v29 = v20;
    v30 = 1024;
    LODWORD(v31) = v19;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: supportsSamplingRate returning (%d)", buf, 0x12u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)setTransportType:(unsigned int)a3
{
  self->_transportType = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F627472616ELL];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setGetZeroTimestampBlock:(id)a3
{
  v6 = a3;
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice setGetZeroTimestampBlock:];
  }

  v4 = [v6 copy];
  getZeroTimestampBlock = self->_getZeroTimestampBlock;
  self->_getZeroTimestampBlock = v4;

  self->_getZeroTimestampBlockUnretained = self->_getZeroTimestampBlock;
}

- (void)setBeginIOOperationBlock:(id)a3
{
  v6 = a3;
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice setBeginIOOperationBlock:];
  }

  v4 = [v6 copy];
  beginIOOperationBlock = self->_beginIOOperationBlock;
  self->_beginIOOperationBlock = v4;

  self->_beginIOOperationBlockUnretained = self->_beginIOOperationBlock;
}

- (void)setEndIOOperationBlock:(id)a3
{
  v6 = a3;
  if ([(ASDClockDevice *)self isRunning])
  {
    [ASDClockDevice setEndIOOperationBlock:];
  }

  v4 = [v6 copy];
  endIOOperationBlock = self->_endIOOperationBlock;
  self->_endIOOperationBlock = v4;

  self->_endIOOperationBlockUnretained = self->_endIOOperationBlock;
}

- (void)systemWillSleep
{
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__ASDClockDevice_systemWillSleep__block_invoke;
  v9[3] = &unk_278CE3E78;
  v10 = v3;
  v5 = v4;
  v11 = v5;
  v6 = v3;
  [(ASDClockDevice *)self requestConfigurationChange:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  wakeSemaphore = self->_wakeSemaphore;
  self->_wakeSemaphore = v5;
  v8 = v5;
}

intptr_t __33__ASDClockDevice_systemWillSleep__block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);

  return dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)systemHasPoweredOn
{
  wakeSemaphore = self->_wakeSemaphore;
  if (wakeSemaphore)
  {
    v5 = wakeSemaphore;
    dispatch_semaphore_signal(v5);
    v4 = self->_wakeSemaphore;
    self->_wakeSemaphore = 0;
  }
}

- (void)dealloc
{
  wakeSemaphore = self->_wakeSemaphore;
  if (wakeSemaphore)
  {
    dispatch_semaphore_signal(wakeSemaphore);
    v4 = self->_wakeSemaphore;
    self->_wakeSemaphore = 0;
  }

  v5.receiver = self;
  v5.super_class = ASDClockDevice;
  [(ASDObject *)&v5 dealloc];
}

- (ASDDeviceConfigurationChangeDelegate)configurationChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationChangeDelegate);

  return WeakRetained;
}

- (void)performStartIO
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)performStopIO
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setGetZeroTimestampBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setBeginIOOperationBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setEndIOOperationBlock:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
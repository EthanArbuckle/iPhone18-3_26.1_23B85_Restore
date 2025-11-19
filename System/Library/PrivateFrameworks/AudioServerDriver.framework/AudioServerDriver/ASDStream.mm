@interface ASDStream
- (ASDStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4;
- (ASDStreamFormat)physicalFormat;
- (BOOL)deviceChangedToSamplingRate:(double)a3;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3;
- (NSArray)physicalFormats;
- (id)controls;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
- (void)addControl:(id)a3;
- (void)addPhysicalFormat:(id)a3;
- (void)preferredChannelDescription:(AudioChannelDescription *)a3 forChannelIndex:(unsigned int)a4;
- (void)removeControl:(id)a3;
- (void)removePhysicalFormat:(id)a3;
- (void)setConvertInputBlock:(id)a3;
- (void)setConvertMixBlock:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setIsTapStream:(BOOL)a3;
- (void)setLatency:(unsigned int)a3;
- (void)setMixOutputBlock:(id)a3;
- (void)setPhysicalFormat:(id)a3;
- (void)setPhysicalFormats:(id)a3;
- (void)setProcessInputBlock:(id)a3;
- (void)setProcessMixBlock:(id)a3;
- (void)setProcessOutputBlock:(id)a3;
- (void)setReadInputBlock:(id)a3;
- (void)setReadIsolatedInputBlock:(id)a3;
- (void)setStreamName:(id)a3;
- (void)setWriteMixBlock:(id)a3;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDStream

- (ASDStreamFormat)physicalFormat
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  physicalFormatQueue = self->_physicalFormatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__ASDStream_physicalFormat__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(physicalFormatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)startStream
{
  v3 = [(ASDStream *)self readInputBlock];
  v4 = [v3 copy];
  readInputBlock = self->_readInputBlock;
  self->_readInputBlock = v4;

  self->_readInputBlockUnretained = self->_readInputBlock;
  v6 = [(ASDStream *)self convertInputBlock];
  v7 = [v6 copy];
  convertInputBlock = self->_convertInputBlock;
  self->_convertInputBlock = v7;

  self->_convertInputBlockUnretained = self->_convertInputBlock;
  v9 = [(ASDStream *)self processInputBlock];
  v10 = [v9 copy];
  processInputBlock = self->_processInputBlock;
  self->_processInputBlock = v10;

  self->_processInputBlockUnretained = self->_processInputBlock;
  v12 = [(ASDStream *)self processOutputBlock];
  v13 = [v12 copy];
  processOutputBlock = self->_processOutputBlock;
  self->_processOutputBlock = v13;

  self->_processOutputBlockUnretained = self->_processOutputBlock;
  v15 = [(ASDStream *)self mixOutputBlock];
  v16 = [v15 copy];
  mixOutputBlock = self->_mixOutputBlock;
  self->_mixOutputBlock = v16;

  self->_mixOutputBlockUnretained = self->_mixOutputBlock;
  v18 = [(ASDStream *)self processMixBlock];
  v19 = [v18 copy];
  processMixBlock = self->_processMixBlock;
  self->_processMixBlock = v19;

  self->_processMixBlockUnretained = self->_processMixBlock;
  v21 = [(ASDStream *)self convertMixBlock];
  v22 = [v21 copy];
  convertMixBlock = self->_convertMixBlock;
  self->_convertMixBlock = v22;

  self->_convertMixBlockUnretained = self->_convertMixBlock;
  v24 = [(ASDStream *)self writeMixBlock];
  v25 = [v24 copy];
  writeMixBlock = self->_writeMixBlock;
  self->_writeMixBlock = v25;

  self->_writeMixBlockUnretained = self->_writeMixBlock;
  v27 = [(ASDStream *)self readIsolatedInputBlock];
  v28 = [v27 copy];
  readIsolatedInputBlock = self->_readIsolatedInputBlock;
  self->_readIsolatedInputBlock = v28;

  self->_readIsolatedInputBlockUnretained = self->_readIsolatedInputBlock;
}

- (void)stopStream
{
  readInputBlock = self->_readInputBlock;
  self->_readInputBlock = 0;

  self->_readInputBlockUnretained = 0;
  convertInputBlock = self->_convertInputBlock;
  self->_convertInputBlock = 0;

  self->_convertInputBlockUnretained = 0;
  processInputBlock = self->_processInputBlock;
  self->_processInputBlock = 0;

  self->_processInputBlockUnretained = 0;
  processOutputBlock = self->_processOutputBlock;
  self->_processOutputBlock = 0;

  self->_processOutputBlockUnretained = 0;
  mixOutputBlock = self->_mixOutputBlock;
  self->_mixOutputBlock = 0;

  self->_mixOutputBlockUnretained = 0;
  processMixBlock = self->_processMixBlock;
  self->_processMixBlock = 0;

  self->_processMixBlockUnretained = 0;
  convertMixBlock = self->_convertMixBlock;
  self->_convertMixBlock = 0;

  self->_convertMixBlockUnretained = 0;
  writeMixBlock = self->_writeMixBlock;
  self->_writeMixBlock = 0;

  self->_writeMixBlockUnretained = 0;
  readIsolatedInputBlock = self->_readIsolatedInputBlock;
  self->_readIsolatedInputBlock = 0;

  self->_readIsolatedInputBlockUnretained = 0;
}

- (ASDStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4
{
  v26.receiver = self;
  v26.super_class = ASDStream;
  v5 = [(ASDObject *)&v26 initWithPlugin:a4];
  v6 = v5;
  if (v5)
  {
    v5->_direction = a3;
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 bundleIdentifier];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    physicalFormats = v6->_physicalFormats;
    v6->_physicalFormats = v9;

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@.device.%@.%p.physicalFormats", v8, v13, v6];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    physicalFormatQueue = v6->_physicalFormatQueue;
    v6->_physicalFormatQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controls = v6->_controls;
    v6->_controls = v17;

    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"%@.device.%@.%p.controls", v8, v21, v6];
    v23 = dispatch_queue_create([v22 UTF8String], 0);
    controlQueue = v6->_controlQueue;
    v6->_controlQueue = v23;

    v6->_physicalFormatSettable = 1;
    v6->_isTapStream = 0;
  }

  return v6;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1935762291)
  {
    if (mSelector > 1936092512)
    {
      v6 = mSelector == 1936092513 || mSelector == 1952805485;
      v7 = 1952542835;
    }

    else
    {
      v6 = mSelector == 1935762292 || mSelector == 1935894638;
      v7 = 1935960434;
    }

LABEL_17:
    if (!v6 && mSelector != v7)
    {
      goto LABEL_31;
    }

    if (a3->mScope == 1735159650)
    {
      return a3->mElement == 0;
    }

    return 0;
  }

  if (mSelector > 1819569762)
  {
    v6 = mSelector == 1819569763 || mSelector == 1885762592;
    v7 = 1885762657;
    goto LABEL_17;
  }

  if (mSelector == 1668575852 || mSelector == 1819173229)
  {
    return 1;
  }

LABEL_31:
  v12 = v3;
  v13 = v4;
  v11.receiver = self;
  v11.super_class = ASDStream;
  return [(ASDObject *)&v11 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  v6 = 4;
  if (a3->mSelector > 1935762291)
  {
    if (mSelector <= 1936092512)
    {
      if (mSelector != 1935762292 && mSelector != 1935894638 && mSelector != 1935960434)
      {
        goto LABEL_24;
      }

      return v6;
    }

    if (mSelector != 1936092513)
    {
      if (mSelector == 1952542835)
      {
        return v6;
      }

      v7 = 1952805485;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (mSelector > 1870098019)
  {
    if (mSelector == 1870098020)
    {
      goto LABEL_26;
    }

    if (mSelector == 1885762592)
    {
      return 40;
    }

    if (mSelector != 1885762657)
    {
      goto LABEL_24;
    }

LABEL_25:
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    physicalFormatQueue = self->_physicalFormatQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
    block[3] = &unk_278CE3E28;
    block[4] = self;
    block[5] = &v19;
    dispatch_sync(physicalFormatQueue, block);
    v6 = 56 * *(v20 + 6);
    goto LABEL_34;
  }

  if (mSelector == 1668575852)
  {
LABEL_26:
    if (a4)
    {
      if ((a4 & 3) != 0)
      {
        return 0;
      }

      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      controlQueue = self->_controlQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      v16[3] = &unk_278CE4208;
      v17 = a4 >> 2;
      v16[5] = &v19;
      v16[6] = a5;
      v16[4] = self;
      v12 = v16;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      controlQueue = self->_controlQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
      v15[3] = &unk_278CE3E28;
      v15[4] = self;
      v15[5] = &v19;
      v12 = v15;
    }

    dispatch_sync(controlQueue, v12);
    v6 = 4 * *(v20 + 6);
LABEL_34:
    _Block_object_dispose(&v19, 8);
    return v6;
  }

  if (mSelector == 1819173229)
  {
    return 8;
  }

  v7 = 1819569763;
LABEL_23:
  if (mSelector != v7)
  {
LABEL_24:
    v14.receiver = self;
    v14.super_class = ASDStream;
    return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  return v6;
}

uint64_t __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 88);
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

        if (*(a1 + 56))
        {
          v8 = 0;
          v9 = *(*(&v11 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8))
            {
              ++*(*(*(a1 + 40) + 8) + 24);
            }

            ++v8;
          }

          while (v8 < *(a1 + 56));
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

void __68__ASDStream_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) += [*(*(a1 + 32) + 88) count];

  objc_autoreleasePoolPop(v2);
}

void __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 48);
  if ([*(*(a1 + 32) + 72) count] <= v2 / 0x38uLL)
  {
    v3 = [*(*(a1 + 32) + 72) count];
  }

  else
  {
    v3 = **(a1 + 48) / 0x38uLL;
  }

  v4 = *(a1 + 56);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(*(a1 + 32) + 72);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(*(a1 + 40) + 8) + 24);
      if (v10 == v3)
      {
        break;
      }

      v11 = *(*(&v18 + 1) + 8 * v9);
      if (v11)
      {
        [v11 audioStreamRangedDescription];
      }

      else
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
      }

      v12 = v4 + 56 * v10;
      *(v12 + 48) = v17;
      *(v12 + 16) = v15;
      *(v12 + 32) = v16;
      *v12 = v14;
      ++*(*(*(a1 + 40) + 8) + 24);
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 88);
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

        if (*(a1 + 72))
        {
          v8 = 0;
          v9 = *(*(&v11 + 1) + 8 * v7);
          do
          {
            if ([v9 objectClass] == *(*(a1 + 48) + 4 * v8))
            {
              if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 56))
              {
                break;
              }

              *(*(a1 + 64) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [v9 objectID];
            }

            ++v8;
          }

          while (v8 < *(a1 + 72));
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

void __84__ASDStream_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 88) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 88) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 88);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (*(*(*(a1 + 40) + 8) + 24) == v4)
      {
        break;
      }

      *(*(a1 + 56) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [*(*(&v11 + 1) + 8 * v9) objectID];
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector == 1952542835 || mSelector == 1935762292)
  {
    return 1;
  }

  if (mSelector == 1885762592)
  {

    return [(ASDStream *)self isPhysicalFormatSettable];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = ASDStream;
    return [(ASDObject *)&v8 isPropertySettable:?];
  }
}

void __84__ASDStream_setProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 72);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) isCompatible:{*(*(&v9 + 1) + 8 * v7), v9}];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addPhysicalFormat:(id)a3
{
  v4 = a3;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __31__ASDStream_addPhysicalFormat___block_invoke;
  v14 = &unk_278CE3E78;
  v15 = self;
  v16 = v4;
  v6 = v4;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667461];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D61];
  [v8 changedProperty:&v9 forObject:self];
}

void __31__ASDStream_addPhysicalFormat___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:*(*(a1 + 32) + 72)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 72);
  v8 = [v6 copy];
  [v7 addObject:v8];
}

- (void)removePhysicalFormat:(id)a3
{
  v4 = a3;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __34__ASDStream_removePhysicalFormat___block_invoke;
  v14 = &unk_278CE3E78;
  v15 = self;
  v16 = v4;
  v6 = v4;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667461];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D61];
  [v8 changedProperty:&v9 forObject:self];
}

uint64_t __34__ASDStream_removePhysicalFormat___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:*(*(a1 + 32) + 72)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 72);

  return [v7 removeObject:v6];
}

- (void)setPhysicalFormats:(id)a3
{
  v4 = a3;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __32__ASDStream_setPhysicalFormats___block_invoke;
  v14 = &unk_278CE3E78;
  v15 = self;
  v16 = v4;
  v6 = v4;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667461];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D61];
  [v8 changedProperty:&v9 forObject:self];
}

uint64_t __32__ASDStream_setPhysicalFormats___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)physicalFormats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  physicalFormatQueue = self->_physicalFormatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__ASDStream_physicalFormats__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(physicalFormatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPhysicalFormat:(id)a3
{
  v4 = a3;
  physicalFormatQueue = self->_physicalFormatQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __31__ASDStream_setPhysicalFormat___block_invoke;
  v14 = &unk_278CE3E78;
  v15 = self;
  v16 = v4;
  v6 = v4;
  dispatch_sync(physicalFormatQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6270667420];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v10) = 0;
  v8 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273666D74];
  [v8 changedProperty:&v9 forObject:self];
}

uint64_t __31__ASDStream_setPhysicalFormat___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)addControl:(id)a3
{
  v4 = a3;
  controlQueue = self->_controlQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __24__ASDStream_addControl___block_invoke;
  v14 = &unk_278CE3E78;
  v15 = self;
  v16 = v4;
  v6 = v4;
  dispatch_sync(controlQueue, &block);
  [v6 setOwner:self];
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v9) = 1870098020;
  v8 = [(ASDObject *)self propertyChangedDelegate];
  [v8 changedProperty:&v9 forObject:self];
}

- (void)removeControl:(id)a3
{
  v4 = a3;
  controlQueue = self->_controlQueue;
  block = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __27__ASDStream_removeControl___block_invoke;
  v14 = &unk_278CE3E78;
  v15 = self;
  v16 = v4;
  v6 = v4;
  dispatch_sync(controlQueue, &block);
  LODWORD(v10) = 0;
  v7 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626374726CLL];
  [v7 changedProperty:&v9 forObject:self];

  LODWORD(v9) = 1870098020;
  v8 = [(ASDObject *)self propertyChangedDelegate];
  [v8 changedProperty:&v9 forObject:self];
}

- (id)controls
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  controlQueue = self->_controlQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__ASDStream_controls__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(controlQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setIsActive:(BOOL)a3
{
  self->_isActive = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273616374];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setStreamName:(id)a3
{
  v4 = [a3 copy];
  streamName = self->_streamName;
  self->_streamName = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626C6E616DLL];
  [v6 changedProperty:&v7 forObject:self];
}

- (void)setLatency:(unsigned int)a3
{
  self->_latency = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F626C746E63];
  [v4 changedProperty:&v5 forObject:self];
}

- (void)setIsTapStream:(BOOL)a3
{
  self->_isTapStream = a3;
  LODWORD(v6) = 0;
  v4 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6274617073];
  [v4 changedProperty:&v5 forObject:self];
}

- (BOOL)deviceChangedToSamplingRate:(double)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  physicalFormatQueue = self->_physicalFormatQueue;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ASDStream_deviceChangedToSamplingRate___block_invoke;
  block[3] = &unk_278CE4030;
  *&block[6] = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(physicalFormatQueue, block);
  if (v9[5])
  {
    [(ASDStream *)self setPhysicalFormat:?];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device changed to a sample rate that the stream does not have a physical format supporting it", v6, 2u);
  }

  _Block_object_dispose(&v8, 8);

  return 1;
}

void __41__ASDStream_deviceChangedToSamplingRate___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 64) copy];
  [v3 setSampleRate:*(a1 + 48)];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = *(*(a1 + 32) + 72);
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        if ([v3 isCompatible:v9])
        {
          v10 = [v9 copy];
          v11 = *(*(a1 + 40) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          [*(*(*(a1 + 40) + 8) + 40) setMaximumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setMinimumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setSampleRate:*(a1 + 48)];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = *(*(a1 + 32) + 72);
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * j);
          v19 = *(a1 + 48);
          [v18 minimumSampleRate];
          if (vabdd_f64(v19, v20) >= 0.001)
          {
            v21 = *(a1 + 48);
            [v18 maximumSampleRate];
            if (vabdd_f64(v21, v22) >= 0.001)
            {
              v23 = *(a1 + 48);
              [v18 minimumSampleRate];
              if (v23 <= v24)
              {
                continue;
              }

              v25 = *(a1 + 48);
              [v18 maximumSampleRate];
              if (v25 >= v26)
              {
                continue;
              }
            }
          }

          v27 = [v18 copy];
          v28 = *(*(a1 + 40) + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = v27;

          [*(*(*(a1 + 40) + 8) + 40) setMaximumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setMinimumSampleRate:*(a1 + 48)];
          [*(*(*(a1 + 40) + 8) + 40) setSampleRate:*(a1 + 48)];
          goto LABEL_25;
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
  }

  objc_autoreleasePoolPop(v2);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)preferredChannelDescription:(AudioChannelDescription *)a3 forChannelIndex:(unsigned int)a4
{
  a3->mChannelLabel = -1;
  *&a3->mCoordinates[1] = 0;
  *&a3->mChannelFlags = 0;
}

- (void)setReadInputBlock:(id)a3
{
  v4 = [a3 copy];
  readInputBlock = self->_readInputBlock;
  self->_readInputBlock = v4;

  self->_readInputBlockUnretained = self->_readInputBlock;
}

- (void)setConvertInputBlock:(id)a3
{
  v4 = [a3 copy];
  convertInputBlock = self->_convertInputBlock;
  self->_convertInputBlock = v4;

  self->_convertInputBlockUnretained = self->_convertInputBlock;
}

- (void)setProcessInputBlock:(id)a3
{
  v4 = [a3 copy];
  processInputBlock = self->_processInputBlock;
  self->_processInputBlock = v4;

  self->_processInputBlockUnretained = self->_processInputBlock;
}

- (void)setProcessOutputBlock:(id)a3
{
  v4 = [a3 copy];
  processOutputBlock = self->_processOutputBlock;
  self->_processOutputBlock = v4;

  self->_processOutputBlockUnretained = self->_processOutputBlock;
}

- (void)setMixOutputBlock:(id)a3
{
  v4 = [a3 copy];
  mixOutputBlock = self->_mixOutputBlock;
  self->_mixOutputBlock = v4;

  self->_mixOutputBlockUnretained = self->_mixOutputBlock;
}

- (void)setProcessMixBlock:(id)a3
{
  v4 = [a3 copy];
  processMixBlock = self->_processMixBlock;
  self->_processMixBlock = v4;

  self->_processMixBlockUnretained = self->_processMixBlock;
}

- (void)setConvertMixBlock:(id)a3
{
  v4 = [a3 copy];
  convertMixBlock = self->_convertMixBlock;
  self->_convertMixBlock = v4;

  self->_convertMixBlockUnretained = self->_convertMixBlock;
}

- (void)setWriteMixBlock:(id)a3
{
  v4 = [a3 copy];
  writeMixBlock = self->_writeMixBlock;
  self->_writeMixBlock = v4;

  self->_writeMixBlockUnretained = self->_writeMixBlock;
}

- (void)setReadIsolatedInputBlock:(id)a3
{
  v4 = [a3 copy];
  readIsolatedInputBlock = self->_readIsolatedInputBlock;
  self->_readIsolatedInputBlock = v4;

  self->_readIsolatedInputBlockUnretained = self->_readIsolatedInputBlock;
}

@end
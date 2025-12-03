@interface ASDPlugin
- (ASDPlugin)init;
- (BOOL)deregisterForSystemSleepNotifications;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)registerForSystemSleepNotifications;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (id)arrayForKey:(id)key;
- (id)audioDevices;
- (id)boxes;
- (id)clockDevices;
- (id)dictionaryForKey:(id)key;
- (unsigned)addRef;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)objectIDForBoxUID:(id)d;
- (unsigned)objectIDForClockDeviceUID:(id)d;
- (unsigned)objectIDForDeviceUID:(id)d;
- (unsigned)removeRef;
- (void)_handlePowerNotificationWithMessageType:(unsigned int)type andArgument:(int64_t)argument;
- (void)addAudioDevice:(id)device;
- (void)addAudioDevices:(id)devices;
- (void)addBox:(id)box;
- (void)addCAObject:(id)object;
- (void)addClockDevice:(id)device;
- (void)addClockDevices:(id)devices;
- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object;
- (void)dealloc;
- (void)doAddAudioDevice:(id)device;
- (void)doAddAudioDevices:(id)devices;
- (void)doAddBox:(id)box;
- (void)doAddClockDevice:(id)device;
- (void)doAddClockDevices:(id)devices;
- (void)doRemoveAudioDevice:(id)device;
- (void)doRemoveAudioDevices:(id)devices;
- (void)doRemoveBox:(id)box;
- (void)doRemoveClockDevice:(id)device;
- (void)doRemoveClockDevices:(id)devices;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDevices:(id)devices;
- (void)removeBox:(id)box;
- (void)removeCAObject:(id)object;
- (void)removeClockDevice:(id)device;
- (void)removeClockDevices:(id)devices;
- (void)removeStreamRealTimeOperations:(id)operations;
- (void)setArray:(id)array forKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
@end

@implementation ASDPlugin

- (void)systemHasPoweredOn
{
  v41 = *MEMORY[0x277D85DE8];
  audioDevices = [(ASDPlugin *)self audioDevices];
  clockDevices = [(ASDPlugin *)self clockDevices];
  boxes = [(ASDPlugin *)self boxes];
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = boxes;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        systemHasPoweredOn = [*(*(&v34 + 1) + 8 * i) systemHasPoweredOn];
        if ([systemHasPoweredOn count])
        {
          [v6 addObjectsFromArray:systemHasPoweredOn];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = audioDevices;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * j);
        if (([v6 containsObject:v18] & 1) == 0)
        {
          [v18 systemHasPoweredOn];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = clockDevices;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * k);
        if (([v6 containsObject:{v24, v26}] & 1) == 0)
        {
          [v24 systemHasPoweredOn];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)clockDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  clockDeviceQueue = self->_clockDeviceQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ASDPlugin_clockDevices__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(clockDeviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__ASDPlugin_clockDevices__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA60];
  v6 = [*(*(a1 + 32) + 112) allValues];
  v3 = [v2 arrayWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __18__ASDPlugin_boxes__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA60];
  v6 = [*(*(a1 + 32) + 80) allValues];
  v3 = [v2 arrayWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)boxes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  boxQueue = self->_boxQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__ASDPlugin_boxes__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(boxQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (ASDPlugin)init
{
  v30.receiver = self;
  v30.super_class = ASDPlugin;
  v2 = [(ASDObject *)&v30 init];
  v3 = v2;
  if (v2)
  {
    [(ASDObject *)v2 setObjectID:1];
    v3->_nextObjectID = 2;
    v3->_transportType = 0;
    [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [objc_claimAutoreleasedReturnValue() bundleIdentifier];
    bundleID = v3->_bundleID;
    v3->_bundleID = bundleIdentifier;
    v6 = bundleIdentifier;

    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    objects = v3->_objects;
    v3->_objects = v7;

    v3->_objectsLock._os_unfair_lock_opaque = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    boxes = v3->_boxes;
    v3->_boxes = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.boxes", v6];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    boxQueue = v3->_boxQueue;
    v3->_boxQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    audioDevices = v3->_audioDevices;
    v3->_audioDevices = v14;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.audioDevices", v6];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    audioDeviceQueue = v3->_audioDeviceQueue;
    v3->_audioDeviceQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clockDevices = v3->_clockDevices;
    v3->_clockDevices = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.clockDevices", v6];
    v22 = dispatch_queue_create([v21 UTF8String], 0);
    clockDeviceQueue = v3->_clockDeviceQueue;
    v3->_clockDeviceQueue = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_USER_INTERACTIVE, 0);

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.powerNotifications", v6];
    v27 = dispatch_queue_create([v26 UTF8String], v25);
    powerNotificationQueue = v3->_powerNotificationQueue;
    v3->_powerNotificationQueue = v27;

    ASD_CreateDriverInterface(v3);
  }

  return 0;
}

- (void)dealloc
{
  ASD_DestroyDriverInterface(self->_interfacePtr);
  v3.receiver = self;
  v3.super_class = ASDPlugin;
  [(ASDObject *)&v3 dealloc];
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  v6 = 1;
  if (property->mSelector > 1819107690)
  {
    if (mSelector - 1969841250 < 3 || mSelector == 1819107691)
    {
      return v6;
    }

    if (mSelector != 1920168547)
    {
LABEL_18:
      v12 = v3;
      v13 = v4;
      v11.receiver = self;
      v11.super_class = ASDPlugin;
      return [(ASDObject *)&v11 hasProperty:?];
    }

    return 0;
  }

  if (mSelector != 1651472419 && mSelector != 1668049699 && mSelector != 1684370979)
  {
    goto LABEL_18;
  }

  return v6;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  v8 = 8;
  if (property->mSelector <= 1870098019)
  {
    if (mSelector > 1684370978)
    {
      if (mSelector != 1684370979)
      {
        v11 = 1819107691;
        goto LABEL_16;
      }

      if (size)
      {
        if ((size & 3) != 0)
        {
          return 0;
        }

        v12 = size >> 2;
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 0;
        do
        {
          v13 = *data;
          data = data + 4;
          if (v13 == 1633969526)
          {
            audioDeviceQueue = self->_audioDeviceQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
            block[3] = &unk_278CE3E28;
            block[4] = self;
            block[5] = &v34;
            dispatch_sync(audioDeviceQueue, block);
          }

          --v12;
        }

        while (v12);
LABEL_32:
        v8 = 4 * *(v35 + 6);
        _Block_object_dispose(&v34, 8);
        return v8;
      }

      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      boxQueue = self->_audioDeviceQueue;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      v32[3] = &unk_278CE3E28;
      v32[4] = self;
      v32[5] = &v34;
      v10 = v32;
    }

    else if (mSelector == 1651472419)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      boxQueue = self->_boxQueue;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
      v31[3] = &unk_278CE3E28;
      v31[4] = self;
      v31[5] = &v34;
      v10 = v31;
    }

    else
    {
      if (mSelector != 1668049699)
      {
        goto LABEL_17;
      }

      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      boxQueue = self->_clockDeviceQueue;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_4;
      v30[3] = &unk_278CE3E28;
      v30[4] = self;
      v30[5] = &v34;
      v10 = v30;
    }

LABEL_31:
    dispatch_sync(boxQueue, v10);
    goto LABEL_32;
  }

  if (mSelector <= 1969841249)
  {
    if (mSelector != 1870098020)
    {
      v11 = 1920168547;
LABEL_16:
      if (mSelector == v11)
      {
        return v8;
      }

LABEL_17:
      v23.receiver = self;
      v23.super_class = ASDPlugin;
      return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
    }

    if (size)
    {
      if ((size & 3) != 0)
      {
        return 0;
      }

      v18 = size >> 2;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      while (1)
      {
        v20 = *data;
        data = data + 4;
        v19 = v20;
        if (v20 == 1633841016)
        {
          clockDeviceQueue = self->_boxQueue;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_6;
          v28[3] = &unk_278CE3E28;
          v28[4] = self;
          v28[5] = &v34;
          v22 = v28;
          goto LABEL_41;
        }

        if (v19 == 1633905771)
        {
          break;
        }

        if (v19 == 1633969526)
        {
          clockDeviceQueue = self->_audioDeviceQueue;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_5;
          v29[3] = &unk_278CE3E28;
          v29[4] = self;
          v29[5] = &v34;
          v22 = v29;
LABEL_41:
          dispatch_sync(clockDeviceQueue, v22);
        }

        if (!--v18)
        {
          goto LABEL_32;
        }
      }

      clockDeviceQueue = self->_clockDeviceQueue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_7;
      v27[3] = &unk_278CE3E28;
      v27[4] = self;
      v27[5] = &v34;
      v22 = v27;
      goto LABEL_41;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v15 = self->_audioDeviceQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_8;
    v26[3] = &unk_278CE3E28;
    v26[4] = self;
    v26[5] = &v34;
    dispatch_sync(v15, v26);
    v16 = self->_boxQueue;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_9;
    v25[3] = &unk_278CE3E28;
    v25[4] = self;
    v25[5] = &v34;
    dispatch_sync(v16, v25);
    boxQueue = self->_clockDeviceQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_10;
    v24[3] = &unk_278CE3E28;
    v24[4] = self;
    v24[5] = &v34;
    v10 = v24;
    goto LABEL_31;
  }

  if (mSelector != 1969841250 && mSelector != 1969841251 && mSelector != 1969841252)
  {
    goto LABEL_17;
  }

  return 4;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 112) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_5(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_6(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_7(uint64_t a1)
{
  result = [*(*(a1 + 32) + 112) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_9(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __68__ASDPlugin_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_10(uint64_t a1)
{
  result = [*(*(a1 + 32) + 112) count];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 96);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 96) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 96);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 96) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 80);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 80) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 112);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 112) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_5(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 96);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 96) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_6(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 80);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 80) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_7(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 112);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 112) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_8(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 96);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 96) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_9(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 80);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 80) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__ASDPlugin_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_10(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 112);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(a1[5] + 8) + 24) == a1[6])
      {
        break;
      }

      v8 = [*(a1[4] + 112) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
      *(a1[7] + 4 * (*(*(a1[5] + 8) + 24))++) = [v8 objectID];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (unsigned)addRef
{
  v2 = self->_pluginRefCount + 1;
  self->_pluginRefCount = v2;
  return v2;
}

- (unsigned)removeRef
{
  v2 = self->_pluginRefCount - 1;
  self->_pluginRefCount = v2;
  return v2;
}

- (void)addCAObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_objectsLock);
  for (i = self->_nextObjectID; ; self->_nextObjectID = i)
  {
    objects = self->_objects;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:i];
    v7 = [(NSMapTable *)objects objectForKey:v6];

    nextObjectID = self->_nextObjectID;
    if (!v7)
    {
      break;
    }

    i = (nextObjectID + 1);
  }

  [objectCopy setObjectID:nextObjectID];
  ++self->_nextObjectID;
  v9 = self->_objects;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objectCopy, "objectID")}];
  [(NSMapTable *)v9 setObject:objectCopy forKey:v10];

  [objectCopy setPlugin:self];
  os_unfair_lock_unlock(&self->_objectsLock);
}

- (void)removeCAObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_objectsLock);
  objects = self->_objects;
  v6 = MEMORY[0x277CCABB0];
  objectID = [objectCopy objectID];

  v8 = [v6 numberWithUnsignedInt:objectID];
  [(NSMapTable *)objects removeObjectForKey:v8];

  os_unfair_lock_unlock(&self->_objectsLock);
}

- (void)addAudioDevice:(id)device
{
  deviceCopy = device;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ASDPlugin_addAudioDevice___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doAddAudioDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  audioDeviceQueue = self->_audioDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ASDPlugin_doAddAudioDevice___block_invoke;
  block[3] = &unk_278CE3EA0;
  block[4] = self;
  v11 = deviceCopy;
  v12 = a2;
  v7 = deviceCopy;
  dispatch_sync(audioDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F6264657623;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __30__ASDPlugin_doAddAudioDevice___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 96);
  v4 = [*(a1 + 40) deviceUID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    __30__ASDPlugin_doAddAudioDevice___block_invoke_cold_1();
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 96);
  v8 = [v6 deviceUID];
  [v7 setObject:v6 forKey:v8];

  ASD_AddAudioDeviceRealTimeOperations([*(a1 + 32) driverRef], *(a1 + 40));
}

- (void)removeAudioDevice:(id)device
{
  deviceCopy = device;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ASDPlugin_removeAudioDevice___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doRemoveAudioDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  audioDeviceQueue = self->_audioDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDPlugin_doRemoveAudioDevice___block_invoke;
  block[3] = &unk_278CE3EA0;
  block[4] = self;
  v11 = deviceCopy;
  v12 = a2;
  v7 = deviceCopy;
  dispatch_sync(audioDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F6264657623;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __33__ASDPlugin_doRemoveAudioDevice___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 96);
  v4 = [*(a1 + 40) deviceUID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    __33__ASDPlugin_doRemoveAudioDevice___block_invoke_cold_1();
  }

  [*(a1 + 40) systemHasPoweredOn];
  ASD_RemoveAudioDeviceRealTimeOperations([*(a1 + 32) driverRef], *(a1 + 40));
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 96);
  v8 = [v6 deviceUID];
  [v7 removeObjectForKey:v8];

  objc_autoreleasePoolPop(v2);
}

- (void)addAudioDevices:(id)devices
{
  devicesCopy = devices;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ASDPlugin_addAudioDevices___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doAddAudioDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  audioDeviceQueue = self->_audioDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDPlugin_doAddAudioDevices___block_invoke;
  block[3] = &unk_278CE3EA0;
  v11 = devicesCopy;
  selfCopy = self;
  v13 = a2;
  v7 = devicesCopy;
  dispatch_sync(audioDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F6264657623;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __31__ASDPlugin_doAddAudioDevices___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  if ([v2 countByEnumeratingWithState:&v11 objects:v15 count:16])
  {
    *v12;
    *v12;
    v3 = **(&v11 + 1);
    v4 = *(*(a1 + 40) + 96);
    v5 = [**(&v11 + 1) deviceUID];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      __31__ASDPlugin_doAddAudioDevices___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 40) + 96);
    v8 = [v3 deviceUID];
    [v7 setObject:v3 forKey:v8];

    ASD_AddAudioDeviceRealTimeOperations([*(a1 + 40) driverRef], v3);
  }

  objc_autoreleasePoolPop(context);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAudioDevices:(id)devices
{
  devicesCopy = devices;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ASDPlugin_removeAudioDevices___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doRemoveAudioDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  audioDeviceQueue = self->_audioDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDPlugin_doRemoveAudioDevices___block_invoke;
  block[3] = &unk_278CE3EA0;
  v11 = devicesCopy;
  selfCopy = self;
  v13 = a2;
  v7 = devicesCopy;
  dispatch_sync(audioDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F6264657623;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __34__ASDPlugin_doRemoveAudioDevices___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 96);
        v9 = [v7 deviceUID];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (!v10)
        {
          __34__ASDPlugin_doRemoveAudioDevices___block_invoke_cold_1();
        }

        [v7 systemHasPoweredOn];
        ASD_RemoveAudioDeviceRealTimeOperations([*(a1 + 40) driverRef], v7);
        v11 = *(*(a1 + 40) + 96);
        v12 = [v7 deviceUID];
        [v11 removeObjectForKey:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)audioDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  audioDeviceQueue = self->_audioDeviceQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ASDPlugin_audioDevices__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(audioDeviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__ASDPlugin_audioDevices__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA60];
  v6 = [*(*(a1 + 32) + 96) allValues];
  v3 = [v2 arrayWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unsigned)objectIDForDeviceUID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  audioDeviceQueue = self->_audioDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDPlugin_objectIDForDeviceUID___block_invoke;
  block[3] = &unk_278CE3EC8;
  block[4] = self;
  v6 = dCopy;
  v14 = v6;
  v15 = &v16;
  dispatch_sync(audioDeviceQueue, block);
  v7 = *(v17 + 6);
  if (!v7)
  {
    clockDeviceQueue = self->_clockDeviceQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__ASDPlugin_objectIDForDeviceUID___block_invoke_2;
    v10[3] = &unk_278CE3EC8;
    v10[4] = self;
    v11 = v6;
    v12 = &v16;
    dispatch_sync(clockDeviceQueue, v10);

    v7 = *(v17 + 6);
  }

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __34__ASDPlugin_objectIDForDeviceUID___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 96) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v3 objectID];

  objc_autoreleasePoolPop(v2);
}

void __34__ASDPlugin_objectIDForDeviceUID___block_invoke_2(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 112) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v3 objectID];

  objc_autoreleasePoolPop(v2);
}

- (void)removeStreamRealTimeOperations:(id)operations
{
  operationsCopy = operations;
  ASD_RemoveStreamRealTimeOperations([(ASDPlugin *)self driverRef], operationsCopy);
}

- (void)addBox:(id)box
{
  boxCopy = box;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20__ASDPlugin_addBox___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = boxCopy;
  v6 = boxCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doAddBox:(id)box
{
  boxCopy = box;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  boxQueue = self->_boxQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__ASDPlugin_doAddBox___block_invoke;
  block[3] = &unk_278CE3E78;
  block[4] = self;
  v10 = boxCopy;
  v6 = boxCopy;
  dispatch_sync(boxQueue, block);
  [v6 setOwner:self];
  v8 = 0;
  v7 = 0x676C6F62626F7823;
  [(ASDPlugin *)self changedProperty:&v7 forObject:self];
  LODWORD(v7) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v7 forObject:self];
}

void __22__ASDPlugin_doAddBox___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 80);
  v6 = [v4 boxUID];
  [v5 setObject:v4 forKey:v6];

  objc_autoreleasePoolPop(v2);
}

- (void)removeBox:(id)box
{
  boxCopy = box;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__ASDPlugin_removeBox___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = boxCopy;
  v6 = boxCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doRemoveBox:(id)box
{
  boxCopy = box;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  boxQueue = self->_boxQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ASDPlugin_doRemoveBox___block_invoke;
  block[3] = &unk_278CE3E78;
  block[4] = self;
  v10 = boxCopy;
  v6 = boxCopy;
  dispatch_sync(boxQueue, block);
  v8 = 0;
  v7 = 0x676C6F62626F7823;
  [(ASDPlugin *)self changedProperty:&v7 forObject:self];
  LODWORD(v7) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v7 forObject:self];
}

void __25__ASDPlugin_doRemoveBox___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 80);
  v5 = [v3 boxUID];
  [v4 removeObjectForKey:v5];

  objc_autoreleasePoolPop(v2);
}

- (unsigned)objectIDForBoxUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  boxQueue = self->_boxQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDPlugin_objectIDForBoxUID___block_invoke;
  block[3] = &unk_278CE3EC8;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(boxQueue, block);
  LODWORD(boxQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return boxQueue;
}

void __31__ASDPlugin_objectIDForBoxUID___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 80) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v3 objectID];

  objc_autoreleasePoolPop(v2);
}

- (void)addClockDevice:(id)device
{
  deviceCopy = device;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ASDPlugin_addClockDevice___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doAddClockDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  clockDeviceQueue = self->_clockDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ASDPlugin_doAddClockDevice___block_invoke;
  block[3] = &unk_278CE3EA0;
  block[4] = self;
  v11 = deviceCopy;
  v12 = a2;
  v7 = deviceCopy;
  dispatch_sync(clockDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F62636C6B23;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __30__ASDPlugin_doAddClockDevice___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 112);
  v4 = [*(a1 + 40) deviceUID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    __30__ASDPlugin_doAddClockDevice___block_invoke_cold_1();
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 112);
  v8 = [v6 deviceUID];
  [v7 setObject:v6 forKey:v8];

  ASD_AddClockDeviceRealTimeOperations([*(a1 + 32) driverRef], *(a1 + 40));
}

- (void)addClockDevices:(id)devices
{
  devicesCopy = devices;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ASDPlugin_addClockDevices___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doAddClockDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  clockDeviceQueue = self->_clockDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDPlugin_doAddClockDevices___block_invoke;
  block[3] = &unk_278CE3EA0;
  v11 = devicesCopy;
  selfCopy = self;
  v13 = a2;
  v7 = devicesCopy;
  dispatch_sync(clockDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F62636C6B23;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __31__ASDPlugin_doAddClockDevices___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  if ([v2 countByEnumeratingWithState:&v11 objects:v15 count:16])
  {
    *v12;
    *v12;
    v3 = **(&v11 + 1);
    v4 = *(*(a1 + 40) + 112);
    v5 = [**(&v11 + 1) deviceUID];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      __31__ASDPlugin_doAddClockDevices___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 40) + 112);
    v8 = [v3 deviceUID];
    [v7 setObject:v3 forKey:v8];

    ASD_AddClockDeviceRealTimeOperations([*(a1 + 40) driverRef], v3);
  }

  objc_autoreleasePoolPop(context);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeClockDevice:(id)device
{
  deviceCopy = device;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ASDPlugin_removeClockDevice___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doRemoveClockDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  clockDeviceQueue = self->_clockDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDPlugin_doRemoveClockDevice___block_invoke;
  block[3] = &unk_278CE3EA0;
  block[4] = self;
  v11 = deviceCopy;
  v12 = a2;
  v7 = deviceCopy;
  dispatch_sync(clockDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F62636C6B23;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __33__ASDPlugin_doRemoveClockDevice___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 112);
  v4 = [*(a1 + 40) deviceUID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    __33__ASDPlugin_doRemoveClockDevice___block_invoke_cold_1();
  }

  [*(a1 + 40) systemHasPoweredOn];
  ASD_RemoveClockDeviceRealTimeOperations([*(a1 + 32) driverRef], *(a1 + 40));
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 112);
  v8 = [v6 deviceUID];
  [v7 removeObjectForKey:v8];

  objc_autoreleasePoolPop(v2);
}

- (void)removeClockDevices:(id)devices
{
  devicesCopy = devices;
  powerNotificationQueue = self->_powerNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ASDPlugin_removeClockDevices___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_sync(powerNotificationQueue, v7);
}

- (void)doRemoveClockDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_powerNotificationQueue);
  clockDeviceQueue = self->_clockDeviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDPlugin_doRemoveClockDevices___block_invoke;
  block[3] = &unk_278CE3EA0;
  v11 = devicesCopy;
  selfCopy = self;
  v13 = a2;
  v7 = devicesCopy;
  dispatch_sync(clockDeviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F62636C6B23;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
  LODWORD(v8) = 1870098020;
  [(ASDPlugin *)self changedProperty:&v8 forObject:self];
}

void __34__ASDPlugin_doRemoveClockDevices___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 112);
        v9 = [v7 deviceUID];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (!v10)
        {
          __34__ASDPlugin_doRemoveClockDevices___block_invoke_cold_1();
        }

        [v7 systemHasPoweredOn];
        ASD_RemoveClockDeviceRealTimeOperations([*(a1 + 40) driverRef], v7);
        v11 = *(*(a1 + 40) + 112);
        v12 = [v7 deviceUID];
        [v11 removeObjectForKey:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x277D85DE8];
}

- (unsigned)objectIDForClockDeviceUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  clockDeviceQueue = self->_clockDeviceQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASDPlugin_objectIDForClockDeviceUID___block_invoke;
  block[3] = &unk_278CE3EC8;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(clockDeviceQueue, block);
  LODWORD(clockDeviceQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return clockDeviceQueue;
}

void __39__ASDPlugin_objectIDForClockDeviceUID___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 112) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v3 objectID];

  objc_autoreleasePoolPop(v2);
}

- (void)changedProperty:(const AudioObjectPropertyAddress *)property forObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    if (property)
    {
      pluginHost = self->_pluginHost;
      if (pluginHost)
      {
        mSelector = property->mSelector;
        if (property->mSelector > 1885762591)
        {
          if (mSelector == 1885762592)
          {
            goto LABEL_11;
          }

          v9 = 1936092532;
        }

        else
        {
          if (mSelector == 1667523955)
          {
            goto LABEL_11;
          }

          v9 = 1853059700;
        }

        if (mSelector != v9)
        {
          v10 = objectCopy;
          (pluginHost->PropertiesChanged)(pluginHost, [objectCopy objectID], 1, property);
          objectCopy = v10;
        }
      }
    }
  }

LABEL_11:
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  deviceCopy = device;
  v7 = MEMORY[0x245CEBEA0](block);
  pluginHost = self->_pluginHost;
  if (pluginHost)
  {
    v9 = (pluginHost->RequestDeviceConfigurationChange)(pluginHost, [deviceCopy objectID], 0, v7);
    if (!v9)
    {
      v12 = 1;
      goto LABEL_9;
    }

    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDPlugin requestConfigurationChangeForDevice:v10 withBlock:?];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ASDPlugin requestConfigurationChangeForDevice:withBlock:];
  }

  v11 = dispatch_get_global_queue(21, 0);
  dispatch_async(v11, v7);

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)dictionaryForKey:(id)key
{
  pluginHost = self->_pluginHost;
  if (pluginHost)
  {
    var8[0] = 0;
    (pluginHost->CopyFromStorage)(pluginHost, key, var8);
    pluginHost = var8[0];
    v3 = var8[2];
  }

  return pluginHost;
}

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  pluginHost = self->_pluginHost;
  if (pluginHost)
  {
    if (dictionaryCopy)
    {
      (pluginHost->WriteToStorage)(pluginHost, keyCopy);
    }

    else
    {
      (pluginHost->DeleteFromStorage)(pluginHost, keyCopy);
    }
  }
}

- (id)arrayForKey:(id)key
{
  pluginHost = self->_pluginHost;
  if (pluginHost)
  {
    var8[0] = 0;
    (pluginHost->CopyFromStorage)(pluginHost, key, var8);
    pluginHost = var8[0];
    v3 = var8[2];
  }

  return pluginHost;
}

- (void)setArray:(id)array forKey:(id)key
{
  arrayCopy = array;
  keyCopy = key;
  pluginHost = self->_pluginHost;
  if (pluginHost)
  {
    if (arrayCopy)
    {
      (pluginHost->WriteToStorage)(pluginHost, keyCopy);
    }

    else
    {
      (pluginHost->DeleteFromStorage)(pluginHost, keyCopy);
    }
  }
}

- (BOOL)registerForSystemSleepNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(ASDPlugin *)self bundleID];
    v7 = 136315138;
    uTF8String = [bundleID UTF8String];
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s registered for system sleep notifications", &v7, 0xCu);
  }

  LODWORD(powerNotificationPort) = IORegisterForSystemPower(self, &self->_powerNotificationPort, IOPowerNotifierCallback, &self->_powerNotifier);
  self->_powerConnection = powerNotificationPort;
  if (powerNotificationPort)
  {
    if (self->_powerNotifier)
    {
      powerNotificationPort = self->_powerNotificationPort;
      if (powerNotificationPort)
      {
        IONotificationPortSetDispatchQueue(powerNotificationPort, self->_powerNotificationQueue);
        LOBYTE(powerNotificationPort) = 1;
      }
    }

    else
    {
      LOBYTE(powerNotificationPort) = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return powerNotificationPort;
}

- (void)_handlePowerNotificationWithMessageType:(unsigned int)type andArgument:(int64_t)argument
{
  v20 = *MEMORY[0x277D85DE8];
  HIDWORD(v7) = type + 536870288;
  LODWORD(v7) = type + 536870288;
  v6 = v7 >> 4;
  if (v6 <= 1)
  {
    if (!v6)
    {
      IOAllowPowerChange(self->_powerConnection, argument);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        bundleID = [(ASDPlugin *)self bundleID];
        v16 = 136315138;
        uTF8String = [bundleID UTF8String];
        v9 = MEMORY[0x277D86220];
        v10 = "%s received power notification kIOMessageCanSystemSleep";
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (v6 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        bundleID2 = [(ASDPlugin *)self bundleID];
        v16 = 136315138;
        uTF8String = [bundleID2 UTF8String];
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s received power notification kIOMessageSystemWillSleep", &v16, 0xCu);
      }

      [(ASDPlugin *)self systemWillSleep];
      IOAllowPowerChange(self->_powerConnection, argument);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v6 != 2)
  {
    if (v6 == 9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        bundleID3 = [(ASDPlugin *)self bundleID];
        v16 = 136315138;
        uTF8String = [bundleID3 UTF8String];
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s received power notification kIOMessageSystemHasPoweredOn", &v16, 0xCu);
      }

      [(ASDPlugin *)self systemHasPoweredOn];
      goto LABEL_23;
    }

    if (v6 == 11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        bundleID = [(ASDPlugin *)self bundleID];
        v16 = 136315138;
        uTF8String = [bundleID UTF8String];
        v9 = MEMORY[0x277D86220];
        v10 = "%s received power notification kIOMessageSystemWillPowerOn";
LABEL_19:
        v14 = 12;
LABEL_22:
        _os_log_impl(&dword_2415D8000, v9, OS_LOG_TYPE_DEFAULT, v10, &v16, v14);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [(ASDPlugin *)self bundleID];
      v16 = 136315394;
      uTF8String = [bundleID UTF8String];
      v18 = 1024;
      typeCopy = type;
      v9 = MEMORY[0x277D86220];
      v10 = "%s received unhandled power notification 0x%x";
      v14 = 18;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(ASDPlugin *)self bundleID];
    v16 = 136315138;
    uTF8String = [bundleID UTF8String];
    v9 = MEMORY[0x277D86220];
    v10 = "%s received power notification kIOMessageSystemWillNotSleep";
    goto LABEL_19;
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)systemWillSleep
{
  v41 = *MEMORY[0x277D85DE8];
  audioDevices = [(ASDPlugin *)self audioDevices];
  clockDevices = [(ASDPlugin *)self clockDevices];
  boxes = [(ASDPlugin *)self boxes];
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = boxes;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        systemWillSleep = [*(*(&v34 + 1) + 8 * i) systemWillSleep];
        if ([systemWillSleep count])
        {
          [v6 addObjectsFromArray:systemWillSleep];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = audioDevices;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * j);
        if (([v6 containsObject:v18] & 1) == 0)
        {
          [v18 systemWillSleep];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = clockDevices;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * k);
        if (([v6 containsObject:{v24, v26}] & 1) == 0)
        {
          [v24 systemWillSleep];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)deregisterForSystemSleepNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(ASDPlugin *)self bundleID];
    v8 = 136315138;
    uTF8String = [bundleID UTF8String];
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s deregistered for system sleep notifications", &v8, 0xCu);
  }

  if (self->_powerNotifier)
  {
    IODeregisterForSystemPower(&self->_powerNotifier);
    self->_powerNotifier = 0;
  }

  powerConnection = self->_powerConnection;
  if (powerConnection)
  {
    IOServiceClose(powerConnection);
    self->_powerConnection = 0;
  }

  powerNotificationPort = self->_powerNotificationPort;
  if (powerNotificationPort)
  {
    IONotificationPortDestroy(powerNotificationPort);
    self->_powerNotificationPort = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

void __30__ASDPlugin_doAddAudioDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __33__ASDPlugin_doRemoveAudioDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __31__ASDPlugin_doAddAudioDevices___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __34__ASDPlugin_doRemoveAudioDevices___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __30__ASDPlugin_doAddClockDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __31__ASDPlugin_doAddClockDevices___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __33__ASDPlugin_doRemoveClockDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __34__ASDPlugin_doRemoveClockDevices___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)requestConfigurationChangeForDevice:(int)a1 withBlock:.cold.1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "request config change error %u", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end
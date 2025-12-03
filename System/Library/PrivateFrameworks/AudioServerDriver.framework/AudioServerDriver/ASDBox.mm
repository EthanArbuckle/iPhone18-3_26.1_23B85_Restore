@interface ASDBox
- (ASDBox)initWithBoxUID:(id)d withPlugin:(id)plugin;
- (ASDBox)initWithPlugin:(id)plugin;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (NSArray)audioDevices;
- (id)systemHasPoweredOn;
- (id)systemWillSleep;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)addAudioDevice:(id)device;
- (void)addClockDevice:(id)device;
- (void)addDevicesToPlugin;
- (void)doAddAudioDevice:(id)device;
- (void)doAddClockDevice:(id)device;
- (void)doRemoveAllAudioDevices;
- (void)doRemoveAllClockDevices;
- (void)doRemoveAudioDevice:(id)device;
- (void)doRemoveClockDevice:(id)device;
- (void)removeAllAudioDevices;
- (void)removeAllClockDevices;
- (void)removeAudioDevice:(id)device;
- (void)removeClockDevice:(id)device;
- (void)removeDevicesFromPlugin;
- (void)setAcquired:(BOOL)acquired;
- (void)setAcquisitionFailure:(int)failure;
- (void)setBoxName:(id)name;
- (void)setIdentify:(BOOL)identify;
@end

@implementation ASDBox

- (ASDBox)initWithPlugin:(id)plugin
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDBox initWithPlugin:]"];
  [v4 raise:v5 format:{@"Do not call %@", v6}];

  return 0;
}

- (ASDBox)initWithBoxUID:(id)d withPlugin:(id)plugin
{
  dCopy = d;
  v23.receiver = self;
  v23.super_class = ASDBox;
  v8 = [(ASDObject *)&v23 initWithPlugin:plugin];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_boxUID, d);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    audioDevices = v9->_audioDevices;
    v9->_audioDevices = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clockDevices = v9->_clockDevices;
    v9->_clockDevices = v12;

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v14 bundleIdentifier];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.box.%@.devices", bundleIdentifier, v9->_boxUID];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    deviceQueue = v9->_deviceQueue;
    v9->_deviceQueue = v17;

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.box.%@.acquire", bundleIdentifier, v9->_boxUID];
    v20 = dispatch_queue_create([v19 UTF8String], 0);
    acquireQueue = v9->_acquireQueue;
    v9->_acquireQueue = v20;

    [(ASDObject *)v9 setupDiagnosticStateDumpHandlerWithTreeWalk:0];
  }

  return v9;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  result = 1;
  if (property->mSelector <= 1652060013)
  {
    if (mSelector > 1651013224)
    {
      if (mSelector > 1651861859)
      {
        if (mSelector == 1651861860)
        {
          return result;
        }

        v8 = 1652060006;
      }

      else
      {
        if (mSelector == 1651013225)
        {
          return result;
        }

        v8 = 1651536495;
      }
    }

    else if (mSelector > 1651007860)
    {
      if (mSelector == 1651007861)
      {
        return result;
      }

      v8 = 1651010921;
    }

    else
    {
      if (mSelector == 1650682915)
      {
        return result;
      }

      v8 = 1650751011;
    }

    goto LABEL_27;
  }

  if (mSelector <= 1819111267)
  {
    if (mSelector <= 1768187245)
    {
      if (mSelector == 1652060014)
      {
        return result;
      }

      v8 = 1719105134;
      goto LABEL_27;
    }

    if (mSelector != 1768187246)
    {
      v8 = 1819107691;
LABEL_27:
      if (mSelector != v8)
      {
        v10 = v3;
        v11 = v4;
        v9.receiver = self;
        v9.super_class = ASDBox;
        return [(ASDObject *)&v9 hasProperty:?];
      }

      return result;
    }

    return [(ASDBox *)self supportsIdentify];
  }

  else
  {
    if (mSelector <= 1836411235)
    {
      if (mSelector == 1819111268)
      {
        return result;
      }

      v8 = 1819173229;
      goto LABEL_27;
    }

    if (mSelector != 1836411236 && mSelector != 1936618861)
    {
      v8 = 1953653102;
      goto LABEL_27;
    }
  }

  return result;
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  v6 = 8;
  if (property->mSelector > 1719105133)
  {
    if (mSelector <= 1819173228)
    {
      if (mSelector <= 1819107690)
      {
        if (mSelector == 1719105134)
        {
          return v6;
        }

        v7 = 1768187246;
        goto LABEL_27;
      }

      if (mSelector == 1819107691)
      {
        return v6;
      }

      v10 = 1819111268;
    }

    else
    {
      if (mSelector > 1870098019)
      {
        if (mSelector == 1870098020)
        {
          v16 = 0;
          v17 = &v16;
          v18 = 0x2020000000;
          v19 = 0;
          deviceQueue = self->_deviceQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__ASDBox_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
          block[3] = &unk_278CE3E28;
          block[4] = self;
          block[5] = &v16;
          v9 = block;
          goto LABEL_35;
        }

        if (mSelector == 1936618861)
        {
          return v6;
        }

        v7 = 1953653102;
LABEL_27:
        if (mSelector == v7)
        {
          return 4;
        }

LABEL_32:
        v12.receiver = self;
        v12.super_class = ASDBox;
        return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
      }

      if (mSelector == 1819173229)
      {
        return v6;
      }

      v10 = 1836411236;
    }

    if (mSelector == v10)
    {
      return v6;
    }

    goto LABEL_32;
  }

  if (mSelector <= 1651013224)
  {
    if (mSelector <= 1651007860)
    {
      if (mSelector == 1650682915)
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        deviceQueue = self->_deviceQueue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __65__ASDBox_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3;
        v13[3] = &unk_278CE3E28;
        v13[4] = self;
        v13[5] = &v16;
        v9 = v13;
      }

      else
      {
        if (mSelector != 1650751011)
        {
          goto LABEL_32;
        }

        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        deviceQueue = self->_deviceQueue;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __65__ASDBox_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
        v14[3] = &unk_278CE3E28;
        v14[4] = self;
        v14[5] = &v16;
        v9 = v14;
      }

LABEL_35:
      dispatch_sync(deviceQueue, v9);
      v6 = 4 * *(v17 + 6);
      _Block_object_dispose(&v16, 8);
      return v6;
    }

    if (mSelector == 1651007861)
    {
      return 4;
    }

    v7 = 1651010921;
    goto LABEL_27;
  }

  if (mSelector <= 1651861859)
  {
    if (mSelector == 1651013225)
    {
      return 4;
    }

    v7 = 1651536495;
    goto LABEL_27;
  }

  if (mSelector != 1651861860)
  {
    if (mSelector != 1652060006)
    {
      v7 = 1652060014;
      goto LABEL_27;
    }

    return 4;
  }

  return v6;
}

uint64_t __65__ASDBox_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) count];
  result = [*(*(a1 + 32) + 72) count];
  *(*(*(a1 + 40) + 8) + 24) = result + v2;
  return result;
}

uint64_t __65__ASDBox_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __65__ASDBox_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_3(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (property && dataSize && andData)
  {
    mSelector = property->mSelector;
    if (property->mSelector > 1719105133)
    {
      if (mSelector <= 1819173228)
      {
        if (mSelector > 1819107690)
        {
          if (mSelector == 1819107691)
          {
            if (*dataSize < 8)
            {
              goto LABEL_72;
            }

            manufacturerName = [(ASDBox *)selfCopy manufacturerName];
          }

          else
          {
            if (mSelector != 1819111268)
            {
              goto LABEL_74;
            }

            if (*dataSize < 8)
            {
              goto LABEL_72;
            }

            manufacturerName = [(ASDBox *)selfCopy modelName];
          }

          goto LABEL_67;
        }

        if (mSelector == 1719105134)
        {
          if (*dataSize < 8)
          {
            goto LABEL_72;
          }

          manufacturerName = [(ASDBox *)selfCopy firmwareVersion];
          goto LABEL_67;
        }

        if (mSelector != 1768187246)
        {
          goto LABEL_74;
        }

        if (*dataSize < 4)
        {
          goto LABEL_72;
        }

        LODWORD(self) = [(ASDBox *)selfCopy supportsIdentify];
        if (!self)
        {
          return self;
        }

        identify = [(ASDBox *)selfCopy identify];
LABEL_63:
        *andData = identify;
        goto LABEL_64;
      }

      if (mSelector <= 1870098019)
      {
        if (mSelector == 1819173229)
        {
          if (*dataSize < 8)
          {
            goto LABEL_72;
          }

          manufacturerName = [(ASDBox *)selfCopy boxName];
        }

        else
        {
          if (mSelector != 1836411236)
          {
            goto LABEL_74;
          }

          if (*dataSize < 8)
          {
            goto LABEL_72;
          }

          manufacturerName = [(ASDBox *)selfCopy modelUID];
        }

        goto LABEL_67;
      }

      if (mSelector != 1870098020)
      {
        if (mSelector == 1936618861)
        {
          if (*dataSize < 8)
          {
            goto LABEL_72;
          }

          manufacturerName = [(ASDBox *)selfCopy serialNumber];
          goto LABEL_67;
        }

        if (mSelector != 1953653102)
        {
          goto LABEL_74;
        }

        if (*dataSize < 4)
        {
          goto LABEL_72;
        }

        identify = [(ASDBox *)selfCopy transportType];
        goto LABEL_63;
      }

      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      deviceQueue = selfCopy->_deviceQueue;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3;
      v24[3] = &unk_278CE3E50;
      v24[4] = selfCopy;
      v24[5] = &v25;
      v24[6] = dataSize;
      v24[7] = andData;
      v17 = v24;
    }

    else
    {
      if (mSelector > 1651013224)
      {
        if (mSelector > 1651861859)
        {
          if (mSelector != 1651861860)
          {
            if (mSelector == 1652060006)
            {
              if (*dataSize >= 4)
              {
                acquireQueue = [(ASDBox *)selfCopy acquireQueue];
                v13 = acquireQueue;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2;
                block[3] = &unk_278CE3F90;
                block[4] = selfCopy;
                block[5] = andData;
                v14 = block;
                goto LABEL_54;
              }

LABEL_72:
              LOBYTE(self) = 0;
              return self;
            }

            if (mSelector == 1652060014)
            {
              if (*dataSize >= 4)
              {
                acquireQueue = [(ASDBox *)selfCopy acquireQueue];
                v13 = acquireQueue;
                v30[0] = MEMORY[0x277D85DD0];
                v30[1] = 3221225472;
                v30[2] = __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
                v30[3] = &unk_278CE3F90;
                v30[4] = selfCopy;
                v30[5] = andData;
                v14 = v30;
LABEL_54:
                dispatch_sync(acquireQueue, v14);

LABEL_64:
                v19 = 4;
LABEL_70:
                *dataSize = v19;
                goto LABEL_71;
              }

              goto LABEL_72;
            }

LABEL_74:
            v21.receiver = selfCopy;
            v21.super_class = ASDBox;
            LOBYTE(self) = [ASDObject getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
            return self;
          }

          if (*dataSize < 8)
          {
            goto LABEL_72;
          }

          manufacturerName = [(ASDBox *)selfCopy boxUID];
LABEL_67:
          *andData = manufacturerName;

          if (*andData)
          {
            CFRetain(*andData);
          }

          v19 = 8;
          goto LABEL_70;
        }

        if (mSelector == 1651013225)
        {
          if (*dataSize < 4)
          {
            goto LABEL_72;
          }

          identify = [(ASDBox *)selfCopy hasVideo];
        }

        else
        {
          if (mSelector != 1651536495)
          {
            goto LABEL_74;
          }

          if (*dataSize < 4)
          {
            goto LABEL_72;
          }

          identify = [(ASDBox *)selfCopy requiresAuthentication];
        }

        goto LABEL_63;
      }

      if (mSelector > 1651007860)
      {
        if (mSelector == 1651007861)
        {
          if (*dataSize < 4)
          {
            goto LABEL_72;
          }

          identify = [(ASDBox *)selfCopy hasAudio];
        }

        else
        {
          if (mSelector != 1651010921)
          {
            goto LABEL_74;
          }

          if (*dataSize < 4)
          {
            goto LABEL_72;
          }

          identify = [(ASDBox *)selfCopy hasMIDI];
        }

        goto LABEL_63;
      }

      if (mSelector == 1650682915)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        deviceQueue = selfCopy->_deviceQueue;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_5;
        v22[3] = &unk_278CE3E50;
        v22[4] = selfCopy;
        v22[5] = &v25;
        v22[6] = dataSize;
        v22[7] = andData;
        v17 = v22;
      }

      else
      {
        if (mSelector != 1650751011)
        {
          goto LABEL_74;
        }

        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        deviceQueue = selfCopy->_deviceQueue;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4;
        v23[3] = &unk_278CE3E50;
        v23[4] = selfCopy;
        v23[5] = &v25;
        v23[6] = dataSize;
        v23[7] = andData;
        v17 = v23;
      }
    }

    dispatch_sync(deviceQueue, v17);
    *dataSize = 4 * *(v26 + 6);
    _Block_object_dispose(&v25, 8);
LABEL_71:
    LOBYTE(self) = 1;
  }

  return self;
}

uint64_t __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) acquired];
  **(a1 + 40) = result;
  return result;
}

uint64_t __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) acquisitionFailure];
  **(a1 + 40) = result;
  return result;
}

void __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  v4 = [*(*(a1 + 32) + 64) count];
  if ([*(*(a1 + 32) + 72) count] + v4 <= v3 >> 2)
  {
    v6 = [*(*(a1 + 32) + 64) count];
    v5 = [*(*(a1 + 32) + 72) count] + v6;
  }

  else
  {
    v5 = **(a1 + 48) >> 2;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(*(a1 + 32) + 64);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (*(*(*(a1 + 40) + 8) + 24) == v5)
      {
        break;
      }

      *(*(a1 + 56) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [*(*(&v22 + 1) + 8 * v11) objectID];
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(*(a1 + 32) + 72);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
LABEL_14:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(v12);
      }

      if (*(*(*(a1 + 40) + 8) + 24) == v5)
      {
        break;
      }

      *(*(a1 + 56) + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [*(*(&v18 + 1) + 8 * v16) objectID];
      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v14)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x277D85DE8];
}

void __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
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

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 64);
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

void __81__ASDBox_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 72) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 72) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 72);
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

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (settable)
  {
    mSelector = settable->mSelector;
    if (settable->mSelector == 1652060014)
    {

      LOBYTE(canChangeBoxName) = [(ASDBox *)self isAcquirable];
    }

    else if (mSelector == 1768187246)
    {

      LOBYTE(canChangeBoxName) = [(ASDBox *)self canSetIdentify];
    }

    else if (mSelector == 1819173229)
    {
      canChangeBoxName = [(ASDBox *)self canChangeBoxName];
      if (canChangeBoxName)
      {

        LOBYTE(canChangeBoxName) = [(ASDBox *)self acquired];
      }
    }

    else
    {
      v7.receiver = self;
      v7.super_class = ASDBox;
      LOBYTE(canChangeBoxName) = [(ASDObject *)&v7 isPropertySettable:?];
    }
  }

  else
  {
    LOBYTE(canChangeBoxName) = 0;
  }

  return canChangeBoxName;
}

- (void)addAudioDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__ASDBox_addAudioDevice___block_invoke;
  v8[3] = &unk_278CE3E78;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v8);
}

- (void)doAddAudioDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  dispatch_assert_queue_V2(powerNotificationQueue);

  deviceQueue = self->_deviceQueue;
  block = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __27__ASDBox_doAddAudioDevice___block_invoke;
  v16 = &unk_278CE3E78;
  selfCopy = self;
  v18 = deviceCopy;
  v8 = deviceCopy;
  dispatch_sync(deviceQueue, &block);
  [v8 setOwner:self];
  LODWORD(v12) = 0;
  v9 = [(ASDObject *)self plugin:0x676C6F6262647623];
  [v9 changedProperty:&v11 forObject:self];

  LODWORD(v11) = 1870098020;
  plugin2 = [(ASDObject *)self plugin];
  [plugin2 changedProperty:&v11 forObject:self];
}

- (void)addClockDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__ASDBox_addClockDevice___block_invoke;
  v8[3] = &unk_278CE3E78;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v8);
}

- (void)doAddClockDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  dispatch_assert_queue_V2(powerNotificationQueue);

  deviceQueue = self->_deviceQueue;
  block = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __27__ASDBox_doAddClockDevice___block_invoke;
  v16 = &unk_278CE3E78;
  selfCopy = self;
  v18 = deviceCopy;
  v8 = deviceCopy;
  dispatch_sync(deviceQueue, &block);
  [v8 setOwner:self];
  LODWORD(v12) = 0;
  v9 = [(ASDObject *)self plugin:0x676C6F6262636C23];
  [v9 changedProperty:&v11 forObject:self];

  LODWORD(v11) = 1870098020;
  plugin2 = [(ASDObject *)self plugin];
  [plugin2 changedProperty:&v11 forObject:self];
}

- (void)removeAudioDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__ASDBox_removeAudioDevice___block_invoke;
  v8[3] = &unk_278CE3E78;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v8);
}

- (void)doRemoveAudioDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  dispatch_assert_queue_V2(powerNotificationQueue);

  deviceQueue = self->_deviceQueue;
  block = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __30__ASDBox_doRemoveAudioDevice___block_invoke;
  v16 = &unk_278CE3E78;
  selfCopy = self;
  v18 = deviceCopy;
  v8 = deviceCopy;
  dispatch_sync(deviceQueue, &block);
  LODWORD(v12) = 0;
  v9 = [(ASDObject *)self plugin:0x676C6F6262647623];
  [v9 changedProperty:&v11 forObject:self];

  LODWORD(v11) = 1870098020;
  plugin2 = [(ASDObject *)self plugin];
  [plugin2 changedProperty:&v11 forObject:self];
}

- (void)removeClockDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__ASDBox_removeClockDevice___block_invoke;
  v8[3] = &unk_278CE3E78;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_sync(powerNotificationQueue, v8);
}

- (void)doRemoveClockDevice:(id)device
{
  deviceCopy = device;
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  dispatch_assert_queue_V2(powerNotificationQueue);

  deviceQueue = self->_deviceQueue;
  block = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __30__ASDBox_doRemoveClockDevice___block_invoke;
  v16 = &unk_278CE3E78;
  selfCopy = self;
  v18 = deviceCopy;
  v8 = deviceCopy;
  dispatch_sync(deviceQueue, &block);
  LODWORD(v12) = 0;
  v9 = [(ASDObject *)self plugin:0x676C6F6262636C23];
  [v9 changedProperty:&v11 forObject:self];

  LODWORD(v11) = 1870098020;
  plugin2 = [(ASDObject *)self plugin];
  [plugin2 changedProperty:&v11 forObject:self];
}

- (void)removeAllAudioDevices
{
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDBox_removeAllAudioDevices__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(powerNotificationQueue, block);
}

- (void)doRemoveAllAudioDevices
{
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  dispatch_assert_queue_V2(powerNotificationQueue);

  deviceQueue = self->_deviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDBox_doRemoveAllAudioDevices__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(deviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F6262647623;
  plugin2 = [(ASDObject *)self plugin];
  [plugin2 changedProperty:&v8 forObject:self];

  LODWORD(v8) = 1870098020;
  plugin3 = [(ASDObject *)self plugin];
  [plugin3 changedProperty:&v8 forObject:self];
}

- (void)removeAllClockDevices
{
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ASDBox_removeAllClockDevices__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(powerNotificationQueue, block);
}

- (void)doRemoveAllClockDevices
{
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  dispatch_assert_queue_V2(powerNotificationQueue);

  deviceQueue = self->_deviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDBox_doRemoveAllClockDevices__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(deviceQueue, block);
  v9 = 0;
  v8 = 0x676C6F6262636C23;
  plugin2 = [(ASDObject *)self plugin];
  [plugin2 changedProperty:&v8 forObject:self];

  LODWORD(v8) = 1870098020;
  plugin3 = [(ASDObject *)self plugin];
  [plugin3 changedProperty:&v8 forObject:self];
}

- (void)addDevicesToPlugin
{
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ASDBox_addDevicesToPlugin__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(powerNotificationQueue, block);
}

void __28__ASDBox_addDevicesToPlugin__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ASDBox_addDevicesToPlugin__block_invoke_2;
  block[3] = &unk_278CE3FB8;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __28__ASDBox_addDevicesToPlugin__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];
  [v2 doAddAudioDevices:*(*(a1 + 32) + 64)];

  v3 = [*(a1 + 32) plugin];
  [v3 doAddClockDevices:*(*(a1 + 32) + 72)];
}

- (void)removeDevicesFromPlugin
{
  plugin = [(ASDObject *)self plugin];
  powerNotificationQueue = [plugin powerNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDBox_removeDevicesFromPlugin__block_invoke;
  block[3] = &unk_278CE3FB8;
  block[4] = self;
  dispatch_sync(powerNotificationQueue, block);
}

void __33__ASDBox_removeDevicesFromPlugin__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASDBox_removeDevicesFromPlugin__block_invoke_2;
  block[3] = &unk_278CE3FB8;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __33__ASDBox_removeDevicesFromPlugin__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) plugin];
  [v2 doRemoveAudioDevices:*(*(a1 + 32) + 64)];

  v3 = [*(a1 + 32) plugin];
  [v3 doRemoveClockDevices:*(*(a1 + 32) + 72)];
}

- (void)setBoxName:(id)name
{
  v4 = [name copy];
  boxName = self->_boxName;
  self->_boxName = v4;

  LODWORD(v8) = 0;
  v6 = [(ASDObject *)self plugin:0x676C6F626C6E616DLL];
  [v6 changedProperty:&v7 forObject:self];
}

- (void)setAcquired:(BOOL)acquired
{
  if (self->_acquired != acquired)
  {
    v9 = v3;
    v10 = v4;
    self->_acquired = acquired;
    LODWORD(v8) = 0;
    v6 = [(ASDObject *)self plugin:0x676C6F6262786F6ELL];
    [v6 changedProperty:&v7 forObject:self];
  }
}

- (void)setAcquisitionFailure:(int)failure
{
  if (self->_acquisitionFailure != failure)
  {
    v9 = v3;
    v10 = v4;
    self->_acquisitionFailure = failure;
    if (failure)
    {
      LODWORD(v8) = 0;
      v6 = [(ASDObject *)self plugin:0x676C6F6262786F66];
      [v6 changedProperty:&v7 forObject:self];
    }
  }
}

- (void)setIdentify:(BOOL)identify
{
  if (self->_identify != identify)
  {
    v9 = v3;
    v10 = v4;
    self->_identify = identify;
    LODWORD(v8) = 0;
    v6 = [(ASDObject *)self plugin:0x676C6F626964656ELL];
    [v6 changedProperty:&v7 forObject:self];
  }
}

- (NSArray)audioDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  deviceQueue = self->_deviceQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__ASDBox_audioDevices__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(deviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __22__ASDBox_audioDevices__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 64)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)systemWillSleep
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  deviceQueue = self->_deviceQueue;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ASDBox_systemWillSleep__block_invoke;
  block[3] = &unk_278CE3FE0;
  block[4] = self;
  block[5] = &v31;
  block[6] = &v25;
  dispatch_sync(deviceQueue, block);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v32[5];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v38 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * i) systemWillSleep];
      }

      v4 = [v3 countByEnumeratingWithState:&v20 objects:v38 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v26[5];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v37 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * j) systemWillSleep];
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v37 count:16];
    }

    while (v8);
  }

  v11 = MEMORY[0x277CBEB18];
  v12 = [v32[5] count];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v26[5], "count") + v12}];
  [v13 addObjectsFromArray:v32[5]];
  [v13 addObjectsFromArray:v26[5]];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __25__ASDBox_systemWillSleep__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 72) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (id)systemHasPoweredOn
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  deviceQueue = self->_deviceQueue;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ASDBox_systemHasPoweredOn__block_invoke;
  block[3] = &unk_278CE3FE0;
  block[4] = self;
  block[5] = &v31;
  block[6] = &v25;
  dispatch_sync(deviceQueue, block);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v32[5];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v38 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * i) systemHasPoweredOn];
      }

      v4 = [v3 countByEnumeratingWithState:&v20 objects:v38 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v26[5];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v37 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * j) systemHasPoweredOn];
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v37 count:16];
    }

    while (v8);
  }

  v11 = MEMORY[0x277CBEB18];
  v12 = [v32[5] count];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v26[5], "count") + v12}];
  [v13 addObjectsFromArray:v32[5]];
  [v13 addObjectsFromArray:v26[5]];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __28__ASDBox_systemHasPoweredOn__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 72) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

@end
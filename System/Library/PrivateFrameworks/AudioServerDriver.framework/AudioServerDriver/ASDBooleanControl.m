@interface ASDBooleanControl
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3;
- (BOOL)value;
- (id)driverClassName;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
- (void)setValue:(BOOL)a3;
@end

@implementation ASDBooleanControl

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1650685548)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = ASDBooleanControl;
  return [(ASDControl *)&v6 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1650685548)
  {
    return 4;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDBooleanControl;
  return [ASDControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8
{
  v8 = 0;
  if (a3 && a6 && a7)
  {
    if (a3->mSelector == 1650685548)
    {
      if (*a6 < 4)
      {
        return 0;
      }

      else
      {
        *a7 = [(ASDBooleanControl *)self value];
        *a6 = 4;
        return 1;
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = ASDBooleanControl;
      return [ASDControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
    }
  }

  return v8;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1650685548)
  {

    return [(ASDBooleanControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDBooleanControl;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (void)setValue:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ASDBooleanControl_setValue___block_invoke;
  block[3] = &unk_278CE41E0;
  v9 = a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(valueQueue, block);
  if (*(v11 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F626263766CLL;
    v5 = [(ASDObject *)self propertyChangedDelegate];
    [v5 changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __30__ASDBooleanControl_setValue___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 80) != *(result + 48))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 80) = *(result + 48);
  }

  return result;
}

- (BOOL)value
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDBooleanControl_value__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)driverClassName
{
  v2 = [(ASDControl *)self objectClass];
  v3 = @"AudioBooleanControl";
  if (v2 > 1885888877)
  {
    v4 = 1936682094;
    v12 = @"AudioLFEMuteControl";
    v13 = @"AudioTalkbackControl";
    if (v2 != 1952541794)
    {
      v13 = @"AudioBooleanControl";
    }

    if (v2 != 1937072749)
    {
      v12 = v13;
    }

    if (v2 == 1936682095)
    {
      v7 = @"AudioSoloControl";
    }

    else
    {
      v7 = v12;
    }

    v8 = 1885888878;
    v9 = @"AudioPhantomPowerControl";
    v10 = 1885893481;
    v11 = @"AudioInvertControl";
  }

  else
  {
    v4 = 1784767338;
    v5 = @"AudioListenbackControl";
    v6 = @"AudioMuteControl";
    if (v2 != 1836414053)
    {
      v6 = @"AudioBooleanControl";
    }

    if (v2 != 1819504226)
    {
      v5 = v6;
    }

    if (v2 == 1784767339)
    {
      v7 = @"AudioJackControl";
    }

    else
    {
      v7 = v5;
    }

    v8 = 1668049264;
    v9 = @"AudioClipLightControl";
    v10 = 1702259059;
    v11 = @"AudioTapEnableControl";
  }

  if (v2 == v10)
  {
    v3 = v11;
  }

  if (v2 == v8)
  {
    v3 = v9;
  }

  if (v2 <= v4)
  {
    return v3;
  }

  else
  {
    return v7;
  }
}

@end
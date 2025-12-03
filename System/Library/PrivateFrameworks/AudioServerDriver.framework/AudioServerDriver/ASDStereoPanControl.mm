@interface ASDStereoPanControl
- (ASDStereoPanControl)initWithPlugin:(id)plugin;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (float)value;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)leftPanChannel;
- (unsigned)rightPanChannel;
- (void)setPanChannel:(unsigned int)channel isLeft:(BOOL)left;
- (void)setValue:(float)value;
@end

@implementation ASDStereoPanControl

- (ASDStereoPanControl)initWithPlugin:(id)plugin
{
  LODWORD(v5) = 1936744814;
  LODWORD(v3) = 0.5;
  return [(ASDStereoPanControl *)self initWithValue:1 leftPanChannel:2 rightPanChannel:0 isSettable:0 forElement:1735159650 inScope:plugin withPlugin:v3 andObjectClassID:v5];
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1936745315 || property->mSelector == 1936745334)
  {
    return 1;
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ASDStereoPanControl;
  return [(ASDControl *)&v7 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1936745334)
  {
    return 4;
  }

  if (property->mSelector == 1936745315)
  {
    return 8;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDStereoPanControl;
  return [ASDControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  result = 0;
  if (property && dataSize && andData)
  {
    if (property->mSelector == 1936745315)
    {
      if (*dataSize >= 8)
      {
        *andData = [(ASDStereoPanControl *)self leftPanChannel];
        *(andData + 1) = [(ASDStereoPanControl *)self rightPanChannel];
        v13 = 8;
        goto LABEL_10;
      }

      return 0;
    }

    if (property->mSelector == 1936745334)
    {
      if (*dataSize >= 4)
      {
        [(ASDStereoPanControl *)self value];
        *andData = v12;
        v13 = 4;
LABEL_10:
        *dataSize = v13;
        return 1;
      }

      return 0;
    }

    v14.receiver = self;
    v14.super_class = ASDStereoPanControl;
    return [ASDControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
  }

  return result;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable || settable->mSelector == 1936745315)
  {
    return 0;
  }

  if (settable->mSelector == 1936745334)
  {

    return [(ASDStereoPanControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDStereoPanControl;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (void)setValue:(float)value
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASDStereoPanControl_setValue___block_invoke;
  block[3] = &unk_278CE4230;
  valueCopy = value;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(valueQueue, block);
  if (*(v11 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F6273706376;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __32__ASDStereoPanControl_setValue___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 80) != v2)
  {
    v3 = 1.0;
    v4 = v2 >= 1.0;
    v5 = v2 > 0.0 || v2 >= 1.0;
    if (v2 <= 0.0)
    {
      v4 = 1;
    }

    if (!v5)
    {
      v3 = 0.0;
    }

    if (v4)
    {
      v2 = v3;
    }

    *(v1 + 80) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)value
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__ASDStereoPanControl_value__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __28__ASDStereoPanControl_value__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)leftPanChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ASDStereoPanControl_leftPanChannel__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)rightPanChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ASDStereoPanControl_rightPanChannel__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPanChannel:(unsigned int)channel isLeft:(BOOL)left
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  valueQueue = self->_valueQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ASDStereoPanControl_setPanChannel_isLeft___block_invoke;
  block[3] = &unk_278CE4380;
  leftCopy = left;
  channelCopy = channel;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(valueQueue, block);
  if (*(v13 + 24) == 1)
  {
    v8 = 0;
    v7 = 0x676C6F6273706363;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v7 forObject:self];
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __44__ASDStereoPanControl_setPanChannel_isLeft___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (*(result + 52) == 1)
  {
    v2 = 96;
  }

  else
  {
    v2 = 100;
  }

  v3 = (*(result + 32) + v2);
  if (*v3 != v1)
  {
    *v3 = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

@end
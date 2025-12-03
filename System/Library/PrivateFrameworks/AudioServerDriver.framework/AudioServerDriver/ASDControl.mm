@interface ASDControl
- (ASDControl)initWithElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isKindOfAudioClass:(unsigned int)class;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
@end

@implementation ASDControl

- (ASDControl)initWithElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = ASDControl;
  result = [(ASDObject *)&v10 initWithPlugin:plugin];
  if (result)
  {
    result->_controlElement = element;
    result->_controlScope = scope;
    result->_objectClassID = d;
  }

  return result;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1667591277 || property->mSelector == 1668506480)
  {
    return 1;
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ASDControl;
  return [(ASDObject *)&v7 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1667591277 || property->mSelector == 1668506480)
  {
    return 4;
  }

  v10 = v5;
  v11 = v6;
  v9.receiver = self;
  v9.super_class = ASDControl;
  return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v8 = 0;
  if (property && dataSize && andData)
  {
    if (property->mSelector == 1667591277)
    {
      if (*dataSize >= 4)
      {
        controlElement = [(ASDControl *)self controlElement];
        goto LABEL_10;
      }
    }

    else
    {
      if (property->mSelector != 1668506480)
      {
        v13.receiver = self;
        v13.super_class = ASDControl;
        return [ASDObject getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
      }

      if (*dataSize >= 4)
      {
        controlElement = [(ASDControl *)self controlScope];
LABEL_10:
        *andData = controlElement;
        *dataSize = 4;
        return 1;
      }
    }

    return 0;
  }

  return v8;
}

- (BOOL)isKindOfAudioClass:(unsigned int)class
{
  v5.receiver = self;
  v5.super_class = ASDControl;
  result = [(ASDObject *)&v5 isKindOfAudioClass:?];
  if (class == 1633907820)
  {
    return 1;
  }

  return result;
}

@end
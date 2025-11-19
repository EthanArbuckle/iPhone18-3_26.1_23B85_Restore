@interface ASDControl
- (ASDControl)initWithElement:(unsigned int)a3 inScope:(unsigned int)a4 withPlugin:(id)a5 andObjectClassID:(unsigned int)a6;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isKindOfAudioClass:(unsigned int)a3;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5;
@end

@implementation ASDControl

- (ASDControl)initWithElement:(unsigned int)a3 inScope:(unsigned int)a4 withPlugin:(id)a5 andObjectClassID:(unsigned int)a6
{
  v10.receiver = self;
  v10.super_class = ASDControl;
  result = [(ASDObject *)&v10 initWithPlugin:a5];
  if (result)
  {
    result->_controlElement = a3;
    result->_controlScope = a4;
    result->_objectClassID = a6;
  }

  return result;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1667591277 || a3->mSelector == 1668506480)
  {
    return 1;
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ASDControl;
  return [(ASDObject *)&v7 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 andQualifierData:(const void *)a5
{
  if (!a3)
  {
    return 0;
  }

  if (a3->mSelector == 1667591277 || a3->mSelector == 1668506480)
  {
    return 4;
  }

  v10 = v5;
  v11 = v6;
  v9.receiver = self;
  v9.super_class = ASDControl;
  return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8
{
  v8 = 0;
  if (a3 && a6 && a7)
  {
    if (a3->mSelector == 1667591277)
    {
      if (*a6 >= 4)
      {
        v11 = [(ASDControl *)self controlElement];
        goto LABEL_10;
      }
    }

    else
    {
      if (a3->mSelector != 1668506480)
      {
        v13.receiver = self;
        v13.super_class = ASDControl;
        return [ASDObject getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
      }

      if (*a6 >= 4)
      {
        v11 = [(ASDControl *)self controlScope];
LABEL_10:
        *a7 = v11;
        *a6 = 4;
        return 1;
      }
    }

    return 0;
  }

  return v8;
}

- (BOOL)isKindOfAudioClass:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = ASDControl;
  result = [(ASDObject *)&v5 isKindOfAudioClass:?];
  if (a3 == 1633907820)
  {
    return 1;
  }

  return result;
}

@end
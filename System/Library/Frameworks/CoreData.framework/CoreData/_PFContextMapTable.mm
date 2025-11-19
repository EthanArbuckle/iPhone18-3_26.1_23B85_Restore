@interface _PFContextMapTable
- (_DWORD)initWithWeaksReferences:(_DWORD *)result;
- (unint64_t)getAllObjects:(unint64_t)result;
- (void)dealloc;
- (void)setForUseWithCoordinator:(void *)result;
@end

@implementation _PFContextMapTable

- (void)dealloc
{
  if (self)
  {
    objectsByTemporaryID = self->_objectsByTemporaryID;
    if (objectsByTemporaryID)
    {
      CFRelease(objectsByTemporaryID);
      self->_objectsByTemporaryID = 0;
    }

    if (self->_objectsByPermanentObjectID)
    {
      slotLimit = self->_slotLimit;
      if (slotLimit)
      {
        for (i = 0; i < slotLimit; ++i)
        {
          v6 = self->_objectsByPermanentObjectID[i];
          if (v6)
          {
            CFRelease(v6);
            slotLimit = self->_slotLimit;
          }
        }
      }

      v7 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v7 = malloc_default_zone();
      }

      malloc_zone_free(v7, self->_objectsByPermanentObjectID);
      self->_objectsByPermanentObjectID = 0;
    }

    if (self->_objectsBy64bitPKID)
    {
      v8 = self->_slotLimit;
      if (v8)
      {
        for (j = 0; j < v8; ++j)
        {
          v10 = self->_objectsBy64bitPKID[j];
          if (v10)
          {
            CFRelease(v10);
            v8 = self->_slotLimit;
          }
        }
      }

      v11 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      malloc_zone_free(v11, self->_objectsBy64bitPKID);
      self->_objectsByPermanentObjectID = 0;
    }

    capacitiesFor64bitPKMappings = self->_capacitiesFor64bitPKMappings;
    if (capacitiesFor64bitPKMappings)
    {
      v13 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v13 = malloc_default_zone();
        capacitiesFor64bitPKMappings = self->_capacitiesFor64bitPKMappings;
      }

      malloc_zone_free(v13, capacitiesFor64bitPKMappings);
      self->_capacitiesFor64bitPKMappings = 0;
    }

    self->_slotLimit = 0;

    self->_modelMap = 0;
  }

  v14.receiver = self;
  v14.super_class = _PFContextMapTable;
  [(_PFContextMapTable *)&v14 dealloc];
}

- (_DWORD)initWithWeaksReferences:(_DWORD *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = _PFContextMapTable;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[12] = result[12] & 0xFFFFFFFE | a2;
    }
  }

  return result;
}

- (void)setForUseWithCoordinator:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[7];
    if (v4)
    {
    }

    if (a2)
    {
      v5 = *(a2 + 96);
    }

    else
    {
      v5 = 0;
    }

    result = v5;
    v3[7] = result;
    if (result)
    {
      v6 = result[6];
    }

    else
    {
      v6 = 0;
    }

    v3[1] = v6;
  }

  return result;
}

- (unint64_t)getAllObjects:(unint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = a2;
    if (v4)
    {
      Count = CFDictionaryGetCount(v4);
      v5 = a2;
      if (Count)
      {
        v7 = Count;
        CFDictionaryGetKeysAndValues(*(v3 + 16), 0, a2);
        v5 = &a2[v7];
      }
    }

    if (*(v3 + 24) && *(v3 + 8))
    {
      v8 = 0;
      do
      {
        v9 = *(v3 + 24);
        v10 = *(v9 + 8 * v8);
        if (v10)
        {
          v11 = CFDictionaryGetCount(*(v9 + 8 * v8));
          if (v11)
          {
            v12 = v11;
            CFDictionaryGetKeysAndValues(v10, 0, v5);
            v5 += v12;
          }
        }

        ++v8;
      }

      while (v8 < *(v3 + 8));
    }

    if (*(v3 + 32) && *(v3 + 8))
    {
      v13 = 0;
      do
      {
        v14 = *(v3 + 32);
        v15 = *(v14 + 8 * v13);
        if (v15)
        {
          v16 = CFDictionaryGetCount(*(v14 + 8 * v13));
          if (v16)
          {
            v17 = v16;
            CFDictionaryGetKeysAndValues(v15, 0, v5);
            v5 += v17;
          }
        }

        ++v13;
      }

      while (v13 < *(v3 + 8));
    }

    return (v5 - a2) >> 3;
  }

  return result;
}

@end
@interface NSPersistentCacheRow
- (double)timestampForProperty:(uint64_t)property;
- (id)objectID;
- (unint64_t)version;
- (void)_initializeRelationshipCaches;
- (void)copyRelationshipCachesFrom:(void *)result;
- (void)dealloc;
- (void)release;
- (void)setAncillaryOrderKeys:(void *)keys forProperty:options:andTimestamp:;
- (void)setRelatedObjectIDs:(void *)ds forProperty:(void *)property options:(void *)options andTimestamp:(double)timestamp;
- (void)toManyOffsetForProperty:(void *)result;
- (void)updateMissingRelationshipCachesFromOriginal:(void *)result;
@end

@implementation NSPersistentCacheRow

- (void)release
{
  if (atomic_fetch_add_explicit(&self->_cd_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    atomic_fetch_add_explicit(&self->_cd_rc, 0x20000000u, memory_order_relaxed);
    [(NSPersistentCacheRow *)self dealloc];
  }
}

- (void)_initializeRelationshipCaches
{
  if (result)
  {
    v1 = result + 3;
    if (!result[3])
    {
      result = [objc_msgSend(objc_msgSend(result "objectID")];
      v2 = result[19];
      if (v2)
      {
        v3 = 3 * v2;
        result = PF_CALLOC_OBJECT_ARRAY(3 * v2 + 1);
        *v1 = result;
        result[v3] = result;
      }

      else
      {
        *v1 = v1;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  toManyMap = self->_toManyMap;
  if (toManyMap)
  {
    self->_toManyMap = 0;
    if (*toManyMap != toManyMap)
    {
      v4 = 0;
      do
      {
        v5 = &toManyMap[v4];

        v4 += 3;
      }

      while (v5[3] != toManyMap);
      if (v4)
      {
        PF_FREE_OBJECT_ARRAY(toManyMap);
      }
    }
  }

  _PFDeallocateObject(self);
}

- (id)objectID
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)version
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)copyRelationshipCachesFrom:(void *)result
{
  if (result)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      v4 = result;
      v5 = result[3];
      if (v3 != v5)
      {
        if (!v5)
        {
          result = [(NSPersistentCacheRow *)result _initializeRelationshipCaches];
          v5 = v4[3];
          v3 = *(a2 + 24);
        }

        if (*v5 != v5)
        {
          v6 = (v3 + 16);
          v7 = (v5 + 2);
          do
          {
            *(v7 - 2) = *(v6 - 2);
            v8 = *(v7 - 1);
            if (v8 != *(v6 - 1))
            {

              result = *(v6 - 1);
              *(v7 - 1) = result;
            }

            if (*v7 != *v6)
            {

              result = *v6;
              *v7 = result;
            }

            v9 = v7[1];
            v6 += 3;
            v7 += 3;
          }

          while (v9 != v5);
        }
      }
    }
  }

  return result;
}

- (void)updateMissingRelationshipCachesFromOriginal:(void *)result
{
  if (result)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      v4 = result;
      v5 = result[3];
      if (v3 != v5)
      {
        if (!v5)
        {
          result = [(NSPersistentCacheRow *)result _initializeRelationshipCaches];
          v3 = *(a2 + 24);
        }

        v6 = *v3;
        if (*v3 != v3)
        {
          v7 = 0;
          do
          {
            v8 = v4[3];
            if (!*(v8 + v7 * 8 + 8))
            {
              *(v8 + v7 * 8) = v6;
              *(v4[3] + v7 * 8 + 8) = v3[v7 + 1];
              result = v3[v7 + 2];
              *(v4[3] + v7 * 8 + 16) = result;
            }

            v6 = v3[v7 + 3];
            v7 += 3;
          }

          while (v6 != v3);
        }
      }
    }
  }

  return result;
}

- (void)toManyOffsetForProperty:(void *)result
{
  if (result)
  {
    v3 = result;
    entity = [a2 entity];
    v5 = [objc_msgSend(v3 "objectID")];
    _entitysReferenceID = [a2 _entitysReferenceID];
    if (entity == v5)
    {
      return (_entitysReferenceID - *([entity _propertyRangesByType] + 144));
    }

    else
    {
      v7 = *([v5 _propertyRangesByType] + 144);
      return ([v5 _offsetRelationshipIndex:_entitysReferenceID fromSuperEntity:entity andIsToMany:{objc_msgSend(a2, "isToMany")}] - v7);
    }
  }

  return result;
}

- (double)timestampForProperty:(uint64_t)property
{
  if (!property)
  {
    return 0.0;
  }

  if (!*(property + 24))
  {
    return *&NSSQLDistantPastTimeInterval;
  }

  v4 = *([objc_msgSend(a2 "entity")] + 144);
  _entitysReferenceID = [a2 _entitysReferenceID];
  result = *&NSSQLDistantPastTimeInterval;
  if (*(*(property + 24) + 24 * (_entitysReferenceID - v4)))
  {
    return *(*(property + 24) + 24 * (_entitysReferenceID - v4));
  }

  return result;
}

- (void)setRelatedObjectIDs:(void *)ds forProperty:(void *)property options:(void *)options andTimestamp:(double)timestamp
{
  if (ds)
  {
    if (!ds[3])
    {
      [(NSPersistentCacheRow *)ds _initializeRelationshipCaches];
    }

    if (property && ![property count])
    {
      property = NSArray_EmptyArray;
    }

    v8 = [(NSPersistentCacheRow *)ds toManyOffsetForProperty:options];
    v9 = 3 * v8;
    *(ds[3] + 24 * v8) = timestamp;
    v10 = 3 * v8 + 1;
    v11 = *(ds[3] + 8 * v10);
    if (v11 != property)
    {
      *(ds[3] + 8 * v10) = property;

      v12 = ds[3] + 8 * v9;
      v13 = *(v12 + 16);
      *(v12 + 16) = 0;
    }
  }
}

- (void)setAncillaryOrderKeys:(void *)keys forProperty:options:andTimestamp:
{
  if (self)
  {
    if (!self[3])
    {
      [(NSPersistentCacheRow *)self _initializeRelationshipCaches];
    }

    if (a2 && ![a2 count])
    {
      a2 = NSArray_EmptyArray;
    }

    v6 = *([objc_msgSend(keys "entity")] + 144);
    v7 = 3 * ([keys _entitysReferenceID] - v6) + 2;
    if (*(self[3] + 8 * v7) != a2)
    {
      v8 = *(self[3] + 8 * v7);
      *(self[3] + 8 * v7) = a2;
    }
  }
}

@end
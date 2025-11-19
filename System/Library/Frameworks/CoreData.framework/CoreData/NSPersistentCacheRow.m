@interface NSPersistentCacheRow
- (double)timestampForProperty:(uint64_t)a1;
- (id)objectID;
- (unint64_t)version;
- (void)_initializeRelationshipCaches;
- (void)copyRelationshipCachesFrom:(void *)result;
- (void)dealloc;
- (void)release;
- (void)setAncillaryOrderKeys:(void *)a3 forProperty:options:andTimestamp:;
- (void)setRelatedObjectIDs:(void *)a1 forProperty:(void *)a2 options:(void *)a3 andTimestamp:(double)a4;
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
    v4 = [a2 entity];
    v5 = [objc_msgSend(v3 "objectID")];
    v6 = [a2 _entitysReferenceID];
    if (v4 == v5)
    {
      return (v6 - *([v4 _propertyRangesByType] + 144));
    }

    else
    {
      v7 = *([v5 _propertyRangesByType] + 144);
      return ([v5 _offsetRelationshipIndex:v6 fromSuperEntity:v4 andIsToMany:{objc_msgSend(a2, "isToMany")}] - v7);
    }
  }

  return result;
}

- (double)timestampForProperty:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if (!*(a1 + 24))
  {
    return *&NSSQLDistantPastTimeInterval;
  }

  v4 = *([objc_msgSend(a2 "entity")] + 144);
  v5 = [a2 _entitysReferenceID];
  result = *&NSSQLDistantPastTimeInterval;
  if (*(*(a1 + 24) + 24 * (v5 - v4)))
  {
    return *(*(a1 + 24) + 24 * (v5 - v4));
  }

  return result;
}

- (void)setRelatedObjectIDs:(void *)a1 forProperty:(void *)a2 options:(void *)a3 andTimestamp:(double)a4
{
  if (a1)
  {
    if (!a1[3])
    {
      [(NSPersistentCacheRow *)a1 _initializeRelationshipCaches];
    }

    if (a2 && ![a2 count])
    {
      a2 = NSArray_EmptyArray;
    }

    v8 = [(NSPersistentCacheRow *)a1 toManyOffsetForProperty:a3];
    v9 = 3 * v8;
    *(a1[3] + 24 * v8) = a4;
    v10 = 3 * v8 + 1;
    v11 = *(a1[3] + 8 * v10);
    if (v11 != a2)
    {
      *(a1[3] + 8 * v10) = a2;

      v12 = a1[3] + 8 * v9;
      v13 = *(v12 + 16);
      *(v12 + 16) = 0;
    }
  }
}

- (void)setAncillaryOrderKeys:(void *)a3 forProperty:options:andTimestamp:
{
  if (a1)
  {
    if (!a1[3])
    {
      [(NSPersistentCacheRow *)a1 _initializeRelationshipCaches];
    }

    if (a2 && ![a2 count])
    {
      a2 = NSArray_EmptyArray;
    }

    v6 = *([objc_msgSend(a3 "entity")] + 144);
    v7 = 3 * ([a3 _entitysReferenceID] - v6) + 2;
    if (*(a1[3] + 8 * v7) != a2)
    {
      v8 = *(a1[3] + 8 * v7);
      *(a1[3] + 8 * v7) = a2;
    }
  }
}

@end
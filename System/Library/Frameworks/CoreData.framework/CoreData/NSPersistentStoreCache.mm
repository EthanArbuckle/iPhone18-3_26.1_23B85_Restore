@interface NSPersistentStoreCache
- (NSPersistentStoreCache)initWithValueCallbacks:(void *)a3 preserveToManyRelationships:(BOOL)a4;
- (double)rowForObjectID:(double)a3 afterTimestamp:;
- (id)ancillaryOrderKeysForSourceObjectID:(void *)a3 forProperty:(double)a4 afterTimestamp:;
- (id)toManyForSourceObjectID:(void *)a3 forProperty:(double)a4 afterTimestamp:;
- (uint64_t)_createExternalDataDictWithValueCallbacks:(uint64_t)result;
- (uint64_t)toManyInformationForSourceObjectID:(void *)a3 forProperty:(double)a4 afterTimestamp:;
- (void)_registerRow:(void *)key forObjectID:(char)a4 options:;
- (void)_registerToMany:(uint64_t)a1 withOrderKeys:(void *)a2 forSourceObjectID:(void *)a3 forProperty:(void *)key options:(void *)a5 andTimestamp:(double)a6;
- (void)dealloc;
- (void)decrementRefCountForObjectID:(uint64_t)a1;
- (void)forgetAllExternalData;
- (void)forgetRowForObjectID:(uint64_t)a1;
- (void)incrementRefCountForObjectID:(uint64_t)a1;
- (void)registerRow:(void *)a3 forObjectID:(char)a4 options:;
- (void)registerToMany:(os_unfair_lock_s *)a1 withOrderKeys:(void *)a2 forSourceObjectID:(void *)a3 forProperty:(void *)a4 options:(void *)a5 andTimestamp:(double)a6;
@end

@implementation NSPersistentStoreCache

- (void)dealloc
{
  externalData = self->_externalData;
  if (externalData)
  {
    CFRelease(externalData);
    self->_externalData = 0;
  }

  externalDataValueCallbacks = self->_externalDataValueCallbacks;
  if (externalDataValueCallbacks)
  {
    free(externalDataValueCallbacks);
  }

  v5.receiver = self;
  v5.super_class = NSPersistentStoreCache;
  [(NSPersistentStoreCache *)&v5 dealloc];
}

- (uint64_t)_createExternalDataDictWithValueCallbacks:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v4.version = 0;
    v4.retain = _PFfastOidRetain;
    v3 = *(MEMORY[0x1E695E9D8] + 24);
    v4.release = _PFfastOidRelease;
    v4.copyDescription = v3;
    v4.equal = _PFObjectIDFastEquals64;
    v4.hash = _PFObjectIDFastHash64;
    *(result + 8) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v4, valueCallBacks);
    result = _CFDictionarySetCapacity();
    *(v2 + 16) = 32;
  }

  return result;
}

- (NSPersistentStoreCache)initWithValueCallbacks:(void *)a3 preserveToManyRelationships:(BOOL)a4
{
  v4 = a4;
  v12.receiver = self;
  v12.super_class = NSPersistentStoreCache;
  v6 = [(NSPersistentStoreCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_persistentStoreCacheFlags = (*&v6->_persistentStoreCacheFlags & 0xFFFFFFFE | v4);
    v8 = malloc_type_malloc(0x28uLL, 0x1080040EC4B14DAuLL);
    *(v7 + 24) = v8;
    v9 = *(a3 + 4);
    v10 = *(a3 + 1);
    *v8 = *a3;
    v8[1] = v10;
    *(v8 + 4) = v9;
    [(NSPersistentStoreCache *)v7 _createExternalDataDictWithValueCallbacks:?];
    *(v7 + 36) = 0;
  }

  return v7;
}

- (void)forgetAllExternalData
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();

    [(NSPersistentStoreCache *)a1 _createExternalDataDictWithValueCallbacks:?];

    os_unfair_lock_unlock((a1 + 36));
  }
}

- (void)decrementRefCountForObjectID:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(a1 + 8), a2);
    if (Value && atomic_fetch_add_explicit(Value + 3, 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      CFDictionaryRemoveValue(*(a1 + 8), a2);
    }

    os_unfair_lock_unlock((a1 + 36));
  }
}

- (void)incrementRefCountForObjectID:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(a1 + 8), a2);
    if (Value)
    {
      atomic_fetch_add_explicit(Value + 3, 1u, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 36));
  }
}

- (void)_registerRow:(void *)key forObjectID:(char)a4 options:
{
  if (a1)
  {
    Value = CFDictionaryGetValue(*(a1 + 8), key);
    if (Value != a2)
    {
      v9 = Value;
      if (Value)
      {
        add = atomic_fetch_add(Value + 3, 0);
        if (a2)
        {
          atomic_fetch_add_explicit((a2 + 12), add, memory_order_relaxed);
        }

        if (a4 & 4) == 0 && (*(a1 + 32))
        {
          v11 = [(atomic_uint *)Value version];
          if (v11 == [a2 version])
          {
            [(NSPersistentCacheRow *)a2 copyRelationshipCachesFrom:v9];
          }
        }
      }

      v12 = *(a1 + 8);

      CFDictionarySetValue(v12, key, a2);
    }
  }
}

- (void)registerRow:(void *)a3 forObjectID:(char)a4 options:
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    [(NSPersistentStoreCache *)a1 _registerRow:a2 forObjectID:a3 options:a4];

    os_unfair_lock_unlock(a1 + 9);
  }
}

- (double)rowForObjectID:(double)a3 afterTimestamp:
{
  if (result)
  {
    v5 = result;
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(v5 + 1), a2);
    if (Value && (v7 = Value, Value[4] > a3))
    {
      v8 = Value;
      [v7 knownKeyValuesPointer];
    }

    else
    {
      v7 = 0;
    }

    os_unfair_lock_unlock(v5 + 9);

    return v7;
  }

  return result;
}

- (void)_registerToMany:(uint64_t)a1 withOrderKeys:(void *)a2 forSourceObjectID:(void *)a3 forProperty:(void *)key options:(void *)a5 andTimestamp:(double)a6
{
  if (a1)
  {
    Value = CFDictionaryGetValue(*(a1 + 8), key);
    [NSPersistentCacheRow setRelatedObjectIDs:a2 forProperty:a5 options:a6 andTimestamp:?];
    if (a3)
    {

      [NSPersistentCacheRow setAncillaryOrderKeys:a3 forProperty:a5 options:? andTimestamp:?];
    }
  }
}

- (void)registerToMany:(os_unfair_lock_s *)a1 withOrderKeys:(void *)a2 forSourceObjectID:(void *)a3 forProperty:(void *)a4 options:(void *)a5 andTimestamp:(double)a6
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    [NSPersistentStoreCache _registerToMany:a1 withOrderKeys:a2 forSourceObjectID:a3 forProperty:a4 options:a5 andTimestamp:a6];

    os_unfair_lock_unlock(a1 + 9);
  }
}

- (uint64_t)toManyInformationForSourceObjectID:(void *)a3 forProperty:(double)a4 afterTimestamp:
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  if (Value && (v9 = Value, -[NSPersistentCacheRow timestampForProperty:](Value, a3) > a4) && v9[3] && (v10 = *(v9[3] + 24 * -[NSPersistentCacheRow toManyOffsetForProperty:](v9, a3) + 8), v11 = *([objc_msgSend(a3 "entity")] + 144), v12 = objc_msgSend(a3, "_entitysReferenceID"), v10))
  {
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v10, *(v9[3] + 24 * (v12 - v11) + 16), 0}];
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock((a1 + 36));
  return v13;
}

- (id)toManyForSourceObjectID:(void *)a3 forProperty:(double)a4 afterTimestamp:
{
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(v7 + 1), a2);
    if (Value && (v9 = Value, [(NSPersistentCacheRow *)Value timestampForProperty:a3]> a4))
    {
      v10 = v9[3];
      if (v10)
      {
        v10 = *(v9[3] + 24 * [(NSPersistentCacheRow *)v9 toManyOffsetForProperty:a3]+ 8);
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    os_unfair_lock_unlock(v7 + 9);

    return v11;
  }

  return result;
}

- (id)ancillaryOrderKeysForSourceObjectID:(void *)a3 forProperty:(double)a4 afterTimestamp:
{
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(v7 + 1), a2);
    if (Value && (v9 = Value, [(NSPersistentCacheRow *)Value timestampForProperty:a3]> a4))
    {
      v10 = v9[3];
      if (v10)
      {
        v11 = *([objc_msgSend(a3 "entity")] + 144);
        v10 = *(v9[3] + 24 * ([a3 _entitysReferenceID] - v11) + 16);
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_unlock(v7 + 9);

    return v12;
  }

  return result;
}

- (void)forgetRowForObjectID:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    CFDictionaryRemoveValue(*(a1 + 8), a2);

    os_unfair_lock_unlock((a1 + 36));
  }
}

@end
@interface NSPersistentStoreCache
- (NSPersistentStoreCache)initWithValueCallbacks:(void *)callbacks preserveToManyRelationships:(BOOL)relationships;
- (double)rowForObjectID:(double)d afterTimestamp:;
- (id)ancillaryOrderKeysForSourceObjectID:(void *)d forProperty:(double)property afterTimestamp:;
- (id)toManyForSourceObjectID:(void *)d forProperty:(double)property afterTimestamp:;
- (uint64_t)_createExternalDataDictWithValueCallbacks:(uint64_t)result;
- (uint64_t)toManyInformationForSourceObjectID:(void *)d forProperty:(double)property afterTimestamp:;
- (void)_registerRow:(void *)key forObjectID:(char)d options:;
- (void)_registerToMany:(uint64_t)many withOrderKeys:(void *)keys forSourceObjectID:(void *)d forProperty:(void *)key options:(void *)options andTimestamp:(double)timestamp;
- (void)dealloc;
- (void)decrementRefCountForObjectID:(uint64_t)d;
- (void)forgetAllExternalData;
- (void)forgetRowForObjectID:(uint64_t)d;
- (void)incrementRefCountForObjectID:(uint64_t)d;
- (void)registerRow:(void *)row forObjectID:(char)d options:;
- (void)registerToMany:(os_unfair_lock_s *)many withOrderKeys:(void *)keys forSourceObjectID:(void *)d forProperty:(void *)property options:(void *)options andTimestamp:(double)timestamp;
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

- (NSPersistentStoreCache)initWithValueCallbacks:(void *)callbacks preserveToManyRelationships:(BOOL)relationships
{
  relationshipsCopy = relationships;
  v12.receiver = self;
  v12.super_class = NSPersistentStoreCache;
  v6 = [(NSPersistentStoreCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_persistentStoreCacheFlags = (*&v6->_persistentStoreCacheFlags & 0xFFFFFFFE | relationshipsCopy);
    v8 = malloc_type_malloc(0x28uLL, 0x1080040EC4B14DAuLL);
    *(v7 + 24) = v8;
    v9 = *(callbacks + 4);
    v10 = *(callbacks + 1);
    *v8 = *callbacks;
    v8[1] = v10;
    *(v8 + 4) = v9;
    [(NSPersistentStoreCache *)v7 _createExternalDataDictWithValueCallbacks:?];
    *(v7 + 36) = 0;
  }

  return v7;
}

- (void)forgetAllExternalData
{
  if (self)
  {
    os_unfair_lock_lock_with_options();

    [(NSPersistentStoreCache *)self _createExternalDataDictWithValueCallbacks:?];

    os_unfair_lock_unlock((self + 36));
  }
}

- (void)decrementRefCountForObjectID:(uint64_t)d
{
  if (d)
  {
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(d + 8), a2);
    if (Value && atomic_fetch_add_explicit(Value + 3, 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      CFDictionaryRemoveValue(*(d + 8), a2);
    }

    os_unfair_lock_unlock((d + 36));
  }
}

- (void)incrementRefCountForObjectID:(uint64_t)d
{
  if (d)
  {
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(d + 8), a2);
    if (Value)
    {
      atomic_fetch_add_explicit(Value + 3, 1u, memory_order_relaxed);
    }

    os_unfair_lock_unlock((d + 36));
  }
}

- (void)_registerRow:(void *)key forObjectID:(char)d options:
{
  if (self)
  {
    Value = CFDictionaryGetValue(*(self + 8), key);
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

        if (d & 4) == 0 && (*(self + 32))
        {
          version = [(atomic_uint *)Value version];
          if (version == [a2 version])
          {
            [(NSPersistentCacheRow *)a2 copyRelationshipCachesFrom:v9];
          }
        }
      }

      v12 = *(self + 8);

      CFDictionarySetValue(v12, key, a2);
    }
  }
}

- (void)registerRow:(void *)row forObjectID:(char)d options:
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    [(NSPersistentStoreCache *)self _registerRow:a2 forObjectID:row options:d];

    os_unfair_lock_unlock(self + 9);
  }
}

- (double)rowForObjectID:(double)d afterTimestamp:
{
  if (result)
  {
    v5 = result;
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(v5 + 1), a2);
    if (Value && (v7 = Value, Value[4] > d))
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

- (void)_registerToMany:(uint64_t)many withOrderKeys:(void *)keys forSourceObjectID:(void *)d forProperty:(void *)key options:(void *)options andTimestamp:(double)timestamp
{
  if (many)
  {
    Value = CFDictionaryGetValue(*(many + 8), key);
    [NSPersistentCacheRow setRelatedObjectIDs:keys forProperty:options options:timestamp andTimestamp:?];
    if (d)
    {

      [NSPersistentCacheRow setAncillaryOrderKeys:d forProperty:options options:? andTimestamp:?];
    }
  }
}

- (void)registerToMany:(os_unfair_lock_s *)many withOrderKeys:(void *)keys forSourceObjectID:(void *)d forProperty:(void *)property options:(void *)options andTimestamp:(double)timestamp
{
  if (many)
  {
    os_unfair_lock_lock_with_options();
    [NSPersistentStoreCache _registerToMany:many withOrderKeys:keys forSourceObjectID:d forProperty:property options:options andTimestamp:timestamp];

    os_unfair_lock_unlock(many + 9);
  }
}

- (uint64_t)toManyInformationForSourceObjectID:(void *)d forProperty:(double)property afterTimestamp:
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(self + 8), a2);
  if (Value && (v9 = Value, -[NSPersistentCacheRow timestampForProperty:](Value, d) > property) && v9[3] && (v10 = *(v9[3] + 24 * -[NSPersistentCacheRow toManyOffsetForProperty:](v9, d) + 8), v11 = *([objc_msgSend(d "entity")] + 144), v12 = objc_msgSend(d, "_entitysReferenceID"), v10))
  {
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v10, *(v9[3] + 24 * (v12 - v11) + 16), 0}];
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock((self + 36));
  return v13;
}

- (id)toManyForSourceObjectID:(void *)d forProperty:(double)property afterTimestamp:
{
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(v7 + 1), a2);
    if (Value && (v9 = Value, [(NSPersistentCacheRow *)Value timestampForProperty:d]> property))
    {
      v10 = v9[3];
      if (v10)
      {
        v10 = *(v9[3] + 24 * [(NSPersistentCacheRow *)v9 toManyOffsetForProperty:d]+ 8);
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

- (id)ancillaryOrderKeysForSourceObjectID:(void *)d forProperty:(double)property afterTimestamp:
{
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock_with_options();
    Value = CFDictionaryGetValue(*(v7 + 1), a2);
    if (Value && (v9 = Value, [(NSPersistentCacheRow *)Value timestampForProperty:d]> property))
    {
      v10 = v9[3];
      if (v10)
      {
        v11 = *([objc_msgSend(d "entity")] + 144);
        v10 = *(v9[3] + 24 * ([d _entitysReferenceID] - v11) + 16);
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

- (void)forgetRowForObjectID:(uint64_t)d
{
  if (d)
  {
    os_unfair_lock_lock_with_options();
    CFDictionaryRemoveValue(*(d + 8), a2);

    os_unfair_lock_unlock((d + 36));
  }
}

@end
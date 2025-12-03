@interface PHBatchFetchingArray
- (BOOL)_shouldRetrieveRestrictedAssetOIDsWithSample:(id)sample;
- (BOOL)containsObject:(id)object;
- (NSSet)oidsSet;
- (NSString)description;
- (PHBatchFetchingArray)initWithOIDs:(id)ds options:(id)options dataSource:(id)source;
- (PHBatchFetchingArray)initWithObjects:(id)objects options:(id)options photoLibrary:(id)library;
- (id)_batchForBatchNumber:(unint64_t)number shouldUpdateLastBatch:(BOOL)batch;
- (id)_fetchObjectsInBatchNumber:(unint64_t)number;
- (id)_phObjectAtIndex:(unint64_t)index;
- (id)_phObjectsForOIDs:(id)ds;
- (id)_prepareObjectsByOIDsFromOIDsToFetch:(id)fetch andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects:(id)objects;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)subarrayWithRange:(_NSRange)range;
- (unint64_t)_populateObjectBuffer:(id *)buffer range:(_NSRange)range;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range;
- (unint64_t)test_lastBatchIndex;
- (void)_rememberUUIDsForBatch:(id)batch;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)prefetchObjectsAtIndexes:(id)indexes;
- (void)test_evictBatchNumber:(int64_t)number;
@end

@implementation PHBatchFetchingArray

- (void)dealloc
{
  [(NSCache *)self->_cache setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHBatchFetchingArray;
  [(PHBatchFetchingArray *)&v3 dealloc];
}

- (NSSet)oidsSet
{
  if (self->_count)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__47053;
    v8 = __Block_byref_object_dispose__47054;
    v9 = 0;
    pl_dispatch_sync();
    v2 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v2 = [MEMORY[0x1E695DFD8] set];
  }

  return v2;
}

void __31__PHBatchFetchingArray_oidsSet__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:*(v2 + 8)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (void)prefetchObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = -1;
  v5 = self->_cache == 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PHBatchFetchingArray_prefetchObjectsAtIndexes___block_invoke;
  v6[3] = &unk_1E75A9F10;
  v6[4] = self;
  v6[5] = v8;
  v7 = v5;
  [indexesCopy enumerateRangesUsingBlock:v6];
  _Block_object_dispose(v8, 8);
}

void *__49__PHBatchFetchingArray_prefetchObjectsAtIndexes___block_invoke(void *result, unint64_t a2, uint64_t a3)
{
  v3 = *(result[4] + 96);
  v4 = a2 / v3;
  v5 = (a3 + a2 - 1) / v3;
  v6 = *(result[5] + 8);
  v7 = *(v6 + 24);
  if (v4 <= v7)
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = v4;
  }

  if (v8 <= v5)
  {
    v9 = result;
    do
    {
      result = [v9[4] _batchForBatchNumber:v8 shouldUpdateLastBatch:*(v9 + 48)];
    }

    while (v8++ < v5);
    v6 = *(v9[5] + 8);
    v7 = *(v6 + 24);
  }

  if (v7 <= v5 + 1)
  {
    v7 = v5 + 1;
  }

  *(v6 + 24) = v7;
  return result;
}

- (unint64_t)test_lastBatchIndex
{
  os_unfair_lock_lock(&self->_lastBatchLock);
  lastBatchIndex = self->_lastBatchIndex;
  os_unfair_lock_unlock(&self->_lastBatchLock);
  return lastBatchIndex;
}

- (void)test_evictBatchNumber:(int64_t)number
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:number];
  [(NSCache *)self->_cache removeObjectForKey:v4];
}

- (void)_rememberUUIDsForBatch:(id)batch
{
  v19 = *MEMORY[0x1E69E9840];
  objectValue = [batch objectValue];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objectValue;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uuid = [v10 uuid];
        objectID = [v10 objectID];
        [dictionary setObject:uuid forKeyedSubscript:objectID];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = dictionary;
  pl_dispatch_async();
}

uint64_t __47__PHBatchFetchingArray__rememberUUIDsForBatch___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    v2 = *(*(a1 + 32) + 88);
  }

  v6 = *(a1 + 40);

  return [v2 addEntriesFromDictionary:v6];
}

- (id)_fetchObjectsInBatchNumber:(unint64_t)number
{
  v34 = *MEMORY[0x1E69E9840];
  batchSize = self->_batchSize;
  v5 = batchSize * number;
  v6 = batchSize * number + batchSize;
  if (v6 >= self->_count)
  {
    count = self->_count;
  }

  else
  {
    count = v6;
  }

  oids = [(PHBatchFetchingArray *)self oids];
  v9 = count - v5;
  v10 = [oids subarrayWithRange:{v5, count - v5}];

  if (kdebug_is_enabled())
  {
    firstObject = [v10 firstObject];
    objc_opt_class();
    v12 = firstObject;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    entity = [v14 entity];
    name = [entity name];

    v17 = PLPhotoKitGetLog();
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v21 = self->_count;
      v26 = 138413058;
      v27 = name;
      v28 = 2048;
      v29 = v5;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v21;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "FetchObjects", "Entity: %@, range location: %tu, length: %tu, count: %tu", &v26, 0x2Au);
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
  }

  v22 = [(PHBatchFetchingArray *)self _phObjectsForOIDs:v10];
  if (kdebug_is_enabled())
  {
    v23 = v20;
    v24 = v23;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v24, OS_SIGNPOST_INTERVAL_END, v18, "FetchObjects", byte_19CB567AE, &v26, 2u);
    }
  }

  return v22;
}

- (id)_batchForBatchNumber:(unint64_t)number shouldUpdateLastBatch:(BOOL)batch
{
  batchCopy = batch;
  selfCopy = self;
  os_unfair_lock_lock(&self->_lastBatchLock);
  lastBatchIndex = selfCopy->_lastBatchIndex;
  v9 = selfCopy->_lastBatch;
  os_unfair_lock_unlock(&selfCopy->_lastBatchLock);

  if (lastBatchIndex == number)
  {
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  os_unfair_lock_lock(&selfCopy->_cacheLock);
  cache = selfCopy->_cache;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:number];
  v12 = [(NSCache *)cache objectForKey:v11];

  if (!v12)
  {
    v13 = objc_initWeak(&location, selfCopy);

    v14 = objc_alloc(MEMORY[0x1E69BF270]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__PHBatchFetchingArray__batchForBatchNumber_shouldUpdateLastBatch___block_invoke;
    v22[3] = &unk_1E75A9EE8;
    objc_copyWeak(v23, &location);
    v23[1] = number;
    v12 = [v14 initWithBlock:v22];
    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
    v15 = selfCopy->_cache;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:number];
    [(NSCache *)v15 setObject:v12 forKey:v16];
  }

  os_unfair_lock_unlock(&selfCopy->_cacheLock);
  objectValue = [v12 objectValue];
  v9 = objectValue;
  if (batchCopy)
  {
    v18 = objectValue;
    v19 = selfCopy;
    os_unfair_lock_lock(&selfCopy->_lastBatchLock);
    v19->_lastBatchIndex = number;
    lastBatch = v19->_lastBatch;
    v19->_lastBatch = v18;

    os_unfair_lock_unlock(&v19->_lastBatchLock);
  }

LABEL_10:

  return v9;
}

id __67__PHBatchFetchingArray__batchForBatchNumber_shouldUpdateLastBatch___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _fetchObjectsInBatchNumber:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_phObjectAtIndex:(unint64_t)index
{
  v5 = index / self->_batchSize;
  v6 = [(PHBatchFetchingArray *)self _batchForBatchNumber:v5 shouldUpdateLastBatch:1];
  v7 = [v6 objectAtIndex:index - self->_batchSize * v5];

  return v7;
}

- (id)_prepareObjectsByOIDsFromOIDsToFetch:(id)fetch andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects:(id)objects
{
  v35 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  objectsCopy = objects;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(fetchCopy, "count")}];
  v9 = [objectsCopy count];
  if (v9 < [fetchCopy count] && -[PHBatchFetchingArray _shouldRetrieveRestrictedAssetOIDsWithSample:](self, "_shouldRetrieveRestrictedAssetOIDsWithSample:", fetchCopy))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:fetchCopy];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __121__PHBatchFetchingArray__prepareObjectsByOIDsFromOIDsToFetch_andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects___block_invoke;
    v31 = &unk_1E75AAEB0;
    selfCopy = self;
    v11 = v10;
    v33 = v11;
    pl_dispatch_sync();
  }

  else
  {
    v11 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = objectsCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        objectID = [v17 objectID];
        [v8 setObject:v17 forKey:objectID];
        [v11 removeObject:objectID];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    dataSource = self->_dataSource;
    allObjects = [v11 allObjects];
    v21 = [(PHBatchFetchingArrayDataSource *)dataSource bfa_fetchUUIDsForRestrictedOIDs:allObjects];

    if (v21)
    {
      v23 = v21;
      pl_dispatch_sync();
    }
  }

  return v8;
}

void __121__PHBatchFetchingArray__prepareObjectsByOIDsFromOIDsToFetch_andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = MEMORY[0x1E695DFD8];
    v6 = [v2 allKeys];
    v5 = [v4 setWithArray:v6];
    [v3 minusSet:v5];
  }
}

uint64_t __121__PHBatchFetchingArray__prepareObjectsByOIDsFromOIDsToFetch_andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    v2 = *(*(a1 + 32) + 88);
  }

  v6 = *(a1 + 40);

  return [v2 addEntriesFromDictionary:v6];
}

- (id)_phObjectsForOIDs:(id)ds
{
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  if ([dsCopy count])
  {
    fetchedPropertySetClass = [(PHBatchFetchingArrayFetchedClass *)self->_overridenFetchResultClass fetchedPropertySetClass];
    dataSource = self->_dataSource;
    if (fetchedPropertySetClass)
    {
      [(PHBatchFetchingArrayDataSource *)dataSource bfa_fetchedObjectsForOIDs:dsCopy propertySetClass:[(PHBatchFetchingArrayFetchedClass *)self->_overridenFetchResultClass fetchedPropertySetClass]];
    }

    else
    {
      [(PHBatchFetchingArrayDataSource *)dataSource bfa_fetchObjectsForOIDs:dsCopy propertyHint:self->_propertyHint overrideResultsWithClass:[(PHBatchFetchingArrayFetchedClass *)self->_overridenFetchResultClass fetchedObjectClass]];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PHBatchFetchingArray *)self _prepareObjectsByOIDsFromOIDsToFetch:dsCopy andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects:v8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__PHBatchFetchingArray__phObjectsForOIDs___block_invoke;
  v15[3] = &unk_1E75A9EC0;
  v16 = v9;
  selfCopy = self;
  v10 = v5;
  v18 = v10;
  v11 = v9;
  [dsCopy enumerateObjectsUsingBlock:v15];
  v12 = v18;
  v13 = v10;

  return v10;
}

void __42__PHBatchFetchingArray__phObjectsForOIDs___block_invoke(id *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] objectForKey:v3];
  if (!v4)
  {
    if ([*(a1[5] + 13) fetchedPropertySetClass])
    {
      v5 = objc_alloc([*(a1[5] + 13) fetchedPropertySetClass]);
      v6 = [a1[5] photoLibrary];
      v4 = [v5 initWithObjectID:v3 knownKeysDictionary:0 photoLibrary:v6];
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__47053;
      v21 = __Block_byref_object_dispose__47054;
      v22 = 0;
      v7 = v3;
      v16 = v7;
      pl_dispatch_sync();
      v8 = v18[5];
      if (!v8)
      {
        v9 = [MEMORY[0x1E696AFB0] UUID];
        v10 = [v9 UUIDString];
        v11 = v18[5];
        v18[5] = v10;

        v12 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = a1[5];
          v14 = v13[6];
          v15 = v18[5];
          *buf = 134218754;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          v27 = 2112;
          v28 = v7;
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "BFA %p with NSCache %@: could not find tombstone UUID for objectID: %@, using: %@", buf, 0x2Au);
        }

        v8 = v18[5];
      }

      v4 = [*(a1[5] + 3) bfa_tombstoneObjectForOID:v7 uuid:v8 propertyHint:*(a1[5] + 14) overrideResultsWithClass:{objc_msgSend(*(a1[5] + 13), "fetchedObjectClass")}];

      _Block_object_dispose(&v17, 8);
    }
  }

  [a1[6] addObject:v4];
}

uint64_t __42__PHBatchFetchingArray__phObjectsForOIDs___block_invoke_92(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)_shouldRetrieveRestrictedAssetOIDsWithSample:(id)sample
{
  sampleCopy = sample;
  v5 = [sampleCopy count] && (-[PHBatchFetchingArrayDataSource bfa_supportsPrivacyRestrictionsForOIDs:](self->_dataSource, "bfa_supportsPrivacyRestrictionsForOIDs:", sampleCopy) & 1) != 0;

  return v5;
}

- (unint64_t)_populateObjectBuffer:(id *)buffer range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  Mutable = CFArrayCreateMutable(0, range.length, MEMORY[0x1E695E9C0]);
  if (location < location + length)
  {
    do
    {
      v9 = [(PHBatchFetchingArray *)self _phObjectAtIndex:location];
      CFArrayAppendValue(Mutable, v9);

      ++location;
      --length;
    }

    while (length);
  }

  Count = CFArrayGetCount(Mutable);
  v12.location = 0;
  v12.length = Count;
  CFArrayGetValues(Mutable, v12, buffer);
  CFAutorelease(Mutable);
  return Count;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &state->var2;
  }

  count = self->_count;
  v9 = var0 + count - count;
  if (var0 + count < count)
  {
    v9 = 0;
  }

  v10 = count - v9;
  if (count == v9)
  {
    return 0;
  }

  result = [(PHBatchFetchingArray *)self _populateObjectBuffer:objects range:var0, count - v9];
  state->var0 = v10 + var0;
  state->var1 = objects;
  return result;
}

- (id)subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v18[3] = *MEMORY[0x1E69E9840];
  cache = self->_cache;
  if (cache)
  {
    v7 = self->_batchSize * [(NSCache *)cache countLimit];
  }

  else
  {
    v7 = 10000;
  }

  v17[0] = @"batchSize";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHBatchFetchingArray batchSize](self, "batchSize")}];
  v18[0] = v8;
  v17[1] = @"propertyHint";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_propertyHint];
  v18[1] = v9;
  v17[2] = @"cacheSize";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v18[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = [PHBatchFetchingArray alloc];
  oids = [(PHBatchFetchingArray *)self oids];
  v14 = [oids subarrayWithRange:{location, length}];
  v15 = [(PHBatchFetchingArray *)v12 initWithOIDs:v14 options:v11 dataSource:self->_dataSource];

  return v15;
}

- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = _objectIDForObject(object);
  if (v7)
  {
    oids = [(PHBatchFetchingArray *)self oids];
    v9 = [oids indexOfObject:v7 inRange:{location, length}];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)indexOfObject:(id)object
{
  v4 = _objectIDForObject(object);
  if (v4)
  {
    oids = [(PHBatchFetchingArray *)self oids];
    v6 = [oids indexOfObject:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (BOOL)containsObject:(id)object
{
  v4 = _objectIDForObject(object);
  if (v4)
  {
    oids = [(PHBatchFetchingArray *)self oids];
    v6 = [oids containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  if (self->_count)
  {
    [(PHBatchFetchingArray *)self _populateObjectBuffer:objects range:range.location, range.length];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ (%p) of %lu items", v5, self, self->_count];

  return v6;
}

- (id)objectAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%p: index (%lu) beyond bounds (%lu)", self, index, count}];
    v4 = 0;
  }

  else
  {
    v4 = [(PHBatchFetchingArray *)self _phObjectAtIndex:?];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This array is truly immutable" userInfo:0];
  objc_exception_throw(v3);
}

- (PHBatchFetchingArray)initWithOIDs:(id)ds options:(id)options dataSource:(id)source
{
  dsCopy = ds;
  optionsCopy = options;
  sourceCopy = source;
  v40.receiver = self;
  v40.super_class = PHBatchFetchingArray;
  v13 = [(PHBatchFetchingArray *)&v40 init];
  if (!v13)
  {
    goto LABEL_31;
  }

  if (!sourceCopy && [dsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v13 file:@"PHBatchFetchingArray.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"dataSource || oids.count == 0"}];
  }

  v13->_cacheLock._os_unfair_lock_opaque = 0;
  v13->_lastBatchLock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v13->_oids, ds);
  objc_storeStrong(&v13->_dataSource, source);
  v14 = [optionsCopy objectForKeyedSubscript:@"propertyHint"];
  v15 = v14;
  if (v14)
  {
    integerValue = [v14 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  v13->_propertyHint = integerValue;
  v17 = [optionsCopy objectForKeyedSubscript:@"fetchedObjectBatchPropertySetClass"];

  if (v17)
  {
    v18 = [PHBatchFetchingArrayFetchedClass alloc];
    v19 = [optionsCopy objectForKeyedSubscript:@"fetchedObjectBatchPropertySetClass"];
    v20 = [(PHBatchFetchingArrayFetchedClass *)v18 initWithFetchedPropertySetClass:v19];
LABEL_12:
    overridenFetchResultClass = v13->_overridenFetchResultClass;
    v13->_overridenFetchResultClass = v20;

    goto LABEL_13;
  }

  v21 = [optionsCopy objectForKeyedSubscript:@"fetchedObjectClass"];

  if (v21)
  {
    v22 = [PHBatchFetchingArrayFetchedClass alloc];
    v19 = [optionsCopy objectForKeyedSubscript:@"fetchedObjectClass"];
    v20 = [(PHBatchFetchingArrayFetchedClass *)v22 initWithFetchedObjectClass:v19];
    goto LABEL_12;
  }

LABEL_13:
  v24 = [(NSArray *)v13->_oids count];
  v13->_count = v24;
  if (v24)
  {
    v25 = [optionsCopy objectForKeyedSubscript:@"batchSize"];
    unsignedIntegerValue = [v25 unsignedIntegerValue];

    count = 200;
    if (unsignedIntegerValue)
    {
      count = unsignedIntegerValue;
    }

    if (count >= v13->_count)
    {
      count = v13->_count;
    }

    v13->_batchSize = count;
    v28 = (v13->_count - 1) / count;
    v13->_lastBatchIndex = 0x7FFFFFFFFFFFFFFFLL;
    v29 = dispatch_queue_create("com.apple.batchFetchingArray", 0);
    uuidsQueue = v13->_uuidsQueue;
    v13->_uuidsQueue = v29;

    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v31 = [optionsCopy objectForKeyedSubscript:@"cacheSize"];
      v32 = v31;
      if (v31)
      {
        unsignedIntegerValue2 = [v31 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue2 = 10000;
      }

      v34 = v13->_count;
      if (unsignedIntegerValue2 < v34)
      {
        v34 = unsignedIntegerValue2;
      }

      if (v34)
      {
        v35 = (v34 - 1) / v13->_batchSize + 1;
      }

      else
      {
        v35 = 0;
      }

      v36 = objc_opt_new();
      cache = v13->_cache;
      v13->_cache = v36;

      [(NSCache *)v13->_cache setEvictsObjectsWithDiscardedContent:0];
      [(NSCache *)v13->_cache setCountLimit:v35];
      if (![(PHBatchFetchingArrayFetchedClass *)v13->_overridenFetchResultClass fetchedPropertySetClass])
      {
        [PHSafeNSCacheDelegateReflector setDelegate:v13 forCache:v13->_cache];
      }
    }
  }

LABEL_31:
  return v13;
}

- (PHBatchFetchingArray)initWithObjects:(id)objects options:(id)options photoLibrary:(id)library
{
  v25 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  optionsCopy = options;
  libraryCopy = library;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = objectsCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        objectID = [*(*(&v20 + 1) + 8 * v16) objectID];
        [v11 addObject:objectID];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [(PHBatchFetchingArray *)self initWithOIDs:v11 options:optionsCopy dataSource:libraryCopy];
  return v18;
}

@end
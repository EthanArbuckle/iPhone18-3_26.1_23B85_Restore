@interface PHBatchFetchingArray
- (BOOL)_shouldRetrieveRestrictedAssetOIDsWithSample:(id)a3;
- (BOOL)containsObject:(id)a3;
- (NSSet)oidsSet;
- (NSString)description;
- (PHBatchFetchingArray)initWithOIDs:(id)a3 options:(id)a4 dataSource:(id)a5;
- (PHBatchFetchingArray)initWithObjects:(id)a3 options:(id)a4 photoLibrary:(id)a5;
- (id)_batchForBatchNumber:(unint64_t)a3 shouldUpdateLastBatch:(BOOL)a4;
- (id)_fetchObjectsInBatchNumber:(unint64_t)a3;
- (id)_phObjectAtIndex:(unint64_t)a3;
- (id)_phObjectsForOIDs:(id)a3;
- (id)_prepareObjectsByOIDsFromOIDsToFetch:(id)a3 andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)subarrayWithRange:(_NSRange)a3;
- (unint64_t)_populateObjectBuffer:(id *)a3 range:(_NSRange)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexOfObject:(id)a3;
- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4;
- (unint64_t)test_lastBatchIndex;
- (void)_rememberUUIDsForBatch:(id)a3;
- (void)dealloc;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)prefetchObjectsAtIndexes:(id)a3;
- (void)test_evictBatchNumber:(int64_t)a3;
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

- (void)prefetchObjectsAtIndexes:(id)a3
{
  v4 = a3;
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
  [v4 enumerateRangesUsingBlock:v6];
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

- (void)test_evictBatchNumber:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSCache *)self->_cache removeObjectForKey:v4];
}

- (void)_rememberUUIDsForBatch:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a3 objectValue];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [v10 uuid];
        v12 = [v10 objectID];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = v4;
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

- (id)_fetchObjectsInBatchNumber:(unint64_t)a3
{
  v34 = *MEMORY[0x1E69E9840];
  batchSize = self->_batchSize;
  v5 = batchSize * a3;
  v6 = batchSize * a3 + batchSize;
  if (v6 >= self->_count)
  {
    count = self->_count;
  }

  else
  {
    count = v6;
  }

  v8 = [(PHBatchFetchingArray *)self oids];
  v9 = count - v5;
  v10 = [v8 subarrayWithRange:{v5, count - v5}];

  if (kdebug_is_enabled())
  {
    v11 = [v10 firstObject];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [v14 entity];
    v16 = [v15 name];

    v17 = PLPhotoKitGetLog();
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v21 = self->_count;
      v26 = 138413058;
      v27 = v16;
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

- (id)_batchForBatchNumber:(unint64_t)a3 shouldUpdateLastBatch:(BOOL)a4
{
  v4 = a4;
  v7 = self;
  os_unfair_lock_lock(&self->_lastBatchLock);
  lastBatchIndex = v7->_lastBatchIndex;
  v9 = v7->_lastBatch;
  os_unfair_lock_unlock(&v7->_lastBatchLock);

  if (lastBatchIndex == a3)
  {
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  os_unfair_lock_lock(&v7->_cacheLock);
  cache = v7->_cache;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12 = [(NSCache *)cache objectForKey:v11];

  if (!v12)
  {
    v13 = objc_initWeak(&location, v7);

    v14 = objc_alloc(MEMORY[0x1E69BF270]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__PHBatchFetchingArray__batchForBatchNumber_shouldUpdateLastBatch___block_invoke;
    v22[3] = &unk_1E75A9EE8;
    objc_copyWeak(v23, &location);
    v23[1] = a3;
    v12 = [v14 initWithBlock:v22];
    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
    v15 = v7->_cache;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSCache *)v15 setObject:v12 forKey:v16];
  }

  os_unfair_lock_unlock(&v7->_cacheLock);
  v17 = [v12 objectValue];
  v9 = v17;
  if (v4)
  {
    v18 = v17;
    v19 = v7;
    os_unfair_lock_lock(&v7->_lastBatchLock);
    v19->_lastBatchIndex = a3;
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

- (id)_phObjectAtIndex:(unint64_t)a3
{
  v5 = a3 / self->_batchSize;
  v6 = [(PHBatchFetchingArray *)self _batchForBatchNumber:v5 shouldUpdateLastBatch:1];
  v7 = [v6 objectAtIndex:a3 - self->_batchSize * v5];

  return v7;
}

- (id)_prepareObjectsByOIDsFromOIDsToFetch:(id)a3 andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [v7 count];
  if (v9 < [v6 count] && -[PHBatchFetchingArray _shouldRetrieveRestrictedAssetOIDsWithSample:](self, "_shouldRetrieveRestrictedAssetOIDsWithSample:", v6))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v6];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __121__PHBatchFetchingArray__prepareObjectsByOIDsFromOIDsToFetch_andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects___block_invoke;
    v31 = &unk_1E75AAEB0;
    v32 = self;
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
  v12 = v7;
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
        v18 = [v17 objectID];
        [v8 setObject:v17 forKey:v18];
        [v11 removeObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    dataSource = self->_dataSource;
    v20 = [v11 allObjects];
    v21 = [(PHBatchFetchingArrayDataSource *)dataSource bfa_fetchUUIDsForRestrictedOIDs:v20];

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

- (id)_phObjectsForOIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  if ([v4 count])
  {
    v6 = [(PHBatchFetchingArrayFetchedClass *)self->_overridenFetchResultClass fetchedPropertySetClass];
    dataSource = self->_dataSource;
    if (v6)
    {
      [(PHBatchFetchingArrayDataSource *)dataSource bfa_fetchedObjectsForOIDs:v4 propertySetClass:[(PHBatchFetchingArrayFetchedClass *)self->_overridenFetchResultClass fetchedPropertySetClass]];
    }

    else
    {
      [(PHBatchFetchingArrayDataSource *)dataSource bfa_fetchObjectsForOIDs:v4 propertyHint:self->_propertyHint overrideResultsWithClass:[(PHBatchFetchingArrayFetchedClass *)self->_overridenFetchResultClass fetchedObjectClass]];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PHBatchFetchingArray *)self _prepareObjectsByOIDsFromOIDsToFetch:v4 andUpdateUUIDsByOIDsForRestrictedObjectsUsingFetchedObjects:v8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__PHBatchFetchingArray__phObjectsForOIDs___block_invoke;
  v15[3] = &unk_1E75A9EC0;
  v16 = v9;
  v17 = self;
  v10 = v5;
  v18 = v10;
  v11 = v9;
  [v4 enumerateObjectsUsingBlock:v15];
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

- (BOOL)_shouldRetrieveRestrictedAssetOIDsWithSample:(id)a3
{
  v4 = a3;
  v5 = [v4 count] && (-[PHBatchFetchingArrayDataSource bfa_supportsPrivacyRestrictionsForOIDs:](self->_dataSource, "bfa_supportsPrivacyRestrictionsForOIDs:", v4) & 1) != 0;

  return v5;
}

- (unint64_t)_populateObjectBuffer:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  Mutable = CFArrayCreateMutable(0, a4.length, MEMORY[0x1E695E9C0]);
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
  CFArrayGetValues(Mutable, v12, a3);
  CFAutorelease(Mutable);
  return Count;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &a3->var2;
  }

  count = self->_count;
  v9 = var0 + a5 - count;
  if (var0 + a5 < count)
  {
    v9 = 0;
  }

  v10 = a5 - v9;
  if (a5 == v9)
  {
    return 0;
  }

  result = [(PHBatchFetchingArray *)self _populateObjectBuffer:a4 range:var0, a5 - v9];
  a3->var0 = v10 + var0;
  a3->var1 = a4;
  return result;
}

- (id)subarrayWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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
  v13 = [(PHBatchFetchingArray *)self oids];
  v14 = [v13 subarrayWithRange:{location, length}];
  v15 = [(PHBatchFetchingArray *)v12 initWithOIDs:v14 options:v11 dataSource:self->_dataSource];

  return v15;
}

- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = _objectIDForObject(a3);
  if (v7)
  {
    v8 = [(PHBatchFetchingArray *)self oids];
    v9 = [v8 indexOfObject:v7 inRange:{location, length}];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = _objectIDForObject(a3);
  if (v4)
  {
    v5 = [(PHBatchFetchingArray *)self oids];
    v6 = [v5 indexOfObject:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (BOOL)containsObject:(id)a3
{
  v4 = _objectIDForObject(a3);
  if (v4)
  {
    v5 = [(PHBatchFetchingArray *)self oids];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  if (self->_count)
  {
    [(PHBatchFetchingArray *)self _populateObjectBuffer:a3 range:a4.location, a4.length];
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

- (id)objectAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%p: index (%lu) beyond bounds (%lu)", self, a3, count}];
    v4 = 0;
  }

  else
  {
    v4 = [(PHBatchFetchingArray *)self _phObjectAtIndex:?];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This array is truly immutable" userInfo:0];
  objc_exception_throw(v3);
}

- (PHBatchFetchingArray)initWithOIDs:(id)a3 options:(id)a4 dataSource:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v40.receiver = self;
  v40.super_class = PHBatchFetchingArray;
  v13 = [(PHBatchFetchingArray *)&v40 init];
  if (!v13)
  {
    goto LABEL_31;
  }

  if (!v12 && [v10 count])
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:v13 file:@"PHBatchFetchingArray.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"dataSource || oids.count == 0"}];
  }

  v13->_cacheLock._os_unfair_lock_opaque = 0;
  v13->_lastBatchLock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v13->_oids, a3);
  objc_storeStrong(&v13->_dataSource, a5);
  v14 = [v11 objectForKeyedSubscript:@"propertyHint"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 integerValue];
  }

  else
  {
    v16 = 2;
  }

  v13->_propertyHint = v16;
  v17 = [v11 objectForKeyedSubscript:@"fetchedObjectBatchPropertySetClass"];

  if (v17)
  {
    v18 = [PHBatchFetchingArrayFetchedClass alloc];
    v19 = [v11 objectForKeyedSubscript:@"fetchedObjectBatchPropertySetClass"];
    v20 = [(PHBatchFetchingArrayFetchedClass *)v18 initWithFetchedPropertySetClass:v19];
LABEL_12:
    overridenFetchResultClass = v13->_overridenFetchResultClass;
    v13->_overridenFetchResultClass = v20;

    goto LABEL_13;
  }

  v21 = [v11 objectForKeyedSubscript:@"fetchedObjectClass"];

  if (v21)
  {
    v22 = [PHBatchFetchingArrayFetchedClass alloc];
    v19 = [v11 objectForKeyedSubscript:@"fetchedObjectClass"];
    v20 = [(PHBatchFetchingArrayFetchedClass *)v22 initWithFetchedObjectClass:v19];
    goto LABEL_12;
  }

LABEL_13:
  v24 = [(NSArray *)v13->_oids count];
  v13->_count = v24;
  if (v24)
  {
    v25 = [v11 objectForKeyedSubscript:@"batchSize"];
    v26 = [v25 unsignedIntegerValue];

    count = 200;
    if (v26)
    {
      count = v26;
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
      v31 = [v11 objectForKeyedSubscript:@"cacheSize"];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 unsignedIntegerValue];
      }

      else
      {
        v33 = 10000;
      }

      v34 = v13->_count;
      if (v33 < v34)
      {
        v34 = v33;
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

- (PHBatchFetchingArray)initWithObjects:(id)a3 options:(id)a4 photoLibrary:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v8;
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

        v17 = [*(*(&v20 + 1) + 8 * v16) objectID];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [(PHBatchFetchingArray *)self initWithOIDs:v11 options:v9 dataSource:v10];
  return v18;
}

@end
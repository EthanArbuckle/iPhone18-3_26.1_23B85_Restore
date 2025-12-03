@interface ATXHistogramTable
- (ATXHistogramTable)initWithCoder:(id)coder;
- (ATXHistogramTable)initWithDatastore:(id)datastore;
- (ATXHistogramTable)initWithDatastore:(id)datastore blobType:(int64_t)type;
- (ATXHistogramTable)initWithDict:(id)dict usedIds:(id)ids datastore:(id)datastore blobType:(int64_t)type;
- (BOOL)lookup:(id)lookup into:(unsigned __int16 *)into;
- (id).cxx_construct;
- (id)allKeys;
- (id)allKeysFilteredBy:(id)by;
- (id)histogramTableDict;
- (unsigned)intern:(id)intern;
- (unsigned)remove:(id)remove;
- (void)clear;
- (void)encodeWithCoder:(id)coder;
- (void)flush;
@end

@implementation ATXHistogramTable

- (ATXHistogramTable)initWithDatastore:(id)datastore
{
  datastoreCopy = datastore;
  if (!datastoreCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:652 description:{@"Invalid parameter not satisfying: %@", @"datastore"}];
  }

  v6 = [(ATXHistogramTable *)self initWithDict:0 usedIds:0 datastore:datastoreCopy blobType:1];

  return v6;
}

- (ATXHistogramTable)initWithDatastore:(id)datastore blobType:(int64_t)type
{
  datastoreCopy = datastore;
  if (!datastoreCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"datastore"}];
  }

  v8 = [(ATXHistogramTable *)self initWithDict:0 usedIds:0 datastore:datastoreCopy blobType:type];

  return v8;
}

- (ATXHistogramTable)initWithDict:(id)dict usedIds:(id)ids datastore:(id)datastore blobType:(int64_t)type
{
  dictCopy = dict;
  idsCopy = ids;
  datastoreCopy = datastore;
  v19.receiver = self;
  v19.super_class = ATXHistogramTable;
  v12 = [(ATXHistogramTable *)&v19 init];
  v13 = v12;
  if (v12)
  {
    dict = v12->_private_unsafeGuardedData.dict;
    v12->_private_unsafeGuardedData.dict = 0;

    usedIds = v13->_private_unsafeGuardedData.usedIds;
    v13->_private_unsafeGuardedData.usedIds = 0;

    prevKey = v13->_private_unsafeGuardedData.prevKey;
    v13->_private_unsafeGuardedData.prevKey = 0;

    v13->_private_unsafeGuardedData.prevEventId = 0;
    operator new();
  }

  v17 = 0;

  return v17;
}

void __61__ATXHistogramTable_initWithDict_usedIds_datastore_blobType___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("ATXHistogramTable-backgroundSaver", v2);
  v4 = [ATXHistogramTable initWithDict:usedIds:datastore:blobType:]::_pasExprOnceResult;
  [ATXHistogramTable initWithDict:usedIds:datastore:blobType:]::_pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __61__ATXHistogramTable_initWithDict_usedIds_datastore_blobType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained flush];
}

- (unsigned)intern:(id)intern
{
  internCopy = intern;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v7 = [*(*ptr + 16) isEqual:internCopy];
  v8 = *ptr;
  if (v7)
  {
    v9 = *(v8 + 24);
    *(v18 + 12) = v9;
  }

  else
  {
    v10 = [*v8 objectForKeyedSubscript:internCopy];
    v11 = v10;
    if (v10)
    {
      unsignedShortValue = [v10 unsignedShortValue];
      *(v18 + 12) = unsignedShortValue;
    }

    else
    {
      v13 = *(*ptr + 8);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __28__ATXHistogramTable_intern___block_invoke;
      v16[3] = &unk_27859DF38;
      v16[4] = &v17;
      [v13 enumerateRangesUsingBlock:v16];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v18 + 12)];
      [**ptr setObject:v14 forKeyedSubscript:internCopy];

      [*(*ptr + 8) addIndex:*(v18 + 12)];
      [(ATXBackgroundSaver *)self->_saver scheduleSave];
    }

    objc_storeStrong((*ptr + 16), intern);
    *(*ptr + 24) = *(v18 + 12);

    v9 = *(v18 + 12);
  }

  pthread_mutex_unlock((ptr + 8));
  _Block_object_dispose(&v17, 8);

  return v9;
}

uint64_t __28__ATXHistogramTable_intern___block_invoke(uint64_t result, __int16 a2, __int16 a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2 + a3;
  *a4 = 1;
  return result;
}

- (BOOL)lookup:(id)lookup into:(unsigned __int16 *)into
{
  lookupCopy = lookup;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if ([*(*ptr + 16) isEqual:lookupCopy])
  {
    if (into)
    {
      *into = *(*ptr + 24);
    }

    v9 = 1;
  }

  else
  {
    v10 = [**ptr objectForKeyedSubscript:lookupCopy];
    v11 = v10;
    v9 = v10 != 0;
    if (v10)
    {
      unsignedShortValue = [v10 unsignedShortValue];
      v13 = unsignedShortValue;
      if (into)
      {
        *into = unsignedShortValue;
      }

      objc_storeStrong((*ptr + 16), lookup);
      *(*ptr + 24) = v13;
    }
  }

  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (id)allKeysFilteredBy:(id)by
{
  v22 = *MEMORY[0x277D85DE8];
  byCopy = by;
  if (!byCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"filter"}];
  }

  v6 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = **ptr;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (byCopy[2](byCopy, v12))
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = v6;
  pthread_mutex_unlock((ptr + 8));

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)allKeys
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  allKeys = [**ptr allKeys];
  pthread_mutex_unlock((ptr + 8));

  return allKeys;
}

- (unsigned)remove:(id)remove
{
  removeCopy = remove;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v6 = [**ptr objectForKeyedSubscript:removeCopy];
  if (v6)
  {
    [**ptr removeObjectForKey:removeCopy];
    [*(*ptr + 8) removeIndex:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  if ([*(*ptr + 16) isEqual:removeCopy])
  {
    v7 = *(*ptr + 16);
    *(*ptr + 16) = 0;

    *(*ptr + 24) = 0;
  }

  pthread_mutex_unlock((ptr + 8));
  if (v6)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (void)clear
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  [**ptr removeAllObjects];
  [*(*ptr + 8) removeAllIndexes];
  [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  v4 = *(*ptr + 16);
  *(*ptr + 16) = 0;

  *(*ptr + 24) = 0;
  pthread_mutex_unlock((ptr + 8));
}

- (ATXHistogramTable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"dict"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usedIds"];
  v11 = [(ATXHistogramTable *)self initWithDict:v9 usedIds:v10 datastore:0 blobType:1];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = [**ptr mutableCopy];
  [coderCopy encodeObject:v5 forKey:@"dict"];

  v6 = [*(*ptr + 8) mutableCopy];
  [coderCopy encodeObject:v6 forKey:@"usedIds"];

  pthread_mutex_unlock((ptr + 8));
}

- (void)flush
{
  if (self->_datastore)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v4 encodeObject:self forKey:*MEMORY[0x277CCA308]];
    datastore = self->_datastore;
    encodedData = [v4 encodedData];
    [(_ATXDataStore *)datastore writeBlob:encodedData type:self->_blobType expirationDate:0];

    objc_autoreleasePoolPop(v3);
  }
}

- (id)histogramTableDict
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v3 = [**ptr copy];
  pthread_mutex_unlock((ptr + 8));

  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  return self;
}

- (void)initWithDict:usedIds:datastore:blobType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
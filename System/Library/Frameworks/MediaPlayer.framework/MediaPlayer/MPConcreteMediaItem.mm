@interface MPConcreteMediaItem
+ (id)concreteMediaItemWithPersistentID:(unint64_t)d;
+ (id)concreteMediaItemWithPersistentID:(unint64_t)d library:(id)library;
+ (id)createUncachedConcreteMediaItemWithPersistentID:(unint64_t)d library:(id)library;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (MPConcreteMediaItem)init;
- (MPConcreteMediaItem)initWithCoder:(id)coder;
- (MPConcreteMediaItem)initWithPersistentID:(unint64_t)d;
- (MPConcreteMediaItem)initWithPersistentID:(unint64_t)d library:(id)library;
- (id)_initWithPersistentID:(unint64_t)d library:(id)library propertiesCache:(id)cache;
- (id)_nonBatchableOrCachedValueForProperty:(id)property needsFetch:(BOOL *)fetch;
- (id)_tokenBinaryIdentifierAsString;
- (id)description;
- (id)valueForProperty:(id)property;
- (id)valuesForProperties:(id)properties;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block;
- (void)incrementPlayCount;
- (void)setValue:(id)value forProperty:(id)property withCompletionBlock:(id)block;
@end

@implementation MPConcreteMediaItem

- (void)incrementPlayCount
{
  library = self->_library;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MPConcreteMediaItem_incrementPlayCount__block_invoke;
  v3[3] = &unk_1E7679798;
  v3[4] = self;
  [(MPMediaLibrary *)library performTransactionWithBlock:v3];
}

uint64_t __41__MPConcreteMediaItem_incrementPlayCount__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlayCount:{objc_msgSend(*(a1 + 32), "playCount") + 1}];
  [*(a1 + 32) setPlayCountSinceSync:{objc_msgSend(*(a1 + 32), "playCountSinceSync") + 1}];
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setLastPlayedDate:v2];

  return 1;
}

- (void)enumerateValuesForProperties:(id)properties usingBlock:(id)block
{
  propertiesCopy = properties;
  blockCopy = block;
  v8 = [MEMORY[0x1E695DFA8] set];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__MPConcreteMediaItem_enumerateValuesForProperties_usingBlock___block_invoke;
  v28[3] = &unk_1E7679748;
  v28[4] = self;
  v9 = v8;
  v29 = v9;
  v10 = blockCopy;
  v30 = v10;
  v31 = &v32;
  [propertiesCopy enumerateObjectsUsingBlock:v28];
  if ((v33[3] & 1) == 0 && [v9 count])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__18853;
    v26 = __Block_byref_object_dispose__18854;
    v27 = 0;
    libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
    persistentID = [(MPConcreteMediaItem *)self persistentID];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__MPConcreteMediaItem_enumerateValuesForProperties_usingBlock___block_invoke_2;
    v19[3] = &unk_1E76796F8;
    v19[4] = self;
    v13 = v9;
    v20 = v13;
    v21 = &v22;
    [libraryDataProvider loadProperties:v13 ofItemWithIdentifier:persistentID completionBlock:v19];

    v14 = v23[5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__MPConcreteMediaItem_enumerateValuesForProperties_usingBlock___block_invoke_3;
    v16[3] = &unk_1E7679770;
    v18 = v10;
    v15 = v14;
    v17 = v15;
    [v13 enumerateObjectsUsingBlock:v16];

    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v32, 8);
}

void __63__MPConcreteMediaItem_enumerateValuesForProperties_usingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = 1;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _nonBatchableOrCachedValueForProperty:v6 needsFetch:&v8];
  if (v8 == 1)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  *(*(*(a1 + 56) + 8) + 24) = *a3;
}

void __63__MPConcreteMediaItem_enumerateValuesForProperties_usingBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  [*(a1[4] + 40) cachePropertyValues:v3 forProperties:a1[5] persistValueInBackgroundBlock:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __63__MPConcreteMediaItem_enumerateValuesForProperties_usingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectForKey:v6];
  (*(v4 + 16))(v4, v6, v7, a3);
}

- (void)setValue:(id)value forProperty:(id)property withCompletionBlock:(id)block
{
  valueCopy = value;
  propertyCopy = property;
  blockCopy = block;
  libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if ([(MPMediaLibrary *)self->_library isDeviceLibrary])
    {
      v13 = [(MPConcreteMediaItem *)self valueForProperty:propertyCopy];
      v14 = [v13 isEqual:valueCopy];

      if (v14)
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy, 1, 0);
        }

        goto LABEL_17;
      }
    }

    persistentID = [(MPConcreteMediaItem *)self persistentID];
    libraryDataProvider2 = [(MPMediaLibrary *)self->_library libraryDataProvider];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__MPConcreteMediaItem_setValue_forProperty_withCompletionBlock___block_invoke;
    aBlock[3] = &unk_1E7679720;
    v17 = libraryDataProvider2;
    v23 = v17;
    v25 = persistentID;
    v18 = blockCopy;
    v24 = v18;
    v19 = _Block_copy(aBlock);
    if (v18 && [(MPMediaLibrary *)self->_library isCurrentThreadInTransaction])
    {
      propertiesCache = self->_propertiesCache;
      if (propertiesCache)
      {
        [(MPConcreteMediaEntityPropertiesCache *)propertiesCache cacheValue:valueCopy forProperty:propertyCopy persistValueInBackgroundBlock:0];
      }
    }

    else
    {
      v21 = self->_propertiesCache;
      if (v21)
      {
        [(MPConcreteMediaEntityPropertiesCache *)v21 cacheValue:valueCopy forProperty:propertyCopy persistValueInBackgroundBlock:v19];
LABEL_16:

        goto LABEL_17;
      }
    }

    (*(v19 + 2))(v19, valueCopy, propertyCopy);
    goto LABEL_16;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0, 0);
  }

LABEL_17:
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__MPConcreteMediaItem_setValue_forProperty___block_invoke;
  v11[3] = &unk_1E76798B0;
  v9 = v8;
  v12 = v9;
  v13 = &v14;
  [(MPConcreteMediaItem *)self setValue:valueCopy forProperty:propertyCopy withCompletionBlock:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

intptr_t __44__MPConcreteMediaItem_setValue_forProperty___block_invoke(uint64_t a1, char a2)
{
  result = dispatch_semaphore_signal(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = a2;
  return result;
}

- (id)valuesForProperties:(id)properties
{
  v32 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__18853;
  v29 = __Block_byref_object_dispose__18854;
  v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = propertiesCopy;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v11 = [(MPConcreteMediaItem *)self _nonBatchableOrCachedValueForProperty:v10 needsFetch:&v20];
        v12 = v11;
        if (v20 == 1)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x1E695DFA8] set];
          }

          [v6 addObject:v10];
        }

        else if (v11)
        {
          [v26[5] setObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v7);
  }

  if ([v6 count])
  {
    libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
    persistentID = [(MPConcreteMediaItem *)self persistentID];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__MPConcreteMediaItem_valuesForProperties___block_invoke;
    v17[3] = &unk_1E76796F8;
    v17[4] = self;
    v18 = v6;
    v19 = &v25;
    [libraryDataProvider loadProperties:v18 ofItemWithIdentifier:persistentID completionBlock:v17];
  }

  v15 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v15;
}

void __43__MPConcreteMediaItem_valuesForProperties___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 32) + 40) cachePropertyValues:v3 forProperties:*(a1 + 40) persistValueInBackgroundBlock:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 objectForKey:{v9, v11}];
        if (v10)
        {
          [*(*(*(a1 + 48) + 8) + 40) setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  v20 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__18853;
  v18 = __Block_byref_object_dispose__18854;
  v19 = [(MPConcreteMediaItem *)self _nonBatchableOrCachedValueForProperty:propertyCopy needsFetch:&v20];
  if (v20 == 1)
  {
    libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:propertyCopy];
    persistentID = [(MPConcreteMediaItem *)self persistentID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__MPConcreteMediaItem_valueForProperty___block_invoke;
    v10[3] = &unk_1E76796F8;
    v13 = &v14;
    v11 = propertyCopy;
    selfCopy = self;
    [libraryDataProvider loadProperties:v6 ofItemWithIdentifier:persistentID completionBlock:v10];

    v8 = v15[5];
  }

  else
  {
    v8 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __40__MPConcreteMediaItem_valueForProperty___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKey:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[4];
  v7 = *(a1[5] + 40);
  v8 = *(*(a1[6] + 8) + 40);

  return [v7 cacheValue:v8 forProperty:v6 persistValueInBackgroundBlock:0];
}

- (id)_nonBatchableOrCachedValueForProperty:(id)property needsFetch:(BOOL *)fetch
{
  propertyCopy = property;
  v7 = propertyCopy;
  if (fetch)
  {
    *fetch = 0;
  }

  if ([(__CFString *)propertyCopy isEqualToString:@"persistentID"])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_persistentID];
    goto LABEL_24;
  }

  v18 = 0;
  v9 = [(MPConcreteMediaEntityPropertiesCache *)self->_propertiesCache valueForProperty:v7 isCached:&v18];
  v10 = v9;
  if (v18 != 1)
  {
    if (v7 == @"artwork" || (v11 = [(__CFString *)v7 hash], v11 == __MPMediaItemPropertyArtworkHash) && [(__CFString *)v7 isEqualToString:@"artwork"])
    {
      artworkCatalog = [(MPMediaItem *)self artworkCatalog];
      if (artworkCatalog)
      {
        v13 = [[MPConcreteMediaItemArtwork alloc] initWithArtworkCatalog:artworkCatalog];
LABEL_17:
        v8 = v13;
LABEL_19:

        goto LABEL_23;
      }
    }

    else
    {
      if (v7 != @"playbackStoreID")
      {
        v14 = [(__CFString *)v7 hash];
        if (v14 != __MPMediaItemPropertyPlaybackStoreIDHash || ![(__CFString *)v7 isEqualToString:@"playbackStoreID"])
        {
          if (fetch)
          {
            libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
            *fetch = libraryDataProvider != 0;
          }

          v8 = 0;
          goto LABEL_23;
        }
      }

      v15 = [(MPConcreteMediaItem *)self valueForProperty:@"subscriptionStoreItemAdamID"];
      artworkCatalog = v15;
      if (v15)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v15, "longLongValue")];
        goto LABEL_17;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

  v8 = v9;
LABEL_23:

LABEL_24:

  return v8;
}

- (id)_tokenBinaryIdentifierAsString
{
  v2 = MEMORY[0x1E69B3538];
  persistentID = self->_persistentID;
  ml3Library = [(MPMediaLibrary *)self->_library ml3Library];
  libraryUID = [ml3Library libraryUID];
  v6 = [v2 URLForEntityWithPersistentID:persistentID libraryUID:libraryUID];
  absoluteString = [v6 absoluteString];

  return absoluteString;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeInt64:-[MPConcreteMediaItem persistentID](self forKey:{"persistentID"), @"MPPersistentID"}];
    [coderCopy encodeObject:self->_library forKey:@"MPLibrary"];
  }

  else
  {
    persistentID = [(MPConcreteMediaItem *)self persistentID];
    [coderCopy encodeValueOfObjCType:"Q" at:&persistentID];
  }
}

- (MPConcreteMediaItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPLibrary"];
  if (v5)
  {
    v6 = +[MPConcreteMediaItem concreteMediaItemWithPersistentID:library:](MPConcreteMediaItem, "concreteMediaItemWithPersistentID:library:", [coderCopy decodeInt64ForKey:@"MPPersistentID"], v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MPConcreteMediaItem;
  v3 = [(MPConcreteMediaItem *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %llu", self->_persistentID];

  return v4;
}

- (void)dealloc
{
  libraryDataProvider = [(MPMediaLibrary *)self->_library libraryDataProvider];
  entityCache = [libraryDataProvider entityCache];
  [entityCache removeEntityWithIdentifier:self->_persistentID dataProviderEntityClass:{-[MPConcreteMediaEntityPropertiesCache dataProviderEntityClass](self->_propertiesCache, "dataProviderEntityClass")}];

  v5.receiver = self;
  v5.super_class = MPConcreteMediaItem;
  [(MPConcreteMediaItem *)&v5 dealloc];
}

- (id)_initWithPersistentID:(unint64_t)d library:(id)library propertiesCache:(id)cache
{
  libraryCopy = library;
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = MPConcreteMediaItem;
  v11 = [(MPConcreteMediaItem *)&v16 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.MediaPlayer.MPConcreteMediaItem.utilitySerialQueue", v12);
    utilitySerialQueue = v11->_utilitySerialQueue;
    v11->_utilitySerialQueue = v13;

    v11->_persistentID = d;
    objc_storeStrong(&v11->_library, library);
    objc_storeStrong(&v11->_propertiesCache, cache);
    if (_initWithPersistentID_library_propertiesCache__onceToken != -1)
    {
      dispatch_once(&_initWithPersistentID_library_propertiesCache__onceToken, &__block_literal_global_18909);
    }
  }

  return v11;
}

uint64_t __69__MPConcreteMediaItem__initWithPersistentID_library_propertiesCache___block_invoke()
{
  __MPMediaItemPropertyArtworkHash = [@"artwork" hash];
  result = [@"playbackStoreID" hash];
  __MPMediaItemPropertyPlaybackStoreIDHash = result;
  return result;
}

- (MPConcreteMediaItem)initWithPersistentID:(unint64_t)d library:(id)library
{
  v5 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:d library:library];

  return v5;
}

- (MPConcreteMediaItem)initWithPersistentID:(unint64_t)d
{
  v4 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:d];

  return v4;
}

- (MPConcreteMediaItem)init
{
  [MEMORY[0x1E695DF30] raise:@"MPConcreteMediaItemInitException" format:{@"-init is not supported, use -initWithPersistentID:library:"}];

  return 0;
}

+ (id)createUncachedConcreteMediaItemWithPersistentID:(unint64_t)d library:(id)library
{
  libraryCopy = library;
  v6 = [[MPConcreteMediaItem alloc] _initWithPersistentID:d library:libraryCopy propertiesCache:0];

  return v6;
}

+ (id)concreteMediaItemWithPersistentID:(unint64_t)d library:(id)library
{
  libraryCopy = library;
  libraryDataProvider = [libraryCopy libraryDataProvider];
  entityCache = [libraryDataProvider entityCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MPConcreteMediaItem_concreteMediaItemWithPersistentID_library___block_invoke;
  v11[3] = &unk_1E76796C8;
  v12 = libraryCopy;
  dCopy = d;
  v8 = libraryCopy;
  v9 = [entityCache itemWithIdentifier:d loadEntityBlock:v11];

  return v9;
}

id __65__MPConcreteMediaItem_concreteMediaItemWithPersistentID_library___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MPConcreteMediaItem alloc] _initWithPersistentID:*(a1 + 40) library:*(a1 + 32) propertiesCache:v3];

  return v4;
}

+ (id)concreteMediaItemWithPersistentID:(unint64_t)d
{
  v4 = +[MPMediaLibrary defaultMediaLibrary];
  v5 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:d library:v4];

  return v5;
}

@end
@interface ZhuGeCache
- (BOOL)setCache:(id)cache forKey:(id)key withError:(id *)error;
- (ZhuGeCache)initWithName:(id)name andCapacity:(id)capacity andCacheType:(Class)type;
- (id)getCacheForKey:(id)key;
- (void)clearCache;
- (void)delCacheForKey:(id)key;
@end

@implementation ZhuGeCache

- (ZhuGeCache)initWithName:(id)name andCapacity:(id)capacity andCacheType:(Class)type
{
  nameCopy = name;
  capacityCopy = capacity;
  v18.receiver = self;
  v18.super_class = ZhuGeCache;
  v11 = [(ZhuGeCache *)&v18 init];
  v12 = v11;
  if (v11)
  {
    initPthreadRecursiveMutex(&v11->aRecursiveMutex);
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v12->_capacity, capacity);
    objc_storeStrong(&v12->_cacheType, type);
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSNumber integerValue](v12->_capacity, "integerValue")}];
    cacheList = v12->_cacheList;
    v12->_cacheList = v13;

    v15 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSNumber integerValue](v12->_capacity, "integerValue")}];
    cacheDict = v12->_cacheDict;
    v12->_cacheDict = v15;
  }

  return v12;
}

- (void)clearCache
{
  pthread_mutex_lock(&self->aRecursiveMutex);
  cacheDict = [(ZhuGeCache *)self cacheDict];
  [cacheDict removeAllObjects];

  cacheList = [(ZhuGeCache *)self cacheList];
  [cacheList removeAllObjects];

  pthread_mutex_unlock(&self->aRecursiveMutex);
}

- (void)delCacheForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->aRecursiveMutex);
  if (keyCopy)
  {
    cacheList = [(ZhuGeCache *)self cacheList];
    v5 = [cacheList containsObject:keyCopy];

    if (v5)
    {
      cacheDict = [(ZhuGeCache *)self cacheDict];
      [cacheDict removeObjectForKey:keyCopy];

      cacheList2 = [(ZhuGeCache *)self cacheList];
      [cacheList2 removeObject:keyCopy];
    }
  }

  pthread_mutex_unlock(&self->aRecursiveMutex);
}

- (id)getCacheForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->aRecursiveMutex);
  cacheList = [(ZhuGeCache *)self cacheList];
  v6 = [cacheList containsObject:keyCopy];

  if (v6)
  {
    cacheDict = [(ZhuGeCache *)self cacheDict];
    v8 = [cacheDict objectForKeyedSubscript:keyCopy];

    cacheList2 = [(ZhuGeCache *)self cacheList];
    firstObject = [cacheList2 firstObject];
    v11 = [firstObject isEqualToString:keyCopy];

    if (v11)
    {
      cacheList3 = [(ZhuGeCache *)self cacheList];
      [cacheList3 removeObject:keyCopy];

      cacheList4 = [(ZhuGeCache *)self cacheList];
      [cacheList4 addObject:keyCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock(&self->aRecursiveMutex);

  return v8;
}

- (BOOL)setCache:(id)cache forKey:(id)key withError:(id *)error
{
  cacheCopy = cache;
  keyCopy = key;
  pthread_mutex_lock(&self->aRecursiveMutex);
  if (!error)
  {
    name = [(ZhuGeCache *)self name];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 91, @"In %@, error p-pointer is nil!", v29, v30, v31, name);

    v27 = 0;
    goto LABEL_19;
  }

  *error = 0;
  if (!cacheCopy)
  {
    name2 = [(ZhuGeCache *)self name];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 97, @"In %@, aCache pointer is nil!", v33, v34, v35, name2);
LABEL_17:

    v39 = 45;
LABEL_18:
    [NSError errorWithZhuGeErrorCode:v39 underlyingError:0];
    *error = v27 = 0;
    goto LABEL_19;
  }

  if (!keyCopy)
  {
    name2 = [(ZhuGeCache *)self name];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 103, @"In %@, aKey pointer is nil!", v36, v37, v38, name2);
    goto LABEL_17;
  }

  cacheList = [(ZhuGeCache *)self cacheList];
  v11 = [cacheList containsObject:keyCopy];

  if (v11)
  {
    [(ZhuGeCache *)self delCacheForKey:keyCopy];
  }

  if ([(ZhuGeCache *)self cacheType])
  {
    [(ZhuGeCache *)self cacheType];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      name3 = [(ZhuGeCache *)self name];
      objc_opt_class();
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 115, @"In %@, key %@ got a wrong cache class type %@!", v42, v43, v44, name3);

      v39 = 9;
      goto LABEL_18;
    }
  }

  capacity = [(ZhuGeCache *)self capacity];
  if (capacity)
  {
    v13 = capacity;
    cacheList2 = [(ZhuGeCache *)self cacheList];
    v15 = [cacheList2 count];
    capacity2 = [(ZhuGeCache *)self capacity];
    intValue = [capacity2 intValue];

    if (v15 >= intValue)
    {
      cacheList3 = [(ZhuGeCache *)self cacheList];
      v19 = [cacheList3 count];
      capacity3 = [(ZhuGeCache *)self capacity];
      intValue2 = [capacity3 intValue];

      if (v19 - intValue2 + 1 >= 1)
      {
        v22 = v19 - intValue2 + 2;
        do
        {
          cacheList4 = [(ZhuGeCache *)self cacheList];
          firstObject = [cacheList4 firstObject];
          [(ZhuGeCache *)self delCacheForKey:firstObject];

          --v22;
        }

        while (v22 > 1);
      }
    }
  }

  cacheList5 = [(ZhuGeCache *)self cacheList];
  [cacheList5 addObject:keyCopy];

  cacheDict = [(ZhuGeCache *)self cacheDict];
  [cacheDict setObject:cacheCopy forKeyedSubscript:keyCopy];

  v27 = 1;
LABEL_19:
  pthread_mutex_unlock(&self->aRecursiveMutex);

  return v27;
}

@end
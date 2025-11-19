@interface ZhuGeCache
- (BOOL)setCache:(id)a3 forKey:(id)a4 withError:(id *)a5;
- (ZhuGeCache)initWithName:(id)a3 andCapacity:(id)a4 andCacheType:(Class)a5;
- (id)getCacheForKey:(id)a3;
- (void)clearCache;
- (void)delCacheForKey:(id)a3;
@end

@implementation ZhuGeCache

- (ZhuGeCache)initWithName:(id)a3 andCapacity:(id)a4 andCacheType:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = ZhuGeCache;
  v11 = [(ZhuGeCache *)&v18 init];
  v12 = v11;
  if (v11)
  {
    initPthreadRecursiveMutex(&v11->aRecursiveMutex);
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v12->_capacity, a4);
    objc_storeStrong(&v12->_cacheType, a5);
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
  v3 = [(ZhuGeCache *)self cacheDict];
  [v3 removeAllObjects];

  v4 = [(ZhuGeCache *)self cacheList];
  [v4 removeAllObjects];

  pthread_mutex_unlock(&self->aRecursiveMutex);
}

- (void)delCacheForKey:(id)a3
{
  v8 = a3;
  pthread_mutex_lock(&self->aRecursiveMutex);
  if (v8)
  {
    v4 = [(ZhuGeCache *)self cacheList];
    v5 = [v4 containsObject:v8];

    if (v5)
    {
      v6 = [(ZhuGeCache *)self cacheDict];
      [v6 removeObjectForKey:v8];

      v7 = [(ZhuGeCache *)self cacheList];
      [v7 removeObject:v8];
    }
  }

  pthread_mutex_unlock(&self->aRecursiveMutex);
}

- (id)getCacheForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->aRecursiveMutex);
  v5 = [(ZhuGeCache *)self cacheList];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(ZhuGeCache *)self cacheDict];
    v8 = [v7 objectForKeyedSubscript:v4];

    v9 = [(ZhuGeCache *)self cacheList];
    v10 = [v9 firstObject];
    v11 = [v10 isEqualToString:v4];

    if (v11)
    {
      v12 = [(ZhuGeCache *)self cacheList];
      [v12 removeObject:v4];

      v13 = [(ZhuGeCache *)self cacheList];
      [v13 addObject:v4];
    }
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock(&self->aRecursiveMutex);

  return v8;
}

- (BOOL)setCache:(id)a3 forKey:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  pthread_mutex_lock(&self->aRecursiveMutex);
  if (!a5)
  {
    v28 = [(ZhuGeCache *)self name];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 91, @"In %@, error p-pointer is nil!", v29, v30, v31, v28);

    v27 = 0;
    goto LABEL_19;
  }

  *a5 = 0;
  if (!v8)
  {
    v32 = [(ZhuGeCache *)self name];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 97, @"In %@, aCache pointer is nil!", v33, v34, v35, v32);
LABEL_17:

    v39 = 45;
LABEL_18:
    [NSError errorWithZhuGeErrorCode:v39 underlyingError:0];
    *a5 = v27 = 0;
    goto LABEL_19;
  }

  if (!v9)
  {
    v32 = [(ZhuGeCache *)self name];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 103, @"In %@, aKey pointer is nil!", v36, v37, v38, v32);
    goto LABEL_17;
  }

  v10 = [(ZhuGeCache *)self cacheList];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    [(ZhuGeCache *)self delCacheForKey:v9];
  }

  if ([(ZhuGeCache *)self cacheType])
  {
    [(ZhuGeCache *)self cacheType];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [(ZhuGeCache *)self name];
      objc_opt_class();
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/ZhuGeCache.m", "[ZhuGeCache setCache:forKey:withError:]", 115, @"In %@, key %@ got a wrong cache class type %@!", v42, v43, v44, v41);

      v39 = 9;
      goto LABEL_18;
    }
  }

  v12 = [(ZhuGeCache *)self capacity];
  if (v12)
  {
    v13 = v12;
    v14 = [(ZhuGeCache *)self cacheList];
    v15 = [v14 count];
    v16 = [(ZhuGeCache *)self capacity];
    v17 = [v16 intValue];

    if (v15 >= v17)
    {
      v18 = [(ZhuGeCache *)self cacheList];
      v19 = [v18 count];
      v20 = [(ZhuGeCache *)self capacity];
      v21 = [v20 intValue];

      if (v19 - v21 + 1 >= 1)
      {
        v22 = v19 - v21 + 2;
        do
        {
          v23 = [(ZhuGeCache *)self cacheList];
          v24 = [v23 firstObject];
          [(ZhuGeCache *)self delCacheForKey:v24];

          --v22;
        }

        while (v22 > 1);
      }
    }
  }

  v25 = [(ZhuGeCache *)self cacheList];
  [v25 addObject:v9];

  v26 = [(ZhuGeCache *)self cacheDict];
  [v26 setObject:v8 forKeyedSubscript:v9];

  v27 = 1;
LABEL_19:
  pthread_mutex_unlock(&self->aRecursiveMutex);

  return v27;
}

@end
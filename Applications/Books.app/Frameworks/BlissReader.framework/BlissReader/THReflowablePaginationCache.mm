@interface THReflowablePaginationCache
+ (id)archiveStorageURLForAssetID:(id)d;
+ (id)loadFromArchiveWithAssetID:(id)d bookVersionString:(id)string modificationDate:(id)date;
+ (void)_evictOlderCacheFiles:(id)files;
- (THReflowablePaginationCache)initWithAssetID:(id)d bookVersionString:(id)string modificationDate:(id)date;
- (THReflowablePaginationCache)initWithCoder:(id)coder;
- (id)cachedResultsForKey:(id)key;
- (void)archive;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THReflowablePaginationCache

+ (id)loadFromArchiveWithAssetID:(id)d bookVersionString:(id)string modificationDate:(id)date
{
  if (-[NSUserDefaults BOOLForKey:](+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), "BOOLForKey:", @"BKEpubPaginationCache_DisableCacheLoading") || ![d length])
  {
    return 0;
  }

  v9 = [self archiveStorageURLForAssetID:d];
  v19 = 0;
  if (!v9 || (v10 = [NSData dataWithContentsOfURL:v9 options:0 error:&v19]) == 0)
  {
    v13 = THLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_29D15C();
    }

    return 0;
  }

  v11 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v10 error:&v19];
  if (v11)
  {
    v12 = [v11 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", objc_opt_class(), 0), @"root"}];
  }

  else
  {
    v15 = THLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_29D0F0();
    }

    v12 = 0;
  }

  if (string && (objc_opt_class(), [v12 bookVersionString], !objc_msgSend(string, "isEqualToString:", TSUDynamicCast())) || date && (objc_opt_class(), objc_msgSend(v12, "bookModificationDate"), !objc_msgSend(date, "isEqual:", TSUDynamicCast())))
  {
    v12 = 0;
  }

  uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
  global_queue = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11EA88;
  block[3] = &unk_45AE00;
  block[4] = uRLByDeletingLastPathComponent;
  dispatch_async(global_queue, block);
  return v12;
}

+ (id)archiveStorageURLForAssetID:(id)d
{
  v4 = +[NSFileManager defaultManager];
  v5 = [(NSFileManager *)v4 URLsForDirectory:13 inDomains:1];
  result = [(NSArray *)v5 count];
  if (result)
  {
    v7 = [-[NSArray objectAtIndex:](v5 objectAtIndex:{0), "URLByAppendingPathComponent:", @"PaginationCache"}];
    v9 = 0;
    v8 = [(NSFileManager *)v4 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v9];
    result = 0;
    if (v8)
    {
      return [v7 URLByAppendingPathComponent:d];
    }
  }

  return result;
}

- (THReflowablePaginationCache)initWithAssetID:(id)d bookVersionString:(id)string modificationDate:(id)date
{
  v10.receiver = self;
  v10.super_class = THReflowablePaginationCache;
  v8 = [(THReflowablePaginationCache *)&v10 init];
  if (v8)
  {
    v8->_assetID = [d copy];
    v8->_bookVersionString = [string copy];
    v8->_bookModificationDate = date;
    v8->_mutableResults = objc_alloc_init(NSMutableDictionary);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THReflowablePaginationCache;
  [(THReflowablePaginationCache *)&v3 dealloc];
}

- (THReflowablePaginationCache)initWithCoder:(id)coder
{
  v4 = [(THReflowablePaginationCache *)self init];
  if (v4)
  {
    if ([coder decodeIntegerForKey:@"encodingVersion"] == &dword_1C + 1)
    {
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = NSClassFromString(@"THPaginationResultsKey");
      v4->_mutableResults = [objc_msgSend(coder decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, v7, objc_opt_class(), 0), @"cachedResults", "mutableCopy"}];
      v4->_assetID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"assetID", "copy"}];
      v4->_bookVersionString = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"bookVersionString", "copy"}];
      v4->_bookModificationDate = [coder decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:29 forKey:@"encodingVersion"];
  [coder encodeObject:-[THReflowablePaginationCache assetID](self forKey:{"assetID"), @"assetID"}];
  [coder encodeObject:-[THReflowablePaginationCache bookVersionString](self forKey:{"bookVersionString"), @"bookVersionString"}];
  [coder encodeObject:-[THReflowablePaginationCache bookModificationDate](self forKey:{"bookModificationDate"), @"modificationDate"}];
  v5 = [(NSMutableDictionary *)self->_mutableResults copy];
  [coder encodeObject:v5 forKey:@"cachedResults"];
}

- (id)cachedResultsForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_mutableResults objectForKey:key];

  return v3;
}

- (void)archive
{
  if ([(NSString *)[(THReflowablePaginationCache *)self assetID] length])
  {
    v3 = [objc_opt_class() archiveStorageURLForAssetID:{-[THReflowablePaginationCache assetID](self, "assetID")}];
    v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v4 encodeObject:self forKey:@"root"];
    [v4 finishEncoding];
    v6 = 0;
    if (([objc_msgSend(v4 "encodedData")] & 1) == 0)
    {
      v5 = THLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_29D224();
      }
    }
  }
}

+ (void)_evictOlderCacheFiles:(id)files
{
  v20[0] = NSURLFileSizeKey;
  v20[1] = NSURLContentModificationDateKey;
  v16 = +[NSFileManager defaultManager];
  v4 = [(NSFileManager *)v16 enumeratorAtURL:files includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 1, 0];
  v5 = +[NSMutableDictionary dictionary];
  nextObject = [(NSDirectoryEnumerator *)v4 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v8 = 0;
    do
    {
      v19[0] = NSURLFileSizeKey;
      v19[1] = NSURLContentModificationDateKey;
      v9 = [nextObject2 resourceValuesForKeys:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", v19, 2), 0}];
      v10 = [objc_msgSend(v9 objectForKeyedSubscript:{NSURLFileSizeKey), "unsignedLongLongValue"}];
      v17[1] = NSURLFileSizeKey;
      v18[0] = nextObject2;
      v8 += v10;
      v17[0] = @"url";
      v18[1] = [v9 objectForKeyedSubscript:NSURLFileSizeKey];
      [v5 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v18, v17, 2), objc_msgSend(v9, "objectForKeyedSubscript:", NSURLContentModificationDateKey)}];
      nextObject2 = [(NSDirectoryEnumerator *)v4 nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v8 = 0;
  }

  v11 = [objc_msgSend(objc_msgSend(v5 "allKeys")];
  if (v8 > 0x4C4B40)
  {
    v12 = v11;
    do
    {
      if (![v12 count])
      {
        break;
      }

      v13 = [v12 objectAtIndexedSubscript:0];
      -[NSFileManager removeItemAtURL:error:](v16, "removeItemAtURL:error:", [objc_msgSend(v5 objectForKeyedSubscript:{v13), "objectForKeyedSubscript:", @"url"}], 0);
      v14 = [objc_msgSend(objc_msgSend(v5 objectForKeyedSubscript:{v13), "objectForKeyedSubscript:", NSURLFileSizeKey), "unsignedLongLongValue"}];
      v15 = v8 >= v14;
      v8 -= v14;
      if (!v15)
      {
        break;
      }

      [v5 removeObjectForKey:v13];
      [v12 removeObjectAtIndex:0];
    }

    while (v8 > 0x4C4B40);
  }
}

@end
@interface THReflowablePaginationCache
+ (id)archiveStorageURLForAssetID:(id)a3;
+ (id)loadFromArchiveWithAssetID:(id)a3 bookVersionString:(id)a4 modificationDate:(id)a5;
+ (void)_evictOlderCacheFiles:(id)a3;
- (THReflowablePaginationCache)initWithAssetID:(id)a3 bookVersionString:(id)a4 modificationDate:(id)a5;
- (THReflowablePaginationCache)initWithCoder:(id)a3;
- (id)cachedResultsForKey:(id)a3;
- (void)archive;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THReflowablePaginationCache

+ (id)loadFromArchiveWithAssetID:(id)a3 bookVersionString:(id)a4 modificationDate:(id)a5
{
  if (-[NSUserDefaults BOOLForKey:](+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), "BOOLForKey:", @"BKEpubPaginationCache_DisableCacheLoading") || ![a3 length])
  {
    return 0;
  }

  v9 = [a1 archiveStorageURLForAssetID:a3];
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

  if (a4 && (objc_opt_class(), [v12 bookVersionString], !objc_msgSend(a4, "isEqualToString:", TSUDynamicCast())) || a5 && (objc_opt_class(), objc_msgSend(v12, "bookModificationDate"), !objc_msgSend(a5, "isEqual:", TSUDynamicCast())))
  {
    v12 = 0;
  }

  v16 = [v9 URLByDeletingLastPathComponent];
  global_queue = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11EA88;
  block[3] = &unk_45AE00;
  block[4] = v16;
  dispatch_async(global_queue, block);
  return v12;
}

+ (id)archiveStorageURLForAssetID:(id)a3
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
      return [v7 URLByAppendingPathComponent:a3];
    }
  }

  return result;
}

- (THReflowablePaginationCache)initWithAssetID:(id)a3 bookVersionString:(id)a4 modificationDate:(id)a5
{
  v10.receiver = self;
  v10.super_class = THReflowablePaginationCache;
  v8 = [(THReflowablePaginationCache *)&v10 init];
  if (v8)
  {
    v8->_assetID = [a3 copy];
    v8->_bookVersionString = [a4 copy];
    v8->_bookModificationDate = a5;
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

- (THReflowablePaginationCache)initWithCoder:(id)a3
{
  v4 = [(THReflowablePaginationCache *)self init];
  if (v4)
  {
    if ([a3 decodeIntegerForKey:@"encodingVersion"] == &dword_1C + 1)
    {
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = NSClassFromString(@"THPaginationResultsKey");
      v4->_mutableResults = [objc_msgSend(a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, v7, objc_opt_class(), 0), @"cachedResults", "mutableCopy"}];
      v4->_assetID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"assetID", "copy"}];
      v4->_bookVersionString = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"bookVersionString", "copy"}];
      v4->_bookModificationDate = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:29 forKey:@"encodingVersion"];
  [a3 encodeObject:-[THReflowablePaginationCache assetID](self forKey:{"assetID"), @"assetID"}];
  [a3 encodeObject:-[THReflowablePaginationCache bookVersionString](self forKey:{"bookVersionString"), @"bookVersionString"}];
  [a3 encodeObject:-[THReflowablePaginationCache bookModificationDate](self forKey:{"bookModificationDate"), @"modificationDate"}];
  v5 = [(NSMutableDictionary *)self->_mutableResults copy];
  [a3 encodeObject:v5 forKey:@"cachedResults"];
}

- (id)cachedResultsForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_mutableResults objectForKey:a3];

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

+ (void)_evictOlderCacheFiles:(id)a3
{
  v20[0] = NSURLFileSizeKey;
  v20[1] = NSURLContentModificationDateKey;
  v16 = +[NSFileManager defaultManager];
  v4 = [(NSFileManager *)v16 enumeratorAtURL:a3 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 1, 0];
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(NSDirectoryEnumerator *)v4 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v19[0] = NSURLFileSizeKey;
      v19[1] = NSURLContentModificationDateKey;
      v9 = [v7 resourceValuesForKeys:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", v19, 2), 0}];
      v10 = [objc_msgSend(v9 objectForKeyedSubscript:{NSURLFileSizeKey), "unsignedLongLongValue"}];
      v17[1] = NSURLFileSizeKey;
      v18[0] = v7;
      v8 += v10;
      v17[0] = @"url";
      v18[1] = [v9 objectForKeyedSubscript:NSURLFileSizeKey];
      [v5 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v18, v17, 2), objc_msgSend(v9, "objectForKeyedSubscript:", NSURLContentModificationDateKey)}];
      v7 = [(NSDirectoryEnumerator *)v4 nextObject];
    }

    while (v7);
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
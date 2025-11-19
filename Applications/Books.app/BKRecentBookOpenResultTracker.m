@interface BKRecentBookOpenResultTracker
+ (id)_cachePath;
+ (void)removeCache;
- (BKRecentBookOpenResultTracker)init;
- (BOOL)shouldAutoOpenAsset:(id)a3;
- (id)_loadCache;
- (id)_mutableResultsForAsset:(id)a3;
- (void)_addEvent:(id)a3 forAsset:(id)a4;
- (void)openDidFinishForAsset:(id)a3;
- (void)openDidStartForAsset:(id)a3;
- (void)save;
@end

@implementation BKRecentBookOpenResultTracker

- (BKRecentBookOpenResultTracker)init
{
  v7.receiver = self;
  v7.super_class = BKRecentBookOpenResultTracker;
  v2 = [(BKRecentBookOpenResultTracker *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(BKRecentBookOpenResultTracker *)v2 _loadCache];
    cache = v3->_cache;
    v3->_cache = v4;
  }

  return v3;
}

- (id)_loadCache
{
  v2 = +[BKRecentBookOpenResultTracker _cachePath];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:0];

  v5 = 0;
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = [NSURL fileURLWithPath:v2];
  if (v6)
  {
    v17 = 0;
    v7 = [NSData dataWithContentsOfURL:v6 options:0 error:&v17];
    v5 = v17;
    if (v7)
    {
      v8 = [_TtC5Books10BKLRUCache unarchiveFrom:v7];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v10 = off_100ACD348;
        v18 = NSLocalizedDescriptionKey;
        v19 = @"Failed to unarchive cache";
        v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v12 = [NSError errorWithDomain:v10 code:30 userInfo:v11];

        v9 = 0;
        v5 = v12;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v5 = [NSError errorWithDomain:off_100ACD348 code:20 userInfo:0];
    v9 = 0;
  }

  if (v5)
  {
    v13 = sub_100026E38();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10078CD14();
    }
  }

  if (!v9)
  {
LABEL_15:
    v14 = sub_100026E38();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Creating new cache", v16, 2u);
    }

    v9 = [[_TtC5Books10BKLRUCache alloc] initWithCapacity:10];
  }

  return v9;
}

+ (id)_cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];
  v4 = [v3 stringByAppendingPathComponent:@"BKRecentOpenResultsCache_v20250815"];

  return v4;
}

- (id)_mutableResultsForAsset:(id)a3
{
  v3 = [(BKRecentBookOpenResultTracker *)self resultsForAsset:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:3];
  }

  v6 = v5;

  return v6;
}

- (void)openDidStartForAsset:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = +[BKUserActivityManager sharedInstance];
    v6 = [v5 isInBackground];

    if (!v6)
    {
      v12 = [BKRecentBookOpenTrackingEvent eventForStart:1];
      [(BKRecentBookOpenResultTracker *)self _addEvent:v12 forAsset:v4];

      goto LABEL_10;
    }

    v7 = sub_100026E38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v8 = "Ignoring asset open start in background";
      v9 = &v13;
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, v11, v8, v9, 2u);
    }
  }

  else
  {
    v7 = sub_100026E38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Asset has no ID.";
      v9 = buf;
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (void)openDidFinishForAsset:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [BKRecentBookOpenTrackingEvent eventForStart:0];
    [(BKRecentBookOpenResultTracker *)self _addEvent:v5 forAsset:v4];
  }

  else
  {
    v6 = sub_100026E38();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asset has no ID.", v7, 2u);
    }
  }
}

- (BOOL)shouldAutoOpenAsset:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(BKRecentBookOpenResultTracker *)self resultsForAsset:v4];
    v6 = [v5 lastObject];
    v7 = v6;
    v8 = v6 == 0;
    if (!v6)
    {
      v19 = sub_100026E38();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asset has no recent open events.", v22, 2u);
      }

      goto LABEL_20;
    }

    if ([v6 isStart])
    {
      v9 = [v7 timestamp];
      [v9 timeIntervalSinceNow];
      v11 = fabs(v10);

      if (v11 <= 300.0)
      {
        v19 = sub_100026E38();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10078CC94();
        }

        goto LABEL_20;
      }

      v12 = [v5 count];
      v13 = 0;
      v14 = (v12 - 1);
      v15 = &v12[-((v12 - 1) & ((v12 - 1) >> 63))];
      while (v14-- >= 1)
      {
        v17 = [v5 objectAtIndexedSubscript:v14];
        v18 = [v17 isStart];

        ++v13;
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v13 = v15;
LABEL_17:
      if (v13 >= 3)
      {
        v19 = sub_100026E38();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10078CCD4();
        }

LABEL_20:

LABEL_22:
        goto LABEL_23;
      }
    }

    v8 = 1;
    goto LABEL_22;
  }

  v5 = sub_100026E38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset has no ID.", v22, 2u);
  }

  v8 = 0;
LABEL_23:

  v20 = sub_100026E38();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67240192;
    v22[1] = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Recommending auto-open? %{public}d", v22, 8u);
  }

  return v8;
}

- (void)_addEvent:(id)a3 forAsset:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(BKRecentBookOpenResultTracker *)self _mutableResultsForAsset:v6];
  if ([v7 count] >= 3)
  {
    [v7 removeObjectAtIndex:0];
  }

  [v7 addObject:v8];
  [(BKLRUCache *)self->_cache setObject:v7 forKey:v6];

  [(BKRecentBookOpenResultTracker *)self save];
}

- (void)save
{
  v3 = +[BKRecentBookOpenResultTracker _cachePath];
  cache = self->_cache;
  v9 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:cache requiringSecureCoding:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = v6;
    v8 = sub_100026E38();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078CD84();
    }

LABEL_7:

    goto LABEL_8;
  }

  if (([v5 writeToFile:v3 atomically:1] & 1) == 0)
  {
    v7 = [NSError errorWithDomain:off_100ACD348 code:30 userInfo:0];
    v8 = sub_100026E38();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078CDF4();
    }

    goto LABEL_7;
  }

LABEL_8:
}

+ (void)removeCache
{
  v2 = +[BKRecentBookOpenResultTracker _cachePath];
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:v2 isDirectory:0])
  {
    v4 = +[NSFileManager defaultManager];
    v7 = 0;
    [v4 removeItemAtPath:v2 error:&v7];
    v5 = v7;

    if (v5)
    {
      v6 = sub_100026E38();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10078CE64();
      }
    }
  }
}

@end
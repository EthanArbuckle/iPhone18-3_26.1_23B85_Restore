@interface _TUIResourceLoaderOfflineCache
+ (id)sharedOfflineCache;
- (NSURLCache)urlCache;
- (_TUIResourceLoaderOfflineCache)init;
- (id)_loadCacheFromCandidatePaths:(id)a3;
- (id)valueForKey:(id)a3;
- (void)_aq_loadPostLaunchCaches;
- (void)_aq_saveOfflineCache;
- (void)_saveOfflineCache:(id)a3;
- (void)dealloc;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)incrementPostLaunchCacheCount;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation _TUIResourceLoaderOfflineCache

+ (id)sharedOfflineCache
{
  if (qword_2E6330 != -1)
  {
    sub_19A2B4();
  }

  v3 = qword_2E6328;

  return v3;
}

- (_TUIResourceLoaderOfflineCache)init
{
  v28.receiver = self;
  v28.super_class = _TUIResourceLoaderOfflineCache;
  v2 = [(_TUIResourceLoaderOfflineCache *)&v28 init];
  if (!v2)
  {
    return v2;
  }

  v3 = TUISignpostDefault();
  v4 = os_signpost_id_make_with_pointer(v3, v2);

  v5 = TUISignpostDefault();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Load offline cache", "", buf, 2u);
  }

  v2->_postLaunchCacheCount = -1;
  v7 = +[TUIOfflineCache provider];
  v2->_generateOfflineCache = [v7 generateCache];
  v8 = [v7 runFromCache];
  v2->_runFromOfflineCache = v8;
  if ((v2->_generateOfflineCache || v8) && (v12 = dispatch_queue_create("TUIResourceLoader.access", 0), accessQueue = v2->_accessQueue, v2->_accessQueue = v12, accessQueue, v2->_runFromOfflineCache))
  {
    v11 = [v7 cacheFileCandidatesForPreLaunch];
    v14 = [(_TUIResourceLoaderOfflineCache *)v2 _loadCacheFromCandidatePaths:v11];
    cache = v2->_cache;
    v2->_cache = v14;

    if (v2->_cache)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [NSString stringWithFormat:@"%@-OfflineCache", v17];

      v19 = [[NSURLCache alloc] initWithMemoryCapacity:79155201 diskCapacity:0 diskPath:v18];
      urlCache = v2->_urlCache;
      v2->_urlCache = v19;

      [(NSURLCache *)v2->_urlCache removeAllCachedResponses];
      v21 = v2->_cache;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_900B0;
      v25[3] = &unk_2607F0;
      v26 = v2;
      [(NSMutableDictionary *)v21 enumerateKeysAndObjectsUsingBlock:v25];
    }
  }

  else
  {
    if (!v2->_generateOfflineCache)
    {
      goto LABEL_13;
    }

    v9 = objc_opt_new();
    v10 = v2->_cache;
    v2->_cache = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_saveOfflineCache:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

LABEL_13:
  v22 = TUISignpostDefault();
  v23 = v22;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_INTERVAL_END, v4, "Load offline cache", "", buf, 2u);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TUIResourceLoaderOfflineCache;
  [(_TUIResourceLoaderOfflineCache *)&v4 dealloc];
}

- (NSURLCache)urlCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_902A0;
  v10 = sub_902B0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_902B8;
  v5[3] = &unk_25EFF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_loadCacheFromCandidatePaths:(id)a3
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v6 = &_AXSApplicationAccessibilityEnabled_ptr;
    while (2)
    {
      v7 = 0;
      v27 = v4;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [v6[449] defaultManager];
        v10 = [v9 fileExistsAtPath:v8];

        if (v10)
        {
          v30 = 0;
          v11 = [NSData dataWithContentsOfFile:v8 options:0 error:&v30];
          v12 = v30;
          if (v11)
          {
            v13 = v5;
            v14 = objc_opt_class();
            v15 = objc_opt_class();
            v16 = objc_opt_class();
            v17 = objc_opt_class();
            v18 = [NSSet setWithObjects:v14, v15, v16, v17, objc_opt_class(), 0];
            v19 = objc_opt_class();
            v29 = v12;
            v20 = v11;
            v21 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v18 fromData:v11 error:&v29];
            v22 = v29;

            v23 = TUIDynamicCast(v19, v21);

            v24 = TUIInstallBundleLog();
            v25 = v24;
            if (v23)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v36 = v8;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Using offline cache for TUI from %{public}@", buf, 0xCu);
              }

              goto LABEL_22;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v36 = v8;
              v37 = 2114;
              v38 = v22;
              _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Could not unarchive cache at %@ (error): %{public}@", buf, 0x16u);
            }

            v5 = v13;
            v6 = &_AXSApplicationAccessibilityEnabled_ptr;
            v4 = v27;
            v11 = v20;
          }

          else
          {
            v18 = TUIInstallBundleLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v36 = v8;
              _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Could not read cache file from disk: %{public}@", buf, 0xCu);
            }

            v22 = v12;
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_22:

  return v23;
}

- (void)incrementPostLaunchCacheCount
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_906CC;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_loadPostLaunchCaches
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[TUIOfflineCache provider];
  v5 = [v4 cacheDirCandidatesForPostLaunch];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_90A78;
  v32[3] = &unk_260818;
  v6 = v3;
  v33 = v6;
  v7 = [v5 indexOfObjectPassingTest:v32];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 objectAtIndexedSubscript:v7];
    if (v8)
    {
      v9 = v8;
      v31 = 0;
      v10 = [v6 contentsOfDirectoryAtPath:v8 error:&v31];
      v23 = v31;
      v11 = [v10 sortedArrayUsingSelector:"compare:"];

      if (!v11)
      {
        v12 = TUIInstallBundleLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_19A2C8();
        }
      }

      v24 = v6;
      v25 = v5;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if ([v18 hasSuffix:@".plist"])
            {
              v19 = v9;
              v20 = [v9 stringByAppendingPathComponent:v18];
              v34 = v20;
              v21 = [NSArray arrayWithObjects:&v34 count:1];
              v22 = [(_TUIResourceLoaderOfflineCache *)self _loadCacheFromCandidatePaths:v21];

              if (v22)
              {
                [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:v22];
                v26[0] = _NSConcreteStackBlock;
                v26[1] = 3221225472;
                v26[2] = sub_90AB0;
                v26[3] = &unk_2607F0;
                v26[4] = self;
                [v22 enumerateKeysAndObjectsUsingBlock:v26];
              }

              v9 = v19;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v15);
      }

      v6 = v24;
      v5 = v25;
    }
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_generateOfflineCache)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_90C1C;
    block[3] = &unk_25E7C0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(accessQueue, block);
  }
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_902A0;
  v17 = sub_902B0;
  v18 = 0;
  if (self->_runFromOfflineCache)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_90D5C;
    block[3] = &unk_25ED40;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(accessQueue, block);

    v6 = v14[5];
  }

  v8 = v6;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_90E44;
  v7[3] = &unk_25EA78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)_saveOfflineCache:(id)a3
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_90EC4;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_saveOfflineCache
{
  v3 = +[TUIOfflineCache provider];
  if ([(NSMutableDictionary *)self->_cache count])
  {
    cache = self->_cache;
    v16 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:cache requiringSecureCoding:1 error:&v16];
    v6 = v16;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (self->_postLaunchCacheCount < 0)
  {
    v8 = [v3 cacheFileCandidatesForPreLaunch];
    v11 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = [v3 cacheDirCandidatesForPostLaunch];
    v8 = [v7 objectAtIndexedSubscript:0];

    if (v8)
    {
      v9 = +[NSFileManager defaultManager];
      [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

      v10 = [NSString stringWithFormat:@"%02ld.plist", self->_postLaunchCacheCount];
      v11 = [v8 stringByAppendingPathComponent:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  if (!v5 || !v11)
  {
    v14 = TUIInstallBundleLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_19A330();
    }

    v13 = v6;
    goto LABEL_17;
  }

  v15 = v6;
  v12 = [v5 writeToFile:v11 options:1 error:&v15];
  v13 = v15;

  if ((v12 & 1) == 0)
  {
    v14 = TUIInstallBundleLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_19A398();
    }

LABEL_17:
  }
}

@end
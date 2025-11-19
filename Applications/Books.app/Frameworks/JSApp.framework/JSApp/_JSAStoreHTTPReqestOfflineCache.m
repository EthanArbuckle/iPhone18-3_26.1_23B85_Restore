@interface _JSAStoreHTTPReqestOfflineCache
+ (id)sharedOfflineCache;
- (_JSAStoreHTTPReqestOfflineCache)init;
- (id)_loadCacheFromCandidatePaths:(id)a3;
- (id)responseForKey:(id)a3;
- (void)_aq_loadPostLaunchCaches;
- (void)_aq_saveOfflineCache;
- (void)_saveOfflineCache:(id)a3;
- (void)dealloc;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)incrementPostLaunchCacheCount;
- (void)setResponse:(id)a3 forKey:(id)a4;
@end

@implementation _JSAStoreHTTPReqestOfflineCache

+ (id)sharedOfflineCache
{
  if (qword_CC108 != -1)
  {
    sub_811CC();
  }

  v3 = qword_CC100;

  return v3;
}

- (_JSAStoreHTTPReqestOfflineCache)init
{
  v3 = JSASignpost();
  v4 = os_signpost_id_generate(v3);

  v5 = JSASignpost();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Load offline cache", "", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = _JSAStoreHTTPReqestOfflineCache;
  v7 = [(_JSAStoreHTTPReqestOfflineCache *)&v22 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v7->_postLaunchCacheCount = -1;
  if (+[JSAOfflineCache generateCache](JSAOfflineCache, "generateCache") || +[JSAOfflineCache runFromCache])
  {
    if (+[JSAOfflineCache generateCache])
    {
      v9 = QOS_CLASS_USER_INTERACTIVE;
    }

    else
    {
      v9 = QOS_CLASS_USER_INITIATED;
    }

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, v9, 0);
    v12 = dispatch_queue_create("JSAStoreHTTPRequest.access", v11);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v12;
  }

  if (+[JSAOfflineCache runFromCache])
  {
    v14 = +[JSAOfflineCache cacheFileCandidatesForHTTPPreLaunch];
    v15 = [(_JSAStoreHTTPReqestOfflineCache *)v8 _loadCacheFromCandidatePaths:v14];
    cache = v8->_cache;
    v8->_cache = v15;

    if (!v8->_cache)
    {
      BUReportAssertionFailureWithMessage();
      BUCrashBreakpoint();
      result = BUIsRunningTests();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      BUCrashFinalThrow();
    }

    goto LABEL_17;
  }

  if (+[JSAOfflineCache generateCache])
  {
    v18 = objc_opt_new();
    v19 = v8->_cache;
    v8->_cache = v18;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v8 selector:"_saveOfflineCache:" name:UIApplicationDidEnterBackgroundNotification object:0];
LABEL_17:
  }

LABEL_18:
  v20 = JSASignpost();
  v21 = v20;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_INTERVAL_END, v4, "Load offline cache", "", buf, 2u);
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _JSAStoreHTTPReqestOfflineCache;
  [(_JSAStoreHTTPReqestOfflineCache *)&v4 dealloc];
}

- (id)_loadCacheFromCandidatePaths:(id)a3
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v6 = &swift_once_ptr;
    v7 = &swift_once_ptr;
    v29 = *v36;
    while (2)
    {
      v8 = 0;
      v30 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = [v6[127] defaultManager];
        v11 = [v10 fileExistsAtPath:v9];

        if (v11)
        {
          v12 = v7[166];
          v34 = 0;
          v13 = [v12 dataWithContentsOfFile:v9 options:0 error:&v34];
          v14 = v34;
          if (v13)
          {
            v15 = v7[166];
            v32 = objc_opt_class();
            v16 = objc_opt_class();
            v17 = objc_opt_class();
            v18 = objc_opt_class();
            v19 = objc_opt_class();
            v20 = objc_opt_class();
            v28 = objc_opt_class();
            v21 = [NSSet setWithObjects:v32, v16, v17, v18, v19, v20, v28, objc_opt_class(), 0];
            objc_opt_class();
            v33 = v14;
            v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v21 fromData:v13 error:&v33];
            v23 = v33;

            v24 = BUDynamicCast();

            v25 = JSALog();
            v26 = v25;
            if (v24)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v40 = v9;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Using offline cache from %{public}@", buf, 0xCu);
              }

              goto LABEL_22;
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v40 = v9;
              v41 = 2114;
              v42 = v23;
              _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Could not unarchive cache at %@ (error): %{public}@", buf, 0x16u);
            }

            v5 = v29;
            v6 = &swift_once_ptr;
            v7 = &swift_once_ptr;
          }

          else
          {
            v21 = JSALog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v40 = v9;
              _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Could not read cache file from disk: %{public}@", buf, 0xCu);
            }

            v23 = v14;
          }

          v4 = v30;
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_22:

  return v24;
}

- (void)incrementPostLaunchCacheCount
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11AB8;
  block[3] = &unk_B20D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_loadPostLaunchCaches
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[JSAOfflineCache cacheDirCandidatesForHTTPPostLaunch];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_11DF4;
  v29[3] = &unk_B2AD0;
  v5 = v3;
  v30 = v5;
  v6 = [v4 indexOfObjectPassingTest:v29];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 objectAtIndexedSubscript:v6];
    if (v7)
    {
      v8 = v7;
      v28 = 0;
      v9 = [v5 contentsOfDirectoryAtPath:v7 error:&v28];
      v21 = v28;
      v10 = [v9 sortedArrayUsingSelector:"compare:"];

      if (!v10)
      {
        v11 = JSALog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_811E0();
        }
      }

      v22 = v5;
      v23 = v4;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            if ([v17 hasSuffix:@".plist"])
            {
              v18 = [v8 stringByAppendingPathComponent:v17];
              v31 = v18;
              v19 = [NSArray arrayWithObjects:&v31 count:1];
              v20 = [(_JSAStoreHTTPReqestOfflineCache *)self _loadCacheFromCandidatePaths:v19];

              if (v20)
              {
                [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:v20];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }

      v5 = v22;
      v4 = v23;
    }
  }
}

- (void)setResponse:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[JSAOfflineCache generateCache])
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_11F00;
    block[3] = &unk_B2638;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_sync(accessQueue, block);
  }
}

- (id)responseForKey:(id)a3
{
  v4 = a3;
  if (+[JSAOfflineCache runFromCache])
  {
    v42 = +[NSDate now];
    v5 = +[NSDate now];
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_12514;
    v56 = sub_12524;
    v57 = 0;
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1252C;
    block[3] = &unk_B2818;
    v51 = &v52;
    block[4] = self;
    v7 = v4;
    v50 = v7;
    dispatch_sync(accessQueue, block);
    objc_opt_class();
    v8 = v53[5];
    v9 = BUDynamicCast();
    v10 = v9;
    if (!v53[5] || v9)
    {
LABEL_22:
      v29 = +[NSDate now];
      if (v10)
      {
        v18 = [(JSAStoreHTTPResponse *)v10 copy];

        v58[0] = @"requestStartTime";
        [v42 timeIntervalSince1970];
        v31 = [NSNumber numberWithDouble:v30 * 1000.0];
        v59[0] = v31;
        v58[1] = @"responseStartTime";
        [v5 timeIntervalSince1970];
        v33 = [NSNumber numberWithDouble:v32 * 1000.0];
        v59[1] = v33;
        v58[2] = @"responseEndTime";
        [v29 timeIntervalSince1970];
        v35 = [NSNumber numberWithDouble:v34 * 1000.0];
        v58[3] = @"responseCached";
        v59[2] = v35;
        v59[3] = &__kCFBooleanTrue;
        v36 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
        [v18 setPerformanceMetrics:v36];
      }

      else
      {
        v18 = 0;
      }

      _Block_object_dispose(&v52, 8);
      goto LABEL_26;
    }

    objc_opt_class();
    v11 = v53[5];
    v12 = BUDynamicCast();
    v13 = v12;
    if (v12)
    {
      v14 = [v12 bu_gzipInflate];

      objc_opt_class();
      v48 = 0;
      v15 = [NSJSONSerialization JSONObjectWithData:v14 options:0 error:&v48];
      v41 = v48;
      v16 = BUDynamicCast();

      if (v16)
      {
        v17 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v40 = objc_opt_class();
      v39 = objc_opt_class();
      v38 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = [NSSet setWithObjects:v40, v39, v38, v20, v21, v22, objc_opt_class(), 0];
      objc_opt_class();
      v47 = 0;
      v24 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v23 fromData:v14 error:&v47];
      v17 = v47;
      v16 = BUDynamicCast();

      if (v16)
      {
        goto LABEL_11;
      }

      v27 = JSALog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_81250();
      }

      v26 = v41;
    }

    else
    {
      objc_opt_class();
      v19 = v53[5];
      v16 = BUDynamicCast();
      if (v16)
      {
        v14 = 0;
LABEL_12:
        v25 = [[JSAStoreHTTPResponse alloc] initWithDictionary:v16];
LABEL_21:
        v28 = self->_accessQueue;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1257C;
        v43[3] = &unk_B2638;
        v10 = v25;
        v44 = v10;
        v45 = self;
        v46 = v7;
        dispatch_sync(v28, v43);

        goto LABEL_22;
      }

      v26 = JSALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_812C0();
      }

      v14 = 0;
    }

    v16 = 0;
    v25 = 0;
    goto LABEL_21;
  }

  v18 = 0;
LABEL_26:

  return v18;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12634;
  v7[3] = &unk_B2728;
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
  block[2] = sub_127DC;
  block[3] = &unk_B20D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_saveOfflineCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[JSAOfflineCache cachePath];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v5 = 0;
  v6 = 0;
  if ([(NSMutableDictionary *)self->_cache count])
  {
    v15 = sub_80900(&self->super.isa);
    v17 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v17];
    v6 = v17;
  }

  if (self->_postLaunchCacheCount < 0)
  {
    v8 = +[JSAOfflineCache cacheFileCandidatesForHTTPPreLaunch];
    v11 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = +[JSAOfflineCache cacheDirCandidatesForHTTPPostLaunch];
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
    v14 = JSALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_81370();
    }

    v13 = v6;
    goto LABEL_16;
  }

  v16 = v6;
  v12 = [v5 writeToFile:v11 options:1 error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    v14 = JSALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_813E0();
    }

LABEL_16:
  }
}

@end
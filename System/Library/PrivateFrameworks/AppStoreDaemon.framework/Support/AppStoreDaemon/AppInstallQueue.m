@interface AppInstallQueue
- (AppInstallQueue)init;
- (void)coordinatorPromiseDataConsumer:(id)a3 willBeginUsingPromise:(id)a4 forReference:(id)a5;
- (void)finishInstallID:(int64_t)a3 transaction:(id)a4;
- (void)finishPostProcessingForID:(int64_t)a3 transaction:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startInstallIDs:(id)a3 transaction:(id)a4;
- (void)startPostProcessingForID:(int64_t)a3 transaction:(id)a4;
- (void)stopInstallID:(int64_t)a3 withReason:(int64_t)a4 transaction:(id)a5;
@end

@implementation AppInstallQueue

- (AppInstallQueue)init
{
  v16.receiver = self;
  v16.super_class = AppInstallQueue;
  v2 = [(AppInstallQueue *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AppInstallQueue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v6;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v8 = objc_alloc_init(NSMutableDictionary);
    requestLookup = v2->_requestLookup;
    v2->_requestLookup = v8;

    v10 = sub_1003C27BC();
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v10;

    v12 = sub_1003710C0();
    assetSession = v2->_assetSession;
    v2->_assetSession = v12;

    v14 = +[InstallCoordinationObserver sharedInstance];
  }

  return v2;
}

- (void)finishInstallID:(int64_t)a3 transaction:(id)a4
{
  v15 = a4;
  v6 = [NSNumber numberWithLongLong:a3];
  v7 = sub_100402BD0(AppInstallInfo, v6);

  if (!v7)
  {
    v8 = [AppInstallEntity alloc];
    v9 = [v15 connection];
    v10 = [(SQLiteEntity *)v8 initWithPersistentID:a3 onConnection:v9];

    v11 = sub_1004027FC();
    v12 = [(SQLiteEntity *)v10 getValuesForProperties:v11];

    v13 = [AppInstallInfo alloc];
    v14 = [NSNumber numberWithLongLong:a3];
    v7 = sub_1004028AC(v13, v14, v12);

    sub_100402A5C(AppInstallInfo, v7);
  }

  sub_1003FBA5C(self, v7, v15);
}

- (void)finishPostProcessingForID:(int64_t)a3 transaction:(id)a4
{
  v15 = a4;
  v6 = [NSNumber numberWithLongLong:a3];
  v7 = sub_100402BD0(AppInstallInfo, v6);

  if (!v7)
  {
    v8 = [AppInstallEntity alloc];
    v9 = [v15 connection];
    v10 = [(SQLiteEntity *)v8 initWithPersistentID:a3 onConnection:v9];

    v11 = sub_1004027FC();
    v12 = [(SQLiteEntity *)v10 getValuesForProperties:v11];

    v13 = [AppInstallInfo alloc];
    v14 = [NSNumber numberWithLongLong:a3];
    v7 = sub_1004028AC(v13, v14, v12);

    sub_100402A5C(AppInstallInfo, v7);
  }

  sub_1003FBA5C(self, v7, v15);
}

- (void)startInstallIDs:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v25 = a4;
  v7 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = sub_100402BD0(AppInstallInfo, v13);
        if (v14)
        {
          v15 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v17 = self;
            v18 = objc_getProperty(v14, v16, 80, 1);
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v18;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@]: Skipping start, appears to already be running", &buf, 0xCu);

            self = v17;
          }
        }

        else
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v19 = [SQLiteContainsPredicate containsPredicateWithProperty:@"ROWID" values:v7];
  v20 = v25;
  if (self)
  {
    v21 = v19;
    v22 = [v20 connection];
    v23 = sub_1002D3F5C(AppInstallEntity, v22, v21);

    v24 = sub_1004027FC();
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v32 = sub_1003FDCD8;
    v33 = &unk_100522FA8;
    v34 = v20;
    v35 = self;
    [v23 enumeratePersistentIDsAndProperties:v24 usingBlock:&buf];
  }
}

- (void)startPostProcessingForID:(int64_t)a3 transaction:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithLongLong:a3];
  v8 = sub_100402BD0(AppInstallInfo, v7);

  if (!v8)
  {
    v9 = [AppInstallEntity alloc];
    v10 = [v6 connection];
    v11 = [(SQLiteEntity *)v9 initWithPersistentID:a3 onConnection:v10];

    v12 = sub_1004027FC();
    v13 = [(SQLiteEntity *)v11 getValuesForProperties:v12];

    v14 = [AppInstallInfo alloc];
    v15 = [NSNumber numberWithLongLong:a3];
    v8 = sub_1004028AC(v14, v15, v13);

    sub_100402A5C(AppInstallInfo, v8);
  }

  v16 = v8;
  v28 = v6;
  if (self)
  {
    v17 = ASDLogHandleForCategory();
    v18 = v17;
    if (v16)
    {
      v19 = v16[13];
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v21 = objc_getProperty(v16, v20, 80, 1);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v21;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Install/PostProcess", " uuid=%{public, signpost.description:attribute}@ ", &buf, 0xCu);
      }
    }

    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v16)
      {
        Property = objc_getProperty(v16, v23, 80, 1);
      }

      else
      {
        Property = 0;
      }

      v25 = Property;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] Beginning post-processing of install", &buf, 0xCu);
    }

    if (v16)
    {
      sub_100208224(v28, 45, v16[8]);
      v26 = v16[8];
    }

    else
    {
      sub_100208224(v28, 45, 0);
      v26 = 0;
    }

    v27 = sub_10036BE40(AppInstallPostProcessTask, v26, v28);
    objc_initWeak(&location, v27);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v31 = sub_1003FDB48;
    v32 = &unk_100521310;
    objc_copyWeak(v34, &location);
    v33 = self;
    [v27 setCompletionBlock:&buf];
    [(NSOperationQueue *)self->_operationQueue addOperation:v27];
    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

- (void)stopInstallID:(int64_t)a3 withReason:(int64_t)a4 transaction:(id)a5
{
  v5 = [NSNumber numberWithLongLong:a3, a4, a5];
  selfa = sub_100402BD0(AppInstallInfo, v5);

  if (selfa)
  {
    WeakRetained = objc_loadWeakRetained(selfa + 11);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(selfa + 11);
      [v8 cancel];
    }

    v9 = objc_getProperty(selfa, v7, 16, 1);

    if (v9)
    {
      v11 = objc_getProperty(selfa, v10, 16, 1);
      [v11 cancel];
    }

    sub_100402B28(AppInstallInfo, selfa);
  }
}

- (void)coordinatorPromiseDataConsumer:(id)a3 willBeginUsingPromise:(id)a4 forReference:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    databaseStore = self->_databaseStore;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003FCBA0;
    v12[3] = &unk_10051CA38;
    v13 = v8;
    v14 = v7;
    [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:v12];

    v11 = v13;
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AppInstallExternalID"];
    if (v8)
    {
      [v6 fractionCompleted];
      v10 = v9;
      v17[0] = @"kind";
      v17[1] = @"identifier";
      *buf = @"progress";
      v19 = v8;
      v17[2] = @"fraction";
      v11 = v8;
      v12 = [NSNumber numberWithDouble:v10];
      v20 = v12;
      v13 = [NSDictionary dictionaryWithObjects:buf forKeys:v17 count:3];

      v14 = v13;
      v15 = +[NSNotificationCenter defaultCenter];
      v16 = [NSSet setWithObject:v14];

      [v15 postNotificationName:@"LegacyNotifications" object:v16];
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Skipping legacy progress notification because we don't have an identifier for it.", buf, 2u);
      }
    }
  }
}

@end
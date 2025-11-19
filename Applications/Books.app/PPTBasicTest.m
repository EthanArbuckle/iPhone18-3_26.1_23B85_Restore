@interface PPTBasicTest
- (BKLibraryAsset)asset;
- (BOOL)hasHandler;
- (PPTBasicTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6;
- (id)bookshelf;
- (void)finishPPTTestWithResult:(unint64_t)a3;
- (void)onBookViewControllerChange:(id)a3;
- (void)startPPTTest;
- (void)subscribeToStartNotification:(id)a3 endNotification:(id)a4;
- (void)terminate;
@end

@implementation PPTBasicTest

- (PPTBasicTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = PPTBasicTest;
  v14 = [(PPTBasicTest *)&v22 init];
  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:@"book-type"];
    if (v15)
    {
      v21 = a6;
      v16 = [&off_100A43D40 objectForKeyedSubscript:v15];
      v17 = *(v14 + 11);
      *(v14 + 11) = v16;

      if (*(v14 + 11) || (sub_100792090(v14 + 11, buf) & 1) != 0)
      {
        v18 = sub_1001E65B0();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(v14 + 11);
          *buf = 138543362;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Creating test with book named: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v18 = *buf;
      }

      a6 = v21;
    }

    objc_storeStrong(v14 + 5, a4);
    objc_storeStrong(v14 + 6, a5);
    objc_storeStrong(v14 + 7, a3);
    v14[8] = a6;
    *(v14 + 5) = 5;
    *(v14 + 12) = 0x100000002;
    *(v14 + 8) = 1;
  }

  return v14;
}

- (BKLibraryAsset)asset
{
  if (!+[NSThread isMainThread])
  {
    sub_100792138();
  }

  p_asset = &self->_asset;
  if (!self->_asset)
  {
    v4 = [(PPTBasicTest *)self bookTitle];

    if (v4)
    {
      v5 = +[BKLibraryManager defaultManager];
      if (!v5)
      {
        v6 = sub_1001E65B0();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to find the book library", buf, 2u);
        }
      }

      v7 = [v5 predicateForLocalLibraryAssets];
      v8 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
      v28 = v7;
      [v8 setPredicate:v7];
      v29 = v5;
      v9 = [v5 uiChildContext];
      v34 = 0;
      v27 = v8;
      v10 = [v9 executeFetchRequest:v8 error:&v34];
      v26 = v34;

      v11 = sub_1001E65B0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v10 count];
        *buf = 134217984;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Library contains %lu books", buf, 0xCu);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = [v18 title];
            v20 = [(PPTBasicTest *)self bookTitle];
            v21 = [v19 isEqualToString:v20];

            if (v21)
            {
              objc_storeStrong(&self->_asset, v18);
              goto LABEL_21;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      if (!*p_asset)
      {
        v22 = sub_1001E65B0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [(PPTBasicTest *)self bookTitle];
          *buf = 138543362;
          v37 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Failed to find book named: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v24 = *p_asset;

  return v24;
}

- (void)startPPTTest
{
  if (self->_running)
  {
    v9 = v2;
    v10 = v3;
    if (self->_mainTest)
    {
      v5 = +[UIApplication sharedApplication];
      if ([(PPTBasicTest *)self waitForCACommitBeforeTrackingMetric])
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_100181C20;
        v6[3] = &unk_100A03440;
        v7 = v5;
        v8 = self;
        [v7 installCACommitCompletionBlock:v6];
      }

      else
      {
        [v5 startedTest:self->_name];
      }
    }
  }
}

- (void)finishPPTTestWithResult:(unint64_t)a3
{
  if (self->_running)
  {
    self->_result = a3;
    if (!a3 && self->_mainTest)
    {
      v4 = +[UIApplication sharedApplication];
      v5 = [v4 isRunningTest:self->_name];

      if (v5)
      {
        v6 = +[UIApplication sharedApplication];
        [v6 finishedTest:self->_name];
      }
    }

    onTestFinished = self->_onTestFinished;
    if (onTestFinished)
    {
      onTestFinished[2](onTestFinished, a2);
    }

    self->_running = 0;
  }
}

- (void)subscribeToStartNotification:(id)a3 endNotification:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_handleTestStart:" name:v7 object:0];

  [v8 addObserver:self selector:"_handleTestEnd:" name:v6 object:0];
}

- (BOOL)hasHandler
{
  v3 = +[BKTestDriverDispatcher shared];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100181E34;
  v5[3] = &unk_100A09710;
  v5[4] = self;
  [v3 sync:v5];

  return 1;
}

- (void)onBookViewControllerChange:(id)a3
{
  [a3 bookController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100181F64;
  v5[3] = &unk_100A03440;
  v6 = v5[4] = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)terminate
{
  self->_running = 0;
  v3 = +[BKTestDriverDispatcher shared];
  [v3 unsubscribe:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (id)bookshelf
{
  v2 = +[BKAppDelegate sceneManager];
  v3 = [v2 primarySceneController];

  if (!v3)
  {
    sub_100792174();
  }

  v4 = [v3 rootBarCoordinator];
  v5 = [v4 selectedTopViewController];

  objc_opt_class();
  v6 = BUDynamicCast();
  if (!v6)
  {
    sub_1007921F0();
  }

  return v6;
}

@end
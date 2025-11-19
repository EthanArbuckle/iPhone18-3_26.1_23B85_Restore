@interface StoreKitAppLaunchObserver
- (StoreKitAppLaunchObserver)init;
- (StoreKitAppLaunchObserverDelegate)delegate;
- (void)_appDidLaunch:(id)a3;
- (void)_startObservingIfNecessary;
- (void)_stopObserving;
- (void)_stopObservingIfNecessary;
- (void)observeAppLaunchForBundleIDs:(id)a3;
- (void)removeObservationForBundleIDs:(id)a3;
- (void)stopObserving;
@end

@implementation StoreKitAppLaunchObserver

- (StoreKitAppLaunchObserver)init
{
  v18.receiver = self;
  v18.super_class = StoreKitAppLaunchObserver;
  v2 = [(StoreKitAppLaunchObserver *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreKit.StoreKitAppLaunchObserver.observations", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v3;

    v5 = dispatch_queue_create("com.apple.StoreKit.StoreKitAppLaunchObserver.notifyQueue", 0);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v5;

    v7 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.StoreKit.StoreKitAppLaunchObserver.scheduler" targetQueue:v2->_observerQueue waking:1];
    scheduler = v2->_scheduler;
    v2->_scheduler = v7;

    v9 = objc_alloc_init(NSMutableSet);
    bundleIDsToObserve = v2->_bundleIDsToObserve;
    v2->_bundleIDsToObserve = v9;

    sink = v2->_sink;
    v2->_sink = 0;

    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    v14 = [v13 componentsSeparatedByString:@"-"];
    v15 = [v14 firstObject];
    logKey = v2->_logKey;
    v2->_logKey = v15;
  }

  return v2;
}

- (void)observeAppLaunchForBundleIDs:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B13C;
  v7[3] = &unk_10037F868;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)removeObservationForBundleIDs:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B388;
  v7[3] = &unk_10037F868;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)stopObserving
{
  observerQueue = self->_observerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B5B0;
  block[3] = &unk_100380818;
  block[4] = self;
  dispatch_async(observerQueue, block);
}

- (void)_stopObserving
{
  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  if (qword_1003D4808 != -1)
  {
    sub_1002D0A30();
  }

  if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEBUG))
  {
    sub_1002D0A44();
  }

  [(NSMutableSet *)self->_bundleIDsToObserve removeAllObjects];
}

- (void)_startObservingIfNecessary
{
  if (self->_sink)
  {
    if (qword_1003D4808 != -1)
    {
      sub_1002D0A30();
    }

    if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEBUG))
    {
      sub_1002D0AAC();
    }
  }

  else if ([(NSMutableSet *)self->_bundleIDsToObserve count])
  {
    if (qword_1003D4808 != -1)
    {
      sub_1002D0A30();
    }

    if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEBUG))
    {
      sub_1002D0B14();
    }

    objc_initWeak(&location, self);
    v3 = [(NSString *)self->_logKey copy];
    v4 = BiomeLibrary();
    v5 = [v4 App];
    v6 = [v5 InFocus];
    v7 = [v6 DSLPublisherWithUseCase:@"StoreKitMessages"];
    v8 = [v7 filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:self->_bundleIDsToObserve];
    v9 = [v8 filterWithKeyPath:@"eventBody.starting" value:&__kCFBooleanTrue];
    v10 = [v9 filterWithKeyPath:@"eventBody.type" value:&off_1003A14E0];
    v11 = [v10 subscribeOn:self->_scheduler];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006B958;
    v19[3] = &unk_100382CE0;
    objc_copyWeak(&v21, &location);
    v12 = v3;
    v20 = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006BAEC;
    v16[3] = &unk_100382D08;
    objc_copyWeak(&v18, &location);
    v13 = v12;
    v17 = v13;
    v14 = [v11 sinkWithCompletion:v19 receiveInput:v16];
    sink = self->_sink;
    self->_sink = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_1003D4808 != -1)
    {
      sub_1002D0A30();
    }

    if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_DEBUG))
    {
      sub_1002D0B7C();
    }
  }
}

- (void)_stopObservingIfNecessary
{
  if (![(NSMutableSet *)self->_bundleIDsToObserve count])
  {

    [(StoreKitAppLaunchObserver *)self _stopObserving];
  }
}

- (void)_appDidLaunch:(id)a3
{
  v4 = a3;
  v5 = [(StoreKitAppLaunchObserver *)self delegate];
  if (v5 && (v6 = v5, [(StoreKitAppLaunchObserver *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(StoreKitAppLaunchObserver *)self delegate];
    [v9 appDidLaunchWithBundleID:v4];
  }

  else
  {
    if (qword_1003D4808 != -1)
    {
      sub_1002D0A30();
    }

    if (os_log_type_enabled(qword_1003D47C8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D0BE4();
    }
  }
}

- (StoreKitAppLaunchObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
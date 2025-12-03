@interface AppInstallObserver
- (AppInstallObserver)init;
- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)coordinatorShouldBeginPostProcessing:(id)processing forApplicationRecord:(id)record;
@end

@implementation AppInstallObserver

- (AppInstallObserver)init
{
  v22.receiver = self;
  v22.super_class = AppInstallObserver;
  v2 = [(AppInstallObserver *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(TaskQueue);
    policyQueue = v2->_policyQueue;
    v2->_policyQueue = v3;

    v5 = v2->_policyQueue;
    if (v5)
    {
      [(NSOperationQueue *)v5->_operationQueue setName:@"com.apple.appstored.AppInstallObserver.policyQueue"];
    }

    v6 = sub_1003C27BC();
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v6;

    v8 = sub_1002C0D84();
    installScheduler = v2->_installScheduler;
    v2->_installScheduler = v8;

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Observing installation notifications", buf, 2u);
    }

    v11 = objc_alloc_init(UnfairLock);
    lock = v2->_lock;
    v2->_lock = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    observedCoordinators = v2->_observedCoordinators;
    v2->_observedCoordinators = v13;

    v15 = +[NSMutableSet set];
    baObservationSet = v2->_baObservationSet;
    v2->_baObservationSet = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    baInfo = v2->_baInfo;
    v2->_baInfo = v17;

    *buf = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10025FF74;
    v26 = &unk_10051F018;
    v27 = v2;
    v19 = [BAAppStoreProgressObserver progressObserverWithConfiguration:buf];
    baObserver = v2->_baObserver;
    v2->_baObserver = v19;
  }

  return v2;
}

- (void)coordinatorShouldBeginPostProcessing:(id)processing forApplicationRecord:(id)record
{
  processingCopy = processing;
  recordCopy = record;
  if (sub_1002487CC(processingCopy, 0))
  {
    v8 = [recordCopy URL];
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      bundleID = [processingCopy bundleID];
      *buf = 138543618;
      v18 = bundleID;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "coordinatorShouldBeginPostProcessing for bundleID: %{public}@ at URL: %{public}@", buf, 0x16u);
    }

    databaseStore = self->_databaseStore;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10025EF6C;
    v14[3] = &unk_10051CA38;
    v15 = processingCopy;
    v16 = v8;
    v12 = v8;
    [(AppInstallsDatabaseStore *)databaseStore modifyUsingTransaction:v14];
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identity = [processingCopy identity];
      *buf = 138543362;
      v18 = identity;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "coordinatorShouldBeginPostProcessing ignored for bundleID: %{public}@ as we aren't the DRI", buf, 0xCu);
    }
  }
}

- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  coordinatorCopy = coordinator;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [coordinatorCopy uniqueIdentifier];
    if (phase >= 3)
    {
      phase = [NSString stringWithFormat:@"Unknown progress value %lu", phase];
    }

    else
    {
      phase = off_10051F088[phase];
    }

    *buf = 138413058;
    v16 = uniqueIdentifier;
    v17 = 2048;
    progressCopy = progress;
    v19 = 2112;
    v20 = phase;
    v21 = 2048;
    overallProgressCopy = overallProgress;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "(AppInstallObserver) Coordinator %@ sent progress: %f for phase: %@ overall: %f", buf, 0x2Au);
  }

  if (phase == 1)
  {
    v11 = sub_1003649C8();
    bundleID = [coordinatorCopy bundleID];
    sub_1003670E4(v11, bundleID, fmin(progress / 100.0, 1.0));
  }
}

@end
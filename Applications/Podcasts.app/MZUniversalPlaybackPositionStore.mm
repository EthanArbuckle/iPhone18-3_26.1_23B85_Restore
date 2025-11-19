@interface MZUniversalPlaybackPositionStore
- (BOOL)_timerIsStopped;
- (MZUniversalPlaybackPositionStore)initWithInitialUpdateDelay:(double)a3 isActive:(BOOL)a4;
- (double)_effectiveAutorefreshRate;
- (id)_accountForSyncing;
- (void)_grabBagWithCompletionBlock:(id)a3;
- (void)_onQueueLoadBagContextWithCompletionHandler:(id)a3;
- (void)_onQueueResumeTimer;
- (void)_onQueueScheduleTimer;
- (void)_onQueueStartNewTimerWithTimeIntervalSinceNow:(double)a3;
- (void)_onQueueStopTimer;
- (void)_onQueueSuspendTimer;
- (void)_onQueueSynchronizeImmediatelyWithCompletionBlock:(id)a3;
- (void)_onQueueUpdateTimerForActiveChanges;
- (void)_onQueueUpdateTimerForAutomaticSyncOptionChanges;
- (void)_timerFired:(id)a3;
- (void)_updateAutorefreshRateSettingAndRestartTimer:(BOOL)a3;
- (void)_updateForStoreAccountsChange;
- (void)_updateSettingsFromLoadedBagContext:(id)a3;
- (void)becomeActive;
- (void)checkForAvailabilityWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)resignActive;
- (void)setAutomaticSynchronizeOptions:(unint64_t)a3;
- (void)setAutomaticallySynchronizeLocalChangesOnResignActive:(BOOL)a3;
- (void)setAutomaticallySynchronizeOnBecomeActive:(BOOL)a3;
- (void)setHasLocalChangesToSync:(BOOL)a3;
- (void)synchronizeImmediatelyWithCompletionBlock:(id)a3;
@end

@implementation MZUniversalPlaybackPositionStore

- (double)_effectiveAutorefreshRate
{
  +[MZUPPBagContext defaultPollingInterval];
  v4 = v3 / 60.0;
  v5 = +[MZPreferences storeBookkeeperPreferences];
  v6 = [NSNumber numberWithDouble:v4];
  v7 = [v5 objectForKey:@"AutoSyncRateInMinutes" withDefaultValue:v6];
  [v7 floatValue];
  v9 = v8;

  if (v4 != v9)
  {
    return (v9 * 60.0);
  }

  result = self->_bagSpecifiedPollingInterval;
  if (result <= 0.00000011920929)
  {
    return (v9 * 60.0);
  }

  return result;
}

- (void)_onQueueScheduleTimer
{
  if (+[MTPrivacyUtil privacyAcknowledgementNeeded])
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Cannot schedule UPPSync timer. Privacy acknowledgement needed.", buf, 2u);
    }
  }

  else if (!self->_refreshTimerActive)
  {
    self->_refreshTimerActive = 1;
    v4 = [(MZUniversalPlaybackPositionStore *)self dateToFireNextTimer];
    [v4 timeIntervalSinceNow];
    v6 = v5;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100094410;
    v7[3] = &unk_1004D9720;
    v7[5] = v6;
    v7[4] = self;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (MZUniversalPlaybackPositionStore)initWithInitialUpdateDelay:(double)a3 isActive:(BOOL)a4
{
  v22.receiver = self;
  v22.super_class = MZUniversalPlaybackPositionStore;
  v6 = [(MZUniversalPlaybackPositionStore *)&v22 init];
  if (v6)
  {
    v7 = dispatch_queue_create("MZUniversalPlaybackPositionStore.queue", 0);
    v8 = *(v6 + 9);
    *(v6 + 9) = v7;

    *(v6 + 11) = a4;
    *(v6 + 3) = 3;
    [v6 _updateAutorefreshRateSettingAndRestartTimer:0];
    +[MZUPPBagContext defaultPollingInterval];
    *(v6 + 12) = v9;
    if (a3 <= 0.0)
    {
      a3 = *(v6 + 11);
    }

    *(v6 + 12) = a3 > 0.0;
    v10 = [NSDate dateWithTimeIntervalSinceNow:a3];
    [v6 setDateToFireNextTimer:v10];

    v11 = *(v6 + 9);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100092088;
    block[3] = &unk_1004D8358;
    v12 = v6;
    v21 = v12;
    dispatch_sync(v11, block);
    v13 = +[NSNotificationCenter defaultCenter];
    objc_initWeak(&location, v12);
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v12 selector:"_updateForStoreAccountsChange" name:ACDAccountStoreDidChangeNotification object:0];

    v15 = +[NSOperationQueue mainQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000920D4;
    v17[3] = &unk_1004D93E8;
    objc_copyWeak(&v18, &location);
    v12[10] = [v13 addObserverForName:@"MZPreferencesDidChangeNotification" object:0 queue:v15 usingBlock:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  [(MZUniversalPlaybackPositionStore *)self setSyncHandler:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self->_prefsObserver];

  v5 = [(MZUniversalPlaybackPositionStore *)self bagLookupTask];
  [v5 invalidate];

  [(MZUniversalPlaybackPositionStore *)self setBagLookupTask:0];
  v6 = [(MZUniversalPlaybackPositionStore *)self synchronizeTask];
  [v6 invalidate];

  [(MZUniversalPlaybackPositionStore *)self setSynchronizeTask:0];
  [(MZUniversalPlaybackPositionStore *)self setDateToFireNextTimer:0];
  v7 = [(MZUniversalPlaybackPositionStore *)self timer];
  [v7 invalidate];

  [(MZUniversalPlaybackPositionStore *)self setTimer:0];
  [(MZUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
  v8.receiver = self;
  v8.super_class = MZUniversalPlaybackPositionStore;
  [(MZUniversalPlaybackPositionStore *)&v8 dealloc];
}

- (void)_onQueueUpdateTimerForActiveChanges
{
  if (self->_isActive && (self->_automaticSynchronizeOptions & 1) != 0)
  {
    if ([(MZUniversalPlaybackPositionStore *)self _automaticallySynchronizeOnBecomeActive])
    {

      [(MZUniversalPlaybackPositionStore *)self _onQueueStartNewTimerWithTimeIntervalSinceNow:?];
    }

    else
    {

      [(MZUniversalPlaybackPositionStore *)self _onQueueResumeTimer];
    }
  }

  else
  {

    [(MZUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
  }
}

- (void)_onQueueUpdateTimerForAutomaticSyncOptionChanges
{
  if (self->_isActive && (self->_automaticSynchronizeOptions & 1) != 0)
  {
    [(MZUniversalPlaybackPositionStore *)self _onQueueResumeTimer];
  }

  else
  {
    [(MZUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
  }
}

- (void)becomeActive
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092364;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)resignActive
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092430;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)setAutomaticSynchronizeOptions:(unint64_t)a3
{
  if (self->_automaticSynchronizeOptions != a3)
  {
    self->_automaticSynchronizeOptions = a3;
  }
}

- (void)setHasLocalChangesToSync:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000925E4;
  v4[3] = &unk_1004D8748;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (void)setAutomaticallySynchronizeLocalChangesOnResignActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(MZUniversalPlaybackPositionStore *)self automaticSynchronizeOptions]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(MZUniversalPlaybackPositionStore *)self setAutomaticSynchronizeOptions:v5 | v6];
}

- (void)setAutomaticallySynchronizeOnBecomeActive:(BOOL)a3
{
  v4 = [(MZUniversalPlaybackPositionStore *)self automaticSynchronizeOptions]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(MZUniversalPlaybackPositionStore *)self setAutomaticSynchronizeOptions:v4];
}

- (void)synchronizeImmediatelyWithCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100092764;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)checkForAvailabilityWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100092904;
    v7[3] = &unk_1004D8520;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)_onQueueSynchronizeImmediatelyWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MZUniversalPlaybackPositionStore *)self _accountForSyncing];

  if (v5)
  {
    synchronizeTask = self->_synchronizeTask;
    v7 = _MTLogCategoryUPPSync();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (synchronizeTask)
    {
      if (v8)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_onQueueSync - UPP synchronize already in progress.  pending our completion block to be notified when it completes.", &buf, 2u);
      }

      [(MZAsynchronousTask *)self->_synchronizeTask addTaskCompletionBlock:v4];
    }

    else
    {
      if (v8)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_onQueueSync - UPP synchronize beginning sync operation...", &buf, 2u);
      }

      objc_initWeak(&buf, self);
      [(MZUniversalPlaybackPositionStore *)self _onQueueStopTimer];
      v11 = [MZUPPAsynchronousTask alloc];
      v12 = [(MZUPPAsynchronousTask *)v11 initWithHandlerQueue:self->_queue taskTimeout:@"MZUPPStore Synchronize" assertionTimeout:0 debugDescription:20.0 reportMetrics:*&qword_1005931F0];
      v13 = self->_synchronizeTask;
      self->_synchronizeTask = v12;

      v14 = self->_synchronizeTask;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100092DD4;
      v23[3] = &unk_1004D9E80;
      objc_copyWeak(&v24, &buf);
      [(MZAsynchronousTask *)v14 setExpirationHandler:v23];
      v15 = self->_synchronizeTask;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100092EA8;
      v21[3] = &unk_1004D9E80;
      objc_copyWeak(&v22, &buf);
      [(MZAsynchronousTask *)v15 setFinishedHandler:v21];
      [(MZAsynchronousTask *)self->_synchronizeTask addTaskCompletionBlock:v4];
      kdebug_trace();
      +[NSDate timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [(MZUPPAsynchronousTask *)self->_synchronizeTask metrics];
      [v18 setBagLookupStartTime:v17];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100093068;
      v19[3] = &unk_1004DA158;
      objc_copyWeak(&v20, &buf);
      [(MZUniversalPlaybackPositionStore *)self _onQueueLoadBagContextWithCompletionHandler:v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&buf);
    }
  }

  else
  {
    v9 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_onQueueSynchronizeImmediatelyWithCompletionBlock - short circuiting. No Active Account!", &buf, 2u);
    }

    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100092DBC;
    block[3] = &unk_1004D84D0;
    v27 = v4;
    dispatch_async(v10, block);
  }
}

- (id)_accountForSyncing
{
  v2 = +[MTAccountController sharedInstance];
  v3 = [v2 activeAccount];

  return v3;
}

- (void)_updateSettingsFromLoadedBagContext:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009367C;
  v4[3] = &unk_1004D8798;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_onQueueLoadBagContextWithCompletionHandler:(id)a3
{
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100093AE4;
  v28[3] = &unk_1004DA180;
  v28[4] = self;
  v4 = a3;
  v29 = v4;
  v5 = objc_retainBlock(v28);
  v6 = [(MZUniversalPlaybackPositionStore *)self _accountForSyncing];
  if (v6)
  {

    goto LABEL_4;
  }

  if ([(MZUniversalPlaybackPositionStore *)self canRequestStoreSignIn])
  {
LABEL_4:
    if (self->_bagLookupTask)
    {
      v7 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_onQueueLoadBag - UPP load bag already in progress.  pending our completion block to be notified when it completes.", buf, 2u);
      }

      [(MZAsynchronousTask *)self->_bagLookupTask addTaskCompletionBlock:v5];
    }

    else
    {
      objc_initWeak(buf, self);
      v8 = [MZAsynchronousTask alloc];
      v9 = [(MZAsynchronousTask *)v8 initWithHandlerQueue:self->_queue taskTimeout:@"MZUPPStore Load Bag" assertionTimeout:20.0 debugDescription:*&qword_1005931F0];
      bagLookupTask = self->_bagLookupTask;
      self->_bagLookupTask = v9;

      v11 = self->_bagLookupTask;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100093B78;
      v22[3] = &unk_1004D9E80;
      objc_copyWeak(&v23, buf);
      [(MZAsynchronousTask *)v11 setExpirationHandler:v22];
      v12 = self->_bagLookupTask;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100093C08;
      v20[3] = &unk_1004D9E80;
      objc_copyWeak(&v21, buf);
      [(MZAsynchronousTask *)v12 setFinishedHandler:v20];
      [(MZAsynchronousTask *)self->_bagLookupTask addTaskCompletionBlock:v5];
      [(MZAsynchronousTask *)self->_bagLookupTask beginTaskOperation];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100093D74;
      v18[3] = &unk_1004DA1C8;
      objc_copyWeak(&v19, buf);
      [(MZUniversalPlaybackPositionStore *)self _grabBagWithCompletionBlock:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    goto LABEL_12;
  }

  v13 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - UPP skipping bag load: No Active Account!", buf, 2u);
  }

  v14 = [NSError errorWithDomain:@"MZKeyValueStoreErrorDomain" code:-1001 userInfo:0];
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093B60;
  block[3] = &unk_1004D9158;
  v16 = v5;
  v26 = v14;
  v27 = v16;
  v17 = v14;
  dispatch_async(v15, block);

LABEL_12:
}

- (void)_grabBagWithCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009409C;
  block[3] = &unk_1004D84D0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_updateForStoreAccountsChange
{
  v3 = [(MZUniversalPlaybackPositionStore *)self _accountForSyncing];

  queue = self->_queue;
  if (v3)
  {
    v5 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v6 = sub_1000942A4;
  }

  else
  {
    v5 = v7;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v6 = sub_1000942AC;
  }

  v5[2] = v6;
  v5[3] = &unk_1004D8358;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)_updateAutorefreshRateSettingAndRestartTimer:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009432C;
  v4[3] = &unk_1004D8748;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (void)_timerFired:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000943FC;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onQueueStopTimer
{
  v3 = +[NSDate distantFuture];
  [(MZUniversalPlaybackPositionStore *)self setDateToFireNextTimer:v3];

  [(MZUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
}

- (void)_onQueueStartNewTimerWithTimeIntervalSinceNow:(double)a3
{
  [(MZUniversalPlaybackPositionStore *)self _onQueueStopTimer];
  v5 = [NSDate dateWithTimeIntervalSinceNow:a3];
  [(MZUniversalPlaybackPositionStore *)self setDateToFireNextTimer:v5];

  [(MZUniversalPlaybackPositionStore *)self _onQueueResumeTimer];
}

- (void)_onQueueSuspendTimer
{
  if (self->_refreshTimerActive)
  {
    v7 = v2;
    v8 = v3;
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "suspending update timer", v6, 2u);
    }

    [(NSTimer *)self->_timer invalidate];
    [(MZUniversalPlaybackPositionStore *)self setTimer:0];
    self->_refreshTimerActive = 0;
  }
}

- (BOOL)_timerIsStopped
{
  v2 = [(MZUniversalPlaybackPositionStore *)self dateToFireNextTimer];
  v3 = +[NSDate distantFuture];
  v4 = [v2 isEqualToDate:v3];

  return v4;
}

- (void)_onQueueResumeTimer
{
  if ([(MZUniversalPlaybackPositionStore *)self isActive]&& !self->_refreshTimerActive && ![(MZUniversalPlaybackPositionStore *)self _timerIsStopped])
  {

    [(MZUniversalPlaybackPositionStore *)self _onQueueScheduleTimer];
  }
}

@end
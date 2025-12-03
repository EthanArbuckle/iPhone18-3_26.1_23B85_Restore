@interface ADClockService
+ (id)sharedService;
+ (void)initialize;
- (ADClockService)init;
- (MTTimerManagerIntentSupport)timerManagerProxyForIntentSupport;
- (id)_mergedClockAlarmSnapshot;
- (id)_mergedClockTimerSnapshot;
- (id)addTimer:(id)timer;
- (id)removeTimer:(id)timer;
- (id)sleepTimersWithState:(unint64_t)state;
- (id)timers;
- (id)updateTimer:(id)timer;
- (void)_addTimer:(id)timer completion:(id)completion;
- (void)_dismissFiringItemsWithOptions:(unint64_t)options;
- (void)_enumerateAlarmSnapshotsUsingBlock:(id)block;
- (void)_enumerateAlarmsUsingBlock:(id)block;
- (void)_enumerateTimerSnapshotsUsingBlock:(id)block;
- (void)_enumerateTimersUsingBlock:(id)block;
- (void)_fetchTimerWithID:(id)d completion:(id)completion;
- (void)_fetchTimersWithCompletion:(id)completion;
- (void)_mutateMergedClockTimerSnapshotUsingBlock:(id)block;
- (void)_performBlock:(id)block;
- (void)_removeTimer:(id)timer completion:(id)completion;
- (void)_removeTimerWithID:(id)d completion:(id)completion;
- (void)_updateTimer:(id)timer completion:(id)completion;
- (void)_updateTimerWithID:(id)d changes:(id)changes completion:(id)completion;
- (void)getFiringStatesWithCompletion:(id)completion;
- (void)getSnapshotsWithCompletion:(id)completion;
- (void)performBlock:(id)block;
- (void)removeTimerWithID:(id)d completion:(id)completion;
- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)updateTimerWithID:(id)d changes:(id)changes completion:(id)completion;
@end

@implementation ADClockService

- (id)removeTimer:(id)timer
{
  timerCopy = timer;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADClockService(IntentSupport) removeTimer:]";
    v17 = 2112;
    v18 = timerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s timerToRemove = %@", buf, 0x16u);
  }

  v6 = off_10058B628();
  selfCopy = self;
  v14 = timerCopy;
  v7 = off_10058B630;
  v8 = timerCopy;
  immediateScheduler = [v7() immediateScheduler];
  v10 = [v6 futureWithBlock:&v12 scheduler:immediateScheduler];

  return v10;
}

- (id)updateTimer:(id)timer
{
  timerCopy = timer;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADClockService(IntentSupport) updateTimer:]";
    v21 = 2112;
    v22 = timerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s timerToUpdate = %@", buf, 0x16u);
  }

  v6 = off_10058B628();
  selfCopy = self;
  v18 = timerCopy;
  v7 = off_10058B630;
  v8 = timerCopy;
  v13 = [(v7)(v8 v9];
  v14 = [v6 futureWithBlock:&v16 scheduler:v13];

  return v14;
}

- (id)addTimer:(id)timer
{
  timerCopy = timer;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADClockService(IntentSupport) addTimer:]";
    v21 = 2112;
    v22 = timerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s timerToAdd = %@", buf, 0x16u);
  }

  v6 = off_10058B628();
  selfCopy = self;
  v18 = timerCopy;
  v7 = off_10058B630;
  v8 = timerCopy;
  v13 = [(v7)(v8 v9];
  v14 = [v6 futureWithBlock:&v16 scheduler:v13];

  return v14;
}

- (id)sleepTimersWithState:(unint64_t)state
{
  v5 = off_10058B628();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001295BC;
  v9[3] = &unk_100512708;
  v9[4] = self;
  v9[5] = state;
  immediateScheduler = [off_10058B630() immediateScheduler];
  v7 = [v5 futureWithBlock:v9 scheduler:immediateScheduler];

  return v7;
}

- (id)timers
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADClockService(IntentSupport) timers]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = off_10058B628();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100129A68;
  v8[3] = &unk_1005126E0;
  v8[4] = self;
  immediateScheduler = [off_10058B630() immediateScheduler];
  v6 = [v4 futureWithBlock:v8 scheduler:immediateScheduler];

  return v6;
}

- (MTTimerManagerIntentSupport)timerManagerProxyForIntentSupport
{
  if (AFIsATV())
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_dismissFiringItemsWithOptions:(unint64_t)options
{
  v4 = options & 1;
  v5 = options & 2;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "[ADClockService _dismissFiringItemsWithOptions:]";
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5 >> 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s includingAlarms = %d, includingTimers = %d", buf, 0x18u);
  }

  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003698BC;
    v8[3] = &unk_10051DFE8;
    v8[4] = self;
    [(ADClockService *)self _performBlock:v8];
  }

  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100369DE0;
    v7[3] = &unk_10051DFE8;
    v7[4] = self;
    [(ADClockService *)self _performBlock:v7];
  }
}

- (void)_removeTimer:(id)timer completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADClockService _removeTimer:completion:]";
    v31 = 2112;
    v32 = timerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s timerToRemove = %@", buf, 0x16u);
  }

  v9 = [(SOClockTimerManager *)self->_localTimerManager removeTimer:timerCopy];
  if (completionCopy)
  {
    v10 = self->_queue;
    timerID = [timerCopy timerID];
    objc_initWeak(buf, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10036A880;
    v23[3] = &unk_10051DED8;
    v12 = v10;
    v24 = v12;
    objc_copyWeak(&v28, buf);
    v13 = timerID;
    v25 = v13;
    v14 = timerCopy;
    v26 = v14;
    v15 = completionCopy;
    v27 = v15;
    v16 = [v9 addSuccessBlock:v23];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10036A954;
    v19[3] = &unk_10051DDE8;
    v20 = v14;
    v17 = v12;
    v21 = v17;
    v22 = v15;
    v18 = [v16 addFailureBlock:v19];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)_removeTimerWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADClockService _removeTimerWithID:completion:]";
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s timerID = %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10036AEF0;
  v11[3] = &unk_10051DE60;
  v12 = dCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dCopy;
  v10 = completionCopy;
  [(ADClockService *)self _fetchTimerWithID:v9 completion:v11];
}

- (void)removeTimerWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036B1C8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_updateTimer:(id)timer completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADClockService _updateTimer:completion:]";
    v31 = 2112;
    v32 = timerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s timerToUpdate = %@", buf, 0x16u);
  }

  v9 = [(SOClockTimerManager *)self->_localTimerManager updateTimer:timerCopy];
  if (completionCopy)
  {
    v10 = self->_queue;
    timerID = [timerCopy timerID];
    objc_initWeak(buf, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10036B494;
    v23[3] = &unk_10051DED8;
    v12 = v10;
    v24 = v12;
    objc_copyWeak(&v28, buf);
    v13 = timerID;
    v25 = v13;
    v14 = completionCopy;
    v27 = v14;
    v15 = timerCopy;
    v26 = v15;
    v16 = [v9 addSuccessBlock:v23];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10036B568;
    v19[3] = &unk_10051DDE8;
    v20 = v15;
    v17 = v12;
    v21 = v17;
    v22 = v14;
    v18 = [v16 addFailureBlock:v19];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)_updateTimerWithID:(id)d changes:(id)changes completion:(id)completion
{
  dCopy = d;
  changesCopy = changes;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[ADClockService _updateTimerWithID:changes:completion:]";
    v22 = 2112;
    v23 = dCopy;
    v24 = 2112;
    v25 = changesCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s timerID = %@, changes = %@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10036BB2C;
  v15[3] = &unk_10051DE38;
  v16 = changesCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = completionCopy;
  v12 = dCopy;
  v13 = completionCopy;
  v14 = changesCopy;
  [(ADClockService *)self _fetchTimerWithID:v12 completion:v15];
}

- (void)updateTimerWithID:(id)d changes:(id)changes completion:(id)completion
{
  dCopy = d;
  changesCopy = changes;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10036C0B0;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = dCopy;
  v17 = changesCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = changesCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)_addTimer:(id)timer completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADClockService _addTimer:completion:]";
    v31 = 2112;
    v32 = timerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s timerToAdd = %@", buf, 0x16u);
  }

  v9 = [(SOClockTimerManager *)self->_localTimerManager addTimer:timerCopy];
  if (completionCopy)
  {
    v10 = self->_queue;
    timerID = [timerCopy timerID];
    objc_initWeak(buf, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10036C37C;
    v23[3] = &unk_10051DED8;
    v12 = v10;
    v24 = v12;
    objc_copyWeak(&v28, buf);
    v13 = timerID;
    v25 = v13;
    v14 = completionCopy;
    v27 = v14;
    v15 = timerCopy;
    v26 = v15;
    v16 = [v9 addSuccessBlock:v23];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10036C450;
    v19[3] = &unk_10051DDE8;
    v20 = v15;
    v17 = v12;
    v21 = v17;
    v22 = v14;
    v18 = [v16 addFailureBlock:v19];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchTimerWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10036C948;
    v8[3] = &unk_10051DDC0;
    v9 = dCopy;
    v10 = completionCopy;
    [(ADClockService *)self _fetchTimersWithCompletion:v8];
  }
}

- (void)_fetchTimersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = self->_queue;
    timers = [(SOClockTimerManager *)self->_localTimerManager timers];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10036CC14;
    v15[3] = &unk_10051DD70;
    v7 = v5;
    v16 = v7;
    v8 = completionCopy;
    v17 = v8;
    v9 = [timers addSuccessBlock:v15];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10036CCC4;
    v12[3] = &unk_10051DD98;
    v13 = v7;
    v14 = v8;
    v10 = v7;
    v11 = [v9 addFailureBlock:v12];
  }
}

- (id)_mergedClockTimerSnapshot
{
  mergedClockTimerSnapshot = self->_mergedClockTimerSnapshot;
  if (!mergedClockTimerSnapshot)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[ADClockService _mergedClockTimerSnapshot]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Merging local and remote timers...", buf, 0xCu);
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    timersByID = [(AFClockTimerSnapshot *)self->_localClockTimerSnapshot timersByID];
    if ([timersByID count])
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        v9 = [timersByID count];
        *buf = 136315394;
        v27 = "[ADClockService _mergedClockTimerSnapshot]";
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Adding %tu timers (local)...", buf, 0x16u);
      }

      [v5 addEntriesFromDictionary:timersByID];
    }

    remoteClockTimerSnapshotsByDeviceIdentifier = self->_remoteClockTimerSnapshotsByDeviceIdentifier;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10036D078;
    v24[3] = &unk_10051DD20;
    v11 = v5;
    v25 = v11;
    [(NSDictionary *)remoteClockTimerSnapshotsByDeviceIdentifier enumerateKeysAndObjectsUsingBlock:v24];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10036D190;
    v22 = &unk_10051DD48;
    v12 = v11;
    v23 = v12;
    v13 = [AFClockTimerSnapshot newWithBuilder:&v19];
    v14 = self->_mergedClockTimerSnapshot;
    self->_mergedClockTimerSnapshot = v13;

    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v12 count];
      *buf = 136315394;
      v27 = "[ADClockService _mergedClockTimerSnapshot]";
      v28 = 2048;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Merged %tu local and remote timers.", buf, 0x16u);
    }

    mergedClockTimerSnapshot = self->_mergedClockTimerSnapshot;
  }

  return mergedClockTimerSnapshot;
}

- (id)_mergedClockAlarmSnapshot
{
  mergedClockAlarmSnapshot = self->_mergedClockAlarmSnapshot;
  if (!mergedClockAlarmSnapshot)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[ADClockService _mergedClockAlarmSnapshot]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Merging local and remote alarms...", buf, 0xCu);
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    alarmsByID = [(AFClockAlarmSnapshot *)self->_localClockAlarmSnapshot alarmsByID];
    if ([alarmsByID count])
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        v9 = [alarmsByID count];
        *buf = 136315394;
        v27 = "[ADClockService _mergedClockAlarmSnapshot]";
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Adding %tu alarms (local)...", buf, 0x16u);
      }

      [v5 addEntriesFromDictionary:alarmsByID];
    }

    remoteClockAlarmSnapshotsByDeviceIdentifier = self->_remoteClockAlarmSnapshotsByDeviceIdentifier;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10036D4DC;
    v24[3] = &unk_10051DCD0;
    v11 = v5;
    v25 = v11;
    [(NSDictionary *)remoteClockAlarmSnapshotsByDeviceIdentifier enumerateKeysAndObjectsUsingBlock:v24];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10036D5F4;
    v22 = &unk_10051DCF8;
    v12 = v11;
    v23 = v12;
    v13 = [AFClockAlarmSnapshot newWithBuilder:&v19];
    v14 = self->_mergedClockAlarmSnapshot;
    self->_mergedClockAlarmSnapshot = v13;

    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v12 count];
      *buf = 136315394;
      v27 = "[ADClockService _mergedClockAlarmSnapshot]";
      v28 = 2048;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Merged %tu local and remote alarms.", buf, 0x16u);
    }

    mergedClockAlarmSnapshot = self->_mergedClockAlarmSnapshot;
  }

  return mergedClockAlarmSnapshot;
}

- (void)_enumerateTimersUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10036D704;
    v6[3] = &unk_10051DCA8;
    v7 = blockCopy;
    [(ADClockService *)self _enumerateTimerSnapshotsUsingBlock:v6];
  }
}

- (void)_enumerateTimerSnapshotsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    if (self->_localClockTimerSnapshot)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }

    remoteClockTimerSnapshotsByDeviceIdentifier = self->_remoteClockTimerSnapshotsByDeviceIdentifier;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10036D898;
    v7[3] = &unk_10051DC58;
    v8 = v5;
    [(NSDictionary *)remoteClockTimerSnapshotsByDeviceIdentifier enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)_enumerateAlarmsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10036D940;
    v6[3] = &unk_10051DC30;
    v7 = blockCopy;
    [(ADClockService *)self _enumerateAlarmSnapshotsUsingBlock:v6];
  }
}

- (void)_enumerateAlarmSnapshotsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    if (self->_localClockAlarmSnapshot)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }

    remoteClockAlarmSnapshotsByDeviceIdentifier = self->_remoteClockAlarmSnapshotsByDeviceIdentifier;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10036DAD4;
    v7[3] = &unk_10051DBE0;
    v8 = v5;
    [(NSDictionary *)remoteClockAlarmSnapshotsByDeviceIdentifier enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)_mutateMergedClockTimerSnapshotUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADClockService _mutateMergedClockTimerSnapshotUsingBlock:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Begin mutating timer snapshot.", &v10, 0xCu);
    }

    _mergedClockTimerSnapshot = [(ADClockService *)self _mergedClockTimerSnapshot];
    v7 = blockCopy[2](blockCopy, _mergedClockTimerSnapshot);
    mergedClockTimerSnapshot = self->_mergedClockTimerSnapshot;
    self->_mergedClockTimerSnapshot = v7;

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADClockService _mutateMergedClockTimerSnapshotUsingBlock:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s End mutating timer snapshot.", &v10, 0xCu);
    }
  }
}

- (void)_performBlock:(id)block
{
  group = self->_group;
  if (group)
  {
    dispatch_group_notify(group, self->_queue, block);
  }

  else
  {
    (*(block + 2))(block);
  }
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10036DCF8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(queue, v7);
  }
}

- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036DDB4;
  block[3] = &unk_10051E128;
  selfCopy = self;
  originCopy = origin;
  v12 = clientCopy;
  v10 = clientCopy;
  dispatch_async(queue, block);
}

- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  clientCopy = client;
  v9 = +[ADCommandCenter sharedCommandCenter];
  _contextManager = [v9 _contextManager];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10036DF8C;
  v14[3] = &unk_10051DBB8;
  v15 = clientCopy;
  selfCopy = self;
  v17 = _contextManager;
  originCopy = origin;
  v12 = _contextManager;
  v13 = clientCopy;
  dispatch_async(queue, v14);
}

- (void)getSnapshotsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADClockService getSnapshotsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (completionCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10036E884;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = completionCopy;
    [(ADClockService *)self performBlock:v6];
  }
}

- (void)getFiringStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADClockService getFiringStatesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (completionCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10036EB0C;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = completionCopy;
    [(ADClockService *)self performBlock:v6];
  }
}

- (ADClockService)init
{
  v21.receiver = self;
  v21.super_class = ADClockService;
  v2 = [(ADClockService *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.assistant.clock-service", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v7;

    v9 = objc_alloc_init(ADRemoteTimerManager);
    remoteTimerManager = v2->_remoteTimerManager;
    v2->_remoteTimerManager = v9;

    v11 = objc_alloc_init(SOClockAlarmManager);
    localAlarmManager = v2->_localAlarmManager;
    v2->_localAlarmManager = v11;

    v13 = v2->_localAlarmManager;
    if (!v13)
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "[ADClockService init]";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of SOClockAlarmManager.", buf, 0xCu);
        v13 = v2->_localAlarmManager;
      }

      else
      {
        v13 = 0;
      }
    }

    [(SOClockAlarmManager *)v13 checkIn];
    v15 = objc_alloc_init(SOClockTimerManager);
    localTimerManager = v2->_localTimerManager;
    v2->_localTimerManager = v15;

    v17 = v2->_localTimerManager;
    if (!v17)
    {
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "[ADClockService init]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of SOClockTimerManager.", buf, 0xCu);
        v17 = v2->_localTimerManager;
      }

      else
      {
        v17 = 0;
      }
    }

    [(SOClockTimerManager *)v17 checkIn];
    v19 = +[ADRequestLifecycleObserver sharedObserver];
    [v19 addListener:v2];
  }

  return v2;
}

+ (id)sharedService
{
  if (AFIsHorseman())
  {
    if (qword_100590B80 != -1)
    {
      dispatch_once(&qword_100590B80, &stru_10051DA00);
    }

    v2 = qword_100590B88;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    +[SOClockAlarmManager warmUp];

    +[SOClockTimerManager warmUp];
  }
}

@end
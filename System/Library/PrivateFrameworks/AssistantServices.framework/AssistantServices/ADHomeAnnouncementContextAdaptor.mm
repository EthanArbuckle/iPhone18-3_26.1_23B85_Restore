@interface ADHomeAnnouncementContextAdaptor
- (ADHomeAnnouncementContextAdaptor)initWithInstanceContext:(id)context;
- (void)_invalidate;
- (void)_processAndEvaluateSnapshot:(id)snapshot;
- (void)_setSnapshot:(id)snapshot;
- (void)getSnapshotWithCompletion:(id)completion;
- (void)homeAnnouncementObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to;
- (void)invalidate;
- (void)registerSnapshotUpdater:(id)updater;
- (void)unregisterSnapshotUpdater;
@end

@implementation ADHomeAnnouncementContextAdaptor

- (void)_setSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  snapshot = self->_snapshot;
  if (snapshot != snapshotCopy && ([(AFHomeAnnouncementSnapshot *)snapshot isEqual:snapshotCopy]& 1) == 0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = self->_snapshot;
      v11 = 136315906;
      v12 = "[ADHomeAnnouncementContextAdaptor _setSnapshot:]";
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = snapshotCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %p %@ -> %@", &v11, 0x2Au);
    }

    v8 = [(AFHomeAnnouncementSnapshot *)snapshotCopy copy];
    v9 = self->_snapshot;
    self->_snapshot = v8;

    snapshotUpdater = self->_snapshotUpdater;
    if (snapshotUpdater)
    {
      snapshotUpdater[2](snapshotUpdater, self->_snapshot);
    }
  }
}

- (void)_processAndEvaluateSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[ADHomeAnnouncementContextAdaptor _processAndEvaluateSnapshot:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v45 = snapshotCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %p snapshot = %@", buf, 0x20u);
  }

  lastPlayedAnnouncement = [snapshotCopy lastPlayedAnnouncement];
  expirationDuration = self->_expirationDuration;
  v8 = lastPlayedAnnouncement;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ADHomeAnnouncementGetIsValid";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    v45 = *&expirationDuration;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s announcement = %@, expirationDuration = %f", buf, 0x20u);
  }

  if (!v8)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADHomeAnnouncementGetIsValid";
      v20 = "%s announcement is nil";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  identifier = [v8 identifier];
  v11 = identifier == 0;

  if (v11)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADHomeAnnouncementGetIsValid";
      v20 = "%s announcement identifier is nil";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v12 = +[NSDate date];
  finishedDate = [v8 finishedDate];
  if (finishedDate)
  {
    [v12 timeIntervalSinceDate:finishedDate];
    v15 = v14;
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "ADHomeAnnouncementGetIsValid";
      *&buf[12] = 2048;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s timeIntervalSinceAnnouncementFinishedDate = %f", buf, 0x16u);
    }

    if (v15 < expirationDuration)
    {
      v17 = expirationDuration - v15;
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "ADHomeAnnouncementGetIsValid";
        *&buf[12] = 2048;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s timeIntervalUntilExpiration = %f", buf, 0x16u);
      }

LABEL_36:
      v31 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[ADHomeAnnouncementContextAdaptor _processAndEvaluateSnapshot:]";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2048;
        v45 = *&v17;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s lastPlayedAnnouncement %@ is valid with %f seconds until expiration.", buf, 0x20u);
      }

      [(ADHomeAnnouncementContextAdaptor *)self _setSnapshot:snapshotCopy];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = sub_1002C5304;
      v46 = sub_1002C5314;
      v47 = 0;
      objc_initWeak(&location, self);
      v32 = [AFWatchdogTimer alloc];
      queue = self->_queue;
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_1002C531C;
      v39 = &unk_10051A6D8;
      objc_copyWeak(&v42, &location);
      v40 = snapshotCopy;
      v41 = buf;
      v34 = [v32 initWithTimeoutInterval:queue onQueue:&v36 timeoutHandler:v17 + 0.005];
      v35 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v34;

      [*(*&buf[8] + 40) start];
      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_39;
    }
  }

  else
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADHomeAnnouncementGetIsValid";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s announcement finishedDate is nil", buf, 0xCu);
    }
  }

  startedDate = [v8 startedDate];
  if (startedDate)
  {
    [v12 timeIntervalSinceDate:startedDate];
    v26 = v25;
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "ADHomeAnnouncementGetIsValid";
      *&buf[12] = 2048;
      *&buf[14] = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s timeIntervalSinceAnnouncementStartedDate = %f", buf, 0x16u);
    }

    if (v26 < expirationDuration)
    {
      v17 = expirationDuration - v26;
      v30 = AFSiriLogContextDaemon;
      v28 = 1;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "ADHomeAnnouncementGetIsValid";
        *&buf[12] = 2048;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s timeIntervalUntilExpiration = %f", buf, 0x16u);
      }
    }

    else
    {
      v28 = 0;
      v17 = 0.0;
    }
  }

  else
  {
    v29 = AFSiriLogContextDaemon;
    v17 = 0.0;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADHomeAnnouncementGetIsValid";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s announcement startedDate is nil", buf, 0xCu);
    }

    v28 = 0;
  }

  if (v28)
  {
    goto LABEL_36;
  }

LABEL_20:
  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[ADHomeAnnouncementContextAdaptor _processAndEvaluateSnapshot:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s lastPlayedAnnouncement %@ is invalid.", buf, 0x16u);
  }

  v22 = [snapshotCopy mutatedCopyWithMutator:&stru_100519F98];
  [(ADHomeAnnouncementContextAdaptor *)self _setSnapshot:v22];

LABEL_39:
}

- (void)_invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[ADHomeAnnouncementContextAdaptor _invalidate]";
    v9 = 2048;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s %p", &v7, 0x16u);
  }

  [(AFHomeAnnouncementObserver *)self->_observer removeListener:self];
  observer = self->_observer;
  self->_observer = 0;

  snapshotUpdater = self->_snapshotUpdater;
  self->_snapshotUpdater = 0;

  snapshot = self->_snapshot;
  self->_snapshot = 0;
}

- (void)homeAnnouncementObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to
{
  toCopy = to;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002C55DC;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = toCopy;
  v8 = toCopy;
  dispatch_async(queue, v9);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C5660;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    group = self->_group;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002C5714;
    v8[3] = &unk_10051E038;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_group_notify(group, queue, v8);
  }
}

- (void)unregisterSnapshotUpdater
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v7 = "[ADHomeAnnouncementContextAdaptor unregisterSnapshotUpdater]";
    v8 = 2048;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s %p", buf, 0x16u);
  }

  dispatch_group_enter(self->_group);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C5944;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)registerSnapshotUpdater:(id)updater
{
  updaterCopy = updater;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[ADHomeAnnouncementContextAdaptor registerSnapshotUpdater:]";
    v12 = 2048;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %p", buf, 0x16u);
  }

  dispatch_group_enter(self->_group);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002C5AE8;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = updaterCopy;
  v7 = updaterCopy;
  dispatch_async(queue, v8);
}

- (ADHomeAnnouncementContextAdaptor)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ADHomeAnnouncementContextAdaptor;
  v5 = [(ADHomeAnnouncementContextAdaptor *)&v19 init];
  if (v5)
  {
    if (contextCopy)
    {
      v6 = contextCopy;
    }

    else
    {
      v6 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v6;

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v18 = v5->_instanceContext;
      *buf = 136315650;
      v21 = "[ADHomeAnnouncementContextAdaptor initWithInstanceContext:]";
      v22 = 2048;
      v23 = v5;
      v24 = 2112;
      v25 = v18;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %p %@", buf, 0x20u);
    }

    v5->_expirationDuration = 60.0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);

    v11 = dispatch_queue_create("com.apple.assistant.home-announcement-adaptor", v10);
    queue = v5->_queue;
    v5->_queue = v11;

    v13 = dispatch_group_create();
    group = v5->_group;
    v5->_group = v13;

    v15 = [[AFHomeAnnouncementObserver alloc] initWithInstanceContext:v5->_instanceContext];
    observer = v5->_observer;
    v5->_observer = v15;
  }

  return v5;
}

@end
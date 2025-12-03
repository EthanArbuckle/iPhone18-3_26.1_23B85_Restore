@interface ADCallNotificationObserver
- (ADCallNotificationObserver)init;
- (BOOL)_answerAndHangUpIntentsSupportedByBundleID:(id)d;
- (id)callNotificationsIdentifiers;
- (void)_cancelCallNotificationTimer;
- (void)_resetCallNotificationTimer;
- (void)notificationManager:(id)manager didAddBulletin:(id)bulletin;
- (void)notificationManager:(id)manager didRemoveBulletin:(id)bulletin;
@end

@implementation ADCallNotificationObserver

- (void)_resetCallNotificationTimer
{
  [(ADCallNotificationObserver *)self _cancelCallNotificationTimer];
  objc_initWeak(&location, self);
  v3 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100250290;
  v10 = &unk_10051B5F0;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithTimeoutInterval:queue onQueue:&v7 timeoutHandler:30.0];
  callNotificationTimer = self->_callNotificationTimer;
  self->_callNotificationTimer = v5;

  [(AFWatchdogTimer *)self->_callNotificationTimer start:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_cancelCallNotificationTimer
{
  callNotificationTimer = self->_callNotificationTimer;
  if (callNotificationTimer)
  {
    [(AFWatchdogTimer *)callNotificationTimer cancel];
    v4 = self->_callNotificationTimer;
    self->_callNotificationTimer = 0;
  }
}

- (BOOL)_answerAndHangUpIntentsSupportedByBundleID:(id)d
{
  dCopy = d;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v4 = qword_1005906B8;
  v30 = qword_1005906B8;
  if (!qword_1005906B8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1002508A8;
    v32 = &unk_10051E1C8;
    v33 = &v27;
    sub_1002508A8(buf);
    v4 = v28[3];
  }

  v5 = v4;
  _Block_object_dispose(&v27, 8);
  v26 = 0;
  v6 = [[v4 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v26];
  v7 = v26;
  if (!v7)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v10 = qword_1005906C8;
    v30 = qword_1005906C8;
    if (!qword_1005906C8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100250A94;
      v32 = &unk_10051E1C8;
      v33 = &v27;
      sub_100250A94(buf);
      v10 = v28[3];
    }

    v11 = v10;
    _Block_object_dispose(&v27, 8);
    v12 = [v10 appInfoWithApplicationRecord:v6];
    supportedIntents = [v12 supportedIntents];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v14 = qword_1005906D8;
    v30 = qword_1005906D8;
    if (!qword_1005906D8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100250B5C;
      v32 = &unk_10051E1C8;
      v33 = &v27;
      v15 = sub_100250BAC();
      v16 = dlsym(v15, "INAnswerCallIntentIdentifier");
      *(v33[1] + 24) = v16;
      qword_1005906D8 = *(v33[1] + 24);
      v14 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v14)
    {
      v17 = *v14;
      if (![supportedIntents containsObject:v17])
      {
        v9 = 0;
        goto LABEL_18;
      }

      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v18 = qword_1005906E0;
      v30 = qword_1005906E0;
      if (!qword_1005906E0)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100250D00;
        v32 = &unk_10051E1C8;
        v33 = &v27;
        v19 = sub_100250BAC();
        v20 = dlsym(v19, "INHangUpCallIntentIdentifier");
        *(v33[1] + 24) = v20;
        qword_1005906E0 = *(v33[1] + 24);
        v18 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (v18)
      {
        v9 = [supportedIntents containsObject:*v18];
LABEL_18:

        goto LABEL_19;
      }

      v24 = +[NSAssertionHandler currentHandler];
      v25 = [NSString stringWithUTF8String:"NSString *getINHangUpCallIntentIdentifier(void)"];
      [v24 handleFailureInFunction:v25 file:@"ADCallNotificationObserver.m" lineNumber:39 description:{@"%s", dlerror()}];
    }

    else
    {
      v22 = +[NSAssertionHandler currentHandler];
      v23 = [NSString stringWithUTF8String:"NSString *getINAnswerCallIntentIdentifier(void)"];
      [v22 handleFailureInFunction:v23 file:@"ADCallNotificationObserver.m" lineNumber:38 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "[ADCallNotificationObserver _answerAndHangUpIntentsSupportedByBundleID:]";
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    *&buf[22] = 2112;
    v32 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to retrieve LSApplicationRecord for bundle identifier %@: %@", buf, 0x20u);
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (void)notificationManager:(id)manager didRemoveBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100250ED0;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = bulletinCopy;
  v7 = bulletinCopy;
  dispatch_async(queue, v8);
}

- (void)notificationManager:(id)manager didAddBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100251098;
  v8[3] = &unk_10051E010;
  v9 = bulletinCopy;
  selfCopy = self;
  v7 = bulletinCopy;
  dispatch_async(queue, v8);
}

- (id)callNotificationsIdentifiers
{
  v2 = [(NSMutableSet *)self->_callNotificationsIdentifiers copy];

  return v2;
}

- (ADCallNotificationObserver)init
{
  v9.receiver = self;
  v9.super_class = ADCallNotificationObserver;
  v2 = [(ADCallNotificationObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create(0, v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableSet);
    callNotificationsIdentifiers = v2->_callNotificationsIdentifiers;
    v2->_callNotificationsIdentifiers = v6;
  }

  return v2;
}

@end
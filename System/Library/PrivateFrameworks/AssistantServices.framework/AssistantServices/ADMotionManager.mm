@interface ADMotionManager
- (ADMotionManager)init;
- (BOOL)isDriving;
- (id)motionActivity;
- (id)motionConfidence;
- (int64_t)deviceMotion;
- (void)startUpdatingMotionActivityForReason:(id)reason completion:(id)completion;
- (void)stopUpdatingMotionActivityForReason:(id)reason completion:(id)completion;
@end

@implementation ADMotionManager

- (int64_t)deviceMotion
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  externalQueue = self->_externalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000087BC;
  v7[3] = &unk_10051D4A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(externalQueue, v7);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = v9[3];
    *buf = 136315394;
    v13 = "[ADMotionManager deviceMotion]";
    v14 = 2048;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #modes deviceMotion = %ld", buf, 0x16u);
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)motionActivity
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10031CEA8;
  v12 = sub_10031CEB8;
  v13 = 0;
  externalQueue = self->_externalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014FBC;
  v7[3] = &unk_10051D4A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(externalQueue, v7);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = v9[5];
    *buf = 136315394;
    v15 = "[ADMotionManager motionActivity]";
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s motionActivity = %@", buf, 0x16u);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (BOOL)isDriving
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  externalQueue = self->_externalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10031CCC8;
  v7[3] = &unk_10051D4A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(externalQueue, v7);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    if (*(v9 + 24))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 136315394;
    v13 = "[ADMotionManager isDriving]";
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s isDriving = %@", buf, 0x16u);
  }

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)motionConfidence
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10031CEA8;
  v12 = sub_10031CEB8;
  v13 = 0;
  externalQueue = self->_externalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10031CEC0;
  v7[3] = &unk_10051D4A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(externalQueue, v7);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = v9[5];
    *buf = 136315394;
    v15 = "[ADMotionManager motionConfidence]";
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s motionConfidence = %@", buf, 0x16u);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)stopUpdatingMotionActivityForReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "[ADMotionManager stopUpdatingMotionActivityForReason:completion:]";
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s reason = %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10031D0B0;
  v11[3] = &unk_10051E038;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(internalQueue, v11);
}

- (void)startUpdatingMotionActivityForReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "[ADMotionManager startUpdatingMotionActivityForReason:completion:]";
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s reason = %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10031D2C8;
  v11[3] = &unk_10051E038;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(internalQueue, v11);
}

- (ADMotionManager)init
{
  v17.receiver = self;
  v17.super_class = ADMotionManager;
  v2 = [(ADMotionManager *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADMotionManagerInternalQueue", v3);

    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_alloc_init(NSOperationQueue);
    opQueue = v2->_opQueue;
    v2->_opQueue = v6;

    [(NSOperationQueue *)v2->_opQueue setUnderlyingQueue:v2->_internalQueue];
    [(NSOperationQueue *)v2->_opQueue setMaxConcurrentOperationCount:1];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("ADMotionManagerExternalQueue", v8);

    externalQueue = v2->_externalQueue;
    v2->_externalQueue = v9;

    v11 = v2->_internalQueue;
    v12 = +[ADQueueMonitor sharedMonitor];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10031D7D8;
    v15[3] = &unk_10051C2E0;
    v16 = v11;
    v13 = v11;
    [v12 addQueue:v13 heartBeatInterval:v15 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v2;
}

@end
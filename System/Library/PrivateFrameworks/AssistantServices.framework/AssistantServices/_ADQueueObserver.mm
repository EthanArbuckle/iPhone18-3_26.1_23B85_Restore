@interface _ADQueueObserver
- (_ADQueueObserver)initWithQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler;
- (void)heartBeatFiredWithQueue:(id)queue;
- (void)startWithQueue:(id)queue;
- (void)stop;
- (void)timeoutDetected;
@end

@implementation _ADQueueObserver

- (void)timeoutDetected
{
  v3 = self->_numberOfOccurrences + 1;
  self->_numberOfOccurrences = v3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    queue = self->_queue;
    v7 = 136315650;
    v8 = "[_ADQueueObserver timeoutDetected]";
    v9 = 2112;
    v10 = queue;
    v11 = 2048;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s queue = %@, numberOfOccurrences = %tu", &v7, 0x20u);
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2](timeoutHandler, self->_numberOfOccurrences);
  }
}

- (void)heartBeatFiredWithQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100312FE8;
  v27 = sub_100312FF8;
  v28 = 0;
  v5 = [AFSafetyBlock alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100313000;
  v21[3] = &unk_10051BAE0;
  objc_copyWeak(&v22, &location);
  v6 = [v5 initWithBlock:v21];
  v7 = [AFWatchdogTimer alloc];
  timeoutInterval = self->_timeoutInterval;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10031304C;
  v19[3] = &unk_10051DFE8;
  v9 = v6;
  v20 = v9;
  v10 = [v7 initWithTimeoutInterval:queueCopy onQueue:v19 timeoutHandler:timeoutInterval];
  v11 = v24[5];
  v24[5] = v10;

  [v24[5] start];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100313058;
  v15[3] = &unk_10051C588;
  v16 = v9;
  v17 = queueCopy;
  v18 = &v23;
  v13 = queueCopy;
  v14 = v9;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v22);
  _Block_object_dispose(&v23, 8);

  objc_destroyWeak(&location);
}

- (void)stop
{
  heartBeat = self->_heartBeat;
  if (heartBeat)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      queue = self->_queue;
      v7 = 136315394;
      v8 = "[_ADQueueObserver stop]";
      v9 = 2112;
      v10 = queue;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s queue = %@", &v7, 0x16u);
      heartBeat = self->_heartBeat;
    }

    [(AFHeartBeat *)heartBeat invalidate];
    v5 = self->_heartBeat;
    self->_heartBeat = 0;
  }
}

- (void)startWithQueue:(id)queue
{
  queueCopy = queue;
  if (!self->_heartBeat)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      queue = self->_queue;
      *location = 136315394;
      *&location[4] = "[_ADQueueObserver startWithQueue:]";
      v16 = 2112;
      queueCopy2 = queue;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s queue = %@", location, 0x16u);
    }

    v6 = [[NSString alloc] initWithFormat:@"com.apple.assistant.queue-observer.%s", dispatch_queue_get_label(self->_queue)];
    objc_initWeak(location, self);
    v7 = [AFHeartBeat alloc];
    heartBeatInterval = self->_heartBeatInterval;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003133E4;
    v12[3] = &unk_10051BAB8;
    objc_copyWeak(&v14, location);
    v13 = queueCopy;
    v9 = [v7 initWithIdentifier:v6 queue:v13 effectiveDate:0 expirationDuration:v12 heartBeatInterval:0 heartBeatHandler:0.0 invalidationHandler:heartBeatInterval];
    heartBeat = self->_heartBeat;
    self->_heartBeat = v9;

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (_ADQueueObserver)initWithQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = _ADQueueObserver;
  v13 = [(_ADQueueObserver *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    v14->_heartBeatInterval = interval;
    v14->_timeoutInterval = timeoutInterval;
    v15 = [handlerCopy copy];
    timeoutHandler = v14->_timeoutHandler;
    v14->_timeoutHandler = v15;
  }

  return v14;
}

@end
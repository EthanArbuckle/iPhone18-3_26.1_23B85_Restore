@interface ADQueueMonitor
+ (id)sharedMonitor;
- (ADQueueMonitor)init;
- (void)_addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler;
- (void)_beginMonitoring;
- (void)_endMonitoring;
- (void)_removeQueue:(id)queue;
- (void)addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler;
- (void)beginMonitoring;
- (void)endMonitoring;
- (void)removeQueue:(id)queue;
@end

@implementation ADQueueMonitor

- (void)_beginMonitoring
{
  numberOfTransactions = self->_numberOfTransactions;
  if (!numberOfTransactions)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[ADQueueMonitor _beginMonitoring]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allValues = [(NSMutableDictionary *)self->_observersByIdentifier allValues];
    v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v10 + 1) + 8 * v9) startWithQueue:self->_queue];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    numberOfTransactions = self->_numberOfTransactions;
  }

  self->_numberOfTransactions = numberOfTransactions + 1;
}

+ (id)sharedMonitor
{
  if (qword_1005909D0 != -1)
  {
    dispatch_once(&qword_1005909D0, &stru_10051BA68);
  }

  v3 = qword_1005909D8;

  return v3;
}

- (void)beginMonitoring
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADQueueMonitor beginMonitoring]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A30;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_endMonitoring
{
  numberOfTransactions = self->_numberOfTransactions;
  if (numberOfTransactions == 1)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[ADQueueMonitor _endMonitoring]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allValues = [(NSMutableDictionary *)self->_observersByIdentifier allValues];
    v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v10 + 1) + 8 * v9) stop];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    numberOfTransactions = self->_numberOfTransactions;
  }

  self->_numberOfTransactions = numberOfTransactions - 1;
}

- (void)_removeQueue:(id)queue
{
  queueCopy = queue;
  v5 = [NSString alloc];
  label = dispatch_queue_get_label(queueCopy);

  v8 = [v5 initWithUTF8String:label];
  v7 = [(NSMutableDictionary *)self->_observersByIdentifier objectForKey:?];
  if (v7)
  {
    [(NSMutableDictionary *)self->_observersByIdentifier removeObjectForKey:v8];
    [v7 stop];
  }
}

- (void)_addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v12 = [[NSString alloc] initWithUTF8String:dispatch_queue_get_label(queueCopy)];
  v13 = [(NSMutableDictionary *)self->_observersByIdentifier objectForKey:v12];

  if (v13)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[ADQueueMonitor _addQueue:heartBeatInterval:timeoutInterval:timeoutHandler:]";
      v18 = 2112;
      v19 = queueCopy;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Queue %@ is already being observed.", &v16, 0x16u);
    }
  }

  [(ADQueueMonitor *)self _removeQueue:queueCopy];
  v15 = [[_ADQueueObserver alloc] initWithQueue:queueCopy heartBeatInterval:handlerCopy timeoutInterval:interval timeoutHandler:timeoutInterval];

  [(NSMutableDictionary *)self->_observersByIdentifier setObject:v15 forKey:v12];
  if (self->_numberOfTransactions >= 1)
  {
    [(_ADQueueObserver *)v15 startWithQueue:self->_queue];
  }
}

- (void)endMonitoring
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADQueueMonitor endMonitoring]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003135E4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100313684;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100313768;
  block[3] = &unk_10051BA90;
  block[4] = self;
  v16 = queueCopy;
  intervalCopy = interval;
  timeoutIntervalCopy = timeoutInterval;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  dispatch_async(queue, block);
}

- (ADQueueMonitor)init
{
  v10.receiver = self;
  v10.super_class = ADQueueMonitor;
  v2 = [(ADQueueMonitor *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.assistant.queue-monitor", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    observersByIdentifier = v2->_observersByIdentifier;
    v2->_observersByIdentifier = v7;
  }

  return v2;
}

@end
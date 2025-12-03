@interface ADDeviceRouter
- (ADDeviceRouter)initWithQueue:(id)queue;
- (id)_initWithQueue:(id)queue deviceProximityManager:(id)manager;
- (void)_fetchCurrentDeviceContextTuplesIfNecessaryWithCompletion:(id)completion;
- (void)_updateContext:(id)context;
- (void)getPreferredDeviceToHandleCommand:(id)command logNearbyDeviceMetrics:(BOOL)metrics executionContext:(id)context sharedUserID:(id)d completion:(id)completion;
- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)updateContext:(id)context;
@end

@implementation ADDeviceRouter

- (void)requestLifecycleObserver:(id)observer requestDidEndWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009844C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getPreferredDeviceToHandleCommand:(id)command logNearbyDeviceMetrics:(BOOL)metrics executionContext:(id)context sharedUserID:(id)d completion:(id)completion
{
  commandCopy = command;
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  if (AFSupportsHALDeviceRouting())
  {
    dispatch_assert_queue_V2(self->_queue);
    if ([commandCopy ad_requiresDeviceContext])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000988DC;
      v17[3] = &unk_100511D30;
      v17[4] = self;
      v18 = commandCopy;
      v19 = contextCopy;
      v20 = dCopy;
      v21 = completionCopy;
      [(ADDeviceRouter *)self _fetchCurrentDeviceContextTuplesIfNecessaryWithCompletion:v17];
    }

    else
    {
      v16 = [commandCopy ad_executionDeviceForDeviceContextTuples:self->_currentDeviceContextTuples executionContext:contextCopy proximityMap:0 sharedUserID:dCopy localDeviceIsFollower:self->_isLocalDeviceFollowerInStereoPair == 2];
      (*(completionCopy + 2))(completionCopy, v16, 0);
    }
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[ADDeviceRouter getPreferredDeviceToHandleCommand:logNearbyDeviceMetrics:executionContext:sharedUserID:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #hal Not supported on this platform", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_fetchCurrentDeviceContextTuplesIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    if (self->_currentDeviceContextTuples)
    {
      (*(completionCopy + 2))(completionCopy);
    }

    else
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v13 = "[ADDeviceRouter _fetchCurrentDeviceContextTuplesIfNecessaryWithCompletion:]";
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal context not updated, fetching now", buf, 0xCu);
      }

      v7 = mach_absolute_time();
      v8 = +[ADCommandCenter sharedCommandCenter];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100098E48;
      v9[3] = &unk_10050FF10;
      v9[4] = self;
      v11 = v7;
      v10 = v5;
      [v8 getCurrentContextSnapshotWithCompletion:v9];
    }
  }
}

- (void)_updateContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_currentDeviceContextTuples, context);
  v6 = AFIsInternalInstall();
  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v14 = 136315138;
      v15 = "[ADDeviceRouter _updateContext:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal updating...", &v14, 0xCu);
    }

    [(NSArray *)self->_currentDeviceContextTuples enumerateObjectsUsingBlock:&stru_10050FEE8];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[ADDeviceRouter _updateContext:]";
      v10 = "%s #hal updated";
      v11 = v9;
      v12 = 12;
LABEL_9:
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v10, &v14, v12);
    }
  }

  else if (v8)
  {
    currentDeviceContextTuples = self->_currentDeviceContextTuples;
    v14 = 136315394;
    v15 = "[ADDeviceRouter _updateContext:]";
    v16 = 2112;
    v17 = currentDeviceContextTuples;
    v10 = "%s #hal %@";
    v11 = v7;
    v12 = 22;
    goto LABEL_9;
  }
}

- (void)updateContext:(id)context
{
  contextCopy = context;
  if (AFSupportsHALDeviceRouting())
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000993C0;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = contextCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[ADDeviceRouter updateContext:]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal Not supported on this platform", buf, 0xCu);
    }
  }
}

- (id)_initWithQueue:(id)queue deviceProximityManager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = ADDeviceRouter;
  v9 = [(ADDeviceRouter *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(p_isa + 4, manager);
    v11 = +[ADRequestLifecycleObserver sharedObserver];
    [v11 addListener:p_isa];
  }

  return p_isa;
}

- (ADDeviceRouter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[ADDeviceProximityManager sharedManager];
  v6 = [(ADDeviceRouter *)self _initWithQueue:queueCopy deviceProximityManager:v5];

  return v6;
}

@end
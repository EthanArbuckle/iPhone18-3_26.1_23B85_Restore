@interface ASServicesMonitor
- (ASServicesMonitor)init;
- (ASServicesMonitorDelegate)delegate;
- (id)_pendingServiceBundlesToReload;
- (id)keepAliveWithReplyHandler:(id)handler;
- (id)startWatchdogForPluginAtPath:(id)path syncClassName:(id)name completion:(id)completion;
- (void)__CRASH_DUE_TO_STUCK_PLUGIN__;
- (void)_reloadPendingServiceBundles;
- (void)_restartDueToStuckPluginAtPath:(id)path;
- (void)_restartProcessIfNeeded;
- (void)decrementKeepAliveCount;
- (void)incrementKeepAliveCount;
- (void)reloadServiceBundleAtPath:(id)path;
@end

@implementation ASServicesMonitor

- (void)incrementKeepAliveCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A04;
  block[3] = &unk_1000146A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)decrementKeepAliveCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001C04;
  block[3] = &unk_1000146A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_restartProcessIfNeeded
{
  if (self->_abortMethod)
  {
    abortMethod = self->_abortMethod;
    v8[7] = v2;
    v8[8] = v3;
    if (!self->_keepAliveCount)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      stuckPluginPath = self->_stuckPluginPath;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100005950;
      v8[3] = &unk_1000146A8;
      v8[4] = self;
      [WeakRetained serviceMonitorWillCrashAssistantServiceDueToPluginAtPath:stuckPluginPath reply:v8];
    }
  }
}

- (ASServicesMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_reloadPendingServiceBundles
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _pendingServiceBundlesToReload = [(ASServicesMonitor *)self _pendingServiceBundlesToReload];
  v3 = [_pendingServiceBundlesToReload countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(_pendingServiceBundlesToReload);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        isLoaded = [v7 isLoaded];
        v9 = AFSiriLogContextService;
        v10 = os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO);
        if (isLoaded)
        {
          if (v10)
          {
            v14 = v9;
            bundlePath = [v7 bundlePath];
            *buf = 136315394;
            v22 = "[ASServicesMonitor _reloadPendingServiceBundles]";
            v23 = 2114;
            v24 = bundlePath;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Reloading service at path: %{public}@ (Note: at this point, we're just killing assistant_service, not really reloading anything. See enhancement request <rdar://problem/48655714> for details)", buf, 0x16u);
          }

          exit(0);
        }

        if (v10)
        {
          v11 = v9;
          bundlePath2 = [v7 bundlePath];
          *buf = 136315394;
          v22 = "[ASServicesMonitor _reloadPendingServiceBundles]";
          v23 = 2114;
          v24 = bundlePath2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Service at path (%{public}@) hasn't been loaded before, no need to reload", buf, 0x16u);
        }
      }

      v4 = [_pendingServiceBundlesToReload countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v4);
  }

  pendingServiceBundlesToReload = self->_pendingServiceBundlesToReload;
  self->_pendingServiceBundlesToReload = 0;
}

- (void)reloadServiceBundleAtPath:(id)path
{
  pathCopy = path;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ASServicesMonitor reloadServiceBundleAtPath:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v6 = [NSBundle bundleWithPath:pathCopy];
  _pendingServiceBundlesToReload = [(ASServicesMonitor *)self _pendingServiceBundlesToReload];
  [_pendingServiceBundlesToReload addObject:v6];

  keepAliveCount = self->_keepAliveCount;
  if (keepAliveCount)
  {
    v9 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ASServicesMonitor reloadServiceBundleAtPath:]";
      v12 = 2048;
      v13 = keepAliveCount;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s There are %ld alive counts, will defer reload until it hits zero", &v10, 0x16u);
    }
  }

  else
  {
    [(ASServicesMonitor *)self _reloadPendingServiceBundles];
  }
}

- (id)keepAliveWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ASServicesMonitor keepAliveWithReplyHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(ASServicesMonitor *)self incrementKeepAliveCount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005300;
  v9[3] = &unk_100014528;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = objc_retainBlock(v9);

  return v7;
}

- (id)startWatchdogForPluginAtPath:(id)path syncClassName:(id)name completion:(id)completion
{
  pathCopy = path;
  nameCopy = name;
  completionCopy = completion;
  v11 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000055F0;
  v24[3] = &unk_100014900;
  v13 = pathCopy;
  v25 = v13;
  v14 = nameCopy;
  v26 = v14;
  selfCopy = self;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000056C4;
  v21[3] = &unk_100014630;
  v15 = [v11 initWithTimeoutInterval:queue onQueue:v24 timeoutHandler:567.0];
  v22 = v15;
  v16 = completionCopy;
  v23 = v16;
  v17 = objc_retainBlock(v21);
  v18 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[ASServicesMonitor startWatchdogForPluginAtPath:syncClassName:completion:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Starting watchdog timer", buf, 0xCu);
  }

  [v15 start];
  v19 = objc_retainBlock(v17);

  return v19;
}

- (void)_restartDueToStuckPluginAtPath:(id)path
{
  pathCopy = path;
  lastPathComponent = [pathCopy lastPathComponent];
  v7 = [NSString stringWithFormat:@"Stuck sync plugin: %@", lastPathComponent];
  v8 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v10 = "[ASServicesMonitor _restartDueToStuckPluginAtPath:]";
    v11 = 2112;
    v12 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_stuckPluginPath, path);
  self->_abortMethod = "__CRASH_DUE_TO_STUCK_PLUGIN__";
  [(ASServicesMonitor *)self _restartProcessIfNeeded];
}

- (void)__CRASH_DUE_TO_STUCK_PLUGIN__
{
  v2 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[ASServicesMonitor __CRASH_DUE_TO_STUCK_PLUGIN__]";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s ", &v3, 0xCu);
  }

  exit(1);
}

- (ASServicesMonitor)init
{
  v8.receiver = self;
  v8.super_class = ASServicesMonitor;
  v2 = [(ASServicesMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("com.apple.assistant.service.watchdog", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (id)_pendingServiceBundlesToReload
{
  pendingServiceBundlesToReload = self->_pendingServiceBundlesToReload;
  if (!pendingServiceBundlesToReload)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_pendingServiceBundlesToReload;
    self->_pendingServiceBundlesToReload = v4;

    pendingServiceBundlesToReload = self->_pendingServiceBundlesToReload;
  }

  return pendingServiceBundlesToReload;
}

@end
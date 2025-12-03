@interface EnvironmentService
- (EnvironmentService)initWithDependencies:(id)dependencies workQueue:(id)queue;
- (void)_postNotification;
- (void)_postNotificationOnWorkQueue;
- (void)_startBiometryMonitoring;
- (void)_startCompanionMonitoring;
- (void)_startMonitors;
- (void)_startUserPasswordMonitoring;
- (void)biometryAccessoriesDidChangeForHelper:(id)helper;
- (void)biometryEnrolledStateDidChangeForHelper:(id)helper;
- (void)biometryLockoutStateDidChangeForHelper:(id)helper;
- (void)companionAuthenticationSessionMonitorDidUpdate:(id)update;
- (void)passcodeSetDidChangeForHelper:(id)helper;
- (void)startServices;
@end

@implementation EnvironmentService

- (EnvironmentService)initWithDependencies:(id)dependencies workQueue:(id)queue
{
  dependenciesCopy = dependencies;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = EnvironmentService;
  v8 = [(EnvironmentService *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dependencies, dependenciesCopy);
    v10 = [[LACEnvironmentServiceXPCHost alloc] initWithDependencies:dependenciesCopy workQueue:queueCopy];
    xpcController = v9->_xpcController;
    v9->_xpcController = v10;

    objc_storeStrong(&v9->_workQueue, queue);
  }

  return v9;
}

- (void)startServices
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000072EC;
  v4[3] = &unk_100054C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_startMonitors
{
  [(EnvironmentService *)self _startBiometryMonitoring];
  [(EnvironmentService *)self _startUserPasswordMonitoring];

  [(EnvironmentService *)self _startCompanionMonitoring];
}

- (void)_startBiometryMonitoring
{
  WeakRetained = objc_loadWeakRetained(&self->_dependencies);
  biometryHelper = [WeakRetained biometryHelper];
  [biometryHelper addObserver:self];
}

- (void)_startUserPasswordMonitoring
{
  WeakRetained = objc_loadWeakRetained(&self->_dependencies);
  passcodeHelper = [WeakRetained passcodeHelper];
  [passcodeHelper addObserver:self];
}

- (void)_startCompanionMonitoring
{
  WeakRetained = objc_loadWeakRetained(&self->_dependencies);
  onenessSessionMonitor = [WeakRetained onenessSessionMonitor];
  [onenessSessionMonitor addObserver:self];

  v5 = objc_loadWeakRetained(&self->_dependencies);
  onenessSessionMonitor2 = [v5 onenessSessionMonitor];
  [onenessSessionMonitor2 startMonitoring];

  v7 = objc_loadWeakRetained(&self->_dependencies);
  phoneIntegrationSessionMonitor = [v7 phoneIntegrationSessionMonitor];
  [phoneIntegrationSessionMonitor addObserver:self];

  v10 = objc_loadWeakRetained(&self->_dependencies);
  phoneIntegrationSessionMonitor2 = [v10 phoneIntegrationSessionMonitor];
  [phoneIntegrationSessionMonitor2 startMonitoring];
}

- (void)passcodeSetDidChangeForHelper:(id)helper
{
  v4 = LACLogEnvironment();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Environment has changed (user password)", v5, 2u);
  }

  [(EnvironmentService *)self _postNotificationOnWorkQueue];
}

- (void)biometryEnrolledStateDidChangeForHelper:(id)helper
{
  v4 = LACLogEnvironment();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Environment has changed (biometric enrollment)", v5, 2u);
  }

  [(EnvironmentService *)self _postNotificationOnWorkQueue];
}

- (void)biometryLockoutStateDidChangeForHelper:(id)helper
{
  v4 = LACLogEnvironment();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Environment has changed (biometric lockout state)", v5, 2u);
  }

  [(EnvironmentService *)self _postNotificationOnWorkQueue];
}

- (void)biometryAccessoriesDidChangeForHelper:(id)helper
{
  v4 = LACLogEnvironment();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Environment has changed (biometric accessories)", v5, 2u);
  }

  [(EnvironmentService *)self _postNotificationOnWorkQueue];
}

- (void)companionAuthenticationSessionMonitorDidUpdate:(id)update
{
  v4 = LACLogEnvironment();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Environment has changed (companion session state)", v5, 2u);
  }

  [(EnvironmentService *)self _postNotificationOnWorkQueue];
}

- (void)_postNotificationOnWorkQueue
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000077EC;
  v4[3] = &unk_100054C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_postNotification
{
  dispatch_assert_queue_V2(self->_workQueue);
  lastNotificationPosted = self->_lastNotificationPosted;
  if (lastNotificationPosted && ([(NSDate *)lastNotificationPosted timeIntervalSinceNow], v4 > -0.02))
  {
    if (self->_debouncing)
    {
      v5 = LACLogEnvironment();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = 20;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subsequent environment change notification will be dropped within %d ms limit", buf, 8u);
      }
    }

    else
    {
      self->_debouncing = 1;
      v8 = v4 + 0.02;
      v9 = LACLogEnvironment();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = (v8 * 1000.0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Environment change notification will be delayed by %d ms", buf, 8u);
      }

      v10 = dispatch_time(0, (v8 * 1000000000.0));
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007A70;
      block[3] = &unk_1000550C0;
      block[4] = self;
      dispatch_after(v10, workQueue, block);
    }
  }

  else
  {
    v6 = +[NSDate now];
    v7 = self->_lastNotificationPosted;
    self->_lastNotificationPosted = v6;

    v12 = +[LACDarwinNotificationCenter sharedInstance];
    [v12 postNotification:LACDarwinNotificationEnvironmentStateDidChange];
  }
}

@end
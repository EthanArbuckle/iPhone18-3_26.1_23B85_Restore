@interface HDServiceConnectionManager
- (HDServiceConnectionManager)init;
- (HDServiceConnectionManager)initWithProfile:(id)profile serviceManager:(id)manager;
- (id)diagnosticDescription;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)reconnectToServices;
@end

@implementation HDServiceConnectionManager

- (void)reconnectToServices
{
  if (self)
  {
    v1 = *(self + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F64;
    block[3] = &unk_5C800;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

- (HDServiceConnectionManager)initWithProfile:(id)profile serviceManager:(id)manager
{
  profileCopy = profile;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = HDServiceConnectionManager;
  v8 = [(HDServiceConnectionManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_serviceManager, manager);
    v10 = HKCreateSerialDispatchQueue();
    deviceQueue = v9->_deviceQueue;
    v9->_deviceQueue = v10;

    *&v9->_connecting = 0;
    v12 = +[NSMutableDictionary dictionary];
    activeServices = v9->_activeServices;
    v9->_activeServices = v12;

    [profileCopy registerProfileReadyObserver:v9 queue:0];
  }

  return v9;
}

- (HDServiceConnectionManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (void)dealloc
{
  v3 = +[HDDiagnosticManager sharedDiagnosticManager];
  [v3 removeObject:self];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v6.receiver = self;
  v6.super_class = HDServiceConnectionManager;
  [(HDServiceConnectionManager *)&v6 dealloc];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_deviceQueue);
  if (availableCopy)
  {

    [HDServiceConnectionManager reconnectToServices]_0(self);
  }
}

- (id)diagnosticDescription
{
  v3 = objc_opt_class();
  if (self->_connecting)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = "disabled";
  if (self->_BTLEEnabled)
  {
    v5 = "enabled";
  }

  return [NSString stringWithFormat:@"<%@:%p connecting:%s, BTLE:%s, services:%@>", v3, self, v4, v5, self->_activeServices];
}

- (void)profileDidBecomeReady:(id)ready
{
  v4 = +[HDDiagnosticManager sharedDiagnosticManager];
  [v4 addObject:self];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self queue:self->_deviceQueue];

  sub_18B8C(self);

  [HDServiceConnectionManager reconnectToServices]_0(self);
}

@end
@interface FPMonitor
- (FPMonitor)initWithDelegate:(id)delegate;
- (FPMonitorDelegate)delegate;
- (NSDictionary)domainsByPath;
- (void)beginMonitoring;
@end

@implementation FPMonitor

- (FPMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = FPMonitor;
  v5 = [(FPMonitor *)&v8 init];
  v6 = v5;
  if (v5 == self)
  {
    [(FPMonitor *)v5 setDelegate:delegateCopy];
    [(FPMonitor *)v6 beginMonitoring];
  }

  return v6;
}

- (NSDictionary)domainsByPath
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->__domainsByPath copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)beginMonitoring
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000940C;
  v5[3] = &unk_100034F80;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v5];
  monitoringContext = self->_monitoringContext;
  self->_monitoringContext = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (FPMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
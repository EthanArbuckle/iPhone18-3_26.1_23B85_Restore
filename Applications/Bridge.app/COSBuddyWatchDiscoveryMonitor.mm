@interface COSBuddyWatchDiscoveryMonitor
- (COSBuddyWatchDiscoveryMonitor)initWithPresentingViewController:(id)a3;
- (COSBuddyWatchDiscoveryMonitorDelegate)delegate;
- (UIViewController)presentingViewController;
- (void)discoverWatchesOrShowSpinner;
- (void)discoveredWatchNearby:(id)a3;
- (void)discoveryDidTimeout;
- (void)dynamicHelpControllerDidDisappear:(id)a3;
@end

@implementation COSBuddyWatchDiscoveryMonitor

- (COSBuddyWatchDiscoveryMonitor)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = COSBuddyWatchDiscoveryMonitor;
  v5 = [(COSBuddyWatchDiscoveryMonitor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
    v7 = objc_alloc_init(COSWatchDiscoveryCoordinator);
    discoveryCoordinator = v6->_discoveryCoordinator;
    v6->_discoveryCoordinator = v7;

    [(COSWatchDiscoveryCoordinator *)v6->_discoveryCoordinator setDelegate:v6];
  }

  return v6;
}

- (void)discoveryDidTimeout
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timeout trying to Discover watch.  Stopping discovering, showing error.", v8, 2u);
  }

  [(NSTimer *)self->_discoveryTimeoutTimer invalidate];
  discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
  self->_discoveryTimeoutTimer = 0;

  [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator stopDiscoveringWatchNearby];
  v5 = objc_alloc_init(COSWatchDiscoveryTimeoutError);
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7 = [WeakRetained navigationController];
  [v7 pushViewController:v5 animated:1];
}

- (void)discoveredWatchNearby:(id)a3
{
  v4 = a3;
  [(NSTimer *)self->_discoveryTimeoutTimer invalidate];
  discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
  self->_discoveryTimeoutTimer = 0;

  if (self->_dynamicHelpViewController)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch discovered nearby.  Dismissing help controller", v8, 2u);
    }

    [v4 stopDiscoveringWatchNearby];
    v7 = [(COSBuddyWatchDiscoveryMonitor *)self delegate];
    [v7 discoveryOperationComplete];
  }

  [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator stopDiscoveringWatchNearby];
}

- (void)dynamicHelpControllerDidDisappear:(id)a3
{
  [(NSTimer *)self->_discoveryTimeoutTimer invalidate];
  discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
  self->_discoveryTimeoutTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v6 = [WeakRetained navigationController];
  v7 = [v6 viewControllers];
  v11 = [v7 mutableCopy];

  if ([v11 containsObject:self->_dynamicHelpViewController])
  {
    [v11 removeObjectIdenticalTo:self->_dynamicHelpViewController];
    v8 = objc_loadWeakRetained(&self->_presentingViewController);
    v9 = [v8 navigationController];
    [v9 setViewControllers:v11 animated:0];
  }

  dynamicHelpViewController = self->_dynamicHelpViewController;
  self->_dynamicHelpViewController = 0;
}

- (void)discoverWatchesOrShowSpinner
{
  if ([(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator discoveredWatchNearby])
  {
    v10 = [(COSBuddyWatchDiscoveryMonitor *)self delegate];
    [v10 discoveryOperationComplete];
  }

  else
  {
    dynamicHelpViewController = self->_dynamicHelpViewController;
    if (!dynamicHelpViewController)
    {
      v4 = objc_alloc_init(COSScanWatchDynamicHelpViewController);
      v5 = self->_dynamicHelpViewController;
      self->_dynamicHelpViewController = v4;

      dynamicHelpViewController = self->_dynamicHelpViewController;
    }

    [(COSScanWatchDynamicHelpViewController *)dynamicHelpViewController setScanDelegate:self];
    [(COSScanWatchDynamicHelpViewController *)self->_dynamicHelpViewController setDiscoveredWatchNearby:[(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator discoveredWatchNearby]];
    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    v7 = [WeakRetained navigationController];
    [v7 pushViewController:self->_dynamicHelpViewController animated:1];

    v8 = [NSTimer timerWithTimeInterval:self target:"discoveryDidTimeout" selector:0 userInfo:0 repeats:60.0];
    discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
    self->_discoveryTimeoutTimer = v8;

    v10 = +[NSRunLoop currentRunLoop];
    [v10 addTimer:self->_discoveryTimeoutTimer forMode:NSRunLoopCommonModes];
  }
}

- (COSBuddyWatchDiscoveryMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end
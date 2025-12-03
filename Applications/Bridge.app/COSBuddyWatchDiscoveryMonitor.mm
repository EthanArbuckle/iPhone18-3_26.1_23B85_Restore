@interface COSBuddyWatchDiscoveryMonitor
- (COSBuddyWatchDiscoveryMonitor)initWithPresentingViewController:(id)controller;
- (COSBuddyWatchDiscoveryMonitorDelegate)delegate;
- (UIViewController)presentingViewController;
- (void)discoverWatchesOrShowSpinner;
- (void)discoveredWatchNearby:(id)nearby;
- (void)discoveryDidTimeout;
- (void)dynamicHelpControllerDidDisappear:(id)disappear;
@end

@implementation COSBuddyWatchDiscoveryMonitor

- (COSBuddyWatchDiscoveryMonitor)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = COSBuddyWatchDiscoveryMonitor;
  v5 = [(COSBuddyWatchDiscoveryMonitor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
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
  navigationController = [WeakRetained navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)discoveredWatchNearby:(id)nearby
{
  nearbyCopy = nearby;
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

    [nearbyCopy stopDiscoveringWatchNearby];
    delegate = [(COSBuddyWatchDiscoveryMonitor *)self delegate];
    [delegate discoveryOperationComplete];
  }

  [(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator stopDiscoveringWatchNearby];
}

- (void)dynamicHelpControllerDidDisappear:(id)disappear
{
  [(NSTimer *)self->_discoveryTimeoutTimer invalidate];
  discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
  self->_discoveryTimeoutTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  navigationController = [WeakRetained navigationController];
  viewControllers = [navigationController viewControllers];
  v11 = [viewControllers mutableCopy];

  if ([v11 containsObject:self->_dynamicHelpViewController])
  {
    [v11 removeObjectIdenticalTo:self->_dynamicHelpViewController];
    v8 = objc_loadWeakRetained(&self->_presentingViewController);
    navigationController2 = [v8 navigationController];
    [navigationController2 setViewControllers:v11 animated:0];
  }

  dynamicHelpViewController = self->_dynamicHelpViewController;
  self->_dynamicHelpViewController = 0;
}

- (void)discoverWatchesOrShowSpinner
{
  if ([(COSWatchDiscoveryCoordinator *)self->_discoveryCoordinator discoveredWatchNearby])
  {
    delegate = [(COSBuddyWatchDiscoveryMonitor *)self delegate];
    [delegate discoveryOperationComplete];
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
    navigationController = [WeakRetained navigationController];
    [navigationController pushViewController:self->_dynamicHelpViewController animated:1];

    v8 = [NSTimer timerWithTimeInterval:self target:"discoveryDidTimeout" selector:0 userInfo:0 repeats:60.0];
    discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
    self->_discoveryTimeoutTimer = v8;

    delegate = +[NSRunLoop currentRunLoop];
    [delegate addTimer:self->_discoveryTimeoutTimer forMode:NSRunLoopCommonModes];
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
@interface COSResetWatchNoticeViewController
- (COSResetWatchNoticeViewController)init;
- (id)detailString;
- (id)okayButtonTitle;
- (id)titleString;
- (void)beginDiscoveryTimer;
- (void)cancelDiscoveryTimer;
- (void)dealloc;
- (void)discoveredAdvertisingWatch:(id)a3;
- (void)okayButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation COSResetWatchNoticeViewController

- (COSResetWatchNoticeViewController)init
{
  v5.receiver = self;
  v5.super_class = COSResetWatchNoticeViewController;
  v2 = [(COSResetWatchNoticeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSResetWatchNoticeViewController *)v2 setStyle:96];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v3 end];

  v4.receiver = self;
  v4.super_class = COSResetWatchNoticeViewController;
  [(COSResetWatchNoticeViewController *)&v4 dealloc];
}

- (void)cancelDiscoveryTimer
{
  discoveryTimer = self->_discoveryTimer;
  if (discoveryTimer)
  {
    dispatch_source_cancel(discoveryTimer);
    v4 = self->_discoveryTimer;
    self->_discoveryTimer = 0;
  }

  v5 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v5 end];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:PPDeviceWasDiscoveredNotification object:0];
}

- (void)beginDiscoveryTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  discoveryTimer = self->_discoveryTimer;
  self->_discoveryTimer = v3;

  v5 = self->_discoveryTimer;
  if (v5)
  {
    v6 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v7 = self->_discoveryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100057714;
    handler[3] = &unk_1002682F0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_discoveryTimer);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSResetWatchNoticeViewController;
  [(COSResetWatchNoticeViewController *)&v4 viewDidAppear:a3];
  [(COSResetWatchNoticeViewController *)self cancelDiscoveryTimer];
  [(COSResetWatchNoticeViewController *)self beginDiscoveryTimer];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSResetWatchNoticeViewController;
  [(COSResetWatchNoticeViewController *)&v4 viewDidDisappear:a3];
  [(COSResetWatchNoticeViewController *)self cancelDiscoveryTimer];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RESET_WATCHES" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RESET_WATCHES_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTINUE_SETUP" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)okayButtonPressed:(id)a3
{
  v4 = [(COSResetWatchNoticeViewController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (void)discoveredAdvertisingWatch:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:PPDeviceWasDiscoveredNotification object:0];

  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Discovered a nearby advertising watch, automatically continuing...", v7, 2u);
  }

  v6 = [(COSResetWatchNoticeViewController *)self delegate];
  [v6 buddyControllerDone:self];
}

@end
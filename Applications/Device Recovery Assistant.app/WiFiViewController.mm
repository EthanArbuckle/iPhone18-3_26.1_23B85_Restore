@interface WiFiViewController
- (WiFiViewController)init;
- (WiFiViewControllerDelegate)delegate;
- (void)_didTapCancelButton:(id)button;
- (void)_didTapContinueButton:(id)button;
- (void)_wifiNetworkJoinFinished:(id)finished;
- (void)_wifiNetworkJoinStarted:(id)started;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation WiFiViewController

- (WiFiViewController)init
{
  v17.receiver = self;
  v17.super_class = WiFiViewController;
  v2 = [(WiFiViewController *)&v17 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_100028E90 table:0];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_100028E90 table:0];

    [(WiFiViewController *)v2 setAdditionalSafeAreaInsets:30.0, 0.0, 0.0, 0.0];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_wifiNetworkJoinFinished:" name:@"NetworkMonitorDidJoinNetwork" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_wifiNetworkJoinStarted:" name:@"NetworkMonitorDidLeaveNetwork" object:0];

    v9 = +[OBBoldTrayButton boldButton];
    [(WiFiViewController *)v2 setContinueButton:v9];

    continueButton = [(WiFiViewController *)v2 continueButton];
    [continueButton setTitle:v4 forState:0];

    continueButton2 = [(WiFiViewController *)v2 continueButton];
    [continueButton2 addTarget:v2 action:"_didTapContinueButton:" forControlEvents:0x2000];

    buttonTray = [(WiFiViewController *)v2 buttonTray];
    continueButton3 = [(WiFiViewController *)v2 continueButton];
    [buttonTray addButton:continueButton3];

    v14 = +[OBLinkTrayButton linkButton];
    [v14 setTitle:v6 forState:0];
    [v14 addTarget:v2 action:"_didTapCancelButton:" forControlEvents:0x2000];
    buttonTray2 = [(WiFiViewController *)v2 buttonTray];
    [buttonTray2 addButton:v14];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WiFiViewController;
  [(WiFiViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WiFiViewController;
  [(WiFiViewController *)&v8 viewDidLoad];
  tableView = [(WiFiViewController *)self tableView];
  v4 = +[UIColor systemBackgroundColor];
  [tableView setBackgroundColor:v4];

  v5 = +[NetworkMonitor shared];
  networkAvailable = [v5 networkAvailable];

  continueButton = [(WiFiViewController *)self continueButton];
  [continueButton setEnabled:networkAvailable];
}

- (void)_didTapContinueButton:(id)button
{
  delegate = [(WiFiViewController *)self delegate];

  if (delegate)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WiFiViewController _didTapContinueButton:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling wifiViewControllerDelegateDidChooseNetwork on delegate.", &v7, 0xCu);
    }

    delegate2 = [(WiFiViewController *)self delegate];
    [delegate2 wifiViewControllerDelegateDidChooseNetwork:self];
  }
}

- (void)_didTapCancelButton:(id)button
{
  delegate = [(WiFiViewController *)self delegate];

  if (delegate)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[WiFiViewController _didTapCancelButton:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling delegate for cancel from wifi.", &v7, 0xCu);
    }

    delegate2 = [(WiFiViewController *)self delegate];
    [delegate2 wifiViewControllerDelegateDidCancel:self];
  }
}

- (void)_wifiNetworkJoinStarted:(id)started
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "[WiFiViewController _wifiNetworkJoinStarted:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Netwok join is starting.", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000123C0;
  block[3] = &unk_100028938;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_wifiNetworkJoinFinished:(id)finished
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "[WiFiViewController _wifiNetworkJoinFinished:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Netwok join has completed.", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001250C;
  block[3] = &unk_100028938;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (WiFiViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
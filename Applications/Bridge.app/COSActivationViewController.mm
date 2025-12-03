@interface COSActivationViewController
- (COSActivationViewController)init;
- (COSBuddyControllerDelegate)delegate;
- (void)back:(id)back;
- (void)checkActivationState;
- (void)completedActivation:(id)activation;
- (void)enteredCompatibilityState:(id)state;
- (void)postProcessActivation;
- (void)startActivating;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)waitForCompatibilityUpdateState;
@end

@implementation COSActivationViewController

- (COSActivationViewController)init
{
  v6.receiver = self;
  v6.super_class = COSActivationViewController;
  v2 = [(COSActivationViewController *)&v6 init];
  if (v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    compatibilityState = [v3 compatibilityState];

    if (compatibilityState == 2)
    {
      [(COSActivationViewController *)v2 startActivating];
    }

    else
    {
      [(COSActivationViewController *)v2 waitForCompatibilityUpdateState];
    }
  }

  return v2;
}

- (void)postProcessActivation
{
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSActivationViewController postProcessActivation]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  setupController = [UIApp setupController];
  setupController2 = [UIApp setupController];
  activationManager = [setupController2 activationManager];

  if ([activationManager awaitingActivation] && objc_msgSend(activationManager, "didPresentFlow"))
  {
    [setupController popRUIObject:0 animated:0];
    [activationManager setAwaitingActivation:0];
  }

  [setupController popControllerAnimated:0];
}

- (void)waitForCompatibilityUpdateState
{
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Waiting for compatibility state", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];
}

- (void)startActivating
{
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting activation", v4, 2u);
  }

  bridgeController = [UIApp bridgeController];
  [bridgeController tellGizmoToBeginActivation];
}

- (void)completedActivation:(id)activation
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  [(COSActivationViewController *)self postProcessActivation];
}

- (void)checkActivationState
{
  if ([UIApp isActivated])
  {

    [(COSActivationViewController *)self postProcessActivation];
  }

  else
  {
    v3 = pbb_activation_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Awaiting activation", v7, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"completedActivation:" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

    setupController = [UIApp setupController];
    activationManager = [setupController activationManager];
    [activationManager awaitActivationWhileHoldingFlow:0];
  }
}

- (void)enteredCompatibilityState:(id)state
{
  userInfo = [state userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = pbb_activation_log();
  v8 = unsignedIntValue;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Entered compatibility state: %lu", &v13, 0xCu);
  }

  if (unsignedIntValue == 2 || (([UIApp setupController], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "shouldForceSoftwareUpdateCheck"), v9, v8 == 3) ? (v11 = v10 == 0) : (v11 = 1), !v11))
  {
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

    [(COSActivationViewController *)self startActivating];
  }
}

- (void)back:(id)back
{
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Backed Out of Activation pane", buf, 2u);
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"RESET_BUDDY_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RESET_BUDDY_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
  v10 = [NSString stringWithFormat:v7, v9];
  v11 = [UIAlertController alertControllerWithTitle:v5 message:v10 preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_10026C088];

  [v11 addAction:v14];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL_RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&stru_10026C0A8];

  [v11 addAction:v17];
  v18 = pbb_activation_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "'Reset buddy?' alert presented", v20, 2u);
  }

  [(COSActivationViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = COSActivationViewController;
  [(COSActivationViewController *)&v34 viewDidLoad];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  infoLabel = self->_infoLabel;
  self->_infoLabel = v3;

  v5 = self->_infoLabel;
  v6 = +[UIColor clearColor];
  [(UILabel *)v5 setBackgroundColor:v6];

  v7 = self->_infoLabel;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ACTIVATION_TIME" value:&stru_10026E598 table:@"Localizable"];
  [(UILabel *)v7 setText:v9];

  v10 = self->_infoLabel;
  v11 = BPSTextColor();
  [(UILabel *)v10 setTextColor:v11];

  [(UILabel *)self->_infoLabel setTextAlignment:1];
  [(UILabel *)self->_infoLabel setNumberOfLines:0];
  v35 = &off_100281DE0;
  v36 = &off_100281F50;
  v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  __asm
  {
    FMOV            V0.2D, #14.0
    FMOV            V1.2D, #16.0
  }

  *location = _Q0;
  v31 = _Q1;
  v32 = _Q1;
  v33 = _Q1;
  BPSScreenValueGetRelevantZoomValue();
  v20 = v19;

  v21 = self->_infoLabel;
  v22 = [UIFont systemFontOfSize:v20];
  [(UILabel *)v21 setFont:v22];

  v23 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v23;

  view = [(COSActivationViewController *)self view];
  [view addSubview:self->_spinner];

  view2 = [(COSActivationViewController *)self view];
  [view2 addSubview:self->_infoLabel];

  objc_initWeak(location, self);
  v27 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010D694;
  block[3] = &unk_100268430;
  objc_copyWeak(&v29, location);
  dispatch_after(v27, &_dispatch_main_q, block);
  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSActivationViewController;
  [(COSActivationViewController *)&v4 viewWillAppear:appear];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = COSActivationViewController;
  [(COSActivationViewController *)&v21 viewDidLayoutSubviews];
  view = [(COSActivationViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(UIActivityIndicatorView *)self->_spinner frame];
  v11 = v10;
  v13 = v12;
  [(UILabel *)self->_infoLabel setFrame:50.0, v5, v7 + -100.0, v9];
  [(UILabel *)self->_infoLabel sizeToFit];
  [(UILabel *)self->_infoLabel frame];
  v15 = v13 + v14 + 10.0;
  v16 = v9 * 0.5 + (v15 * -0.5);
  *&v9 = roundf(v16);
  v17 = v7 * 0.5;
  v19 = v17 - v18 * 0.5;
  [(UILabel *)self->_infoLabel setFrame:roundf(v19), v13 + (*&v9 + 10.0)];
  v20 = v17 - v11 * 0.5;
  [(UIActivityIndicatorView *)self->_spinner setFrame:roundf(v20), *&v9, v11, v13];
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
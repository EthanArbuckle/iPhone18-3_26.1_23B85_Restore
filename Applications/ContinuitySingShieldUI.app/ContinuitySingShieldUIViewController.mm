@interface ContinuitySingShieldUIViewController
- (void)_fulfillDisconnectHandler;
- (void)disconnectSession;
- (void)updateUI;
- (void)viewDidLoad;
@end

@implementation ContinuitySingShieldUIViewController

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = ContinuitySingShieldUIViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v26 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = [CSShieldViewController alloc];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10000B264;
  v23 = &unk_100018738;
  objc_copyWeak(&v24, &location);
  v4 = [v3 initWithDisconnectHandler:&v20];
  v5 = *(&self->super._observingKVO + 1);
  *(&self->super._observingKVO + 1) = v4;

  v6 = [(ContinuitySingShieldUIViewController *)self view:v20];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view = [*(&self->super._observingKVO + 1) view];
  [view setFrame:{v8, v10, v12, v14}];

  view2 = [*(&self->super._observingKVO + 1) view];
  [view2 setAutoresizingMask:18];

  v17 = [[UINavigationController alloc] initWithRootViewController:*(&self->super._observingKVO + 1)];
  [v17 setOverrideUserInterfaceStyle:2];
  [(ContinuitySingShieldUIViewController *)self addChildViewController:v17];
  view3 = [(ContinuitySingShieldUIViewController *)self view];
  view4 = [v17 view];
  [view3 addSubview:view4];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)updateUI
{
  v6.receiver = self;
  v6.super_class = ContinuitySingShieldUIViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v6 updateUI];
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  v5 = +[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance];
  [v5 updateState:objc_msgSend(activeConfiguration micOnly:{"compositeState"), 1}];

  [*(&self->super._observingKVO + 1) updateUI];
}

- (void)disconnectSession
{
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B5FC;
  v11[3] = &unk_100018868;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  v3 = objc_retainBlock(v11);
  v4 = *(&self->_embeddedViewController + 1);
  *(&self->_embeddedViewController + 1) = v3;

  v5 = +[CSShieldManager sharedManager];
  requestClient = [v5 requestClient];

  if (requestClient)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B664;
    v10[3] = &unk_100018890;
    v10[4] = self;
    [requestClient sendDisconnectMessageWithCompletion:v10];
    v7 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B7A4;
    block[3] = &unk_1000187D8;
    block[4] = self;
    dispatch_after(v7, &_dispatch_main_q, block);
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000B7F8;
    v8[3] = &unk_1000187D8;
    v8[4] = self;
    dispatch_async(&_dispatch_main_q, v8);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_fulfillDisconnectHandler
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = *(&self->_embeddedViewController + 1);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(&self->_embeddedViewController + 1);
    *(&self->_embeddedViewController + 1) = 0;
  }
}

@end
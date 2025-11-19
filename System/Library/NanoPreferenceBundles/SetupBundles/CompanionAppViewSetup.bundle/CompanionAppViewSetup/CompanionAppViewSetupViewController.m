@interface CompanionAppViewSetupViewController
- (BOOL)isTinker;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (CompanionAppViewSetupViewController)init;
- (NSString)bundleID;
- (id)bridgeController;
- (id)bundle;
- (id)localize:(id)a3;
- (void)launcherViewModeSettingChanged;
- (void)retrieveImageForLauncherViewMode:(int64_t)a3 size:(CGSize)a4 completion:(id)a5;
- (void)suggestedButtonPressed:(id)a3;
- (void)updateViewChoice;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)watchChooser:(id)a3 madeChoice:(int64_t)a4;
@end

@implementation CompanionAppViewSetupViewController

- (CompanionAppViewSetupViewController)init
{
  v7.receiver = self;
  v7.super_class = CompanionAppViewSetupViewController;
  v2 = [(CompanionAppViewSetupViewController *)&v7 initWithTitle:&stru_4210 detailText:0 icon:0 contentLayout:2];
  v3 = v2;
  if (v2)
  {
    [(CompanionAppViewSetupViewController *)v2 setStyle:2];
    v4 = objc_alloc_init(CSLPRFLauncherViewModeSetting);
    appViewSetting = v3->_appViewSetting;
    v3->_appViewSetting = v4;

    [(CSLPRFLauncherViewModeSetting *)v3->_appViewSetting setDelegate:v3];
    if ([(CompanionAppViewSetupViewController *)v3 isTinker])
    {
      v3->_tinkerLauncherMode = 1;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> created %@", buf, 0xCu);
    }
  }

  return v3;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = CompanionAppViewSetupViewController;
  [(CompanionAppViewSetupViewController *)&v28 viewDidLoad];
  v3 = [(CompanionAppViewSetupViewController *)self view];
  [v3 setUserInteractionEnabled:1];

  v4 = [(CompanionAppViewSetupViewController *)self contentView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CompanionAppViewSetupViewController *)self contentView];
  [v5 setUserInteractionEnabled:1];

  v26 = +[CSLPRFWatchChoice watchChoices];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_132C;
  v27[3] = &unk_41A0;
  v27[4] = self;
  [v26 enumerateObjectsUsingBlock:v27];
  v6 = [[CSLPRFAppViewChoiceView alloc] initWithDelegate:self horizontalOffset:v26 choices:24.0];
  appViewChoiceView = self->_appViewChoiceView;
  self->_appViewChoiceView = v6;

  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(CompanionAppViewSetupViewController *)self contentView];
  [v8 addSubview:self->_appViewChoiceView];

  v25 = [(CompanionAppViewSetupViewController *)self contentView];
  v24 = [v25 topAnchor];
  v23 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v29[0] = v22;
  v21 = [(CompanionAppViewSetupViewController *)self contentView];
  v20 = [v21 leadingAnchor];
  v19 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v18;
  v9 = [(CompanionAppViewSetupViewController *)self contentView];
  v10 = [v9 trailingAnchor];
  v11 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v29[2] = v12;
  v13 = [(CompanionAppViewSetupViewController *)self contentView];
  v14 = [v13 bottomAnchor];
  v15 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v29[3] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  [(CompanionAppViewSetupViewController *)self updateViewChoice];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CompanionAppViewSetupViewController;
  [(CompanionAppViewSetupViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(CompanionAppViewSetupViewController *)self contentView];
  [v3 frame];
  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setHorizontalOffset:?];
}

- (void)suggestedButtonPressed:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CompanionAppViewSetupViewController *)self miniFlowDelegate];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> suggestedButtonPressed calling %@", &v6, 0xCu);
  }

  v5 = [(CompanionAppViewSetupViewController *)self miniFlowDelegate];
  [v5 miniFlowStepComplete:self];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (NSString)bundleID
{
  v2 = [(CompanionAppViewSetupViewController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)localize:(id)a3
{
  v4 = a3;
  v5 = [(CompanionAppViewSetupViewController *)self bundle];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"CompanionAppViewSetup"];

  if (!v6 || [v6 isEqualToString:v4])
  {
    v7 = [(CompanionAppViewSetupViewController *)self bundle];
    v8 = [v7 localizedStringForKey:v4 value:0 table:@"CarouselAppViewChoice"];

    v6 = v8;
  }

  return v6;
}

- (id)bridgeController
{
  v2 = +[UIApplication sharedApplication];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 bridgeController];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_2248();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isTinker
{
  v2 = [(CompanionAppViewSetupViewController *)self bridgeController];
  v3 = [v2 isTinkerPairing];

  return v3;
}

- (void)watchChooser:(id)a3 madeChoice:(int64_t)a4
{
  if ([(CompanionAppViewSetupViewController *)self isTinker])
  {
    self->_tinkerLauncherMode = a4;
    v6 = [(CompanionAppViewSetupViewController *)self bridgeController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CompanionAppViewSetupViewController *)self bridgeController];
      [v8 tellWatchToSetLauncherViewMode:self->_tinkerLauncherMode];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_2290();
    }

    [(CompanionAppViewSetupViewController *)self updateViewChoice];
  }

  else
  {
    appViewSetting = self->_appViewSetting;

    [(CSLPRFLauncherViewModeSetting *)appViewSetting setLauncherViewMode:a4 reason:1];
  }
}

- (void)updateViewChoice
{
  v3 = [(CompanionAppViewSetupViewController *)self isTinker];
  appViewChoiceView = self->_appViewChoiceView;
  if (v3)
  {
    tinkerLauncherMode = self->_tinkerLauncherMode;
  }

  else
  {
    tinkerLauncherMode = [(CSLPRFLauncherViewModeSetting *)self->_appViewSetting launcherViewMode];
  }

  [(CSLPRFAppViewChoiceView *)appViewChoiceView setWatchChoice:tinkerLauncherMode];
}

- (void)launcherViewModeSettingChanged
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1944;
  v2[3] = &unk_41C8;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)retrieveImageForLauncherViewMode:(int64_t)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = [(CompanionAppViewSetupViewController *)self bridgeController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v12 = [(CompanionAppViewSetupViewController *)self bridgeController];
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, ">>>> asking bridge controller %@ to retrieve app view image", buf, 0xCu);
    }

    v13 = [(CompanionAppViewSetupViewController *)self bridgeController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1B2C;
    v14[3] = &unk_41F0;
    v14[4] = self;
    v15 = v9;
    v16 = a3;
    [v13 retrieveAppViewListImageFromGizmo:v14 completion:{width, height}];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_22D8(self);
  }
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
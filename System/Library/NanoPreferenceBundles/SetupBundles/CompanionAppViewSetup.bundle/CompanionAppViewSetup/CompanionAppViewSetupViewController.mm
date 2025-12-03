@interface CompanionAppViewSetupViewController
- (BOOL)isTinker;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (CompanionAppViewSetupViewController)init;
- (NSString)bundleID;
- (id)bridgeController;
- (id)bundle;
- (id)localize:(id)localize;
- (void)launcherViewModeSettingChanged;
- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion;
- (void)suggestedButtonPressed:(id)pressed;
- (void)updateViewChoice;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)watchChooser:(id)chooser madeChoice:(int64_t)choice;
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
  view = [(CompanionAppViewSetupViewController *)self view];
  [view setUserInteractionEnabled:1];

  contentView = [(CompanionAppViewSetupViewController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(CompanionAppViewSetupViewController *)self contentView];
  [contentView2 setUserInteractionEnabled:1];

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
  contentView3 = [(CompanionAppViewSetupViewController *)self contentView];
  [contentView3 addSubview:self->_appViewChoiceView];

  contentView4 = [(CompanionAppViewSetupViewController *)self contentView];
  topAnchor = [contentView4 topAnchor];
  topAnchor2 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v22;
  contentView5 = [(CompanionAppViewSetupViewController *)self contentView];
  leadingAnchor = [contentView5 leadingAnchor];
  leadingAnchor2 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[1] = v18;
  contentView6 = [(CompanionAppViewSetupViewController *)self contentView];
  trailingAnchor = [contentView6 trailingAnchor];
  trailingAnchor2 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[2] = v12;
  contentView7 = [(CompanionAppViewSetupViewController *)self contentView];
  bottomAnchor = [contentView7 bottomAnchor];
  bottomAnchor2 = [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  contentView = [(CompanionAppViewSetupViewController *)self contentView];
  [contentView frame];
  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setHorizontalOffset:?];
}

- (void)suggestedButtonPressed:(id)pressed
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    miniFlowDelegate = [(CompanionAppViewSetupViewController *)self miniFlowDelegate];
    v6 = 138412290;
    v7 = miniFlowDelegate;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, ">>>> suggestedButtonPressed calling %@", &v6, 0xCu);
  }

  miniFlowDelegate2 = [(CompanionAppViewSetupViewController *)self miniFlowDelegate];
  [miniFlowDelegate2 miniFlowStepComplete:self];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (NSString)bundleID
{
  bundle = [(CompanionAppViewSetupViewController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)localize:(id)localize
{
  localizeCopy = localize;
  bundle = [(CompanionAppViewSetupViewController *)self bundle];
  v6 = [bundle localizedStringForKey:localizeCopy value:0 table:@"CompanionAppViewSetup"];

  if (!v6 || [v6 isEqualToString:localizeCopy])
  {
    bundle2 = [(CompanionAppViewSetupViewController *)self bundle];
    v8 = [bundle2 localizedStringForKey:localizeCopy value:0 table:@"CarouselAppViewChoice"];

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
    bridgeController = [v4 bridgeController];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_2248();
    }

    bridgeController = 0;
  }

  return bridgeController;
}

- (BOOL)isTinker
{
  bridgeController = [(CompanionAppViewSetupViewController *)self bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  return isTinkerPairing;
}

- (void)watchChooser:(id)chooser madeChoice:(int64_t)choice
{
  if ([(CompanionAppViewSetupViewController *)self isTinker])
  {
    self->_tinkerLauncherMode = choice;
    bridgeController = [(CompanionAppViewSetupViewController *)self bridgeController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      bridgeController2 = [(CompanionAppViewSetupViewController *)self bridgeController];
      [bridgeController2 tellWatchToSetLauncherViewMode:self->_tinkerLauncherMode];
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

    [(CSLPRFLauncherViewModeSetting *)appViewSetting setLauncherViewMode:choice reason:1];
  }
}

- (void)updateViewChoice
{
  isTinker = [(CompanionAppViewSetupViewController *)self isTinker];
  appViewChoiceView = self->_appViewChoiceView;
  if (isTinker)
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

- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  bridgeController = [(CompanionAppViewSetupViewController *)self bridgeController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      bridgeController2 = [(CompanionAppViewSetupViewController *)self bridgeController];
      *buf = 138412290;
      v18 = bridgeController2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, ">>>> asking bridge controller %@ to retrieve app view image", buf, 0xCu);
    }

    bridgeController3 = [(CompanionAppViewSetupViewController *)self bridgeController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1B2C;
    v14[3] = &unk_41F0;
    v14[4] = self;
    v15 = completionCopy;
    modeCopy = mode;
    [bridgeController3 retrieveAppViewListImageFromGizmo:v14 completion:{width, height}];
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
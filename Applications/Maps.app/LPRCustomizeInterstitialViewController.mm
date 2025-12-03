@interface LPRCustomizeInterstitialViewController
- (LPRCustomizeInterstitialViewController)initWithVehicle:(id)vehicle delegate:(id)delegate;
- (void)_didFinishCreatingVehicle;
- (void)continuePressed;
- (void)editVehicleViewController:(id)controller didSelectColor:(id)color nickname:(id)nickname removedNetworks:(id)networks;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LPRCustomizeInterstitialViewController

- (void)editVehicleViewController:(id)controller didSelectColor:(id)color nickname:(id)nickname removedNetworks:(id)networks
{
  colorCopy = color;
  nicknameCopy = nickname;
  if ([networks count])
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[LPRCustomizeInterstitialViewController editVehicleViewController:didSelectColor:nickname:removedNetworks:]";
      v18 = 2080;
      v19 = "LPRCustomizeInterstitialViewController.m";
      v20 = 1024;
      v21 = 118;
      v22 = 2080;
      v23 = "removedNetworks.count == 0";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  _maps_hexRepresentation = [colorCopy _maps_hexRepresentation];
  [(VGVehicle *)self->_vehicle setColorHex:_maps_hexRepresentation];

  if ([nicknameCopy length])
  {
    [(VGVehicle *)self->_vehicle setDisplayName:nicknameCopy];
  }

  v12 = +[VGVirtualGarageService sharedService];
  [v12 virtualGarageSaveVehicle:self->_vehicle];
}

- (void)continuePressed
{
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  traitCollection = [(LPRCustomizeInterstitialViewController *)self traitCollection];
  v4 = [EditVehicleViewController alloc];
  v5 = sub_1006D447C(v8, traitCollection);
  v6 = [(EditVehicleViewController *)v4 initWithColors:v5 vehicle:self->_vehicle delegate:self];

  navigationController = [(LPRCustomizeInterstitialViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)_didFinishCreatingVehicle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didFinishConfiguringLPRForVehicle:self->_vehicle];

  v4 = +[VGVirtualGarageService sharedService];
  [v4 virtualGarageSaveVehicle:self->_vehicle];

  v5 = +[VGVirtualGarageService sharedService];
  [v5 virtualGarageSelectVehicle:self->_vehicle];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = LPRCustomizeInterstitialViewController;
  [(LPRCustomizeInterstitialViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(LPRCustomizeInterstitialViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = LPRCustomizeInterstitialViewController;
  [(LPRCustomizeInterstitialViewController *)&v9 viewWillAppear:?];
  traitCollection = [(LPRCustomizeInterstitialViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = LPRCustomizeInterstitialViewController;
  [(LPRCustomizeInterstitialViewController *)&v30 viewDidLoad];
  [(LPRCustomizeInterstitialViewController *)self setAccessibilityIdentifier:@"LPRCustomizeInterstitialView"];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[LPR Onboarding] Customize Your Vehicle" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[LPR Onboarding] Customize subtitle" value:@"localized string not found" table:0];

  v7 = sub_1006D43E0([(VGVehicle *)self->_vehicle isPureElectricVehicle]);
  v8 = +[UIColor systemWhiteColor];
  v9 = [v7 _flatImageWithColor:v8];
  v10 = [v9 imageWithRenderingMode:1];

  v11 = [[OBWelcomeController alloc] initWithTitle:v4 detailText:v6 icon:v10];
  view = [v11 view];
  [view setAccessibilityIdentifier:@"OBWelcomeView"];

  [v11 setModalPresentationStyle:2];
  headerView = [v11 headerView];
  [headerView setIconInheritsTint:1];

  v14 = +[UIColor systemBlueColor];
  headerView2 = [v11 headerView];
  [headerView2 setTintColor:v14];

  v16 = +[OBBoldTrayButton boldButton];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"[LPR Onboarding] Customize" value:@"localized string not found" table:0];
  [v16 setTitle:v18 forState:0];

  [v16 addTarget:self action:"continuePressed" forControlEvents:64];
  [v16 setAccessibilityIdentifier:@"CustomizeButton"];
  buttonTray = [v11 buttonTray];
  [buttonTray addButton:v16];

  v20 = +[OBLinkTrayButton linkButton];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"[LPR Onboarding] Set Up Later in Maps Settings" value:@"localized string not found" table:0];
  [v20 setTitle:v22 forState:0];

  [v20 addTarget:self action:"setupLaterPressed" forControlEvents:64];
  [v20 setAccessibilityIdentifier:@"SetupLaterButton"];
  buttonTray2 = [v11 buttonTray];
  [buttonTray2 addButton:v20];

  [(LPRCustomizeInterstitialViewController *)self addChildViewController:v11];
  view2 = [(LPRCustomizeInterstitialViewController *)self view];
  view3 = [v11 view];
  [view2 addSubview:view3];

  [v11 didMoveToParentViewController:self];
  view4 = [v11 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [v11 view];
  view6 = [(LPRCustomizeInterstitialViewController *)self view];
  v29 = [view5 _maps_constraintsForCenteringInView:view6];
  [NSLayoutConstraint activateConstraints:v29];
}

- (LPRCustomizeInterstitialViewController)initWithVehicle:(id)vehicle delegate:(id)delegate
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = LPRCustomizeInterstitialViewController;
  v9 = [(LPRCustomizeInterstitialViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicle, vehicle);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end
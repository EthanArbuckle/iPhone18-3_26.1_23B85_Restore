@interface HKBridgeParentController
- (HKBridgeParentController)init;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_addExpectedHealthSettingsViewAsChildViewController;
- (void)_loadHealthStoreForActiveDevice;
- (void)_mainQueue_startActivityIndicator;
- (void)_mainQueue_stopActivityIndicator;
- (void)didSuccessfullyTearDownSharing;
- (void)initializeView;
- (void)viewDidLoad;
@end

@implementation HKBridgeParentController

- (HKBridgeParentController)init
{
  v11.receiver = self;
  v11.super_class = HKBridgeParentController;
  v2 = [(HKBridgeParentController *)&v11 init];
  if (v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
    v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
    firstObject = [v5 firstObject];
    activeTinkerDevice = v2->_activeTinkerDevice;
    v2->_activeTinkerDevice = firstObject;

    v8 = [(NRDevice *)v2->_activeTinkerDevice valueForProperty:NRDevicePropertyIsAltAccount];
    v2->_isTinkerDevice = [v8 BOOLValue];

    if (!v2->_isTinkerDevice)
    {
      v9 = v2->_activeTinkerDevice;
      v2->_activeTinkerDevice = 0;
    }
  }

  return v2;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_LABEL" value:&stru_188B0 table:@"Localizable"];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKBridgeParentController;
  [(HKBridgeParentController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HEALTH_LABEL" value:&stru_188B0 table:@"Localizable"];
  [(HKBridgeParentController *)self setTitle:v4];

  [(HKBridgeParentController *)self initializeView];
}

- (void)initializeView
{
  [(HKBridgeParentController *)self _loadHealthStoreForActiveDevice];
  if (!self->_loadingHealthStore)
  {

    [(HKBridgeParentController *)self _addExpectedHealthSettingsViewAsChildViewController];
  }
}

- (id)specifiers
{
  localizedPaneTitle = [(HKBridgeParentController *)self localizedPaneTitle];
  [(HKBridgeParentController *)self setTitle:localizedPaneTitle];

  return &__NSArray0__struct;
}

- (void)_loadHealthStoreForActiveDevice
{
  if (self->_isTinkerDevice)
  {
    self->_loadingHealthStore = 1;
    [(HKBridgeParentController *)self _mainQueue_startActivityIndicator];
    activeTinkerDevice = self->_activeTinkerDevice;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_ACAC;
    v6[3] = &unk_18870;
    v6[4] = self;
    [BPSAppleIDDevices fetchFamilyMemberForDevice:activeTinkerDevice withCompletion:v6];
  }

  else
  {
    v4 = objc_alloc_init(HKHealthStore);
    healthStore = self->_healthStore;
    self->_healthStore = v4;

    _objc_release_x1(v4, healthStore);
  }
}

- (void)_mainQueue_startActivityIndicator
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  tinkerLoadingActivityIndicator = self->_tinkerLoadingActivityIndicator;
  if (!tinkerLoadingActivityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v5 = self->_tinkerLoadingActivityIndicator;
    self->_tinkerLoadingActivityIndicator = v4;

    [(UIActivityIndicatorView *)self->_tinkerLoadingActivityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_tinkerLoadingActivityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(HKBridgeParentController *)self view];
    [view addSubview:self->_tinkerLoadingActivityIndicator];

    v7 = self->_tinkerLoadingActivityIndicator;
    view2 = [(HKBridgeParentController *)self view];
    [(UIActivityIndicatorView *)v7 hk_alignCenterConstraintsWithView:view2];

    tinkerLoadingActivityIndicator = self->_tinkerLoadingActivityIndicator;
  }

  [(UIActivityIndicatorView *)tinkerLoadingActivityIndicator startAnimating];
}

- (void)_mainQueue_stopActivityIndicator
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  tinkerLoadingActivityIndicator = self->_tinkerLoadingActivityIndicator;

  [(UIActivityIndicatorView *)tinkerLoadingActivityIndicator stopAnimating];
}

- (void)_addExpectedHealthSettingsViewAsChildViewController
{
  if (self->_healthStore)
  {
    v3 = [[HKBridgeHealthController alloc] initWithHealthStore:self->_healthStore activeTinkerDevice:self->_activeTinkerDevice];
    [(HKBridgeHealthController *)v3 setSecondaryUserDelegate:self];
  }

  else
  {
    v3 = [[HKBridgeSharingDisabledController alloc] initWithActiveTinkerDevice:self->_activeTinkerDevice];
  }

  currentBridgeViewController = self->_currentBridgeViewController;
  self->_currentBridgeViewController = v3;

  if (self->_currentBridgeViewController)
  {
    [(HKBridgeParentController *)self addChildViewController:?];
    view = [(HKBridgeParentController *)self view];
    view2 = [(UIViewController *)self->_currentBridgeViewController view];
    [view addSubview:view2];

    view3 = [(UIViewController *)self->_currentBridgeViewController view];
    view4 = [(HKBridgeParentController *)self view];
    [view3 hk_alignConstraintsWithView:view4];

    v9 = self->_currentBridgeViewController;

    [(UIViewController *)v9 didMoveToParentViewController:self];
  }
}

- (void)didSuccessfullyTearDownSharing
{
  [(UIViewController *)self->_currentBridgeViewController willMoveToParentViewController:0];
  view = [(UIViewController *)self->_currentBridgeViewController view];
  [view removeFromSuperview];

  [(UIViewController *)self->_currentBridgeViewController removeFromParentViewController];
  currentBridgeViewController = self->_currentBridgeViewController;
  self->_currentBridgeViewController = 0;

  [(HKBridgeParentController *)self initializeView];
}

@end
@interface DetectorsToneController
- (DetectorsToneController)init;
- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification;
- (void)_insertTonePickerView;
- (void)_updateReloadSpecifierInParentController;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController;
- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation DetectorsToneController

- (DetectorsToneController)init
{
  v5.receiver = self;
  v5.super_class = DetectorsToneController;
  v2 = [(DetectorsToneController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_handleAlertOverridePolicyDidChangeNotification:" name:_TLAlertOverridePolicyDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:_TLAlertOverridePolicyDidChangeNotification object:0];
  tonePickerViewController = [(DetectorsToneController *)self tonePickerViewController];
  [tonePickerViewController willMoveToParentViewController:0];
  if ([tonePickerViewController isViewLoaded])
  {
    view = [tonePickerViewController view];
    [view removeFromSuperview];
  }

  [tonePickerViewController removeFromParentViewController];
  [tonePickerViewController setDelegate:0];

  v6.receiver = self;
  v6.super_class = DetectorsToneController;
  [(DetectorsToneController *)&v6 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = DetectorsToneController;
  [(DetectorsToneController *)&v14 setSpecifier:specifierCopy];
  name = [specifierCopy name];
  [(DetectorsToneController *)self setTitle:name];

  v6 = [specifierCopy propertyForKey:@"alertType"];
  if ([v6 length])
  {
    tonePickerViewController = [(DetectorsToneController *)self tonePickerViewController];

    if (!tonePickerViewController)
    {
      self->_alertType = TLAlertTypeFromString();
      v8 = [[TKTonePickerViewController alloc] initWithAlertType:self->_alertType];
      v9 = [specifierCopy propertyForKey:@"accountIdentifier"];
      detectorTopic = self->_detectorTopic;
      self->_detectorTopic = v9;

      if ([(NSString *)self->_detectorTopic length])
      {
        [v8 setTopic:self->_detectorTopic];
      }

      [v8 setShowsNone:1];
      [v8 setNoneAtTop:1];
      v11 = [(DetectorsToneController *)self _defaultToneIdentifierForTonePickerWithAlertType:self->_alertType topic:self->_detectorTopic];
      [v8 setDefaultToneIdentifier:v11];

      v12 = +[TLToneManager sharedToneManager];
      v13 = [v12 currentToneIdentifierForAlertType:self->_alertType topic:self->_detectorTopic];
      [v8 setSelectedToneIdentifier:v13];

      [v8 setShowsVibrations:1];
      [v8 setDelegate:self];
      [(DetectorsToneController *)self setTonePickerViewController:v8];
      [(DetectorsToneController *)self addChildViewController:v8];
      if ([(DetectorsToneController *)self isViewLoaded])
      {
        [(DetectorsToneController *)self _insertTonePickerView];
      }

      [v8 didMoveToParentViewController:self];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DetectorsToneController;
  [(DetectorsToneController *)&v3 viewDidLoad];
  [(DetectorsToneController *)self _insertTonePickerView];
}

- (void)_insertTonePickerView
{
  view = [(DetectorsToneController *)self view];
  tonePickerViewController = [(DetectorsToneController *)self tonePickerViewController];
  view2 = [tonePickerViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  if (AXDeviceIsPad())
  {
    PSTableViewSideInset();
    v6 = v5;
    tableView = [tonePickerViewController tableView];
    [tableView _setSectionContentInset:{UITableViewAutomaticDimension, v6, UITableViewAutomaticDimension, v6}];
  }

  [view addSubview:view2];
}

- (void)_updateReloadSpecifierInParentController
{
  parentController = [(DetectorsToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentController;
    specifier = [(DetectorsToneController *)self specifier];
    [v3 reloadSpecifier:specifier];
  }
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v8 = +[TLToneManager sharedToneManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  [v8 setCurrentToneIdentifier:identifierCopy forAlertType:alertType topic:topic];

  [(DetectorsToneController *)self _updateReloadSpecifierInParentController];
}

- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [viewControllerCopy setShowsDefault:0];
  [viewControllerCopy setShowsUserGenerated:1];
  [viewControllerCopy setShowsNone:1];
  [viewControllerCopy setShowsEditButtonInNavigationBar:1];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  v9 = [(DetectorsToneController *)self _defaultVibrationIdentifierForVibrationPickerWithAlertType:alertType topic:topic];
  [viewControllerCopy setDefaultVibrationIdentifier:v9];

  [viewControllerCopy setAllowsDeletingDefaultVibration:1];
  [viewControllerCopy setDelegate:self];
  [(DetectorsToneController *)self setVibrationPickerViewController:viewControllerCopy];
}

- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController
{
  [viewController setDelegate:0];

  [(DetectorsToneController *)self setVibrationPickerViewController:0];
}

- (void)vibrationPickerViewController:(id)controller selectedVibrationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v8 = +[TLVibrationManager sharedVibrationManager];
  alertType = [controllerCopy alertType];
  topic = [controllerCopy topic];

  [v8 setCurrentVibrationIdentifier:identifierCopy forAlertType:alertType topic:topic];

  [(DetectorsToneController *)self _updateReloadSpecifierInParentController];
}

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__DetectorsToneController__handleAlertOverridePolicyDidChangeNotification___block_invoke;
  block[3] = &unk_2553B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __75__DetectorsToneController__handleAlertOverridePolicyDidChangeNotification___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) tonePickerViewController];
  v2 = [v9 alertType];
  v3 = [v9 topic];
  v4 = [*(a1 + 32) _defaultToneIdentifierForTonePickerWithAlertType:v2 topic:v3];
  [v9 setDefaultToneIdentifier:v4];

  v5 = +[TLToneManager sharedToneManager];
  v6 = [v5 currentToneIdentifierForAlertType:v2 topic:v3];
  [v9 setSelectedToneIdentifier:v6];

  if ([v3 length])
  {
    v7 = [*(a1 + 32) vibrationPickerViewController];
    v8 = [*(a1 + 32) _defaultVibrationIdentifierForVibrationPickerWithAlertType:v2 topic:v3];
    [v7 setDefaultVibrationIdentifier:v8];
  }
}

- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = +[TLToneManager sharedToneManager];
  v7 = [v6 defaultToneIdentifierForAlertType:type];

  if ([topicCopy length])
  {
    v8 = +[TLToneManager sharedToneManager];
    v9 = [v8 hasSpecificDefaultToneIdentifierForAlertType:type topic:topicCopy];

    v10 = +[TLToneManager sharedToneManager];
    v11 = v10;
    if (v9)
    {
      [v10 defaultToneIdentifierForAlertType:type topic:topicCopy];
    }

    else
    {
      [v10 currentToneIdentifierForAlertType:type];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = +[TLVibrationManager sharedVibrationManager];
  v7 = [v6 defaultVibrationIdentifierForAlertType:type];

  if ([topicCopy length])
  {
    v8 = +[TLVibrationManager sharedVibrationManager];
    v9 = [v8 hasSpecificDefaultVibrationIdentifierForAlertType:type topic:topicCopy];

    v10 = +[TLVibrationManager sharedVibrationManager];
    v11 = v10;
    if (v9)
    {
      [v10 defaultVibrationIdentifierForAlertType:type topic:topicCopy];
    }

    else
    {
      [v10 currentVibrationIdentifierForAlertType:type];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

@end
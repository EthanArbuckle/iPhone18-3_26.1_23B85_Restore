@interface DetectorsToneController
- (DetectorsToneController)init;
- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)a3 topic:(id)a4;
- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)a3 topic:(id)a4;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)a3;
- (void)_insertTonePickerView;
- (void)_updateReloadSpecifierInParentController;
- (void)dealloc;
- (void)setSpecifier:(id)a3;
- (void)tonePickerViewController:(id)a3 didDismissVibrationPickerViewController:(id)a4;
- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4;
- (void)tonePickerViewController:(id)a3 willPresentVibrationPickerViewController:(id)a4;
- (void)vibrationPickerViewController:(id)a3 selectedVibrationWithIdentifier:(id)a4;
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
  v4 = [(DetectorsToneController *)self tonePickerViewController];
  [v4 willMoveToParentViewController:0];
  if ([v4 isViewLoaded])
  {
    v5 = [v4 view];
    [v5 removeFromSuperview];
  }

  [v4 removeFromParentViewController];
  [v4 setDelegate:0];

  v6.receiver = self;
  v6.super_class = DetectorsToneController;
  [(DetectorsToneController *)&v6 dealloc];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DetectorsToneController;
  [(DetectorsToneController *)&v14 setSpecifier:v4];
  v5 = [v4 name];
  [(DetectorsToneController *)self setTitle:v5];

  v6 = [v4 propertyForKey:@"alertType"];
  if ([v6 length])
  {
    v7 = [(DetectorsToneController *)self tonePickerViewController];

    if (!v7)
    {
      self->_alertType = TLAlertTypeFromString();
      v8 = [[TKTonePickerViewController alloc] initWithAlertType:self->_alertType];
      v9 = [v4 propertyForKey:@"accountIdentifier"];
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
  v8 = [(DetectorsToneController *)self view];
  v3 = [(DetectorsToneController *)self tonePickerViewController];
  v4 = [v3 view];
  [v8 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  if (AXDeviceIsPad())
  {
    PSTableViewSideInset();
    v6 = v5;
    v7 = [v3 tableView];
    [v7 _setSectionContentInset:{UITableViewAutomaticDimension, v6, UITableViewAutomaticDimension, v6}];
  }

  [v8 addSubview:v4];
}

- (void)_updateReloadSpecifierInParentController
{
  v5 = [(DetectorsToneController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    v4 = [(DetectorsToneController *)self specifier];
    [v3 reloadSpecifier:v4];
  }
}

- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TLToneManager sharedToneManager];
  v9 = [v7 alertType];
  v10 = [v7 topic];

  [v8 setCurrentToneIdentifier:v6 forAlertType:v9 topic:v10];

  [(DetectorsToneController *)self _updateReloadSpecifierInParentController];
}

- (void)tonePickerViewController:(id)a3 willPresentVibrationPickerViewController:(id)a4
{
  v10 = a4;
  v6 = a3;
  [v10 setShowsDefault:0];
  [v10 setShowsUserGenerated:1];
  [v10 setShowsNone:1];
  [v10 setShowsEditButtonInNavigationBar:1];
  v7 = [v6 alertType];
  v8 = [v6 topic];

  v9 = [(DetectorsToneController *)self _defaultVibrationIdentifierForVibrationPickerWithAlertType:v7 topic:v8];
  [v10 setDefaultVibrationIdentifier:v9];

  [v10 setAllowsDeletingDefaultVibration:1];
  [v10 setDelegate:self];
  [(DetectorsToneController *)self setVibrationPickerViewController:v10];
}

- (void)tonePickerViewController:(id)a3 didDismissVibrationPickerViewController:(id)a4
{
  [a4 setDelegate:0];

  [(DetectorsToneController *)self setVibrationPickerViewController:0];
}

- (void)vibrationPickerViewController:(id)a3 selectedVibrationWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TLVibrationManager sharedVibrationManager];
  v9 = [v7 alertType];
  v10 = [v7 topic];

  [v8 setCurrentVibrationIdentifier:v6 forAlertType:v9 topic:v10];

  [(DetectorsToneController *)self _updateReloadSpecifierInParentController];
}

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)a3
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

- (id)_defaultToneIdentifierForTonePickerWithAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = a4;
  v6 = +[TLToneManager sharedToneManager];
  v7 = [v6 defaultToneIdentifierForAlertType:a3];

  if ([v5 length])
  {
    v8 = +[TLToneManager sharedToneManager];
    v9 = [v8 hasSpecificDefaultToneIdentifierForAlertType:a3 topic:v5];

    v10 = +[TLToneManager sharedToneManager];
    v11 = v10;
    if (v9)
    {
      [v10 defaultToneIdentifierForAlertType:a3 topic:v5];
    }

    else
    {
      [v10 currentToneIdentifierForAlertType:a3];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

- (id)_defaultVibrationIdentifierForVibrationPickerWithAlertType:(int64_t)a3 topic:(id)a4
{
  v5 = a4;
  v6 = +[TLVibrationManager sharedVibrationManager];
  v7 = [v6 defaultVibrationIdentifierForAlertType:a3];

  if ([v5 length])
  {
    v8 = +[TLVibrationManager sharedVibrationManager];
    v9 = [v8 hasSpecificDefaultVibrationIdentifierForAlertType:a3 topic:v5];

    v10 = +[TLVibrationManager sharedVibrationManager];
    v11 = v10;
    if (v9)
    {
      [v10 defaultVibrationIdentifierForAlertType:a3 topic:v5];
    }

    else
    {
      [v10 currentVibrationIdentifierForAlertType:a3];
    }
    v12 = ;

    v7 = v12;
  }

  return v7;
}

@end
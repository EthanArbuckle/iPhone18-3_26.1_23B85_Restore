@interface GuidedAccessTimeRestrictionsTonePickerViewController
- (GuidedAccessTimeRestrictionsTonePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TKTonePickerViewController)tonePickerViewController;
- (void)dealloc;
- (void)loadView;
- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4;
@end

@implementation GuidedAccessTimeRestrictionsTonePickerViewController

- (GuidedAccessTimeRestrictionsTonePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = GuidedAccessTimeRestrictionsTonePickerViewController;
  v4 = [(GuidedAccessTimeRestrictionsTonePickerViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = GAXSTimeRestrictionsLocString(@"GUIDED_ACCESS_TIME_RESTRICTIONS_SOUND_TITLE");
    [(GuidedAccessTimeRestrictionsTonePickerViewController *)v4 setTitle:v5];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self tonePickerViewController];
  [v3 willMoveToParentViewController:0];
  if ([v3 isViewLoaded])
  {
    v4 = [v3 view];
    [v4 removeFromSuperview];
  }

  [v3 removeFromParentViewController];

  v5.receiver = self;
  v5.super_class = GuidedAccessTimeRestrictionsTonePickerViewController;
  [(GuidedAccessTimeRestrictionsTonePickerViewController *)&v5 dealloc];
}

- (TKTonePickerViewController)tonePickerViewController
{
  tonePickerViewController = self->_tonePickerViewController;
  if (!tonePickerViewController)
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [[TKTonePickerViewController alloc] initWithAlertType:2];
    [v5 setShowsNone:1];
    [v5 setNoneAtTop:1];
    v6 = [v4 guidedAccessDefaultToneIdentifierForTimeRestrictionEvents];
    [v5 setDefaultToneIdentifier:v6];

    v7 = [v4 guidedAccessToneIdentifierForTimeRestrictionEvents];
    [v5 setSelectedToneIdentifier:v7];

    [v5 setSelectedVibrationIdentifier:TLVibrationIdentifierNone];
    [v5 setDelegate:self];
    [(GuidedAccessTimeRestrictionsTonePickerViewController *)self addChildViewController:v5];
    [v5 didMoveToParentViewController:self];
    v8 = self->_tonePickerViewController;
    self->_tonePickerViewController = v5;

    tonePickerViewController = self->_tonePickerViewController;
  }

  return tonePickerViewController;
}

- (void)loadView
{
  v10 = objc_opt_new();
  v3 = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self tonePickerViewController];
  v4 = [v3 view];
  [v10 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == &dword_0 + 1)
  {
    PSTableViewSideInsetPad();
    v8 = v7;
    v9 = [v3 tableView];
    [v9 _setSectionContentInset:{UITableViewAutomaticDimension, v8, UITableViewAutomaticDimension, v8}];
  }

  [v10 addSubview:v4];
  [(GuidedAccessTimeRestrictionsTonePickerViewController *)self setView:v10];
}

- (void)tonePickerViewController:(id)a3 selectedToneWithIdentifier:(id)a4
{
  v5 = a4;
  v9 = +[AXSettings sharedInstance];
  [v9 setGuidedAccessToneIdentifierForTimeRestrictionEvents:v5];

  v6 = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self specifier];
    [v7 reloadSpecifier:v8];
  }
}

@end
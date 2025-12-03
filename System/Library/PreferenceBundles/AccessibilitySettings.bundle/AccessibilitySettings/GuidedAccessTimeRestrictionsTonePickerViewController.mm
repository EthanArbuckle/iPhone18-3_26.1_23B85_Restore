@interface GuidedAccessTimeRestrictionsTonePickerViewController
- (GuidedAccessTimeRestrictionsTonePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TKTonePickerViewController)tonePickerViewController;
- (void)dealloc;
- (void)loadView;
- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier;
@end

@implementation GuidedAccessTimeRestrictionsTonePickerViewController

- (GuidedAccessTimeRestrictionsTonePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = GuidedAccessTimeRestrictionsTonePickerViewController;
  v4 = [(GuidedAccessTimeRestrictionsTonePickerViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = GAXSTimeRestrictionsLocString(@"GUIDED_ACCESS_TIME_RESTRICTIONS_SOUND_TITLE");
    [(GuidedAccessTimeRestrictionsTonePickerViewController *)v4 setTitle:v5];
  }

  return v4;
}

- (void)dealloc
{
  tonePickerViewController = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self tonePickerViewController];
  [tonePickerViewController willMoveToParentViewController:0];
  if ([tonePickerViewController isViewLoaded])
  {
    view = [tonePickerViewController view];
    [view removeFromSuperview];
  }

  [tonePickerViewController removeFromParentViewController];

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
    guidedAccessDefaultToneIdentifierForTimeRestrictionEvents = [v4 guidedAccessDefaultToneIdentifierForTimeRestrictionEvents];
    [v5 setDefaultToneIdentifier:guidedAccessDefaultToneIdentifierForTimeRestrictionEvents];

    guidedAccessToneIdentifierForTimeRestrictionEvents = [v4 guidedAccessToneIdentifierForTimeRestrictionEvents];
    [v5 setSelectedToneIdentifier:guidedAccessToneIdentifierForTimeRestrictionEvents];

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
  tonePickerViewController = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self tonePickerViewController];
  view = [tonePickerViewController view];
  [v10 bounds];
  [view setFrame:?];
  [view setAutoresizingMask:18];
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    PSTableViewSideInsetPad();
    v8 = v7;
    tableView = [tonePickerViewController tableView];
    [tableView _setSectionContentInset:{UITableViewAutomaticDimension, v8, UITableViewAutomaticDimension, v8}];
  }

  [v10 addSubview:view];
  [(GuidedAccessTimeRestrictionsTonePickerViewController *)self setView:v10];
}

- (void)tonePickerViewController:(id)controller selectedToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = +[AXSettings sharedInstance];
  [v9 setGuidedAccessToneIdentifierForTimeRestrictionEvents:identifierCopy];

  parentController = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = parentController;
    specifier = [(GuidedAccessTimeRestrictionsTonePickerViewController *)self specifier];
    [v7 reloadSpecifier:specifier];
  }
}

@end
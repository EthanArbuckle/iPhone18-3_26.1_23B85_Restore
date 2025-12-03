@interface MFNanoBridgeSettingsMailboxPicker
- (MFNanoBridgeSettingsMailboxPicker)initWithNibName:(id)name bundle:(id)bundle;
- (void)mailboxPickerController:(id)controller didChangeSelectedMailboxes:(id)mailboxes;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation MFNanoBridgeSettingsMailboxPicker

- (MFNanoBridgeSettingsMailboxPicker)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v15.receiver = self;
  v15.super_class = MFNanoBridgeSettingsMailboxPicker;
  v8 = [(MFNanoBridgeSettingsMailboxPicker *)&v15 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MFNanoBridgeSettingsMailboxPickerController);
    nanoMailboxPickerController = v8->_nanoMailboxPickerController;
    v8->_nanoMailboxPickerController = v9;

    [(MFNanoBridgeSettingsMailboxPickerController *)v8->_nanoMailboxPickerController setDelegate:v8];
    [(MFNanoBridgeSettingsMailboxPicker *)v8 addChildViewController:v8->_nanoMailboxPickerController];
    [(MFNanoBridgeSettingsMailboxPickerController *)v8->_nanoMailboxPickerController didMoveToParentViewController:v8];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"INCLUDE_MAIL_SCREEN_NAVIGATION_TITLE" value:&stru_34FF0 table:@"Main"];
    navigationItem = [(MFNanoBridgeSettingsMailboxPicker *)v8 navigationItem];
    [navigationItem setTitle:v12];
  }

  return v8;
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeSettingsMailboxPicker;
  [(MFNanoBridgeSettingsMailboxPicker *)&v3 willBecomeActive];
  [(MFNanoBridgeSettingsMailboxPickerController *)self->_nanoMailboxPickerController refreshData];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = MFNanoBridgeSettingsMailboxPicker;
  [(MFNanoBridgeSettingsMailboxPicker *)&v16 viewDidLoad];
  view = [(MFNanoBridgeSettingsMailboxPicker *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(MFNanoBridgeSettingsMailboxPickerController *)self->_nanoMailboxPickerController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  tableView = [(MFNanoBridgeSettingsMailboxPickerController *)self->_nanoMailboxPickerController tableView];
  [tableView setUsesVariableMargins:1];

  view3 = [(MFNanoBridgeSettingsMailboxPicker *)self view];
  tableView2 = [(MFNanoBridgeSettingsMailboxPickerController *)self->_nanoMailboxPickerController tableView];
  [view3 addSubview:tableView2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeSettingsMailboxPicker;
  [(MFNanoBridgeSettingsMailboxPicker *)&v3 viewWillAppear:appear];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForIncludeMailSettings];
}

- (void)mailboxPickerController:(id)controller didChangeSelectedMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setIncludeMailMailboxes:mailboxesCopy];

  parentController = [(MFNanoBridgeSettingsMailboxPicker *)self parentController];
  specifier = [(MFNanoBridgeSettingsMailboxPicker *)self specifier];
  [parentController reloadSpecifier:specifier];
}

@end
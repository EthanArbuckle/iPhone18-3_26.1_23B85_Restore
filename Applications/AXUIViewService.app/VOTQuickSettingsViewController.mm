@interface VOTQuickSettingsViewController
- (VOTQuickSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VOTQuickSettingsViewControllerDelegate)delegate;
- (void)_dismissQuickSettings;
- (void)viewDidLoad;
@end

@implementation VOTQuickSettingsViewController

- (VOTQuickSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = VOTQuickSettingsViewController;
  v4 = [(VOTQuickSettingsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = sub_10000CCD4(@"VoiceOverQuickSettings.title");
    [(VOTQuickSettingsViewController *)v4 setTitle:v5];

    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v4 action:"_handleDoneButtonTap:"];
    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    navigationItem = [(VOTQuickSettingsViewController *)v4 navigationItem];
    [navigationItem setRightBarButtonItems:v7];
  }

  return v4;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VOTQuickSettingsViewController;
  [(VOTQuickSettingsViewController *)&v10 viewDidLoad];
  v3 = objc_alloc_init(VOTQuickSettingsListViewController);
  settingsListViewController = self->_settingsListViewController;
  self->_settingsListViewController = v3;

  data = [(VOTQuickSettingsViewController *)self data];
  [(VOTQuickSettingsListViewController *)self->_settingsListViewController setData:data];

  view = [(VOTQuickSettingsViewController *)self view];
  view2 = [(VOTQuickSettingsListViewController *)self->_settingsListViewController view];
  [(VOTQuickSettingsViewController *)self addChildViewController:self->_settingsListViewController];
  [view addSubview:view2];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [(VOTQuickSettingsListViewController *)self->_settingsListViewController didMoveToParentViewController:self];
  searchController = [(VOTQuickSettingsListViewController *)self->_settingsListViewController searchController];
  navigationItem = [(VOTQuickSettingsViewController *)self navigationItem];
  [navigationItem setSearchController:searchController];
}

- (void)_dismissQuickSettings
{
  delegate = [(VOTQuickSettingsViewController *)self delegate];
  [delegate quickSettingsViewControllerWasDismissed:self];

  presentingViewController = [(VOTQuickSettingsViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];
}

- (VOTQuickSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
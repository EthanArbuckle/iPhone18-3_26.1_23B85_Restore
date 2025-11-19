@interface VOTQuickSettingsViewController
- (VOTQuickSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VOTQuickSettingsViewControllerDelegate)delegate;
- (void)_dismissQuickSettings;
- (void)viewDidLoad;
@end

@implementation VOTQuickSettingsViewController

- (VOTQuickSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
    v8 = [(VOTQuickSettingsViewController *)v4 navigationItem];
    [v8 setRightBarButtonItems:v7];
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

  v5 = [(VOTQuickSettingsViewController *)self data];
  [(VOTQuickSettingsListViewController *)self->_settingsListViewController setData:v5];

  v6 = [(VOTQuickSettingsViewController *)self view];
  v7 = [(VOTQuickSettingsListViewController *)self->_settingsListViewController view];
  [(VOTQuickSettingsViewController *)self addChildViewController:self->_settingsListViewController];
  [v6 addSubview:v7];
  [v6 bounds];
  [v7 setFrame:?];
  [v7 setAutoresizingMask:18];
  [(VOTQuickSettingsListViewController *)self->_settingsListViewController didMoveToParentViewController:self];
  v8 = [(VOTQuickSettingsListViewController *)self->_settingsListViewController searchController];
  v9 = [(VOTQuickSettingsViewController *)self navigationItem];
  [v9 setSearchController:v8];
}

- (void)_dismissQuickSettings
{
  v3 = [(VOTQuickSettingsViewController *)self delegate];
  [v3 quickSettingsViewControllerWasDismissed:self];

  v4 = [(VOTQuickSettingsViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:0 completion:0];
}

- (VOTQuickSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
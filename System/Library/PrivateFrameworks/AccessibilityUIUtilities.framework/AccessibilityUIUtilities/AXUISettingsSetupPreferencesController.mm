@interface AXUISettingsSetupPreferencesController
- (AXUISettingsSetupPreferencesController)initWithController:(id)a3 title:(id)a4;
- (void)_displayControllerTable:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AXUISettingsSetupPreferencesController

- (AXUISettingsSetupPreferencesController)initWithController:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXUISettingsSetupPreferencesController;
  v9 = [(AXUISettingsSetupPreferencesController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(AXUISettingsSetupPreferencesController *)v9 setTitle:v8];
    objc_storeStrong(&v10->_sourceController, a3);
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AXUISettingsSetupPreferencesController;
  [(AXUISettingsSetupPreferencesController *)&v3 viewDidLoad];
  [(AXUISettingsSetupPreferencesController *)self _displayControllerTable:self->_sourceController];
}

- (void)_displayControllerTable:(id)a3
{
  v6 = a3;
  [(AXUISettingsSetupPreferencesController *)self addChildViewController:v6];
  v4 = [(AXUISettingsSetupPreferencesController *)self view];
  v5 = [v6 view];
  [v4 addSubview:v5];

  [v6 didMoveToParentViewController:self];
  [v6 loadViewIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v12 = [(AXUISettingsSetupPreferencesController *)self view];
  [v12 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PSListController *)self->_sourceController view];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end
@interface AXUISettingsSetupPreferencesController
- (AXUISettingsSetupPreferencesController)initWithController:(id)controller title:(id)title;
- (void)_displayControllerTable:(id)table;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AXUISettingsSetupPreferencesController

- (AXUISettingsSetupPreferencesController)initWithController:(id)controller title:(id)title
{
  controllerCopy = controller;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = AXUISettingsSetupPreferencesController;
  v9 = [(AXUISettingsSetupPreferencesController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(AXUISettingsSetupPreferencesController *)v9 setTitle:titleCopy];
    objc_storeStrong(&v10->_sourceController, controller);
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

- (void)_displayControllerTable:(id)table
{
  tableCopy = table;
  [(AXUISettingsSetupPreferencesController *)self addChildViewController:tableCopy];
  view = [(AXUISettingsSetupPreferencesController *)self view];
  view2 = [tableCopy view];
  [view addSubview:view2];

  [tableCopy didMoveToParentViewController:self];
  [tableCopy loadViewIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  view = [(AXUISettingsSetupPreferencesController *)self view];
  [view frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view2 = [(PSListController *)self->_sourceController view];
  [view2 setFrame:{v4, v6, v8, v10}];
}

@end
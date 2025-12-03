@interface CARSettingsPanel
- (CARSettingsPanel)initWithPanelController:(id)controller;
- (CARSettingsPanelController)panelController;
- (id)navigationItem;
- (id)title;
- (void)viewDidLoad;
@end

@implementation CARSettingsPanel

- (CARSettingsPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CARSettingsPanel;
  v5 = [(CARSettingsPanel *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_panelController, controllerCopy);
    [controllerCopy registerPanel:v6];
  }

  return v6;
}

- (id)title
{
  cellSpecifier = [(CARSettingsPanel *)self cellSpecifier];
  title = [cellSpecifier title];

  return title;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARSettingsPanel;
  [(CARSettingsPanel *)&v5 viewDidLoad];
  v3 = +[UIColor tableBackgroundColor];
  view = [(CARSettingsPanel *)self view];
  [view setBackgroundColor:v3];
}

- (id)navigationItem
{
  v6.receiver = self;
  v6.super_class = CARSettingsPanel;
  navigationItem = [(CARSettingsPanel *)&v6 navigationItem];
  v3 = +[UIColor redColor];
  titleView = [navigationItem titleView];
  [titleView setBackgroundColor:v3];

  return navigationItem;
}

- (CARSettingsPanelController)panelController
{
  WeakRetained = objc_loadWeakRetained(&self->_panelController);

  return WeakRetained;
}

@end
@interface CARSettingsPanel
- (CARSettingsPanel)initWithPanelController:(id)a3;
- (CARSettingsPanelController)panelController;
- (id)navigationItem;
- (id)title;
- (void)viewDidLoad;
@end

@implementation CARSettingsPanel

- (CARSettingsPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CARSettingsPanel;
  v5 = [(CARSettingsPanel *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_panelController, v4);
    [v4 registerPanel:v6];
  }

  return v6;
}

- (id)title
{
  v2 = [(CARSettingsPanel *)self cellSpecifier];
  v3 = [v2 title];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARSettingsPanel;
  [(CARSettingsPanel *)&v5 viewDidLoad];
  v3 = +[UIColor tableBackgroundColor];
  v4 = [(CARSettingsPanel *)self view];
  [v4 setBackgroundColor:v3];
}

- (id)navigationItem
{
  v6.receiver = self;
  v6.super_class = CARSettingsPanel;
  v2 = [(CARSettingsPanel *)&v6 navigationItem];
  v3 = +[UIColor redColor];
  v4 = [v2 titleView];
  [v4 setBackgroundColor:v3];

  return v2;
}

- (CARSettingsPanelController)panelController
{
  WeakRetained = objc_loadWeakRetained(&self->_panelController);

  return WeakRetained;
}

@end
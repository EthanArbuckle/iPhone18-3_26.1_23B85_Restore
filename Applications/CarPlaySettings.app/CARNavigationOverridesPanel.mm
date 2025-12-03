@interface CARNavigationOverridesPanel
- (CARNavigationOverridesPanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
@end

@implementation CARNavigationOverridesPanel

- (CARNavigationOverridesPanel)initWithPanelController:(id)controller
{
  v10.receiver = self;
  v10.super_class = CARNavigationOverridesPanel;
  v3 = [(CARSettingsPanel *)&v10 initWithPanelController:controller];
  if (v3)
  {
    v4 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"maps:/car/instrumentcluster" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB1E8];
    v11[0] = v4;
    v5 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"maps:/car/instrumentcluster/instructioncard" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB208];
    v11[1] = v5;
    v6 = [[CARSettingsCellSpecifier alloc] initWithTitle:@"maps:/car/instrumentcluster/map" image:0 icon:0 accessoryType:0 actionBlock:&stru_1000DB228];
    v11[2] = v6;
    v7 = [NSArray arrayWithObjects:v11 count:3];
    switches = v3->_switches;
    v3->_switches = v7;
  }

  return v3;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.internal-settings"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100014E9C;
    v9[3] = &unk_1000DAE40;
    objc_copyWeak(&v10, &location);
    v6 = [(CARSettingsCellSpecifier *)v4 initWithTitle:@"showUI URL Override" image:0 icon:v5 accessoryType:1 actionBlock:v9];
    v7 = self->_cellSpecifier;
    self->_cellSpecifier = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

@end
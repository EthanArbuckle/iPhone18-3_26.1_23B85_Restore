@interface CARDebugPanel
- (CARDebugPanel)initWithPanelController:(id)a3;
- (id)cellSpecifier;
- (id)cellSpecifiers;
- (void)viewDidLoad;
@end

@implementation CARDebugPanel

- (CARDebugPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CARDebugPanel;
  v5 = [(CARSettingsPanel *)&v13 initWithPanelController:v4];
  if (v5)
  {
    v6 = [[CARDebugDynamicTextPanel alloc] initWithPanelController:v4];
    v14[0] = v6;
    v7 = [[CARDebugColorsPanel alloc] initWithPanelController:v4];
    v14[1] = v7;
    v8 = [[CARDebugTableCellsPanel alloc] initWithPanelController:v4];
    v14[2] = v8;
    v9 = [[CARDebugSettingsCollectionPanel alloc] initWithPanelController:v4];
    v14[3] = v9;
    v10 = [NSArray arrayWithObjects:v14 count:4];
    panels = v5->_panels;
    v5->_panels = v10;
  }

  return v5;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000FE6C;
    v8[3] = &unk_1000DAE40;
    objc_copyWeak(&v9, &location);
    v5 = [(CARSettingsCellSpecifier *)v4 initWithTitle:@"Debug Tools" image:0 icon:0 accessoryType:1 actionBlock:v8];
    v6 = self->_cellSpecifier;
    self->_cellSpecifier = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (id)cellSpecifiers
{
  cellSpecifiers = self->_cellSpecifiers;
  if (!cellSpecifiers)
  {
    v4 = [(CARDebugPanel *)self panels];
    v5 = NSStringFromSelector("cellSpecifier");
    v6 = [v4 valueForKey:v5];
    v7 = [NSMutableArray arrayWithArray:v6];

    v8 = self->_cellSpecifiers;
    self->_cellSpecifiers = v7;

    cellSpecifiers = self->_cellSpecifiers;
  }

  return cellSpecifiers;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CARDebugPanel;
  [(CARSettingsTablePanel *)&v2 viewDidLoad];
}

@end
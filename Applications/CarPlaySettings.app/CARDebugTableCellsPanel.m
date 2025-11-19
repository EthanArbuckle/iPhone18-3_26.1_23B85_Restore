@interface CARDebugTableCellsPanel
- (CARDebugTableCellsPanel)initWithPanelController:(id)a3;
- (id)cellSpecifier;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CARDebugTableCellsPanel

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007634;
    v8[3] = &unk_1000DAE40;
    objc_copyWeak(&v9, &location);
    v5 = [(CARSettingsCellSpecifier *)v4 initWithTitle:@"Debug TableView Cells" image:0 icon:0 accessoryType:1 actionBlock:v8];
    v6 = self->_cellSpecifier;
    self->_cellSpecifier = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (CARDebugTableCellsPanel)initWithPanelController:(id)a3
{
  v4.receiver = self;
  v4.super_class = CARDebugTableCellsPanel;
  return [(CARSettingsPanel *)&v4 initWithPanelController:a3];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = CARDebugTableCellsPanel;
  [(CARSettingsPanel *)&v33 viewDidLoad];
  v3 = [[DebugTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CARDebugTableCellsPanel *)self setTableView:v3];

  v4 = [(CARDebugTableCellsPanel *)self tableView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CARDebugTableCellsPanel *)self tableView];
  [v5 setDelegate:self];

  v6 = [(CARDebugTableCellsPanel *)self tableView];
  [v6 setDataSource:self];

  v7 = [(CARDebugTableCellsPanel *)self tableView];
  v8 = objc_opt_class();
  v9 = +[DebugTableViewCell reuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [(CARDebugTableCellsPanel *)self view];
  v11 = [(CARDebugTableCellsPanel *)self tableView];
  [v10 addSubview:v11];

  v32 = [(CARDebugTableCellsPanel *)self tableView];
  v30 = [v32 topAnchor];
  v31 = [(CARDebugTableCellsPanel *)self view];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v34[0] = v28;
  v27 = [(CARDebugTableCellsPanel *)self tableView];
  v25 = [v27 leftAnchor];
  v26 = [(CARDebugTableCellsPanel *)self view];
  v24 = [v26 leftAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v34[1] = v23;
  v22 = [(CARDebugTableCellsPanel *)self tableView];
  v12 = [v22 rightAnchor];
  v13 = [(CARDebugTableCellsPanel *)self view];
  v14 = [v13 rightAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v34[2] = v15;
  v16 = [(CARDebugTableCellsPanel *)self tableView];
  v17 = [v16 bottomAnchor];
  v18 = [(CARDebugTableCellsPanel *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v34[3] = v20;
  v21 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[DebugTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(CARDebugTableCellsPanel *)self tableView];
  [v10 _sectionContentInset];
  v12 = v11;
  v13 = [(CARDebugTableCellsPanel *)self platterLeftConstraint];
  [v13 setConstant:v12];

  v14 = [(CARDebugTableCellsPanel *)self tableView];
  [v14 _sectionContentInset];
  v16 = -v15;
  v17 = [(CARDebugTableCellsPanel *)self platterRightConstraint];
  [v17 setConstant:v16];

  v18 = [v6 section];
  v19 = [v6 row];

  v20 = [NSString stringWithFormat:@"Section %ld row %ld", v18, v19];
  v21 = [v9 textLabel];
  [v21 setText:v20];

  [v9 setAccessoryType:1];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [v7 indexPathForSelectedRow];

  if (v6 == v5)
  {
    [v7 deselectRowAtIndexPath:v5 animated:1];
  }
}

@end
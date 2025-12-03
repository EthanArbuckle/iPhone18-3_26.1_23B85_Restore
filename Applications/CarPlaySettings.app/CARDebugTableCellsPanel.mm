@interface CARDebugTableCellsPanel
- (CARDebugTableCellsPanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (CARDebugTableCellsPanel)initWithPanelController:(id)controller
{
  v4.receiver = self;
  v4.super_class = CARDebugTableCellsPanel;
  return [(CARSettingsPanel *)&v4 initWithPanelController:controller];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = CARDebugTableCellsPanel;
  [(CARSettingsPanel *)&v33 viewDidLoad];
  v3 = [[DebugTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CARDebugTableCellsPanel *)self setTableView:v3];

  tableView = [(CARDebugTableCellsPanel *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(CARDebugTableCellsPanel *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(CARDebugTableCellsPanel *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(CARDebugTableCellsPanel *)self tableView];
  v8 = objc_opt_class();
  v9 = +[DebugTableViewCell reuseIdentifier];
  [tableView4 registerClass:v8 forCellReuseIdentifier:v9];

  view = [(CARDebugTableCellsPanel *)self view];
  tableView5 = [(CARDebugTableCellsPanel *)self tableView];
  [view addSubview:tableView5];

  tableView6 = [(CARDebugTableCellsPanel *)self tableView];
  topAnchor = [tableView6 topAnchor];
  view2 = [(CARDebugTableCellsPanel *)self view];
  topAnchor2 = [view2 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v28;
  tableView7 = [(CARDebugTableCellsPanel *)self tableView];
  leftAnchor = [tableView7 leftAnchor];
  view3 = [(CARDebugTableCellsPanel *)self view];
  leftAnchor2 = [view3 leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v34[1] = v23;
  tableView8 = [(CARDebugTableCellsPanel *)self tableView];
  rightAnchor = [tableView8 rightAnchor];
  view4 = [(CARDebugTableCellsPanel *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v34[2] = v15;
  tableView9 = [(CARDebugTableCellsPanel *)self tableView];
  bottomAnchor = [tableView9 bottomAnchor];
  view5 = [(CARDebugTableCellsPanel *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v20;
  v21 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[DebugTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  tableView = [(CARDebugTableCellsPanel *)self tableView];
  [tableView _sectionContentInset];
  v12 = v11;
  platterLeftConstraint = [(CARDebugTableCellsPanel *)self platterLeftConstraint];
  [platterLeftConstraint setConstant:v12];

  tableView2 = [(CARDebugTableCellsPanel *)self tableView];
  [tableView2 _sectionContentInset];
  v16 = -v15;
  platterRightConstraint = [(CARDebugTableCellsPanel *)self platterRightConstraint];
  [platterRightConstraint setConstant:v16];

  section = [pathCopy section];
  v19 = [pathCopy row];

  v20 = [NSString stringWithFormat:@"Section %ld row %ld", section, v19];
  textLabel = [v9 textLabel];
  [textLabel setText:v20];

  [v9 setAccessoryType:1];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];

  if (indexPathForSelectedRow == pathCopy)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

@end
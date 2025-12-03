@interface STKListDisplayAlertViewController
- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item;
- (BOOL)validateAction:(id)action;
- (id)_simToolkitListItems;
- (id)newTopBar;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_selectListItem:(unint64_t)item;
- (void)leftNavigationButtonPressed;
- (void)rightNavigationButtonPressed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation STKListDisplayAlertViewController

- (BOOL)validateAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_simToolkitListItems
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  sessionData = [sessionAction sessionData];
  listItems = [sessionData listItems];

  return listItems;
}

- (void)_selectListItem:(unint64_t)item
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendSuccessWithSelectedItemIndex:item];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = STKListDisplayAlertViewController;
  [(STKBaseAlertViewController *)&v24 viewDidLoad];
  view = [(STKListDisplayAlertViewController *)self view];
  v4 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  table = self->_table;
  self->_table = v4;

  [(UITableView *)self->_table setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_table setDelegate:self];
  [(UITableView *)self->_table setDataSource:self];
  v6 = self->_table;
  v7 = +[UIColor clearColor];
  [(UITableView *)v6 setBackgroundColor:v7];

  [(UITableView *)self->_table setAlpha:1.0];
  [(UITableView *)self->_table setOpaque:0];
  [(UITableView *)self->_table setEstimatedRowHeight:100.0];
  [(UITableView *)self->_table setRowHeight:UITableViewAutomaticDimension];
  [view addSubview:self->_table];
  widthAnchor = [(UITableView *)self->_table widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v25[0] = v21;
  centerXAnchor = [(UITableView *)self->_table centerXAnchor];
  v18 = view;
  centerXAnchor2 = [view centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v25[1] = v8;
  topAnchor = [(UITableView *)self->_table topAnchor];
  topBar = [(STKBaseAlertViewController *)self topBar];
  bottomAnchor = [topBar bottomAnchor];
  v12 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v25[2] = v12;
  bottomAnchor2 = [(UITableView *)self->_table bottomAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)leftNavigationButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:4];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)rightNavigationButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:1];

  [(STKBaseAlertViewController *)self dismiss];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(STKListDisplayAlertViewController *)self _simToolkitListItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"name"];
  _simToolkitListItems = [(STKListDisplayAlertViewController *)self _simToolkitListItems];
  v8 = [pathCopy row];

  v9 = [_simToolkitListItems objectAtIndex:v8];

  if ([v9 isSelected])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v6 setAccessoryType:v10];
  textLabel = [v6 textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [v6 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v6 textLabel];
  text = [v9 text];
  [textLabel3 setText:text];

  textLabel4 = [v6 textLabel];
  [textLabel4 setTextAlignment:1];

  textLabel5 = [v6 textLabel];
  v17 = +[UIColor whiteColor];
  [textLabel5 setTextColor:v17];

  textLabel6 = [v6 textLabel];
  [textLabel6 setOpaque:0];

  textLabel7 = [v6 textLabel];
  v20 = +[UIColor clearColor];
  [textLabel7 setBackgroundColor:v20];

  [v6 setOpaque:0];
  v21 = +[UIColor clearColor];
  [v6 setBackgroundColor:v21];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(UITableView *)self->_table indexPathForSelectedRow:view];
  if (v5)
  {
    v6 = v5;
    -[STKListDisplayAlertViewController _selectListItem:](self, "_selectListItem:", [v5 row]);
    [(UITableView *)self->_table deselectRowAtIndexPath:v6 animated:1];
    [(STKBaseAlertViewController *)self dismiss];
    v5 = v6;
  }
}

- (id)newTopBar
{
  v3 = objc_alloc_init(UINavigationBar);
  [v3 setDelegate:self];
  [v3 _setHidesShadow:1];
  [v3 setBarStyle:1];
  v4 = objc_alloc_init(UIImage);
  [v3 setBackgroundImage:v4 forBarMetrics:0];

  v5 = [UINavigationItem alloc];
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v7 = [v6 localizedStringForKey:@"BACK" value:&stru_100018670 table:@"SIMToolkitUI"];
  v8 = [v5 initWithTitle:v7];

  [v3 pushNavigationItem:v8 animated:0];
  v9 = [[UINavigationItem alloc] initWithTitle:&stru_100018670];
  v10 = [UIBarButtonItem alloc];
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_100018670 table:@"SIMToolkitUI"];
  v13 = [v10 initWithTitle:v12 style:0 target:self action:"rightNavigationButtonPressed"];

  [v9 setRightBarButtonItem:v13];
  [v3 pushNavigationItem:v9 animated:0];

  return v3;
}

- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item
{
  if (objc_opt_respondsToSelector())
  {
    [(STKListDisplayAlertViewController *)self performSelector:"leftNavigationButtonPressed" withObject:0];
  }

  return 0;
}

@end
@interface STKListDisplayAlertViewController
- (BOOL)navigationBar:(id)a3 shouldPopItem:(id)a4;
- (BOOL)validateAction:(id)a3;
- (id)_simToolkitListItems;
- (id)newTopBar;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_selectListItem:(unint64_t)a3;
- (void)leftNavigationButtonPressed;
- (void)rightNavigationButtonPressed;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation STKListDisplayAlertViewController

- (BOOL)validateAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_simToolkitListItems
{
  v2 = [(STKBaseAlertViewController *)self sessionAction];
  v3 = [v2 sessionData];
  v4 = [v3 listItems];

  return v4;
}

- (void)_selectListItem:(unint64_t)a3
{
  v4 = [(STKBaseAlertViewController *)self sessionAction];
  [v4 sendSuccessWithSelectedItemIndex:a3];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = STKListDisplayAlertViewController;
  [(STKBaseAlertViewController *)&v24 viewDidLoad];
  v3 = [(STKListDisplayAlertViewController *)self view];
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
  [v3 addSubview:self->_table];
  v23 = [(UITableView *)self->_table widthAnchor];
  v22 = [v3 widthAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v25[0] = v21;
  v20 = [(UITableView *)self->_table centerXAnchor];
  v18 = v3;
  v19 = [v3 centerXAnchor];
  v8 = [v20 constraintEqualToAnchor:v19];
  v25[1] = v8;
  v9 = [(UITableView *)self->_table topAnchor];
  v10 = [(STKBaseAlertViewController *)self topBar];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[2] = v12;
  v13 = [(UITableView *)self->_table bottomAnchor];
  v14 = [v3 safeAreaLayoutGuide];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)leftNavigationButtonPressed
{
  v3 = [(STKBaseAlertViewController *)self sessionAction];
  [v3 sendResponse:4];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)rightNavigationButtonPressed
{
  v3 = [(STKBaseAlertViewController *)self sessionAction];
  [v3 sendResponse:1];

  [(STKBaseAlertViewController *)self dismiss];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(STKListDisplayAlertViewController *)self _simToolkitListItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"name"];
  v7 = [(STKListDisplayAlertViewController *)self _simToolkitListItems];
  v8 = [v5 row];

  v9 = [v7 objectAtIndex:v8];

  if ([v9 isSelected])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v6 setAccessoryType:v10];
  v11 = [v6 textLabel];
  [v11 setLineBreakMode:0];

  v12 = [v6 textLabel];
  [v12 setNumberOfLines:0];

  v13 = [v6 textLabel];
  v14 = [v9 text];
  [v13 setText:v14];

  v15 = [v6 textLabel];
  [v15 setTextAlignment:1];

  v16 = [v6 textLabel];
  v17 = +[UIColor whiteColor];
  [v16 setTextColor:v17];

  v18 = [v6 textLabel];
  [v18 setOpaque:0];

  v19 = [v6 textLabel];
  v20 = +[UIColor clearColor];
  [v19 setBackgroundColor:v20];

  [v6 setOpaque:0];
  v21 = +[UIColor clearColor];
  [v6 setBackgroundColor:v21];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(UITableView *)self->_table indexPathForSelectedRow:a3];
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

- (BOOL)navigationBar:(id)a3 shouldPopItem:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    [(STKListDisplayAlertViewController *)self performSelector:"leftNavigationButtonPressed" withObject:0];
  }

  return 0;
}

@end
@interface AXBuddySettingsMenuViewController
- (void)donePressed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AXBuddySettingsMenuViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = AXBuddySettingsMenuViewController;
  [(AXBuddySettingsMenuViewController *)&v14 viewDidLoad];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"donePressed"];
  navigationItem = [(AXBuddySettingsMenuViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v5 = objc_opt_new();
  tableController = self->_tableController;
  self->_tableController = v5;

  tableView = [(AXBuddySettingsMenuTableViewController *)self->_tableController tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [tableView setDelegate:self];
  [(AXBuddySettingsMenuViewController *)self setTableView:tableView];
  tableView2 = [(AXBuddySettingsMenuViewController *)self tableView];
  heightAnchor = [tableView2 heightAnchor];
  tableView3 = [(AXBuddySettingsMenuViewController *)self tableView];
  [tableView3 contentSize];
  v12 = [heightAnchor constraintEqualToConstant:v11];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v12;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
}

- (void)viewDidLayoutSubviews
{
  tableView = [(AXBuddySettingsMenuViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  tableViewHeight = self->_tableViewHeight;

  if (v5 != tableViewHeight)
  {
    tableView2 = [(AXBuddySettingsMenuViewController *)self tableView];
    [tableView2 contentSize];
    self->_tableViewHeight = v8;

    [(NSLayoutConstraint *)self->_tableHeightAnchor setConstant:self->_tableViewHeight];
  }

  v9.receiver = self;
  v9.super_class = AXBuddySettingsMenuViewController;
  [(AXBuddySettingsMenuViewController *)&v9 viewDidLayoutSubviews];
}

- (void)donePressed
{
  navigationController = [(AXBuddySettingsMenuViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  tableController = self->_tableController;
  pathCopy = path;
  tableView = [(AXBuddySettingsMenuTableViewController *)tableController tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  v9 = [(AXBuddySettingsBaseTableController *)self->_tableController viewControllerForIndexPath:pathCopy];

  if (v9)
  {
    navigationController = [(AXBuddySettingsMenuViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }
}

@end
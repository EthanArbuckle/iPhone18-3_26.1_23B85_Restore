@interface AXBuddySettingsMenuViewController
- (void)donePressed;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v4 = [(AXBuddySettingsMenuViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = objc_opt_new();
  tableController = self->_tableController;
  self->_tableController = v5;

  v7 = [(AXBuddySettingsMenuTableViewController *)self->_tableController tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setDelegate:self];
  [(AXBuddySettingsMenuViewController *)self setTableView:v7];
  v8 = [(AXBuddySettingsMenuViewController *)self tableView];
  v9 = [v8 heightAnchor];
  v10 = [(AXBuddySettingsMenuViewController *)self tableView];
  [v10 contentSize];
  v12 = [v9 constraintEqualToConstant:v11];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v12;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(AXBuddySettingsMenuViewController *)self tableView];
  [v3 contentSize];
  v5 = v4;
  tableViewHeight = self->_tableViewHeight;

  if (v5 != tableViewHeight)
  {
    v7 = [(AXBuddySettingsMenuViewController *)self tableView];
    [v7 contentSize];
    self->_tableViewHeight = v8;

    [(NSLayoutConstraint *)self->_tableHeightAnchor setConstant:self->_tableViewHeight];
  }

  v9.receiver = self;
  v9.super_class = AXBuddySettingsMenuViewController;
  [(AXBuddySettingsMenuViewController *)&v9 viewDidLayoutSubviews];
}

- (void)donePressed
{
  v2 = [(AXBuddySettingsMenuViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  tableController = self->_tableController;
  v6 = a4;
  v7 = [(AXBuddySettingsMenuTableViewController *)tableController tableView];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v9 = [(AXBuddySettingsBaseTableController *)self->_tableController viewControllerForIndexPath:v6];

  if (v9)
  {
    v8 = [(AXBuddySettingsMenuViewController *)self navigationController];
    [v8 pushViewController:v9 animated:1];
  }
}

@end
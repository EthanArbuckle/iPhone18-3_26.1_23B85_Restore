@interface HSUserListViewController
- (BOOL)_isUserListEmpty;
- (HMHome)home;
- (HSUserListViewController)init;
- (HSUserListViewControllerDelegate)delegate;
- (void)_doneTapped;
- (void)_updateEditButton;
- (void)managerDidCancelInvite:(id)a3 error:(id)a4;
- (void)managerDidDismissWithError:(id)a3;
- (void)managerDidRemoveUser:(id)a3 error:(id)a4;
- (void)managerDidSendInvitations:(id)a3;
- (void)setHome:(id)a3;
- (void)updateHome:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSUserListViewController

- (HSUserListViewController)init
{
  v8.receiver = self;
  v8.super_class = HSUserListViewController;
  v2 = [(HSUserListViewController *)&v8 initWithStyle:1];
  if (v2)
  {
    v3 = [HUUserListTableManager alloc];
    v4 = [(HSUserListViewController *)v2 tableView];
    v5 = [v3 initWithTableView:v4 viewController:v2];
    tableViewManager = v2->_tableViewManager;
    v2->_tableViewManager = v5;

    [(HUUserListTableManager *)v2->_tableViewManager setDelegate:v2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSUserListViewController;
  [(HSUserListViewController *)&v5 viewDidLoad];
  [(HSUserListViewController *)self setEdgesForExtendedLayout:0];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneTapped"];
  v4 = [(HSUserListViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];
}

- (HMHome)home
{
  v2 = [(HSUserListViewController *)self tableViewManager];
  v3 = [v2 home];

  return v3;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  v5 = [(HSUserListViewController *)self tableViewManager];
  [v5 setHome:v4];

  v7 = [v4 name];

  if (v7)
  {
    [(HSUserListViewController *)self setTitle:v7];
  }

  else
  {
    v6 = sub_100063A44(@"HSUserManagementSharingTitle");
    [(HSUserListViewController *)self setTitle:v6];
  }
}

- (void)updateHome:(id)a3
{
  [(HSUserListViewController *)self setHome:a3];

  [(HSUserListViewController *)self _updateEditButton];
}

- (void)managerDidDismissWithError:(id)a3
{
  v4 = a3;
  v5 = [(HSUserListViewController *)self delegate];
  [v5 controllerDidDismissWithError:v4];
}

- (void)managerDidSendInvitations:(id)a3
{
  v4 = a3;
  v5 = [(HSUserListViewController *)self delegate];
  [v5 controllerDidSendInvitations:v4];
}

- (void)managerDidRemoveUser:(id)a3 error:(id)a4
{
  if ([(HSUserListViewController *)self _isUserListEmpty:a3]&& [(HSUserListViewController *)self isEditing])
  {

    [(HSUserListViewController *)self setEditing:0 animated:1];
  }
}

- (void)managerDidCancelInvite:(id)a3 error:(id)a4
{
  if ([(HSUserListViewController *)self _isUserListEmpty:a3]&& [(HSUserListViewController *)self isEditing])
  {

    [(HSUserListViewController *)self setEditing:0 animated:1];
  }
}

- (void)_doneTapped
{
  v2 = [(HSUserListViewController *)self delegate];
  [v2 controllerDidDismissWithError:0];
}

- (BOOL)_isUserListEmpty
{
  v3 = [(HSUserListViewController *)self tableViewManager];
  v4 = [v3 users];
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HSUserListViewController *)self tableViewManager];
    v7 = [v6 invitations];
    v5 = [v7 count] == 0;
  }

  return v5;
}

- (void)_updateEditButton
{
  v4 = [(HSUserListViewController *)self navigationItem];
  if ([(HSUserListViewController *)self _isUserListEmpty])
  {
    [v4 setRightBarButtonItem:0 animated:1];
  }

  else
  {
    v3 = [(HSUserListViewController *)self editButtonItem];
    [v4 setRightBarButtonItem:v3 animated:1];
  }
}

- (HSUserListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
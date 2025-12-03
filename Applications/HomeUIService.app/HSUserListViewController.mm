@interface HSUserListViewController
- (BOOL)_isUserListEmpty;
- (HMHome)home;
- (HSUserListViewController)init;
- (HSUserListViewControllerDelegate)delegate;
- (void)_doneTapped;
- (void)_updateEditButton;
- (void)managerDidCancelInvite:(id)invite error:(id)error;
- (void)managerDidDismissWithError:(id)error;
- (void)managerDidRemoveUser:(id)user error:(id)error;
- (void)managerDidSendInvitations:(id)invitations;
- (void)setHome:(id)home;
- (void)updateHome:(id)home;
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
    tableView = [(HSUserListViewController *)v2 tableView];
    v5 = [v3 initWithTableView:tableView viewController:v2];
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
  navigationItem = [(HSUserListViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];
}

- (HMHome)home
{
  tableViewManager = [(HSUserListViewController *)self tableViewManager];
  home = [tableViewManager home];

  return home;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  tableViewManager = [(HSUserListViewController *)self tableViewManager];
  [tableViewManager setHome:homeCopy];

  name = [homeCopy name];

  if (name)
  {
    [(HSUserListViewController *)self setTitle:name];
  }

  else
  {
    v6 = sub_100063A44(@"HSUserManagementSharingTitle");
    [(HSUserListViewController *)self setTitle:v6];
  }
}

- (void)updateHome:(id)home
{
  [(HSUserListViewController *)self setHome:home];

  [(HSUserListViewController *)self _updateEditButton];
}

- (void)managerDidDismissWithError:(id)error
{
  errorCopy = error;
  delegate = [(HSUserListViewController *)self delegate];
  [delegate controllerDidDismissWithError:errorCopy];
}

- (void)managerDidSendInvitations:(id)invitations
{
  invitationsCopy = invitations;
  delegate = [(HSUserListViewController *)self delegate];
  [delegate controllerDidSendInvitations:invitationsCopy];
}

- (void)managerDidRemoveUser:(id)user error:(id)error
{
  if ([(HSUserListViewController *)self _isUserListEmpty:user]&& [(HSUserListViewController *)self isEditing])
  {

    [(HSUserListViewController *)self setEditing:0 animated:1];
  }
}

- (void)managerDidCancelInvite:(id)invite error:(id)error
{
  if ([(HSUserListViewController *)self _isUserListEmpty:invite]&& [(HSUserListViewController *)self isEditing])
  {

    [(HSUserListViewController *)self setEditing:0 animated:1];
  }
}

- (void)_doneTapped
{
  delegate = [(HSUserListViewController *)self delegate];
  [delegate controllerDidDismissWithError:0];
}

- (BOOL)_isUserListEmpty
{
  tableViewManager = [(HSUserListViewController *)self tableViewManager];
  users = [tableViewManager users];
  if ([users count])
  {
    v5 = 0;
  }

  else
  {
    tableViewManager2 = [(HSUserListViewController *)self tableViewManager];
    invitations = [tableViewManager2 invitations];
    v5 = [invitations count] == 0;
  }

  return v5;
}

- (void)_updateEditButton
{
  navigationItem = [(HSUserListViewController *)self navigationItem];
  if ([(HSUserListViewController *)self _isUserListEmpty])
  {
    [navigationItem setRightBarButtonItem:0 animated:1];
  }

  else
  {
    editButtonItem = [(HSUserListViewController *)self editButtonItem];
    [navigationItem setRightBarButtonItem:editButtonItem animated:1];
  }
}

- (HSUserListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
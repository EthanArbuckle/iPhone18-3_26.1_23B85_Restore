@interface NCBSTinkerAddContactsViewController
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerAddContactsViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_addContacts;
- (void)alternateButtonPressed:(id)pressed;
- (void)dismissPresentedViewController:(id)controller;
- (void)presentViewController:(id)controller;
- (void)presentedViewControllerDidCancel:(id)cancel;
- (void)setMiniFlowDelegate:(id)delegate;
@end

@implementation NCBSTinkerAddContactsViewController

- (NCBSTinkerAddContactsViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSTinkerAddContactsViewController;
  v2 = [(NCBSTinkerAddContactsViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSTinkerAddContactsViewController *)v2 setStyle:10];
  }

  return v3;
}

- (void)setMiniFlowDelegate:(id)delegate
{
  objc_storeWeak(&self->_miniFlowDelegate, delegate);
  miniFlowDelegate = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  familyMemberContactsStatusAtStartOfFlow = [miniFlowDelegate familyMemberContactsStatusAtStartOfFlow];

  if (familyMemberContactsStatusAtStartOfFlow == 3)
  {
    v6 = 10;
  }

  else
  {
    v6 = 2;
  }

  [(NCBSTinkerAddContactsViewController *)self setStyle:v6];
}

- (id)titleString
{
  miniFlowDelegate = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_ADD_TITLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName];

  return v6;
}

- (id)detailString
{
  miniFlowDelegate = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_ADD_DETAIL" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName, familyMemberFirstName];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle();
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_ADD_BUTTON_ADD" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle();
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_ADD_BUTTON_LATER" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (void)alternateButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)_addContacts
{
  miniFlowDelegate = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  familyMember = [miniFlowDelegate familyMember];

  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[NCBSTinkerAddContactsViewController _addContacts]";
    v10 = 2112;
    v11 = familyMember;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@", &v8, 0x16u);
  }

  v6 = [[CNUIFamilyMemberContactsController alloc] initWithFamilyMember:familyMember familyMemberContactsPresentation:self];
  [(NCBSTinkerAddContactsViewController *)self setFamilyMemberContactsController:v6];

  familyMemberContactsController = [(NCBSTinkerAddContactsViewController *)self familyMemberContactsController];
  [familyMemberContactsController performInteraction:2];
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136446466;
    v10 = "[NCBSTinkerAddContactsViewController presentViewController:]";
    v11 = 2112;
    v12 = controllerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %@", &v9, 0x16u);
  }

  view = [(NCBSTinkerAddContactsViewController *)self view];
  tintColor = [view tintColor];
  view2 = [controllerCopy view];
  [view2 setTintColor:tintColor];

  [(NCBSTinkerAddContactsViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)dismissPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    presentedViewController = [(NCBSTinkerAddContactsViewController *)self presentedViewController];
    v9 = 136446722;
    v10 = "[NCBSTinkerAddContactsViewController dismissPresentedViewController:]";
    v11 = 2114;
    v12 = controllerCopy;
    v13 = 2114;
    v14 = presentedViewController;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@; presentedViewController: %{public}@", &v9, 0x20u);
  }

  presentedViewController2 = [(NCBSTinkerAddContactsViewController *)self presentedViewController];

  if (presentedViewController2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(NCBSTinkerAddContactsViewController *)self dismissViewControllerAnimated:1 completion:0];
      miniFlowDelegate = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
      [miniFlowDelegate miniFlowStepComplete:self];
    }
  }
}

- (void)presentedViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    presentedViewController = [(NCBSTinkerAddContactsViewController *)self presentedViewController];
    v8 = 136446722;
    v9 = "[NCBSTinkerAddContactsViewController presentedViewControllerDidCancel:]";
    v10 = 2114;
    v11 = cancelCopy;
    v12 = 2114;
    v13 = presentedViewController;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@; presentedViewController: %{public}@", &v8, 0x20u);
  }

  presentedViewController2 = [(NCBSTinkerAddContactsViewController *)self presentedViewController];

  if (presentedViewController2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(NCBSTinkerAddContactsViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_miniFlowDelegate);

  return WeakRetained;
}

@end
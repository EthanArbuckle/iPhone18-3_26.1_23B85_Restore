@interface NCBSTinkerAddContactsViewController
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerAddContactsViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_addContacts;
- (void)alternateButtonPressed:(id)a3;
- (void)dismissPresentedViewController:(id)a3;
- (void)presentViewController:(id)a3;
- (void)presentedViewControllerDidCancel:(id)a3;
- (void)setMiniFlowDelegate:(id)a3;
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

- (void)setMiniFlowDelegate:(id)a3
{
  objc_storeWeak(&self->_miniFlowDelegate, a3);
  v4 = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  v5 = [v4 familyMemberContactsStatusAtStartOfFlow];

  if (v5 == 3)
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
  v2 = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  v3 = [v2 familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_ADD_TITLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

- (id)detailString
{
  v2 = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  v3 = [v2 familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_ADD_DETAIL" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, v3, v3];

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

- (void)alternateButtonPressed:(id)a3
{
  v4 = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (void)_addContacts
{
  v3 = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
  v4 = [v3 familyMember];

  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[NCBSTinkerAddContactsViewController _addContacts]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@", &v8, 0x16u);
  }

  v6 = [[CNUIFamilyMemberContactsController alloc] initWithFamilyMember:v4 familyMemberContactsPresentation:self];
  [(NCBSTinkerAddContactsViewController *)self setFamilyMemberContactsController:v6];

  v7 = [(NCBSTinkerAddContactsViewController *)self familyMemberContactsController];
  [v7 performInteraction:2];
}

- (void)presentViewController:(id)a3
{
  v4 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136446466;
    v10 = "[NCBSTinkerAddContactsViewController presentViewController:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %@", &v9, 0x16u);
  }

  v6 = [(NCBSTinkerAddContactsViewController *)self view];
  v7 = [v6 tintColor];
  v8 = [v4 view];
  [v8 setTintColor:v7];

  [(NCBSTinkerAddContactsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)dismissPresentedViewController:(id)a3
{
  v4 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(NCBSTinkerAddContactsViewController *)self presentedViewController];
    v9 = 136446722;
    v10 = "[NCBSTinkerAddContactsViewController dismissPresentedViewController:]";
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@; presentedViewController: %{public}@", &v9, 0x20u);
  }

  v7 = [(NCBSTinkerAddContactsViewController *)self presentedViewController];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(NCBSTinkerAddContactsViewController *)self dismissViewControllerAnimated:1 completion:0];
      v8 = [(NCBSTinkerAddContactsViewController *)self miniFlowDelegate];
      [v8 miniFlowStepComplete:self];
    }
  }
}

- (void)presentedViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(NCBSTinkerAddContactsViewController *)self presentedViewController];
    v8 = 136446722;
    v9 = "[NCBSTinkerAddContactsViewController presentedViewControllerDidCancel:]";
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@; presentedViewController: %{public}@", &v8, 0x20u);
  }

  v7 = [(NCBSTinkerAddContactsViewController *)self presentedViewController];

  if (v7)
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
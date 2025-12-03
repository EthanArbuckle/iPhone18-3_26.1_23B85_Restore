@interface NCBSTinkerRequestManagementViewController
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerRequestManagementViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_notifyUserRequestWasSentThenProceed;
- (void)_requestToManageContacts;
- (void)alternateButtonPressed:(id)pressed;
@end

@implementation NCBSTinkerRequestManagementViewController

- (NCBSTinkerRequestManagementViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSTinkerRequestManagementViewController;
  v2 = [(NCBSTinkerRequestManagementViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSTinkerRequestManagementViewController *)v2 setStyle:10];
  }

  return v3;
}

- (id)titleString
{
  miniFlowDelegate = [(NCBSTinkerRequestManagementViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_REQUEST_TITLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName];

  return v6;
}

- (id)detailString
{
  miniFlowDelegate = [(NCBSTinkerRequestManagementViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_REQUEST_DETAIL" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName, familyMemberFirstName];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle();
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_REQUEST_BUTTON_ASK" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle();
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_REQUEST_BUTTON_LATER" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (void)alternateButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSTinkerRequestManagementViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)_requestToManageContacts
{
  v3 = NCBS_Tinker_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "[NCBSTinkerRequestManagementViewController _requestToManageContacts]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s - making request", buf, 0xCu);
  }

  miniFlowDelegate = [(NCBSTinkerRequestManagementViewController *)self miniFlowDelegate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C354;
  v5[3] = &unk_1C540;
  v5[4] = self;
  [miniFlowDelegate requestContactsManagementWithCompletionHandler:v5];
}

- (void)_notifyUserRequestWasSentThenProceed
{
  miniFlowDelegate = [(NCBSTinkerRequestManagementViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v5 = NanoContactsBridgeSetupBundle();
  v6 = [v5 localizedStringForKey:@"TK_CONTACTS_REQUESTED_MESSAGE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v7 = [NSString stringWithFormat:v6, familyMemberFirstName];

  v8 = NanoContactsBridgeSetupBundle();
  v9 = [v8 localizedStringForKey:@"TK_CONTACTS_REQUESTED_TITLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:v7 preferredStyle:1];

  v11 = NanoContactsBridgeSetupBundle();
  v12 = [v11 localizedStringForKey:@"TK_CONTACTS_REQUESTED_BUTTON_OK" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_C660;
  v14[3] = &unk_1C8C0;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v14];
  [v10 addAction:v13];

  [(NCBSTinkerRequestManagementViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
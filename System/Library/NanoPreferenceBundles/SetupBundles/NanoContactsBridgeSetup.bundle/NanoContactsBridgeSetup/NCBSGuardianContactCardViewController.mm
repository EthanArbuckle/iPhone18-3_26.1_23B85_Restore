@interface NCBSGuardianContactCardViewController
- (BOOL)hasMeCard;
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSGuardianContactCardViewController)init;
- (id)_newMeContactForGuardian:(id)guardian;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)guardianContactStore;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_setGuardianMeContact:(id)contact;
- (void)_visitMeCard;
- (void)alternateButtonPressed:(id)pressed;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation NCBSGuardianContactCardViewController

- (NCBSGuardianContactCardViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSGuardianContactCardViewController;
  v2 = [(NCBSGuardianContactCardViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSGuardianContactCardViewController *)v2 setStyle:10];
  }

  return v3;
}

- (id)titleString
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v3 = NanoContactsBridgeSetupBundle();
  v4 = v3;
  if (hasMeCard)
  {
    v5 = @"TK_CONTACTS_GUARDIAN_ME_TITLE_UPDATE";
  }

  else
  {
    v5 = @"TK_CONTACTS_GUARDIAN_ME_TITLE_CREATE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v6;
}

- (id)detailString
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v4 = NanoContactsBridgeSetupBundle();
  v5 = v4;
  if (hasMeCard)
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_DETAIL_UPDATE";
  }

  else
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_DETAIL_CREATE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v10 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@%@" error:0, familyMemberFirstName, familyMemberFirstName];

  return v10;
}

- (id)suggestedButtonTitle
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v3 = NanoContactsBridgeSetupBundle();
  v4 = v3;
  if (hasMeCard)
  {
    v5 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_UPDATE";
  }

  else
  {
    v5 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_CREATE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v6;
}

- (id)alternateButtonTitle
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v3 = NanoContactsBridgeSetupBundle();
  v4 = v3;
  if (hasMeCard)
  {
    v5 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_SKIP";
  }

  else
  {
    v5 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_LATER";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v6;
}

- (void)alternateButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (id)guardianContactStore
{
  guardianContactStore = self->_guardianContactStore;
  if (!guardianContactStore)
  {
    v4 = objc_alloc_init(CNContactStore);
    v5 = self->_guardianContactStore;
    self->_guardianContactStore = v4;

    v6 = self->_guardianContactStore;
    if (v6)
    {
      v7 = +[CNContactViewController descriptorForRequiredKeys];
      v23 = v7;
      v8 = [NSArray arrayWithObjects:&v23 count:1];
      v14 = 0;
      v9 = [(CNContactStore *)v6 _ios_meContactWithKeysToFetch:v8 error:&v14];
      v6 = v14;

      self->_hasMeCard = v9 != 0;
    }

    v10 = NCBS_Tinker_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_guardianContactStore;
      hasMeCard = self->_hasMeCard;
      *buf = 136446978;
      v16 = "[NCBSGuardianContactCardViewController guardianContactStore]";
      v17 = 2112;
      v18 = v11;
      v19 = 1024;
      v20 = hasMeCard;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - OPENED guardianContactStore: %@, hasMeCard: %d (error: %{public}@)", buf, 0x26u);
    }

    guardianContactStore = self->_guardianContactStore;
  }

  return guardianContactStore;
}

- (BOOL)hasMeCard
{
  if (self->_hasMeCard)
  {
    return 1;
  }

  else if (self->_guardianContactStore)
  {
    return 0;
  }

  else
  {
    guardianContactStore = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
    return self->_hasMeCard;
  }
}

- (id)_newMeContactForGuardian:(id)guardian
{
  guardianCopy = guardian;
  v4 = objc_opt_new();
  firstName = [guardianCopy firstName];
  [v4 setGivenName:firstName];

  lastName = [guardianCopy lastName];
  [v4 setFamilyName:lastName];

  appleID = [guardianCopy appleID];

  if (appleID)
  {
    v8 = [CNLabeledValue labeledValueWithLabel:CNLabelEmailiCloud value:appleID];
    v11 = v8;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [v4 setEmailAddresses:v9];
  }

  return v4;
}

- (void)_visitMeCard
{
  miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
  setupGuardian = [miniFlowDelegate setupGuardian];

  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    guardianContactStore = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
    *buf = 136446722;
    v23 = "[NCBSGuardianContactCardViewController _visitMeCard]";
    v24 = 2112;
    v25 = guardianContactStore;
    v26 = 2112;
    v27 = setupGuardian;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - guardianContactStore: %@, guardianFamilyMember: %@", buf, 0x20u);
  }

  guardianContactStore2 = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
  v8 = +[CNContactViewController descriptorForRequiredKeys];
  v21 = v8;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v20 = 0;
  v10 = [guardianContactStore2 _ios_meContactWithKeysToFetch:v9 error:&v20];
  v11 = v20;

  v12 = NCBS_Tinker_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "[NCBSGuardianContactCardViewController _visitMeCard]";
    v24 = 2112;
    v25 = v10;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - _ios_meContactWithKeysToFetch result: %@, error: %{public}@", buf, 0x20u);
  }

  if (v10)
  {
    v13 = [CNContactViewController viewControllerForUpdatingContact:v10 withPropertiesFromContact:0];
  }

  else
  {
    v14 = [(NCBSGuardianContactCardViewController *)self _newMeContactForGuardian:setupGuardian];
    v13 = [CNContactViewController viewControllerForNewContact:v14];
  }

  guardianContactStore3 = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
  [v13 setContactStore:guardianContactStore3];

  [v13 setDisplayMode:2];
  [v13 setDelegate:self];
  v16 = [[UINavigationController alloc] initWithRootViewController:v13];
  view = [(NCBSGuardianContactCardViewController *)self view];
  tintColor = [view tintColor];
  view2 = [v16 view];
  [view2 setTintColor:tintColor];

  [(NCBSGuardianContactCardViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)_setGuardianMeContact:(id)contact
{
  contactCopy = contact;
  guardianContactStore = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
  v11 = 0;
  v6 = [guardianContactStore setMeContact:contactCopy error:&v11];
  v7 = v11;

  v8 = self->_hasMeCard | v6;
  self->_hasMeCard |= v6;
  if (v8)
  {
    miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
    [miniFlowDelegate setSetupGuardianHasContactsToDonate:1];
  }

  v10 = NCBS_Tinker_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v13 = "[NCBSGuardianContactCardViewController _setGuardianMeContact:]";
    v14 = 1024;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2112;
    v19 = contactCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact result: %d, error: %{public}@, contact: %@", buf, 0x26u);
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  [(NCBSGuardianContactCardViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (contactCopy)
  {
    [(NCBSGuardianContactCardViewController *)self _setGuardianMeContact:contactCopy];
    miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
    [miniFlowDelegate miniFlowStepComplete:self];
  }

  else
  {
    v7 = NCBS_Tinker_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[NCBSGuardianContactCardViewController contactViewController:didCompleteWithContact:]";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact canceled (no contact)", &v8, 0xCu);
    }
  }
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
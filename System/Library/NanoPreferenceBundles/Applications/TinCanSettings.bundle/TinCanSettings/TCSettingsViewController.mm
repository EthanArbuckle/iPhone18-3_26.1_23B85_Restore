@interface TCSettingsViewController
- (BOOL)_contactIsUnknown:(id)unknown;
- (BOOL)_hasWalkieTalkieContacts;
- (BOOL)_specifierAtIndexPathIsContact:(id)contact;
- (TCSettingsViewController)init;
- (id)_allContactSpecifiers;
- (id)applicationGroupSpecifiers;
- (id)localizedPaneTitle;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_displayContactForSpecifier:(id)specifier;
- (void)_reload;
- (void)_removeContactFromSpecifier:(id)specifier;
- (void)_updateEditDoneButton;
- (void)_updateFooterTextForAllowlistGroupSpecifier:(id)specifier;
- (void)_updateForEditingState;
- (void)dealloc;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TCSettingsViewController

- (TCSettingsViewController)init
{
  v14.receiver = self;
  v14.super_class = TCSettingsViewController;
  v2 = [(TCSettingsViewController *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = objc_opt_new();
    contactFormatter = v2->_contactFormatter;
    v2->_contactFormatter = v5;

    [(CNContactFormatter *)v2->_contactFormatter setStyle:0];
    [(CNContactFormatter *)v2->_contactFormatter setFallbackStyle:-1];
    v7 = [TCSContactsDataSource alloc];
    v8 = v2->_contactStore;
    v9 = objc_opt_new();
    v10 = [v7 initWithContactStore:v8 contacts:v9];
    contactsDataSource = v2->_contactsDataSource;
    v2->_contactsDataSource = v10;

    [(TCSContactsDataSource *)v2->_contactsDataSource setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_FDC, NSPersonNamePreferencesDidChangeNotification, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TCSettingsViewController;
  [(TCSettingsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TCSettingsViewController;
  [(TCSettingsViewController *)&v4 viewDidLoad];
  table = [(TCSettingsViewController *)self table];
  [table setAllowsSelectionDuringEditing:1];

  [(TCSettingsViewController *)self _updateEditDoneButton];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TINCAN_NAV_TITLE" value:&stru_82A8 table:0];

  return v3;
}

- (id)applicationGroupSpecifiers
{
  if ([(TCSettingsViewController *)self settingsMode]== &dword_0 + 1)
  {
    _allContactSpecifiers = 0;
  }

  else
  {
    _allContactSpecifiers = [(TCSettingsViewController *)self _allContactSpecifiers];
  }

  return _allContactSpecifiers;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  if ([(TCSettingsViewController *)self _specifierAtIndexPathIsContact:path])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"TINCAN_ALLOWLIST_REMOVE" value:&stru_82A8 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_editing)
  {
    if ([(TCSettingsViewController *)self _specifierAtIndexPathIsContact:pathCopy])
    {
      v8 = 0;
      goto LABEL_6;
    }

    [(TCSettingsViewController *)self _editDoneButtonTapped:self];
  }

  v8 = pathCopy;
LABEL_6:

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = [(TCSettingsViewController *)self specifierAtIndexPath:path];
    if (v7)
    {
      [(TCSettingsViewController *)self _removeContactFromSpecifier:v7];
    }

    _objc_release_x1();
  }
}

- (void)_reload
{
  [(TCSettingsViewController *)self reloadSpecifiers];
  if (![(TCSettingsViewController *)self _hasWalkieTalkieContacts])
  {
    self->_editing = 0;
  }

  [(TCSettingsViewController *)self _updateForEditingState];
}

- (id)_allContactSpecifiers
{
  v51 = [(TCSettingsViewController *)self loadSpecifiersFromPlistName:@"TinCanSettings" target:self];
  sortedContacts = [(TCSContactsDataSource *)self->_contactsDataSource sortedContacts];
  v4 = [sortedContacts copy];

  sortedInviters = [(TCSContactsDataSource *)self->_contactsDataSource sortedInviters];
  v6 = [sortedInviters copy];

  sortedInvitees = [(TCSContactsDataSource *)self->_contactsDataSource sortedInvitees];
  v8 = [sortedInvitees copy];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"GROUP_TITLE_FRIENDS" value:&stru_82A8 table:0];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:0 edit:0];
  friendsGroupSpecifier = self->_friendsGroupSpecifier;
  self->_friendsGroupSpecifier = v11;

  v47 = v6;
  v13 = [v6 count];
  if (v13)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"GROUP_TITLE_FRIENDS_INVITED_YOU" value:&stru_82A8 table:0];
    v14 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:0 edit:0];
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_invitersGroupSpecifier, v14);
  if (v13)
  {
  }

  v15 = [v8 count];
  if (v15)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"GROUP_TITLE_FRIENDS_YOU_INVITED" value:&stru_82A8 table:0];
    v16 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:0 edit:0];
  }

  else
  {
    v16 = 0;
  }

  v46 = v8;
  objc_storeStrong(&self->_inviteesGroupSpecifier, v16);
  if (v15)
  {
  }

  [(TCSettingsViewController *)self _updateFooterTextForAllowlistGroupSpecifier:self->_friendsGroupSpecifier];
  [v51 addObject:self->_friendsGroupSpecifier];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v17 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v61;
    v20 = PSEnabledKey;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v60 + 1) + 8 * i);
        v23 = [(CNContactFormatter *)self->_contactFormatter stringFromContact:v22];
        v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:2 edit:0];

        [v24 setButtonAction:"_displayContactForSpecifier:"];
        [v24 setUserInfo:v22];
        [v24 setProperty:&__kCFBooleanTrue forKey:v20];
        [v24 setProperty:&off_8430 forKey:@"TCSContactsDataSourceSectionType"];
        [v51 addObject:v24];
      }

      v18 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v18);
  }

  invitersGroupSpecifier = self->_invitersGroupSpecifier;
  if (invitersGroupSpecifier)
  {
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"GROUP_FOOTER_FRIENDS_INVITED_YOU" value:&stru_82A8 table:0];
    [(PSSpecifier *)invitersGroupSpecifier setProperty:v27 forKey:PSFooterTextGroupKey];

    [v51 addObject:self->_invitersGroupSpecifier];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = v47;
    v28 = [v48 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v57;
      v31 = PSEnabledKey;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(v48);
          }

          v33 = *(*(&v56 + 1) + 8 * j);
          v34 = [(CNContactFormatter *)self->_contactFormatter stringFromContact:v33];
          v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:0 cell:2 edit:0];

          [v35 setButtonAction:"_displayContactForSpecifier:"];
          [v35 setUserInfo:v33];
          [v35 setProperty:&__kCFBooleanTrue forKey:v31];
          [v35 setProperty:&off_8448 forKey:@"TCSContactsDataSourceSectionType"];
          [v51 addObject:v35];
        }

        v29 = [v48 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v29);
    }
  }

  if (self->_inviteesGroupSpecifier)
  {
    [v51 addObject:?];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v49 = v46;
    v36 = [v49 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v53;
      v39 = PSEnabledKey;
      do
      {
        for (k = 0; k != v37; k = k + 1)
        {
          if (*v53 != v38)
          {
            objc_enumerationMutation(v49);
          }

          v41 = *(*(&v52 + 1) + 8 * k);
          v42 = [(CNContactFormatter *)self->_contactFormatter stringFromContact:v41];
          v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:0 detail:0 cell:2 edit:0];

          [v43 setButtonAction:"_displayContactForSpecifier:"];
          [v43 setUserInfo:v41];
          [v43 setProperty:&__kCFBooleanTrue forKey:v39];
          [v43 setProperty:&off_8460 forKey:@"TCSContactsDataSourceSectionType"];
          [v51 addObject:v43];
        }

        v37 = [v49 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v37);
    }
  }

  v44 = [NSArray arrayWithArray:v51];

  return v44;
}

- (void)_updateEditDoneButton
{
  if ([(TCSettingsViewController *)self _hasWalkieTalkieContacts]&& [(TCSettingsViewController *)self settingsMode]!= &dword_0 + 1)
  {
    editing = self->_editing;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    if (editing)
    {
      v6 = @"TINCAN_ALLOWLIST_DONE";
    }

    else
    {
      v6 = @"TINCAN_ALLOWLIST_EDIT";
    }

    navigationItem2 = [v4 localizedStringForKey:v6 value:&stru_82A8 table:0];

    if (self->_editing)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = [[UIBarButtonItem alloc] initWithTitle:navigationItem2 style:v7 target:self action:"_editDoneButtonTapped:"];
    navigationItem = [(TCSettingsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }

  else
  {
    navigationItem2 = [(TCSettingsViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)_updateForEditingState
{
  [(TCSettingsViewController *)self _updateEditDoneButton];
  navigationItem = [(TCSettingsViewController *)self navigationItem];
  [navigationItem setHidesBackButton:self->_editing animated:1];

  table = [(TCSettingsViewController *)self table];
  [table setEditing:self->_editing animated:1];
}

- (BOOL)_specifierAtIndexPathIsContact:(id)contact
{
  v3 = [(TCSettingsViewController *)self specifierAtIndexPath:contact];
  userInfo = [v3 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_removeContactFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:@"TCSContactsDataSourceSectionType"];
  integerValue = [v5 integerValue];

  contactsDataSource = self->_contactsDataSource;
  userInfo = [specifierCopy userInfo];
  [(TCSContactsDataSource *)contactsDataSource removeContact:userInfo inSection:integerValue];

  [(TCSettingsViewController *)self removeSpecifier:specifierCopy animated:1];
  if (integerValue == &dword_0 + 2)
  {
    sortedInvitees = [(TCSContactsDataSource *)self->_contactsDataSource sortedInvitees];
    v13 = [sortedInvitees count];

    if (v13)
    {
      goto LABEL_8;
    }

    v11 = &OBJC_IVAR___TCSettingsViewController__inviteesGroupSpecifier;
    goto LABEL_7;
  }

  if (integerValue == &dword_0 + 1)
  {
    sortedInviters = [(TCSContactsDataSource *)self->_contactsDataSource sortedInviters];
    v10 = [sortedInviters count];

    if (!v10)
    {
      v11 = &OBJC_IVAR___TCSettingsViewController__invitersGroupSpecifier;
LABEL_7:
      [(TCSettingsViewController *)self removeSpecifier:*&self->BPSNotificationAppController_opaque[*v11] animated:1];
    }
  }

LABEL_8:
  if (![(TCSettingsViewController *)self _hasWalkieTalkieContacts])
  {
    self->_editing = 0;
    [(TCSettingsViewController *)self _updateFooterTextForAllowlistGroupSpecifier:self->_friendsGroupSpecifier];
    [(TCSettingsViewController *)self reloadSpecifier:self->_friendsGroupSpecifier];
  }

  [(TCSettingsViewController *)self _updateForEditingState];
}

- (BOOL)_contactIsUnknown:(id)unknown
{
  unknownCopy = unknown;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_displayContactForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  if ([(TCSettingsViewController *)self _contactIsUnknown:userInfo])
  {
    v5 = [CNContactViewController viewControllerForUnknownContact:userInfo];
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = +[CNContactViewController descriptorForRequiredKeys];
  v22 = v6;
  v7 = [NSArray arrayWithObjects:&v22 count:1];
  v8 = [userInfo areKeysAvailable:v7];

  if ((v8 & 1) == 0)
  {
    contactStore = [(TCSettingsViewController *)self contactStore];
    identifier = [userInfo identifier];
    v11 = +[CNContactViewController descriptorForRequiredKeys];
    v21 = v11;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v20 = 0;
    v13 = [contactStore unifiedContactWithIdentifier:identifier keysToFetch:v12 error:&v20];
    v14 = v20;

    if (v14)
    {
      _TCSInitializeLogging();
      v15 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_2700(v15, v14);
      }
    }

    userInfo = v13;
  }

  if (userInfo)
  {
    v5 = [CNContactViewController viewControllerForContact:userInfo];
    [v5 setAllowsEditing:0];
    if (v5)
    {
LABEL_11:
      contactStore2 = [(TCSettingsViewController *)self contactStore];
      [v5 setContactStore:contactStore2];

      v17 = BPSBridgeTintColor();
      view = [v5 view];
      [view setTintColor:v17];

      rootController = [(TCSettingsViewController *)self rootController];
      [rootController pushViewController:v5 animated:1];
    }
  }

LABEL_12:
}

- (BOOL)_hasWalkieTalkieContacts
{
  sortedContacts = [(TCSContactsDataSource *)self->_contactsDataSource sortedContacts];
  v4 = [sortedContacts count];
  sortedInviters = [(TCSContactsDataSource *)self->_contactsDataSource sortedInviters];
  v6 = &v4[[sortedInviters count]];
  sortedInvitees = [(TCSContactsDataSource *)self->_contactsDataSource sortedInvitees];
  LOBYTE(v6) = [sortedInvitees count] + v6 != 0;

  return v6;
}

- (void)_updateFooterTextForAllowlistGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  sortedContacts = [(TCSContactsDataSource *)self->_contactsDataSource sortedContacts];
  v6 = [sortedContacts count];

  if (v6)
  {
    [specifierCopy removePropertyForKey:PSFooterTextGroupKey];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    contactStore = self->_contactStore;
    v8 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_25B8;
    v11[3] = &unk_8208;
    v11[4] = &v12;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v8 error:0 usingBlock:v11];

    if (*(v13 + 24) == 1)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      [v9 localizedStringForKey:@"TINCAN_ALLOWLIST_NO_CONTACTS" value:&stru_82A8 table:0];
    }

    else
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      [v9 localizedStringForKey:@"TINCAN_ALLOWLIST_NO_CONTACTS_ON_PHONE" value:&stru_82A8 table:0];
    }
    v10 = ;

    [specifierCopy setProperty:v10 forKey:PSFooterTextGroupKey];
    _Block_object_dispose(&v12, 8);
  }
}

@end
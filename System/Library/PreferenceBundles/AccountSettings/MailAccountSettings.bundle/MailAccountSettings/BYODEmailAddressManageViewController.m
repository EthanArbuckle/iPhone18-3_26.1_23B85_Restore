@interface BYODEmailAddressManageViewController
+ (id)log;
- (BOOL)_showCreateEmailButton;
- (BYODEmailAddressManageViewController)initWithAccount:(id)a3 domain:(id)a4;
- (id)_getCreateEmailSpecifier;
- (id)_getInviteSomeoneElseSpecifier;
- (id)_getMemberGroupSpecifier:(id)a3;
- (id)_getMemberListSpecifier;
- (id)_getOwnerEmailListSpecifier;
- (id)_getOwnerEmailSpecifier;
- (id)_getOwnerSpecifier;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_createEmailAddressButtonTapped:(id)a3;
- (void)_deleteEmailAlert:(id)a3;
- (void)_deleteEmailFromServer:(id)a3;
- (void)_footerLinkTapped:(id)a3;
- (void)_inviteSomeoneElseTapped:(id)a3;
- (void)_memberInfoWasTapped:(id)a3;
- (void)_postNotificationForDomainData:(id)a3;
- (void)_refreshDomainResultNotification:(id)a3;
- (void)_showErrorAlert;
- (void)chooseContactController:(id)a3 didSelectContact:(id)a4;
- (void)dealloc;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation BYODEmailAddressManageViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_46A10;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6540 != -1)
  {
    dispatch_once(&qword_D6540, block);
  }

  v2 = qword_D6538;

  return v2;
}

- (BYODEmailAddressManageViewController)initWithAccount:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BYODEmailAddressManageViewController;
  v9 = [(BYODEmailAddressManageViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggedInUserAccount, a3);
    objc_storeStrong(&v10->_domainResult, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BYODEmailAddressManageViewController;
  [(BYODEmailAddressManageViewController *)&v7 viewDidLoad];
  v3 = [(BYODEmailAddressManageViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_EMAIL_ADDRESSES_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v3 setTitle:v5];

  v6 = [(BYODEmailAddressManageViewController *)self navigationItem];
  [v6 setHidesBackButton:0];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(BYODEmailAddressManageViewController *)self _getOwnerEmailListSpecifier];
  [v3 addObject:v4];

  v5 = [(BYODEmailAddressManageViewController *)self _getOwnerSpecifier];
  [v3 addObjectsFromArray:v5];

  v6 = [(BYODEmailAddressManageViewController *)self _getOwnerEmailSpecifier];
  [v3 addObjectsFromArray:v6];

  if ([(BYODEmailAddressManageViewController *)self _showCreateEmailButton])
  {
    v7 = [(BYODEmailAddressManageViewController *)self _getCreateEmailSpecifier];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [(BYODGetDomainResult *)self->_domainResult domain];
  if (![v8 isOwner])
  {
    goto LABEL_11;
  }

  v9 = [(BYODGetDomainResult *)self->_domainResult domain];
  v10 = [v9 isShared];

  if (v10)
  {
    v8 = [(BYODEmailAddressManageViewController *)self _getMemberListSpecifier];
    if ([v8 count])
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"BYOD_OTHER_MEMBER_EMAIL_ADDRESSES" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    else
    {
      v12 = &stru_B9FC8;
    }

    v13 = [(BYODEmailAddressManageViewController *)self _getMemberGroupSpecifier:v12];
    [v3 addObjectsFromArray:v13];

    [v3 addObjectsFromArray:v8];
    v14 = [(BYODGetDomainResult *)self->_domainResult members];
    v15 = [v14 count];
    v16 = [(BYODGetDomainResult *)self->_domainResult maxMembersPerDomain];

    if (v15 < v16)
    {
      v17 = [(BYODEmailAddressManageViewController *)self _getInviteSomeoneElseSpecifier];
      [v3 addObjectsFromArray:v17];
    }

LABEL_11:
  }

  v18 = [v3 copy];
  v19 = OBJC_IVAR___PSListController__specifiers;
  v20 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v18;

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 removeObserver:self name:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"_refreshDomainResultNotification:" name:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0];

  v23 = *&self->PSListController_opaque[v19];
  v24 = v23;

  return v23;
}

- (id)_getMemberGroupSpecifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [PSSpecifier groupSpecifierWithID:@"BYOD_MEMBER_INFO_GROUP" name:v3];
  [v4 addObject:v5];
  v6 = [v4 copy];

  return v6;
}

- (id)_getMemberListSpecifier
{
  v24 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(BYODGetDomainResult *)self->_domainResult members];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v3)
  {
    v4 = *v31;
    v23 = PSTableCellSubtitleTextKey;
    v22 = PSCellClassKey;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [v6 dsid];
        v8 = [(BYODGetDomainResult *)self->_domainResult domain];
        v9 = [v8 owner];
        v10 = [v9 dsid];
        v11 = [v7 isEqualToString:v10];

        if ((v11 & 1) == 0)
        {
          v12 = [v6 fullName];
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:2 edit:0];

          v14 = [v6 invitationStatus];
          v15 = [v14 isEqualToString:@"INVITED"];

          if (v15)
          {
            v16 = [NSBundle bundleForClass:objc_opt_class()];
            v17 = [v16 localizedStringForKey:@"BYOD_MEMBER_PENDING" value:&stru_B9FC8 table:@"AccountPreferences"];
            [v13 setProperty:v17 forKey:v23];
          }

          else
          {
            if ([v6 isFamilyMember])
            {
              v16 = [NSBundle bundleForClass:objc_opt_class()];
              [v16 localizedStringForKey:@"BYOD_MEMBER_FAMILY" value:&stru_B9FC8 table:@"AccountPreferences"];
            }

            else
            {
              v16 = [NSBundle bundleForClass:objc_opt_class()];
              [v16 localizedStringForKey:@"BYOD_MEMBER_OTHER" value:&stru_B9FC8 table:@"AccountPreferences"];
            }
            v17 = ;
            [v13 setProperty:v17 forKey:v23];
          }

          v18 = [v6 memberIdentifier];
          [v13 setIdentifier:v18];

          [v13 setControllerLoadAction:"_memberInfoWasTapped:"];
          [v13 setProperty:objc_opt_class() forKey:v22];
          objc_initWeak(&location, self);
          v19 = +[BYODContactsManager sharedInstance];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_475B0;
          v26[3] = &unk_B9338;
          objc_copyWeak(&v28, &location);
          v20 = v13;
          v27 = v20;
          [v19 fetchAvatarImageForUser:v6 withCompletion:v26];

          [v24 addObject:v20];
          objc_destroyWeak(&v28);
          objc_destroyWeak(&location);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v3);
  }

  return v24;
}

- (id)_getInviteSomeoneElseSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_INVITE_SOMEONE_ELSE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setButtonAction:"_inviteSomeoneElseTapped:"];
  [v3 addObject:v6];
  v7 = [v3 copy];

  return v7;
}

- (id)_getOwnerEmailListSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_MANAGE_EMAIL_ADDRESS_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [PSSpecifier groupSpecifierWithID:@"BYOD_EMAIL_ADDRESS_LIST_GROUP_ID" name:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_MANAGE_EMAIL_FOOTER_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];

  if ([(BYODEmailAddressManageViewController *)self _showCreateEmailButton])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    [v8 localizedStringForKey:@"BYOD_MANAGE_EMAIL_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    [v8 localizedStringForKey:@"BYOD_MANAGE_EMAIL_MAX_LIMIT_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  }
  v9 = ;
  v10 = [(BYODGetDomainResult *)self->_domainResult domain];
  v11 = [v10 name];
  v12 = [NSString stringWithFormat:v9, v11];

  v19.location = [v12 rangeOfString:v7];
  v13 = NSStringFromRange(v19);
  [v5 setProperty:v13 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v5 setProperty:v15 forKey:PSFooterCellClassGroupKey];

  [v5 setProperty:v12 forKey:PSFooterHyperlinkViewTitleKey];
  v16 = [NSValue valueWithNonretainedObject:self];
  [v5 setProperty:v16 forKey:PSFooterHyperlinkViewTargetKey];

  [v5 setProperty:@"_footerLinkTapped:" forKey:PSFooterHyperlinkViewActionKey];

  return v5;
}

- (void)_footerLinkTapped:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PASSWORD_AND_SECURITY"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (id)_getOwnerSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[BYODContactsManager sharedInstance];
  v5 = [v4 avatarImageForMeContact];

  if (!v5)
  {
    v6 = +[BYODContactsManager sharedInstance];
    v7 = [(ACAccount *)self->_loggedInUserAccount aa_firstName];
    v8 = [(ACAccount *)self->_loggedInUserAccount aa_lastName];
    v5 = [v6 monogramWithFirstName:v7 andLastName:v8];
  }

  v9 = [(ACAccount *)self->_loggedInUserAccount userFullName];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v10 setProperty:v5 forKey:PSIconImageKey];
  [v3 addObject:v10];
  v11 = [v3 copy];

  return v11;
}

- (id)_getOwnerEmailSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(BYODGetDomainResult *)self->_domainResult members];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
        v9 = [v7 dsid];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v7 emails];
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [*(*(&v19 + 1) + 8 * j) email];
                v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:4 edit:0];

                [v3 addObject:v16];
              }

              v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }

          goto LABEL_18;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v3;
}

- (id)_getCreateEmailSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_CREATE_EMAIL_ADDRESS_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setButtonAction:"_createEmailAddressButtonTapped:"];
  [v3 addObject:v6];
  v7 = [v3 copy];

  return v7;
}

- (void)_inviteSomeoneElseTapped:(id)a3
{
  v4 = [BYODContactPickerController alloc];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v15 localizedStringForKey:@"BYOD_CUSTOM_DOMAIN_INVITE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_CUSTOM_DOMAIN_INVITE_SEND_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [(BYODContactPickerController *)v4 initWithNavBarTitle:v5 rightButtonBarText:v7];
  contactController = self->_contactController;
  self->_contactController = v8;

  [(BYODContactPickerController *)self->_contactController setDelegate:self];
  v10 = [UINavigationController alloc];
  v11 = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  v16 = [v10 initWithRootViewController:v11];

  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  v13 = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  v14 = [v13 navigationItem];
  [v14 setLeftBarButtonItem:v12];

  [(BYODEmailAddressManageViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)_createEmailAddressButtonTapped:(id)a3
{
  v6 = a3;
  v4 = [[BYODUpdateEmailViewController alloc] initWithAccount:self->_loggedInUserAccount domain:self->_domainResult addAlias:1];
  [(BYODUpdateEmailViewController *)v4 setCallingSpecifier:v6];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [(BYODEmailAddressManageViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_memberInfoWasTapped:(id)a3
{
  v10 = a3;
  v4 = [BYODMemberEmailAddressViewController alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  domainResult = self->_domainResult;
  v7 = [v10 identifier];
  v8 = [(BYODGetDomainResult *)domainResult getMemberFromIdentifier:v7];
  v9 = [(BYODMemberEmailAddressViewController *)v4 initWithAccount:loggedInUserAccount domain:domainResult member:v8];

  [(BYODEmailAddressManageViewController *)self showViewController:v9 sender:self];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = a4;
  v5 = [v4 row] && !objc_msgSend(v4, "section");

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  if (a4 == 1)
  {
    [(BYODEmailAddressManageViewController *)self _deleteEmailAlert:v7];
  }
}

- (void)_deleteEmailAlert:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_DELETE_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = -[BYODEmailAddressManageViewController specifierAtIndex:](self, "specifierAtIndex:", [v4 row] + 1);
  v8 = [v7 name];
  v9 = [NSString stringWithFormat:v6, v8];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BYOD_DELETE_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [UIAlertController alertControllerWithTitle:v11 message:v9 preferredStyle:1];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_48B1C;
  v20[3] = &unk_B9388;
  v20[4] = self;
  v18 = v4;
  v21 = v18;
  v19 = [UIAlertAction actionWithTitle:v17 style:2 handler:v20];

  [v12 addAction:v15];
  [v12 addAction:v19];
  [v12 setPreferredAction:v19];
  [(BYODEmailAddressManageViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_deleteEmailFromServer:(id)a3
{
  v15 = a3;
  v14 = -[BYODEmailAddressManageViewController specifierAtIndex:](self, "specifierAtIndex:", [v15 row] + 1);
  [v14 byod_startSpinner];
  v4 = [BYODDeleteEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v6 = [(ACAccount *)loggedInUserAccount accountStore];
  v7 = [(BYODGetDomainResult *)self->_domainResult domain];
  v8 = [v7 name];
  v9 = [v14 name];
  v10 = [NSMutableArray arrayWithObject:v9];
  v11 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v12 = [(BYODDeleteEmailRequest *)v4 initWithAccount:loggedInUserAccount accountStore:v6 domain:v8 emailArray:v10 dsid:v11];

  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_48D90;
  v16[3] = &unk_B9570;
  objc_copyWeak(&v18, &location);
  v13 = v14;
  v17 = v13;
  [(BYODDeleteEmailRequest *)v12 performRequestWithCallback:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_refreshDomainResultNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:@"domainData"];
  objc_storeStrong(&self->_domainResult, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_49094;
  v8[3] = &unk_B8EB0;
  v8[4] = self;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v8];
}

- (void)_postNotificationForDomainData:(id)a3
{
  v5 = a3;
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:v5 forKey:@"domainData"];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0 userInfo:v3];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BYODEmailAddressManageViewController;
  [(BYODEmailAddressManageViewController *)&v4 dealloc];
}

- (void)_showErrorAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v5 addAction:v8];
  v12 = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

- (BOOL)_showCreateEmailButton
{
  v3 = [(BYODGetDomainResult *)self->_domainResult domain];
  v4 = [v3 reverificationStatus];
  if ([v4 isEqualToString:@"VERIFICATION_IN_PROGRESS"])
  {
  }

  else
  {
    v5 = [(BYODGetDomainResult *)self->_domainResult domain];
    v6 = [v5 reverificationStatus];
    v7 = [v6 isEqualToString:@"VERIFICATION_FAILED"];

    if ((v7 & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      obj = [(BYODGetDomainResult *)self->_domainResult members];
      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v19 + 1) + 8 * v10);
            v12 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
            v13 = [v11 dsid];
            v14 = [v12 isEqualToString:v13];

            if (v14)
            {
              v15 = [v11 emails];
              v16 = [v15 count];
              LOBYTE(v16) = v16 < [(BYODGetDomainResult *)self->_domainResult maxEmailsPerUser];

              if (v16)
              {

                return 1;
              }
            }

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return 0;
}

- (void)chooseContactController:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 kind] && objc_msgSend(v7, "kind") != &dword_0 + 1)
  {
    v17 = +[BYODEmailAddressManageViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_796F8(v17);
    }
  }

  else
  {
    if ([v7 kind] == &dword_0 + 1)
    {
      v8 = [BYODInviteDomainMember alloc];
      loggedInUserAccount = self->_loggedInUserAccount;
      v10 = [(ACAccount *)loggedInUserAccount accountStore];
      v11 = [(BYODGetDomainResult *)self->_domainResult domain];
      v12 = [v11 name];
      v13 = [v7 normalizedAddress];
      v14 = [(BYODInviteDomainMember *)v8 initWithAccount:loggedInUserAccount accountStore:v10 domain:v12 email:&stru_B9FC8 phone:v13];
    }

    else
    {
      v15 = [BYODInviteDomainMember alloc];
      v16 = self->_loggedInUserAccount;
      v10 = [(ACAccount *)v16 accountStore];
      v11 = [(BYODGetDomainResult *)self->_domainResult domain];
      v12 = [v11 name];
      v13 = [v7 address];
      v14 = [(BYODInviteDomainMember *)v15 initWithAccount:v16 accountStore:v10 domain:v12 email:v13 phone:&stru_B9FC8];
    }

    v17 = v14;

    spinner = self->_spinner;
    if (!spinner)
    {
      v19 = [BYODSpinner alloc];
      v20 = [v6 chooseContactViewController];
      v21 = [(BYODSpinner *)v19 initWithViewController:v20];
      v22 = self->_spinner;
      self->_spinner = v21;

      spinner = self->_spinner;
    }

    [(BYODSpinner *)spinner startSpinner];
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_49A04;
    v23[3] = &unk_B9570;
    objc_copyWeak(&v25, &location);
    v24 = v6;
    [v17 performRequestWithCallback:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

@end
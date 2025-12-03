@interface BYODEmailAddressManageViewController
+ (id)log;
- (BOOL)_showCreateEmailButton;
- (BYODEmailAddressManageViewController)initWithAccount:(id)account domain:(id)domain;
- (id)_getCreateEmailSpecifier;
- (id)_getInviteSomeoneElseSpecifier;
- (id)_getMemberGroupSpecifier:(id)specifier;
- (id)_getMemberListSpecifier;
- (id)_getOwnerEmailListSpecifier;
- (id)_getOwnerEmailSpecifier;
- (id)_getOwnerSpecifier;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_createEmailAddressButtonTapped:(id)tapped;
- (void)_deleteEmailAlert:(id)alert;
- (void)_deleteEmailFromServer:(id)server;
- (void)_footerLinkTapped:(id)tapped;
- (void)_inviteSomeoneElseTapped:(id)tapped;
- (void)_memberInfoWasTapped:(id)tapped;
- (void)_postNotificationForDomainData:(id)data;
- (void)_refreshDomainResultNotification:(id)notification;
- (void)_showErrorAlert;
- (void)chooseContactController:(id)controller didSelectContact:(id)contact;
- (void)dealloc;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation BYODEmailAddressManageViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_46A10;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6540 != -1)
  {
    dispatch_once(&qword_D6540, block);
  }

  v2 = qword_D6538;

  return v2;
}

- (BYODEmailAddressManageViewController)initWithAccount:(id)account domain:(id)domain
{
  accountCopy = account;
  domainCopy = domain;
  v12.receiver = self;
  v12.super_class = BYODEmailAddressManageViewController;
  v9 = [(BYODEmailAddressManageViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_loggedInUserAccount, account);
    objc_storeStrong(&v10->_domainResult, domain);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BYODEmailAddressManageViewController;
  [(BYODEmailAddressManageViewController *)&v7 viewDidLoad];
  navigationItem = [(BYODEmailAddressManageViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_EMAIL_ADDRESSES_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [navigationItem setTitle:v5];

  navigationItem2 = [(BYODEmailAddressManageViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:0];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  _getOwnerEmailListSpecifier = [(BYODEmailAddressManageViewController *)self _getOwnerEmailListSpecifier];
  [v3 addObject:_getOwnerEmailListSpecifier];

  _getOwnerSpecifier = [(BYODEmailAddressManageViewController *)self _getOwnerSpecifier];
  [v3 addObjectsFromArray:_getOwnerSpecifier];

  _getOwnerEmailSpecifier = [(BYODEmailAddressManageViewController *)self _getOwnerEmailSpecifier];
  [v3 addObjectsFromArray:_getOwnerEmailSpecifier];

  if ([(BYODEmailAddressManageViewController *)self _showCreateEmailButton])
  {
    _getCreateEmailSpecifier = [(BYODEmailAddressManageViewController *)self _getCreateEmailSpecifier];
    [v3 addObjectsFromArray:_getCreateEmailSpecifier];
  }

  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  if (![domain isOwner])
  {
    goto LABEL_11;
  }

  domain2 = [(BYODGetDomainResult *)self->_domainResult domain];
  isShared = [domain2 isShared];

  if (isShared)
  {
    domain = [(BYODEmailAddressManageViewController *)self _getMemberListSpecifier];
    if ([domain count])
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

    [v3 addObjectsFromArray:domain];
    members = [(BYODGetDomainResult *)self->_domainResult members];
    v15 = [members count];
    maxMembersPerDomain = [(BYODGetDomainResult *)self->_domainResult maxMembersPerDomain];

    if (v15 < maxMembersPerDomain)
    {
      _getInviteSomeoneElseSpecifier = [(BYODEmailAddressManageViewController *)self _getInviteSomeoneElseSpecifier];
      [v3 addObjectsFromArray:_getInviteSomeoneElseSpecifier];
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

- (id)_getMemberGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [PSSpecifier groupSpecifierWithID:@"BYOD_MEMBER_INFO_GROUP" name:specifierCopy];
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
        dsid = [v6 dsid];
        domain = [(BYODGetDomainResult *)self->_domainResult domain];
        owner = [domain owner];
        dsid2 = [owner dsid];
        v11 = [dsid isEqualToString:dsid2];

        if ((v11 & 1) == 0)
        {
          fullName = [v6 fullName];
          v13 = [PSSpecifier preferenceSpecifierNamed:fullName target:self set:0 get:0 detail:0 cell:2 edit:0];

          invitationStatus = [v6 invitationStatus];
          v15 = [invitationStatus isEqualToString:@"INVITED"];

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

          memberIdentifier = [v6 memberIdentifier];
          [v13 setIdentifier:memberIdentifier];

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
  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  name = [domain name];
  v12 = [NSString stringWithFormat:v9, name];

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

- (void)_footerLinkTapped:(id)tapped
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PASSWORD_AND_SECURITY"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (id)_getOwnerSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[BYODContactsManager sharedInstance];
  avatarImageForMeContact = [v4 avatarImageForMeContact];

  if (!avatarImageForMeContact)
  {
    v6 = +[BYODContactsManager sharedInstance];
    aa_firstName = [(ACAccount *)self->_loggedInUserAccount aa_firstName];
    aa_lastName = [(ACAccount *)self->_loggedInUserAccount aa_lastName];
    avatarImageForMeContact = [v6 monogramWithFirstName:aa_firstName andLastName:aa_lastName];
  }

  userFullName = [(ACAccount *)self->_loggedInUserAccount userFullName];
  v10 = [PSSpecifier preferenceSpecifierNamed:userFullName target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v10 setProperty:avatarImageForMeContact forKey:PSIconImageKey];
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
        normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
        dsid = [v7 dsid];
        v10 = [normalizedDSID isEqualToString:dsid];

        if (v10)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          emails = [v7 emails];
          v12 = [emails countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(emails);
                }

                email = [*(*(&v19 + 1) + 8 * j) email];
                v16 = [PSSpecifier preferenceSpecifierNamed:email target:self set:0 get:0 detail:0 cell:4 edit:0];

                [v3 addObject:v16];
              }

              v12 = [emails countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)_inviteSomeoneElseTapped:(id)tapped
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
  chooseContactViewController = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  v16 = [v10 initWithRootViewController:chooseContactViewController];

  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  chooseContactViewController2 = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  navigationItem = [chooseContactViewController2 navigationItem];
  [navigationItem setLeftBarButtonItem:v12];

  [(BYODEmailAddressManageViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)_createEmailAddressButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = [[BYODUpdateEmailViewController alloc] initWithAccount:self->_loggedInUserAccount domain:self->_domainResult addAlias:1];
  [(BYODUpdateEmailViewController *)v4 setCallingSpecifier:tappedCopy];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [(BYODEmailAddressManageViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_memberInfoWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = [BYODMemberEmailAddressViewController alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  domainResult = self->_domainResult;
  identifier = [tappedCopy identifier];
  v8 = [(BYODGetDomainResult *)domainResult getMemberFromIdentifier:identifier];
  v9 = [(BYODMemberEmailAddressViewController *)v4 initWithAccount:loggedInUserAccount domain:domainResult member:v8];

  [(BYODEmailAddressManageViewController *)self showViewController:v9 sender:self];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row] && !objc_msgSend(pathCopy, "section");

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (style == 1)
  {
    [(BYODEmailAddressManageViewController *)self _deleteEmailAlert:pathCopy];
  }
}

- (void)_deleteEmailAlert:(id)alert
{
  alertCopy = alert;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_DELETE_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = -[BYODEmailAddressManageViewController specifierAtIndex:](self, "specifierAtIndex:", [alertCopy row] + 1);
  name = [v7 name];
  v9 = [NSString stringWithFormat:v6, name];

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
  v18 = alertCopy;
  v21 = v18;
  v19 = [UIAlertAction actionWithTitle:v17 style:2 handler:v20];

  [v12 addAction:v15];
  [v12 addAction:v19];
  [v12 setPreferredAction:v19];
  [(BYODEmailAddressManageViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_deleteEmailFromServer:(id)server
{
  serverCopy = server;
  v14 = -[BYODEmailAddressManageViewController specifierAtIndex:](self, "specifierAtIndex:", [serverCopy row] + 1);
  [v14 byod_startSpinner];
  v4 = [BYODDeleteEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  name = [domain name];
  name2 = [v14 name];
  v10 = [NSMutableArray arrayWithObject:name2];
  normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v12 = [(BYODDeleteEmailRequest *)v4 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name emailArray:v10 dsid:normalizedDSID];

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

- (void)_refreshDomainResultNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo valueForKey:@"domainData"];
  objc_storeStrong(&self->_domainResult, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_49094;
  v8[3] = &unk_B8EB0;
  v8[4] = self;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v8];
}

- (void)_postNotificationForDomainData:(id)data
{
  dataCopy = data;
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:dataCopy forKey:@"domainData"];
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
  selfCopy = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

- (BOOL)_showCreateEmailButton
{
  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  reverificationStatus = [domain reverificationStatus];
  if ([reverificationStatus isEqualToString:@"VERIFICATION_IN_PROGRESS"])
  {
  }

  else
  {
    domain2 = [(BYODGetDomainResult *)self->_domainResult domain];
    reverificationStatus2 = [domain2 reverificationStatus];
    v7 = [reverificationStatus2 isEqualToString:@"VERIFICATION_FAILED"];

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
            normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
            dsid = [v11 dsid];
            v14 = [normalizedDSID isEqualToString:dsid];

            if (v14)
            {
              emails = [v11 emails];
              v16 = [emails count];
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

- (void)chooseContactController:(id)controller didSelectContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if ([contactCopy kind] && objc_msgSend(contactCopy, "kind") != &dword_0 + 1)
  {
    v17 = +[BYODEmailAddressManageViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_796F8(v17);
    }
  }

  else
  {
    if ([contactCopy kind] == &dword_0 + 1)
    {
      v8 = [BYODInviteDomainMember alloc];
      loggedInUserAccount = self->_loggedInUserAccount;
      accountStore = [(ACAccount *)loggedInUserAccount accountStore];
      domain = [(BYODGetDomainResult *)self->_domainResult domain];
      name = [domain name];
      normalizedAddress = [contactCopy normalizedAddress];
      v14 = [(BYODInviteDomainMember *)v8 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name email:&stru_B9FC8 phone:normalizedAddress];
    }

    else
    {
      v15 = [BYODInviteDomainMember alloc];
      v16 = self->_loggedInUserAccount;
      accountStore = [(ACAccount *)v16 accountStore];
      domain = [(BYODGetDomainResult *)self->_domainResult domain];
      name = [domain name];
      normalizedAddress = [contactCopy address];
      v14 = [(BYODInviteDomainMember *)v15 initWithAccount:v16 accountStore:accountStore domain:name email:normalizedAddress phone:&stru_B9FC8];
    }

    v17 = v14;

    spinner = self->_spinner;
    if (!spinner)
    {
      v19 = [BYODSpinner alloc];
      chooseContactViewController = [controllerCopy chooseContactViewController];
      v21 = [(BYODSpinner *)v19 initWithViewController:chooseContactViewController];
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
    v24 = controllerCopy;
    [v17 performRequestWithCallback:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

@end
@interface BYODMemberEmailAddressViewController
- (BYODMemberEmailAddressViewController)initWithAccount:(id)a3 domain:(id)a4 member:(id)a5;
- (id)_getRemoveSpecifier;
- (id)specifiers;
- (void)_removeMemberAlert;
- (void)_removeMemberRequest;
- (void)_resendInviteRequest;
- (void)_resendMemberInvite;
- (void)viewDidLoad;
@end

@implementation BYODMemberEmailAddressViewController

- (BYODMemberEmailAddressViewController)initWithAccount:(id)a3 domain:(id)a4 member:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BYODMemberEmailAddressViewController;
  v12 = [(BYODMemberEmailAddressViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggedInUserAccount, a3);
    objc_storeStrong(&v13->_domainResult, a4);
    objc_storeStrong(&v13->_domainMember, a5);
  }

  return v13;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = BYODMemberEmailAddressViewController;
  [(BYODMemberEmailAddressViewController *)&v9 viewDidLoad];
  v3 = [(BYODUser *)self->_domainMember invitationStatus];
  v4 = [v3 isEqualToString:@"INVITED"];

  domainMember = self->_domainMember;
  if (v4)
  {
    [(BYODUser *)domainMember memberIdentifier];
  }

  else
  {
    [(BYODUser *)domainMember fullName];
  }
  v6 = ;
  v7 = [(BYODMemberEmailAddressViewController *)self navigationItem];
  [v7 setTitle:v6];

  v8 = [(BYODMemberEmailAddressViewController *)self navigationItem];
  [v8 setHidesBackButton:0];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(BYODUser *)self->_domainMember invitationStatus];
  v5 = [v4 isEqualToString:@"INVITED"];

  if (v5)
  {
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v6];
    v7 = [(BYODUser *)self->_domainMember memberIdentifier];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:4 edit:0];

    v9 = +[BYODContactsManager sharedInstance];
    v10 = [v9 avatarImageForUser:self->_domainMember];
    [v8 setProperty:v10 forKey:PSIconImageKey];

    v11 = [(BYODUser *)self->_domainMember invitedOnDate];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"BYOD_MEMBER_INVITE_ON_DATE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v15 = [(BYODUser *)self->_domainMember invitedOnDate];
      v16 = [NSString stringWithFormat:v14, v15];

      [v8 setProperty:v16 forKey:PSTableCellSubtitleTextKey];
    }

    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v3 addObject:v8];
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"BYOD_MEMBER_RESEND_INVITE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v19 setButtonAction:"_resendInviteTapped:"];
    [v3 addObject:v19];
  }

  else
  {
    v20 = [(BYODUser *)self->_domainMember emails];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"BYOD_MEMBER_EMAIL_ADDRESS_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
      v24 = [PSSpecifier groupSpecifierWithID:@"MEMBER_EMAIL_SPECIFIER_GROUP" name:v23];

      [v3 addObject:v24];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = [(BYODUser *)self->_domainMember emails];
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v26)
      {
        v27 = *v39;
        do
        {
          v28 = 0;
          do
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = [*(*(&v38 + 1) + 8 * v28) email];
            v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:4 edit:0];
            [v3 addObject:v30];

            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v26);
      }
    }
  }

  v31 = [(BYODMemberEmailAddressViewController *)self _getRemoveSpecifier];
  [v3 addObjectsFromArray:v31];

  v32 = [v3 copy];
  v33 = OBJC_IVAR___PSListController__specifiers;
  v34 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v32;

  v35 = *&self->PSListController_opaque[v33];
  v36 = v35;

  return v35;
}

- (id)_getRemoveSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_MEMBER_REMOVE_GROUP_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_MEMBER_REMOVE_BUTTON_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [(BYODUser *)self->_domainMember fullName];
  v8 = [(BYODGetDomainResult *)self->_domainResult domain];
  v9 = [v8 name];
  v10 = [NSString stringWithFormat:v6, v7, v9];

  [v4 setProperty:v10 forKey:PSFooterTextGroupKey];
  [v3 addObject:v4];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"BYOD_MEMBER_REMOVE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v13 = [PSSpecifier deleteButtonSpecifierWithName:v12 target:self action:"_removeMemberTapped:"];

  [v13 setProperty:&off_C05D8 forKey:PSAlignmentKey];
  [v3 addObject:v13];
  v14 = [v3 copy];

  return v14;
}

- (void)_removeMemberAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_MEMBER_REMOVE_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [(BYODUser *)self->_domainMember fullName];
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_MEMBER_REMOVE_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [(BYODUser *)self->_domainMember fullName];
  v10 = [(BYODGetDomainResult *)self->_domainResult domain];
  v11 = [v10 name];
  v12 = [NSString stringWithFormat:v8, v9, v11];

  v13 = [UIAlertController alertControllerWithTitle:v6 message:v12 preferredStyle:1];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"BYOD_MEMBER_REMOVE_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_563F8;
  v20[3] = &unk_B8CD0;
  v20[4] = self;
  v19 = [UIAlertAction actionWithTitle:v18 style:2 handler:v20];

  [v13 addAction:v16];
  [v13 addAction:v19];
  [v13 setPreferredAction:v19];
  [(BYODMemberEmailAddressViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_resendMemberInvite
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BYOD_MEMBER_RESEND_INVITE_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_MEMBER_RESEND_INVITE_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [(BYODUser *)self->_domainMember memberIdentifier];
  v8 = [(BYODGetDomainResult *)self->_domainResult domain];
  v9 = [v8 name];
  v10 = [NSString stringWithFormat:v6, v7, v9];

  v11 = [UIAlertController alertControllerWithTitle:v4 message:v10 preferredStyle:1];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_566E8;
  v15[3] = &unk_B8CD0;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v15];

  [v11 addAction:v14];
  [(BYODMemberEmailAddressViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_removeMemberRequest
{
  v3 = [BYODRemoveMemberRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v5 = [(ACAccount *)loggedInUserAccount accountStore];
  v6 = [(BYODGetDomainResult *)self->_domainResult domain];
  v7 = [v6 name];
  v8 = [(BYODGetDomainResult *)self->_domainResult domain];
  v9 = [v8 status];
  v10 = [(BYODRemoveMemberRequest *)v3 initWithAccount:loggedInUserAccount accountStore:v5 domain:v7 domainStatus:v9 domainMember:self->_domainMember];

  spinner = self->_spinner;
  if (!spinner)
  {
    v12 = [[BYODSpinner alloc] initWithViewController:self];
    v13 = self->_spinner;
    self->_spinner = v12;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_568F8;
  v14[3] = &unk_B9308;
  objc_copyWeak(&v15, &location);
  [(BYODRemoveMemberRequest *)v10 performRequestWithCallback:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_resendInviteRequest
{
  v3 = [BYODResendMemberInviteRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v5 = [(ACAccount *)loggedInUserAccount accountStore];
  v6 = [(BYODGetDomainResult *)self->_domainResult domain];
  v7 = [v6 name];
  v8 = [(BYODUser *)self->_domainMember invitedEmail];
  v9 = [(BYODUser *)self->_domainMember invitedPhoneNumber];
  v10 = [(BYODResendMemberInviteRequest *)v3 initWithAccount:loggedInUserAccount accountStore:v5 domain:v7 email:v8 phone:v9];

  spinner = self->_spinner;
  if (!spinner)
  {
    v12 = [[BYODSpinner alloc] initWithViewController:self];
    v13 = self->_spinner;
    self->_spinner = v12;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_56D94;
  v14[3] = &unk_B9308;
  objc_copyWeak(&v15, &location);
  [(BYODResendMemberInviteRequest *)v10 performRequestWithCallback:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end
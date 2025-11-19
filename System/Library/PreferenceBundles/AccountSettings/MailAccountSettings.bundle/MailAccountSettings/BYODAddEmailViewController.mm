@interface BYODAddEmailViewController
+ (id)log;
- (BOOL)_insertEmailSpecifierAfter:(id)a3;
- (BOOL)_isRowEditableAtIndexPath:(id)a3;
- (BYODAddEmailViewController)initWithACAccount:(id)a3 familyFlow:(BOOL)a4 familyCircle:(id)a5 domainName:(id)a6 domainResult:(id)a7;
- (id)_getDomainMemberFromIdentifier:(id)a3;
- (id)_getEmailAddressListSpecifier;
- (id)_getEmailAddressSpecifier;
- (id)_getMemberSpecifiers;
- (id)_getSpecifierGroupWithMember:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)valueForSpecifier:(id)a3;
- (int64_t)_emailCount;
- (int64_t)_getMemberTypeByDsid:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addDomainMemberWithContact:(id)a3 withController:(id)a4;
- (void)_addEmailForFamily;
- (void)_didTapAddAPersonButton:(id)a3;
- (void)_didTapEditButton:(id)a3;
- (void)_getMemberPhotos;
- (void)_getPhotoForMember:(id)a3;
- (void)_populatMemberEmailList;
- (void)_populateDomainMembersFromDomainResult:(id)a3;
- (void)_populateDomainMembersFromFamily:(id)a3;
- (void)_removeDomainMember:(id)a3 memberSpecifier:(id)a4 completion:(id)a5;
- (void)_shouldRemoveDomainMember:(id)a3 completion:(id)a4;
- (void)_shouldRemoveEmailAddress:(id)a3 completion:(id)a4;
- (void)_showEmailConfirmation:(id)a3;
- (void)_showErrorAlert;
- (void)_showVerifyEmailConfirmation:(id)a3;
- (void)chooseContactController:(id)a3 didSelectContact:(id)a4;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation BYODAddEmailViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_21824;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6470 != -1)
  {
    dispatch_once(&qword_D6470, block);
  }

  v2 = qword_D6468;

  return v2;
}

- (BYODAddEmailViewController)initWithACAccount:(id)a3 familyFlow:(BOOL)a4 familyCircle:(id)a5 domainName:(id)a6 domainResult:(id)a7
{
  v31 = a3;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35.receiver = self;
  v35.super_class = BYODAddEmailViewController;
  v13 = [(BYODAddEmailViewController *)&v35 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_loggedInUserAccount, a3);
    v14->_isFamilyFlow = a4;
    objc_storeStrong(&v14->_domainName, a6);
    v15 = dispatch_group_create();
    requestGroup = v14->_requestGroup;
    v14->_requestGroup = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    memberEmailDictionary = v14->_memberEmailDictionary;
    v14->_memberEmailDictionary = v17;

    if (v14->_isFamilyFlow)
    {
      objc_storeStrong(&v14->_familyCircle, a5);
      [(BYODAddEmailViewController *)v14 _populateDomainMembersFromDomainResult:v34];
    }

    else
    {
      v19 = objc_alloc_init(NSMutableArray);
      domainMembers = v14->_domainMembers;
      v14->_domainMembers = v19;

      v21 = [BYODUser alloc];
      v36[0] = @"dsid";
      v22 = [(ACAccount *)v14->_loggedInUserAccount normalizedDSID];
      v37[0] = v22;
      v36[1] = @"firstName";
      v23 = [(ACAccount *)v14->_loggedInUserAccount aa_firstName];
      v37[1] = v23;
      v36[2] = @"lastName";
      v24 = [(ACAccount *)v14->_loggedInUserAccount aa_lastName];
      v37[2] = v24;
      v36[3] = @"fullName";
      v25 = [(ACAccount *)v14->_loggedInUserAccount userFullName];
      v37[3] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
      v27 = [(BYODUser *)v21 initWithDictionary:v26];

      [(NSMutableArray *)v14->_domainMembers addObject:v27];
    }

    objc_storeStrong(&v14->_domainResult, a7);
    v14->_isEditing = 0;
    v28 = objc_alloc_init(NSMutableArray);
    addEmailButtonSpecifiers = v14->_addEmailButtonSpecifiers;
    v14->_addEmailButtonSpecifiers = v28;
  }

  return v14;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = BYODAddEmailViewController;
  [(BYODAddEmailViewController *)&v14 viewDidLoad];
  v3 = [(BYODAddEmailViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_ADD_DOMAIN_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v3 setTitle:v5];

  v6 = [(BYODAddEmailViewController *)self navigationItem];
  [v6 setHidesBackButton:0];

  v7 = [(BYODAddEmailViewController *)self navigationItem];
  v8 = [UIBarButtonItem alloc];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:"_showEmailConfirmation:"];
  [v7 setRightBarButtonItem:v11];

  if (self->_isFamilyFlow)
  {
    [(BYODAddEmailViewController *)self _getMemberPhotos];
  }

  if ([(BYODAddEmailViewController *)self shouldShowCancel])
  {
    v12 = [(BYODAddEmailViewController *)self navigationItem];
    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
    [v12 setLeftBarButtonItem:v13];
  }
}

- (void)_showEmailConfirmation:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONFIRM_EMAIL_MESSAGE%1$ld" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [NSString localizedStringWithFormat:v5, [(BYODAddEmailViewController *)self _emailCount]];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CONFIRM_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:v6 preferredStyle:1];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CONFIRM_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_221A0;
  v16[3] = &unk_B8CD0;
  v16[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v16];

  [v9 addAction:v12];
  [v9 addAction:v15];
  [v9 setPreferredAction:v15];
  [(BYODAddEmailViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_showVerifyEmailConfirmation:(id)a3
{
  v4 = a3;
  if (self->_isFamilyFlow)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"VERIFY_EMAIL_MESSAGE_FAMILY" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    if ([(BYODAddEmailViewController *)self _hasMultipleEmailAddress])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      [v5 localizedStringForKey:@"VERIFY_EMAIL_MESSAGE_MULTIPLE_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    else
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      [v5 localizedStringForKey:@"VERIFY_EMAIL_MESSAGE_SINGLE_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
    }
    v6 = ;
  }

  v7 = v6;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"VERIFY_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:v7 preferredStyle:1];

  objc_initWeak(&location, self);
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_224F4;
  v17 = &unk_B9038;
  objc_copyWeak(&v18, &location);
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v14];

  [v10 addAction:{v13, v14, v15, v16, v17}];
  [(BYODAddEmailViewController *)self presentViewController:v10 animated:1 completion:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"INFO_HEADER_SPECIFIER"];
  if (self->_isFamilyFlow)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"BYOD_ADD_DOMAIN_BODY_YOU_AND_OTHERS" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"BYOD_ADD_DOMAIN_BODY_ONLY_YOU" value:&stru_B9FC8 table:@"AccountPreferences"];
  }
  v6 = ;
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v4 setProperty:@"0" forKey:@"GROUP_INDEX"];
  [v3 addObject:v4];
  v7 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v7];

  if (self->_isFamilyFlow)
  {
    v8 = [(NSMutableArray *)self->_domainMembers count];
    if (v8 < [(BYODGetDomainResult *)self->_domainResult maxMembersPerDomain])
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_ADD_PEOPLE_BUTTON_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v11 setButtonAction:"_didTapAddAPersonButton:"];
      [v11 setProperty:&__kCFBooleanFalse forKey:@"editableSpecifier"];
      [v3 addObject:v11];
    }
  }

  v12 = [(BYODAddEmailViewController *)self _getEmailAddressListSpecifier];
  [v3 addObjectsFromArray:v12];

  v13 = [v3 copy];
  v14 = OBJC_IVAR___PSListController__specifiers;
  v15 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v13;

  v16 = [[PSSpecifierGroupIndex alloc] initWithSpecifiers:*&self->PSListController_opaque[v14]];
  v17 = _specifierGroupIndex;
  _specifierGroupIndex = v16;

  v18 = *&self->PSListController_opaque[v14];
  v19 = v18;

  return v18;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = BYODAddEmailViewController;
  [(BYODAddEmailViewController *)&v3 reloadSpecifiers];
  if (self->_isFamilyFlow)
  {
    [(BYODAddEmailViewController *)self _getMemberPhotos];
  }
}

- (id)_getEmailAddressListSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  if (self->_isFamilyFlow)
  {
    v4 = [(BYODAddEmailViewController *)self _getMemberSpecifiers];
    [v3 addObjectsFromArray:v4];
  }

  else
  {
    v5 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    v4 = [PSSpecifier groupSpecifierWithID:v5];

    v6 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    [v4 setProperty:v6 forKey:@"MEMBER_DSID"];

    [v4 setButtonAction:"_didTapEditButton:"];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v4 setProperty:v8 forKey:PSHeaderCellClassGroupKey];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_EMAIL_ADDRESSES_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v4 setProperty:v10 forKey:@"headerTitle"];

    if (self->_isEditing)
    {
      [v4 setProperty:@"YES" forKey:@"tableEditing"];
    }

    objc_storeStrong(&self->_ownerGroupSpecifier, v4);
    [v3 addObject:v4];
    v11 = +[BYODContactsManager sharedInstance];
    v12 = [v11 avatarImageForMeContact];

    if (!v12)
    {
      v28 = v3;
      v27 = +[BYODContactsManager sharedInstance];
      v26 = [(BYODGetDomainResult *)self->_domainResult domain];
      v13 = [v26 owner];
      v14 = [v13 firstName];
      v15 = [(BYODGetDomainResult *)self->_domainResult domain];
      v16 = [v15 owner];
      v17 = [v16 lastName];
      v12 = [v27 monogramWithFirstName:v14 andLastName:v17];

      v3 = v28;
    }

    v18 = [(ACAccount *)self->_loggedInUserAccount userFullName];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"BYOD_DOMAIN_OWNER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v19 setProperty:v21 forKey:PSValueKey];

    [v19 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v19 setProperty:v12 forKey:PSIconImageKey];
    v22 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    v23 = [NSString stringWithFormat:@"MEMBER_%@", v22];
    [v19 setIdentifier:v23];

    [v19 setProperty:&__kCFBooleanFalse forKey:@"editableSpecifier"];
    [v3 addObject:v19];
    v24 = [(BYODAddEmailViewController *)self _getEmailAddressSpecifier];
    [v3 addObject:v24];
  }

  return v3;
}

- (id)_getMemberSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = self->_domainMembers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 dsid];
        v10 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:v9];

        if (!v10)
        {
          v11 = [(BYODAddEmailViewController *)self _getSpecifierGroupWithMember:v8];
          [v3 addObjectsFromArray:v11];
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_domainMembers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        v17 = [v16 dsid];
        v18 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:v17];

        if (v18)
        {
          v19 = [(BYODAddEmailViewController *)self _getSpecifierGroupWithMember:v16];
          [v3 addObjectsFromArray:v19];
        }
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  return v3;
}

- (id)_getSpecifierGroupWithMember:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 memberIdentifier];
  v7 = [PSSpecifier groupSpecifierWithID:v6];

  [v7 setButtonAction:"_didTapEditButton:"];
  [v5 addObject:v7];
  v8 = [v4 fullName];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

  v10 = [v4 dsid];
  v11 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:v10];

  if (v11 == 1)
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BYOD_FAMILY_MEMBER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v9 setProperty:v17 forKey:PSTableCellSubtitleTextKey];
    v18 = &__kCFBooleanTrue;
LABEL_7:

    goto LABEL_9;
  }

  if (!v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v7 setProperty:v13 forKey:PSHeaderCellClassGroupKey];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"BYOD_ADD_DOMAIN_EMAIL_ADDRESSES_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v7 setProperty:v15 forKey:@"headerTitle"];

    if (self->_isEditing)
    {
      [v7 setProperty:@"YES" forKey:@"tableEditing"];
    }

    objc_storeStrong(&self->_ownerGroupSpecifier, v7);
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BYOD_DOMAIN_OWNER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v9 setProperty:v17 forKey:PSTableCellSubtitleTextKey];
    v18 = &__kCFBooleanFalse;
    goto LABEL_7;
  }

  v18 = &__kCFBooleanTrue;
LABEL_9:
  [v9 setProperty:v18 forKey:@"editableSpecifier"];
  [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v19 = [v4 memberIdentifier];
  [v9 setProperty:v19 forKey:@"MEMBER_DSID"];

  v20 = [v4 memberIdentifier];
  v21 = [NSString stringWithFormat:@"MEMBER_%@", v20];
  [v9 setIdentifier:v21];

  [v5 addObject:v9];
  v22 = [(BYODAddEmailViewController *)self _getEmailAddressSpecifier];
  [v5 addObject:v22];

  return v5;
}

- (void)_getMemberPhotos
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_domainMembers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 dsid];
        v9 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:v8];

        if (!v9)
        {
          [(BYODAddEmailViewController *)self _getPhotoForMember:v7];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_domainMembers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        v15 = [v14 dsid];
        v16 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:v15];

        if (v16)
        {
          [(BYODAddEmailViewController *)self _getPhotoForMember:v14];
        }
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)_getPhotoForMember:(id)a3
{
  v4 = a3;
  v5 = +[BYODContactsManager sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_23A10;
  v7[3] = &unk_B9088;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 fetchAvatarImageForUser:v6 withCompletion:v7];
}

- (id)_getEmailAddressSpecifier
{
  v2 = [PSTextFieldSpecifier preferenceSpecifierNamed:&stru_B9FC8 target:self set:"_setEmailAddress:withSpecifier:" get:0 detail:0 cell:8 edit:0];
  [v2 setKeyboardType:0 autoCaps:0 autoCorrection:1];
  [v2 setProperty:&__kCFBooleanTrue forKey:@"editableSpecifier"];

  return v2;
}

- (id)valueForSpecifier:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:PSValueKey];

  return v3;
}

- (void)_populatMemberEmailList
{
  v3 = objc_alloc_init(NSMutableDictionary);
  memberEmailDictionary = self->_memberEmailDictionary;
  self->_memberEmailDictionary = v3;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = self;
  obj = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v20 = *v23;
    v19 = PSTableCellKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 propertyForKey:v19];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 textField];
          v10 = [v9 text];
          v11 = [v10 length] == 0;

          if (!v11)
          {
            v12 = [(BYODAddEmailViewController *)v21 getGroupSpecifierForSpecifier:v7];
            v13 = [v12 identifier];
            v14 = [(NSMutableDictionary *)v21->_memberEmailDictionary valueForKey:v13];
            if (!v14)
            {
              v14 = objc_alloc_init(NSMutableArray);
            }

            v15 = [v9 text];
            if (([v15 containsString:@"@"] & 1) == 0)
            {
              v16 = [v9 text];
              v17 = [NSString stringWithFormat:@"%@@%@", v16, v21->_domainName];

              v15 = v17;
            }

            [v14 addObject:v15];
            [(NSMutableDictionary *)v21->_memberEmailDictionary setValue:v14 forKey:v13];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (int64_t)_getMemberTypeByDsid:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  if ([v4 isEqualToString:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(FAFamilyCircle *)self->_familyCircle members];
    v8 = [v7 valueForKey:@"dsid"];
    v9 = [v8 valueForKey:@"stringValue"];

    if ([v9 containsObject:v4])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (void)_didTapAddAPersonButton:(id)a3
{
  v4 = +[BYODAddEmailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "did tap Add A Person button", v18, 2u);
  }

  v5 = [BYODContactPickerController alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_CUSTOM_DOMAIN_INVITE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_CUSTOM_DOMAIN_INVITE_SEND_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [(BYODContactPickerController *)v5 initWithNavBarTitle:v7 rightButtonBarText:v9];
  contactController = self->_contactController;
  self->_contactController = v10;

  [(BYODContactPickerController *)self->_contactController setDelegate:self];
  v12 = [UINavigationController alloc];
  v13 = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  v14 = [v12 initWithRootViewController:v13];

  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_didTapCancelButton:"];
  v16 = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  v17 = [v16 navigationItem];
  [v17 setLeftBarButtonItem:v15];

  [(BYODAddEmailViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_didTapEditButton:(id)a3
{
  self->_isEditing ^= 1u;
  v4 = [(BYODAddEmailViewController *)self table];
  [v4 setEditing:self->_isEditing animated:1];

  v5 = [(PSSpecifier *)self->_ownerGroupSpecifier propertyForKey:@"headerView"];
  [v5 toggleDoneButton:self->_isEditing];
}

- (void)_addEmailForFamily
{
  if (self->_spinner)
  {
    v3 = [[BYODSpinner alloc] initWithViewController:self];
    spinner = self->_spinner;
    self->_spinner = v3;

    v5 = self->_spinner;
  }

  else
  {
    v5 = 0;
  }

  [(BYODSpinner *)v5 startSpinner];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = self;
  obj = [(NSMutableDictionary *)self->_memberEmailDictionary allKeys];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v20 = *v26;
    do
    {
      v21 = v6;
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v22 = [(BYODAddEmailViewController *)v23 _getDomainMemberFromIdentifier:v8];
        v9 = [BYODAddEmailRequest alloc];
        loggedInUserAccount = v23->_loggedInUserAccount;
        v11 = [(ACAccount *)loggedInUserAccount accountStore];
        domainName = v23->_domainName;
        v13 = [(NSMutableDictionary *)v23->_memberEmailDictionary valueForKey:v8];
        v14 = [v13 copy];
        v15 = [v22 dsid];
        v16 = [v22 invitedEmail];
        v17 = [v22 invitedPhoneNumber];
        v18 = [(BYODAddEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:v11 domain:domainName emailArray:v14 dsid:v15 withEmail:v16 withPhone:v17];

        dispatch_group_enter(v23->_requestGroup);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_2476C;
        v24[3] = &unk_B90B0;
        v24[4] = v23;
        [(BYODAddEmailRequest *)v18 performRequestWithCallback:v24];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }
}

- (id)_getDomainMemberFromIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_domainMembers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 memberIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_addDomainMemberWithContact:(id)a3 withController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 kind] == &dword_0 + 1)
  {
    v8 = [BYODAddMemberRequest alloc];
    loggedInUserAccount = self->_loggedInUserAccount;
    v10 = [(ACAccount *)loggedInUserAccount accountStore];
    v11 = [(BYODGetDomainResult *)self->_domainResult domain];
    v12 = [v11 name];
    v13 = [v6 normalizedAddress];
    v14 = [(BYODAddMemberRequest *)v8 initWithAccount:loggedInUserAccount accountStore:v10 domain:v12 email:&stru_B9FC8 phone:v13];
  }

  else
  {
    v15 = [BYODAddMemberRequest alloc];
    v16 = self->_loggedInUserAccount;
    v10 = [(ACAccount *)v16 accountStore];
    v11 = [(BYODGetDomainResult *)self->_domainResult domain];
    v12 = [v11 name];
    v13 = [v6 address];
    v14 = [(BYODAddMemberRequest *)v15 initWithAccount:v16 accountStore:v10 domain:v12 email:v13 phone:&stru_B9FC8];
  }

  v17 = v14;

  v18 = [[BYODSpinner alloc] initWithViewController:v7];
  spinner = self->_spinner;
  self->_spinner = v18;

  [(BYODSpinner *)self->_spinner startSpinner];
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_24BF4;
  v22[3] = &unk_B9100;
  objc_copyWeak(&v25, &location);
  v20 = v7;
  v23 = v20;
  v21 = v6;
  v24 = v21;
  [(BYODAddMemberRequest *)v17 performRequestWithCallback:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_removeDomainMember:(id)a3 memberSpecifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [BYODRemoveMemberRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v13 = [(ACAccount *)loggedInUserAccount accountStore];
  domainName = self->_domainName;
  v15 = [(BYODGetDomainResult *)self->_domainResult domain];
  v16 = [v15 status];
  v17 = [(BYODRemoveMemberRequest *)v11 initWithAccount:loggedInUserAccount accountStore:v13 domain:domainName domainStatus:v16 domainMember:v8];

  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_25174;
  v20[3] = &unk_B9128;
  objc_copyWeak(&v23, &location);
  v18 = v9;
  v21 = v18;
  v19 = v10;
  v22 = v19;
  [(BYODRemoveMemberRequest *)v17 performRequestWithCallback:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (BOOL)_insertEmailSpecifierAfter:(id)a3
{
  v19 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    v6 = PSTableCellKey;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 propertyForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 textField];
          if ([v19 isEqual:v10])
          {
            v11 = [v19 text];
            v12 = [v11 length] == 0;

            if (!v12)
            {
              v13 = [(BYODAddEmailViewController *)self getGroupSpecifierForSpecifier:v8];
              v20 = 0;
              if (v13)
              {
                [(BYODAddEmailViewController *)self getGroup:&v20 row:0 ofSpecifier:v13];
                v14 = [(BYODAddEmailViewController *)self specifiersInGroup:v20];
                v15 = [v14 count];
                if (v15 - 2 < [(BYODGetDomainResult *)self->_domainResult maxEmailsPerUser])
                {
                  v16 = [(BYODAddEmailViewController *)self _getEmailAddressSpecifier];
                  [(BYODAddEmailViewController *)self insertSpecifier:v16 atEndOfGroup:v20];
                }
              }

              goto LABEL_18;
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = BYODAddEmailViewController;
  v5 = [(BYODAddEmailViewController *)&v13 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 detailTextLabel];
  [v6 setNumberOfLines:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 textField];
    if (v7)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"BYOD_UPDATE_EMAIL_TEXT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
      [v7 setPlaceholder:v9];

      v10 = [NSString stringWithFormat:@"%@%@", @"@", self->_domainName];
      v11 = +[UIColor secondaryLabelColor];
      [v7 _setSuffix:v10 withColor:v11];

      [v7 setDelegate:self];
    }
  }

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(BYODAddEmailViewController *)self _isRowEditableAtIndexPath:v5])
  {
    v6 = [(BYODAddEmailViewController *)self table];
    v7 = [v6 isEditing];

    v8 = v7 & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v31 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    v30 = v8;
    if ([v8 row])
    {
      v35.receiver = self;
      v35.super_class = BYODAddEmailViewController;
      v9 = [(BYODAddEmailViewController *)&v35 tableView:v31 cellForRowAtIndexPath:v30];
      v10 = [v9 textField];
      v29 = [v10 text];

      v11 = [v9 specifier];
      objc_initWeak(&location, self);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_260A0;
      v32[3] = &unk_B9150;
      objc_copyWeak(&v34, &location);
      v12 = v11;
      v33 = v12;
      v13 = objc_retainBlock(v32);
      v14 = [NSString stringWithFormat:@"%@@%@", v29, self->_domainName];
      [(BYODAddEmailViewController *)self _shouldRemoveEmailAddress:v14 completion:v13];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else
    {
      v27 = [(BYODAddEmailViewController *)self specifierAtIndexPath:v30];
      v29 = [v27 propertyForKey:@"MEMBER_DSID"];
      v28 = [(BYODAddEmailViewController *)self _getDomainMemberFromIdentifier:v29];
      v26 = -[BYODAddEmailViewController specifiersInGroup:](self, "specifiersInGroup:", [v30 section]);
      v15 = objc_alloc_init(NSMutableArray);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v16 = v26;
      v17 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v17)
      {
        v18 = *v46;
        do
        {
          v19 = 0;
          do
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v45 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 propertyForKey:@"cellObject"];
              [v15 addObject:v21];
            }

            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v17);
      }

      objc_initWeak(&location, self);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_25E74;
      v41[3] = &unk_B9150;
      objc_copyWeak(&v43, &location);
      v22 = v16;
      v42 = v22;
      v23 = objc_retainBlock(v41);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_25FA4;
      v36[3] = &unk_B9178;
      objc_copyWeak(&v40, &location);
      v9 = v27;
      v37 = v9;
      v12 = v28;
      v38 = v12;
      v39 = v23;
      v24 = v23;
      v25 = objc_retainBlock(v36);
      [(BYODAddEmailViewController *)self _shouldRemoveDomainMember:v12 completion:v25];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }

    v8 = v30;
  }
}

- (void)_shouldRemoveDomainMember:(id)a3 completion:(id)a4
{
  v21 = a3;
  v22 = a4;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [v21 fullName];
  v23 = [NSString stringWithFormat:v7, v8];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [NSString stringWithFormat:v10, self->_domainName];
  v12 = self;

  v13 = [UIAlertController alertControllerWithTitle:v23 message:v11 preferredStyle:1];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_265B0;
  v24[3] = &unk_B8CF8;
  v19 = v22;
  v25 = v19;
  v20 = [UIAlertAction actionWithTitle:v18 style:2 handler:v24];

  [v13 addAction:v16];
  [v13 addAction:v20];
  [v13 setPreferredAction:v20];
  [(BYODAddEmailViewController *)v12 presentViewController:v13 animated:1 completion:0];
}

- (void)_shouldRemoveEmailAddress:(id)a3 completion:(id)a4
{
  v20 = a3;
  v21 = a4;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_ADDRESS_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v19 = v7;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_ADDRESS_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [NSString stringWithFormat:v9, v20];

  v11 = [UIAlertController alertControllerWithTitle:v7 message:v10 preferredStyle:1];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_26950;
  v22[3] = &unk_B8CF8;
  v17 = v21;
  v23 = v17;
  v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:v22];

  [v11 addAction:v14];
  [v11 addAction:v18];
  [v11 setPreferredAction:v18];
  [(BYODAddEmailViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (int64_t)_emailCount
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v2 = 0;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    v5 = PSTableCellKey;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v13 + 1) + 8 * v6) propertyForKey:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 textField];
          v9 = [v8 text];
          v10 = [v9 length] != 0;

          v2 += v10;
        }

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  return v2;
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

- (void)_populateDomainMembersFromDomainResult:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  domainMembers = self->_domainMembers;
  self->_domainMembers = v5;

  v7 = self->_domainMembers;
  v8 = [v4 getDomainOwnerMember];
  [(NSMutableArray *)v7 addObject:v8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v4 members];
  v19 = self;
  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 dsid];
        v15 = [v4 domain];
        v16 = [v15 owner];
        v17 = [v16 dsid];
        v18 = [v14 isEqualToString:v17];

        if ((v18 & 1) == 0)
        {
          [(NSMutableArray *)v19->_domainMembers addObject:v13];
        }
      }

      v9 = obj;
      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)_populateDomainMembersFromFamily:(id)a3
{
  v21 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  domainMembers = self->_domainMembers;
  self->_domainMembers = v4;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v21 members];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v23 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
        v10 = [v8 dsid];
        v11 = [NSString stringWithFormat:@"%@", v10];
        v12 = [v9 isEqualToString:v11];

        if (v12)
        {
          v13 = [BYODUser alloc];
          v28[0] = @"dsid";
          v14 = [v8 dsid];
          v15 = [NSString stringWithFormat:@"%@", v14];
          v29[0] = v15;
          v28[1] = @"firstName";
          v16 = [v8 firstName];
          v29[1] = v16;
          v28[2] = @"lastName";
          v17 = [v8 lastName];
          v29[2] = v17;
          v28[3] = @"fullName";
          v18 = [v8 fullName];
          v29[3] = v18;
          v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
          v20 = [(BYODUser *)v13 initWithDictionary:v19];

          [(NSMutableArray *)self->_domainMembers addObject:v20];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isRowEditableAtIndexPath:(id)a3
{
  v3 = [(BYODAddEmailViewController *)self specifierAtIndexPath:a3];
  v4 = [v3 propertyForKey:@"editableSpecifier"];
  v5 = [v4 isEqual:&__kCFBooleanTrue];

  v10 = 0;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 propertyForKey:@"cellObject"], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "textField"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "text"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v6, v9))
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)chooseContactController:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 kind] && objc_msgSend(v7, "kind") != &dword_0 + 1)
  {
    v9 = +[BYODAddEmailViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_796F8(v9);
    }
  }

  else
  {
    v8 = [v6 chooseContactViewController];
    [(BYODAddEmailViewController *)self _addDomainMemberWithContact:v7 withController:v8];
  }
}

@end
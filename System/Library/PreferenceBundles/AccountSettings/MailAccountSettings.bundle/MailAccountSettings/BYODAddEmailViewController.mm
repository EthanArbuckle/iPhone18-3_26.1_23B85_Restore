@interface BYODAddEmailViewController
+ (id)log;
- (BOOL)_insertEmailSpecifierAfter:(id)after;
- (BOOL)_isRowEditableAtIndexPath:(id)path;
- (BYODAddEmailViewController)initWithACAccount:(id)account familyFlow:(BOOL)flow familyCircle:(id)circle domainName:(id)name domainResult:(id)result;
- (id)_getDomainMemberFromIdentifier:(id)identifier;
- (id)_getEmailAddressListSpecifier;
- (id)_getEmailAddressSpecifier;
- (id)_getMemberSpecifiers;
- (id)_getSpecifierGroupWithMember:(id)member;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)valueForSpecifier:(id)specifier;
- (int64_t)_emailCount;
- (int64_t)_getMemberTypeByDsid:(id)dsid;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addDomainMemberWithContact:(id)contact withController:(id)controller;
- (void)_addEmailForFamily;
- (void)_didTapAddAPersonButton:(id)button;
- (void)_didTapEditButton:(id)button;
- (void)_getMemberPhotos;
- (void)_getPhotoForMember:(id)member;
- (void)_populatMemberEmailList;
- (void)_populateDomainMembersFromDomainResult:(id)result;
- (void)_populateDomainMembersFromFamily:(id)family;
- (void)_removeDomainMember:(id)member memberSpecifier:(id)specifier completion:(id)completion;
- (void)_shouldRemoveDomainMember:(id)member completion:(id)completion;
- (void)_shouldRemoveEmailAddress:(id)address completion:(id)completion;
- (void)_showEmailConfirmation:(id)confirmation;
- (void)_showErrorAlert;
- (void)_showVerifyEmailConfirmation:(id)confirmation;
- (void)chooseContactController:(id)controller didSelectContact:(id)contact;
- (void)reloadSpecifiers;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation BYODAddEmailViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_21824;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6470 != -1)
  {
    dispatch_once(&qword_D6470, block);
  }

  v2 = qword_D6468;

  return v2;
}

- (BYODAddEmailViewController)initWithACAccount:(id)account familyFlow:(BOOL)flow familyCircle:(id)circle domainName:(id)name domainResult:(id)result
{
  accountCopy = account;
  circleCopy = circle;
  nameCopy = name;
  resultCopy = result;
  v35.receiver = self;
  v35.super_class = BYODAddEmailViewController;
  v13 = [(BYODAddEmailViewController *)&v35 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_loggedInUserAccount, account);
    v14->_isFamilyFlow = flow;
    objc_storeStrong(&v14->_domainName, name);
    v15 = dispatch_group_create();
    requestGroup = v14->_requestGroup;
    v14->_requestGroup = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    memberEmailDictionary = v14->_memberEmailDictionary;
    v14->_memberEmailDictionary = v17;

    if (v14->_isFamilyFlow)
    {
      objc_storeStrong(&v14->_familyCircle, circle);
      [(BYODAddEmailViewController *)v14 _populateDomainMembersFromDomainResult:resultCopy];
    }

    else
    {
      v19 = objc_alloc_init(NSMutableArray);
      domainMembers = v14->_domainMembers;
      v14->_domainMembers = v19;

      v21 = [BYODUser alloc];
      v36[0] = @"dsid";
      normalizedDSID = [(ACAccount *)v14->_loggedInUserAccount normalizedDSID];
      v37[0] = normalizedDSID;
      v36[1] = @"firstName";
      aa_firstName = [(ACAccount *)v14->_loggedInUserAccount aa_firstName];
      v37[1] = aa_firstName;
      v36[2] = @"lastName";
      aa_lastName = [(ACAccount *)v14->_loggedInUserAccount aa_lastName];
      v37[2] = aa_lastName;
      v36[3] = @"fullName";
      userFullName = [(ACAccount *)v14->_loggedInUserAccount userFullName];
      v37[3] = userFullName;
      v26 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
      v27 = [(BYODUser *)v21 initWithDictionary:v26];

      [(NSMutableArray *)v14->_domainMembers addObject:v27];
    }

    objc_storeStrong(&v14->_domainResult, result);
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
  navigationItem = [(BYODAddEmailViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_ADD_DOMAIN_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [navigationItem setTitle:v5];

  navigationItem2 = [(BYODAddEmailViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:0];

  navigationItem3 = [(BYODAddEmailViewController *)self navigationItem];
  v8 = [UIBarButtonItem alloc];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:"_showEmailConfirmation:"];
  [navigationItem3 setRightBarButtonItem:v11];

  if (self->_isFamilyFlow)
  {
    [(BYODAddEmailViewController *)self _getMemberPhotos];
  }

  if ([(BYODAddEmailViewController *)self shouldShowCancel])
  {
    navigationItem4 = [(BYODAddEmailViewController *)self navigationItem];
    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
    [navigationItem4 setLeftBarButtonItem:v13];
  }
}

- (void)_showEmailConfirmation:(id)confirmation
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

- (void)_showVerifyEmailConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
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

  _getEmailAddressListSpecifier = [(BYODAddEmailViewController *)self _getEmailAddressListSpecifier];
  [v3 addObjectsFromArray:_getEmailAddressListSpecifier];

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
    _getMemberSpecifiers = [(BYODAddEmailViewController *)self _getMemberSpecifiers];
    [v3 addObjectsFromArray:_getMemberSpecifiers];
  }

  else
  {
    normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    _getMemberSpecifiers = [PSSpecifier groupSpecifierWithID:normalizedDSID];

    normalizedDSID2 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    [_getMemberSpecifiers setProperty:normalizedDSID2 forKey:@"MEMBER_DSID"];

    [_getMemberSpecifiers setButtonAction:"_didTapEditButton:"];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [_getMemberSpecifiers setProperty:v8 forKey:PSHeaderCellClassGroupKey];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_EMAIL_ADDRESSES_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [_getMemberSpecifiers setProperty:v10 forKey:@"headerTitle"];

    if (self->_isEditing)
    {
      [_getMemberSpecifiers setProperty:@"YES" forKey:@"tableEditing"];
    }

    objc_storeStrong(&self->_ownerGroupSpecifier, _getMemberSpecifiers);
    [v3 addObject:_getMemberSpecifiers];
    v11 = +[BYODContactsManager sharedInstance];
    avatarImageForMeContact = [v11 avatarImageForMeContact];

    if (!avatarImageForMeContact)
    {
      v28 = v3;
      v27 = +[BYODContactsManager sharedInstance];
      domain = [(BYODGetDomainResult *)self->_domainResult domain];
      owner = [domain owner];
      firstName = [owner firstName];
      domain2 = [(BYODGetDomainResult *)self->_domainResult domain];
      owner2 = [domain2 owner];
      lastName = [owner2 lastName];
      avatarImageForMeContact = [v27 monogramWithFirstName:firstName andLastName:lastName];

      v3 = v28;
    }

    userFullName = [(ACAccount *)self->_loggedInUserAccount userFullName];
    v19 = [PSSpecifier preferenceSpecifierNamed:userFullName target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"BYOD_DOMAIN_OWNER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v19 setProperty:v21 forKey:PSValueKey];

    [v19 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v19 setProperty:avatarImageForMeContact forKey:PSIconImageKey];
    normalizedDSID3 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    v23 = [NSString stringWithFormat:@"MEMBER_%@", normalizedDSID3];
    [v19 setIdentifier:v23];

    [v19 setProperty:&__kCFBooleanFalse forKey:@"editableSpecifier"];
    [v3 addObject:v19];
    _getEmailAddressSpecifier = [(BYODAddEmailViewController *)self _getEmailAddressSpecifier];
    [v3 addObject:_getEmailAddressSpecifier];
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
        dsid = [v8 dsid];
        v10 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:dsid];

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
        dsid2 = [v16 dsid];
        v18 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:dsid2];

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

- (id)_getSpecifierGroupWithMember:(id)member
{
  memberCopy = member;
  v5 = objc_alloc_init(NSMutableArray);
  memberIdentifier = [memberCopy memberIdentifier];
  v7 = [PSSpecifier groupSpecifierWithID:memberIdentifier];

  [v7 setButtonAction:"_didTapEditButton:"];
  [v5 addObject:v7];
  fullName = [memberCopy fullName];
  v9 = [PSSpecifier preferenceSpecifierNamed:fullName target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

  dsid = [memberCopy dsid];
  v11 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:dsid];

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
  memberIdentifier2 = [memberCopy memberIdentifier];
  [v9 setProperty:memberIdentifier2 forKey:@"MEMBER_DSID"];

  memberIdentifier3 = [memberCopy memberIdentifier];
  v21 = [NSString stringWithFormat:@"MEMBER_%@", memberIdentifier3];
  [v9 setIdentifier:v21];

  [v5 addObject:v9];
  _getEmailAddressSpecifier = [(BYODAddEmailViewController *)self _getEmailAddressSpecifier];
  [v5 addObject:_getEmailAddressSpecifier];

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
        dsid = [v7 dsid];
        v9 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:dsid];

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
        dsid2 = [v14 dsid];
        v16 = [(BYODAddEmailViewController *)self _getMemberTypeByDsid:dsid2];

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

- (void)_getPhotoForMember:(id)member
{
  memberCopy = member;
  v5 = +[BYODContactsManager sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_23A10;
  v7[3] = &unk_B9088;
  v7[4] = self;
  v6 = memberCopy;
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

- (id)valueForSpecifier:(id)specifier
{
  v3 = [specifier objectForKeyedSubscript:PSValueKey];

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
  selfCopy = self;
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
          textField = [v8 textField];
          text = [textField text];
          v11 = [text length] == 0;

          if (!v11)
          {
            v12 = [(BYODAddEmailViewController *)selfCopy getGroupSpecifierForSpecifier:v7];
            identifier = [v12 identifier];
            v14 = [(NSMutableDictionary *)selfCopy->_memberEmailDictionary valueForKey:identifier];
            if (!v14)
            {
              v14 = objc_alloc_init(NSMutableArray);
            }

            text2 = [textField text];
            if (([text2 containsString:@"@"] & 1) == 0)
            {
              text3 = [textField text];
              v17 = [NSString stringWithFormat:@"%@@%@", text3, selfCopy->_domainName];

              text2 = v17;
            }

            [v14 addObject:text2];
            [(NSMutableDictionary *)selfCopy->_memberEmailDictionary setValue:v14 forKey:identifier];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (int64_t)_getMemberTypeByDsid:(id)dsid
{
  dsidCopy = dsid;
  normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  if ([dsidCopy isEqualToString:normalizedDSID])
  {
    v6 = 0;
  }

  else
  {
    members = [(FAFamilyCircle *)self->_familyCircle members];
    v8 = [members valueForKey:@"dsid"];
    v9 = [v8 valueForKey:@"stringValue"];

    if ([v9 containsObject:dsidCopy])
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

- (void)_didTapAddAPersonButton:(id)button
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
  chooseContactViewController = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  v14 = [v12 initWithRootViewController:chooseContactViewController];

  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_didTapCancelButton:"];
  chooseContactViewController2 = [(BYODContactPickerController *)self->_contactController chooseContactViewController];
  navigationItem = [chooseContactViewController2 navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  [(BYODAddEmailViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_didTapEditButton:(id)button
{
  self->_isEditing ^= 1u;
  table = [(BYODAddEmailViewController *)self table];
  [table setEditing:self->_isEditing animated:1];

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
  selfCopy = self;
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
        v22 = [(BYODAddEmailViewController *)selfCopy _getDomainMemberFromIdentifier:v8];
        v9 = [BYODAddEmailRequest alloc];
        loggedInUserAccount = selfCopy->_loggedInUserAccount;
        accountStore = [(ACAccount *)loggedInUserAccount accountStore];
        domainName = selfCopy->_domainName;
        v13 = [(NSMutableDictionary *)selfCopy->_memberEmailDictionary valueForKey:v8];
        v14 = [v13 copy];
        dsid = [v22 dsid];
        invitedEmail = [v22 invitedEmail];
        invitedPhoneNumber = [v22 invitedPhoneNumber];
        v18 = [(BYODAddEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:accountStore domain:domainName emailArray:v14 dsid:dsid withEmail:invitedEmail withPhone:invitedPhoneNumber];

        dispatch_group_enter(selfCopy->_requestGroup);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_2476C;
        v24[3] = &unk_B90B0;
        v24[4] = selfCopy;
        [(BYODAddEmailRequest *)v18 performRequestWithCallback:v24];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }
}

- (id)_getDomainMemberFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
        memberIdentifier = [v9 memberIdentifier];
        v11 = [memberIdentifier isEqualToString:identifierCopy];

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

- (void)_addDomainMemberWithContact:(id)contact withController:(id)controller
{
  contactCopy = contact;
  controllerCopy = controller;
  if ([contactCopy kind] == &dword_0 + 1)
  {
    v8 = [BYODAddMemberRequest alloc];
    loggedInUserAccount = self->_loggedInUserAccount;
    accountStore = [(ACAccount *)loggedInUserAccount accountStore];
    domain = [(BYODGetDomainResult *)self->_domainResult domain];
    name = [domain name];
    normalizedAddress = [contactCopy normalizedAddress];
    v14 = [(BYODAddMemberRequest *)v8 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name email:&stru_B9FC8 phone:normalizedAddress];
  }

  else
  {
    v15 = [BYODAddMemberRequest alloc];
    v16 = self->_loggedInUserAccount;
    accountStore = [(ACAccount *)v16 accountStore];
    domain = [(BYODGetDomainResult *)self->_domainResult domain];
    name = [domain name];
    normalizedAddress = [contactCopy address];
    v14 = [(BYODAddMemberRequest *)v15 initWithAccount:v16 accountStore:accountStore domain:name email:normalizedAddress phone:&stru_B9FC8];
  }

  v17 = v14;

  v18 = [[BYODSpinner alloc] initWithViewController:controllerCopy];
  spinner = self->_spinner;
  self->_spinner = v18;

  [(BYODSpinner *)self->_spinner startSpinner];
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_24BF4;
  v22[3] = &unk_B9100;
  objc_copyWeak(&v25, &location);
  v20 = controllerCopy;
  v23 = v20;
  v21 = contactCopy;
  v24 = v21;
  [(BYODAddMemberRequest *)v17 performRequestWithCallback:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_removeDomainMember:(id)member memberSpecifier:(id)specifier completion:(id)completion
{
  memberCopy = member;
  specifierCopy = specifier;
  completionCopy = completion;
  v11 = [BYODRemoveMemberRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domainName = self->_domainName;
  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  status = [domain status];
  v17 = [(BYODRemoveMemberRequest *)v11 initWithAccount:loggedInUserAccount accountStore:accountStore domain:domainName domainStatus:status domainMember:memberCopy];

  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_25174;
  v20[3] = &unk_B9128;
  objc_copyWeak(&v23, &location);
  v18 = specifierCopy;
  v21 = v18;
  v19 = completionCopy;
  v22 = v19;
  [(BYODRemoveMemberRequest *)v17 performRequestWithCallback:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (BOOL)_insertEmailSpecifierAfter:(id)after
{
  afterCopy = after;
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
          textField = [v9 textField];
          if ([afterCopy isEqual:textField])
          {
            text = [afterCopy text];
            v12 = [text length] == 0;

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
                  _getEmailAddressSpecifier = [(BYODAddEmailViewController *)self _getEmailAddressSpecifier];
                  [(BYODAddEmailViewController *)self insertSpecifier:_getEmailAddressSpecifier atEndOfGroup:v20];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = BYODAddEmailViewController;
  v5 = [(BYODAddEmailViewController *)&v13 tableView:view cellForRowAtIndexPath:path];
  detailTextLabel = [v5 detailTextLabel];
  [detailTextLabel setNumberOfLines:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v5 textField];
    if (textField)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"BYOD_UPDATE_EMAIL_TEXT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
      [textField setPlaceholder:v9];

      v10 = [NSString stringWithFormat:@"%@%@", @"@", self->_domainName];
      v11 = +[UIColor secondaryLabelColor];
      [textField _setSuffix:v10 withColor:v11];

      [textField setDelegate:self];
    }
  }

  return v5;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BYODAddEmailViewController *)self _isRowEditableAtIndexPath:pathCopy])
  {
    table = [(BYODAddEmailViewController *)self table];
    isEditing = [table isEditing];

    v8 = isEditing & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (style == 1)
  {
    v30 = pathCopy;
    if ([pathCopy row])
    {
      v35.receiver = self;
      v35.super_class = BYODAddEmailViewController;
      v9 = [(BYODAddEmailViewController *)&v35 tableView:viewCopy cellForRowAtIndexPath:v30];
      textField = [v9 textField];
      text = [textField text];

      specifier = [v9 specifier];
      objc_initWeak(&location, self);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_260A0;
      v32[3] = &unk_B9150;
      objc_copyWeak(&v34, &location);
      v12 = specifier;
      v33 = v12;
      v13 = objc_retainBlock(v32);
      v14 = [NSString stringWithFormat:@"%@@%@", text, self->_domainName];
      [(BYODAddEmailViewController *)self _shouldRemoveEmailAddress:v14 completion:v13];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else
    {
      v27 = [(BYODAddEmailViewController *)self specifierAtIndexPath:v30];
      text = [v27 propertyForKey:@"MEMBER_DSID"];
      v28 = [(BYODAddEmailViewController *)self _getDomainMemberFromIdentifier:text];
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

    pathCopy = v30;
  }
}

- (void)_shouldRemoveDomainMember:(id)member completion:(id)completion
{
  memberCopy = member;
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  fullName = [memberCopy fullName];
  v23 = [NSString stringWithFormat:v7, fullName];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [NSString stringWithFormat:v10, self->_domainName];
  selfCopy = self;

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
  v19 = completionCopy;
  v25 = v19;
  v20 = [UIAlertAction actionWithTitle:v18 style:2 handler:v24];

  [v13 addAction:v16];
  [v13 addAction:v20];
  [v13 setPreferredAction:v20];
  [(BYODAddEmailViewController *)selfCopy presentViewController:v13 animated:1 completion:0];
}

- (void)_shouldRemoveEmailAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_ADDRESS_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v19 = v7;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_ADDRESS_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  addressCopy = [NSString stringWithFormat:v9, addressCopy];

  v11 = [UIAlertController alertControllerWithTitle:v7 message:addressCopy preferredStyle:1];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_26950;
  v22[3] = &unk_B8CF8;
  v17 = completionCopy;
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
          textField = [v7 textField];
          text = [textField text];
          v10 = [text length] != 0;

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
  selfCopy = self;
  v9 = v5;
  v13 = v9;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v11];
}

- (void)_populateDomainMembersFromDomainResult:(id)result
{
  resultCopy = result;
  v5 = objc_alloc_init(NSMutableArray);
  domainMembers = self->_domainMembers;
  self->_domainMembers = v5;

  v7 = self->_domainMembers;
  getDomainOwnerMember = [resultCopy getDomainOwnerMember];
  [(NSMutableArray *)v7 addObject:getDomainOwnerMember];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  members = [resultCopy members];
  selfCopy = self;
  obj = members;
  v10 = [members countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        dsid = [v13 dsid];
        domain = [resultCopy domain];
        owner = [domain owner];
        dsid2 = [owner dsid];
        v18 = [dsid isEqualToString:dsid2];

        if ((v18 & 1) == 0)
        {
          [(NSMutableArray *)selfCopy->_domainMembers addObject:v13];
        }
      }

      members = obj;
      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)_populateDomainMembersFromFamily:(id)family
{
  familyCopy = family;
  v4 = objc_alloc_init(NSMutableArray);
  domainMembers = self->_domainMembers;
  self->_domainMembers = v4;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [familyCopy members];
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
        normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
        dsid = [v8 dsid];
        v11 = [NSString stringWithFormat:@"%@", dsid];
        v12 = [normalizedDSID isEqualToString:v11];

        if (v12)
        {
          v13 = [BYODUser alloc];
          v28[0] = @"dsid";
          dsid2 = [v8 dsid];
          v15 = [NSString stringWithFormat:@"%@", dsid2];
          v29[0] = v15;
          v28[1] = @"firstName";
          firstName = [v8 firstName];
          v29[1] = firstName;
          v28[2] = @"lastName";
          lastName = [v8 lastName];
          v29[2] = lastName;
          v28[3] = @"fullName";
          fullName = [v8 fullName];
          v29[3] = fullName;
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

- (BOOL)_isRowEditableAtIndexPath:(id)path
{
  v3 = [(BYODAddEmailViewController *)self specifierAtIndexPath:path];
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

- (void)chooseContactController:(id)controller didSelectContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if ([contactCopy kind] && objc_msgSend(contactCopy, "kind") != &dword_0 + 1)
  {
    v9 = +[BYODAddEmailViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_796F8(v9);
    }
  }

  else
  {
    chooseContactViewController = [controllerCopy chooseContactViewController];
    [(BYODAddEmailViewController *)self _addDomainMemberWithContact:contactCopy withController:chooseContactViewController];
  }
}

@end
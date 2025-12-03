@interface BYODDomainDetailViewController
+ (id)log;
- (BOOL)_doesMemberBelongToDomain:(id)domain;
- (BOOL)_isRowEditableAtIndexPath:(id)path;
- (BYODDomainDetailViewController)initWithAccount:(id)account domain:(id)domain domainState:(id)state;
- (id)_addDomainMemberSpecifier;
- (id)_addExistingAddressButtonSpecifierForMember:(id)member;
- (id)_catchAllEmailAddressSpecifier:(id)specifier;
- (id)_catchAllEmailEnabledForSpecifier:(id)specifier;
- (id)_domainEmailDetailSpecifierTitle;
- (id)_domainNameSpecifier;
- (id)_domainReverify;
- (id)_existingEmailAddress;
- (id)_finishSetupDomainSpecifier;
- (id)_getEmailList;
- (id)_leaveDomainSpecifier;
- (id)_manageEmailAddressSpecifier;
- (id)_memberDetailSpecifiersByIdentifier:(id)identifier withFullName:(id)name;
- (id)_resendVerificationSpecifier;
- (id)_specifierForRowIndex:(int64_t)index;
- (id)_stopUsingDomainSpecifier;
- (id)_viewSetupInstructionSpecifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_getMemberTypeByDsid:(id)dsid;
- (void)_addContentViewToOBController:(id)controller;
- (void)_addExistingAddressButtonTapped:(id)tapped;
- (void)_deleteEmailFromServerForUser:(id)user specifier:(id)specifier;
- (void)_domainStoppedNotification:(id)notification;
- (void)_editButtonTapped:(id)tapped;
- (void)_fetchAvailableSendFrom;
- (void)_finishSetupDomainTapped:(id)tapped;
- (void)_getMemberPhoto;
- (void)_leaveDomainTapped:(id)tapped;
- (void)_loadDnsRecords:(id)records;
- (void)_loadDomainDetails;
- (void)_mailSettingsTapped:(id)tapped;
- (void)_manageEmailWasTapped:(id)tapped;
- (void)_obContinueTapped:(id)tapped;
- (void)_okButtonTapped:(id)tapped;
- (void)_refreshDomainResultNotification:(id)notification;
- (void)_removeDomainMember:(id)member;
- (void)_resendVerificationEmailButtonTapped:(id)tapped;
- (void)_reverifyDomainButtonTapped:(id)tapped;
- (void)_setBYODCatchAllEmailEnabled:(id)enabled specifier:(id)specifier;
- (void)_shouldRemoveDomainMember:(id)member completion:(id)completion;
- (void)_showDomainConnectSignInAlert;
- (void)_showEmailSelectWelcomeScreen;
- (void)_showIntroScreen;
- (void)_stopUsingDomain:(id)domain;
- (void)_triggerManualDomainSetupFlow;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation BYODDomainDetailViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_31DD4;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6500 != -1)
  {
    dispatch_once(&qword_D6500, block);
  }

  v2 = qword_D64F8;

  return v2;
}

- (BYODDomainDetailViewController)initWithAccount:(id)account domain:(id)domain domainState:(id)state
{
  accountCopy = account;
  domainCopy = domain;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = BYODDomainDetailViewController;
  v12 = [(BYODDomainDetailViewController *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggedInUserAccount, account);
    objc_storeStrong(&_domainResult, domain);
    v14 = objc_alloc_init(NSMutableArray);
    v15 = _memberLastEmailSpecifier;
    _memberLastEmailSpecifier = v14;

    domain = [domainCopy domain];
    withFamily = [domain withFamily];

    if (withFamily)
    {
      v18 = objc_alloc_init(FAFetchFamilyCircleRequest);
      v19 = _byodFamilyRequest;
      _byodFamilyRequest = v18;

      [_byodFamilyRequest setCachePolicy:1];
    }

    objc_storeStrong(&v13->_domainState, state);
  }

  return v13;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = BYODDomainDetailViewController;
  [(BYODDomainDetailViewController *)&v12 viewDidLoad];
  table = [(BYODDomainDetailViewController *)self table];
  [table setAllowsSelectionDuringEditing:1];

  navigationItem = [(BYODDomainDetailViewController *)self navigationItem];
  domain = [_domainResult domain];
  name = [domain name];
  [navigationItem setTitle:name];

  domainState = self->_domainState;
  if (domainState && [(NSString *)domainState isEqualToString:@"manageEmail"])
  {
    v8 = self->_domainState;
    self->_domainState = 0;

    v9 = [(BYODDomainDetailViewController *)self specifierForID:@"BYOD_MANAGE_EMAIL_SPECIFIER_ID"];
    [(BYODDomainDetailViewController *)self _manageEmailWasTapped:v9];
  }

  domain2 = [_domainResult domain];
  withFamily = [domain2 withFamily];

  if (withFamily)
  {
    [(BYODDomainDetailViewController *)self _getMemberPhoto];
  }
}

- (id)specifiers
{
  v57 = objc_alloc_init(NSMutableArray);
  domain = [_domainResult domain];
  status = [domain status];

  domain2 = [_domainResult domain];
  verificationStatus = [domain2 verificationStatus];

  domain3 = [_domainResult domain];
  reverificationStatus = [domain3 reverificationStatus];

  domain4 = [_domainResult domain];
  if (([domain4 withEmailAddress] & 1) == 0 && (objc_msgSend(status, "isEqualToString:", @"COMPLETE") & 1) == 0)
  {
    v11 = [reverificationStatus isEqualToString:@"NOT_STARTED"];

    if (!v11)
    {
      goto LABEL_10;
    }

    domain4 = [PSSpecifier groupSpecifierWithID:@"BYOD_DOMAIN_GROUP_TITLE_ID"];
    if (([verificationStatus isEqualToString:@"IN_PROGRESS"] & 1) != 0 || objc_msgSend(status, "isEqualToString:", @"IN_PROGRESS"))
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"BYOD_DOMAIN_VERIFICATION_TITLE_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    else
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_STEPS_PAGE_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    v14 = v13;

    [domain4 setProperty:v14 forKey:PSFooterTextGroupKey];
    [v57 addObject:domain4];
  }

LABEL_10:
  if ([status isEqualToString:@"COMPLETE"])
  {
    _domainNameSpecifier = [(BYODDomainDetailViewController *)self _domainNameSpecifier];
    [v57 addObjectsFromArray:_domainNameSpecifier];
  }

  domain5 = [_domainResult domain];
  if ([domain5 withEmailAddress])
  {
    v17 = [status isEqualToString:@"COMPLETE"];

    if (v17)
    {
      goto LABEL_16;
    }

    domain5 = [(BYODDomainDetailViewController *)self _domainEmailDetailSpecifierTitle];
    [v57 addObjectsFromArray:domain5];
  }

LABEL_16:
  domain6 = [_domainResult domain];
  if ([domain6 isDomainConnect])
  {
LABEL_31:

    goto LABEL_32;
  }

  domain7 = [_domainResult domain];
  reverificationStatus2 = [domain7 reverificationStatus];
  domain11 = [reverificationStatus2 isEqualToString:@"NOT_STARTED"];
  if ((domain11 & 1) == 0)
  {
    domain8 = [_domainResult domain];
    reverificationStatus3 = [domain8 reverificationStatus];
    if (![reverificationStatus3 isEqualToString:@"VERIFICATION_SUCCESS"])
    {
LABEL_26:

LABEL_27:
      goto LABEL_31;
    }
  }

  if (![verificationStatus isEqualToString:@"NOT_STARTED"] || objc_msgSend(status, "isEqualToString:", @"COMPLETE"))
  {
    if ([verificationStatus isEqualToString:@"FAILED"])
    {
      v21 = [status isEqualToString:@"FAILED"];
      if (domain11)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    if (domain11)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = 1;
  if (domain11)
  {
LABEL_23:

    if (!v21)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v21)
  {
LABEL_30:
    domain6 = [(BYODDomainDetailViewController *)self _viewSetupInstructionSpecifier];
    [v57 addObjectsFromArray:domain6];
    goto LABEL_31;
  }

LABEL_32:
  if ([status isEqualToString:@"COMPLETE"] && ((objc_msgSend(reverificationStatus, "isEqualToString:", @"VERIFICATION_IN_PROGRESS") & 1) != 0 || objc_msgSend(reverificationStatus, "isEqualToString:", @"VERIFICATION_FAILED")))
  {
    _domainReverify = [(BYODDomainDetailViewController *)self _domainReverify];
    [v57 addObjectsFromArray:_domainReverify];
  }

  domain9 = [_domainResult domain];
  reverificationStatus4 = [domain9 reverificationStatus];
  v25 = [reverificationStatus4 isEqualToString:@"NOT_STARTED"];
  if ((v25 & 1) == 0)
  {
    domain10 = [_domainResult domain];
    domain8 = [domain10 reverificationStatus];
    if (![domain8 isEqualToString:@"VERIFICATION_SUCCESS"])
    {

LABEL_58:
      goto LABEL_59;
    }
  }

  if ([verificationStatus isEqualToString:@"NOT_STARTED"] && !objc_msgSend(status, "isEqualToString:", @"COMPLETE") || objc_msgSend(verificationStatus, "isEqualToString:", @"FAILED") && (objc_msgSend(status, "isEqualToString:", @"FAILED") & 1) != 0)
  {
    goto LABEL_45;
  }

  v26 = [verificationStatus isEqualToString:@"IN_PROGRESS"];
  if (v26)
  {
    domain11 = [_domainResult domain];
    if ([domain11 withEmailAddress])
    {

LABEL_45:
      if ((v25 & 1) == 0)
      {
      }

LABEL_57:
      domain9 = [(BYODDomainDetailViewController *)self _finishSetupDomainSpecifier];
      [v57 addObjectsFromArray:domain9];
      goto LABEL_58;
    }
  }

  if (![status isEqualToString:@"DEFAULT_EMAIL_NOT_SELECTED"])
  {
    withEmailAddress = 0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  domain12 = [_domainResult domain];
  withEmailAddress = [domain12 withEmailAddress];

  if (v26)
  {
LABEL_53:
  }

LABEL_54:
  if ((v25 & 1) == 0)
  {
  }

  if (withEmailAddress)
  {
    goto LABEL_57;
  }

LABEL_59:
  if ([status isEqualToString:@"COMPLETE"])
  {
    _manageEmailAddressSpecifier = [(BYODDomainDetailViewController *)self _manageEmailAddressSpecifier];
    [v57 addObjectsFromArray:_manageEmailAddressSpecifier];
  }

  if ([status isEqualToString:@"COMPLETE"])
  {
    domain13 = [_domainResult domain];
    isOwner = [domain13 isOwner];

    if (isOwner)
    {
      domain14 = [_domainResult domain];
      v33 = [(BYODDomainDetailViewController *)self _catchAllEmailAddressSpecifier:domain14];
      [v57 addObjectsFromArray:v33];
    }
  }

  domain15 = [_domainResult domain];
  if (![domain15 withEmailAddress])
  {
    goto LABEL_67;
  }

  v35 = [status isEqualToString:@"COMPLETE"];

  if ((v35 & 1) == 0)
  {
    domain15 = [(BYODDomainDetailViewController *)self _existingEmailAddress];
    [v57 addObjectsFromArray:domain15];
LABEL_67:
  }

  domain16 = [_domainResult domain];
  if ([domain16 withEmailAddress] && (objc_msgSend(status, "isEqualToString:", @"COMPLETE") & 1) == 0)
  {
    hasUnverifiedEmail = [_domainResult hasUnverifiedEmail];

    if (!hasUnverifiedEmail)
    {
      goto LABEL_73;
    }

    domain16 = [(BYODDomainDetailViewController *)self _resendVerificationSpecifier];
    [v57 addObjectsFromArray:domain16];
  }

LABEL_73:
  if ([status isEqualToString:@"COMPLETE"])
  {
    domain17 = [_domainResult domain];
    isOwner2 = [domain17 isOwner];

    if (isOwner2)
    {
      [(BYODDomainDetailViewController *)self _stopUsingDomainSpecifier];
    }

    else
    {
      [(BYODDomainDetailViewController *)self _leaveDomainSpecifier];
    }
    v40 = ;
    [v57 addObjectsFromArray:v40];
  }

  if ([status isEqualToString:@"COMPLETE"])
  {
    domain18 = [_domainResult domain];
    introScreenIndicator = [domain18 introScreenIndicator];
    v43 = [introScreenIndicator isEqualToString:@"NOT_SEEN"];

    if (v43)
    {
      [(BYODDomainDetailViewController *)self _showIntroScreen];
    }
  }

  v44 = +[NSNotificationCenter defaultCenter];
  [v44 removeObserver:self name:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0];

  v45 = +[NSNotificationCenter defaultCenter];
  [v45 addObserver:self selector:"_refreshDomainResultNotification:" name:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0];

  v46 = [v57 copy];
  v47 = OBJC_IVAR___PSListController__specifiers;
  v48 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v46;

  v49 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *&self->PSListController_opaque[v47];
    *buf = 138412290;
    v59 = v50;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "BYODDomainDetailViewController specifiers: returning %@ ", buf, 0xCu);
  }

  v51 = *&self->PSListController_opaque[v47];
  v52 = v51;

  return v51;
}

- (void)reloadSpecifiers
{
  v5.receiver = self;
  v5.super_class = BYODDomainDetailViewController;
  [(BYODDomainDetailViewController *)&v5 reloadSpecifiers];
  domain = [_domainResult domain];
  withFamily = [domain withFamily];

  if (withFamily)
  {
    [(BYODDomainDetailViewController *)self _getMemberPhoto];
  }
}

- (id)_domainReverify
{
  v3 = objc_alloc_init(NSMutableArray);
  v28 = [PSSpecifier groupSpecifierWithID:@"BYOD_REVERIFY_DOMAIN"];
  [v3 addObject:v28];
  domain = [_domainResult domain];
  isOwner = [domain isOwner];

  if (isOwner)
  {
    owner = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [owner localizedStringForKey:@"BYOD_DOMAIN_REVERIFY_TITLE_OWNER" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    domain2 = [_domainResult domain];
    owner = [domain2 owner];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_DOMAIN_REVERIFY_TITLE_MEMBER" value:&stru_B9FC8 table:@"AccountPreferences"];
    firstName = [owner firstName];
    v7 = [NSString stringWithFormat:v10, firstName];
  }

  v12 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v12 setIdentifier:@"reVerifySpecifierTitleID"];
  [v12 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v3 addObject:v12];
  domain3 = [_domainResult domain];
  isOwner2 = [domain3 isOwner];

  if (isOwner2)
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BYOD_REVERIFY_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v17 setButtonAction:"_reverifyDomainButtonTapped:"];
    domain4 = [_domainResult domain];
    reverificationStatus = [domain4 reverificationStatus];
    if ([reverificationStatus isEqualToString:@"VERIFICATION_IN_PROGRESS"])
    {

LABEL_7:
      v20 = &__kCFBooleanFalse;
LABEL_13:
      [v17 setProperty:v20 forKey:PSEnabledKey];
      [v3 addObject:v17];

      goto LABEL_14;
    }

    domain5 = [_domainResult domain];
    reverificationStatus2 = [domain5 reverificationStatus];
    if ([reverificationStatus2 isEqualToString:@"VERIFICATION_FAILED"])
    {
      domain6 = [_domainResult domain];
      verificationStatus = [domain6 verificationStatus];
      v27 = [verificationStatus isEqualToString:@"IN_PROGRESS"];

      if (v27)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v20 = &__kCFBooleanTrue;
    goto LABEL_13;
  }

LABEL_14:
  v25 = [v3 copy];

  return v25;
}

- (id)_resendVerificationSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_RESEND_VERIFICATION_EMAIL"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_RESEND_EMAIL_VERIFICATION_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_RESEND_EMAIL_VERIFICATION_BUTTON_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v9 setButtonAction:"_resendVerificationEmailButtonTapped:"];
  [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v3 addObject:v9];
  v10 = [v3 copy];

  return v10;
}

- (id)_addDomainMemberSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  members = [_domainResult members];
  v5 = [members countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = *v30;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(members);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        memberIdentifier = [v8 memberIdentifier];
        v10 = [(BYODDomainDetailViewController *)self _getMemberTypeByDsid:memberIdentifier];

        if (!v10)
        {
          memberIdentifier2 = [v8 memberIdentifier];
          fullName = [v8 fullName];
          v13 = [(BYODDomainDetailViewController *)self _memberDetailSpecifiersByIdentifier:memberIdentifier2 withFullName:fullName];
          [v3 addObjectsFromArray:v13];

          goto LABEL_11;
        }
      }

      v5 = [members countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  members2 = [_domainResult members];
  v15 = [members2 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(members2);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        memberIdentifier3 = [v18 memberIdentifier];
        v20 = [(BYODDomainDetailViewController *)self _getMemberTypeByDsid:memberIdentifier3];

        if (v20)
        {
          memberIdentifier4 = [v18 memberIdentifier];
          fullName2 = [v18 fullName];
          v23 = [(BYODDomainDetailViewController *)self _memberDetailSpecifiersByIdentifier:memberIdentifier4 withFullName:fullName2];
          [v3 addObjectsFromArray:v23];
        }
      }

      v15 = [members2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  return v3;
}

- (void)_getMemberPhoto
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [_domainResult members];
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        objc_initWeak(&location, self);
        v7 = +[BYODContactsManager sharedInstance];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_33910;
        v9[3] = &unk_B9338;
        objc_copyWeak(&v10, &location);
        v9[4] = v6;
        [v7 fetchAvatarImageForUser:v6 withCompletion:v9];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (id)_existingEmailAddress
{
  v3 = objc_alloc_init(NSMutableArray);
  domain = [_domainResult domain];
  withFamily = [domain withFamily];

  if (withFamily)
  {
    _addDomainMemberSpecifier = [(BYODDomainDetailViewController *)self _addDomainMemberSpecifier];
    [v3 addObjectsFromArray:_addDomainMemberSpecifier];
  }

  else
  {
    _addDomainMemberSpecifier = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    userFullName = [(ACAccount *)self->_loggedInUserAccount userFullName];
    v8 = [(BYODDomainDetailViewController *)self _memberDetailSpecifiersByIdentifier:_addDomainMemberSpecifier withFullName:userFullName];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (int64_t)_getMemberTypeByDsid:(id)dsid
{
  dsidCopy = dsid;
  domain = [_domainResult domain];
  owner = [domain owner];
  dsid = [owner dsid];
  v7 = [dsidCopy isEqualToString:dsid];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    members = [_domainResult members];
    dsidCopy = [NSPredicate predicateWithFormat:@"dsid MATCHES %@", dsidCopy];
    v11 = [members filteredArrayUsingPredicate:dsidCopy];

    if ([v11 count])
    {
      firstObject = [v11 firstObject];
      isFamilyMember = [firstObject isFamilyMember];

      if (isFamilyMember)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

- (id)_memberDetailSpecifiersByIdentifier:(id)identifier withFullName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v46 = identifierCopy;
  v51 = objc_alloc_init(NSMutableArray);
  obj = [PSSpecifier groupSpecifierWithID:identifierCopy];
  [obj setButtonAction:"_editButtonTapped:"];
  [obj setTarget:self];
  [v51 addObject:obj];
  v47 = [PSSpecifier preferenceSpecifierNamed:nameCopy target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v47 setProperty:identifierCopy forKey:@"MEMBER_DSID"];
  identifierCopy = [NSString stringWithFormat:@"MEMBER_%@", identifierCopy];
  [v47 setIdentifier:identifierCopy];

  domain = [_domainResult domain];
  LOBYTE(identifierCopy) = [domain withFamily];

  if ((identifierCopy & 1) == 0)
  {
    v8 = +[BYODContactsManager sharedInstance];
    avatarImageForMeContact = [v8 avatarImageForMeContact];

    if (!avatarImageForMeContact)
    {
      v10 = +[BYODContactsManager sharedInstance];
      aa_firstName = [(ACAccount *)self->_loggedInUserAccount aa_firstName];
      aa_lastName = [(ACAccount *)self->_loggedInUserAccount aa_lastName];
      avatarImageForMeContact = [v10 monogramWithFirstName:aa_firstName andLastName:aa_lastName];
    }

    [v47 setProperty:avatarImageForMeContact forKey:PSIconImageKey];
  }

  v13 = [(BYODDomainDetailViewController *)self _getMemberTypeByDsid:v46];
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"BYOD_FAMILY_MEMBER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
      [v47 setProperty:v15 forKey:PSTableCellSubtitleTextKey];
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"BYOD_INVITE_NON_MEMBER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
      [v47 setProperty:v15 forKey:PSTableCellSubtitleTextKey];
    }

    [v47 setProperty:&__kCFBooleanTrue forKey:@"editableSpecifier"];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [obj setProperty:v17 forKey:PSHeaderCellClassGroupKey];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"BYOD_EXISTING_EMAIL_ADDRESSES" value:&stru_B9FC8 table:@"AccountPreferences"];
    [obj setProperty:v19 forKey:@"headerTitle"];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"BYOD_DOMAIN_OWNER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v47 setProperty:v21 forKey:PSTableCellSubtitleTextKey];

    [v47 setProperty:&__kCFBooleanFalse forKey:@"editableSpecifier"];
    if (isEditing == 1)
    {
      [obj setProperty:@"YES" forKey:@"tableEditing"];
    }

    objc_storeStrong(&_emailDetailGroupSpecifierHeader, obj);
  }

LABEL_14:
  v22 = objc_opt_class();
  v23 = PSCellClassKey;
  [v47 setProperty:v22 forKey:PSCellClassKey];
  [v51 addObject:v47];
  v24 = v47;
  [_domainResult getMemberFromIdentifier:v46];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v49 = v53 = 0u;
  emails = [v49 emails];
  v25 = [emails countByEnumeratingWithState:&v52 objects:v56 count:16];
  v26 = v24;
  v43 = v24;
  if (v25)
  {
    v27 = *v53;
    v28 = PSTableCellSubtitleTextKey;
    v26 = v24;
    do
    {
      v29 = 0;
      v30 = v26;
      do
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(emails);
        }

        v31 = *(*(&v52 + 1) + 8 * v29);
        email = [v31 email];
        v26 = [PSSpecifier preferenceSpecifierNamed:email target:self set:0 get:0 detail:0 cell:4 edit:0, v43];

        status = [v31 status];
        LODWORD(email) = [status isEqualToString:@"VERIFIED"];

        v34 = [NSBundle bundleForClass:objc_opt_class()];
        if (email)
        {
          [v34 localizedStringForKey:@"BYOD_EMAIL_VERIFIED_STATUS_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
        }

        else
        {
          [v34 localizedStringForKey:@"BYOD_EMAIL_PENDING_STATUS_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
        }
        v35 = ;
        [v26 setProperty:v35 forKey:v28];

        [v26 setProperty:objc_opt_class() forKey:v23];
        memberIdentifier = [v49 memberIdentifier];
        [v26 setProperty:memberIdentifier forKey:@"MEMBER_DSID"];

        [v26 setProperty:&__kCFBooleanTrue forKey:@"editableSpecifier"];
        [v51 addObject:v26];

        v29 = v29 + 1;
        v30 = v26;
      }

      while (v25 != v29);
      v25 = [emails countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v25);
  }

  [_memberLastEmailSpecifier addObject:v26];
  if (isEditing == 1)
  {
    emails2 = [v49 emails];
    v38 = [emails2 count];
    LODWORD(v38) = v38 < [_domainResult maxEmailsPerUser];

    if (v38)
    {
      memberIdentifier2 = [v49 memberIdentifier];
      v40 = [(BYODDomainDetailViewController *)self _addExistingAddressButtonSpecifierForMember:memberIdentifier2];

      [v51 addObject:v40];
    }
  }

  v41 = [v51 copy];

  return v41;
}

- (id)_domainEmailDetailSpecifierTitle
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [PSSpecifier groupSpecifierWithID:@"BYOD_EMAIL_DETAIL_TITLE_GROUP_ID"];
  if ([_domainResult hasUnverifiedEmail])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BYOD_UNVERIFIED_EMAILS_SPECIFIER_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
LABEL_9:
    v14 = v5;
    goto LABEL_10;
  }

  domain = [_domainResult domain];
  verificationStatus = [domain verificationStatus];
  v8 = [verificationStatus isEqualToString:@"NOT_STARTED"];

  if (v8)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BYOD_VERIFIED_EMAILS_DOMAIN_NOT_VERIFIED_SPECIFIER_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    goto LABEL_9;
  }

  domain2 = [_domainResult domain];
  verificationStatus2 = [domain2 verificationStatus];
  if ([verificationStatus2 isEqualToString:@"IN_PROGRESS"])
  {

LABEL_8:
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BYOD_DOMAIN_VERIFICATION_TITLE_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    goto LABEL_9;
  }

  domain3 = [_domainResult domain];
  verificationStatus3 = [domain3 verificationStatus];
  v13 = [verificationStatus3 isEqualToString:@"FAILED"];

  if (v13)
  {
    goto LABEL_8;
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v4 localizedStringForKey:@"BYOD_VERIFIED_EMAILS_DOMAIN_VERIFIED_SPECIFIER_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain4 = [_domainResult domain];
  name = [domain4 name];
  v14 = [NSString stringWithFormat:v17, name];

LABEL_10:
  [v3 setProperty:v14 forKey:PSFooterTextGroupKey];
  [v2 addObject:v3];
  v15 = [v2 copy];

  return v15;
}

- (id)_viewSetupInstructionSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  domain = [_domainResult domain];
  isDomainConnect = [domain isDomainConnect];

  if ((isDomainConnect & 1) == 0)
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"BYOD_DOMAIN_VIEW_INSTRUCTION_GROUP_SPECIFIER"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_VIEW_INSTRUCTION_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v3 addObject:v6];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_VIEW_INSTRUCTION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v11 setIdentifier:@"BYOD_DOMAIN_VIEW_INSTRUCTION_SPECIFIER_ID"];
    [v11 setControllerLoadAction:"_viewInstructionSpecifierWasTapped:"];
    [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
    if ([_domainResult hasUnverifiedEmail])
    {
      v12 = [NSNumber numberWithBool:0];
      [v11 setProperty:v12 forKey:PSEnabledKey];
    }

    else
    {
      v12 = [NSNumberFormatter localizedStringFromNumber:&off_C0590 numberStyle:0];
      [v11 setProperty:v12 forKey:PSBadgeNumberKey];
    }

    [v3 addObject:v11];
    [(BYODDomainDetailViewController *)self setViewInstructionSpecifier:v11];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)_loadDnsRecords:(id)records
{
  recordsCopy = records;
  dnsRecords = [(BYODDomainDetailViewController *)self dnsRecords];
  v6 = [dnsRecords count];

  if (v6)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3543C;
    v15[3] = &unk_B8EB0;
    v15[4] = self;
    v7 = +[EFScheduler mainThreadScheduler];
    [v7 performBlock:v15];
  }

  else
  {
    [recordsCopy byod_startSpinner];
    objc_initWeak(&location, self);
    v8 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "load DNS records", buf, 2u);
    }

    v9 = [BYODGetDnsRecordsRequest alloc];
    loggedInUserAccount = self->_loggedInUserAccount;
    accountStore = [(ACAccount *)loggedInUserAccount accountStore];
    domain = [_domainResult domain];
    name = [domain name];
    v14 = [(BYODGetDnsRecordsRequest *)v9 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3503C;
    v16[3] = &unk_B9360;
    objc_copyWeak(&v18, &location);
    v17 = recordsCopy;
    [(BYODGetDnsRecordsRequest *)v14 performRequestWithCallback:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (id)_finishSetupDomainSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = &ACUIDescriptionFromEmailAddress_ptr;
  v29 = [PSSpecifier groupSpecifierWithID:@"BYOD_FINISH_SETUP_GROUP_ID"];
  if ([_domainResult hasUnverifiedEmail])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BYOD_FINISH_SETUP_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v29 setProperty:v6 forKey:PSFooterTextGroupKey];
LABEL_3:

LABEL_4:
    goto LABEL_5;
  }

  domain = [_domainResult domain];
  verificationStatus = [domain verificationStatus];
  v15 = [verificationStatus isEqualToString:@"NOT_STARTED"];

  if (v15)
  {
    domain2 = [_domainResult domain];
    isDomainConnect = [domain2 isDomainConnect];

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (isDomainConnect)
    {
      [v5 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_VERIFICATION_NOT_STARTED_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    else
    {
      [v5 localizedStringForKey:@"DOMAIN_MANUAL_SETUP_FINISH_SETUP_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    }
    v6 = ;
    [v29 setProperty:v6 forKey:PSFooterTextGroupKey];
    goto LABEL_3;
  }

  domain3 = [_domainResult domain];
  status = [domain3 status];
  v20 = [status isEqualToString:@"FAILED"];

  if (v20)
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_VERIFICATION_FAILED_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    domain4 = [_domainResult domain];
    name = [domain4 name];
    v5 = [NSString stringWithFormat:v22, name];

    [v29 setProperty:v5 forKey:PSFooterTextGroupKey];
    v4 = &ACUIDescriptionFromEmailAddress_ptr;
    goto LABEL_4;
  }

LABEL_5:
  [v3 addObject:v29];
  v7 = v4[307];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_FINISH_SETUP_SPECIFIER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v10 setButtonAction:"_finishSetupDomainTapped:"];
  if (([_domainResult hasUnverifiedEmail] & 1) == 0)
  {
    domain5 = [_domainResult domain];
    verificationStatus2 = [domain5 verificationStatus];
    if ([verificationStatus2 isEqualToString:@"IN_PROGRESS"])
    {
    }

    else
    {
      domain6 = [_domainResult domain];
      isDomainConnect2 = [domain6 isDomainConnect];

      if (isDomainConnect2)
      {
        goto LABEL_16;
      }
    }
  }

  [v10 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
LABEL_16:
  [v10 setIdentifier:@"FINISH_DOMAIN_SETUP_SPECIFIER_ID"];
  [(BYODDomainDetailViewController *)self setFinishSetupSpecifier:v10];
  [v3 addObject:v10];
  v27 = [v3 copy];

  return v27;
}

- (id)_domainNameSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_DOMAIN_NAME_SPECIFIER_ID"];
  domain = [_domainResult domain];
  isOwner = [domain isOwner];

  if (isOwner)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_TITLE_ADD" value:&stru_B9FC8 table:@"AccountPreferences"];

    domain2 = [_domainResult domain];
    isDomainPurchased = [domain2 isDomainPurchased];

    if (isDomainPurchased)
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v35 = v4;
      v12 = [v11 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_TITLE_PURCHASE" value:&stru_B9FC8 table:@"AccountPreferences"];
      domain3 = [_domainResult domain];
      domainPurchaseProviderName = [domain3 domainPurchaseProviderName];
      v15 = [NSString stringWithFormat:v12, domainPurchaseProviderName];

      v8 = v15;
      v4 = v35;
    }

    [v4 setProperty:v8 forKey:PSFooterTextGroupKey];
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v8 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_TITLE_MEMBER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v4 setProperty:v16 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v4];
  domain4 = [_domainResult domain];
  name = [domain4 name];
  v19 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:4 edit:0];

  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_SUBTITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v19 setProperty:v21 forKey:PSTableCellSubtitleTextKey];

  [v19 setProperty:objc_opt_class() forKey:PSCellClassKey];
  domain5 = [_domainResult domain];
  name2 = [domain5 name];
  [v19 setIdentifier:name2];

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [UIImage imageNamed:@"CustomDomainRowIconL.png" inBundle:v24];

  [v19 setProperty:v25 forKey:PSIconImageKey];
  PSTextViewInsets();
  v27 = v26;
  v29 = v28;
  [v25 size];
  v31 = v29 + v27 + v30;
  *&v31 = v31;
  v32 = [NSNumber numberWithFloat:v31];
  [v19 setProperty:v32 forKey:PSTableCellHeightKey];
  [v3 addObject:v19];
  v33 = [v3 copy];

  return v33;
}

- (id)_manageEmailAddressSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_MANAGE_DOMAIN_GROUP"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_MANAGE_DOMAIN_EMAIL_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_MANAGE_DOMAIN_EMAIL_SPECIFIER_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v9 setIdentifier:@"BYOD_MANAGE_EMAIL_SPECIFIER_ID"];
  [v9 setControllerLoadAction:"_manageEmailWasTapped:"];
  [v3 addObject:v9];
  v10 = [v3 copy];

  return v10;
}

- (id)_catchAllEmailAddressSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [PSSpecifier groupSpecifierWithID:@"BYOD_CATCH_ALL_GROUP_ID"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  selfCopy = self;
  v7 = [v6 localizedStringForKey:@"BYOD_CATCH_ALL_EMAIL_FOOTER_LEARN_MORE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_CATCH_ALL_EMAIL_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  name = [specifierCopy name];
  v11 = [NSString stringWithFormat:v9, name];
  v12 = [NSString stringWithFormat:@"%@ %@", v11, v7];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v5 setProperty:v14 forKey:PSFooterCellClassGroupKey];

  [v5 setProperty:v12 forKey:PSFooterHyperlinkViewTitleKey];
  v26.location = [v12 rangeOfString:v7];
  v15 = NSStringFromRange(v26);
  [v5 setProperty:v15 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"BYOD_CATCH_ALL_EMAIL_FOOTER_LEARN_MORE_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v5 setProperty:v17 forKey:PSFooterHyperlinkViewURLKey];

  [v4 addObject:v5];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"BYOD_CATCH_ALL_EMAIL_SPECIFIER_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:selfCopy set:"_setBYODCatchAllEmailEnabled:specifier:" get:"_catchAllEmailEnabledForSpecifier:" detail:0 cell:6 edit:0];

  [v4 addObject:v20];
  v21 = [v4 copy];

  return v21;
}

- (id)_leaveDomainSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v16 = +[PSSpecifier emptyGroupSpecifier];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_FOOTER_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain = [_domainResult domain];
  name = [domain name];
  v8 = [NSString stringWithFormat:v5, name];

  [v16 setProperty:v8 forKey:PSFooterTextGroupKey];
  [v3 addObject:v16];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_BUTTON_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [PSSpecifier deleteButtonSpecifierWithName:v10 target:self action:"_leaveDomainTapped:"];

  [v11 setProperty:&off_C0590 forKey:PSAlignmentKey];
  [v3 addObject:v11];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self name:@"STOP_DOMAIN_NOTIFICATION" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_domainStoppedNotification:" name:@"STOP_DOMAIN_NOTIFICATION" object:0];

  v14 = [v3 copy];

  return v14;
}

- (id)_stopUsingDomainSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v16 = [PSSpecifier groupSpecifierWithID:@"BYOD_STOP_USING_DOMAIN_GROUP"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_STOP_USING_DOMAIN_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain = [_domainResult domain];
  name = [domain name];
  v8 = [NSString stringWithFormat:v5, name];

  [v16 setProperty:v8 forKey:PSFooterTextGroupKey];
  [v3 addObject:v16];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_STOP_USING_DOMAIN_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [PSSpecifier deleteButtonSpecifierWithName:v10 target:self action:"_stopUsingDomain:"];

  [v11 setProperty:&off_C0590 forKey:PSAlignmentKey];
  [v3 addObject:v11];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self name:@"STOP_DOMAIN_NOTIFICATION" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_domainStoppedNotification:" name:@"STOP_DOMAIN_NOTIFICATION" object:0];

  v14 = [v3 copy];

  return v14;
}

- (id)_addExistingAddressButtonSpecifierForMember:(id)member
{
  memberCopy = member;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_ADD_EXISTING_ADDRESS_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setIdentifier:@"ADD_EXISTING_ADDRESS_SPECIFIER_ID"];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v7 setButtonAction:"_addExistingAddressButtonTapped:"];
  [v7 setProperty:memberCopy forKey:@"MEMBER_DSID"];
  [v7 setProperty:&__kCFBooleanFalse forKey:@"editableSpecifier"];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = BYODDomainDetailViewController;
  v4 = [(BYODDomainDetailViewController *)&v11 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  identifier = [specifier identifier];
  v7 = [identifier isEqualToString:@"reVerifySpecifierTitleID"];

  if (v7)
  {
    titleLabel = [v4 titleLabel];
    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [titleLabel setFont:v9];
  }

  return v4;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = pathCopy;
  if (style == 1)
  {
    if ([pathCopy row])
    {
      v9 = [(BYODDomainDetailViewController *)self _specifierForRowIndex:[(BYODDomainDetailViewController *)self indexForIndexPath:v8]];
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"BYOD_DELETE_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"BYOD_DELETE_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
      v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:0];

      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_372EC;
      v26[3] = &unk_B9388;
      v20 = v9;
      v27 = v20;
      selfCopy = self;
      v21 = [UIAlertAction actionWithTitle:v19 style:2 handler:v26];

      [v14 addAction:v17];
      [v14 addAction:v21];
      [v14 setPreferredAction:v21];
      [(BYODDomainDetailViewController *)self presentViewController:v14 animated:1 completion:0];
    }

    else
    {
      v20 = [(BYODDomainDetailViewController *)self specifierAtIndex:[(BYODDomainDetailViewController *)self indexForIndexPath:v8]];
      v22 = _domainResult;
      v23 = [v20 propertyForKey:@"MEMBER_DSID"];
      v24 = [v22 getMemberFromIdentifier:v23];

      objc_initWeak(&location, self);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_37280;
      v29[3] = &unk_B9150;
      objc_copyWeak(&v31, &location);
      v14 = v24;
      v30 = v14;
      v25 = objc_retainBlock(v29);
      [(BYODDomainDetailViewController *)self _shouldRemoveDomainMember:v14 completion:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_specifierForRowIndex:(int64_t)index
{
  v5 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*&self->PSListController_opaque[v5] objectAtIndex:index];
  }

  return v6;
}

- (void)_showEmailSelectWelcomeScreen
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v3 localizedStringForKey:@"BYOD_DOMAIN_READY_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_DOMAIN_READY_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain = [_domainResult domain];
  name = [domain name];
  v8 = [NSString stringWithFormat:v5, name];

  if (MUISolariumFeatureEnabled())
  {
    v9 = [[OBWelcomeController alloc] initWithTitle:v21 detailText:v8 symbolName:@"envelope.badge.person.crop.fill" contentLayout:2];
    v10 = _welcomeController;
    _welcomeController = v9;
  }

  else
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIImage imageNamed:@"CustomDomainIcon.png" inBundle:v11];

    v12 = [[OBWelcomeController alloc] initWithTitle:v21 detailText:v8 icon:v10 contentLayout:2];
    v13 = _welcomeController;
    _welcomeController = v12;
  }

  v14 = +[OBBoldTrayButton boldButton];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CONTINUE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v14 setTitle:v16 forState:0];

  [v14 addTarget:self action:"_obContinueTapped:" forControlEvents:64];
  buttonTray = [_welcomeController buttonTray];
  [buttonTray addButton:v14];

  v18 = [BYODSelectDefaultEmailNavController alloc];
  v19 = [(BYODSelectDefaultEmailNavController *)v18 initWithRootViewController:_welcomeController];
  v20 = _selectDefaultEmailNavController;
  _selectDefaultEmailNavController = v19;

  [_selectDefaultEmailNavController setByodDelegate:self];
  [(BYODDomainDetailViewController *)self presentViewController:_selectDefaultEmailNavController animated:1 completion:0];
}

- (void)_manageEmailWasTapped:(id)tapped
{
  v4 = [BYODEmailAddressManageViewController alloc];
  v5 = [(BYODEmailAddressManageViewController *)v4 initWithAccount:self->_loggedInUserAccount domain:_domainResult];
  [(BYODDomainDetailViewController *)self showController:?];
}

- (void)_leaveDomainTapped:(id)tapped
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain = [_domainResult domain];
  name = [domain name];
  v8 = [NSString stringWithFormat:v5, name];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain2 = [_domainResult domain];
  name2 = [domain2 name];
  v13 = [NSString stringWithFormat:v10, name2];

  v14 = [UIAlertController alertControllerWithTitle:v8 message:v13 preferredStyle:1];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:0];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_37BC4;
  v21[3] = &unk_B8CD0;
  v21[4] = self;
  v20 = [UIAlertAction actionWithTitle:v19 style:2 handler:v21];

  [v14 addAction:v17];
  [v14 addAction:v20];
  [v14 setPreferredAction:v20];
  [(BYODDomainDetailViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_stopUsingDomain:(id)domain
{
  v4 = [BYODStopUsingDomainViewController alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  domain = [_domainResult domain];
  v8 = [(BYODStopUsingDomainViewController *)v4 initWithAccount:loggedInUserAccount domain:domain];

  v7 = [[UINavigationController alloc] initWithRootViewController:v8];
  [(BYODDomainDetailViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_finishSetupDomainTapped:(id)tapped
{
  domain = [_domainResult domain];
  verificationStatus = [domain verificationStatus];
  if ([verificationStatus isEqualToString:@"NOT_STARTED"])
  {

LABEL_4:
    domain2 = [_domainResult domain];
    isDomainConnect = [domain2 isDomainConnect];

    if (isDomainConnect)
    {
      domain3 = [_domainResult domain];
      dnsProviderName = [domain3 dnsProviderName];

      if ([(BYODConfirmFinishSetupViewController *)dnsProviderName length])
      {
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
        v15 = [NSString stringWithFormat:v14, dnsProviderName];

        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
        domain4 = [_domainResult domain];
        name = [domain4 name];
        v20 = [NSString stringWithFormat:v17, name, dnsProviderName];

        v21 = [UIAlertController alertControllerWithTitle:v15 message:v20 preferredStyle:1];
        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
        v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];

        objc_initWeak(location, self);
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"CONTINUE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_386B4;
        v38[3] = &unk_B9038;
        objc_copyWeak(&v39, location);
        v27 = [UIAlertAction actionWithTitle:v26 style:0 handler:v38];

        [v21 addAction:v24];
        [v21 addAction:v27];
        [v21 setPreferredAction:v27];
        [(BYODDomainDetailViewController *)self presentViewController:v21 animated:1 completion:0];

        objc_destroyWeak(&v39);
        objc_destroyWeak(location);
      }

      else
      {
        v15 = +[BYODDomainDetailViewController log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription = [_domainResult ef_publicDescription];
          LODWORD(location[0]) = 138412290;
          *(location + 4) = ef_publicDescription;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "dns provider name not present. domainInfo %@", location, 0xCu);
        }
      }
    }

    else
    {
      v28 = [BYODConfirmFinishSetupViewController alloc];
      domain5 = [_domainResult domain];
      name2 = [domain5 name];
      dnsProviderName = [(BYODConfirmFinishSetupViewController *)v28 initWithDomainName:name2 acAccount:self->_loggedInUserAccount];

      domain6 = [_domainResult domain];
      if ([domain6 withEmailAddress])
      {
        hasEmails = [_domainResult hasEmails];

        if (hasEmails)
        {
          [(BYODConfirmFinishSetupViewController *)dnsProviderName setShowDefaultEmailSelect:1];
        }
      }

      else
      {
      }

      v33 = [[BYODSelectDefaultEmailNavController alloc] initWithRootViewController:dnsProviderName];
      v34 = _selectDefaultEmailNavController;
      _selectDefaultEmailNavController = v33;

      [_selectDefaultEmailNavController setByodDelegate:self];
      [_selectDefaultEmailNavController setModalInPresentation:1];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_388B0;
      v37[3] = &unk_B8EB0;
      v37[4] = self;
      v35 = +[EFScheduler mainThreadScheduler];
      [v35 performBlock:v37];
    }

    return;
  }

  domain7 = [_domainResult domain];
  verificationStatus2 = [domain7 verificationStatus];
  v8 = [verificationStatus2 isEqualToString:@"FAILED"];

  if (v8)
  {
    goto LABEL_4;
  }

  [(BYODDomainDetailViewController *)self _fetchAvailableSendFrom];
}

- (void)_obContinueTapped:(id)tapped
{
  v14 = +[BYODIcon customEmailDomainIcon];
  v4 = [BYODSelectEmailTableViewController alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_CHOOSE_DEFAULT_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_CHOOSE_DEFAULT_EMAIL_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  loggedInUserAccount = self->_loggedInUserAccount;
  v10 = _emailList;
  domain = [_domainResult domain];
  name = [domain name];
  v13 = [(BYODSelectEmailTableViewController *)v4 initWithTitle:v6 detailText:v8 icon:v14 adoptTableViewScrollView:1 userAccount:loggedInUserAccount emailListResponse:v10 domainName:name];

  [_selectDefaultEmailNavController pushViewController:v13 animated:1];
}

- (void)_editButtonTapped:(id)tapped
{
  v4 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "editing email address", buf, 2u);
  }

  isEditing ^= 1u;
  table = [(BYODDomainDetailViewController *)self table];
  [table setEditing:isEditing animated:1];

  v34 = [_emailDetailGroupSpecifierHeader propertyForKey:@"headerView"];
  [v34 toggleDoneButton:isEditing];
  if (isEditing == 1)
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_39038;
    v49[3] = &unk_B93D0;
    v49[4] = self;
    v6 = objc_retainBlock(v49);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    members = [_domainResult members];
    obj = members;
    v8 = [members countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v8)
    {
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          dsid = [v11 dsid];
          domain = [_domainResult domain];
          owner = [domain owner];
          dsid2 = [owner dsid];
          v16 = [dsid isEqualToString:dsid2];

          if (v16)
          {
            (v6[2])(v6, v11);
          }
        }

        members = obj;
        v8 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v8);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    members2 = [_domainResult members];
    obja = members2;
    v18 = [members2 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v18)
    {
      v19 = *v42;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(*(&v41 + 1) + 8 * j);
          dsid3 = [v21 dsid];
          domain2 = [_domainResult domain];
          owner2 = [domain2 owner];
          dsid4 = [owner2 dsid];
          v26 = [dsid3 isEqualToString:dsid4];

          if ((v26 & 1) == 0)
          {
            (v6[2])(v6, v21);
          }
        }

        members2 = obja;
        v18 = [obja countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v28 = [v27 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v28)
    {
      v29 = *v38;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v37 + 1) + 8 * k);
          identifier = [v31 identifier];
          v33 = [identifier containsString:@"ADD_EXISTING_ADDRESS_SPECIFIER_ID"];

          if (v33)
          {
            [(BYODDomainDetailViewController *)self removeSpecifier:v31 animated:1];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v28);
    }
  }
}

- (void)_addExistingAddressButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "adding email address", v9, 2u);
  }

  v6 = [BYODUpdateEmailViewController alloc];
  v7 = [(BYODUpdateEmailViewController *)v6 initWithAccount:self->_loggedInUserAccount domain:_domainResult addAlias:0];
  [(BYODUpdateEmailViewController *)v7 setCallingSpecifier:tappedCopy];
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(BYODDomainDetailViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_resendVerificationEmailButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = _byodSpinner;
  if (!_byodSpinner)
  {
    v6 = [[BYODSpinner alloc] initWithViewController:self];
    v7 = _byodSpinner;
    _byodSpinner = v6;

    v5 = _byodSpinner;
  }

  [v5 startSpinner];
  objc_initWeak(&location, self);
  v8 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "user tapped resend verification email", buf, 2u);
  }

  v9 = [BYODResendVerificationEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain = [_domainResult domain];
  name = [domain name];
  v14 = [(BYODResendVerificationEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_394B4;
  v15[3] = &unk_B91F0;
  objc_copyWeak(&v16, &location);
  [(BYODResendVerificationEmailRequest *)v14 performRequestWithCallback:v15];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)_reverifyDomainButtonTapped:(id)tapped
{
  domain = [_domainResult domain];
  isDomainConnect = [domain isDomainConnect];

  if (isDomainConnect)
  {

    [(BYODDomainDetailViewController *)self _showDomainConnectSignInAlert];
  }

  else
  {

    [(BYODDomainDetailViewController *)self _triggerManualDomainSetupFlow];
  }
}

- (void)_triggerManualDomainSetupFlow
{
  v3 = [BYODDomainManualSetupViewController alloc];
  domain = [_domainResult domain];
  name = [domain name];
  loggedInUserAccount = [(BYODDomainDetailViewController *)self loggedInUserAccount];
  v7 = [(BYODDomainManualSetupViewController *)v3 initWithDomainName:name acAccount:loggedInUserAccount showRedBadge:0];

  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  v11 = v8;
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:&v10];
}

- (void)_showDomainConnectSignInAlert
{
  domain = [_domainResult domain];
  domainConnectServerUrl = [domain domainConnectServerUrl];

  if ([domainConnectServerUrl length])
  {
    v23 = [[NSURL alloc] initWithString:domainConnectServerUrl];
    domain2 = [_domainResult domain];
    dnsProviderName = [domain2 dnsProviderName];

    domain3 = [_domainResult domain];
    name = [domain3 name];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v24 = [NSString stringWithFormat:v8, dnsProviderName];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = [NSString stringWithFormat:v10, name, dnsProviderName];

    v12 = [UIAlertController alertControllerWithTitle:v24 message:v11 preferredStyle:1];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CONTINUE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_3A078;
    v29[3] = &unk_B9388;
    v18 = v23;
    v30 = v18;
    selfCopy = self;
    v19 = [UIAlertAction actionWithTitle:v17 style:0 handler:v29];

    [v12 addAction:v15];
    [v12 addAction:v19];
    [v12 setPreferredAction:v19];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_3A0FC;
    v27[3] = &unk_B9060;
    v27[4] = self;
    v20 = v12;
    v28 = v20;
    v21 = +[EFScheduler mainThreadScheduler];
    [v21 performBlock:v27];
  }

  else
  {
    v18 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [_domainResult ef_publicDescription];
      *buf = 138412290;
      v33 = ef_publicDescription;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Domain connect URL not present. domain info %@", buf, 0xCu);
    }
  }
}

- (id)_catchAllEmailEnabledForSpecifier:(id)specifier
{
  domain = [_domainResult domain];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [domain catchAllEnabled]);

  return v4;
}

- (void)_setBYODCatchAllEmailEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    bOOLValue = [enabledCopy BOOLValue];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "catch all switch toggled: %{BOOL}d", buf, 8u);
  }

  if ([enabledCopy BOOLValue])
  {
    v9 = [BYODEnableCatchAllEmailRequest alloc];
    loggedInUserAccount = self->_loggedInUserAccount;
    accountStore = [(ACAccount *)loggedInUserAccount accountStore];
    domain = [_domainResult domain];
    name = [domain name];
    v14 = [(BYODEnableCatchAllEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name];

    v15 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_3A4F8;
    v22[3] = &unk_B9418;
    v22[4] = self;
    v22[5] = specifierCopy;
    v22[6] = enabledCopy;
    [(BYODEnableCatchAllEmailRequest *)v14 performRequestWithCallback:v22];
  }

  else
  {
    v16 = [BYODDisableCatchAllEmailRequest alloc];
    v17 = self->_loggedInUserAccount;
    accountStore2 = [(ACAccount *)v17 accountStore];
    domain2 = [_domainResult domain];
    name2 = [domain2 name];
    v14 = [(BYODDisableCatchAllEmailRequest *)v16 initWithAccount:v17 accountStore:accountStore2 domain:name2];

    v15 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_3A658;
    v21[3] = &unk_B9418;
    v21[4] = self;
    v21[5] = specifierCopy;
    v21[6] = enabledCopy;
    [(BYODEnableCatchAllEmailRequest *)v14 performRequestWithCallback:v21];
  }
}

- (void)_loadDomainDetails
{
  v3 = [BYODGetDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain = [_domainResult domain];
  name = [domain name];
  v8 = [(BYODGetDomainRequest *)v3 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3A8EC;
  v9[3] = &unk_B90B0;
  v9[4] = self;
  [(BYODGetDomainRequest *)v8 performRequestWithCallback:v9];
}

- (void)_fetchAvailableSendFrom
{
  if (!_byodSpinner)
  {
    v3 = [[BYODSpinner alloc] initWithViewController:self];
    v4 = _byodSpinner;
    _byodSpinner = v3;
  }

  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:&stru_B9438];

  v6 = [BYODListEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  v9 = [(BYODListEmailRequest *)v6 initWithAccount:loggedInUserAccount accountStore:accountStore];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3AB98;
  v10[3] = &unk_B9480;
  v10[4] = self;
  [(BYODListEmailRequest *)v9 performRequestWithCallback:v10];
}

- (void)_deleteEmailFromServerForUser:(id)user specifier:(id)specifier
{
  userCopy = user;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_3B018;
  v27[3] = &unk_B8EB0;
  specifierCopy = specifier;
  v28 = specifierCopy;
  v21 = userCopy;
  v22 = specifierCopy;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v27];

  v9 = [BYODDeleteEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain = [_domainResult domain];
  name = [domain name];
  name2 = [specifierCopy name];
  v14 = [NSMutableArray arrayWithObject:name2];
  dsid = [userCopy dsid];
  invitedEmail = [userCopy invitedEmail];
  invitedPhoneNumber = [userCopy invitedPhoneNumber];
  v18 = [(BYODDeleteEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name emailArray:v14 dsid:dsid invitedEmail:invitedEmail invitedPhone:invitedPhoneNumber];

  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_3B020;
  v23[3] = &unk_B94A8;
  v19 = v22;
  v24 = v19;
  objc_copyWeak(&v25, &location);
  [(BYODDeleteEmailRequest *)v18 performRequestWithCallback:v23];
  objc_destroyWeak(&v25);

  objc_destroyWeak(&location);
}

- (BOOL)_isRowEditableAtIndexPath:(id)path
{
  v3 = [(BYODDomainDetailViewController *)self specifierAtIndexPath:path];
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

- (void)_shouldRemoveDomainMember:(id)member completion:(id)completion
{
  memberCopy = member;
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  fullName = [memberCopy fullName];
  v25 = [NSString stringWithFormat:v7, fullName];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  domain = [_domainResult domain];
  name = [domain name];
  v13 = [NSString stringWithFormat:v10, name];
  selfCopy = self;

  v15 = [UIAlertController alertControllerWithTitle:v25 message:v13 preferredStyle:1];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:0];

  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_3B780;
  v26[3] = &unk_B8CF8;
  v21 = completionCopy;
  v27 = v21;
  v22 = [UIAlertAction actionWithTitle:v20 style:2 handler:v26];

  [v15 addAction:v18];
  [v15 addAction:v22];
  [v15 setPreferredAction:v22];
  [(BYODDomainDetailViewController *)selfCopy presentViewController:v15 animated:1 completion:0];
}

- (void)_removeDomainMember:(id)member
{
  memberCopy = member;
  v5 = [BYODRemoveMemberRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain = [_domainResult domain];
  name = [domain name];
  domain2 = [_domainResult domain];
  status = [domain2 status];
  v12 = [(BYODRemoveMemberRequest *)v5 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name domainStatus:status domainMember:memberCopy];

  v13 = _byodSpinner;
  if (!_byodSpinner)
  {
    v14 = [[BYODSpinner alloc] initWithViewController:self];
    v15 = _byodSpinner;
    _byodSpinner = v14;

    v13 = _byodSpinner;
  }

  [v13 startSpinner];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_3B9A0;
  v16[3] = &unk_B9308;
  objc_copyWeak(&v17, &location);
  [(BYODRemoveMemberRequest *)v12 performRequestWithCallback:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)safariViewControllerDidFinish:(id)finish
{
  v4 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "safari window dismissed", v5, 2u);
  }

  [(BYODDomainDetailViewController *)self _loadDomainDetails];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BYODDomainDetailViewController;
  [(BYODDomainDetailViewController *)&v4 dealloc];
}

- (void)_domainStoppedNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3BD2C;
  v6[3] = &unk_B8EB0;
  v6[4] = self;
  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:v6];
}

- (void)_refreshDomainResultNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo valueForKey:@"domainData"];
  objc_storeStrong(&_domainResult, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3BEAC;
  v8[3] = &unk_B8EB0;
  v8[4] = self;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v8];
}

- (void)_showIntroScreen
{
  v3 = _domainResult;
  normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v5 = [v3 hasEmailsForDsid:normalizedDSID];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5)
  {
    v23 = [v6 localizedStringForKey:@"BYOD_INTRO_TITLE_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
    _getEmailList = [(BYODDomainDetailViewController *)self _getEmailList];
    v10 = [NSString stringWithFormat:v8, _getEmailList];
  }

  else
  {
    v23 = [v6 localizedStringForKey:@"BYOD_INTRO_TITLE_NO_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_INTRO_MESSAGE_NO_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
    _getEmailList = [_domainResult domain];
    name = [_getEmailList name];
    v10 = [NSString stringWithFormat:v8, name];
  }

  if (!MUISolariumFeatureEnabled())
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [UIImage imageNamed:@"CustomDomainIcon.png" inBundle:v13];

    v12 = [[OBWelcomeController alloc] initWithTitle:v23 detailText:v10 icon:v14 contentLayout:2];
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [[OBWelcomeController alloc] initWithTitle:v23 detailText:v10 symbolName:@"envelope.badge.person.crop.fill" contentLayout:2];
  if (v5)
  {
LABEL_8:
    [(BYODDomainDetailViewController *)self _addContentViewToOBController:v12];
  }

LABEL_9:
  v15 = +[OBBoldTrayButton boldButton];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v15 setTitle:v17 forState:0];

  [v15 addTarget:self action:"_okButtonTapped:" forControlEvents:64];
  buttonTray = [v12 buttonTray];
  [buttonTray addButton:v15];

  if (v5)
  {
    v19 = +[OBLinkTrayButton linkButton];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"BYOD_MAIL_SETTINGS_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v19 setTitle:v21 forState:0];

    [v19 addTarget:self action:"_mailSettingsTapped:" forControlEvents:64];
    buttonTray2 = [v12 buttonTray];
    [buttonTray2 addButton:v19];
  }

  [(BYODDomainDetailViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_mailSettingsTapped:(id)tapped
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)_okButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = [BYODUpdateIntroFlagRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain = [_domainResult domain];
  name = [domain name];
  v10 = [(BYODUpdateIntroFlagRequest *)v5 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name];

  v11 = tappedCopy;
  [v11 showsBusyIndicator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3C63C;
  v13[3] = &unk_B94F0;
  v13[4] = self;
  v12 = v11;
  v14 = v12;
  [(BYODUpdateIntroFlagRequest *)v10 performRequestWithCallback:v13];
}

- (void)_addContentViewToOBController:(id)controller
{
  controllerCopy = controller;
  v3 = objc_alloc_init(UILabel);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_INTRO_SUB_MESSAGE_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v3 setText:v5];

  [v3 setLineBreakMode:0];
  [v3 setNumberOfLines:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 sizeToFit];
  [v3 setTextAlignment:1];
  v6 = objc_alloc_init(UIView);
  [v6 addSubview:v3];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [controllerCopy contentView];
  [contentView addSubview:v6];

  topAnchor = [v6 topAnchor];
  contentView2 = [controllerCopy contentView];
  topAnchor2 = [contentView2 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:?];
  v31[0] = v23;
  trailingAnchor = [v6 trailingAnchor];
  contentView3 = [controllerCopy contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:?];
  v31[1] = v20;
  leadingAnchor = [v6 leadingAnchor];
  contentView4 = [controllerCopy contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:?];
  v31[2] = v17;
  topAnchor3 = [v3 topAnchor];
  topAnchor4 = [v6 topAnchor];
  v15 = [topAnchor3 constraintEqualToAnchor:?];
  v31[3] = v15;
  trailingAnchor3 = [v3 trailingAnchor];
  trailingAnchor4 = [v6 trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v31[4] = v10;
  leadingAnchor3 = [v3 leadingAnchor];
  leadingAnchor4 = [v6 leadingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v31[5] = v13;
  v14 = [NSArray arrayWithObjects:v31 count:6];
  [NSLayoutConstraint activateConstraints:v14];
}

- (id)_getEmailList
{
  v2 = _domainResult;
  normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v4 = [v2 getMemberFromDSID:normalizedDSID];

  v34 = v4;
  if (!v4 || ([v4 emails], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v15 = &stru_B9FC8;
    goto LABEL_22;
  }

  emails = [v4 emails];
  v7 = [emails count];

  if (v7 == &dword_0 + 1)
  {
    emails2 = [v4 emails];
    v9 = [emails2 objectAtIndexedSubscript:0];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL_DOUBLE_QUOTES" value:&stru_B9FC8 table:@"AccountPreferences"];
    email = [v9 email];
    v13 = [NSString stringWithFormat:v11, email];

    v14 = &stru_B9FC8;
    goto LABEL_23;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  emails3 = [v4 emails];
  obj = emails3;
  v17 = [emails3 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v17)
  {
    v15 = &stru_B9FC8;
    goto LABEL_21;
  }

  v15 = &stru_B9FC8;
  v32 = 1;
  v18 = *v36;
  do
  {
    v19 = 0;
    v20 = v32;
    v32 += v17;
    do
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v35 + 1) + 8 * v19);
      emails4 = [v34 emails];
      v23 = v20 == [emails4 count];

      if (v23)
      {
        email3 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = [email3 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL_LIST" value:&stru_B9FC8 table:@"AccountPreferences"];
        email2 = [v21 email];
        v27 = [NSString stringWithFormat:v25, v15, email2];
      }

      else
      {
        emails5 = [v34 emails];
        v29 = v20 == [emails5 count] - 1;

        if (v29)
        {
          email3 = [v21 email];
          v25 = [NSString stringWithFormat:@"%@", email3];
          [(__CFString *)v15 stringByAppendingString:v25];
          v15 = email2 = v15;
          goto LABEL_17;
        }

        email3 = [v21 email];
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        email2 = [v25 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL_LIST_COMMA" value:&stru_B9FC8 table:@"AccountPreferences"];
        v30 = [NSString stringWithFormat:@"%@%@ ", email3, email2];
        v27 = [(__CFString *)v15 stringByAppendingString:v30];

        v15 = v30;
      }

      v15 = v27;
LABEL_17:

      ++v20;
      v19 = v19 + 1;
    }

    while (v17 != v19);
    emails3 = obj;
    v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v17);
LABEL_21:

LABEL_22:
  v14 = v15;
  v13 = v14;
LABEL_23:

  return v13;
}

- (BOOL)_doesMemberBelongToDomain:(id)domain
{
  domainCopy = domain;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  members = [_domainResult members];
  v5 = [members countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(members);
        }

        memberIdentifier = [*(*(&v11 + 1) + 8 * i) memberIdentifier];
        v9 = [memberIdentifier isEqualToString:domainCopy];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [members countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end
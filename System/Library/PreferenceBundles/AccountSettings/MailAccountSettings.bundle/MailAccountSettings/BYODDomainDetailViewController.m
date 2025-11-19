@interface BYODDomainDetailViewController
+ (id)log;
- (BOOL)_doesMemberBelongToDomain:(id)a3;
- (BOOL)_isRowEditableAtIndexPath:(id)a3;
- (BYODDomainDetailViewController)initWithAccount:(id)a3 domain:(id)a4 domainState:(id)a5;
- (id)_addDomainMemberSpecifier;
- (id)_addExistingAddressButtonSpecifierForMember:(id)a3;
- (id)_catchAllEmailAddressSpecifier:(id)a3;
- (id)_catchAllEmailEnabledForSpecifier:(id)a3;
- (id)_domainEmailDetailSpecifierTitle;
- (id)_domainNameSpecifier;
- (id)_domainReverify;
- (id)_existingEmailAddress;
- (id)_finishSetupDomainSpecifier;
- (id)_getEmailList;
- (id)_leaveDomainSpecifier;
- (id)_manageEmailAddressSpecifier;
- (id)_memberDetailSpecifiersByIdentifier:(id)a3 withFullName:(id)a4;
- (id)_resendVerificationSpecifier;
- (id)_specifierForRowIndex:(int64_t)a3;
- (id)_stopUsingDomainSpecifier;
- (id)_viewSetupInstructionSpecifier;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_getMemberTypeByDsid:(id)a3;
- (void)_addContentViewToOBController:(id)a3;
- (void)_addExistingAddressButtonTapped:(id)a3;
- (void)_deleteEmailFromServerForUser:(id)a3 specifier:(id)a4;
- (void)_domainStoppedNotification:(id)a3;
- (void)_editButtonTapped:(id)a3;
- (void)_fetchAvailableSendFrom;
- (void)_finishSetupDomainTapped:(id)a3;
- (void)_getMemberPhoto;
- (void)_leaveDomainTapped:(id)a3;
- (void)_loadDnsRecords:(id)a3;
- (void)_loadDomainDetails;
- (void)_mailSettingsTapped:(id)a3;
- (void)_manageEmailWasTapped:(id)a3;
- (void)_obContinueTapped:(id)a3;
- (void)_okButtonTapped:(id)a3;
- (void)_refreshDomainResultNotification:(id)a3;
- (void)_removeDomainMember:(id)a3;
- (void)_resendVerificationEmailButtonTapped:(id)a3;
- (void)_reverifyDomainButtonTapped:(id)a3;
- (void)_setBYODCatchAllEmailEnabled:(id)a3 specifier:(id)a4;
- (void)_shouldRemoveDomainMember:(id)a3 completion:(id)a4;
- (void)_showDomainConnectSignInAlert;
- (void)_showEmailSelectWelcomeScreen;
- (void)_showIntroScreen;
- (void)_stopUsingDomain:(id)a3;
- (void)_triggerManualDomainSetupFlow;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)safariViewControllerDidFinish:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation BYODDomainDetailViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_31DD4;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6500 != -1)
  {
    dispatch_once(&qword_D6500, block);
  }

  v2 = qword_D64F8;

  return v2;
}

- (BYODDomainDetailViewController)initWithAccount:(id)a3 domain:(id)a4 domainState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = BYODDomainDetailViewController;
  v12 = [(BYODDomainDetailViewController *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggedInUserAccount, a3);
    objc_storeStrong(&_domainResult, a4);
    v14 = objc_alloc_init(NSMutableArray);
    v15 = _memberLastEmailSpecifier;
    _memberLastEmailSpecifier = v14;

    v16 = [v10 domain];
    v17 = [v16 withFamily];

    if (v17)
    {
      v18 = objc_alloc_init(FAFetchFamilyCircleRequest);
      v19 = _byodFamilyRequest;
      _byodFamilyRequest = v18;

      [_byodFamilyRequest setCachePolicy:1];
    }

    objc_storeStrong(&v13->_domainState, a5);
  }

  return v13;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = BYODDomainDetailViewController;
  [(BYODDomainDetailViewController *)&v12 viewDidLoad];
  v3 = [(BYODDomainDetailViewController *)self table];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(BYODDomainDetailViewController *)self navigationItem];
  v5 = [_domainResult domain];
  v6 = [v5 name];
  [v4 setTitle:v6];

  domainState = self->_domainState;
  if (domainState && [(NSString *)domainState isEqualToString:@"manageEmail"])
  {
    v8 = self->_domainState;
    self->_domainState = 0;

    v9 = [(BYODDomainDetailViewController *)self specifierForID:@"BYOD_MANAGE_EMAIL_SPECIFIER_ID"];
    [(BYODDomainDetailViewController *)self _manageEmailWasTapped:v9];
  }

  v10 = [_domainResult domain];
  v11 = [v10 withFamily];

  if (v11)
  {
    [(BYODDomainDetailViewController *)self _getMemberPhoto];
  }
}

- (id)specifiers
{
  v57 = objc_alloc_init(NSMutableArray);
  v6 = [_domainResult domain];
  v7 = [v6 status];

  v8 = [_domainResult domain];
  v56 = [v8 verificationStatus];

  v9 = [_domainResult domain];
  v55 = [v9 reverificationStatus];

  v10 = [_domainResult domain];
  if (([v10 withEmailAddress] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"COMPLETE") & 1) == 0)
  {
    v11 = [v55 isEqualToString:@"NOT_STARTED"];

    if (!v11)
    {
      goto LABEL_10;
    }

    v10 = [PSSpecifier groupSpecifierWithID:@"BYOD_DOMAIN_GROUP_TITLE_ID"];
    if (([v56 isEqualToString:@"IN_PROGRESS"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"IN_PROGRESS"))
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

    [v10 setProperty:v14 forKey:PSFooterTextGroupKey];
    [v57 addObject:v10];
  }

LABEL_10:
  if ([v7 isEqualToString:@"COMPLETE"])
  {
    v15 = [(BYODDomainDetailViewController *)self _domainNameSpecifier];
    [v57 addObjectsFromArray:v15];
  }

  v16 = [_domainResult domain];
  if ([v16 withEmailAddress])
  {
    v17 = [v7 isEqualToString:@"COMPLETE"];

    if (v17)
    {
      goto LABEL_16;
    }

    v16 = [(BYODDomainDetailViewController *)self _domainEmailDetailSpecifierTitle];
    [v57 addObjectsFromArray:v16];
  }

LABEL_16:
  v18 = [_domainResult domain];
  if ([v18 isDomainConnect])
  {
LABEL_31:

    goto LABEL_32;
  }

  v19 = [_domainResult domain];
  v20 = [v19 reverificationStatus];
  v2 = [v20 isEqualToString:@"NOT_STARTED"];
  if ((v2 & 1) == 0)
  {
    v3 = [_domainResult domain];
    v4 = [v3 reverificationStatus];
    if (![v4 isEqualToString:@"VERIFICATION_SUCCESS"])
    {
LABEL_26:

LABEL_27:
      goto LABEL_31;
    }
  }

  if (![v56 isEqualToString:@"NOT_STARTED"] || objc_msgSend(v7, "isEqualToString:", @"COMPLETE"))
  {
    if ([v56 isEqualToString:@"FAILED"])
    {
      v21 = [v7 isEqualToString:@"FAILED"];
      if (v2)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    if (v2)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = 1;
  if (v2)
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
    v18 = [(BYODDomainDetailViewController *)self _viewSetupInstructionSpecifier];
    [v57 addObjectsFromArray:v18];
    goto LABEL_31;
  }

LABEL_32:
  if ([v7 isEqualToString:@"COMPLETE"] && ((objc_msgSend(v55, "isEqualToString:", @"VERIFICATION_IN_PROGRESS") & 1) != 0 || objc_msgSend(v55, "isEqualToString:", @"VERIFICATION_FAILED")))
  {
    v22 = [(BYODDomainDetailViewController *)self _domainReverify];
    [v57 addObjectsFromArray:v22];
  }

  v23 = [_domainResult domain];
  v24 = [v23 reverificationStatus];
  v25 = [v24 isEqualToString:@"NOT_STARTED"];
  if ((v25 & 1) == 0)
  {
    v54 = [_domainResult domain];
    v3 = [v54 reverificationStatus];
    if (![v3 isEqualToString:@"VERIFICATION_SUCCESS"])
    {

LABEL_58:
      goto LABEL_59;
    }
  }

  if ([v56 isEqualToString:@"NOT_STARTED"] && !objc_msgSend(v7, "isEqualToString:", @"COMPLETE") || objc_msgSend(v56, "isEqualToString:", @"FAILED") && (objc_msgSend(v7, "isEqualToString:", @"FAILED") & 1) != 0)
  {
    goto LABEL_45;
  }

  v26 = [v56 isEqualToString:@"IN_PROGRESS"];
  if (v26)
  {
    v2 = [_domainResult domain];
    if ([v2 withEmailAddress])
    {

LABEL_45:
      if ((v25 & 1) == 0)
      {
      }

LABEL_57:
      v23 = [(BYODDomainDetailViewController *)self _finishSetupDomainSpecifier];
      [v57 addObjectsFromArray:v23];
      goto LABEL_58;
    }
  }

  if (![v7 isEqualToString:@"DEFAULT_EMAIL_NOT_SELECTED"])
  {
    v28 = 0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v27 = [_domainResult domain];
  v28 = [v27 withEmailAddress];

  if (v26)
  {
LABEL_53:
  }

LABEL_54:
  if ((v25 & 1) == 0)
  {
  }

  if (v28)
  {
    goto LABEL_57;
  }

LABEL_59:
  if ([v7 isEqualToString:@"COMPLETE"])
  {
    v29 = [(BYODDomainDetailViewController *)self _manageEmailAddressSpecifier];
    [v57 addObjectsFromArray:v29];
  }

  if ([v7 isEqualToString:@"COMPLETE"])
  {
    v30 = [_domainResult domain];
    v31 = [v30 isOwner];

    if (v31)
    {
      v32 = [_domainResult domain];
      v33 = [(BYODDomainDetailViewController *)self _catchAllEmailAddressSpecifier:v32];
      [v57 addObjectsFromArray:v33];
    }
  }

  v34 = [_domainResult domain];
  if (![v34 withEmailAddress])
  {
    goto LABEL_67;
  }

  v35 = [v7 isEqualToString:@"COMPLETE"];

  if ((v35 & 1) == 0)
  {
    v34 = [(BYODDomainDetailViewController *)self _existingEmailAddress];
    [v57 addObjectsFromArray:v34];
LABEL_67:
  }

  v36 = [_domainResult domain];
  if ([v36 withEmailAddress] && (objc_msgSend(v7, "isEqualToString:", @"COMPLETE") & 1) == 0)
  {
    v37 = [_domainResult hasUnverifiedEmail];

    if (!v37)
    {
      goto LABEL_73;
    }

    v36 = [(BYODDomainDetailViewController *)self _resendVerificationSpecifier];
    [v57 addObjectsFromArray:v36];
  }

LABEL_73:
  if ([v7 isEqualToString:@"COMPLETE"])
  {
    v38 = [_domainResult domain];
    v39 = [v38 isOwner];

    if (v39)
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

  if ([v7 isEqualToString:@"COMPLETE"])
  {
    v41 = [_domainResult domain];
    v42 = [v41 introScreenIndicator];
    v43 = [v42 isEqualToString:@"NOT_SEEN"];

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
  v3 = [_domainResult domain];
  v4 = [v3 withFamily];

  if (v4)
  {
    [(BYODDomainDetailViewController *)self _getMemberPhoto];
  }
}

- (id)_domainReverify
{
  v3 = objc_alloc_init(NSMutableArray);
  v28 = [PSSpecifier groupSpecifierWithID:@"BYOD_REVERIFY_DOMAIN"];
  [v3 addObject:v28];
  v4 = [_domainResult domain];
  v5 = [v4 isOwner];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BYOD_DOMAIN_REVERIFY_TITLE_OWNER" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    v8 = [_domainResult domain];
    v6 = [v8 owner];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_DOMAIN_REVERIFY_TITLE_MEMBER" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = [v6 firstName];
    v7 = [NSString stringWithFormat:v10, v11];
  }

  v12 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v12 setIdentifier:@"reVerifySpecifierTitleID"];
  [v12 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v3 addObject:v12];
  v13 = [_domainResult domain];
  v14 = [v13 isOwner];

  if (v14)
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BYOD_REVERIFY_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v17 setButtonAction:"_reverifyDomainButtonTapped:"];
    v18 = [_domainResult domain];
    v19 = [v18 reverificationStatus];
    if ([v19 isEqualToString:@"VERIFICATION_IN_PROGRESS"])
    {

LABEL_7:
      v20 = &__kCFBooleanFalse;
LABEL_13:
      [v17 setProperty:v20 forKey:PSEnabledKey];
      [v3 addObject:v17];

      goto LABEL_14;
    }

    v21 = [_domainResult domain];
    v22 = [v21 reverificationStatus];
    if ([v22 isEqualToString:@"VERIFICATION_FAILED"])
    {
      v23 = [_domainResult domain];
      v24 = [v23 verificationStatus];
      v27 = [v24 isEqualToString:@"IN_PROGRESS"];

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
  v4 = [_domainResult members];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = *v30;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 memberIdentifier];
        v10 = [(BYODDomainDetailViewController *)self _getMemberTypeByDsid:v9];

        if (!v10)
        {
          v11 = [v8 memberIdentifier];
          v12 = [v8 fullName];
          v13 = [(BYODDomainDetailViewController *)self _memberDetailSpecifiersByIdentifier:v11 withFullName:v12];
          [v3 addObjectsFromArray:v13];

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
  v14 = [_domainResult members];
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        v19 = [v18 memberIdentifier];
        v20 = [(BYODDomainDetailViewController *)self _getMemberTypeByDsid:v19];

        if (v20)
        {
          v21 = [v18 memberIdentifier];
          v22 = [v18 fullName];
          v23 = [(BYODDomainDetailViewController *)self _memberDetailSpecifiersByIdentifier:v21 withFullName:v22];
          [v3 addObjectsFromArray:v23];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
  v4 = [_domainResult domain];
  v5 = [v4 withFamily];

  if (v5)
  {
    v6 = [(BYODDomainDetailViewController *)self _addDomainMemberSpecifier];
    [v3 addObjectsFromArray:v6];
  }

  else
  {
    v6 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
    v7 = [(ACAccount *)self->_loggedInUserAccount userFullName];
    v8 = [(BYODDomainDetailViewController *)self _memberDetailSpecifiersByIdentifier:v6 withFullName:v7];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (int64_t)_getMemberTypeByDsid:(id)a3
{
  v3 = a3;
  v4 = [_domainResult domain];
  v5 = [v4 owner];
  v6 = [v5 dsid];
  v7 = [v3 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [_domainResult members];
    v10 = [NSPredicate predicateWithFormat:@"dsid MATCHES %@", v3];
    v11 = [v9 filteredArrayUsingPredicate:v10];

    if ([v11 count])
    {
      v12 = [v11 firstObject];
      v13 = [v12 isFamilyMember];

      if (v13)
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

- (id)_memberDetailSpecifiersByIdentifier:(id)a3 withFullName:(id)a4
{
  v5 = a3;
  v45 = a4;
  v46 = v5;
  v51 = objc_alloc_init(NSMutableArray);
  obj = [PSSpecifier groupSpecifierWithID:v5];
  [obj setButtonAction:"_editButtonTapped:"];
  [obj setTarget:self];
  [v51 addObject:obj];
  v47 = [PSSpecifier preferenceSpecifierNamed:v45 target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v47 setProperty:v5 forKey:@"MEMBER_DSID"];
  v6 = [NSString stringWithFormat:@"MEMBER_%@", v5];
  [v47 setIdentifier:v6];

  v7 = [_domainResult domain];
  LOBYTE(v5) = [v7 withFamily];

  if ((v5 & 1) == 0)
  {
    v8 = +[BYODContactsManager sharedInstance];
    v9 = [v8 avatarImageForMeContact];

    if (!v9)
    {
      v10 = +[BYODContactsManager sharedInstance];
      v11 = [(ACAccount *)self->_loggedInUserAccount aa_firstName];
      v12 = [(ACAccount *)self->_loggedInUserAccount aa_lastName];
      v9 = [v10 monogramWithFirstName:v11 andLastName:v12];
    }

    [v47 setProperty:v9 forKey:PSIconImageKey];
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
  v48 = [v49 emails];
  v25 = [v48 countByEnumeratingWithState:&v52 objects:v56 count:16];
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
          objc_enumerationMutation(v48);
        }

        v31 = *(*(&v52 + 1) + 8 * v29);
        v32 = [v31 email];
        v26 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:0 get:0 detail:0 cell:4 edit:0, v43];

        v33 = [v31 status];
        LODWORD(v32) = [v33 isEqualToString:@"VERIFIED"];

        v34 = [NSBundle bundleForClass:objc_opt_class()];
        if (v32)
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
        v36 = [v49 memberIdentifier];
        [v26 setProperty:v36 forKey:@"MEMBER_DSID"];

        [v26 setProperty:&__kCFBooleanTrue forKey:@"editableSpecifier"];
        [v51 addObject:v26];

        v29 = v29 + 1;
        v30 = v26;
      }

      while (v25 != v29);
      v25 = [v48 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v25);
  }

  [_memberLastEmailSpecifier addObject:v26];
  if (isEditing == 1)
  {
    v37 = [v49 emails];
    v38 = [v37 count];
    LODWORD(v38) = v38 < [_domainResult maxEmailsPerUser];

    if (v38)
    {
      v39 = [v49 memberIdentifier];
      v40 = [(BYODDomainDetailViewController *)self _addExistingAddressButtonSpecifierForMember:v39];

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

  v6 = [_domainResult domain];
  v7 = [v6 verificationStatus];
  v8 = [v7 isEqualToString:@"NOT_STARTED"];

  if (v8)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BYOD_VERIFIED_EMAILS_DOMAIN_NOT_VERIFIED_SPECIFIER_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    goto LABEL_9;
  }

  v9 = [_domainResult domain];
  v10 = [v9 verificationStatus];
  if ([v10 isEqualToString:@"IN_PROGRESS"])
  {

LABEL_8:
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BYOD_DOMAIN_VERIFICATION_TITLE_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    goto LABEL_9;
  }

  v11 = [_domainResult domain];
  v12 = [v11 verificationStatus];
  v13 = [v12 isEqualToString:@"FAILED"];

  if (v13)
  {
    goto LABEL_8;
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v4 localizedStringForKey:@"BYOD_VERIFIED_EMAILS_DOMAIN_VERIFIED_SPECIFIER_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18 = [_domainResult domain];
  v19 = [v18 name];
  v14 = [NSString stringWithFormat:v17, v19];

LABEL_10:
  [v3 setProperty:v14 forKey:PSFooterTextGroupKey];
  [v2 addObject:v3];
  v15 = [v2 copy];

  return v15;
}

- (id)_viewSetupInstructionSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [_domainResult domain];
  v5 = [v4 isDomainConnect];

  if ((v5 & 1) == 0)
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

- (void)_loadDnsRecords:(id)a3
{
  v4 = a3;
  v5 = [(BYODDomainDetailViewController *)self dnsRecords];
  v6 = [v5 count];

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
    [v4 byod_startSpinner];
    objc_initWeak(&location, self);
    v8 = +[BYODDomainDetailViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "load DNS records", buf, 2u);
    }

    v9 = [BYODGetDnsRecordsRequest alloc];
    loggedInUserAccount = self->_loggedInUserAccount;
    v11 = [(ACAccount *)loggedInUserAccount accountStore];
    v12 = [_domainResult domain];
    v13 = [v12 name];
    v14 = [(BYODGetDnsRecordsRequest *)v9 initWithAccount:loggedInUserAccount accountStore:v11 domain:v13];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3503C;
    v16[3] = &unk_B9360;
    objc_copyWeak(&v18, &location);
    v17 = v4;
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

  v13 = [_domainResult domain];
  v14 = [v13 verificationStatus];
  v15 = [v14 isEqualToString:@"NOT_STARTED"];

  if (v15)
  {
    v16 = [_domainResult domain];
    v17 = [v16 isDomainConnect];

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (v17)
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

  v18 = [_domainResult domain];
  v19 = [v18 status];
  v20 = [v19 isEqualToString:@"FAILED"];

  if (v20)
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_VERIFICATION_FAILED_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    v23 = [_domainResult domain];
    v24 = [v23 name];
    v5 = [NSString stringWithFormat:v22, v24];

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
    v11 = [_domainResult domain];
    v12 = [v11 verificationStatus];
    if ([v12 isEqualToString:@"IN_PROGRESS"])
    {
    }

    else
    {
      v25 = [_domainResult domain];
      v26 = [v25 isDomainConnect];

      if (v26)
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
  v5 = [_domainResult domain];
  v6 = [v5 isOwner];

  if (v6)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_TITLE_ADD" value:&stru_B9FC8 table:@"AccountPreferences"];

    v9 = [_domainResult domain];
    v10 = [v9 isDomainPurchased];

    if (v10)
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v35 = v4;
      v12 = [v11 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_TITLE_PURCHASE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v13 = [_domainResult domain];
      v14 = [v13 domainPurchaseProviderName];
      v15 = [NSString stringWithFormat:v12, v14];

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
  v17 = [_domainResult domain];
  v18 = [v17 name];
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:4 edit:0];

  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"BYOD_DOMAIN_NAME_INFO_SUBTITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v19 setProperty:v21 forKey:PSTableCellSubtitleTextKey];

  [v19 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v22 = [_domainResult domain];
  v23 = [v22 name];
  [v19 setIdentifier:v23];

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

- (id)_catchAllEmailAddressSpecifier:(id)a3
{
  v24 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [PSSpecifier groupSpecifierWithID:@"BYOD_CATCH_ALL_GROUP_ID"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = self;
  v7 = [v6 localizedStringForKey:@"BYOD_CATCH_ALL_EMAIL_FOOTER_LEARN_MORE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BYOD_CATCH_ALL_EMAIL_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [v24 name];
  v11 = [NSString stringWithFormat:v9, v10];
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
  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v23 set:"_setBYODCatchAllEmailEnabled:specifier:" get:"_catchAllEmailEnabledForSpecifier:" detail:0 cell:6 edit:0];

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
  v6 = [_domainResult domain];
  v7 = [v6 name];
  v8 = [NSString stringWithFormat:v5, v7];

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
  v6 = [_domainResult domain];
  v7 = [v6 name];
  v8 = [NSString stringWithFormat:v5, v7];

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

- (id)_addExistingAddressButtonSpecifierForMember:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_ADD_EXISTING_ADDRESS_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setIdentifier:@"ADD_EXISTING_ADDRESS_SPECIFIER_ID"];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v7 setButtonAction:"_addExistingAddressButtonTapped:"];
  [v7 setProperty:v4 forKey:@"MEMBER_DSID"];
  [v7 setProperty:&__kCFBooleanFalse forKey:@"editableSpecifier"];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = BYODDomainDetailViewController;
  v4 = [(BYODDomainDetailViewController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:@"reVerifySpecifierTitleID"];

  if (v7)
  {
    v8 = [v4 titleLabel];
    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v8 setFont:v9];
  }

  return v4;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 == 1)
  {
    if ([v7 row])
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
      v28 = self;
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

- (id)_specifierForRowIndex:(int64_t)a3
{
  v5 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*&self->PSListController_opaque[v5] objectAtIndex:a3];
  }

  return v6;
}

- (void)_showEmailSelectWelcomeScreen
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v3 localizedStringForKey:@"BYOD_DOMAIN_READY_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_DOMAIN_READY_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [_domainResult domain];
  v7 = [v6 name];
  v8 = [NSString stringWithFormat:v5, v7];

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
  v17 = [_welcomeController buttonTray];
  [v17 addButton:v14];

  v18 = [BYODSelectDefaultEmailNavController alloc];
  v19 = [(BYODSelectDefaultEmailNavController *)v18 initWithRootViewController:_welcomeController];
  v20 = _selectDefaultEmailNavController;
  _selectDefaultEmailNavController = v19;

  [_selectDefaultEmailNavController setByodDelegate:self];
  [(BYODDomainDetailViewController *)self presentViewController:_selectDefaultEmailNavController animated:1 completion:0];
}

- (void)_manageEmailWasTapped:(id)a3
{
  v4 = [BYODEmailAddressManageViewController alloc];
  v5 = [(BYODEmailAddressManageViewController *)v4 initWithAccount:self->_loggedInUserAccount domain:_domainResult];
  [(BYODDomainDetailViewController *)self showController:?];
}

- (void)_leaveDomainTapped:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [_domainResult domain];
  v7 = [v6 name];
  v8 = [NSString stringWithFormat:v5, v7];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_MEMBER_LEAVE_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [_domainResult domain];
  v12 = [v11 name];
  v13 = [NSString stringWithFormat:v10, v12];

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

- (void)_stopUsingDomain:(id)a3
{
  v4 = [BYODStopUsingDomainViewController alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v6 = [_domainResult domain];
  v8 = [(BYODStopUsingDomainViewController *)v4 initWithAccount:loggedInUserAccount domain:v6];

  v7 = [[UINavigationController alloc] initWithRootViewController:v8];
  [(BYODDomainDetailViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_finishSetupDomainTapped:(id)a3
{
  v4 = [_domainResult domain];
  v5 = [v4 verificationStatus];
  if ([v5 isEqualToString:@"NOT_STARTED"])
  {

LABEL_4:
    v9 = [_domainResult domain];
    v10 = [v9 isDomainConnect];

    if (v10)
    {
      v11 = [_domainResult domain];
      v12 = [v11 dnsProviderName];

      if ([(BYODConfirmFinishSetupViewController *)v12 length])
      {
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
        v15 = [NSString stringWithFormat:v14, v12];

        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
        v18 = [_domainResult domain];
        v19 = [v18 name];
        v20 = [NSString stringWithFormat:v17, v19, v12];

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
          v36 = [_domainResult ef_publicDescription];
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v36;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "dns provider name not present. domainInfo %@", location, 0xCu);
        }
      }
    }

    else
    {
      v28 = [BYODConfirmFinishSetupViewController alloc];
      v29 = [_domainResult domain];
      v30 = [v29 name];
      v12 = [(BYODConfirmFinishSetupViewController *)v28 initWithDomainName:v30 acAccount:self->_loggedInUserAccount];

      v31 = [_domainResult domain];
      if ([v31 withEmailAddress])
      {
        v32 = [_domainResult hasEmails];

        if (v32)
        {
          [(BYODConfirmFinishSetupViewController *)v12 setShowDefaultEmailSelect:1];
        }
      }

      else
      {
      }

      v33 = [[BYODSelectDefaultEmailNavController alloc] initWithRootViewController:v12];
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

  v6 = [_domainResult domain];
  v7 = [v6 verificationStatus];
  v8 = [v7 isEqualToString:@"FAILED"];

  if (v8)
  {
    goto LABEL_4;
  }

  [(BYODDomainDetailViewController *)self _fetchAvailableSendFrom];
}

- (void)_obContinueTapped:(id)a3
{
  v14 = +[BYODIcon customEmailDomainIcon];
  v4 = [BYODSelectEmailTableViewController alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BYOD_CHOOSE_DEFAULT_EMAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BYOD_CHOOSE_DEFAULT_EMAIL_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  loggedInUserAccount = self->_loggedInUserAccount;
  v10 = _emailList;
  v11 = [_domainResult domain];
  v12 = [v11 name];
  v13 = [(BYODSelectEmailTableViewController *)v4 initWithTitle:v6 detailText:v8 icon:v14 adoptTableViewScrollView:1 userAccount:loggedInUserAccount emailListResponse:v10 domainName:v12];

  [_selectDefaultEmailNavController pushViewController:v13 animated:1];
}

- (void)_editButtonTapped:(id)a3
{
  v4 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "editing email address", buf, 2u);
  }

  isEditing ^= 1u;
  v5 = [(BYODDomainDetailViewController *)self table];
  [v5 setEditing:isEditing animated:1];

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
    v7 = [_domainResult members];
    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
          v12 = [v11 dsid];
          v13 = [_domainResult domain];
          v14 = [v13 owner];
          v15 = [v14 dsid];
          v16 = [v12 isEqualToString:v15];

          if (v16)
          {
            (v6[2])(v6, v11);
          }
        }

        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v8);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [_domainResult members];
    obja = v17;
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v52 count:16];
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
          v22 = [v21 dsid];
          v23 = [_domainResult domain];
          v24 = [v23 owner];
          v25 = [v24 dsid];
          v26 = [v22 isEqualToString:v25];

          if ((v26 & 1) == 0)
          {
            (v6[2])(v6, v21);
          }
        }

        v17 = obja;
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
          v32 = [v31 identifier];
          v33 = [v32 containsString:@"ADD_EXISTING_ADDRESS_SPECIFIER_ID"];

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

- (void)_addExistingAddressButtonTapped:(id)a3
{
  v4 = a3;
  v5 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "adding email address", v9, 2u);
  }

  v6 = [BYODUpdateEmailViewController alloc];
  v7 = [(BYODUpdateEmailViewController *)v6 initWithAccount:self->_loggedInUserAccount domain:_domainResult addAlias:0];
  [(BYODUpdateEmailViewController *)v7 setCallingSpecifier:v4];
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(BYODDomainDetailViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_resendVerificationEmailButtonTapped:(id)a3
{
  v4 = a3;
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
  v11 = [(ACAccount *)loggedInUserAccount accountStore];
  v12 = [_domainResult domain];
  v13 = [v12 name];
  v14 = [(BYODResendVerificationEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:v11 domain:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_394B4;
  v15[3] = &unk_B91F0;
  objc_copyWeak(&v16, &location);
  [(BYODResendVerificationEmailRequest *)v14 performRequestWithCallback:v15];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)_reverifyDomainButtonTapped:(id)a3
{
  v4 = [_domainResult domain];
  v5 = [v4 isDomainConnect];

  if (v5)
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
  v4 = [_domainResult domain];
  v5 = [v4 name];
  v6 = [(BYODDomainDetailViewController *)self loggedInUserAccount];
  v7 = [(BYODDomainManualSetupViewController *)v3 initWithDomainName:v5 acAccount:v6 showRedBadge:0];

  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  v11 = v8;
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:&v10];
}

- (void)_showDomainConnectSignInAlert
{
  v3 = [_domainResult domain];
  v4 = [v3 domainConnectServerUrl];

  if ([v4 length])
  {
    v23 = [[NSURL alloc] initWithString:v4];
    v5 = [_domainResult domain];
    v26 = [v5 dnsProviderName];

    v6 = [_domainResult domain];
    v25 = [v6 name];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v24 = [NSString stringWithFormat:v8, v26];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = [NSString stringWithFormat:v10, v25, v26];

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
    v31 = self;
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
      v22 = [_domainResult ef_publicDescription];
      *buf = 138412290;
      v33 = v22;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Domain connect URL not present. domain info %@", buf, 0xCu);
    }
  }
}

- (id)_catchAllEmailEnabledForSpecifier:(id)a3
{
  v3 = [_domainResult domain];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 catchAllEnabled]);

  return v4;
}

- (void)_setBYODCatchAllEmailEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODDomainDetailViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = [v6 BOOLValue];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "catch all switch toggled: %{BOOL}d", buf, 8u);
  }

  if ([v6 BOOLValue])
  {
    v9 = [BYODEnableCatchAllEmailRequest alloc];
    loggedInUserAccount = self->_loggedInUserAccount;
    v11 = [(ACAccount *)loggedInUserAccount accountStore];
    v12 = [_domainResult domain];
    v13 = [v12 name];
    v14 = [(BYODEnableCatchAllEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:v11 domain:v13];

    v15 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_3A4F8;
    v22[3] = &unk_B9418;
    v22[4] = self;
    v22[5] = v7;
    v22[6] = v6;
    [(BYODEnableCatchAllEmailRequest *)v14 performRequestWithCallback:v22];
  }

  else
  {
    v16 = [BYODDisableCatchAllEmailRequest alloc];
    v17 = self->_loggedInUserAccount;
    v18 = [(ACAccount *)v17 accountStore];
    v19 = [_domainResult domain];
    v20 = [v19 name];
    v14 = [(BYODDisableCatchAllEmailRequest *)v16 initWithAccount:v17 accountStore:v18 domain:v20];

    v15 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_3A658;
    v21[3] = &unk_B9418;
    v21[4] = self;
    v21[5] = v7;
    v21[6] = v6;
    [(BYODEnableCatchAllEmailRequest *)v14 performRequestWithCallback:v21];
  }
}

- (void)_loadDomainDetails
{
  v3 = [BYODGetDomainRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v5 = [(ACAccount *)loggedInUserAccount accountStore];
  v6 = [_domainResult domain];
  v7 = [v6 name];
  v8 = [(BYODGetDomainRequest *)v3 initWithAccount:loggedInUserAccount accountStore:v5 domain:v7];

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
  v8 = [(ACAccount *)loggedInUserAccount accountStore];
  v9 = [(BYODListEmailRequest *)v6 initWithAccount:loggedInUserAccount accountStore:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3AB98;
  v10[3] = &unk_B9480;
  v10[4] = self;
  [(BYODListEmailRequest *)v9 performRequestWithCallback:v10];
}

- (void)_deleteEmailFromServerForUser:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_3B018;
  v27[3] = &unk_B8EB0;
  v7 = a4;
  v28 = v7;
  v21 = v6;
  v22 = v7;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v27];

  v9 = [BYODDeleteEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v20 = [(ACAccount *)loggedInUserAccount accountStore];
  v11 = [_domainResult domain];
  v12 = [v11 name];
  v13 = [v7 name];
  v14 = [NSMutableArray arrayWithObject:v13];
  v15 = [v6 dsid];
  v16 = [v6 invitedEmail];
  v17 = [v6 invitedPhoneNumber];
  v18 = [(BYODDeleteEmailRequest *)v9 initWithAccount:loggedInUserAccount accountStore:v20 domain:v12 emailArray:v14 dsid:v15 invitedEmail:v16 invitedPhone:v17];

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

- (BOOL)_isRowEditableAtIndexPath:(id)a3
{
  v3 = [(BYODDomainDetailViewController *)self specifierAtIndexPath:a3];
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

- (void)_shouldRemoveDomainMember:(id)a3 completion:(id)a4
{
  v23 = a3;
  v24 = a4;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [v23 fullName];
  v25 = [NSString stringWithFormat:v7, v8];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"BYOD_ADD_DOMAIN_DELETE_MEMBER_CONFIRMATION_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [_domainResult domain];
  v12 = [v11 name];
  v13 = [NSString stringWithFormat:v10, v12];
  v14 = self;

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
  v21 = v24;
  v27 = v21;
  v22 = [UIAlertAction actionWithTitle:v20 style:2 handler:v26];

  [v15 addAction:v18];
  [v15 addAction:v22];
  [v15 setPreferredAction:v22];
  [(BYODDomainDetailViewController *)v14 presentViewController:v15 animated:1 completion:0];
}

- (void)_removeDomainMember:(id)a3
{
  v4 = a3;
  v5 = [BYODRemoveMemberRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v7 = [(ACAccount *)loggedInUserAccount accountStore];
  v8 = [_domainResult domain];
  v9 = [v8 name];
  v10 = [_domainResult domain];
  v11 = [v10 status];
  v12 = [(BYODRemoveMemberRequest *)v5 initWithAccount:loggedInUserAccount accountStore:v7 domain:v9 domainStatus:v11 domainMember:v4];

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

- (void)safariViewControllerDidFinish:(id)a3
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

- (void)_domainStoppedNotification:(id)a3
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

- (void)_refreshDomainResultNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:@"domainData"];
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
  v4 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v5 = [v3 hasEmailsForDsid:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5)
  {
    v23 = [v6 localizedStringForKey:@"BYOD_INTRO_TITLE_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [(BYODDomainDetailViewController *)self _getEmailList];
    v10 = [NSString stringWithFormat:v8, v9];
  }

  else
  {
    v23 = [v6 localizedStringForKey:@"BYOD_INTRO_TITLE_NO_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_INTRO_MESSAGE_NO_EMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [_domainResult domain];
    v11 = [v9 name];
    v10 = [NSString stringWithFormat:v8, v11];
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
  v18 = [v12 buttonTray];
  [v18 addButton:v15];

  if (v5)
  {
    v19 = +[OBLinkTrayButton linkButton];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"BYOD_MAIL_SETTINGS_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v19 setTitle:v21 forState:0];

    [v19 addTarget:self action:"_mailSettingsTapped:" forControlEvents:64];
    v22 = [v12 buttonTray];
    [v22 addButton:v19];
  }

  [(BYODDomainDetailViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_mailSettingsTapped:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Mail"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)_okButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [BYODUpdateIntroFlagRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v7 = [(ACAccount *)loggedInUserAccount accountStore];
  v8 = [_domainResult domain];
  v9 = [v8 name];
  v10 = [(BYODUpdateIntroFlagRequest *)v5 initWithAccount:loggedInUserAccount accountStore:v7 domain:v9];

  v11 = v4;
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

- (void)_addContentViewToOBController:(id)a3
{
  v30 = a3;
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
  v7 = [v30 contentView];
  [v7 addSubview:v6];

  v29 = [v6 topAnchor];
  v25 = [v30 contentView];
  v24 = [v25 topAnchor];
  v23 = [v29 constraintEqualToAnchor:?];
  v31[0] = v23;
  v28 = [v6 trailingAnchor];
  v22 = [v30 contentView];
  v21 = [v22 trailingAnchor];
  v20 = [v28 constraintEqualToAnchor:?];
  v31[1] = v20;
  v27 = [v6 leadingAnchor];
  v19 = [v30 contentView];
  v18 = [v19 leadingAnchor];
  v17 = [v27 constraintEqualToAnchor:?];
  v31[2] = v17;
  v26 = [v3 topAnchor];
  v16 = [v6 topAnchor];
  v15 = [v26 constraintEqualToAnchor:?];
  v31[3] = v15;
  v8 = [v3 trailingAnchor];
  v9 = [v6 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v31[4] = v10;
  v11 = [v3 leadingAnchor];
  v12 = [v6 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v31[5] = v13;
  v14 = [NSArray arrayWithObjects:v31 count:6];
  [NSLayoutConstraint activateConstraints:v14];
}

- (id)_getEmailList
{
  v2 = _domainResult;
  v3 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v4 = [v2 getMemberFromDSID:v3];

  v34 = v4;
  if (!v4 || ([v4 emails], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v15 = &stru_B9FC8;
    goto LABEL_22;
  }

  v6 = [v4 emails];
  v7 = [v6 count];

  if (v7 == &dword_0 + 1)
  {
    v8 = [v4 emails];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL_DOUBLE_QUOTES" value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [v9 email];
    v13 = [NSString stringWithFormat:v11, v12];

    v14 = &stru_B9FC8;
    goto LABEL_23;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [v4 emails];
  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
      v22 = [v34 emails];
      v23 = v20 == [v22 count];

      if (v23)
      {
        v24 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL_LIST" value:&stru_B9FC8 table:@"AccountPreferences"];
        v26 = [v21 email];
        v27 = [NSString stringWithFormat:v25, v15, v26];
      }

      else
      {
        v28 = [v34 emails];
        v29 = v20 == [v28 count] - 1;

        if (v29)
        {
          v24 = [v21 email];
          v25 = [NSString stringWithFormat:@"%@", v24];
          [(__CFString *)v15 stringByAppendingString:v25];
          v15 = v26 = v15;
          goto LABEL_17;
        }

        v24 = [v21 email];
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"BYOD_INTRO_MESSAGE_EMAIL_LIST_COMMA" value:&stru_B9FC8 table:@"AccountPreferences"];
        v30 = [NSString stringWithFormat:@"%@%@ ", v24, v26];
        v27 = [(__CFString *)v15 stringByAppendingString:v30];

        v15 = v30;
      }

      v15 = v27;
LABEL_17:

      ++v20;
      v19 = v19 + 1;
    }

    while (v17 != v19);
    v16 = obj;
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

- (BOOL)_doesMemberBelongToDomain:(id)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [_domainResult members];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) memberIdentifier];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
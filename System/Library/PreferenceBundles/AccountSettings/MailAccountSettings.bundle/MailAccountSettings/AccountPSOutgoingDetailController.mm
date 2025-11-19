@interface AccountPSOutgoingDetailController
+ (id)outgoingGroupSpecifiers;
+ (id)outgoingSpecifiers;
- (BOOL)haveEnoughValues;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)authSchemeTitlesForSpecifier:(id)a3;
- (id)authSchemeValuesForSpecifier:(id)a3;
- (id)isEnabled:(id)a3;
- (id)specifiers;
- (id)specifiersForExistingAccount;
- (id)specifiersForNewAccount;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_bottomDescriptionWithSpecifier:(id)a3;
- (void)_finishedAccountSetup;
- (void)_reallyDeleteOutgoingAccount;
- (void)_resetDeliveryAccountsForViewingAccount;
- (void)_saveAccounts;
- (void)_updateDoneButton;
- (void)applicationWillSuspend;
- (void)cancelButtonTapped:(id)a3;
- (void)deleteOutgoingAccount;
- (void)didFinishSaveAccountAnywaysSheetWithResult:(BOOL)a3;
- (void)handleValidAccount:(id)a3;
- (void)processValidationResult:(int64_t)a3;
- (void)saveAndDismiss;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
- (void)setEnabled:(id)a3 withSpecifier:(id)a4;
- (void)validateForExistingAccount;
- (void)validateForNewAccount;
- (void)viewDidLoad;
@end

@implementation AccountPSOutgoingDetailController

+ (id)outgoingSpecifiers
{
  v23 = [NSMutableArray arrayWithCapacity:3];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HOST_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v4 = [PSTextFieldSpecifier preferenceSpecifierNamed:v3 target:a1 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v4 setKeyboardType:3 autoCaps:0 autoCorrection:1];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OUTGOING_HOSTNAME_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setPlaceholder:v6];

  v7 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", MailAccountHostname, @"outgoing_key", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v4 setUserInfo:v7];

  [v23 addObject:v4];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"USER_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [PSTextFieldSpecifier preferenceSpecifierNamed:v9 target:a1 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  if (+[UIDevice mf_isPadIdiom])
  {
    v11 = 7;
  }

  else
  {
    v11 = 0;
  }

  [v10 setKeyboardType:v11 autoCaps:0 autoCorrection:1];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OPTIONAL" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v10 setPlaceholder:v13];

  v14 = [NSDictionary dictionaryWithObjectsAndKeys:MFMailAccountUsername, @"outgoing_key", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v10 setUserInfo:v14];

  [v23 addObject:v10];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PASSWORD" value:&stru_B9FC8 table:@"AccountPreferences"];
  v17 = [PSTextFieldSpecifier preferenceSpecifierNamed:v16 target:a1 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v17 setKeyboardType:1 autoCaps:0 autoCorrection:1];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"OPTIONAL" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v17 setPlaceholder:v19];

  *&v17[OBJC_IVAR___PSSpecifier_cellType] = 12;
  v20 = [NSDictionary dictionaryWithObjectsAndKeys:MailAccountPassword, @"outgoing_key", 0];
  [v17 setUserInfo:v20];

  [v23 addObject:v17];

  return v23;
}

+ (id)outgoingGroupSpecifiers
{
  v2 = [NSMutableArray arrayWithCapacity:4];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"OUTGOING_MAIL_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  [v2 addObject:v5];

  v6 = +[AccountPSOutgoingDetailController outgoingSpecifiers];
  [v2 addObjectsFromArray:v6];

  return v2;
}

- (void)viewDidLoad
{
  v3 = *&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier];
  if (!v3)
  {
    sub_79688();
  }

  v4 = [v3 userInfo];
  v22 = [v4 objectForKey:@"OutgoingAccountViewingAccountKey"];
  objc_storeStrong(&self->_viewingAccount, v22);
  v5 = [v4 objectForKey:@"OutgoingAccountAccountKey"];
  [(AccountPSDetailControllerBase *)self setAccount:v5];

  v6 = [v4 objectForKey:@"OutgoingAccountIsPrimaryAccountKey"];
  *(self + 224) = *(self + 224) & 0xFE | [v6 BOOLValue];

  if (*(self + 224))
  {
    if ([objc_opt_class() primaryDeliveryAccountIsDynamic])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *(self + 224) = *(self + 224) & 0xFD | v7;
  v8 = [v4 objectForKey:@"OutgoingAccountIsCarrierAccountKey"];
  if ([v8 BOOLValue])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *(self + 224) = *(self + 224) & 0xFB | v9;

  primaryForAccount = self->_primaryForAccount;
  self->_primaryForAccount = 0;

  if ((*(self + 224) & 1) == 0)
  {
    +[MailAccount mailAccounts];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v11 = v25 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v25;
      while (2)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v24 + 1) + 8 * v15);

          v17 = [v13 deliveryAccount];
          v18 = [(AccountPSDetailControllerBase *)self account];
          v19 = v17 == v18;

          if (v19)
          {
            v20 = self->_primaryForAccount;
            self->_primaryForAccount = v13;
            v21 = v13;

            goto LABEL_21;
          }

          v15 = v15 + 1;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_21:
    }
  }

  v23.receiver = self;
  v23.super_class = AccountPSOutgoingDetailController;
  [(AccountPSDetailControllerBase *)&v23 viewDidLoad];
  [(AccountPSOutgoingDetailController *)self _updateDoneButton];
}

- (void)applicationWillSuspend
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 isMultitaskingSupported];

  if ((v4 & 1) == 0)
  {
    if (*(&self->super + 184))
    {
      [(AccountPSDetailControllerBase *)self cancelAccountValidation];
    }

    v5 = [(AccountPSOutgoingDetailController *)self navigationController];
    v6 = [v5 topViewController];

    if (v6 == self)
    {
      v7 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
      [v7 resignFirstResponder];

      v8 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._accountValues];
      v9 = [(AccountPSDetailControllerBase *)self account];
      [v9 setAccountPropertiesWithDictionary:v8];

      [(AccountPSOutgoingDetailController *)self _saveAccounts];
    }
  }

  v10.receiver = self;
  v10.super_class = AccountPSOutgoingDetailController;
  [(AccountPSOutgoingDetailController *)&v10 applicationWillSuspend];
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = [(AccountPSOutgoingDetailController *)self parentController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AccountPSOutgoingDetailController *)self parentController];
    [v6 performSelector:"canceledAccountSetup"];
  }

  [(AccountPSOutgoingDetailController *)self dismissAnimated:1];
}

- (id)specifiersForNewAccount
{
  [objc_opt_class() outgoingSpecifiers];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v3 = v9 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) setTarget:{self, v8}];
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)specifiersForExistingAccount
{
  v59 = +[NSMutableArray array];
  v2 = [(AccountPSDetailControllerBase *)self account];

  if (v2)
  {
    v3 = [(AccountPSDetailControllerBase *)self account];
    v4 = [objc_opt_class() isSSLEditable];
  }

  else
  {
    v4 = 1;
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ENABLE_THIS_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setEnabled:withSpecifier:" get:"isEnabled:" detail:0 cell:6 edit:0];

  v8 = [NSDictionary dictionaryWithObjectsAndKeys:@"MailAccountIsActive", @"outgoing_key", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v7 setUserInfo:v8];

  v62 = PSIDKey;
  [v7 setProperty:@"TOGGLE_BUTTON" forKey:?];
  [v59 addObject:v7];
  v55 = [objc_opt_class() outgoingGroupSpecifiers];
  v57 = [v55 objectAtIndex:0];
  [v59 addObjectsFromArray:v55];
  if (v4)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"USE_SSL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:6 edit:0];

    v12 = [NSDictionary dictionaryWithObjectsAndKeys:MailAccountSSLEnabled, @"outgoing_key", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
    [v11 setUserInfo:v12];

    [v59 addObject:v11];
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"AUTHENTICATION" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v15 setProperty:@"authSchemeValuesForSpecifier:" forKey:PSValuesDataSourceKey];
  [v15 setProperty:@"authSchemeTitlesForSpecifier:" forKey:PSTitlesDataSourceKey];
  v16 = [NSDictionary dictionaryWithObjectsAndKeys:MFMailAccountAuthenticationScheme, @"outgoing_key", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v15 setUserInfo:v16];

  [v59 addObject:v15];
  v56 = v15;
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"SERVER_PORT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v19 = [PSTextFieldSpecifier preferenceSpecifierNamed:v18 target:self set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  v58 = v19;
  [v19 setKeyboardType:4 autoCaps:0 autoCorrection:1];
  v20 = MailAccountPortNumber;
  [v58 setProperty:MailAccountPortNumber forKey:PSKeyNameKey];
  v21 = [NSDictionary dictionaryWithObjectsAndKeys:v20, @"outgoing_key", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v58 setUserInfo:v21];

  [v59 addObject:v58];
  v22 = self;
  v23 = [(AccountPSDetailControllerBase *)self account];
  v60 = [v23 isManaged];

  v24 = +[MCProfileConnection sharedConnection];
  v25 = [v24 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v59;
  v26 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v26)
  {
    v27 = *v65;
    v28 = PSEnabledKey;
    do
    {
      v29 = 0;
      do
      {
        if (*v65 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v64 + 1) + 8 * v29);
        [v30 setTarget:v22];
        v31 = [v30 propertyForKey:v62];
        v32 = [v31 isEqualToString:@"TOGGLE_BUTTON"];
        if (v25 == 2)
        {
          v33 = 0;
        }

        else
        {
          v33 = v32;
        }

        if (v33)
        {
          goto LABEL_15;
        }

        if (v60 && ([v30 userInfo], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "objectForKey:", @"disableForManagedAccounts"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "BOOLValue"), v36, v35, (v37 & 1) != 0) || v25 == 2 && (objc_msgSend(v30, "userInfo"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "objectForKeyedSubscript:", @"disableForModificationRestrictions"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "BOOLValue"), v39, v38, (v40 & 1) != 0) || self->_primaryForAccount)
        {
LABEL_21:
          v34 = @"NO";
          goto LABEL_22;
        }

        v41 = *(self + 224);
        if (v41)
        {
          if ([objc_opt_class() setupIsAutomated])
          {
            goto LABEL_21;
          }

          v41 = *(self + 224);
        }

        if (v41)
        {
          goto LABEL_15;
        }

        v42 = [(AccountPSDetailControllerBase *)self account];
        if (([v42 hasNoReferences] & 1) == 0)
        {

LABEL_15:
          v34 = @"YES";
          goto LABEL_22;
        }

        v43 = (*(self + 224) & 4) == 0;

        if (v43)
        {
          v34 = @"YES";
        }

        else
        {
          v34 = @"NO";
        }

LABEL_22:
        [v30 setProperty:v34 forKey:v28];
        v29 = v29 + 1;
        v22 = self;
      }

      while (v26 != v29);
      v44 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      v26 = v44;
    }

    while (v44);
  }

  v45 = self;
  if ((*(self + 224) & 4) == 0)
  {
    v46 = [(AccountPSDetailControllerBase *)self account];
    v47 = [v46 hasNoReferences];

    v45 = self;
    if (v47)
    {
      v48 = +[PSSpecifier emptyGroupSpecifier];
      [obj addObject:v48];

      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"DELETE_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
      v51 = [PSSpecifier deleteButtonSpecifierWithName:v50 target:self action:"deleteOutgoingAccount"];

      v52 = [NSBundle bundleForClass:objc_opt_class()];
      v53 = [v52 localizedStringForKey:@"DELETE_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
      [v51 setProperty:v53 forKey:v62];

      [obj addObject:v51];
      v45 = self;
    }
  }

  [(AccountPSOutgoingDetailController *)v45 _bottomDescriptionWithSpecifier:v57];

  return obj;
}

- (id)specifiers
{
  v3 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v4 = [v3 objectForKey:@"OutgoingAccountAccountKey"];
  [(AccountPSDetailControllerBase *)self setAccount:v4];

  v5 = [(AccountPSDetailControllerBase *)self account];

  if (v5)
  {
    [(AccountPSOutgoingDetailController *)self specifiersForExistingAccount];
  }

  else
  {
    [(AccountPSOutgoingDetailController *)self specifiersForNewAccount];
  }
  v6 = ;
  v7 = OBJC_IVAR___PSListController__specifiers;
  v8 = *&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] = v6;

  v9 = *&self->super.ACUIViewController_opaque[v7];
  v10 = v9;

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AccountPSOutgoingDetailController;
  v8 = [(AccountPSOutgoingDetailController *)&v13 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 textField];
    if (v9)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 removeObserver:self name:0 object:v9];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:self selector:"propertyValueChanged:" name:UITextFieldTextDidChangeNotification object:v9];
    }
  }

  return v8;
}

- (void)saveAndDismiss
{
  [(AccountPSOutgoingDetailController *)self _resetDeliveryAccountsForViewingAccount];
  [(MailAccount *)self->_viewingAccount savePersistentAccount];
  v3 = [(AccountPSDetailControllerBase *)self account];
  [v3 savePersistentAccount];

  [(AccountPSOutgoingDetailController *)self _finishedAccountSetup];
}

- (void)processValidationResult:(int64_t)a3
{
  if (a3 != 2 && a3 != 4)
  {
    *(&self->super + 184) &= ~1u;
    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];

    [(AccountPSOutgoingDetailController *)self _updateDoneButton];
  }
}

- (void)validateForNewAccount
{
  v12 = [(NSMutableDictionary *)self->super._accountValues objectForKey:MailAccountHostname];
  v3 = [(NSMutableDictionary *)self->super._accountValues objectForKey:MFMailAccountUsername];
  v4 = [DeliveryAccount existingAccountWithHostname:v12 username:v3];
  v5 = v4;
  if (v4 && ([v4 usesSSL] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    if (self->super._accountValues)
    {
      v7 = objc_opt_class();
      v8 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._accountValues];
      v9 = [v7 newAccountWithDictionary:v8];
      if (v9)
      {
        v6 = [(AccountPSDetailControllerBase *)self validateAccount:v9 withFallbacks:1];
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_11;
    }

    v6 = 1;
  }

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ACCOUNT_VERIFIED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(AccountPSOutgoingDetailController *)self stopValidationWithPrompt:v11 showButtons:0];

  [(AccountPSOutgoingDetailController *)self setCellsChecked:1];
  [(AccountPSDetailControllerBase *)self setAccount:v5];
  *(self + 224) |= 8u;
  [(AccountPSOutgoingDetailController *)self _saveAccounts];
  [(AccountPSOutgoingDetailController *)self performSelector:"_finishedAccountSetup" withObject:0 afterDelay:1.0];
LABEL_11:
  [(AccountPSOutgoingDetailController *)self _updateDoneButton];
  [(AccountPSOutgoingDetailController *)self processValidationResult:v6];
}

- (void)validateForExistingAccount
{
  if (self->super._accountValues)
  {
    v7 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:?];
    v3 = [(AccountPSDetailControllerBase *)self account];
    [v3 setAccountPropertiesWithDictionary:v7];

    v4 = [(AccountPSDetailControllerBase *)self account];
    v5 = [v4 defaultConnectionSettings];
    originalConnectionSettings = self->super._originalConnectionSettings;
    self->super._originalConnectionSettings = v5;

    [(AccountPSOutgoingDetailController *)self processValidationResult:[(AccountPSDetailControllerBase *)self validateAccount]];
  }
}

- (void)handleValidAccount:(id)a3
{
  v7 = a3;
  v4 = [(AccountPSDetailControllerBase *)self account];

  if (!v4)
  {
    [DeliveryAccount addDeliveryAccount:v7];
    [(AccountPSDetailControllerBase *)self setAccount:v7];
  }

  *(self + 224) |= 8u;
  [(AccountPSOutgoingDetailController *)self _saveAccounts];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ACCOUNT_VERIFIED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(AccountPSOutgoingDetailController *)self stopValidationWithPrompt:v6 showButtons:0];

  [(AccountPSOutgoingDetailController *)self setCellsChecked:1];
  [(AccountPSOutgoingDetailController *)self performSelector:"_finishedAccountSetup" withObject:0 afterDelay:1.0];
}

- (void)_saveAccounts
{
  [(AccountPSOutgoingDetailController *)self _resetDeliveryAccountsForViewingAccount];
  [(MailAccount *)self->_viewingAccount savePersistentAccount];
  v3 = [(AccountPSDetailControllerBase *)self account];
  [v3 savePersistentAccount];

  v4 = [(AccountPSOutgoingDetailController *)self parentController];
  [v4 reloadOutgoingAccounts];
}

- (void)_bottomDescriptionWithSpecifier:(id)a3
{
  v12 = a3;
  v4 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v4 objectForKey:@"OutgoingAccountViewingAccountKey"];
  v6 = [v4 objectForKey:@"OutgoingAccountAccountKey"];
  v7 = [v6 isManaged];
  if (self->_primaryForAccount)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ALREADY_PRIMARY_ACCOUNT_DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];

    v10 = [(MailAccount *)self->_primaryForAccount displayName];
    v11 = [NSString stringWithFormat:v9, v10];

    [v12 setProperty:v11 forKey:PSFooterTextGroupKey];
LABEL_3:

    goto LABEL_4;
  }

  if (v7)
  {
    v9 = [v5 managedAccountFooterText];
    if (v9)
    {
      [v12 setProperty:v9 forKey:PSFooterTextGroupKey];
    }

    goto LABEL_3;
  }

LABEL_4:
}

- (void)_updateDoneButton
{
  v8 = [(AccountPSOutgoingDetailController *)self navigationItem];
  v3 = [v8 rightBarButtonItem];
  if ([(AccountPSOutgoingDetailController *)self haveEnoughValues])
  {
    v4 = (*(&self->super + 184) & 1) == 0;
  }

  else
  {
    v4 = 0;
  }

  [v3 setEnabled:v4];

  if (!self->super._account)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v9 localizedStringForKey:@"SAVE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v6 = [(AccountPSOutgoingDetailController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    [v7 setTitle:v5];
  }
}

- (BOOL)haveEnoughValues
{
  v21 = OBJC_IVAR___PSListController__specifiers;
  v20 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (v20)
  {
    v3 = 0;
    v19 = PSKeyNameKey;
    while (1)
    {
      v4 = [*&self->super.ACUIViewController_opaque[v21] objectAtIndex:v3];
      v5 = [v4 userInfo];
      v6 = [v4 properties];
      v7 = [v5 objectForKey:@"AccountPreferenceRequired"];

      if (!v7)
      {
        v15 = 1;
        goto LABEL_20;
      }

      v8 = [(AccountPSOutgoingDetailController *)self indexPathForIndex:v3];
      v9 = OBJC_IVAR___PSListController__table;
      v10 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] cellForRowAtIndexPath:v8];
      v11 = [v10 isEditing];

      if (!v11)
      {
        break;
      }

      v12 = [*&self->super.ACUIViewController_opaque[v9] cellForRowAtIndexPath:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 textField];
        v14 = [v13 text];
        v15 = [v14 length] != 0;

LABEL_18:
        goto LABEL_19;
      }

      v15 = 1;
LABEL_19:

LABEL_20:
      if (v20 <= ++v3 || (v15 & 1) == 0)
      {
        return v15;
      }
    }

    v12 = [v5 objectForKey:@"outgoing_key"];
    accountValues = self->super._accountValues;
    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->super._accountValues objectForKey:v12];
    }

    else
    {
      v17 = [v6 objectForKey:v19];
      v13 = [(NSMutableDictionary *)accountValues objectForKey:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqualToString:&stru_B9FC8] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v13, "count"))
    {

      v13 = 0;
    }

    v15 = v13 != 0;
    goto LABEL_18;
  }

  return 0;
}

- (void)_resetDeliveryAccountsForViewingAccount
{
  if ((*(self + 224) & 2) != 0)
  {
    viewingAccount = self->_viewingAccount;
    v9 = (*(self + 224) >> 4) & 1;

    [(MailAccount *)viewingAccount setPrimaryDeliveryAccountDisabled:v9];
  }

  else
  {
    if (*(self + 224))
    {
      v10 = self->_viewingAccount;
      v17 = [(AccountPSDetailControllerBase *)self account];
      [(MailAccount *)v10 setDeliveryAccount:?];
LABEL_20:

      return;
    }

    v3 = *(self + 224);
    v4 = self->_viewingAccount;
    if ((v3 & 4) == 0)
    {
      v16 = [(MailAccount *)v4 deliveryAccountAlternates];
      v5 = [v16 mutableCopy];

      v17 = v5;
      if (!v5)
      {
        v17 = objc_alloc_init(NSMutableArray);
      }

      if ((*(self + 224) & 8) != 0)
      {
        v12 = [(AccountPSDetailControllerBase *)self account];
        if (v12)
        {
          v13 = [(AccountPSDetailControllerBase *)self account];
          v14 = [v17 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [(AccountPSDetailControllerBase *)self account];
            [v17 addObject:v15];
          }
        }
      }

      else
      {
        v6 = [(AccountPSDetailControllerBase *)self account];
        v7 = [v17 indexOfObject:v6];

        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v17 removeObjectAtIndex:v7];
        }
      }

      [(MailAccount *)self->_viewingAccount setDeliveryAccountAlternates:v17];
      goto LABEL_20;
    }

    v11 = (*(self + 224) >> 3) & 1;

    [(MailAccount *)v4 setCanUseCarrierDeliveryFallback:v11];
  }
}

- (void)_finishedAccountSetup
{
  v3 = [(AccountPSOutgoingDetailController *)self parentController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AccountPSOutgoingDetailController *)self parentController];
    [v5 performSelector:"finishedAccountSetup"];
  }

  [(AccountPSOutgoingDetailController *)self dismissAnimated:1];

  [(AccountPSOutgoingDetailController *)self setTaskCompletionAssertionEnabled:0];
}

- (id)isEnabled:(id)a3
{
  v4 = a3;
  if ((*(self + 224) & 2) != 0)
  {
    v8 = [(MailAccount *)self->_viewingAccount isPrimaryDeliveryAccountDisabled];
    if (v8)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *(self + 224) = *(self + 224) & 0xEF | v9;
    v7 = (v8 ^ 1);
  }

  else if (*(self + 224))
  {
    v10 = [(NSMutableDictionary *)self->super._accountValues objectForKey:@"MailAccountIsActive"];
    v7 = [v10 BOOLValue];
  }

  else
  {
    viewingAccount = self->_viewingAccount;
    if ((*(self + 224) & 4) != 0)
    {
      v7 = [(MailAccount *)self->_viewingAccount canUseCarrierDeliveryFallback];
    }

    else
    {
      v6 = [(AccountPSDetailControllerBase *)self account];
      v7 = [(MailAccount *)viewingAccount canUseDeliveryAccount:v6];
    }

    if (v7)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    *(self + 224) = *(self + 224) & 0xF7 | v11;
  }

  v12 = [NSNumber numberWithBool:v7];

  return v12;
}

- (void)setEnabled:(id)a3 withSpecifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ((*(self + 224) & 2) != 0)
  {
    if ([v9 BOOLValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = 16;
    }

    v8 = *(self + 224) & 0xEF;
    goto LABEL_11;
  }

  if ((*(self + 224) & 1) == 0)
  {
    if ([v9 BOOLValue])
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(self + 224) & 0xF7;
LABEL_11:
    *(self + 224) = v8 | v7;
    goto LABEL_13;
  }

  [(NSMutableDictionary *)self->super._accountValues setObject:v9 forKey:@"MailAccountIsActive"];
LABEL_13:
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v11 = a3;
  v6 = [a4 userInfo];
  v7 = [v6 objectForKey:@"outgoing_key"];
  accountValues = self->super._accountValues;
  if (v11)
  {
    if (!accountValues)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->super._accountValues;
      self->super._accountValues = v9;

      accountValues = self->super._accountValues;
    }

    [(NSMutableDictionary *)accountValues setObject:v11 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)accountValues removeObjectForKey:v7];
  }
}

- (id)accountPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"outgoing_key"];
  v7 = [(NSMutableDictionary *)self->super._accountValues objectForKey:v6];
  if ([v6 isEqualToString:MailAccountHostname])
  {
    v8 = [(AccountPSDetailControllerBase *)self account];

    if (v8)
    {
      v9 = [(AccountPSDetailControllerBase *)self account];
      v10 = [v9 displayHostname];
      v11 = [v7 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        v12 = [(AccountPSDetailControllerBase *)self account];
        v13 = [v12 displayHostname];

        [v4 setProperty:@"NO" forKey:PSEnabledKey];
        v7 = v13;
      }
    }
  }

  return v7;
}

- (id)authSchemeValuesForSpecifier:(id)a3
{
  v3 = [(AccountPSDetailControllerBase *)self account];
  v4 = [objc_opt_class() authSchemeValues];

  return v4;
}

- (id)authSchemeTitlesForSpecifier:(id)a3
{
  v3 = [(AccountPSDetailControllerBase *)self account];
  v4 = [objc_opt_class() authSchemeTitles];

  return v4;
}

- (void)deleteOutgoingAccount
{
  if (+[UIDevice mf_isPadIdiom])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DELETE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v17[0] = v4;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CANCEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v17[1] = v6;
    v7 = [NSArray arrayWithObjects:v17 count:2];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DELETE_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DELETE_SMTP_SERVER_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v10 localizedStringForKey:@"DELETE_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
    v16[0] = v12;
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v16[1] = v14;
    v7 = [NSArray arrayWithObjects:v16 count:2];

    v9 = 0;
    v11 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1FC7C;
  v15[3] = &unk_B8F98;
  v15[4] = self;
  v15[5] = 0;
  [(AccountPSOutgoingDetailController *)self showConfirmationWithButtons:v7 title:v9 message:v11 destructive:1 completion:v15];
}

- (void)_reallyDeleteOutgoingAccount
{
  v4 = [(AccountPSDetailControllerBase *)self account];
  [DeliveryAccount removeDeliveryAccount:?];

  *(self + 224) &= ~8u;
  [(AccountPSOutgoingDetailController *)self _resetDeliveryAccountsForViewingAccount];
  v5 = [(AccountPSOutgoingDetailController *)self parentController];
  [v5 reloadOutgoingAccounts];

  v6 = [(AccountPSOutgoingDetailController *)self rootController];
  v3 = [v6 popViewControllerAnimated:1];
}

- (void)didFinishSaveAccountAnywaysSheetWithResult:(BOOL)a3
{
  if (a3)
  {
    v4 = [(AccountPSDetailControllerBase *)self accountValues];
    v7 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:v4];

    v5 = [(AccountPSDetailControllerBase *)self account];

    if (v5)
    {
      v6 = [(AccountPSDetailControllerBase *)self account];
      [v6 setAccountPropertiesWithDictionary:v7];
    }

    else
    {
      v6 = [(objc_class *)[(AccountPSOutgoingDetailController *)self accountClass] newAccountWithDictionary:v7];
      [DeliveryAccount addDeliveryAccount:v6];
    }

    [(AccountPSOutgoingDetailController *)self saveAndDismiss];
  }
}

@end
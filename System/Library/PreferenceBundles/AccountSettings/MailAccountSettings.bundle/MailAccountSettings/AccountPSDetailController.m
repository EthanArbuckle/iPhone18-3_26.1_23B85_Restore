@interface AccountPSDetailController
+ (id)log;
- (BOOL)_addAccount:(id)a3;
- (BOOL)_bypassAccountValidation;
- (BOOL)_hasEnoughInformationForEasySetup;
- (BOOL)_hasICloudMailAccount;
- (BOOL)_setupDeliveryAccountForValidatedAccount:(id)a3;
- (BOOL)_shouldHideEnableAndDelete;
- (BOOL)_showBackButton;
- (BOOL)haveEnoughValues;
- (BOOL)shouldDisplayNextButtonForChosenType;
- (BOOL)validateEmailAddress:(id)a3;
- (Class)accountClass;
- (id)_createDeliveryAccountWithUIValues;
- (id)_customDomainSpecifier;
- (id)_defaultAlias;
- (id)_descriptionFromEmailAddress:(id)a3;
- (id)_getMailSpecifier;
- (id)_incomingAccountPropertyForKey:(id)a3;
- (id)_isAliasEnabledForSpecifier:(id)a3;
- (id)_isMailEnabled:(id)a3;
- (id)_mailSwitchSpecifier;
- (id)_outgoingAccountPropertyForKey:(id)a3;
- (id)_setOfKeysForAlteredValuesInDictionary:(id)a3 originalDictionary:(id)a4;
- (id)_tobleroneMailSwitchSpecifier;
- (id)accountPropertyForKey:(id)a3 withSpecifier:(id)a4;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)addAccountFromCurrentSettings;
- (id)addAlternateEmailAccountFromCurrentSettings;
- (id)chosenType:(id)a3;
- (id)easySetupNote;
- (id)emailAliasDisplayStringWithSpecifier:(id)a3;
- (id)emailAliasListController:(id)a3 accountTypeForSpecifier:(id)a4;
- (id)emailAliasListController:(id)a3 defaultEmailAliasForSpecifier:(id)a4;
- (id)emailAliasListController:(id)a3 emailAliasListForSpecifier:(id)a4;
- (id)existingAccountSpecifiers;
- (id)getSMTPDisplayName:(id)a3;
- (id)outgoingHostName:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int)copyAccountsForEmailAddress:(id)a3 incomingAccount:(id *)a4 deliveryAccount:(id *)a5 easySetupNotes:(id *)a6;
- (int64_t)validateEasySetupAccounts;
- (void)_copyUIInformationIntoDeliveryAccount:(id)a3;
- (void)_copyUIInformationIntoIncomingAccount:(id)a3;
- (void)_enableAlias:(id)a3 forSpecifier:(id)a4;
- (void)_finishedEasySetup;
- (void)_getAccountInfoForEmailAddress:(id)a3;
- (void)_hideAccountValidationProgressUIWithPrompt:(id)a3;
- (void)_mailAccountNameChanged;
- (void)_setDefaultAlias:(id)a3 forSpecifier:(id)a4;
- (void)_setIncomingAccountProperty:(id)a3 forKey:(id)a4 specifier:(id)a5;
- (void)_setMailEnabled:(id)a3 forSpecifier:(id)a4;
- (void)_setOutgoingAccountProperty:(id)a3 forKey:(id)a4 specifier:(id)a5;
- (void)_showFailedAddressAlertWithTitle:(id)a3 body:(id)a4;
- (void)_stopShowingEasySetup;
- (void)_takeOutgoingAccountPropertiesFromAccount:(id)a3;
- (void)_tryEasySetupForEmailAddress:(id)a3;
- (void)_tryUpdatingDescriptionFromValue:(id)a3 forKey:(id)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)confirmAccountDeletion;
- (void)createAccounts;
- (void)createAccountsAnyways;
- (void)dealloc;
- (void)didEndEditingOnReturn:(id)a3;
- (void)didFinishSaveAccountAnywaysSheetWithResult:(BOOL)a3;
- (void)doneButtonTapped:(id)a3;
- (void)emailAliasListController:(id)a3 setEmailAliasList:(id)a4 defaultEmailAlias:(id)a5 forSpecifier:(id)a6;
- (void)finishedSetupWithAccount:(id)a3;
- (void)handleInvalidAccount:(id)a3;
- (void)handleSSLAlertForAccount:(id)a3 accountValidator:(id)a4 attemptWithoutSSL:(BOOL)a5;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)handleValidAccount:(id)a3;
- (void)icloudMailCreationNeedsViewUpdate:(id)a3 withAccount:(id)a4;
- (void)loadEmailAliasListController:(id)a3;
- (void)processValidationResult:(int64_t)a3;
- (void)propertyValueChanged:(id)a3;
- (void)reallyDeleteAccount;
- (void)resetTargetsForSpecifiers:(id)a3;
- (void)saveAndDismiss;
- (void)segmentChanged:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4 withSpecifier:(id)a5;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
- (void)setChosenType:(id)a3 withSpecifier:(id)a4;
- (void)setOutgoingHostName:(id)a3 withSpecifier:(id)a4;
- (void)showEasySetupNoteWithAccount:(id)a3;
- (void)showExistingAccountError;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDoneButton;
- (void)validateForExistingAccount;
- (void)validateForNewAccount;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AccountPSDetailController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EA34;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6450 != -1)
  {
    dispatch_once(&qword_D6450, block);
  }

  v2 = qword_D6448;

  return v2;
}

- (void)createAccounts
{
  [(AccountPSDetailController *)self doneButtonTapped:0];
  while ((*(&self->super + 184) & 1) != 0)
  {
    v4 = +[NSRunLoop currentRunLoop];

    if (!v4)
    {
      v7 = +[NSAssertionHandler currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"AccountPSDetailController.m" lineNumber:167 description:@"No run loop"];
    }

    v5 = +[NSRunLoop currentRunLoop];
    v6 = [NSDate dateWithTimeIntervalSinceNow:0.3];
    [v5 runUntilDate:v6];
  }
}

- (void)createAccountsAnyways
{
  [(AccountPSDetailController *)self doneButtonTapped:0];
  while (!self->super._account)
  {
    if ((*(&self->super + 184) & 2) == 0)
    {
      break;
    }

    v4 = +[NSRunLoop currentRunLoop];

    if (!v4)
    {
      v7 = +[NSAssertionHandler currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"AccountPSDetailController.m" lineNumber:180 description:@"No run loop"];
    }

    v5 = +[NSRunLoop currentRunLoop];
    v6 = [NSDate dateWithTimeIntervalSinceNow:0.3];
    [v5 runUntilDate:v6];
  }
}

- (void)confirmAccountDeletion
{
  v3 = [(AccountPSDetailControllerBase *)self account];
  v4 = [v3 persistentAccount];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_EE94;
  v5[3] = &unk_B8E60;
  v5[4] = self;
  [(AccountPSDetailController *)self showConfirmationForDeletingAccount:v4 completion:v5];
}

- (void)_setMailEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = +[AccountPSDetailController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "user changed mail dataclass flag to %@", buf, 0xCu);
  }

  v7 = [(AccountPSDetailController *)self existingAccount];

  if (v7)
  {
    v8 = [(AccountPSDetailController *)self existingAccount];
    v9 = [v8 parentAccount];

    v10 = [v5 BOOLValue];
    [v9 setEnabled:v10 forDataclass:ACAccountDataclassMail];
    v11 = +[ACAccountStore defaultStore];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_F1BC;
    v25 = &unk_B8E88;
    v12 = v9;
    v26 = v12;
    [v11 saveVerifiedAccount:v12 withCompletionHandler:&v22];
    v13 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v13 performBlock:&v21];
  }

  else
  {
    appleAccount = self->_appleAccount;
    if (appleAccount)
    {
      v12 = appleAccount;
      icloudMailCreator = self->_icloudMailCreator;
      if (!icloudMailCreator)
      {
        v16 = [ICloudMailCreator alloc];
        v17 = self->_appleAccount;
        v18 = [(ACAccount *)v17 accountStore];
        v19 = [(ICloudMailCreator *)v16 initWithViewController:self appleAccount:v17 accountStore:v18];
        v20 = self->_icloudMailCreator;
        self->_icloudMailCreator = v19;

        [(ICloudMailCreator *)self->_icloudMailCreator setDelegate:self];
        icloudMailCreator = self->_icloudMailCreator;
      }

      [(ICloudMailCreator *)icloudMailCreator showAlertForMailSetup];
    }

    else
    {
      v12 = 0;
    }
  }
}

- (id)_isMailEnabled:(id)a3
{
  v4 = [(AccountPSDetailController *)self existingAccount];

  if (v4)
  {
    v5 = [(AccountPSDetailController *)self existingAccount];
    v6 = [v5 parentAccount];
  }

  else
  {
    appleAccount = self->_appleAccount;
    if (appleAccount)
    {
      v6 = appleAccount;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = [NSNumber numberWithBool:[(ACAccount *)v6 isEnabledForDataclass:ACAccountDataclassMail]];

  return v8;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AccountPSDetailController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "handleURL with dicttionary: %@.", buf, 0xCu);
  }

  v9 = [v6 objectForKey:@"domain"];
  if (v9)
  {
    v10 = [v6 objectForKey:@"domainState"];
    byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
    if (!byodSpecifierProviderAdapter)
    {
      v12 = [[BYODSpecifierProviderAdapter alloc] initWithAccountManager:self->_accountManager presenter:self];
      v13 = self->_byodSpecifierProviderAdapter;
      self->_byodSpecifierProviderAdapter = v12;

      byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_F5D4;
    v15[3] = &unk_B8ED8;
    v16 = v7;
    [(BYODSpecifierProviderAdapter *)byodSpecifierProviderAdapter loadDomain:v9 withState:v10 completion:v15];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AccountPSDetailController;
    [(AccountPSDetailController *)&v14 handleURL:v6 withCompletion:v7];
  }
}

- (id)existingAccountSpecifiers
{
  v3 = [(AccountPSDetailController *)self existingAccount];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [v5 valueForKey:@"hideMailDataclass"];

  if (!v6)
  {
    if ([v3 mailDataClassSwitch])
    {
      v7 = [(AccountPSDetailController *)self _getMailSpecifier];
      [v4 addObjectsFromArray:v7];
    }

    if ([v3 hasCustomDomain])
    {
      v8 = [(AccountPSDetailController *)self _customDomainSpecifier];
      [v4 addObjectsFromArray:v8];
    }
  }

  v9 = [v3 detailedSpecifiers];
  [v4 addObjectsFromArray:v9];

  v10 = [v4 specifierForID:@"EXISTING_ACCOUNT_EMAIL"];
  v11 = [v4 indexOfObject:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v3 isManaged];
    if (!v12 || ([v3 emailAddressStrings], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 >= 2))
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"emailAliasDisplayStringWithSpecifier:" detail:0 cell:2 edit:0];

      [v17 setControllerLoadAction:"loadEmailAliasListController:"];
      [v17 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v17 setProperty:MailAccountEmailAddresses forKey:PSKeyNameKey];
      v25[0] = @"AccountPreferenceRequired";
      v25[1] = @"AccountPreferenceRequired";
      v26[0] = &__kCFBooleanTrue;
      v26[1] = &__kCFBooleanFalse;
      v25[2] = @"DisableEmailAliasListEditing";
      v18 = [NSNumber numberWithBool:v12];
      v25[3] = @"disableForModificationRestrictions";
      v26[2] = v18;
      v26[3] = &__kCFBooleanTrue;
      v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
      [v17 setUserInfo:v19];

      [v4 replaceObjectAtIndex:v11 withObject:v17];
    }
  }

  if ([(AccountPSDetailController *)self _shouldHideEnableAndDelete])
  {
    v20 = [v4 specifierForID:@"MailAccountIsActive"];
    v21 = [v4 indexOfObject:v20];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 removeObjectAtIndex:v21];
      [v4 removeObjectAtIndex:v21 - 1];
    }

    v22 = [v4 specifierForID:@"DELETE_ACCOUNT"];
    v23 = [v4 indexOfObject:v22];

    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 removeObjectAtIndex:v23];
    }
  }

  return v4;
}

- (id)_getMailSpecifier
{
  if (+[AAUIFeatureFlags isTobleroneEnabled])
  {
    [(AccountPSDetailController *)self _tobleroneMailSwitchSpecifier];
  }

  else
  {
    [(AccountPSDetailController *)self _mailSwitchSpecifier];
  }
  v3 = ;

  return v3;
}

- (id)_tobleroneMailSwitchSpecifier
{
  v27 = objc_alloc_init(NSMutableArray);
  v25 = [PSSpecifier groupSpecifierWithID:@"MAIL_DATACLASS_SWITCH_GROUP_SPECIFIER"];
  [v27 addObject:v25];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [UIImage imageNamed:@"mailSettingsIcon.png" inBundle:v3];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MAIL_CARD_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"MAIL_CARD_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setProperty:v8 forKey:PSTitleKey];

  v9 = objc_alloc_init(AADeviceInfo);
  v10 = [v9 deviceClass];
  v11 = [v10 uppercaseString];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [@"MAIL_CARD_SUBTEXT_" stringByAppendingString:v11];
  v14 = [v12 localizedStringForKey:v13 value:&stru_B9FC8 table:@"AccountPreferences"];

  [v6 setProperty:v14 forKey:PSTableCellSubtitleTextKey];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"MAIL_DATACLASS_SWITCH_KB_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setProperty:v16 forKey:@"AAUIDataclassAttributedLink"];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"LEARN_MORE_ELLIPSIS" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setProperty:v18 forKey:@"AAUIDataclassAttributedLinkText"];

  [v6 setProperty:&off_C0548 forKey:PSAlignmentKey];
  v19 = PSIconImageKey;
  [v6 setProperty:v26 forKey:PSIconImageKey];
  [v27 addObject:v6];
  v20 = [PSSpecifier acui_specifierForDataclass:ACAccountDataclassMail account:self->_appleAccount target:self set:"_setMailEnabled:forSpecifier:" get:"_isMailEnabled:"];
  [v20 removePropertyForKey:v19];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [@"MAIL_DATACLASS_SWITCH_TEXT_" stringByAppendingString:v11];
  v23 = [v21 localizedStringForKey:v22 value:&stru_B9FC8 table:@"AccountPreferences"];

  [v20 setName:v23];
  [v27 addObject:v20];

  return v27;
}

- (id)_customDomainSpecifier
{
  byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
  if (!byodSpecifierProviderAdapter)
  {
    v4 = [[BYODSpecifierProviderAdapter alloc] initWithAccountManager:self->_accountManager presenter:self];
    v5 = self->_byodSpecifierProviderAdapter;
    self->_byodSpecifierProviderAdapter = v4;

    byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
  }

  return [(BYODSpecifierProviderAdapter *)byodSpecifierProviderAdapter specifiers];
}

- (id)_mailSwitchSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE_PERIOD" value:&stru_B9FC8 table:@"AccountPreferences"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MAIL_DATACLASS_SWITCH_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [NSString stringWithFormat:@"%@ %@", v7, v5];

  v9 = [PSSpecifier groupSpecifierWithID:@"MAIL_DATACLASS_SWITCH_GROUP_SPECIFIER"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 setProperty:v11 forKey:PSFooterCellClassGroupKey];

  [v9 setProperty:v8 forKey:PSFooterHyperlinkViewTitleKey];
  v20.location = [v8 rangeOfString:v5];
  v12 = NSStringFromRange(v20);
  [v9 setProperty:v12 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"MAIL_DATACLASS_SWITCH_KB_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v9 setProperty:v14 forKey:PSFooterHyperlinkViewURLKey];

  [v3 addObject:v9];
  v15 = [PSSpecifier acui_specifierForDataclass:ACAccountDataclassMail account:self->_appleAccount target:self set:"_setMailEnabled:forSpecifier:" get:"_isMailEnabled:"];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"ICLOUD_MAIL_LABEL" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v15 setName:v17];

  [v3 addObject:v15];

  return v3;
}

- (id)specifiers
{
  v84 = OBJC_IVAR___PSListController__specifiers;
  v2 = &OBJC_METACLASS___AccountLinkButton;
  if (!*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v3 = OBJC_IVAR___PSViewController__specifier;
    v79 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    obj = [v79 objectForKey:ACUIAccountKey];
    v4 = [obj accountPropertyForKey:@"ACUISaysNotToSaveThis"];

    v5 = obj;
    if (v4)
    {
      v6 = obj;
    }

    else
    {
      v6 = 0;
    }

    v80 = v6;
    if (v4)
    {
      v5 = 0;
    }

    obja = v5;
    if (!self->_accountManager)
    {
      v7 = [*&self->super.ACUIViewController_opaque[v3] propertyForKey:@"icloudAccountManager"];
      accountManager = self->_accountManager;
      self->_accountManager = v7;

      v5 = obja;
    }

    if (v5)
    {
      v9 = +[AccountPSDetailController log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "account from specifier is not nil", buf, 2u);
      }

      v10 = [MFAccount accountWithPersistentAccount:obja];
      if (v10)
      {
        if (_os_feature_enabled_impl())
        {
          objc_storeStrong(&self->_mailAccount, obja);
        }

        v81 = v10;
        goto LABEL_27;
      }
    }

    objc_storeStrong(&self->_appleAccount, obja);
    v11 = +[AccountPSDetailController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "account from specifier is nil. Will show create email flow when dataclass enabled", buf, 2u);
    }

    if (_os_feature_enabled_impl())
    {
      v12 = [obja aa_childMailAccount];

      v13 = v12;
    }

    else
    {
      v13 = obja;
    }

    obja = v13;
    v14 = [MFAccount accountWithPersistentAccount:?];
    v15 = +[AccountPSDetailController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v99 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "retrying if account is available %@", buf, 0xCu);
    }

    if (v14)
    {
      v81 = v14;
LABEL_27:
      v18 = [(AccountPSDetailControllerBase *)self account];
      v19 = v18 == 0;

      if (v19)
      {
        [(AccountPSDetailController *)self setAccount:v81];
      }

      v20 = [(AccountPSDetailController *)self existingAccountSpecifiers];
      goto LABEL_30;
    }

    v16 = [(AccountPSDetailControllerBase *)self account];
    v17 = v16 == 0;

    if (!v17)
    {
      v81 = 0;
      goto LABEL_27;
    }

    if ((*(self + 344) & 2) != 0)
    {
      v66 = [NSArray alloc];
      v21 = [(AccountPSDetailController *)self easySetupNote];
      v67 = [PSSpecifier groupSpecifierWithName:v21];
      v68 = [v66 initWithObjects:{v67, 0}];
      v69 = *&self->super.ACUIViewController_opaque[v84];
      *&self->super.ACUIViewController_opaque[v84] = v68;

LABEL_88:
      v81 = 0;
LABEL_31:

      [(AccountPSDetailController *)self resetTargetsForSpecifiers:*&self->super.ACUIViewController_opaque[v84]];
      [(AccountPSDetailController *)self updateDoneButton];
      if ([(MFAccount *)self->super._account isManaged])
      {
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v86 = *&self->super.ACUIViewController_opaque[v84];
        v22 = [v86 countByEnumeratingWithState:&v92 objects:v97 count:16];
        if (v22)
        {
          v23 = *v93;
          v24 = PSEnabledKey;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v93 != v23)
              {
                objc_enumerationMutation(v86);
              }

              v26 = *(*(&v92 + 1) + 8 * i);
              v27 = [v26 userInfo];
              v28 = [v27 objectForKey:@"disableForManagedAccounts"];
              v29 = [v28 BOOLValue];

              if (v29)
              {
                [v26 setProperty:kCFBooleanFalse forKey:v24];
              }
            }

            v22 = [v86 countByEnumeratingWithState:&v92 objects:v97 count:16];
          }

          while (v22);
        }
      }

      v30 = +[MCProfileConnection sharedConnection];
      v31 = [v30 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] == 2;

      if (v31)
      {
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = *&self->super.ACUIViewController_opaque[v84];
        v32 = [v87 countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v32)
        {
          v33 = *v89;
          v34 = PSEnabledKey;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v89 != v33)
              {
                objc_enumerationMutation(v87);
              }

              v36 = *(*(&v88 + 1) + 8 * j);
              v37 = [v36 userInfo];
              v38 = [v37 objectForKeyedSubscript:@"disableForModificationRestrictions"];
              v39 = [v38 BOOLValue];

              if (v39)
              {
                [v36 setProperty:kCFBooleanFalse forKey:v34];
              }
            }

            v32 = [v87 countByEnumeratingWithState:&v88 objects:v96 count:16];
          }

          while (v32);
        }
      }

      v40 = [(AccountPSDetailControllerBase *)self account];

      if (v40)
      {
        v41 = +[AccountPSDetailController log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_795EC(v41);
        }

        v42 = self;
        if (!self->super._accountValues)
        {
          v43 = objc_alloc_init(NSMutableDictionary);
          accountValues = self->super._accountValues;
          self->super._accountValues = v43;

          v45 = [(AccountPSDetailControllerBase *)self account];
          v46 = *&self->super.ACUIViewController_opaque[v84];
          v47 = [(AccountPSDetailControllerBase *)self accountValues];
          [v45 copyAccountPropertiesForSpecifiers:v46 intoDictionary:v47];

          v42 = self;
        }

        if (v42->super._originalAccountValues)
        {
          goto LABEL_64;
        }

        v48 = objc_alloc_init(NSMutableDictionary);
        originalAccountValues = self->super._originalAccountValues;
        self->super._originalAccountValues = v48;

        v50 = [(AccountPSDetailControllerBase *)self account];
        v51 = *&self->super.ACUIViewController_opaque[v84];
        v52 = [(AccountPSDetailControllerBase *)self originalAccountValues];
        [v50 copyAccountPropertiesForSpecifiers:v51 intoDictionary:v52];
      }

      else
      {
        v53 = [v80 username];
        v54 = v53 == 0;

        if (v54 || self->super._accountValues)
        {
          goto LABEL_64;
        }

        v55 = objc_alloc_init(NSMutableDictionary);
        v56 = self->super._accountValues;
        self->super._accountValues = v55;

        v57 = self->super._accountValues;
        v58 = [v80 username];
        v59 = MailAccountEmailAddresses;
        [(NSMutableDictionary *)v57 setObject:v58 forKey:MailAccountEmailAddresses];

        v60 = [v80 username];
        [(AccountPSDetailController *)self _tryUpdatingDescriptionFromValue:v60 forKey:v59];

        v50 = [(AccountPSDetailControllerBase *)self account];
        v61 = *&self->super.ACUIViewController_opaque[v84];
        v52 = [(AccountPSDetailControllerBase *)self accountValues];
        [v50 copyAccountPropertiesForSpecifiers:v61 intoDictionary:v52];
      }

LABEL_64:
      v2 = &OBJC_METACLASS___AccountLinkButton;
      goto LABEL_65;
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && self->_appleAccount)
    {
      v20 = [(AccountPSDetailController *)self _getMailSpecifier];
      v81 = 0;
LABEL_30:
      v21 = *&self->super.ACUIViewController_opaque[v84];
      *&self->super.ACUIViewController_opaque[v84] = v20;
      goto LABEL_31;
    }

    v70 = v79;
    v71 = [v79 objectForKey:@"specifierAccount"];
    v21 = v71;
    if (v71)
    {
      v72 = NSClassFromString(v71);
    }

    else
    {
      v72 = [v79 objectForKey:@"class"];

      v70 = v79;
    }

    v73 = [v70 objectForKey:@"RegionalDisplayName"];
    v74 = [v70 objectForKey:@"PlaceholderAddress"];
    if (v72)
    {
      v75 = [v72 firstSetupSpecifiers];
    }

    else
    {
      if ((*(self + 344) & 4) != 0)
      {
        if ((*(self + 344) & 1) == 0)
        {
          if (!self->_chosenType)
          {
            objc_storeStrong(&self->_chosenType, self->_imapAccountClassString);
          }

          v75 = +[MailAccount firstSetupSpecifiers];
          goto LABEL_87;
        }
      }

      else
      {
        v76 = [v70 objectForKey:@"AccountTypes"];
        easySetupAccountTypes = self->_easySetupAccountTypes;
        self->_easySetupAccountTypes = v76;

        *(self + 344) |= 1u;
      }

      v75 = [MailAccount easySetupSpecifiersWithPlaceholderAddress:v74 accountName:v73];
    }

LABEL_87:
    v78 = *&self->super.ACUIViewController_opaque[v84];
    *&self->super.ACUIViewController_opaque[v84] = v75;

    goto LABEL_88;
  }

LABEL_65:
  v62 = [&v2[7] log];
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = *&self->super.ACUIViewController_opaque[v84];
    *buf = 138412290;
    v99 = v63;
    _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "AccountPSDetailController specifiers: returning %@", buf, 0xCu);
  }

  v64 = *&self->super.ACUIViewController_opaque[v84];

  return v64;
}

- (void)resetTargetsForSpecifiers:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 isEqualToString:@"BYOD_SETTING_SPECIFIER_ID"];

        if ((v10 & 1) == 0)
        {
          [v8 setTarget:self];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = AccountPSDetailController;
  [(AccountPSDetailControllerBase *)&v33 viewDidLoad];
  v3 = *&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier];
  if (!v3)
  {
    sub_79630();
  }

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"chosenType"];
  if (v5)
  {
    objc_storeStrong(&self->_chosenType, v5);
  }

  v6 = [v4 objectForKey:@"outgoingValues"];

  if (v6)
  {
    v7 = [v6 mutableCopy];
    outgoingAccountValues = self->_outgoingAccountValues;
    self->_outgoingAccountValues = v7;
  }

  if (!self->_popAccountClassString)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    popAccountClassString = self->_popAccountClassString;
    self->_popAccountClassString = v10;
  }

  if (!self->_imapAccountClassString)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    imapAccountClassString = self->_imapAccountClassString;
    self->_imapAccountClassString = v13;
  }

  v15 = MFMailAccountUsername;
  v16 = [v4 objectForKey:MFMailAccountUsername];

  if (v16)
  {
    [(AccountPSDetailController *)self setIncomingAccountProperty:v16 forKey:v15];
  }

  if (*(self + 344))
  {
    v17 = [v4 objectForKey:@"RegionalDisplayName"];
    v18 = v17;
    if (!v17)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v15 localizedStringForKey:@"NEW_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    v19 = [(AccountPSDetailController *)self navigationItem];
    [v19 setTitle:v18];

    if (!v17)
    {
    }
  }

  if (self->super._initialTitle)
  {
    v20 = [(AccountPSDetailController *)self navigationItem];
    v21 = [v20 title];
    initialTitle = self->super._initialTitle;
    self->super._initialTitle = v21;
  }

  v23 = [(AccountPSDetailController *)self specifierForID:MailAccountPassword];
  passwordSpecifier = self->_passwordSpecifier;
  self->_passwordSpecifier = v23;

  if ([(AccountPSDetailController *)self _showBackButton])
  {
    v25 = [(AccountPSDetailController *)self navigationItem];
    [v25 setHidesBackButton:0];

    v26 = [v4 valueForKey:@"hideMailDataclass"];

    if (!v26)
    {
      v27 = [(AccountPSDetailController *)self navigationItem];
      [v27 setLeftBarButtonItem:0];
    }
  }

  [(AccountPSDetailController *)self updateDoneButton];
  if ((_os_feature_enabled_impl() & 1) != 0 || !self->_appleAccount || [(AccountPSDetailController *)self _hasICloudMailAccount])
  {
    v28 = [(AccountPSDetailController *)self navigationItem];
    v29 = [v28 rightBarButtonItem];
    [v29 setHidden:0];
  }

  else
  {
    v28 = [(AccountPSDetailController *)self navigationItem];
    v29 = [v28 rightBarButtonItem];
    [v29 setHidden:1];
  }

  v30 = [(AccountPSDetailController *)self table];
  v31 = objc_opt_class();
  v32 = +[AccountPSDetailTableCell cellReuseIdentifier];
  [v30 registerClass:v31 forCellReuseIdentifier:v32];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(AccountPSDetailController *)self shouldSelectResponderOnAppearance];
  v19.receiver = self;
  v19.super_class = AccountPSDetailController;
  [(AccountPSDetailController *)&v19 viewWillAppear:v3];
  if (v5)
  {
    v6 = [(AccountPSDetailController *)self findFirstVisibleResponder];
    v7 = [(AccountPSDetailController *)self table];
    v8 = [v7 indexPathForCell:v6];

    v9 = [(AccountPSDetailController *)self indexForIndexPath:v8];
    v10 = [(AccountPSDetailController *)self specifierAtIndex:v9];
    if (v10)
    {
      v11 = PSDefaultValueKey;
      v12 = v9 + 1;
      while (1)
      {
        v13 = [v10 propertyForKey:v11];
        v14 = [v13 length];

        if (!v14)
        {
          break;
        }

        v15 = [(AccountPSDetailController *)self specifierAtIndex:v12];

        ++v12;
        v10 = v15;
        if (!v15)
        {
          goto LABEL_8;
        }
      }

      v16 = [(AccountPSDetailController *)self indexPathForSpecifier:v10];
      v17 = [(AccountPSDetailController *)self table];
      v18 = [v17 cellForRowAtIndexPath:v16];
      [v18 becomeFirstResponder];
    }

LABEL_8:
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(UISegmentedControl *)self->_accountTypeSegmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  editableSuffixes = self->_editableSuffixes;
  if (editableSuffixes)
  {
    CFRelease(editableSuffixes);
  }

  v5.receiver = self;
  v5.super_class = AccountPSDetailController;
  [(AccountPSDetailControllerBase *)&v5 dealloc];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AccountPSDetailController *)self indexForIndexPath:v7];
  v9 = [(AccountPSDetailController *)self specifierAtIndex:v8];
  v27.receiver = self;
  v27.super_class = AccountPSDetailController;
  v10 = [(AccountPSDetailController *)&v27 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 textField];
    if (v11)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 removeObserver:self name:0 object:v11];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"propertyValueChanged:" name:UITextFieldTextDidChangeNotification object:v11];

      v14 = [v9 propertyForKey:PSKeyNameKey];
      v15 = [v14 isEqualToString:MFMailAccountUsername];

      if (v15)
      {
        objc_storeStrong(&self->_usernameField, v11);
      }

      v16 = [v9 userInfo];
      v17 = [v16 objectForKey:ACUIAccountKey];

      if (!v17)
      {
        v18 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
        v19 = [v18 userInfo];
        v20 = [v19 objectForKey:@"UserEditableSuffix"];

        if ([v20 length])
        {
          editableSuffixes = self->_editableSuffixes;
          if (!editableSuffixes)
          {
            editableSuffixes = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
            self->_editableSuffixes = editableSuffixes;
          }

          if (!CFDictionaryGetValue(editableSuffixes, v11))
          {
            v22 = [[EditableSuffixData alloc] initWithSuffixString:v20];
            CFDictionaryAddValue(self->_editableSuffixes, v11, v22);
          }
        }
      }

      [(UISegmentedControl *)v11 addTarget:self action:"didEndEditingOnReturn:" forControlEvents:0x80000];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 control];
      if (self->_accountTypeSegmentedControl != v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_accountTypeSegmentedControl, v11);
          [(UISegmentedControl *)self->_accountTypeSegmentedControl addTarget:self action:"segmentChanged:" forControlEvents:4096];
        }
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v11 = [(AccountPSDetailController *)self specifierAtIndex:[(AccountPSDetailController *)self indexForIndexPath:v7]];
      v23 = [(UISegmentedControl *)v11 identifier];
      v24 = [v23 isEqualToString:@"BYOD_SETTING_SPECIFIER_ID"];

      if (v24)
      {
        v25 = [v10 titleLabel];
        [v25 setAdjustsFontSizeToFitWidth:1];
      }
    }
  }

LABEL_21:

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AccountPSDetailController *)self specifierAtIndex:[(AccountPSDetailController *)self indexForIndexPath:v7]];
  v9 = *&v8[OBJC_IVAR___PSSpecifier_detailControllerClass];
  if (v9 == objc_opt_class())
  {
    v10 = [v8 userInfo];
    v11 = [v10 mutableCopy];

    [v11 setValue:self->super._accountValues forKey:@"values"];
    [v11 setValue:self->super._originalAccountValues forKey:@"originalValues"];
    [v8 setUserInfo:v11];
  }

  v12.receiver = self;
  v12.super_class = AccountPSDetailController;
  [(AccountPSDetailController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)doneButtonTapped:(id)a3
{
  v4 = a3;
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:1];
  v5 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v5 resignFirstResponder];

  v6 = [(AccountPSDetailController *)self _bypassAccountValidation];
  if ((*(self + 344) & 2) != 0)
  {
    *(self + 344) &= ~2u;
    if ((self->_easySetupResult == 1) | v6 & 1 || !self->_easySetupAccount)
    {
      [(AccountPSDetailController *)self _hideAccountValidationProgressUIWithPrompt:self->super._initialTitle];
    }

    else if (![(AccountPSDetailController *)self validateEasySetupAccounts])
    {
      [(AccountPSDetailController *)self showExistingAccountError];
    }
  }

  else
  {
    if (self->_outgoingAccountValuesAfterFailedValidation)
    {
      v7 = [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:self->_outgoingAccountValues originalDictionary:?];
      v8 = [objc_opt_class() propertiesWhichRequireValidation];
      v9 = [v8 intersectsSet:v7];

      if (v9)
      {
        *(&self->super + 184) &= ~2u;
      }
    }

    v10.receiver = self;
    v10.super_class = AccountPSDetailController;
    [(AccountPSDetailControllerBase *)&v10 doneButtonTapped:v4];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  v5 = a3;
  if (self->super._account)
  {
    v4 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._originalAccountValues];
    [(MFAccount *)self->super._account setAccountPropertiesWithDictionary:v4];
  }

  [(AccountPSDetailController *)self setAccount:0];
  [(AccountPSDetailController *)self dismissAnimated:1];
}

- (void)loadEmailAliasListController:(id)a3
{
  v4 = a3;
  emailAliasListController = self->_emailAliasListController;
  v11 = v4;
  if (!emailAliasListController)
  {
    v6 = objc_alloc_init(EmailAliasListController);
    v7 = self->_emailAliasListController;
    self->_emailAliasListController = v6;

    [(EmailAliasListController *)self->_emailAliasListController setDataSource:self];
    emailAliasListController = self->_emailAliasListController;
    v4 = v11;
  }

  [(EmailAliasListController *)emailAliasListController setSpecifier:v4];
  v8 = [v11 userInfo];
  v9 = [v8 objectForKey:@"DisableEmailAliasListEditing"];
  -[EmailAliasListController setDisableEmailAliasListChanges:](self->_emailAliasListController, "setDisableEmailAliasListChanges:", [v9 BOOLValue]);

  v10 = [(AccountPSDetailController *)self navigationController];
  [v10 pushViewController:self->_emailAliasListController animated:1];
}

- (id)emailAliasDisplayStringWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(AccountPSDetailController *)self accountPropertyForKey:MFAliasDefaultKey withSpecifier:v4];
  if (![v5 length])
  {
    v6 = [(AccountPSDetailController *)self accountPropertyForKey:MailAccountEmailAddresses withSpecifier:v4];
    v7 = [v6 componentsSeparatedByString:{@", "}];

    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];

      v5 = v8;
    }
  }

  return v5;
}

- (id)emailAliasListController:(id)a3 emailAliasListForSpecifier:(id)a4
{
  v4 = [(AccountPSDetailController *)self accountPropertyForKey:MailAccountEmailAddresses withSpecifier:a4];
  v5 = [v4 componentsSeparatedByString:{@", "}];

  return v5;
}

- (id)emailAliasListController:(id)a3 defaultEmailAliasForSpecifier:(id)a4
{
  v4 = [(AccountPSDetailController *)self accountPropertyForKey:MFAliasDefaultKey withSpecifier:a4];

  return v4;
}

- (id)emailAliasListController:(id)a3 accountTypeForSpecifier:(id)a4
{
  v4 = [(objc_class *)[(AccountPSDetailController *)self accountClass:a3] displayedAccountTypeString];

  return v4;
}

- (void)emailAliasListController:(id)a3 setEmailAliasList:(id)a4 defaultEmailAlias:(id)a5 forSpecifier:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v12 componentsJoinedByString:{@", "}];
  [(AccountPSDetailController *)self setAccountProperty:v11 forKey:MailAccountEmailAddresses withSpecifier:v10];

  [(AccountPSDetailController *)self setAccountProperty:v9 forKey:MFAliasDefaultKey withSpecifier:v10];
  [(AccountPSDetailController *)self reloadSpecifier:v10];
}

- (void)saveAndDismiss
{
  v3 = [(MFAccount *)self->super._account persistentAccount];
  v4 = [v3 accountStore];

  if (v4)
  {
    [(MFAccount *)self->super._account savePersistentAccount];
    [(MFAccount *)self->super._account pushUpdateForAliasData];
  }

  [(AccountPSDetailController *)self finishedSetupWithAccount:self->super._account];

  [(AccountPSDetailController *)self reloadParentSpecifier];
}

- (BOOL)haveEnoughValues
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v19 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (!v19)
  {
    return 0;
  }

  v17 = PSKeyNameKey;
  v18 = v3;
  v4 = 1;
  do
  {
    v5 = [*&self->super.ACUIViewController_opaque[v3] objectAtIndex:v4 - 1];
    v6 = [v5 userInfo];
    v7 = [v5 properties];
    v8 = [v6 objectForKey:@"AccountPreferenceRequired"];

    if (v8)
    {
      v9 = [(AccountPSDetailController *)self cachedCellForSpecifier:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 textField];
        v11 = [v10 text];

        v12 = [v11 length] != 0;
      }

      else
      {
        v11 = [v6 objectForKey:@"outgoing_key"];
        if (v11)
        {
          v13 = [(NSMutableDictionary *)self->_outgoingAccountValues objectForKey:v11];
        }

        else
        {
          accountValues = self->super._accountValues;
          v15 = [v7 objectForKey:v17];
          v13 = [(NSMutableDictionary *)accountValues objectForKey:v15];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqualToString:&stru_B9FC8] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v13, "count"))
        {

          v13 = 0;
        }

        v12 = v13 != 0;

        v3 = v18;
      }
    }

    else
    {
      v12 = 1;
    }

    if (v4 >= v19)
    {
      break;
    }

    ++v4;
  }

  while ((v12 & 1) != 0);
  return v12;
}

- (void)processValidationResult:(int64_t)a3
{
  if (a3 != 2 && a3 != 4)
  {
    *(&self->super + 184) &= ~1u;
    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
    [(AccountPSDetailController *)self updateDoneButton];
    if (!a3)
    {

      [(AccountPSDetailController *)self showExistingAccountError];
    }
  }
}

- (void)validateForExistingAccount
{
  v3 = MailAccountEmailAddresses;
  v4 = [(AccountPSDetailController *)self specifierForID:MailAccountEmailAddresses];

  v7 = [(NSMutableDictionary *)self->super._accountValues objectForKey:v3];
  if (!v4)
  {
    if (![(objc_class *)[(AccountPSDetailController *)self accountClass] usernameIsEmailAddress])
    {
LABEL_5:
      v6 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._accountValues];
      [(MFAccount *)self->super._account setAccountPropertiesWithDictionary:v6];
      [(AccountPSDetailController *)self processValidationResult:[(AccountPSDetailControllerBase *)self validateAccount]];

      goto LABEL_7;
    }

    v5 = [(NSMutableDictionary *)self->super._accountValues objectForKey:MFMailAccountUsername];

    v7 = v5;
  }

  if ([(AccountPSDetailController *)self validateEmailAddress:v7])
  {
    goto LABEL_5;
  }

  *(&self->super + 184) &= ~1u;
LABEL_7:
}

- (void)validateForNewAccount
{
  v3 = MailAccountEmailAddresses;
  v4 = [(AccountPSDetailController *)self specifierForID:MailAccountEmailAddresses];

  v5 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  aClassName = [v5 objectForKey:@"specifierAccount"];

  v6 = [(NSMutableDictionary *)self->super._accountValues objectForKey:v3];
  v7 = MFMailAccountUsername;
  v8 = [(NSMutableDictionary *)self->super._accountValues objectForKey:MFMailAccountUsername];
  v9 = [[ECEmailAddress alloc] initWithString:v8];

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(objc_class *)[(AccountPSDetailController *)self accountClass] usernameIsEmailAddress];
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (v12 != 1)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v13 = [(NSMutableDictionary *)self->super._accountValues objectForKey:v7];

    if (aClassName)
    {
      v10 = [NSClassFromString(aClassName) getConfigurationFromServerForEmail:v13];
    }

    else
    {
      v10 = 0;
    }

    v6 = v13;
  }

  if (![(AccountPSDetailController *)self validateEmailAddress:v6])
  {
    *(&self->super + 184) &= ~1u;
    goto LABEL_33;
  }

LABEL_13:
  if (*(self + 344))
  {
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"LOOKING_UP_ACCOUNT_INFO" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailController *)self startValidationWithPrompt:v18];

    v16 = &selRef__tryEasySetupForEmailAddress_;
    goto LABEL_19;
  }

  if ((([(objc_class *)[(AccountPSDetailController *)self accountClass] getConfigurationFromServerForEmail:v6]| v10) & 1) == 0 || (*(self + 344) & 4) != 0)
  {
    v20 = [(AccountPSDetailController *)self accountClass];
    v21 = [(NSMutableDictionary *)self->super._accountValues valueForKey:v7];

    if (!v21)
    {
      v22 = [(UITextField *)self->_usernameField text];
      [(AccountPSDetailController *)self _setIncomingAccountProperty:v22 forKey:v7];
    }

    v23 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._accountValues];
    v24 = [(AccountPSDetailControllerBase *)self existingAccountForAccountValues:v23];
    v25 = v24;
    if (v24 && !self->super._account)
    {
      v27 = v24;
      v19 = 0;
      existingIncomingAccount = self->_existingIncomingAccount;
      self->_existingIncomingAccount = v27;
    }

    else
    {
      if (!self->super._accountValues)
      {
        v19 = 1;
LABEL_31:

        goto LABEL_32;
      }

      existingIncomingAccount = [(objc_class *)v20 newAccountWithDictionary:v23];
      if (existingIncomingAccount)
      {
        v19 = [(AccountPSDetailControllerBase *)self validateAccount:existingIncomingAccount withFallbacks:1];
      }

      else
      {
        v19 = 1;
      }
    }

    goto LABEL_31;
  }

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"LOOKING_UP_ACCOUNT_INFO" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(AccountPSDetailController *)self startValidationWithPrompt:v15];

  [(NSMutableDictionary *)self->super._accountValues setObject:v6 forKey:v3];
  v16 = &selRef__getAccountInfoForEmailAddress_;
LABEL_19:
  [NSThread detachNewThreadSelector:*v16 toTarget:self withObject:v6];
  v19 = 2;
LABEL_32:
  [(AccountPSDetailController *)self updateDoneButton];
  [(AccountPSDetailController *)self processValidationResult:v19];
LABEL_33:
}

- (void)handleValidAccount:(id)a3
{
  v10 = a3;
  if ((*(self + 344) & 8) != 0)
  {
    [(AccountPSDetailController *)self setAccount:self->_candidateIncomingAccount];
    *(&self->super + 184) &= ~1u;
    [(MailAccount *)self->_candidateIncomingAccount setDeliveryAccount:v10];
    [(AccountPSDetailController *)self _addAccount:self->_candidateIncomingAccount];
    v5 = self->_candidateIncomingAccount;
    [(AccountPSDetailController *)self setCandidateIncomingAccount:0];
    [DeliveryAccount addDeliveryAccount:v10];
    [v10 savePersistentAccount];
    if (v5)
    {
LABEL_15:
      [(AccountPSDetailController *)self setAccount:v5];
      [(AccountPSDetailController *)self stopValidationWithPrompt:self->super._initialTitle showButtons:0];
      [(AccountPSDetailController *)self setCellsChecked:1];
      v8 = +[MFInvocationQueue sharedInvocationQueue];
      v9 = [MFMonitoredInvocation mf_invocationWithSelector:"updateEmailAliases" target:v5];
      [v8 addInvocation:v9];

      [(AccountPSDetailController *)self performSelector:"saveAndDismiss" withObject:0 afterDelay:1.0];
    }
  }

  else
  {
    *(self + 344) |= 8u;
    if (self->_usingAlternateEmailAccount)
    {
      [(AccountPSDetailController *)self setCandidateIncomingAccount:v10];
      v4 = [(AccountPSDetailControllerBase *)self accountValidator];
      [v4 validateAccount:self->_alternateEmailDeliveryAccount useSSL:{-[DeliveryAccount usesSSL](self->_alternateEmailDeliveryAccount, "usesSSL")}];

      v5 = 0;
      goto LABEL_16;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 deliveryAccount], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v10;
      if (self->super._account)
      {
        [(AccountPSDetailController *)self setAccount:v7];
        [v7 savePersistentAccount];
      }

      else
      {
        [(AccountPSDetailController *)self _addAccount:v7];
        [(AccountPSDetailController *)self setAccount:v7];
      }
    }

    else if ([(AccountPSDetailController *)self _setupDeliveryAccountForValidatedAccount:v10])
    {
      v7 = v10;
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v5 = v7;
    if (v7)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)handleInvalidAccount:(id)a3
{
  v7 = a3;
  outgoingAccountValues = self->_outgoingAccountValues;
  if (outgoingAccountValues)
  {
    v5 = [(NSMutableDictionary *)outgoingAccountValues copy];
    outgoingAccountValuesAfterFailedValidation = self->_outgoingAccountValuesAfterFailedValidation;
    self->_outgoingAccountValuesAfterFailedValidation = v5;
  }

  [(AccountPSDetailController *)self _hideAccountValidationProgressUIWithPrompt:self->super._initialTitle];
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:0];
}

- (BOOL)_showBackButton
{
  v2 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v3 = [v2 objectForKey:@"MailDetailViewWithBackKey"];
  v4 = v3 != 0;

  return v4;
}

- (void)_hideAccountValidationProgressUIWithPrompt:(id)a3
{
  v6 = a3;
  if ((*(self + 344) & 1) != 0 && !self->_easySetupAccountTypes)
  {
    [(AccountPSDetailController *)self _stopShowingEasySetup];
  }

  *(self + 344) &= ~8u;
  *(&self->super + 184) &= ~1u;
  [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
  if ([v6 length] && self->_easySetupResult == 1)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"UNSUPPORTED_MAIL_SERVICE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailController *)self _showFailedAddressAlertWithTitle:v5 body:0];

    self->_easySetupResult = 0;
  }

  [(AccountPSDetailController *)self stopValidationWithPrompt:v6 showButtons:1];
  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)_showFailedAddressAlertWithTitle:(id)a3 body:(id)a4
{
  v5 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_136B0;
  v9[3] = &unk_B8CD0;
  v9[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:v9];
  [v5 addAction:v8];

  [(AccountPSDetailController *)self presentViewController:v5 animated:1 completion:0];
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:0];
}

- (void)updateDoneButton
{
  v3 = [(AccountPSDetailController *)self existingAccount];
  if (v3 && (v12 = v3, v4 = -[AccountPSDetailController _shouldHideEnableAndDelete](self, "_shouldHideEnableAndDelete"), v12, (v4 & 1) == 0) && (-[NSMutableDictionary objectForKey:](self->super._accountValues, "objectForKey:", @"MailAccountIsActive"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v5, v6 = [v5 BOOLValue], v13, (v6 & 1) == 0))
  {
    v7 = 1;
  }

  else if ([(AccountPSDetailController *)self haveEnoughValues])
  {
    v7 = (*(&self->super + 184) & 1) == 0;
  }

  else
  {
    v7 = 0;
  }

  v14 = [(AccountPSDetailController *)self navigationItem];
  v8 = [v14 rightBarButtonItem];
  [v8 setEnabled:v7];

  if (!self->super._account)
  {
    if ([(AccountPSDetailController *)self shouldDisplayNextButtonForChosenType])
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v15 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
      v10 = [(AccountPSDetailController *)self navigationItem];
      v11 = [v10 rightBarButtonItem];
      [v11 setTitle:v9];
    }

    else
    {
      if (self->super._account)
      {
        return;
      }

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v15 localizedStringForKey:@"SAVE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v10 = [(AccountPSDetailController *)self navigationItem];
      v11 = [v10 rightBarButtonItem];
      [v11 setTitle:v9];
    }
  }
}

- (void)segmentChanged:(id)a3
{
  if (self->_accountTypeSegmentedControl == a3)
  {
    *(&self->super + 184) &= ~2u;
  }

  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)propertyValueChanged:(id)a3
{
  key = [a3 object];
  v4 = [(UITextField *)key text];
  v5 = [v4 length];
  editableSuffixes = self->_editableSuffixes;
  if (!editableSuffixes)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = CFDictionaryGetValue(editableSuffixes, key);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  if (v5 == &dword_0 + 1 && ![v7 fieldContentsLastLength] && objc_msgSend(v4, "rangeOfString:", @"@") == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(UITextField *)key hasMarkedText])
    {
      v18 = [v8 suffixString];
      v19 = [NSString stringWithFormat:@"%@%@", v4, v18];
      [(UITextField *)key setText:v19];

      -[UITextField setCursorPosition:](key, "setCursorPosition:", [v4 length]);
      v5 = (&dword_0 + 1);
      goto LABEL_13;
    }

    v9 = [(UITextField *)key _fieldEditor];
    v10 = [v8 suffixString];
    [(UITextField *)key setText:v10];

    [(UITextField *)key setCursorPosition:0];
    [v9 setMarkedText:v4 selectedRange:{0, 0}];
    v5 = (&dword_0 + 1);
    [(UITextField *)key setCursorPosition:1];
  }

  else
  {
    v9 = [v8 suffixString];
    if ([v4 isEqualToString:v9])
    {
      v11 = [v8 fieldContentsLastLength];

      if (v11)
      {
        [(UITextField *)key setText:&stru_B9FC8];
        v5 = 0;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  [v8 setFieldContentsLastLength:v5];
LABEL_14:
  v12 = [(AccountPSDetailControllerBase *)self account];
  if (v12)
  {
    v13 = [(AccountPSDetailControllerBase *)self account];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usernameField = self->_usernameField;

      if (key == usernameField)
      {
        v15 = MailAccountPassword;
        v16 = [(NSMutableDictionary *)self->super._accountValues objectForKey:MailAccountPassword];
        v17 = [v16 isEqualToString:@"********"];

        if (v17)
        {
          [(NSMutableDictionary *)self->super._accountValues removeObjectForKey:v15];
          [(AccountPSDetailController *)self reloadSpecifier:self->_passwordSpecifier];
        }
      }
    }

    else
    {
    }
  }

  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)didEndEditingOnReturn:(id)a3
{
  if (!self->super._account && [(AccountPSDetailController *)self haveEnoughValues]&& (*(&self->super + 184) & 1) == 0)
  {

    [(AccountPSDetailController *)self doneButtonTapped:0];
  }
}

- (BOOL)_shouldHideEnableAndDelete
{
  v2 = [(AccountPSDetailController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKey:ACUIAlreadyShowedEnableAndDeleteKey];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)showExistingAccountError
{
  v21 = [(MailAccount *)self->_existingIncomingAccount accountPropertyForKey:MFMailAccountDescription];
  v22 = [(objc_class *)[(AccountPSDetailController *)self accountClass] displayedAccountTypeString];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v20 = v4;
  v5 = [NSString stringWithFormat:v4, v21];
  if (([(MailAccount *)self->_existingIncomingAccount isActive]& 1) != 0)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ALREADY_EXISTING_ACCOUNT_DESC"];
    v8 = [v6 localizedStringForKey:v7 value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [NSString stringWithFormat:v8, v22];

    v10 = [UIAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_14568;
    v23[3] = &unk_B8CD0;
    v23[4] = self;
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v23];
    [v10 addAction:v13];
  }

  else
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACTIVATE_EXISTING_ACCOUNT_DESC"];
    v16 = [v14 localizedStringForKey:v15 value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [NSString stringWithFormat:v16, v22];

    v10 = [UIAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SETTINGS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_144AC;
    v25[3] = &unk_B8CD0;
    v25[4] = self;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v25];
    [v10 addAction:v19];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_14550;
    v24[3] = &unk_B8CD0;
    v24[4] = self;
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v24];
    [v10 addAction:v13];
  }

  [(AccountPSDetailController *)self presentViewController:v10 animated:1 completion:0];
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:0];
}

- (void)didFinishSaveAccountAnywaysSheetWithResult:(BOOL)a3
{
  if (a3)
  {
    if (self->super._account)
    {
      v4 = 0;
      [(AccountPSDetailController *)self saveAndDismiss];
    }

    else
    {
      if (self->_usingAlternateEmailAccount)
      {
        [(AccountPSDetailController *)self addAlternateEmailAccountFromCurrentSettings];
      }

      else
      {
        [(AccountPSDetailController *)self addAccountFromCurrentSettings];
      }
      v4 = ;
      [(AccountPSDetailController *)self setAccount:?];
      [(AccountPSDetailController *)self finishedSetupWithAccount:v4];
    }
  }
}

- (void)handleSSLAlertForAccount:(id)a3 accountValidator:(id)a4 attemptWithoutSSL:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_outgoingAccountValues copy];
  outgoingAccountValuesAfterFailedValidation = self->_outgoingAccountValuesAfterFailedValidation;
  self->_outgoingAccountValuesAfterFailedValidation = v10;

  self->_shouldUseSSL = !v5;
  v12.receiver = self;
  v12.super_class = AccountPSDetailController;
  [(AccountPSDetailControllerBase *)&v12 handleSSLAlertForAccount:v8 accountValidator:v9 attemptWithoutSSL:v5];
}

- (int)copyAccountsForEmailAddress:(id)a3 incomingAccount:(id *)a4 deliveryAccount:(id *)a5 easySetupNotes:(id *)a6
{
  v7 = a3;
  v8 = [[ECEmailAddress alloc] initWithString:v7];
  v9 = [v8 domain];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_easySetupAccountTypes;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) objectForKey:@"DomainNames"];
        if (([v14 containsObject:v9] & 1) != 0 && AccountConfigurationServiceCopyAccountsForEmailAddressUsingAccountInfo() == 2)
        {

          v15 = v7;
          v16 = 2;
          goto LABEL_16;
        }
      }

      v15 = v7;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = v7;
  }

  v16 = AccountConfigurationServiceCopyAccountsForEmailAddress();
LABEL_16:

  return v16;
}

- (void)_tryEasySetupForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v6;
  easySetupAccount = self->_easySetupAccount;
  self->_easySetupAccount = 0;

  easySetupDeliveryAccount = self->_easySetupDeliveryAccount;
  self->_easySetupDeliveryAccount = 0;

  easySetupNotes = self->_easySetupNotes;
  self->_easySetupNotes = 0;

  v13 = 0;
  obj = 0;
  v12 = 0;
  self->_easySetupResult = [(AccountPSDetailController *)self copyAccountsForEmailAddress:v4 incomingAccount:&obj deliveryAccount:&v13 easySetupNotes:&v12];
  objc_storeStrong(&self->_easySetupAccount, obj);
  objc_storeStrong(&self->_easySetupDeliveryAccount, v13);
  objc_storeStrong(&self->_easySetupNotes, v12);
  [(AccountPSDetailController *)self _copyUIInformationIntoIncomingAccount:self->_easySetupAccount];
  [(AccountPSDetailController *)self _copyUIInformationIntoDeliveryAccount:self->_easySetupDeliveryAccount];
  +[NSDate timeIntervalSinceReferenceDate];
  [NSThread sleepForTimeInterval:v7 - v11 + 1.0];
  [(AccountPSDetailController *)self performSelectorOnMainThread:"_finishedEasySetup" withObject:0 waitUntilDone:0];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)_hasEnoughInformationForEasySetup
{
  v3 = [(MailAccount *)self->_easySetupAccount hasEnoughInformationForEasySetup];
  if (v3)
  {
    easySetupDeliveryAccount = self->_easySetupDeliveryAccount;

    LOBYTE(v3) = [easySetupDeliveryAccount hasEnoughInformationForEasySetup];
  }

  return v3;
}

- (void)_takeOutgoingAccountPropertiesFromAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = v4;
    v6 = [v4 hostname];
    [(AccountPSDetailController *)self _setOutgoingAccountProperty:v6 forKey:MailAccountHostname];

    v7 = [v12 username];
    [(AccountPSDetailController *)self _setOutgoingAccountProperty:v7 forKey:MFMailAccountUsername];

    v8 = [v12 password];
    [(AccountPSDetailController *)self _setOutgoingAccountProperty:v8 forKey:MailAccountPassword];

    v9 = [v12 usesSSL];
    v5 = v12;
    if (v9)
    {
      outgoingAccountValues = self->_outgoingAccountValues;
      v11 = [NSNumber numberWithInt:1];
      [(NSMutableDictionary *)outgoingAccountValues setObject:v11 forKey:MailAccountSSLEnabled];

      v5 = v12;
    }
  }
}

- (void)_finishedEasySetup
{
  easySetupResult = self->_easySetupResult;
  v4 = easySetupResult == 2 && self->_easySetupAccount && self->_easySetupDeliveryAccount != 0;
  v5 = [(AccountPSDetailController *)self _bypassAccountValidation];
  v6 = [(AccountPSDetailController *)self easySetupNote];
  v7 = [v6 length];

  if (easySetupResult != 1 && !v4 && !v7)
  {
    goto LABEL_7;
  }

  [(MailAccount *)self->_easySetupAccount setPreferredAuthScheme:0];
  if (v7)
  {
    [(AccountPSDetailController *)self showEasySetupNoteWithAccount:self->_easySetupAccount];
    goto LABEL_10;
  }

  if ((easySetupResult == 1) | v5 & 1 || ![(AccountPSDetailController *)self _hasEnoughInformationForEasySetup])
  {
LABEL_7:
    [(AccountPSDetailController *)self _hideAccountValidationProgressUIWithPrompt:self->super._initialTitle];
LABEL_10:
    *(&self->super + 184) &= ~1u;
    return;
  }

  [(AccountPSDetailController *)self _takeOutgoingAccountPropertiesFromAccount:self->_easySetupDeliveryAccount];
  easySetupAccount = self->_easySetupAccount;

  [(AccountPSDetailControllerBase *)self validateAccount:easySetupAccount withFallbacks:0];
}

- (void)_stopShowingEasySetup
{
  if (*(self + 344))
  {
    *(self + 344) &= ~1u;
    if (self->_easySetupAccount)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_chosenType, self->_popAccountClassString);
      }

      v3 = [(MailAccount *)self->_easySetupAccount hostname];
      [(AccountPSDetailController *)self _setIncomingAccountProperty:v3 forKey:MailAccountHostname];

      v4 = [(MailAccount *)self->_easySetupAccount username];
      [(AccountPSDetailController *)self _setIncomingAccountProperty:v4 forKey:MFMailAccountUsername];

      if ([(MailAccount *)self->_easySetupAccount usesSSL])
      {
        accountValues = self->super._accountValues;
        v6 = [NSNumber numberWithInt:1];
        [(NSMutableDictionary *)accountValues setObject:v6 forKey:MailAccountSSLEnabled];
      }
    }

    [(AccountPSDetailController *)self _takeOutgoingAccountPropertiesFromAccount:self->_easySetupDeliveryAccount];
    *(self + 344) |= 4u;
    [(AccountPSDetailController *)self reloadSpecifiers];
    easySetupAccount = self->_easySetupAccount;
    self->_easySetupAccount = 0;

    easySetupDeliveryAccount = self->_easySetupDeliveryAccount;
    self->_easySetupDeliveryAccount = 0;
  }
}

- (void)showEasySetupNoteWithAccount:(id)a3
{
  [(AccountPSDetailController *)self stopValidationWithPrompt:0 showButtons:1];
  *(self + 344) |= 2u;
  [(AccountPSDetailController *)self reloadSpecifiers];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNT_INFO_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [(AccountPSDetailController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [(AccountPSDetailController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setTitle:v8];

  v11 = [(AccountPSDetailController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setEnabled:1];

  [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
}

- (void)finishedSetupWithAccount:(id)a3
{
  v8 = a3;
  v4 = [(AccountPSDetailController *)self parentController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AccountPSDetailController *)self parentController];
    v7 = [v8 persistentAccount];
    [v6 controller:self didFinishSettingUpAccount:v7];
  }

  else
  {
    [(AccountPSDetailController *)self dismissAnimated:1];
  }

  *(&self->super + 184) &= ~1u;
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:0];
}

- (void)setChosenType:(id)a3 withSpecifier:(id)a4
{
  v9 = a3;
  v5 = [v9 isEqualToString:@"POP"];
  v6 = &OBJC_IVAR___AccountPSDetailController__imapAccountClassString;
  if (v5)
  {
    v6 = &OBJC_IVAR___AccountPSDetailController__popAccountClassString;
  }

  v7 = *&self->super.ACUIViewController_opaque[*v6];
  v8 = v7;
  if (([v8 isEqualToString:self->_chosenType] & 1) == 0)
  {
    objc_storeStrong(&self->_chosenType, v7);
    [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] setUserInfo:0];
  }
}

- (id)chosenType:(id)a3
{
  if ([(NSString *)self->_chosenType isEqualToString:self->_popAccountClassString])
  {
    return @"POP";
  }

  else
  {
    return @"IMAP";
  }
}

- (BOOL)shouldDisplayNextButtonForChosenType
{
  if (self->_chosenType)
  {
    return ![(NSString *)self->_chosenType isEqualToString:self->_popAccountClassString];
  }

  else
  {
    return 1;
  }
}

- (id)_descriptionFromEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [v5 objectForKey:@"RegionalDisplayName"];

  if (!v6)
  {
    if (![(AccountPSDetailController *)self accountClass]|| (v7 = [(AccountPSDetailController *)self accountClass], v7 == objc_opt_class()) || (v8 = [(AccountPSDetailController *)self accountClass], v8 == objc_opt_class()))
    {
      v9 = ACUIDescriptionFromEmailAddress();
    }

    else
    {
      v9 = [(objc_class *)[(AccountPSDetailController *)self accountClass] displayedAccountTypeString];
    }

    v6 = v9;
  }

  v10 = [(AccountPSDetailController *)self accountStore];
  v11 = [v10 hasAccountWithDescription:v6];

  if (v11)
  {
    v12 = v4;

    v6 = v12;
  }

  return v6;
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 properties];
  v8 = [v7 objectForKey:PSKeyNameKey];
  [(AccountPSDetailController *)self setAccountProperty:v9 forKey:v8 withSpecifier:v6];
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4 withSpecifier:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 userInfo];
  v11 = [v10 objectForKey:@"values"];
  if (v11)
  {
    v12 = [v9 values];
    v13 = [v12 indexOfObject:v16];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL && v13 < [v11 count])
    {
      v14 = [v11 objectAtIndex:v13];

      v16 = v14;
    }
  }

  if (v8)
  {
    [(AccountPSDetailController *)self _setIncomingAccountProperty:v16 forKey:v8 specifier:v9];
  }

  else
  {
    v15 = [v10 objectForKey:@"outgoing_key"];
    if (v15)
    {
      v8 = v15;
      [AccountPSDetailController _setOutgoingAccountProperty:"_setOutgoingAccountProperty:forKey:specifier:" forKey:v16 specifier:?];
    }

    else
    {
      v8 = 0;
    }
  }

  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)_setIncomingAccountProperty:(id)a3 forKey:(id)a4 specifier:(id)a5
{
  v11 = a3;
  v7 = a4;
  if (([v7 isEqualToString:MailAccountEmailAddresses] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", MFMailAccountUsername))
  {
    [(AccountPSDetailController *)self _tryUpdatingDescriptionFromValue:v11 forKey:v7];
  }

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

- (void)setOutgoingHostName:(id)a3 withSpecifier:(id)a4
{
  v12 = a3;
  v5 = [v12 rangeOfString:@":" options:4];
  v7 = v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v12 substringFromIndex:&v5[v6]];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
    v10 = [v12 substringToIndex:v7];

    v12 = v10;
  }

  v11 = [v8 stringValue];
  [(AccountPSDetailController *)self _setOutgoingAccountProperty:v11 forKey:MailAccountPortNumber];

  [(AccountPSDetailController *)self _setOutgoingAccountProperty:v12 forKey:MailAccountHostname];
  [(AccountPSDetailController *)self updateDoneButton];
}

- (id)outgoingHostName:(id)a3
{
  v4 = [(AccountPSDetailController *)self _outgoingAccountPropertyForKey:MailAccountHostname];
  v5 = [(AccountPSDetailController *)self _outgoingAccountPropertyForKey:MailAccountPortNumber];
  if ([v5 intValue])
  {
    v6 = [NSString stringWithFormat:@"%@:%@", v4, v5];

    v4 = v6;
  }

  return v4;
}

- (void)_mailAccountNameChanged
{
  v5 = [(AccountPSDetailController *)self rootController];
  v3 = [v5 topViewController];

  if (v3 == self)
  {
    v6 = [(AccountPSDetailController *)self navigationItem];
    v4 = [(MFAccount *)self->super._account displayName];
    [v6 setTitle:v4];
  }
}

- (void)_tryUpdatingDescriptionFromValue:(id)a3 forKey:(id)a4
{
  v20 = a4;
  v19 = [(AccountPSDetailController *)self _descriptionFromEmailAddress:a3];
  v6 = MFMailAccountDescription;
  v7 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MFMailAccountDescription];
  v8 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:v20];
  v9 = [(AccountPSDetailController *)self _descriptionFromEmailAddress:v8];

  if (![v7 length] || objc_msgSend(v7, "isEqualToString:", v9))
  {
    [(AccountPSDetailController *)self _setIncomingAccountProperty:v19 forKey:v6];
    v10 = OBJC_IVAR___PSListController__specifiers;
    v11 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
    if (v11)
    {
      v12 = 0;
      v13 = PSKeyNameKey;
      while (1)
      {
        v14 = [*&self->super.ACUIViewController_opaque[v10] objectAtIndex:v12];
        v15 = [v14 propertyForKey:v13];

        if ([v15 isEqualToString:v6])
        {
          break;
        }

        if (v11 == ++v12)
        {
          goto LABEL_9;
        }
      }

      v16 = [(AccountPSDetailController *)self table];
      v17 = [(AccountPSDetailController *)self indexPathForIndex:v12];
      v18 = [v16 cellForRowAtIndexPath:v17];

      [v18 setValue:v19];
    }
  }

LABEL_9:
}

- (void)_setOutgoingAccountProperty:(id)a3 forKey:(id)a4 specifier:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  account = self->super._account;
  if (account)
  {
    v11 = [(MFAccount *)account deliveryAccount];
    if (!v11)
    {
      v12 = [objc_opt_class() accountPropertiesValueForKey:v8 value:v17];

      v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, v8, 0];
      v11 = [SMTPAccount newAccountWithDictionary:v13];
      [DeliveryAccount addDeliveryAccount:v11];

      v17 = v12;
    }

    if ([v8 isEqual:MFMailAccountUsername])
    {
      [v11 setShouldUseAuthentication:{objc_msgSend(v17, "length") != 0}];
    }

    [v11 savePersistentAccount];
    [(MFAccount *)self->super._account setDeliveryAccount:v11];
    [(MFAccount *)self->super._account savePersistentAccount];
  }

  else
  {
    outgoingAccountValues = self->_outgoingAccountValues;
    if (v17)
    {
      if (!outgoingAccountValues)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = self->_outgoingAccountValues;
        self->_outgoingAccountValues = v15;

        outgoingAccountValues = self->_outgoingAccountValues;
      }

      [(NSMutableDictionary *)outgoingAccountValues setObject:v17 forKey:v8];
    }

    else
    {
      [(NSMutableDictionary *)outgoingAccountValues removeObjectForKey:v8];
      v17 = 0;
    }
  }
}

- (id)accountPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 properties];
  v6 = [v5 objectForKey:PSKeyNameKey];
  v7 = [(AccountPSDetailController *)self accountPropertyForKey:v6 withSpecifier:v4];

  return v7;
}

- (id)accountPropertyForKey:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 userInfo];
  v9 = v8;
  if (v6)
  {
    v10 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:v6];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [v8 objectForKey:@"outgoing_key"];
    if (v11)
    {
      v10 = [(AccountPSDetailController *)self _outgoingAccountPropertyForKey:v11];
      v6 = v11;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v10 = [v7 propertyForKey:PSDefaultValueKey];
LABEL_9:
  v12 = [v9 objectForKey:@"values"];
  if (v12)
  {
    v13 = [v7 values];
    v14 = [v12 indexOfObject:v10];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v14 < [v13 count])
    {
      v15 = [v13 objectAtIndex:v14];

      v10 = v15;
    }
  }

  return v10;
}

- (id)_outgoingAccountPropertyForKey:(id)a3
{
  v4 = a3;
  account = self->super._account;
  if (account)
  {
    v6 = [(MFAccount *)account deliveryAccount];
    v7 = [v6 valueInAccountPropertiesForKey:v4];
  }

  else
  {
    outgoingAccountValues = self->_outgoingAccountValues;
    if (outgoingAccountValues)
    {
      v7 = [(NSMutableDictionary *)outgoingAccountValues objectForKey:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_incomingAccountPropertyForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->super._accountValues objectForKey:a3];

  return v3;
}

- (Class)accountClass
{
  if (self->super._account)
  {
    goto LABEL_2;
  }

  v4 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v3 = [v4 objectForKey:@"class"];

  if (!v3)
  {
    chosenType = self->_chosenType;
    if (chosenType)
    {
      [(NSString *)chosenType isEqualToString:self->_popAccountClassString];
LABEL_2:
      v3 = objc_opt_class();
      goto LABEL_4;
    }

    v3 = 0;
  }

LABEL_4:

  return v3;
}

- (id)getSMTPDisplayName:(id)a3
{
  v4 = [(MFAccount *)self->super._account deliveryAccount];
  v5 = [v4 displayHostname];
  if (!v5)
  {
    v5 = [v4 hostname];
  }

  if (![v4 isActive] || -[MFAccount isPrimaryDeliveryAccountDisabled](self->super._account, "isPrimaryDeliveryAccountDisabled"))
  {
    v6 = [(MFAccount *)self->super._account deliveryAccountAlternates];
    if ([v6 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = *v21;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            v12 = [v11 hostname];
            v13 = [v12 length];

            if (v13)
            {
              v14 = [v11 hostname];

              v5 = v14;
              goto LABEL_16;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"NO_SMTP_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];

      v5 = v16;
    }
  }

  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = &stru_B9FC8;
  }

  v18 = v17;

  return v17;
}

- (void)_setDefaultAlias:(id)a3 forSpecifier:(id)a4
{
  v23 = a3;
  v20 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v25;
    v9 = PSKeyNameKey;
    v10 = PSEnabledKey;
    v21 = MFAliasPreferenceNameKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 propertyForKey:{v9, v20}];
        v14 = [v13 isEqualToString:v23];

        if (v14)
        {
          v15 = [v12 userInfo];
          v16 = [v15 valueForKey:v21];

          v17 = [NSNumber numberWithBool:0];
          [v12 setProperty:v17 forKey:v10];

          v18 = [NSNumber numberWithBool:1];
          [(AccountPSDetailController *)self _enableAlias:v18 forSpecifier:v12];

          v7 = v16;
        }

        else
        {
          v19 = [NSNumber numberWithBool:1];
          [v12 setProperty:v19 forKey:v10];
        }

        [(AccountPSDetailController *)self reloadSpecifier:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);

    if (v7)
    {
      [(MFAccount *)self->super._account setDefaultEmailAddress:v7];
    }
  }

  else
  {

    v7 = 0;
  }
}

- (id)_defaultAlias
{
  v3 = [ECEmailAddress alloc];
  v4 = [(MFAccount *)self->super._account defaultEmailAddress];
  v5 = [v3 initWithString:v4];
  v6 = [v5 simpleAddress];

  return v6;
}

- (void)_enableAlias:(id)a3 forSpecifier:(id)a4
{
  v8 = a3;
  v6 = [a4 userInfo];
  v7 = [v6 objectForKey:MFAliasPreferenceNameKey];

  -[MFAccount setEnabled:forEmailAddress:](self->super._account, "setEnabled:forEmailAddress:", [v8 BOOLValue], v7);
}

- (id)_isAliasEnabledForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self->super._account emailAddressesAndAliases];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:MFAliasPreferenceNameKey];

  v8 = [v5 objectForKey:v7];

  return v8;
}

- (BOOL)_hasICloudMailAccount
{
  appleAccount = self->_appleAccount;
  if (appleAccount)
  {
    LOBYTE(appleAccount) = [(ACAccount *)appleAccount isEnabledForDataclass:ACAccountDataclassMail];
  }

  return appleAccount;
}

- (BOOL)_addAccount:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() supportedDataclasses];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v6 = [v3 defaultPath];
    [v3 setPath:v6];

    v7 = [v3 persistentAccount];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v7 provisionedDataclasses];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v7 setEnabled:1 forDataclass:*(*(&v13 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [v3 savePersistentAccount];
  }

  return v5 < 2;
}

- (void)reallyDeleteAccount
{
  v3 = [(AccountPSDetailControllerBase *)self account];
  [v3 removePersistentAccount];

  [(AccountPSDetailController *)self removeParentSpecifier];

  [(AccountPSDetailController *)self dismissAnimated:1];
}

- (int64_t)validateEasySetupAccounts
{
  easySetupAccount = self->_easySetupAccount;
  if (!easySetupAccount)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"AccountPSDetailController.m" lineNumber:1749 description:@"Expected a valid easy setup account"];

    easySetupAccount = self->_easySetupAccount;
  }

  v4 = [(MailAccount *)easySetupAccount hostname];
  v5 = [(MailAccount *)self->_easySetupAccount username];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [MailAccount existingAccountWithType:v7 hostname:v4 username:v5];
  if (v8)
  {
    objc_storeStrong(&self->_existingIncomingAccount, v8);
    v9 = 0;
  }

  else
  {
    v9 = [(AccountPSDetailControllerBase *)self validateAccount:self->_easySetupAccount withFallbacks:0];
  }

  return v9;
}

- (void)_copyUIInformationIntoIncomingAccount:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v4 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountFullUserName];
    [v11 setFullUserName:v4];

    v5 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountEmailAddresses];
    [v11 setEmailAddresses:v5];

    v6 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountPassword];
    [v11 setPassword:v6];

    v7 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MFMailAccountDescription];
    [v11 setDisplayName:v7];

    v8 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v9 = [v8 objectForKey:@"RegionalDisplayName"];
    [v11 setAccountProperty:v9 forKey:@"RegionalDisplayName"];

    v10 = [v8 objectForKey:@"PlaceholderAddress"];
    [v11 setAccountProperty:v10 forKey:@"PlaceholderAddress"];
  }
}

- (void)_copyUIInformationIntoDeliveryAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountPassword];
    [v6 setPassword:v5];

    v4 = v6;
  }
}

- (BOOL)_bypassAccountValidation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"EasySetupBypassValidation"];

  return v3;
}

- (id)addAccountFromCurrentSettings
{
  v3 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._accountValues];
  if (self->_alternateEmailIncomingAccount)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = [(AccountPSDetailController *)self accountClass];
  }

  v5 = v4;
  v6 = [(objc_class *)v4 newAccountWithDictionary:v3];
  if ((*(self + 344) & 4) != 0 && !self->_shouldUseSSL)
  {
    v10 = 0;
  }

  else
  {
    v7 = MailAccountSSLEnabledIsEditable;
    v8 = [(objc_class *)v5 predefinedValueForKey:MailAccountSSLEnabledIsEditable];
    if (v8)
    {
      v9 = [(objc_class *)v5 predefinedValueForKey:v7];
      if ([v9 BOOLValue])
      {
        v10 = &dword_0 + 1;
      }

      else
      {
        v11 = [(objc_class *)v5 predefinedValueForKey:MailAccountSSLEnabled];
        v10 = [v11 BOOLValue];
      }
    }

    else
    {
      v10 = &dword_0 + 1;
    }

    [v6 setUsesSSL:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v6 deliveryAccount];
    if (v12)
    {
      goto LABEL_24;
    }
  }

  if (!self->_outgoingAccountValues)
  {
    v12 = 0;
LABEL_24:
    [(AccountPSDetailController *)self _addAccount:v6];
    goto LABEL_25;
  }

  v13 = objc_opt_class();
  v14 = [objc_opt_class() normalizeAccountProperties:self->_outgoingAccountValues withAccountClass:v13];
  v15 = [v14 objectForKey:MFMailAccountUsername];

  if (v15)
  {
    [v14 setObject:@"YES" forKey:DeliveryAccountShouldUseAuthentication];
  }

  v16 = [v13 newAccountWithDictionary:v14];
  v17 = v16;
  if ((*(self + 344) & 4) == 0 || self->_shouldUseSSL)
  {
    [v16 setUsesSSL:v10];
  }

  [v6 setDeliveryAccount:v17];
  [(AccountPSDetailController *)self _addAccount:v6];
  [DeliveryAccount addDeliveryAccount:v17];
  [v17 savePersistentAccount];

  v12 = 0;
LABEL_25:

  return v6;
}

- (void)_getAccountInfoForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v7 = 0;
  obj = 0;
  v6 = 0;
  if ([(AccountPSDetailController *)self copyAccountsForEmailAddress:v4 incomingAccount:&obj deliveryAccount:&v7 easySetupNotes:&v6]== 2)
  {
    [(AccountPSDetailController *)self _copyUIInformationIntoIncomingAccount:obj];
    [(AccountPSDetailController *)self _copyUIInformationIntoDeliveryAccount:v7];
    objc_storeStrong(&self->_alternateEmailIncomingAccount, obj);
    objc_storeStrong(&self->_alternateEmailDeliveryAccount, v7);
    self->_usingAlternateEmailAccount = 1;
    [(AccountPSDetailControllerBase *)self validateAccount:obj withFallbacks:1];
  }

  objc_autoreleasePoolPop(v5);
}

- (id)addAlternateEmailAccountFromCurrentSettings
{
  if (self->_alternateEmailDeliveryAccount)
  {
    [(MailAccount *)self->_alternateEmailIncomingAccount setDeliveryAccount:?];
  }

  [(AccountPSDetailController *)self _addAccount:self->_alternateEmailIncomingAccount];
  if (self->_alternateEmailDeliveryAccount)
  {
    [DeliveryAccount addDeliveryAccount:?];
    [self->_alternateEmailDeliveryAccount savePersistentAccount];
  }

  alternateEmailIncomingAccount = self->_alternateEmailIncomingAccount;

  return alternateEmailIncomingAccount;
}

- (id)_createDeliveryAccountWithUIValues
{
  v3 = objc_opt_class();
  v4 = [objc_opt_class() normalizeAccountProperties:self->_outgoingAccountValues withAccountClass:v3];
  v5 = [v4 objectForKey:MFMailAccountUsername];

  if (v5)
  {
    [v4 setObject:@"YES" forKey:DeliveryAccountShouldUseAuthentication];
  }

  v6 = [v3 newAccountWithDictionary:v4];

  return v6;
}

- (BOOL)_setupDeliveryAccountForValidatedAccount:(id)a3
{
  v4 = a3;
  +[DeliveryAccount reloadDeliveryAccounts];
  v5 = [(NSMutableDictionary *)self->_outgoingAccountValues objectForKey:MailAccountHostname];
  v6 = [(NSMutableDictionary *)self->_outgoingAccountValues objectForKey:MFMailAccountUsername];
  v7 = [DeliveryAccount existingAccountWithHostname:v5 username:v6];
  v8 = v7;
  if (!v7 || ![v7 usesSSL])
  {
    if (self->_easySetupDeliveryAccount)
    {
      if (self->_easySetupAccountTypes)
      {
        [v4 setDeliveryAccount:?];
        [(AccountPSDetailController *)self _addAccount:v4];
        [DeliveryAccount addDeliveryAccount:self->_easySetupDeliveryAccount];
        [self->_easySetupDeliveryAccount savePersistentAccount];
        goto LABEL_8;
      }
    }

    else if (!self->_outgoingAccountValues)
    {
      if ((*(self + 344) & 1) == 0)
      {
        goto LABEL_4;
      }

      [(AccountPSDetailController *)self _hideAccountValidationProgressUIWithPrompt:self->super._initialTitle];
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    [(AccountPSDetailController *)self setCandidateIncomingAccount:v4];
    v10 = self->_easySetupDeliveryAccount;
    if (v10 || ([(AccountPSDetailController *)self _createDeliveryAccountWithUIValues], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(DeliveryAccount *)v10 defaultConnectionSettings];
      originalConnectionSettings = self->super._originalConnectionSettings;
      self->super._originalConnectionSettings = v11;

      easySetupDeliveryAccount = self->_easySetupDeliveryAccount;
      if (easySetupDeliveryAccount)
      {
        v14 = [easySetupDeliveryAccount usesSSL];
      }

      else
      {
        v14 = &dword_0 + 1;
      }

      v15 = [(AccountPSDetailControllerBase *)self accountValidator];
      [v15 validateAccount:v10 useSSL:v14];
    }

    goto LABEL_16;
  }

  [v4 setDeliveryAccount:v8];
LABEL_4:
  [(AccountPSDetailController *)self _addAccount:v4];
LABEL_8:
  v9 = 1;
LABEL_17:

  return v9;
}

- (BOOL)validateEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [[ECEmailAddress alloc] initWithString:v4];

  if (!v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailController *)self _showFailedAddressAlertWithTitle:v7 body:v9];

    v10 = [(AccountPSDetailController *)self specifierForID:MailAccountEmailAddresses];
    v11 = [v10 propertyForKey:PSTableCellKey];
    v12 = *&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table];
    v13 = [v12 indexPathForCell:v11];
    [v12 scrollToRowAtIndexPath:v13 atScrollPosition:2 animated:1];

    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
  }

  return v5 != 0;
}

- (id)easySetupNote
{
  v3 = CFLocaleCopyCurrent();
  v4 = [(__CFString *)CFLocaleGetIdentifier(v3) lowercaseString];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"en_us";
  }

  CFRelease(v3);
  v6 = [(NSDictionary *)self->_easySetupNotes objectForKey:v5];
  if (![v6 length])
  {
    v7 = [(__CFString *)v5 rangeOfString:@"_"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(__CFString *)v5 substringToIndex:v7];
      if (v8)
      {
        v9 = [(NSDictionary *)self->_easySetupNotes objectForKey:v8];
      }

      else
      {
        v9 = 0;
      }

      v6 = v9;
    }
  }

  return v6;
}

- (id)_setOfKeysForAlteredValuesInDictionary:(id)a3 originalDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v29 = objc_alloc_init(NSMutableSet);
  v7 = [NSSet alloc];
  v8 = [v5 allKeys];
  v27 = [v7 initWithArray:v8];

  v9 = [NSMutableSet alloc];
  v10 = [v6 allKeys];
  v11 = [v9 initWithArray:v10];

  v28 = v11;
  [v11 intersectSet:v27];
  v12 = [NSMutableSet alloc];
  v13 = [v6 allKeys];
  v14 = [v12 initWithArray:v13];

  v26 = v14;
  [v14 unionSet:v27];
  [v14 minusSet:v28];
  v15 = [v14 allObjects];
  [v29 addObjectsFromArray:v15];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v28 allObjects];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [v5 objectForKey:v20];

        if (v21)
        {
          v22 = [v6 objectForKey:v20];
          v23 = [v5 objectForKey:v20];
          v24 = [v22 isEqual:v23];

          if ((v24 & 1) == 0)
          {
            [v29 addObject:v20];
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  return v29;
}

- (void)icloudMailCreationNeedsViewUpdate:(id)a3 withAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self)
  {
    v9 = [v7 aa_childMailAccount];
    if (v9)
    {
      v10 = +[AccountPSDetailController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "child mail account configured in delegate %@", &v15, 0xCu);
      }

      v11 = [MFAccount accountWithPersistentAccount:v9];
      if (v11)
      {
        v12 = +[AccountPSDetailController log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "mf mail account configured in delegate %@", &v15, 0xCu);
        }

        [(AccountPSDetailController *)self setAccount:v11];
      }

      else
      {
        v13 = +[AccountPSDetailController log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "mf mail account not configured in delegate", &v15, 2u);
        }
      }
    }

    else
    {
      v11 = +[AccountPSDetailController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "child mail account not configured in delegate.", &v15, 2u);
      }
    }

    [(AccountPSDetailController *)self reloadSpecifiers];
    v14 = +[AccountPSDetailController log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "specifier reloaded after mail create", &v15, 2u);
    }
  }

  else
  {
    v9 = +[AccountPSDetailController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "No self. cannot update view for mail account create", &v15, 2u);
    }
  }
}

@end
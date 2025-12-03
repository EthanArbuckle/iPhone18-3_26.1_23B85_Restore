@interface AccountPSDetailController
+ (id)log;
- (BOOL)_addAccount:(id)account;
- (BOOL)_bypassAccountValidation;
- (BOOL)_hasEnoughInformationForEasySetup;
- (BOOL)_hasICloudMailAccount;
- (BOOL)_setupDeliveryAccountForValidatedAccount:(id)account;
- (BOOL)_shouldHideEnableAndDelete;
- (BOOL)_showBackButton;
- (BOOL)haveEnoughValues;
- (BOOL)shouldDisplayNextButtonForChosenType;
- (BOOL)validateEmailAddress:(id)address;
- (Class)accountClass;
- (id)_createDeliveryAccountWithUIValues;
- (id)_customDomainSpecifier;
- (id)_defaultAlias;
- (id)_descriptionFromEmailAddress:(id)address;
- (id)_getMailSpecifier;
- (id)_incomingAccountPropertyForKey:(id)key;
- (id)_isAliasEnabledForSpecifier:(id)specifier;
- (id)_isMailEnabled:(id)enabled;
- (id)_mailSwitchSpecifier;
- (id)_outgoingAccountPropertyForKey:(id)key;
- (id)_setOfKeysForAlteredValuesInDictionary:(id)dictionary originalDictionary:(id)originalDictionary;
- (id)_tobleroneMailSwitchSpecifier;
- (id)accountPropertyForKey:(id)key withSpecifier:(id)specifier;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)addAccountFromCurrentSettings;
- (id)addAlternateEmailAccountFromCurrentSettings;
- (id)chosenType:(id)type;
- (id)easySetupNote;
- (id)emailAliasDisplayStringWithSpecifier:(id)specifier;
- (id)emailAliasListController:(id)controller accountTypeForSpecifier:(id)specifier;
- (id)emailAliasListController:(id)controller defaultEmailAliasForSpecifier:(id)specifier;
- (id)emailAliasListController:(id)controller emailAliasListForSpecifier:(id)specifier;
- (id)existingAccountSpecifiers;
- (id)getSMTPDisplayName:(id)name;
- (id)outgoingHostName:(id)name;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int)copyAccountsForEmailAddress:(id)address incomingAccount:(id *)account deliveryAccount:(id *)deliveryAccount easySetupNotes:(id *)notes;
- (int64_t)validateEasySetupAccounts;
- (void)_copyUIInformationIntoDeliveryAccount:(id)account;
- (void)_copyUIInformationIntoIncomingAccount:(id)account;
- (void)_enableAlias:(id)alias forSpecifier:(id)specifier;
- (void)_finishedEasySetup;
- (void)_getAccountInfoForEmailAddress:(id)address;
- (void)_hideAccountValidationProgressUIWithPrompt:(id)prompt;
- (void)_mailAccountNameChanged;
- (void)_setDefaultAlias:(id)alias forSpecifier:(id)specifier;
- (void)_setIncomingAccountProperty:(id)property forKey:(id)key specifier:(id)specifier;
- (void)_setMailEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)_setOutgoingAccountProperty:(id)property forKey:(id)key specifier:(id)specifier;
- (void)_showFailedAddressAlertWithTitle:(id)title body:(id)body;
- (void)_stopShowingEasySetup;
- (void)_takeOutgoingAccountPropertiesFromAccount:(id)account;
- (void)_tryEasySetupForEmailAddress:(id)address;
- (void)_tryUpdatingDescriptionFromValue:(id)value forKey:(id)key;
- (void)cancelButtonTapped:(id)tapped;
- (void)confirmAccountDeletion;
- (void)createAccounts;
- (void)createAccountsAnyways;
- (void)dealloc;
- (void)didEndEditingOnReturn:(id)return;
- (void)didFinishSaveAccountAnywaysSheetWithResult:(BOOL)result;
- (void)doneButtonTapped:(id)tapped;
- (void)emailAliasListController:(id)controller setEmailAliasList:(id)list defaultEmailAlias:(id)alias forSpecifier:(id)specifier;
- (void)finishedSetupWithAccount:(id)account;
- (void)handleInvalidAccount:(id)account;
- (void)handleSSLAlertForAccount:(id)account accountValidator:(id)validator attemptWithoutSSL:(BOOL)l;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)handleValidAccount:(id)account;
- (void)icloudMailCreationNeedsViewUpdate:(id)update withAccount:(id)account;
- (void)loadEmailAliasListController:(id)controller;
- (void)processValidationResult:(int64_t)result;
- (void)propertyValueChanged:(id)changed;
- (void)reallyDeleteAccount;
- (void)resetTargetsForSpecifiers:(id)specifiers;
- (void)saveAndDismiss;
- (void)segmentChanged:(id)changed;
- (void)setAccountProperty:(id)property forKey:(id)key withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
- (void)setChosenType:(id)type withSpecifier:(id)specifier;
- (void)setOutgoingHostName:(id)name withSpecifier:(id)specifier;
- (void)showEasySetupNoteWithAccount:(id)account;
- (void)showExistingAccountError;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDoneButton;
- (void)validateForExistingAccount;
- (void)validateForNewAccount;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AccountPSDetailController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EA34;
  block[3] = &unk_B8D78;
  block[4] = self;
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
  account = [(AccountPSDetailControllerBase *)self account];
  persistentAccount = [account persistentAccount];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_EE94;
  v5[3] = &unk_B8E60;
  v5[4] = self;
  [(AccountPSDetailController *)self showConfirmationForDeletingAccount:persistentAccount completion:v5];
}

- (void)_setMailEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AccountPSDetailController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = enabledCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "user changed mail dataclass flag to %@", buf, 0xCu);
  }

  existingAccount = [(AccountPSDetailController *)self existingAccount];

  if (existingAccount)
  {
    existingAccount2 = [(AccountPSDetailController *)self existingAccount];
    parentAccount = [existingAccount2 parentAccount];

    bOOLValue = [enabledCopy BOOLValue];
    [parentAccount setEnabled:bOOLValue forDataclass:ACAccountDataclassMail];
    v11 = +[ACAccountStore defaultStore];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_F1BC;
    v25 = &unk_B8E88;
    v12 = parentAccount;
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
        accountStore = [(ACAccount *)v17 accountStore];
        v19 = [(ICloudMailCreator *)v16 initWithViewController:self appleAccount:v17 accountStore:accountStore];
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

- (id)_isMailEnabled:(id)enabled
{
  existingAccount = [(AccountPSDetailController *)self existingAccount];

  if (existingAccount)
  {
    existingAccount2 = [(AccountPSDetailController *)self existingAccount];
    parentAccount = [existingAccount2 parentAccount];
  }

  else
  {
    appleAccount = self->_appleAccount;
    if (appleAccount)
    {
      parentAccount = appleAccount;
    }

    else
    {
      parentAccount = 0;
    }
  }

  v8 = [NSNumber numberWithBool:[(ACAccount *)parentAccount isEnabledForDataclass:ACAccountDataclassMail]];

  return v8;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = +[AccountPSDetailController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = lCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "handleURL with dicttionary: %@.", buf, 0xCu);
  }

  v9 = [lCopy objectForKey:@"domain"];
  if (v9)
  {
    v10 = [lCopy objectForKey:@"domainState"];
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
    v16 = completionCopy;
    [(BYODSpecifierProviderAdapter *)byodSpecifierProviderAdapter loadDomain:v9 withState:v10 completion:v15];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AccountPSDetailController;
    [(AccountPSDetailController *)&v14 handleURL:lCopy withCompletion:completionCopy];
  }
}

- (id)existingAccountSpecifiers
{
  existingAccount = [(AccountPSDetailController *)self existingAccount];
  v4 = objc_alloc_init(NSMutableArray);
  userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [userInfo valueForKey:@"hideMailDataclass"];

  if (!v6)
  {
    if ([existingAccount mailDataClassSwitch])
    {
      _getMailSpecifier = [(AccountPSDetailController *)self _getMailSpecifier];
      [v4 addObjectsFromArray:_getMailSpecifier];
    }

    if ([existingAccount hasCustomDomain])
    {
      _customDomainSpecifier = [(AccountPSDetailController *)self _customDomainSpecifier];
      [v4 addObjectsFromArray:_customDomainSpecifier];
    }
  }

  detailedSpecifiers = [existingAccount detailedSpecifiers];
  [v4 addObjectsFromArray:detailedSpecifiers];

  v10 = [v4 specifierForID:@"EXISTING_ACCOUNT_EMAIL"];
  v11 = [v4 indexOfObject:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    isManaged = [existingAccount isManaged];
    if (!isManaged || ([existingAccount emailAddressStrings], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 >= 2))
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
      v18 = [NSNumber numberWithBool:isManaged];
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
  deviceClass = [v9 deviceClass];
  uppercaseString = [deviceClass uppercaseString];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [@"MAIL_CARD_SUBTEXT_" stringByAppendingString:uppercaseString];
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
  v22 = [@"MAIL_DATACLASS_SWITCH_TEXT_" stringByAppendingString:uppercaseString];
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
    userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    obj = [userInfo objectForKey:ACUIAccountKey];
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
      aa_childMailAccount = [obja aa_childMailAccount];

      v13 = aa_childMailAccount;
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
      account = [(AccountPSDetailControllerBase *)self account];
      v19 = account == 0;

      if (v19)
      {
        [(AccountPSDetailController *)self setAccount:v81];
      }

      existingAccountSpecifiers = [(AccountPSDetailController *)self existingAccountSpecifiers];
      goto LABEL_30;
    }

    account2 = [(AccountPSDetailControllerBase *)self account];
    v17 = account2 == 0;

    if (!v17)
    {
      v81 = 0;
      goto LABEL_27;
    }

    if ((*(self + 344) & 2) != 0)
    {
      v66 = [NSArray alloc];
      easySetupNote = [(AccountPSDetailController *)self easySetupNote];
      v67 = [PSSpecifier groupSpecifierWithName:easySetupNote];
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
              userInfo2 = [v26 userInfo];
              v28 = [userInfo2 objectForKey:@"disableForManagedAccounts"];
              bOOLValue = [v28 BOOLValue];

              if (bOOLValue)
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
              userInfo3 = [v36 userInfo];
              v38 = [userInfo3 objectForKeyedSubscript:@"disableForModificationRestrictions"];
              bOOLValue2 = [v38 BOOLValue];

              if (bOOLValue2)
              {
                [v36 setProperty:kCFBooleanFalse forKey:v34];
              }
            }

            v32 = [v87 countByEnumeratingWithState:&v88 objects:v96 count:16];
          }

          while (v32);
        }
      }

      account3 = [(AccountPSDetailControllerBase *)self account];

      if (account3)
      {
        v41 = +[AccountPSDetailController log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_795EC(v41);
        }

        selfCopy2 = self;
        if (!self->super._accountValues)
        {
          v43 = objc_alloc_init(NSMutableDictionary);
          accountValues = self->super._accountValues;
          self->super._accountValues = v43;

          account4 = [(AccountPSDetailControllerBase *)self account];
          v46 = *&self->super.ACUIViewController_opaque[v84];
          accountValues = [(AccountPSDetailControllerBase *)self accountValues];
          [account4 copyAccountPropertiesForSpecifiers:v46 intoDictionary:accountValues];

          selfCopy2 = self;
        }

        if (selfCopy2->super._originalAccountValues)
        {
          goto LABEL_64;
        }

        v48 = objc_alloc_init(NSMutableDictionary);
        originalAccountValues = self->super._originalAccountValues;
        self->super._originalAccountValues = v48;

        account5 = [(AccountPSDetailControllerBase *)self account];
        v51 = *&self->super.ACUIViewController_opaque[v84];
        originalAccountValues = [(AccountPSDetailControllerBase *)self originalAccountValues];
        [account5 copyAccountPropertiesForSpecifiers:v51 intoDictionary:originalAccountValues];
      }

      else
      {
        username = [v80 username];
        v54 = username == 0;

        if (v54 || self->super._accountValues)
        {
          goto LABEL_64;
        }

        v55 = objc_alloc_init(NSMutableDictionary);
        v56 = self->super._accountValues;
        self->super._accountValues = v55;

        v57 = self->super._accountValues;
        username2 = [v80 username];
        v59 = MailAccountEmailAddresses;
        [(NSMutableDictionary *)v57 setObject:username2 forKey:MailAccountEmailAddresses];

        username3 = [v80 username];
        [(AccountPSDetailController *)self _tryUpdatingDescriptionFromValue:username3 forKey:v59];

        account5 = [(AccountPSDetailControllerBase *)self account];
        v61 = *&self->super.ACUIViewController_opaque[v84];
        originalAccountValues = [(AccountPSDetailControllerBase *)self accountValues];
        [account5 copyAccountPropertiesForSpecifiers:v61 intoDictionary:originalAccountValues];
      }

LABEL_64:
      v2 = &OBJC_METACLASS___AccountLinkButton;
      goto LABEL_65;
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && self->_appleAccount)
    {
      existingAccountSpecifiers = [(AccountPSDetailController *)self _getMailSpecifier];
      v81 = 0;
LABEL_30:
      easySetupNote = *&self->super.ACUIViewController_opaque[v84];
      *&self->super.ACUIViewController_opaque[v84] = existingAccountSpecifiers;
      goto LABEL_31;
    }

    v70 = userInfo;
    v71 = [userInfo objectForKey:@"specifierAccount"];
    easySetupNote = v71;
    if (v71)
    {
      v72 = NSClassFromString(v71);
    }

    else
    {
      v72 = [userInfo objectForKey:@"class"];

      v70 = userInfo;
    }

    v73 = [v70 objectForKey:@"RegionalDisplayName"];
    v74 = [v70 objectForKey:@"PlaceholderAddress"];
    if (v72)
    {
      firstSetupSpecifiers = [v72 firstSetupSpecifiers];
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

          firstSetupSpecifiers = +[MailAccount firstSetupSpecifiers];
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

      firstSetupSpecifiers = [MailAccount easySetupSpecifiersWithPlaceholderAddress:v74 accountName:v73];
    }

LABEL_87:
    v78 = *&self->super.ACUIViewController_opaque[v84];
    *&self->super.ACUIViewController_opaque[v84] = firstSetupSpecifiers;

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

- (void)resetTargetsForSpecifiers:(id)specifiers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  specifiersCopy = specifiers;
  v5 = [specifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        identifier = [v8 identifier];
        v10 = [identifier isEqualToString:@"BYOD_SETTING_SPECIFIER_ID"];

        if ((v10 & 1) == 0)
        {
          [v8 setTarget:self];
        }
      }

      v5 = [specifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  userInfo = [v3 userInfo];
  v5 = [userInfo objectForKey:@"chosenType"];
  if (v5)
  {
    objc_storeStrong(&self->_chosenType, v5);
  }

  v6 = [userInfo objectForKey:@"outgoingValues"];

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
  v16 = [userInfo objectForKey:MFMailAccountUsername];

  if (v16)
  {
    [(AccountPSDetailController *)self setIncomingAccountProperty:v16 forKey:v15];
  }

  if (*(self + 344))
  {
    v17 = [userInfo objectForKey:@"RegionalDisplayName"];
    v18 = v17;
    if (!v17)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v15 localizedStringForKey:@"NEW_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    }

    navigationItem = [(AccountPSDetailController *)self navigationItem];
    [navigationItem setTitle:v18];

    if (!v17)
    {
    }
  }

  if (self->super._initialTitle)
  {
    navigationItem2 = [(AccountPSDetailController *)self navigationItem];
    title = [navigationItem2 title];
    initialTitle = self->super._initialTitle;
    self->super._initialTitle = title;
  }

  v23 = [(AccountPSDetailController *)self specifierForID:MailAccountPassword];
  passwordSpecifier = self->_passwordSpecifier;
  self->_passwordSpecifier = v23;

  if ([(AccountPSDetailController *)self _showBackButton])
  {
    navigationItem3 = [(AccountPSDetailController *)self navigationItem];
    [navigationItem3 setHidesBackButton:0];

    v26 = [userInfo valueForKey:@"hideMailDataclass"];

    if (!v26)
    {
      navigationItem4 = [(AccountPSDetailController *)self navigationItem];
      [navigationItem4 setLeftBarButtonItem:0];
    }
  }

  [(AccountPSDetailController *)self updateDoneButton];
  if ((_os_feature_enabled_impl() & 1) != 0 || !self->_appleAccount || [(AccountPSDetailController *)self _hasICloudMailAccount])
  {
    navigationItem5 = [(AccountPSDetailController *)self navigationItem];
    rightBarButtonItem = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem setHidden:0];
  }

  else
  {
    navigationItem5 = [(AccountPSDetailController *)self navigationItem];
    rightBarButtonItem = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem setHidden:1];
  }

  table = [(AccountPSDetailController *)self table];
  v31 = objc_opt_class();
  v32 = +[AccountPSDetailTableCell cellReuseIdentifier];
  [table registerClass:v31 forCellReuseIdentifier:v32];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  shouldSelectResponderOnAppearance = [(AccountPSDetailController *)self shouldSelectResponderOnAppearance];
  v19.receiver = self;
  v19.super_class = AccountPSDetailController;
  [(AccountPSDetailController *)&v19 viewWillAppear:appearCopy];
  if (shouldSelectResponderOnAppearance)
  {
    findFirstVisibleResponder = [(AccountPSDetailController *)self findFirstVisibleResponder];
    table = [(AccountPSDetailController *)self table];
    v8 = [table indexPathForCell:findFirstVisibleResponder];

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
      table2 = [(AccountPSDetailController *)self table];
      v18 = [table2 cellForRowAtIndexPath:v16];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AccountPSDetailController *)self indexForIndexPath:pathCopy];
  v9 = [(AccountPSDetailController *)self specifierAtIndex:v8];
  v27.receiver = self;
  v27.super_class = AccountPSDetailController;
  v10 = [(AccountPSDetailController *)&v27 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v10 textField];
    if (textField)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 removeObserver:self name:0 object:textField];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"propertyValueChanged:" name:UITextFieldTextDidChangeNotification object:textField];

      v14 = [v9 propertyForKey:PSKeyNameKey];
      v15 = [v14 isEqualToString:MFMailAccountUsername];

      if (v15)
      {
        objc_storeStrong(&self->_usernameField, textField);
      }

      userInfo = [v9 userInfo];
      v17 = [userInfo objectForKey:ACUIAccountKey];

      if (!v17)
      {
        v18 = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
        userInfo2 = [v18 userInfo];
        v20 = [userInfo2 objectForKey:@"UserEditableSuffix"];

        if ([v20 length])
        {
          editableSuffixes = self->_editableSuffixes;
          if (!editableSuffixes)
          {
            editableSuffixes = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
            self->_editableSuffixes = editableSuffixes;
          }

          if (!CFDictionaryGetValue(editableSuffixes, textField))
          {
            v22 = [[EditableSuffixData alloc] initWithSuffixString:v20];
            CFDictionaryAddValue(self->_editableSuffixes, textField, v22);
          }
        }
      }

      [(UISegmentedControl *)textField addTarget:self action:"didEndEditingOnReturn:" forControlEvents:0x80000];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textField = [v10 control];
      if (self->_accountTypeSegmentedControl != textField)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_accountTypeSegmentedControl, textField);
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

      textField = [(AccountPSDetailController *)self specifierAtIndex:[(AccountPSDetailController *)self indexForIndexPath:pathCopy]];
      identifier = [(UISegmentedControl *)textField identifier];
      v24 = [identifier isEqualToString:@"BYOD_SETTING_SPECIFIER_ID"];

      if (v24)
      {
        titleLabel = [v10 titleLabel];
        [titleLabel setAdjustsFontSizeToFitWidth:1];
      }
    }
  }

LABEL_21:

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AccountPSDetailController *)self specifierAtIndex:[(AccountPSDetailController *)self indexForIndexPath:pathCopy]];
  v9 = *&v8[OBJC_IVAR___PSSpecifier_detailControllerClass];
  if (v9 == objc_opt_class())
  {
    userInfo = [v8 userInfo];
    v11 = [userInfo mutableCopy];

    [v11 setValue:self->super._accountValues forKey:@"values"];
    [v11 setValue:self->super._originalAccountValues forKey:@"originalValues"];
    [v8 setUserInfo:v11];
  }

  v12.receiver = self;
  v12.super_class = AccountPSDetailController;
  [(AccountPSDetailController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)doneButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:1];
  firstResponder = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  _bypassAccountValidation = [(AccountPSDetailController *)self _bypassAccountValidation];
  if ((*(self + 344) & 2) != 0)
  {
    *(self + 344) &= ~2u;
    if ((self->_easySetupResult == 1) | _bypassAccountValidation & 1 || !self->_easySetupAccount)
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
      propertiesWhichRequireValidation = [objc_opt_class() propertiesWhichRequireValidation];
      v9 = [propertiesWhichRequireValidation intersectsSet:v7];

      if (v9)
      {
        *(&self->super + 184) &= ~2u;
      }
    }

    v10.receiver = self;
    v10.super_class = AccountPSDetailController;
    [(AccountPSDetailControllerBase *)&v10 doneButtonTapped:tappedCopy];
  }
}

- (void)cancelButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->super._account)
  {
    v4 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:self->super._originalAccountValues];
    [(MFAccount *)self->super._account setAccountPropertiesWithDictionary:v4];
  }

  [(AccountPSDetailController *)self setAccount:0];
  [(AccountPSDetailController *)self dismissAnimated:1];
}

- (void)loadEmailAliasListController:(id)controller
{
  controllerCopy = controller;
  emailAliasListController = self->_emailAliasListController;
  v11 = controllerCopy;
  if (!emailAliasListController)
  {
    v6 = objc_alloc_init(EmailAliasListController);
    v7 = self->_emailAliasListController;
    self->_emailAliasListController = v6;

    [(EmailAliasListController *)self->_emailAliasListController setDataSource:self];
    emailAliasListController = self->_emailAliasListController;
    controllerCopy = v11;
  }

  [(EmailAliasListController *)emailAliasListController setSpecifier:controllerCopy];
  userInfo = [v11 userInfo];
  v9 = [userInfo objectForKey:@"DisableEmailAliasListEditing"];
  -[EmailAliasListController setDisableEmailAliasListChanges:](self->_emailAliasListController, "setDisableEmailAliasListChanges:", [v9 BOOLValue]);

  navigationController = [(AccountPSDetailController *)self navigationController];
  [navigationController pushViewController:self->_emailAliasListController animated:1];
}

- (id)emailAliasDisplayStringWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(AccountPSDetailController *)self accountPropertyForKey:MFAliasDefaultKey withSpecifier:specifierCopy];
  if (![v5 length])
  {
    v6 = [(AccountPSDetailController *)self accountPropertyForKey:MailAccountEmailAddresses withSpecifier:specifierCopy];
    v7 = [v6 componentsSeparatedByString:{@", "}];

    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];

      v5 = v8;
    }
  }

  return v5;
}

- (id)emailAliasListController:(id)controller emailAliasListForSpecifier:(id)specifier
{
  v4 = [(AccountPSDetailController *)self accountPropertyForKey:MailAccountEmailAddresses withSpecifier:specifier];
  v5 = [v4 componentsSeparatedByString:{@", "}];

  return v5;
}

- (id)emailAliasListController:(id)controller defaultEmailAliasForSpecifier:(id)specifier
{
  v4 = [(AccountPSDetailController *)self accountPropertyForKey:MFAliasDefaultKey withSpecifier:specifier];

  return v4;
}

- (id)emailAliasListController:(id)controller accountTypeForSpecifier:(id)specifier
{
  displayedAccountTypeString = [(objc_class *)[(AccountPSDetailController *)self accountClass:controller] displayedAccountTypeString];

  return displayedAccountTypeString;
}

- (void)emailAliasListController:(id)controller setEmailAliasList:(id)list defaultEmailAlias:(id)alias forSpecifier:(id)specifier
{
  listCopy = list;
  aliasCopy = alias;
  specifierCopy = specifier;
  v11 = [listCopy componentsJoinedByString:{@", "}];
  [(AccountPSDetailController *)self setAccountProperty:v11 forKey:MailAccountEmailAddresses withSpecifier:specifierCopy];

  [(AccountPSDetailController *)self setAccountProperty:aliasCopy forKey:MFAliasDefaultKey withSpecifier:specifierCopy];
  [(AccountPSDetailController *)self reloadSpecifier:specifierCopy];
}

- (void)saveAndDismiss
{
  persistentAccount = [(MFAccount *)self->super._account persistentAccount];
  accountStore = [persistentAccount accountStore];

  if (accountStore)
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
    userInfo = [v5 userInfo];
    properties = [v5 properties];
    v8 = [userInfo objectForKey:@"AccountPreferenceRequired"];

    if (v8)
    {
      v9 = [(AccountPSDetailController *)self cachedCellForSpecifier:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        textField = [v9 textField];
        text = [textField text];

        v12 = [text length] != 0;
      }

      else
      {
        text = [userInfo objectForKey:@"outgoing_key"];
        if (text)
        {
          v13 = [(NSMutableDictionary *)self->_outgoingAccountValues objectForKey:text];
        }

        else
        {
          accountValues = self->super._accountValues;
          v15 = [properties objectForKey:v17];
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

- (void)processValidationResult:(int64_t)result
{
  if (result != 2 && result != 4)
  {
    *(&self->super + 184) &= ~1u;
    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
    [(AccountPSDetailController *)self updateDoneButton];
    if (!result)
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

  userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  aClassName = [userInfo objectForKey:@"specifierAccount"];

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
    usernameIsEmailAddress = [(objc_class *)[(AccountPSDetailController *)self accountClass] usernameIsEmailAddress];
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = usernameIsEmailAddress;
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
    accountClass = [(AccountPSDetailController *)self accountClass];
    v21 = [(NSMutableDictionary *)self->super._accountValues valueForKey:v7];

    if (!v21)
    {
      text = [(UITextField *)self->_usernameField text];
      [(AccountPSDetailController *)self _setIncomingAccountProperty:text forKey:v7];
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

      existingIncomingAccount = [(objc_class *)accountClass newAccountWithDictionary:v23];
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

- (void)handleValidAccount:(id)account
{
  accountCopy = account;
  if ((*(self + 344) & 8) != 0)
  {
    [(AccountPSDetailController *)self setAccount:self->_candidateIncomingAccount];
    *(&self->super + 184) &= ~1u;
    [(MailAccount *)self->_candidateIncomingAccount setDeliveryAccount:accountCopy];
    [(AccountPSDetailController *)self _addAccount:self->_candidateIncomingAccount];
    v5 = self->_candidateIncomingAccount;
    [(AccountPSDetailController *)self setCandidateIncomingAccount:0];
    [DeliveryAccount addDeliveryAccount:accountCopy];
    [accountCopy savePersistentAccount];
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
      [(AccountPSDetailController *)self setCandidateIncomingAccount:accountCopy];
      accountValidator = [(AccountPSDetailControllerBase *)self accountValidator];
      [accountValidator validateAccount:self->_alternateEmailDeliveryAccount useSSL:{-[DeliveryAccount usesSSL](self->_alternateEmailDeliveryAccount, "usesSSL")}];

      v5 = 0;
      goto LABEL_16;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([accountCopy deliveryAccount], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = accountCopy;
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

    else if ([(AccountPSDetailController *)self _setupDeliveryAccountForValidatedAccount:accountCopy])
    {
      v7 = accountCopy;
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

- (void)handleInvalidAccount:(id)account
{
  accountCopy = account;
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
  userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v3 = [userInfo objectForKey:@"MailDetailViewWithBackKey"];
  v4 = v3 != 0;

  return v4;
}

- (void)_hideAccountValidationProgressUIWithPrompt:(id)prompt
{
  promptCopy = prompt;
  if ((*(self + 344) & 1) != 0 && !self->_easySetupAccountTypes)
  {
    [(AccountPSDetailController *)self _stopShowingEasySetup];
  }

  *(self + 344) &= ~8u;
  *(&self->super + 184) &= ~1u;
  [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
  if ([promptCopy length] && self->_easySetupResult == 1)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"UNSUPPORTED_MAIL_SERVICE_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailController *)self _showFailedAddressAlertWithTitle:v5 body:0];

    self->_easySetupResult = 0;
  }

  [(AccountPSDetailController *)self stopValidationWithPrompt:promptCopy showButtons:1];
  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)_showFailedAddressAlertWithTitle:(id)title body:(id)body
{
  v5 = [UIAlertController alertControllerWithTitle:title message:body preferredStyle:1];
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
  existingAccount = [(AccountPSDetailController *)self existingAccount];
  if (existingAccount && (v12 = existingAccount, v4 = -[AccountPSDetailController _shouldHideEnableAndDelete](self, "_shouldHideEnableAndDelete"), v12, (v4 & 1) == 0) && (-[NSMutableDictionary objectForKey:](self->super._accountValues, "objectForKey:", @"MailAccountIsActive"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v5, v6 = [v5 BOOLValue], v13, (v6 & 1) == 0))
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

  navigationItem = [(AccountPSDetailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7];

  if (!self->super._account)
  {
    if ([(AccountPSDetailController *)self shouldDisplayNextButtonForChosenType])
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v15 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
      navigationItem2 = [(AccountPSDetailController *)self navigationItem];
      rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
      [rightBarButtonItem2 setTitle:v9];
    }

    else
    {
      if (self->super._account)
      {
        return;
      }

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v15 localizedStringForKey:@"SAVE" value:&stru_B9FC8 table:@"AccountPreferences"];
      navigationItem2 = [(AccountPSDetailController *)self navigationItem];
      rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
      [rightBarButtonItem2 setTitle:v9];
    }
  }
}

- (void)segmentChanged:(id)changed
{
  if (self->_accountTypeSegmentedControl == changed)
  {
    *(&self->super + 184) &= ~2u;
  }

  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)propertyValueChanged:(id)changed
{
  key = [changed object];
  text = [(UITextField *)key text];
  v5 = [text length];
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

  if (v5 == &dword_0 + 1 && ![v7 fieldContentsLastLength] && objc_msgSend(text, "rangeOfString:", @"@") == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(UITextField *)key hasMarkedText])
    {
      suffixString = [v8 suffixString];
      v19 = [NSString stringWithFormat:@"%@%@", text, suffixString];
      [(UITextField *)key setText:v19];

      -[UITextField setCursorPosition:](key, "setCursorPosition:", [text length]);
      v5 = (&dword_0 + 1);
      goto LABEL_13;
    }

    _fieldEditor = [(UITextField *)key _fieldEditor];
    suffixString2 = [v8 suffixString];
    [(UITextField *)key setText:suffixString2];

    [(UITextField *)key setCursorPosition:0];
    [_fieldEditor setMarkedText:text selectedRange:{0, 0}];
    v5 = (&dword_0 + 1);
    [(UITextField *)key setCursorPosition:1];
  }

  else
  {
    _fieldEditor = [v8 suffixString];
    if ([text isEqualToString:_fieldEditor])
    {
      fieldContentsLastLength = [v8 fieldContentsLastLength];

      if (fieldContentsLastLength)
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
  account = [(AccountPSDetailControllerBase *)self account];
  if (account)
  {
    account2 = [(AccountPSDetailControllerBase *)self account];
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

- (void)didEndEditingOnReturn:(id)return
{
  if (!self->super._account && [(AccountPSDetailController *)self haveEnoughValues]&& (*(&self->super + 184) & 1) == 0)
  {

    [(AccountPSDetailController *)self doneButtonTapped:0];
  }
}

- (BOOL)_shouldHideEnableAndDelete
{
  specifier = [(AccountPSDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKey:ACUIAlreadyShowedEnableAndDeleteKey];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)showExistingAccountError
{
  v21 = [(MailAccount *)self->_existingIncomingAccount accountPropertyForKey:MFMailAccountDescription];
  displayedAccountTypeString = [(objc_class *)[(AccountPSDetailController *)self accountClass] displayedAccountTypeString];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v20 = v4;
  v5 = [NSString stringWithFormat:v4, v21];
  if (([(MailAccount *)self->_existingIncomingAccount isActive]& 1) != 0)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ALREADY_EXISTING_ACCOUNT_DESC"];
    v8 = [v6 localizedStringForKey:v7 value:&stru_B9FC8 table:@"AccountPreferences"];
    v9 = [NSString stringWithFormat:v8, displayedAccountTypeString];

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
    v9 = [NSString stringWithFormat:v16, displayedAccountTypeString];

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

- (void)didFinishSaveAccountAnywaysSheetWithResult:(BOOL)result
{
  if (result)
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

- (void)handleSSLAlertForAccount:(id)account accountValidator:(id)validator attemptWithoutSSL:(BOOL)l
{
  lCopy = l;
  accountCopy = account;
  validatorCopy = validator;
  v10 = [(NSMutableDictionary *)self->_outgoingAccountValues copy];
  outgoingAccountValuesAfterFailedValidation = self->_outgoingAccountValuesAfterFailedValidation;
  self->_outgoingAccountValuesAfterFailedValidation = v10;

  self->_shouldUseSSL = !lCopy;
  v12.receiver = self;
  v12.super_class = AccountPSDetailController;
  [(AccountPSDetailControllerBase *)&v12 handleSSLAlertForAccount:accountCopy accountValidator:validatorCopy attemptWithoutSSL:lCopy];
}

- (int)copyAccountsForEmailAddress:(id)address incomingAccount:(id *)account deliveryAccount:(id *)deliveryAccount easySetupNotes:(id *)notes
{
  addressCopy = address;
  v8 = [[ECEmailAddress alloc] initWithString:addressCopy];
  domain = [v8 domain];

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
        if (([v14 containsObject:domain] & 1) != 0 && AccountConfigurationServiceCopyAccountsForEmailAddressUsingAccountInfo() == 2)
        {

          v15 = addressCopy;
          v16 = 2;
          goto LABEL_16;
        }
      }

      v15 = addressCopy;
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
    v15 = addressCopy;
  }

  v16 = AccountConfigurationServiceCopyAccountsForEmailAddress();
LABEL_16:

  return v16;
}

- (void)_tryEasySetupForEmailAddress:(id)address
{
  addressCopy = address;
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
  self->_easySetupResult = [(AccountPSDetailController *)self copyAccountsForEmailAddress:addressCopy incomingAccount:&obj deliveryAccount:&v13 easySetupNotes:&v12];
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
  hasEnoughInformationForEasySetup = [(MailAccount *)self->_easySetupAccount hasEnoughInformationForEasySetup];
  if (hasEnoughInformationForEasySetup)
  {
    easySetupDeliveryAccount = self->_easySetupDeliveryAccount;

    LOBYTE(hasEnoughInformationForEasySetup) = [easySetupDeliveryAccount hasEnoughInformationForEasySetup];
  }

  return hasEnoughInformationForEasySetup;
}

- (void)_takeOutgoingAccountPropertiesFromAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    v12 = accountCopy;
    hostname = [accountCopy hostname];
    [(AccountPSDetailController *)self _setOutgoingAccountProperty:hostname forKey:MailAccountHostname];

    username = [v12 username];
    [(AccountPSDetailController *)self _setOutgoingAccountProperty:username forKey:MFMailAccountUsername];

    password = [v12 password];
    [(AccountPSDetailController *)self _setOutgoingAccountProperty:password forKey:MailAccountPassword];

    usesSSL = [v12 usesSSL];
    v5 = v12;
    if (usesSSL)
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
  _bypassAccountValidation = [(AccountPSDetailController *)self _bypassAccountValidation];
  easySetupNote = [(AccountPSDetailController *)self easySetupNote];
  v7 = [easySetupNote length];

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

  if ((easySetupResult == 1) | _bypassAccountValidation & 1 || ![(AccountPSDetailController *)self _hasEnoughInformationForEasySetup])
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

      hostname = [(MailAccount *)self->_easySetupAccount hostname];
      [(AccountPSDetailController *)self _setIncomingAccountProperty:hostname forKey:MailAccountHostname];

      username = [(MailAccount *)self->_easySetupAccount username];
      [(AccountPSDetailController *)self _setIncomingAccountProperty:username forKey:MFMailAccountUsername];

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

- (void)showEasySetupNoteWithAccount:(id)account
{
  [(AccountPSDetailController *)self stopValidationWithPrompt:0 showButtons:1];
  *(self + 344) |= 2u;
  [(AccountPSDetailController *)self reloadSpecifiers];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNT_INFO_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  navigationItem = [(AccountPSDetailController *)self navigationItem];
  [navigationItem setTitle:v5];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  navigationItem2 = [(AccountPSDetailController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setTitle:v8];

  navigationItem3 = [(AccountPSDetailController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem2 setEnabled:1];

  [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
}

- (void)finishedSetupWithAccount:(id)account
{
  accountCopy = account;
  parentController = [(AccountPSDetailController *)self parentController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    parentController2 = [(AccountPSDetailController *)self parentController];
    persistentAccount = [accountCopy persistentAccount];
    [parentController2 controller:self didFinishSettingUpAccount:persistentAccount];
  }

  else
  {
    [(AccountPSDetailController *)self dismissAnimated:1];
  }

  *(&self->super + 184) &= ~1u;
  [(AccountPSDetailController *)self setTaskCompletionAssertionEnabled:0];
}

- (void)setChosenType:(id)type withSpecifier:(id)specifier
{
  typeCopy = type;
  v5 = [typeCopy isEqualToString:@"POP"];
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

- (id)chosenType:(id)type
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

- (id)_descriptionFromEmailAddress:(id)address
{
  addressCopy = address;
  userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [userInfo objectForKey:@"RegionalDisplayName"];

  if (!v6)
  {
    if (![(AccountPSDetailController *)self accountClass]|| (v7 = [(AccountPSDetailController *)self accountClass], v7 == objc_opt_class()) || (v8 = [(AccountPSDetailController *)self accountClass], v8 == objc_opt_class()))
    {
      displayedAccountTypeString = ACUIDescriptionFromEmailAddress();
    }

    else
    {
      displayedAccountTypeString = [(objc_class *)[(AccountPSDetailController *)self accountClass] displayedAccountTypeString];
    }

    v6 = displayedAccountTypeString;
  }

  accountStore = [(AccountPSDetailController *)self accountStore];
  v11 = [accountStore hasAccountWithDescription:v6];

  if (v11)
  {
    v12 = addressCopy;

    v6 = v12;
  }

  return v6;
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  properties = [specifierCopy properties];
  v8 = [properties objectForKey:PSKeyNameKey];
  [(AccountPSDetailController *)self setAccountProperty:propertyCopy forKey:v8 withSpecifier:specifierCopy];
}

- (void)setAccountProperty:(id)property forKey:(id)key withSpecifier:(id)specifier
{
  propertyCopy = property;
  keyCopy = key;
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v11 = [userInfo objectForKey:@"values"];
  if (v11)
  {
    values = [specifierCopy values];
    v13 = [values indexOfObject:propertyCopy];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL && v13 < [v11 count])
    {
      v14 = [v11 objectAtIndex:v13];

      propertyCopy = v14;
    }
  }

  if (keyCopy)
  {
    [(AccountPSDetailController *)self _setIncomingAccountProperty:propertyCopy forKey:keyCopy specifier:specifierCopy];
  }

  else
  {
    v15 = [userInfo objectForKey:@"outgoing_key"];
    if (v15)
    {
      keyCopy = v15;
      [AccountPSDetailController _setOutgoingAccountProperty:"_setOutgoingAccountProperty:forKey:specifier:" forKey:propertyCopy specifier:?];
    }

    else
    {
      keyCopy = 0;
    }
  }

  [(AccountPSDetailController *)self updateDoneButton];
}

- (void)_setIncomingAccountProperty:(id)property forKey:(id)key specifier:(id)specifier
{
  propertyCopy = property;
  keyCopy = key;
  if (([keyCopy isEqualToString:MailAccountEmailAddresses] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", MFMailAccountUsername))
  {
    [(AccountPSDetailController *)self _tryUpdatingDescriptionFromValue:propertyCopy forKey:keyCopy];
  }

  accountValues = self->super._accountValues;
  if (propertyCopy)
  {
    if (!accountValues)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->super._accountValues;
      self->super._accountValues = v9;

      accountValues = self->super._accountValues;
    }

    [(NSMutableDictionary *)accountValues setObject:propertyCopy forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)accountValues removeObjectForKey:keyCopy];
  }
}

- (void)setOutgoingHostName:(id)name withSpecifier:(id)specifier
{
  nameCopy = name;
  v5 = [nameCopy rangeOfString:@":" options:4];
  v7 = v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [nameCopy substringFromIndex:&v5[v6]];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
    v10 = [nameCopy substringToIndex:v7];

    nameCopy = v10;
  }

  stringValue = [v8 stringValue];
  [(AccountPSDetailController *)self _setOutgoingAccountProperty:stringValue forKey:MailAccountPortNumber];

  [(AccountPSDetailController *)self _setOutgoingAccountProperty:nameCopy forKey:MailAccountHostname];
  [(AccountPSDetailController *)self updateDoneButton];
}

- (id)outgoingHostName:(id)name
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
  rootController = [(AccountPSDetailController *)self rootController];
  topViewController = [rootController topViewController];

  if (topViewController == self)
  {
    navigationItem = [(AccountPSDetailController *)self navigationItem];
    displayName = [(MFAccount *)self->super._account displayName];
    [navigationItem setTitle:displayName];
  }
}

- (void)_tryUpdatingDescriptionFromValue:(id)value forKey:(id)key
{
  keyCopy = key;
  v19 = [(AccountPSDetailController *)self _descriptionFromEmailAddress:value];
  v6 = MFMailAccountDescription;
  v7 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MFMailAccountDescription];
  v8 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:keyCopy];
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

      table = [(AccountPSDetailController *)self table];
      v17 = [(AccountPSDetailController *)self indexPathForIndex:v12];
      v18 = [table cellForRowAtIndexPath:v17];

      [v18 setValue:v19];
    }
  }

LABEL_9:
}

- (void)_setOutgoingAccountProperty:(id)property forKey:(id)key specifier:(id)specifier
{
  propertyCopy = property;
  keyCopy = key;
  specifierCopy = specifier;
  account = self->super._account;
  if (account)
  {
    deliveryAccount = [(MFAccount *)account deliveryAccount];
    if (!deliveryAccount)
    {
      v12 = [objc_opt_class() accountPropertiesValueForKey:keyCopy value:propertyCopy];

      v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, keyCopy, 0];
      deliveryAccount = [SMTPAccount newAccountWithDictionary:v13];
      [DeliveryAccount addDeliveryAccount:deliveryAccount];

      propertyCopy = v12;
    }

    if ([keyCopy isEqual:MFMailAccountUsername])
    {
      [deliveryAccount setShouldUseAuthentication:{objc_msgSend(propertyCopy, "length") != 0}];
    }

    [deliveryAccount savePersistentAccount];
    [(MFAccount *)self->super._account setDeliveryAccount:deliveryAccount];
    [(MFAccount *)self->super._account savePersistentAccount];
  }

  else
  {
    outgoingAccountValues = self->_outgoingAccountValues;
    if (propertyCopy)
    {
      if (!outgoingAccountValues)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = self->_outgoingAccountValues;
        self->_outgoingAccountValues = v15;

        outgoingAccountValues = self->_outgoingAccountValues;
      }

      [(NSMutableDictionary *)outgoingAccountValues setObject:propertyCopy forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)outgoingAccountValues removeObjectForKey:keyCopy];
      propertyCopy = 0;
    }
  }
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  properties = [specifierCopy properties];
  v6 = [properties objectForKey:PSKeyNameKey];
  v7 = [(AccountPSDetailController *)self accountPropertyForKey:v6 withSpecifier:specifierCopy];

  return v7;
}

- (id)accountPropertyForKey:(id)key withSpecifier:(id)specifier
{
  keyCopy = key;
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v9 = userInfo;
  if (keyCopy)
  {
    v10 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:keyCopy];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [userInfo objectForKey:@"outgoing_key"];
    if (v11)
    {
      v10 = [(AccountPSDetailController *)self _outgoingAccountPropertyForKey:v11];
      keyCopy = v11;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      keyCopy = 0;
    }
  }

  v10 = [specifierCopy propertyForKey:PSDefaultValueKey];
LABEL_9:
  v12 = [v9 objectForKey:@"values"];
  if (v12)
  {
    values = [specifierCopy values];
    v14 = [v12 indexOfObject:v10];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL && v14 < [values count])
    {
      v15 = [values objectAtIndex:v14];

      v10 = v15;
    }
  }

  return v10;
}

- (id)_outgoingAccountPropertyForKey:(id)key
{
  keyCopy = key;
  account = self->super._account;
  if (account)
  {
    deliveryAccount = [(MFAccount *)account deliveryAccount];
    v7 = [deliveryAccount valueInAccountPropertiesForKey:keyCopy];
  }

  else
  {
    outgoingAccountValues = self->_outgoingAccountValues;
    if (outgoingAccountValues)
    {
      v7 = [(NSMutableDictionary *)outgoingAccountValues objectForKey:keyCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_incomingAccountPropertyForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->super._accountValues objectForKey:key];

  return v3;
}

- (Class)accountClass
{
  if (self->super._account)
  {
    goto LABEL_2;
  }

  userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v3 = [userInfo objectForKey:@"class"];

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

- (id)getSMTPDisplayName:(id)name
{
  deliveryAccount = [(MFAccount *)self->super._account deliveryAccount];
  displayHostname = [deliveryAccount displayHostname];
  if (!displayHostname)
  {
    displayHostname = [deliveryAccount hostname];
  }

  if (![deliveryAccount isActive] || -[MFAccount isPrimaryDeliveryAccountDisabled](self->super._account, "isPrimaryDeliveryAccountDisabled"))
  {
    deliveryAccountAlternates = [(MFAccount *)self->super._account deliveryAccountAlternates];
    if ([deliveryAccountAlternates count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = deliveryAccountAlternates;
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
            hostname = [v11 hostname];
            v13 = [hostname length];

            if (v13)
            {
              hostname2 = [v11 hostname];

              displayHostname = hostname2;
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

      displayHostname = v16;
    }
  }

  if (displayHostname)
  {
    v17 = displayHostname;
  }

  else
  {
    v17 = &stru_B9FC8;
  }

  v18 = v17;

  return v17;
}

- (void)_setDefaultAlias:(id)alias forSpecifier:(id)specifier
{
  aliasCopy = alias;
  specifierCopy = specifier;
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
        v13 = [v12 propertyForKey:{v9, specifierCopy}];
        v14 = [v13 isEqualToString:aliasCopy];

        if (v14)
        {
          userInfo = [v12 userInfo];
          v16 = [userInfo valueForKey:v21];

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
  defaultEmailAddress = [(MFAccount *)self->super._account defaultEmailAddress];
  v5 = [v3 initWithString:defaultEmailAddress];
  simpleAddress = [v5 simpleAddress];

  return simpleAddress;
}

- (void)_enableAlias:(id)alias forSpecifier:(id)specifier
{
  aliasCopy = alias;
  userInfo = [specifier userInfo];
  v7 = [userInfo objectForKey:MFAliasPreferenceNameKey];

  -[MFAccount setEnabled:forEmailAddress:](self->super._account, "setEnabled:forEmailAddress:", [aliasCopy BOOLValue], v7);
}

- (id)_isAliasEnabledForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  emailAddressesAndAliases = [(MFAccount *)self->super._account emailAddressesAndAliases];
  userInfo = [specifierCopy userInfo];
  v7 = [userInfo objectForKey:MFAliasPreferenceNameKey];

  v8 = [emailAddressesAndAliases objectForKey:v7];

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

- (BOOL)_addAccount:(id)account
{
  accountCopy = account;
  supportedDataclasses = [objc_opt_class() supportedDataclasses];
  v5 = [supportedDataclasses count];

  if (v5 < 2)
  {
    defaultPath = [accountCopy defaultPath];
    [accountCopy setPath:defaultPath];

    persistentAccount = [accountCopy persistentAccount];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    provisionedDataclasses = [persistentAccount provisionedDataclasses];
    v9 = [provisionedDataclasses countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(provisionedDataclasses);
          }

          [persistentAccount setEnabled:1 forDataclass:*(*(&v13 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [provisionedDataclasses countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [accountCopy savePersistentAccount];
  }

  return v5 < 2;
}

- (void)reallyDeleteAccount
{
  account = [(AccountPSDetailControllerBase *)self account];
  [account removePersistentAccount];

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

  hostname = [(MailAccount *)easySetupAccount hostname];
  username = [(MailAccount *)self->_easySetupAccount username];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [MailAccount existingAccountWithType:v7 hostname:hostname username:username];
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

- (void)_copyUIInformationIntoIncomingAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v4 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountFullUserName];
    [accountCopy setFullUserName:v4];

    v5 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountEmailAddresses];
    [accountCopy setEmailAddresses:v5];

    v6 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountPassword];
    [accountCopy setPassword:v6];

    v7 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MFMailAccountDescription];
    [accountCopy setDisplayName:v7];

    userInfo = [*&self->super.ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v9 = [userInfo objectForKey:@"RegionalDisplayName"];
    [accountCopy setAccountProperty:v9 forKey:@"RegionalDisplayName"];

    v10 = [userInfo objectForKey:@"PlaceholderAddress"];
    [accountCopy setAccountProperty:v10 forKey:@"PlaceholderAddress"];
  }
}

- (void)_copyUIInformationIntoDeliveryAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v6 = accountCopy;
    v5 = [(AccountPSDetailController *)self _incomingAccountPropertyForKey:MailAccountPassword];
    [v6 setPassword:v5];

    accountCopy = v6;
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
    accountClass = objc_opt_class();
  }

  else
  {
    accountClass = [(AccountPSDetailController *)self accountClass];
  }

  v5 = accountClass;
  v6 = [(objc_class *)accountClass newAccountWithDictionary:v3];
  if ((*(self + 344) & 4) != 0 && !self->_shouldUseSSL)
  {
    bOOLValue = 0;
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
        bOOLValue = &dword_0 + 1;
      }

      else
      {
        v11 = [(objc_class *)v5 predefinedValueForKey:MailAccountSSLEnabled];
        bOOLValue = [v11 BOOLValue];
      }
    }

    else
    {
      bOOLValue = &dword_0 + 1;
    }

    [v6 setUsesSSL:bOOLValue];
  }

  if (objc_opt_respondsToSelector())
  {
    deliveryAccount = [v6 deliveryAccount];
    if (deliveryAccount)
    {
      goto LABEL_24;
    }
  }

  if (!self->_outgoingAccountValues)
  {
    deliveryAccount = 0;
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
    [v16 setUsesSSL:bOOLValue];
  }

  [v6 setDeliveryAccount:v17];
  [(AccountPSDetailController *)self _addAccount:v6];
  [DeliveryAccount addDeliveryAccount:v17];
  [v17 savePersistentAccount];

  deliveryAccount = 0;
LABEL_25:

  return v6;
}

- (void)_getAccountInfoForEmailAddress:(id)address
{
  addressCopy = address;
  v5 = objc_autoreleasePoolPush();
  v7 = 0;
  obj = 0;
  v6 = 0;
  if ([(AccountPSDetailController *)self copyAccountsForEmailAddress:addressCopy incomingAccount:&obj deliveryAccount:&v7 easySetupNotes:&v6]== 2)
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

- (BOOL)_setupDeliveryAccountForValidatedAccount:(id)account
{
  accountCopy = account;
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
        [accountCopy setDeliveryAccount:?];
        [(AccountPSDetailController *)self _addAccount:accountCopy];
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

    [(AccountPSDetailController *)self setCandidateIncomingAccount:accountCopy];
    v10 = self->_easySetupDeliveryAccount;
    if (v10 || ([(AccountPSDetailController *)self _createDeliveryAccountWithUIValues], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      defaultConnectionSettings = [(DeliveryAccount *)v10 defaultConnectionSettings];
      originalConnectionSettings = self->super._originalConnectionSettings;
      self->super._originalConnectionSettings = defaultConnectionSettings;

      easySetupDeliveryAccount = self->_easySetupDeliveryAccount;
      if (easySetupDeliveryAccount)
      {
        usesSSL = [easySetupDeliveryAccount usesSSL];
      }

      else
      {
        usesSSL = &dword_0 + 1;
      }

      accountValidator = [(AccountPSDetailControllerBase *)self accountValidator];
      [accountValidator validateAccount:v10 useSSL:usesSSL];
    }

    goto LABEL_16;
  }

  [accountCopy setDeliveryAccount:v8];
LABEL_4:
  [(AccountPSDetailController *)self _addAccount:accountCopy];
LABEL_8:
  v9 = 1;
LABEL_17:

  return v9;
}

- (BOOL)validateEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [[ECEmailAddress alloc] initWithString:addressCopy];

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
  lowercaseString = [(__CFString *)CFLocaleGetIdentifier(v3) lowercaseString];
  if (lowercaseString)
  {
    v5 = lowercaseString;
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

- (id)_setOfKeysForAlteredValuesInDictionary:(id)dictionary originalDictionary:(id)originalDictionary
{
  dictionaryCopy = dictionary;
  originalDictionaryCopy = originalDictionary;
  v29 = objc_alloc_init(NSMutableSet);
  v7 = [NSSet alloc];
  allKeys = [dictionaryCopy allKeys];
  v27 = [v7 initWithArray:allKeys];

  v9 = [NSMutableSet alloc];
  allKeys2 = [originalDictionaryCopy allKeys];
  v11 = [v9 initWithArray:allKeys2];

  v28 = v11;
  [v11 intersectSet:v27];
  v12 = [NSMutableSet alloc];
  allKeys3 = [originalDictionaryCopy allKeys];
  v14 = [v12 initWithArray:allKeys3];

  v26 = v14;
  [v14 unionSet:v27];
  [v14 minusSet:v28];
  allObjects = [v14 allObjects];
  [v29 addObjectsFromArray:allObjects];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allObjects2 = [v28 allObjects];
  v17 = [allObjects2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(allObjects2);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [dictionaryCopy objectForKey:v20];

        if (v21)
        {
          v22 = [originalDictionaryCopy objectForKey:v20];
          v23 = [dictionaryCopy objectForKey:v20];
          v24 = [v22 isEqual:v23];

          if ((v24 & 1) == 0)
          {
            [v29 addObject:v20];
          }
        }
      }

      v17 = [allObjects2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  return v29;
}

- (void)icloudMailCreationNeedsViewUpdate:(id)update withAccount:(id)account
{
  updateCopy = update;
  accountCopy = account;
  v8 = accountCopy;
  if (self)
  {
    aa_childMailAccount = [accountCopy aa_childMailAccount];
    if (aa_childMailAccount)
    {
      v10 = +[AccountPSDetailController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = aa_childMailAccount;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "child mail account configured in delegate %@", &v15, 0xCu);
      }

      v11 = [MFAccount accountWithPersistentAccount:aa_childMailAccount];
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
    aa_childMailAccount = +[AccountPSDetailController log];
    if (os_log_type_enabled(aa_childMailAccount, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, aa_childMailAccount, OS_LOG_TYPE_DEFAULT, "No self. cannot update view for mail account create", &v15, 2u);
    }
  }
}

@end
@interface ICSettingsPasswordViewController
- (BOOL)biometricsSwitchEnabled;
- (BOOL)hasMultipleAccounts;
- (ICSettingsPasswordViewController)initWithAccountID:(id)a3;
- (NSString)biometricsGroupFooter;
- (NSString)biometricsSwitchTitle;
- (NSString)lockedNotesModeGroupFooter;
- (PSSpecifier)biometricsGroupSpecifier;
- (PSSpecifier)biometricsSwitchSpecifier;
- (PSSpecifier)changeCustomPasswordSpecifier;
- (PSSpecifier)checkedLockedNotesModeSpecifier;
- (PSSpecifier)lockedNotesModeCustomPasswordSpecifier;
- (PSSpecifier)lockedNotesModeDevicePasswordSpecifier;
- (PSSpecifier)lockedNotesModeGroupSpecifier;
- (PSSpecifier)resetCustomPasswordGroupSpecifier;
- (PSSpecifier)resetCustomPasswordSpecifier;
- (PSSpecifier)setCustomPasswordSpecifier;
- (id)biometricsSwitchValue:(id)a3;
- (void)applicationDidResume;
- (void)didTapChangeCustomPasswordButton:(id)a3;
- (void)didTapLockedNotesModeLearnMoreLink:(id)a3;
- (void)didTapResetCustomPasswordButton:(id)a3;
- (void)didTapSetCustomPasswordButton:(id)a3;
- (void)presentLockedNotesWelcomePrompt;
- (void)reloadSpecifiers;
- (void)reloadTitle;
- (void)resetCustomPasswordForAccount:(id)a3;
- (void)setBiometricsSwitchValue:(id)a3 specifier:(id)a4;
- (void)setLockedNotesMode:(id)a3;
@end

@implementation ICSettingsPasswordViewController

- (ICSettingsPasswordViewController)initWithAccountID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ICSettingsPasswordViewController;
  v6 = [(ICSettingsPasswordViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountID, a3);
    v8 = +[ICNoteContext sharedContext];
    v9 = [v8 managedObjectContext];
    v10 = [v9 objectWithID:v5];
    account = v7->_account;
    v7->_account = v10;
  }

  return v7;
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = ICSettingsPasswordViewController;
  [(ICSettingsPasswordViewController *)&v3 applicationDidResume];
  +[ICLocalAuthentication refreshBiometricsContext];
  +[ICLocalAuthentication refreshHasPasscode];
  [(ICSettingsPasswordViewController *)self reloadTitle];
  [(ICSettingsPasswordViewController *)self reloadSpecifiers];
}

- (void)reloadTitle
{
  v3 = [(ICSettingsPasswordViewController *)self account];
  v4 = [v3 localizedName];
  v16 = [v4 ic_trimmedString];

  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [(ICSettingsPasswordViewController *)self account];
  v7 = [v6 identifier];
  v8 = [v5 iCloudACAccountWithIdentifier:v7];
  v9 = [v8 username];
  v10 = [v9 ic_trimmedString];

  if ([v16 length] && objc_msgSend(v10, "length"))
  {
    v11 = objc_alloc_init(ICNavigationTitleView);
    v12 = [(ICNavigationTitleView *)v11 titleLabel];
    [v12 setText:v16];

    v13 = [(ICNavigationTitleView *)v11 subtitleLabel];
    [v13 setText:v10];

    v14 = [(ICSettingsPasswordViewController *)self navigationItem];
    [v14 setTitleView:v11];
  }

  else
  {
    if ([v16 length])
    {
      [(ICSettingsPasswordViewController *)self setTitle:v16];
      goto LABEL_8;
    }

    v11 = [(ICSettingsPasswordViewController *)self bundle];
    v15 = [(ICNavigationTitleView *)v11 localizedStringForKey:@"NOTES_PW_NAVIGATION_TITLE" value:@"Password" table:@"Settings"];
    [(ICSettingsPasswordViewController *)self setTitle:v15];
  }

LABEL_8:
}

- (BOOL)hasMultipleAccounts
{
  v2 = [(ICSettingsPasswordViewController *)self account];
  v3 = [v2 managedObjectContext];
  v4 = [ICAccount allActiveAccountsInContext:v3];
  v5 = [v4 count] > 1;

  return v5;
}

- (void)reloadSpecifiers
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [(ICSettingsPasswordViewController *)self accountID];
  v6 = [v4 objectWithID:v5];
  [(ICSettingsPasswordViewController *)self setAccount:v6];

  lockedNotesModeGroupSpecifier = self->_lockedNotesModeGroupSpecifier;
  self->_lockedNotesModeGroupSpecifier = 0;

  lockedNotesModeDevicePasswordSpecifier = self->_lockedNotesModeDevicePasswordSpecifier;
  self->_lockedNotesModeDevicePasswordSpecifier = 0;

  lockedNotesModeCustomPasswordSpecifier = self->_lockedNotesModeCustomPasswordSpecifier;
  self->_lockedNotesModeCustomPasswordSpecifier = 0;

  biometricsGroupSpecifier = self->_biometricsGroupSpecifier;
  self->_biometricsGroupSpecifier = 0;

  biometricsSwitchSpecifier = self->_biometricsSwitchSpecifier;
  self->_biometricsSwitchSpecifier = 0;

  changeCustomPasswordSpecifier = self->_changeCustomPasswordSpecifier;
  self->_changeCustomPasswordSpecifier = 0;

  setCustomPasswordSpecifier = self->_setCustomPasswordSpecifier;
  self->_setCustomPasswordSpecifier = 0;

  resetCustomPasswordGroupSpecifier = self->_resetCustomPasswordGroupSpecifier;
  self->_resetCustomPasswordGroupSpecifier = 0;

  resetCustomPasswordSpecifier = self->_resetCustomPasswordSpecifier;
  self->_resetCustomPasswordSpecifier = 0;

  v30 = objc_alloc_init(NSMutableArray);
  v16 = +[ICLockedNotesModeMigrator sharedMigrator];
  v17 = [(ICSettingsPasswordViewController *)self account];
  LODWORD(v5) = [v16 account:v17 supportsMode:2];

  if (v5)
  {
    v18 = [(ICSettingsPasswordViewController *)self lockedNotesModeGroupSpecifier];
    [v30 addObject:v18];

    v19 = [(ICSettingsPasswordViewController *)self lockedNotesModeDevicePasswordSpecifier];
    [v30 addObject:v19];

    v20 = [(ICSettingsPasswordViewController *)self lockedNotesModeCustomPasswordSpecifier];
    [v30 addObject:v20];
  }

  v21 = [(ICSettingsPasswordViewController *)self biometricsGroupSpecifier];
  [v30 addObject:v21];

  v22 = [(ICSettingsPasswordViewController *)self biometricsSwitchSpecifier];
  [v30 addObject:v22];

  v23 = [(ICSettingsPasswordViewController *)self account];
  v24 = [v23 resolvedLockedNotesMode];

  if (v24 == 1)
  {
    v25 = +[PSSpecifier emptyGroupSpecifier];
    [v30 addObject:v25];

    v26 = [(ICSettingsPasswordViewController *)self changeCustomPasswordSpecifier];
    [v30 addObject:v26];

    v27 = +[PSSpecifier emptyGroupSpecifier];
    [v30 addObject:v27];

    v28 = [(ICSettingsPasswordViewController *)self resetCustomPasswordGroupSpecifier];
    [v30 addObject:v28];

    v29 = [(ICSettingsPasswordViewController *)self resetCustomPasswordSpecifier];
    [v30 addObject:v29];
  }

  [(ICSettingsPasswordViewController *)self setSpecifiers:v30];
}

- (PSSpecifier)lockedNotesModeGroupSpecifier
{
  lockedNotesModeGroupSpecifier = self->_lockedNotesModeGroupSpecifier;
  if (!lockedNotesModeGroupSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"PW_LOCKED_NOTES_MODE_TITLE" value:@"Choose a Password Method" table:@"Settings"];

    v6 = [(ICSettingsPasswordViewController *)self bundle];
    v7 = [v6 localizedStringForKey:@"LEARN_MORE" value:@"Learn More…" table:@"Settings"];

    v8 = [(ICSettingsPasswordViewController *)self lockedNotesModeGroupFooter];
    v9 = [NSString stringWithFormat:@"%@ %@", v8, v7];

    v10 = [v9 rangeOfString:v7];
    v12 = v11;
    v13 = [PSSpecifier groupSpecifierWithName:v5];
    v14 = self->_lockedNotesModeGroupSpecifier;
    self->_lockedNotesModeGroupSpecifier = v13;

    [(PSSpecifier *)self->_lockedNotesModeGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v15 = self->_lockedNotesModeGroupSpecifier;
    v16 = [(ICSettingsPasswordViewController *)self checkedLockedNotesModeSpecifier];
    [(PSSpecifier *)v15 setProperty:v16 forKey:PSRadioGroupCheckedSpecifierKey];

    v17 = self->_lockedNotesModeGroupSpecifier;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [(PSSpecifier *)v17 setProperty:v19 forKey:PSFooterCellClassGroupKey];

    [(PSSpecifier *)self->_lockedNotesModeGroupSpecifier setProperty:v9 forKey:PSFooterTextGroupKey];
    v20 = self->_lockedNotesModeGroupSpecifier;
    v28.location = v10;
    v28.length = v12;
    v21 = NSStringFromRange(v28);
    [(PSSpecifier *)v20 setProperty:v21 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v22 = self->_lockedNotesModeGroupSpecifier;
    v23 = [NSValue valueWithNonretainedObject:self];
    [(PSSpecifier *)v22 setProperty:v23 forKey:PSFooterHyperlinkViewTargetKey];

    v24 = self->_lockedNotesModeGroupSpecifier;
    v25 = NSStringFromSelector("didTapLockedNotesModeLearnMoreLink:");
    [(PSSpecifier *)v24 setProperty:v25 forKey:PSFooterHyperlinkViewActionKey];

    lockedNotesModeGroupSpecifier = self->_lockedNotesModeGroupSpecifier;
  }

  return lockedNotesModeGroupSpecifier;
}

- (void)didTapLockedNotesModeLearnMoreLink:(id)a3
{
  v7 = +[ICLockedNotesModeMigrator sharedMigrator];
  v4 = [(ICSettingsPasswordViewController *)self account];
  v5 = [(ICSettingsPasswordViewController *)self view];
  v6 = [v5 window];
  [v7 presentLockedNotesLearnMoreViewForAccount:v4 window:v6];
}

- (NSString)lockedNotesModeGroupFooter
{
  v3 = [(ICSettingsPasswordViewController *)self hasMultipleAccounts];
  v4 = [(ICSettingsPasswordViewController *)self bundle];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 localizedStringForKey:@"PW_LOCKED_NOTES_MODE_FOOTER_MULTIPLE_ACCOUNTS" value:@"Choose the method to use to lock notes for your “%@” account." table:@"Settings"];

    v7 = [(ICSettingsPasswordViewController *)self account];
    v8 = [v7 localizedName];
    v9 = [NSString localizedStringWithFormat:v6, v8];

    v5 = v6;
  }

  else
  {
    v9 = [v4 localizedStringForKey:@"PW_LOCKED_NOTES_MODE_FOOTER" value:@"Choose the method to use to lock your notes." table:@"Settings"];
  }

  return v9;
}

- (PSSpecifier)checkedLockedNotesModeSpecifier
{
  v3 = [(ICSettingsPasswordViewController *)self account];
  v4 = [v3 accountData];
  if ([v4 lockedNotesMode] == 1)
  {

LABEL_3:
    v5 = [(ICSettingsPasswordViewController *)self lockedNotesModeCustomPasswordSpecifier];
    goto LABEL_10;
  }

  v6 = [(ICSettingsPasswordViewController *)self account];
  v7 = [v6 accountData];
  if ([v7 lockedNotesMode])
  {
  }

  else
  {
    v8 = [(ICSettingsPasswordViewController *)self account];
    v9 = [v8 hasPassphraseSet];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v10 = [(ICSettingsPasswordViewController *)self account];
  v11 = [v10 accountData];
  v12 = [v11 lockedNotesMode];

  if (v12 == 2)
  {
    v5 = [(ICSettingsPasswordViewController *)self lockedNotesModeDevicePasswordSpecifier];
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (PSSpecifier)lockedNotesModeDevicePasswordSpecifier
{
  lockedNotesModeDevicePasswordSpecifier = self->_lockedNotesModeDevicePasswordSpecifier;
  if (!lockedNotesModeDevicePasswordSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"PW_LOCKED_NOTES_MODE_DEVICE" value:@"Use Device Passcode" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v7 = self->_lockedNotesModeDevicePasswordSpecifier;
    self->_lockedNotesModeDevicePasswordSpecifier = v6;

    [(PSSpecifier *)self->_lockedNotesModeDevicePasswordSpecifier setButtonAction:"setLockedNotesMode:"];
    v8 = self->_lockedNotesModeDevicePasswordSpecifier;
    v9 = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:v9 == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    [(PSSpecifier *)self->_lockedNotesModeDevicePasswordSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    lockedNotesModeDevicePasswordSpecifier = self->_lockedNotesModeDevicePasswordSpecifier;
  }

  return lockedNotesModeDevicePasswordSpecifier;
}

- (PSSpecifier)lockedNotesModeCustomPasswordSpecifier
{
  lockedNotesModeCustomPasswordSpecifier = self->_lockedNotesModeCustomPasswordSpecifier;
  if (!lockedNotesModeCustomPasswordSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"PW_LOCKED_NOTES_MODE_CUSTOM" value:@"Use Custom Password" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v7 = self->_lockedNotesModeCustomPasswordSpecifier;
    self->_lockedNotesModeCustomPasswordSpecifier = v6;

    [(PSSpecifier *)self->_lockedNotesModeCustomPasswordSpecifier setButtonAction:"setLockedNotesMode:"];
    v8 = self->_lockedNotesModeCustomPasswordSpecifier;
    v9 = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:v9 == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    [(PSSpecifier *)self->_lockedNotesModeCustomPasswordSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    lockedNotesModeCustomPasswordSpecifier = self->_lockedNotesModeCustomPasswordSpecifier;
  }

  return lockedNotesModeCustomPasswordSpecifier;
}

- (void)setLockedNotesMode:(id)a3
{
  v4 = a3;
  v5 = [(ICSettingsPasswordViewController *)self account];
  v6 = [v5 accountData];
  v7 = [v6 lockedNotesMode];

  v8 = [(ICSettingsPasswordViewController *)self lockedNotesModeDevicePasswordSpecifier];
  if (v8 == v4)
  {
    v10 = 2;
  }

  else
  {
    v9 = [(ICSettingsPasswordViewController *)self lockedNotesModeCustomPasswordSpecifier];
    v10 = v9 == v4;
  }

  if (v10 != v7 && v10)
  {
    objc_initWeak(&location, self);
    v11 = +[ICLockedNotesModeMigrator sharedMigrator];
    v12 = [(ICSettingsPasswordViewController *)self account];
    v13 = objc_loadWeakRetained(&location);
    v14 = [v13 view];
    v15 = [v14 window];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_59DC;
    v16[3] = &unk_1C800;
    objc_copyWeak(&v17, &location);
    v18 = v10;
    v19 = v7;
    [v11 presentBackwardsCompatibilityAlertIfNeededForAccount:v12 mode:v10 window:v15 confirmHandler:v16 cancelHandler:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)presentLockedNotesWelcomePrompt
{
  objc_initWeak(&location, self);
  v3 = +[ICLockedNotesModeMigrator sharedMigrator];
  v4 = [(ICSettingsPasswordViewController *)self account];
  v5 = [(ICSettingsPasswordViewController *)self view];
  v6 = [v5 window];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_601C;
  v7[3] = &unk_1C878;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v3 presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:v4 window:v6 completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (PSSpecifier)biometricsGroupSpecifier
{
  biometricsGroupSpecifier = self->_biometricsGroupSpecifier;
  if (!biometricsGroupSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"LEARN_MORE" value:@"Learn More…" table:@"Settings"];

    v6 = [(ICSettingsPasswordViewController *)self biometricsGroupFooter];
    v7 = [NSString stringWithFormat:@"%@ %@", v6, v5];

    v8 = [v7 rangeOfString:v5];
    v10 = v9;
    v11 = +[PSSpecifier emptyGroupSpecifier];
    v12 = self->_biometricsGroupSpecifier;
    self->_biometricsGroupSpecifier = v11;

    v13 = self->_biometricsGroupSpecifier;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(PSSpecifier *)v13 setProperty:v15 forKey:PSFooterCellClassGroupKey];

    [(PSSpecifier *)self->_biometricsGroupSpecifier setProperty:v7 forKey:PSFooterTextGroupKey];
    v16 = self->_biometricsGroupSpecifier;
    v24.location = v8;
    v24.length = v10;
    v17 = NSStringFromRange(v24);
    [(PSSpecifier *)v16 setProperty:v17 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v18 = self->_biometricsGroupSpecifier;
    v19 = [NSValue valueWithNonretainedObject:self];
    [(PSSpecifier *)v18 setProperty:v19 forKey:PSFooterHyperlinkViewTargetKey];

    v20 = self->_biometricsGroupSpecifier;
    v21 = NSStringFromSelector("didTapBiometricsLearnMoreLink:");
    [(PSSpecifier *)v20 setProperty:v21 forKey:PSFooterHyperlinkViewActionKey];

    biometricsGroupSpecifier = self->_biometricsGroupSpecifier;
  }

  return biometricsGroupSpecifier;
}

- (NSString)biometricsGroupFooter
{
  if (+[ICLocalAuthentication biometricsType]== &dword_4)
  {
    if (+[ICLocalAuthentication biometricsEnrolled]&& [(ICSettingsPasswordViewController *)self hasMultipleAccounts])
    {
      v3 = [(ICSettingsPasswordViewController *)self bundle];
      v4 = v3;
      v5 = @"PW_OPTIC_ID_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
      v6 = @"Use Optic ID to view and manage locked notes in this account.";
      goto LABEL_29;
    }

    v7 = +[ICLocalAuthentication biometricsEnrolled];
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    if (v7)
    {
      v5 = @"PW_OPTIC_ID_ENROLLED_FOOTER_SINGLE_ACCOUNT";
      v6 = @"Use Optic ID to view and manage locked notes.";
    }

    else
    {
      v5 = @"PW_OPTIC_ID_NOT_ENROLLED_FOOTER";
      v6 = @"Set up Optic ID in Settings > Optic ID & Passcode to add it as a way to manage your locked notes.";
    }
  }

  else if (+[ICLocalAuthentication biometricsType]== &dword_0 + 2)
  {
    if (+[ICLocalAuthentication biometricsEnrolled]&& [(ICSettingsPasswordViewController *)self hasMultipleAccounts])
    {
      v3 = [(ICSettingsPasswordViewController *)self bundle];
      v4 = v3;
      v5 = @"PW_FACE_ID_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
      v6 = @"Use Face ID to view and manage locked notes in this account.";
      goto LABEL_29;
    }

    v10 = +[ICLocalAuthentication biometricsEnrolled];
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    if (v10)
    {
      v5 = @"PW_FACE_ID_ENROLLED_FOOTER_SINGLE_ACCOUNT";
      v6 = @"Use Face ID to view and manage locked notes.";
    }

    else
    {
      v5 = @"PW_FACE_ID_NOT_ENROLLED_FOOTER";
      v6 = @"Set up Face ID in Settings > Face ID & Passcode to add it as a way to manage your locked notes.";
    }
  }

  else
  {
    v8 = +[ICLocalAuthentication biometricsType];
    v9 = +[ICLocalAuthentication biometricsEnrolled];
    if (v8 == &dword_0 + 1)
    {
      if (v9 && [(ICSettingsPasswordViewController *)self hasMultipleAccounts])
      {
        v3 = [(ICSettingsPasswordViewController *)self bundle];
        v4 = v3;
        v5 = @"PW_TOUCH_ID_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
        v6 = @"Use your fingerprint to view locked notes in this account.";
        goto LABEL_29;
      }

      v11 = +[ICLocalAuthentication biometricsEnrolled];
      v4 = [(ICSettingsPasswordViewController *)self bundle];
      if (v11)
      {
        v5 = @"PW_TOUCH_ID_ENROLLED_FOOTER_SINGLE_ACCOUNT";
        v6 = @"Use your fingerprint to view locked notes.";
      }

      else
      {
        v5 = @"PW_TOUCH_ID_NOT_ENROLLED_FOOTER";
        v6 = @"Set up Touch ID in Settings > Touch ID & Passcode to add it as a way to manage your locked notes.";
      }
    }

    else
    {
      if (v9 && [(ICSettingsPasswordViewController *)self hasMultipleAccounts])
      {
        v3 = [(ICSettingsPasswordViewController *)self bundle];
        v4 = v3;
        v5 = @"PW_BIOMETRICS_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
        v6 = @"Use biometrics to view locked notes in this account.";
        goto LABEL_29;
      }

      v12 = +[ICLocalAuthentication biometricsEnrolled];
      v4 = [(ICSettingsPasswordViewController *)self bundle];
      if (v12)
      {
        v5 = @"PW_BIOMETRICS_ENROLLED_FOOTER_SINGLE_ACCOUNT";
        v6 = @"Use biometrics to view locked notes.";
      }

      else
      {
        v5 = @"PW_BIOMETRICS_NOT_ENROLLED_FOOTER";
        v6 = @"Set up Biometrics in Settings > Passcode to add it as a way to manage your locked notes.";
      }
    }
  }

  v3 = v4;
LABEL_29:
  v13 = [v3 localizedStringForKey:v5 value:v6 table:@"Settings"];

  return v13;
}

- (PSSpecifier)biometricsSwitchSpecifier
{
  biometricsSwitchSpecifier = self->_biometricsSwitchSpecifier;
  if (!biometricsSwitchSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self biometricsSwitchTitle];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setBiometricsSwitchValue:specifier:" get:"biometricsSwitchValue:" detail:0 cell:6 edit:0];
    v6 = self->_biometricsSwitchSpecifier;
    self->_biometricsSwitchSpecifier = v5;

    v7 = self->_biometricsSwitchSpecifier;
    v8 = [NSNumber numberWithBool:[(ICSettingsPasswordViewController *)self biometricsSwitchEnabled]];
    [(PSSpecifier *)v7 setProperty:v8 forKey:PSEnabledKey];

    biometricsSwitchSpecifier = self->_biometricsSwitchSpecifier;
  }

  return biometricsSwitchSpecifier;
}

- (NSString)biometricsSwitchTitle
{
  if (+[ICLocalAuthentication biometricsType]== &dword_4)
  {
    v3 = [(ICSettingsPasswordViewController *)self bundle];
    v4 = v3;
    v5 = @"USE_OPTIC_ID_CELL_TITLE";
    v6 = @"Use Optic ID";
  }

  else if (+[ICLocalAuthentication biometricsType]== &dword_0 + 2)
  {
    v3 = [(ICSettingsPasswordViewController *)self bundle];
    v4 = v3;
    v5 = @"USE_FACE_ID_CELL_TITLE";
    v6 = @"Use Face ID";
  }

  else
  {
    v7 = +[ICLocalAuthentication biometricsType];
    v3 = [(ICSettingsPasswordViewController *)self bundle];
    v4 = v3;
    if (v7 == &dword_0 + 1)
    {
      v5 = @"USE_TOUCH_ID_CELL_TITLE";
      v6 = @"Use Touch ID";
    }

    else
    {
      v5 = @"USE_BIOMETRICS_CELL_TITLE";
      v6 = @"Use Biometrics";
    }
  }

  v8 = [v3 localizedStringForKey:v5 value:v6 table:@"Settings"];

  return v8;
}

- (BOOL)biometricsSwitchEnabled
{
  v2 = [(ICSettingsPasswordViewController *)self presentedViewController];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[ICLocalAuthentication biometricsEnrolled];
  }

  return v3;
}

- (id)biometricsSwitchValue:(id)a3
{
  if ([(ICSettingsPasswordViewController *)self biometricsSwitchEnabled])
  {
    v4 = [(ICSettingsPasswordViewController *)self account];
    if (v4)
    {
      v5 = +[ICAuthenticationState sharedState];
      v6 = [(ICSettingsPasswordViewController *)self account];
      v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 biometricsEnabledForAccount:v6]);
    }

    else
    {
      v7 = [NSNumber numberWithInt:0];
    }
  }

  else
  {
    v7 = [NSNumber numberWithInt:0];
  }

  return v7;
}

- (void)setBiometricsSwitchValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(ICSettingsPasswordViewController *)self account];
  v9 = [ICAuthenticationPrompt promptForIntent:8 object:v8];

  v10 = +[ICAuthentication shared];
  v11 = [(ICSettingsPasswordViewController *)self view];
  v12 = [v11 window];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_6F3C;
  v15[3] = &unk_1C8A0;
  objc_copyWeak(&v18, &location);
  v13 = v6;
  v16 = v13;
  v14 = v7;
  v17 = v14;
  [v10 authenticateWithPrompt:v9 displayWindow:v12 completionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (PSSpecifier)changeCustomPasswordSpecifier
{
  changeCustomPasswordSpecifier = self->_changeCustomPasswordSpecifier;
  if (!changeCustomPasswordSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"CHANGE_PW_BUTTON_TITLE" value:@"Change Password…" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_changeCustomPasswordSpecifier;
    self->_changeCustomPasswordSpecifier = v6;

    [(PSSpecifier *)self->_changeCustomPasswordSpecifier setButtonAction:"didTapChangeCustomPasswordButton:"];
    v8 = self->_changeCustomPasswordSpecifier;
    v9 = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:v9 == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    changeCustomPasswordSpecifier = self->_changeCustomPasswordSpecifier;
  }

  return changeCustomPasswordSpecifier;
}

- (void)didTapChangeCustomPasswordButton:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [ICPasswordChangeViewController alloc];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_73E0;
  v22[3] = &unk_1C828;
  objc_copyWeak(&v23, &location);
  v6 = [v5 initWithCompletionHandler:v22];
  [v6 setIsInSettings:1];
  v7 = [ICSettingsNavigationController alloc];
  v8 = [(ICSettingsPasswordViewController *)self navigationController];
  v9 = -[ICSettingsNavigationController initWithRootViewController:supportedInterfaceOrientations:](v7, "initWithRootViewController:supportedInterfaceOrientations:", v6, [v8 supportedInterfaceOrientations]);

  [(ICSettingsNavigationController *)v9 setModalPresentationStyle:2];
  v10 = [(ICSettingsNavigationController *)v9 presentationController];
  [v10 setDelegate:self];

  v11 = [(ICSettingsPasswordViewController *)self account];
  v12 = [ICAuthenticationPrompt promptForIntent:5 object:v11];

  v13 = +[ICAuthentication shared];
  v14 = [(ICSettingsPasswordViewController *)self view];
  v15 = [v14 window];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_7420;
  v18[3] = &unk_1C8A0;
  objc_copyWeak(&v21, &location);
  v16 = v6;
  v19 = v16;
  v17 = v9;
  v20 = v17;
  [v13 authenticateWithPrompt:v12 displayWindow:v15 completionHandler:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (PSSpecifier)setCustomPasswordSpecifier
{
  setCustomPasswordSpecifier = self->_setCustomPasswordSpecifier;
  if (!setCustomPasswordSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"SET_PW_BUTTON_TITLE" value:@"Set Password…" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_setCustomPasswordSpecifier;
    self->_setCustomPasswordSpecifier = v6;

    [(PSSpecifier *)self->_setCustomPasswordSpecifier setButtonAction:"didTapSetCustomPasswordButton:"];
    v8 = self->_setCustomPasswordSpecifier;
    v9 = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:v9 == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    setCustomPasswordSpecifier = self->_setCustomPasswordSpecifier;
  }

  return setCustomPasswordSpecifier;
}

- (void)didTapSetCustomPasswordButton:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [ICPasswordChangeViewController alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_7834;
  v16 = &unk_1C828;
  objc_copyWeak(&v17, &location);
  v6 = [v5 initWithCompletionHandler:&v13];
  [v6 setIsInSettings:{1, v13, v14, v15, v16}];
  [v6 setIsSettingInitialPassword:1];
  v7 = [(ICSettingsPasswordViewController *)self account];
  [v6 setUpForAddingPasswordWithAccount:v7];

  v8 = [ICSettingsNavigationController alloc];
  v9 = [(ICSettingsPasswordViewController *)self navigationController];
  v10 = -[ICSettingsNavigationController initWithRootViewController:supportedInterfaceOrientations:](v8, "initWithRootViewController:supportedInterfaceOrientations:", v6, [v9 supportedInterfaceOrientations]);

  [(ICSettingsNavigationController *)v10 setModalPresentationStyle:2];
  v11 = [(ICSettingsNavigationController *)v10 presentationController];
  [v11 setDelegate:self];

  v12 = [(ICSettingsPasswordViewController *)self navigationController];
  [v12 presentViewController:v10 animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (PSSpecifier)resetCustomPasswordGroupSpecifier
{
  resetCustomPasswordGroupSpecifier = self->_resetCustomPasswordGroupSpecifier;
  if (!resetCustomPasswordGroupSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self account];
    v5 = [ICAuthenticationAlert resetCustomPasswordInfoAlertWithAccount:v4];

    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = self->_resetCustomPasswordGroupSpecifier;
    self->_resetCustomPasswordGroupSpecifier = v6;

    v8 = self->_resetCustomPasswordGroupSpecifier;
    v9 = [v5 message];
    [(PSSpecifier *)v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    resetCustomPasswordGroupSpecifier = self->_resetCustomPasswordGroupSpecifier;
  }

  return resetCustomPasswordGroupSpecifier;
}

- (PSSpecifier)resetCustomPasswordSpecifier
{
  resetCustomPasswordSpecifier = self->_resetCustomPasswordSpecifier;
  if (!resetCustomPasswordSpecifier)
  {
    v4 = [(ICSettingsPasswordViewController *)self account];
    v5 = [ICAuthenticationAlert resetCustomPasswordConfirmationAlertWithAccount:v4];

    v6 = [v5 actionTitle];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v8 = self->_resetCustomPasswordSpecifier;
    self->_resetCustomPasswordSpecifier = v7;

    [(PSSpecifier *)self->_resetCustomPasswordSpecifier setButtonAction:"didTapResetCustomPasswordButton:"];
    [(PSSpecifier *)self->_resetCustomPasswordSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    v9 = self->_resetCustomPasswordSpecifier;
    v10 = [(ICSettingsPasswordViewController *)self presentedViewController];
    v11 = [NSNumber numberWithInt:v10 == 0];
    [(PSSpecifier *)v9 setProperty:v11 forKey:PSEnabledKey];

    resetCustomPasswordSpecifier = self->_resetCustomPasswordSpecifier;
  }

  return resetCustomPasswordSpecifier;
}

- (void)didTapResetCustomPasswordButton:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ICSettingsPasswordViewController *)self account];
  v6 = [ICAuthenticationPrompt promptForIntent:6 object:v5];

  v7 = +[ICAuthentication shared];
  v8 = [(ICSettingsPasswordViewController *)self view];
  v9 = [v8 window];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7C10;
  v10[3] = &unk_1C828;
  objc_copyWeak(&v11, &location);
  [v7 authenticateWithPrompt:v6 displayWindow:v9 completionHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)resetCustomPasswordForAccount:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[ICLockedNotesModeMigrator sharedMigrator];
  v6 = [(ICSettingsPasswordViewController *)self view];
  v7 = [v6 window];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_801C;
  v9[3] = &unk_1C8F0;
  v8 = v4;
  v10 = v8;
  objc_copyWeak(&v12, &location);
  v11 = self;
  [v5 presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:v8 window:v7 completionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

@end
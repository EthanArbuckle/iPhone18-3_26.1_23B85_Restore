@interface ICSettingsPasswordViewController
- (BOOL)biometricsSwitchEnabled;
- (BOOL)hasMultipleAccounts;
- (ICSettingsPasswordViewController)initWithAccountID:(id)d;
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
- (id)biometricsSwitchValue:(id)value;
- (void)applicationDidResume;
- (void)didTapChangeCustomPasswordButton:(id)button;
- (void)didTapLockedNotesModeLearnMoreLink:(id)link;
- (void)didTapResetCustomPasswordButton:(id)button;
- (void)didTapSetCustomPasswordButton:(id)button;
- (void)presentLockedNotesWelcomePrompt;
- (void)reloadSpecifiers;
- (void)reloadTitle;
- (void)resetCustomPasswordForAccount:(id)account;
- (void)setBiometricsSwitchValue:(id)value specifier:(id)specifier;
- (void)setLockedNotesMode:(id)mode;
@end

@implementation ICSettingsPasswordViewController

- (ICSettingsPasswordViewController)initWithAccountID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ICSettingsPasswordViewController;
  v6 = [(ICSettingsPasswordViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountID, d);
    v8 = +[ICNoteContext sharedContext];
    managedObjectContext = [v8 managedObjectContext];
    v10 = [managedObjectContext objectWithID:dCopy];
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
  account = [(ICSettingsPasswordViewController *)self account];
  localizedName = [account localizedName];
  ic_trimmedString = [localizedName ic_trimmedString];

  v5 = +[ICAccountUtilities sharedInstance];
  account2 = [(ICSettingsPasswordViewController *)self account];
  identifier = [account2 identifier];
  v8 = [v5 iCloudACAccountWithIdentifier:identifier];
  username = [v8 username];
  ic_trimmedString2 = [username ic_trimmedString];

  if ([ic_trimmedString length] && objc_msgSend(ic_trimmedString2, "length"))
  {
    bundle = objc_alloc_init(ICNavigationTitleView);
    titleLabel = [(ICNavigationTitleView *)bundle titleLabel];
    [titleLabel setText:ic_trimmedString];

    subtitleLabel = [(ICNavigationTitleView *)bundle subtitleLabel];
    [subtitleLabel setText:ic_trimmedString2];

    navigationItem = [(ICSettingsPasswordViewController *)self navigationItem];
    [navigationItem setTitleView:bundle];
  }

  else
  {
    if ([ic_trimmedString length])
    {
      [(ICSettingsPasswordViewController *)self setTitle:ic_trimmedString];
      goto LABEL_8;
    }

    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v15 = [(ICNavigationTitleView *)bundle localizedStringForKey:@"NOTES_PW_NAVIGATION_TITLE" value:@"Password" table:@"Settings"];
    [(ICSettingsPasswordViewController *)self setTitle:v15];
  }

LABEL_8:
}

- (BOOL)hasMultipleAccounts
{
  account = [(ICSettingsPasswordViewController *)self account];
  managedObjectContext = [account managedObjectContext];
  v4 = [ICAccount allActiveAccountsInContext:managedObjectContext];
  v5 = [v4 count] > 1;

  return v5;
}

- (void)reloadSpecifiers
{
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  accountID = [(ICSettingsPasswordViewController *)self accountID];
  v6 = [managedObjectContext objectWithID:accountID];
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
  account = [(ICSettingsPasswordViewController *)self account];
  LODWORD(accountID) = [v16 account:account supportsMode:2];

  if (accountID)
  {
    lockedNotesModeGroupSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeGroupSpecifier];
    [v30 addObject:lockedNotesModeGroupSpecifier];

    lockedNotesModeDevicePasswordSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeDevicePasswordSpecifier];
    [v30 addObject:lockedNotesModeDevicePasswordSpecifier];

    lockedNotesModeCustomPasswordSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeCustomPasswordSpecifier];
    [v30 addObject:lockedNotesModeCustomPasswordSpecifier];
  }

  biometricsGroupSpecifier = [(ICSettingsPasswordViewController *)self biometricsGroupSpecifier];
  [v30 addObject:biometricsGroupSpecifier];

  biometricsSwitchSpecifier = [(ICSettingsPasswordViewController *)self biometricsSwitchSpecifier];
  [v30 addObject:biometricsSwitchSpecifier];

  account2 = [(ICSettingsPasswordViewController *)self account];
  resolvedLockedNotesMode = [account2 resolvedLockedNotesMode];

  if (resolvedLockedNotesMode == 1)
  {
    v25 = +[PSSpecifier emptyGroupSpecifier];
    [v30 addObject:v25];

    changeCustomPasswordSpecifier = [(ICSettingsPasswordViewController *)self changeCustomPasswordSpecifier];
    [v30 addObject:changeCustomPasswordSpecifier];

    v27 = +[PSSpecifier emptyGroupSpecifier];
    [v30 addObject:v27];

    resetCustomPasswordGroupSpecifier = [(ICSettingsPasswordViewController *)self resetCustomPasswordGroupSpecifier];
    [v30 addObject:resetCustomPasswordGroupSpecifier];

    resetCustomPasswordSpecifier = [(ICSettingsPasswordViewController *)self resetCustomPasswordSpecifier];
    [v30 addObject:resetCustomPasswordSpecifier];
  }

  [(ICSettingsPasswordViewController *)self setSpecifiers:v30];
}

- (PSSpecifier)lockedNotesModeGroupSpecifier
{
  lockedNotesModeGroupSpecifier = self->_lockedNotesModeGroupSpecifier;
  if (!lockedNotesModeGroupSpecifier)
  {
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"PW_LOCKED_NOTES_MODE_TITLE" value:@"Choose a Password Method" table:@"Settings"];

    bundle2 = [(ICSettingsPasswordViewController *)self bundle];
    v7 = [bundle2 localizedStringForKey:@"LEARN_MORE" value:@"Learn More…" table:@"Settings"];

    lockedNotesModeGroupFooter = [(ICSettingsPasswordViewController *)self lockedNotesModeGroupFooter];
    v9 = [NSString stringWithFormat:@"%@ %@", lockedNotesModeGroupFooter, v7];

    v10 = [v9 rangeOfString:v7];
    v12 = v11;
    v13 = [PSSpecifier groupSpecifierWithName:v5];
    v14 = self->_lockedNotesModeGroupSpecifier;
    self->_lockedNotesModeGroupSpecifier = v13;

    [(PSSpecifier *)self->_lockedNotesModeGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v15 = self->_lockedNotesModeGroupSpecifier;
    checkedLockedNotesModeSpecifier = [(ICSettingsPasswordViewController *)self checkedLockedNotesModeSpecifier];
    [(PSSpecifier *)v15 setProperty:checkedLockedNotesModeSpecifier forKey:PSRadioGroupCheckedSpecifierKey];

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

- (void)didTapLockedNotesModeLearnMoreLink:(id)link
{
  v7 = +[ICLockedNotesModeMigrator sharedMigrator];
  account = [(ICSettingsPasswordViewController *)self account];
  view = [(ICSettingsPasswordViewController *)self view];
  window = [view window];
  [v7 presentLockedNotesLearnMoreViewForAccount:account window:window];
}

- (NSString)lockedNotesModeGroupFooter
{
  hasMultipleAccounts = [(ICSettingsPasswordViewController *)self hasMultipleAccounts];
  bundle = [(ICSettingsPasswordViewController *)self bundle];
  v5 = bundle;
  if (hasMultipleAccounts)
  {
    v6 = [bundle localizedStringForKey:@"PW_LOCKED_NOTES_MODE_FOOTER_MULTIPLE_ACCOUNTS" value:@"Choose the method to use to lock notes for your “%@” account." table:@"Settings"];

    account = [(ICSettingsPasswordViewController *)self account];
    localizedName = [account localizedName];
    v9 = [NSString localizedStringWithFormat:v6, localizedName];

    v5 = v6;
  }

  else
  {
    v9 = [bundle localizedStringForKey:@"PW_LOCKED_NOTES_MODE_FOOTER" value:@"Choose the method to use to lock your notes." table:@"Settings"];
  }

  return v9;
}

- (PSSpecifier)checkedLockedNotesModeSpecifier
{
  account = [(ICSettingsPasswordViewController *)self account];
  accountData = [account accountData];
  if ([accountData lockedNotesMode] == 1)
  {

LABEL_3:
    lockedNotesModeCustomPasswordSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeCustomPasswordSpecifier];
    goto LABEL_10;
  }

  account2 = [(ICSettingsPasswordViewController *)self account];
  accountData2 = [account2 accountData];
  if ([accountData2 lockedNotesMode])
  {
  }

  else
  {
    account3 = [(ICSettingsPasswordViewController *)self account];
    hasPassphraseSet = [account3 hasPassphraseSet];

    if (hasPassphraseSet)
    {
      goto LABEL_3;
    }
  }

  account4 = [(ICSettingsPasswordViewController *)self account];
  accountData3 = [account4 accountData];
  lockedNotesMode = [accountData3 lockedNotesMode];

  if (lockedNotesMode == 2)
  {
    lockedNotesModeCustomPasswordSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeDevicePasswordSpecifier];
  }

  else
  {
    lockedNotesModeCustomPasswordSpecifier = 0;
  }

LABEL_10:

  return lockedNotesModeCustomPasswordSpecifier;
}

- (PSSpecifier)lockedNotesModeDevicePasswordSpecifier
{
  lockedNotesModeDevicePasswordSpecifier = self->_lockedNotesModeDevicePasswordSpecifier;
  if (!lockedNotesModeDevicePasswordSpecifier)
  {
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"PW_LOCKED_NOTES_MODE_DEVICE" value:@"Use Device Passcode" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v7 = self->_lockedNotesModeDevicePasswordSpecifier;
    self->_lockedNotesModeDevicePasswordSpecifier = v6;

    [(PSSpecifier *)self->_lockedNotesModeDevicePasswordSpecifier setButtonAction:"setLockedNotesMode:"];
    v8 = self->_lockedNotesModeDevicePasswordSpecifier;
    presentedViewController = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:presentedViewController == 0];
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
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"PW_LOCKED_NOTES_MODE_CUSTOM" value:@"Use Custom Password" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v7 = self->_lockedNotesModeCustomPasswordSpecifier;
    self->_lockedNotesModeCustomPasswordSpecifier = v6;

    [(PSSpecifier *)self->_lockedNotesModeCustomPasswordSpecifier setButtonAction:"setLockedNotesMode:"];
    v8 = self->_lockedNotesModeCustomPasswordSpecifier;
    presentedViewController = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:presentedViewController == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    [(PSSpecifier *)self->_lockedNotesModeCustomPasswordSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    lockedNotesModeCustomPasswordSpecifier = self->_lockedNotesModeCustomPasswordSpecifier;
  }

  return lockedNotesModeCustomPasswordSpecifier;
}

- (void)setLockedNotesMode:(id)mode
{
  modeCopy = mode;
  account = [(ICSettingsPasswordViewController *)self account];
  accountData = [account accountData];
  lockedNotesMode = [accountData lockedNotesMode];

  lockedNotesModeDevicePasswordSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeDevicePasswordSpecifier];
  if (lockedNotesModeDevicePasswordSpecifier == modeCopy)
  {
    v10 = 2;
  }

  else
  {
    lockedNotesModeCustomPasswordSpecifier = [(ICSettingsPasswordViewController *)self lockedNotesModeCustomPasswordSpecifier];
    v10 = lockedNotesModeCustomPasswordSpecifier == modeCopy;
  }

  if (v10 != lockedNotesMode && v10)
  {
    objc_initWeak(&location, self);
    v11 = +[ICLockedNotesModeMigrator sharedMigrator];
    account2 = [(ICSettingsPasswordViewController *)self account];
    v13 = objc_loadWeakRetained(&location);
    view = [v13 view];
    window = [view window];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_59DC;
    v16[3] = &unk_1C800;
    objc_copyWeak(&v17, &location);
    v18 = v10;
    v19 = lockedNotesMode;
    [v11 presentBackwardsCompatibilityAlertIfNeededForAccount:account2 mode:v10 window:window confirmHandler:v16 cancelHandler:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)presentLockedNotesWelcomePrompt
{
  objc_initWeak(&location, self);
  v3 = +[ICLockedNotesModeMigrator sharedMigrator];
  account = [(ICSettingsPasswordViewController *)self account];
  view = [(ICSettingsPasswordViewController *)self view];
  window = [view window];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_601C;
  v7[3] = &unk_1C878;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v3 presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:account window:window completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (PSSpecifier)biometricsGroupSpecifier
{
  biometricsGroupSpecifier = self->_biometricsGroupSpecifier;
  if (!biometricsGroupSpecifier)
  {
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"LEARN_MORE" value:@"Learn More…" table:@"Settings"];

    biometricsGroupFooter = [(ICSettingsPasswordViewController *)self biometricsGroupFooter];
    v7 = [NSString stringWithFormat:@"%@ %@", biometricsGroupFooter, v5];

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
      bundle = [(ICSettingsPasswordViewController *)self bundle];
      bundle2 = bundle;
      v5 = @"PW_OPTIC_ID_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
      v6 = @"Use Optic ID to view and manage locked notes in this account.";
      goto LABEL_29;
    }

    v7 = +[ICLocalAuthentication biometricsEnrolled];
    bundle2 = [(ICSettingsPasswordViewController *)self bundle];
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
      bundle = [(ICSettingsPasswordViewController *)self bundle];
      bundle2 = bundle;
      v5 = @"PW_FACE_ID_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
      v6 = @"Use Face ID to view and manage locked notes in this account.";
      goto LABEL_29;
    }

    v10 = +[ICLocalAuthentication biometricsEnrolled];
    bundle2 = [(ICSettingsPasswordViewController *)self bundle];
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
        bundle = [(ICSettingsPasswordViewController *)self bundle];
        bundle2 = bundle;
        v5 = @"PW_TOUCH_ID_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
        v6 = @"Use your fingerprint to view locked notes in this account.";
        goto LABEL_29;
      }

      v11 = +[ICLocalAuthentication biometricsEnrolled];
      bundle2 = [(ICSettingsPasswordViewController *)self bundle];
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
        bundle = [(ICSettingsPasswordViewController *)self bundle];
        bundle2 = bundle;
        v5 = @"PW_BIOMETRICS_ENROLLED_FOOTER_MULTIPLE_ACCOUNT";
        v6 = @"Use biometrics to view locked notes in this account.";
        goto LABEL_29;
      }

      v12 = +[ICLocalAuthentication biometricsEnrolled];
      bundle2 = [(ICSettingsPasswordViewController *)self bundle];
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

  bundle = bundle2;
LABEL_29:
  v13 = [bundle localizedStringForKey:v5 value:v6 table:@"Settings"];

  return v13;
}

- (PSSpecifier)biometricsSwitchSpecifier
{
  biometricsSwitchSpecifier = self->_biometricsSwitchSpecifier;
  if (!biometricsSwitchSpecifier)
  {
    biometricsSwitchTitle = [(ICSettingsPasswordViewController *)self biometricsSwitchTitle];
    v5 = [PSSpecifier preferenceSpecifierNamed:biometricsSwitchTitle target:self set:"setBiometricsSwitchValue:specifier:" get:"biometricsSwitchValue:" detail:0 cell:6 edit:0];
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
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v4 = bundle;
    v5 = @"USE_OPTIC_ID_CELL_TITLE";
    v6 = @"Use Optic ID";
  }

  else if (+[ICLocalAuthentication biometricsType]== &dword_0 + 2)
  {
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v4 = bundle;
    v5 = @"USE_FACE_ID_CELL_TITLE";
    v6 = @"Use Face ID";
  }

  else
  {
    v7 = +[ICLocalAuthentication biometricsType];
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v4 = bundle;
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

  v8 = [bundle localizedStringForKey:v5 value:v6 table:@"Settings"];

  return v8;
}

- (BOOL)biometricsSwitchEnabled
{
  presentedViewController = [(ICSettingsPasswordViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[ICLocalAuthentication biometricsEnrolled];
  }

  return v3;
}

- (id)biometricsSwitchValue:(id)value
{
  if ([(ICSettingsPasswordViewController *)self biometricsSwitchEnabled])
  {
    account = [(ICSettingsPasswordViewController *)self account];
    if (account)
    {
      v5 = +[ICAuthenticationState sharedState];
      account2 = [(ICSettingsPasswordViewController *)self account];
      v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 biometricsEnabledForAccount:account2]);
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

- (void)setBiometricsSwitchValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  account = [(ICSettingsPasswordViewController *)self account];
  v9 = [ICAuthenticationPrompt promptForIntent:8 object:account];

  v10 = +[ICAuthentication shared];
  view = [(ICSettingsPasswordViewController *)self view];
  window = [view window];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_6F3C;
  v15[3] = &unk_1C8A0;
  objc_copyWeak(&v18, &location);
  v13 = valueCopy;
  v16 = v13;
  v14 = specifierCopy;
  v17 = v14;
  [v10 authenticateWithPrompt:v9 displayWindow:window completionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (PSSpecifier)changeCustomPasswordSpecifier
{
  changeCustomPasswordSpecifier = self->_changeCustomPasswordSpecifier;
  if (!changeCustomPasswordSpecifier)
  {
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"CHANGE_PW_BUTTON_TITLE" value:@"Change Password…" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_changeCustomPasswordSpecifier;
    self->_changeCustomPasswordSpecifier = v6;

    [(PSSpecifier *)self->_changeCustomPasswordSpecifier setButtonAction:"didTapChangeCustomPasswordButton:"];
    v8 = self->_changeCustomPasswordSpecifier;
    presentedViewController = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:presentedViewController == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    changeCustomPasswordSpecifier = self->_changeCustomPasswordSpecifier;
  }

  return changeCustomPasswordSpecifier;
}

- (void)didTapChangeCustomPasswordButton:(id)button
{
  buttonCopy = button;
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
  navigationController = [(ICSettingsPasswordViewController *)self navigationController];
  v9 = -[ICSettingsNavigationController initWithRootViewController:supportedInterfaceOrientations:](v7, "initWithRootViewController:supportedInterfaceOrientations:", v6, [navigationController supportedInterfaceOrientations]);

  [(ICSettingsNavigationController *)v9 setModalPresentationStyle:2];
  presentationController = [(ICSettingsNavigationController *)v9 presentationController];
  [presentationController setDelegate:self];

  account = [(ICSettingsPasswordViewController *)self account];
  v12 = [ICAuthenticationPrompt promptForIntent:5 object:account];

  v13 = +[ICAuthentication shared];
  view = [(ICSettingsPasswordViewController *)self view];
  window = [view window];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_7420;
  v18[3] = &unk_1C8A0;
  objc_copyWeak(&v21, &location);
  v16 = v6;
  v19 = v16;
  v17 = v9;
  v20 = v17;
  [v13 authenticateWithPrompt:v12 displayWindow:window completionHandler:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (PSSpecifier)setCustomPasswordSpecifier
{
  setCustomPasswordSpecifier = self->_setCustomPasswordSpecifier;
  if (!setCustomPasswordSpecifier)
  {
    bundle = [(ICSettingsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"SET_PW_BUTTON_TITLE" value:@"Set Password…" table:@"Settings"];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_setCustomPasswordSpecifier;
    self->_setCustomPasswordSpecifier = v6;

    [(PSSpecifier *)self->_setCustomPasswordSpecifier setButtonAction:"didTapSetCustomPasswordButton:"];
    v8 = self->_setCustomPasswordSpecifier;
    presentedViewController = [(ICSettingsPasswordViewController *)self presentedViewController];
    v10 = [NSNumber numberWithInt:presentedViewController == 0];
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSEnabledKey];

    setCustomPasswordSpecifier = self->_setCustomPasswordSpecifier;
  }

  return setCustomPasswordSpecifier;
}

- (void)didTapSetCustomPasswordButton:(id)button
{
  buttonCopy = button;
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
  account = [(ICSettingsPasswordViewController *)self account];
  [v6 setUpForAddingPasswordWithAccount:account];

  v8 = [ICSettingsNavigationController alloc];
  navigationController = [(ICSettingsPasswordViewController *)self navigationController];
  v10 = -[ICSettingsNavigationController initWithRootViewController:supportedInterfaceOrientations:](v8, "initWithRootViewController:supportedInterfaceOrientations:", v6, [navigationController supportedInterfaceOrientations]);

  [(ICSettingsNavigationController *)v10 setModalPresentationStyle:2];
  presentationController = [(ICSettingsNavigationController *)v10 presentationController];
  [presentationController setDelegate:self];

  navigationController2 = [(ICSettingsPasswordViewController *)self navigationController];
  [navigationController2 presentViewController:v10 animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (PSSpecifier)resetCustomPasswordGroupSpecifier
{
  resetCustomPasswordGroupSpecifier = self->_resetCustomPasswordGroupSpecifier;
  if (!resetCustomPasswordGroupSpecifier)
  {
    account = [(ICSettingsPasswordViewController *)self account];
    v5 = [ICAuthenticationAlert resetCustomPasswordInfoAlertWithAccount:account];

    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = self->_resetCustomPasswordGroupSpecifier;
    self->_resetCustomPasswordGroupSpecifier = v6;

    v8 = self->_resetCustomPasswordGroupSpecifier;
    message = [v5 message];
    [(PSSpecifier *)v8 setProperty:message forKey:PSFooterTextGroupKey];

    resetCustomPasswordGroupSpecifier = self->_resetCustomPasswordGroupSpecifier;
  }

  return resetCustomPasswordGroupSpecifier;
}

- (PSSpecifier)resetCustomPasswordSpecifier
{
  resetCustomPasswordSpecifier = self->_resetCustomPasswordSpecifier;
  if (!resetCustomPasswordSpecifier)
  {
    account = [(ICSettingsPasswordViewController *)self account];
    v5 = [ICAuthenticationAlert resetCustomPasswordConfirmationAlertWithAccount:account];

    actionTitle = [v5 actionTitle];
    v7 = [PSSpecifier preferenceSpecifierNamed:actionTitle target:self set:0 get:0 detail:0 cell:13 edit:0];
    v8 = self->_resetCustomPasswordSpecifier;
    self->_resetCustomPasswordSpecifier = v7;

    [(PSSpecifier *)self->_resetCustomPasswordSpecifier setButtonAction:"didTapResetCustomPasswordButton:"];
    [(PSSpecifier *)self->_resetCustomPasswordSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    v9 = self->_resetCustomPasswordSpecifier;
    presentedViewController = [(ICSettingsPasswordViewController *)self presentedViewController];
    v11 = [NSNumber numberWithInt:presentedViewController == 0];
    [(PSSpecifier *)v9 setProperty:v11 forKey:PSEnabledKey];

    resetCustomPasswordSpecifier = self->_resetCustomPasswordSpecifier;
  }

  return resetCustomPasswordSpecifier;
}

- (void)didTapResetCustomPasswordButton:(id)button
{
  buttonCopy = button;
  objc_initWeak(&location, self);
  account = [(ICSettingsPasswordViewController *)self account];
  v6 = [ICAuthenticationPrompt promptForIntent:6 object:account];

  v7 = +[ICAuthentication shared];
  view = [(ICSettingsPasswordViewController *)self view];
  window = [view window];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7C10;
  v10[3] = &unk_1C828;
  objc_copyWeak(&v11, &location);
  [v7 authenticateWithPrompt:v6 displayWindow:window completionHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)resetCustomPasswordForAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  v5 = +[ICLockedNotesModeMigrator sharedMigrator];
  view = [(ICSettingsPasswordViewController *)self view];
  window = [view window];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_801C;
  v9[3] = &unk_1C8F0;
  v8 = accountCopy;
  v10 = v8;
  objc_copyWeak(&v12, &location);
  selfCopy = self;
  [v5 presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:v8 window:window completionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

@end
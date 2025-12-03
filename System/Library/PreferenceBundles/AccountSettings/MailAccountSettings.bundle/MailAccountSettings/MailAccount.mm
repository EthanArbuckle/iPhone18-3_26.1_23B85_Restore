@interface MailAccount
+ (id)_accountDescriptionSpecifiersForExistingAccount:(BOOL)account;
+ (id)_incomingSpecifiers;
+ (id)advancedSpecifiers:(BOOL)specifiers;
+ (id)advancedSpecifiersWithOptions:(unsigned int)options;
+ (id)copyShortFormForHost:(id)host descriptionPlaceholder:(id)placeholder addressIsEditable:(BOOL)editable;
+ (id)detailedSpecifiers:(BOOL)specifiers;
+ (id)easySetupSpecifiersWithPlaceholderAddress:(id)address accountName:(id)name;
+ (id)firstSetupSpecifiers;
+ (id)primarySpecifiers:(BOOL)specifiers;
+ (void)getRemoveOptionTitles:(id *)titles values:(id *)values defaultValue:(id *)value;
- (id)advancedSpecifiers;
- (id)detailedSpecifiers;
- (id)primarySpecifiers;
- (id)valueForSettingsInAccountPropertiesForKey:(id)key;
@end

@implementation MailAccount

+ (id)copyShortFormForHost:(id)host descriptionPlaceholder:(id)placeholder addressIsEditable:(BOOL)editable
{
  hostCopy = host;
  placeholderCopy = placeholder;
  v36 = [[NSMutableArray alloc] initWithCapacity:3];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FULL_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [PSTextFieldSpecifier preferenceSpecifierNamed:v9 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v10 setKeyboardType:0 autoCaps:1 autoCorrection:1];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"JOHN_APPLESEED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v10 setPlaceholder:v12];

  v13 = PSKeyNameKey;
  [v10 setProperty:MailAccountFullUserName forKey:PSKeyNameKey];
  [v36 addObject:v10];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v16 = [PSTextFieldSpecifier preferenceSpecifierNamed:v15 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v16 setKeyboardType:7 autoCaps:0 autoCorrection:1];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"EXAMPLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  hostCopy = [v18 stringByAppendingFormat:@"@%@", hostCopy];
  [v16 setPlaceholder:hostCopy];

  [v16 setProperty:MFMailAccountUsername forKey:v13];
  if (!editable)
  {
    [v16 setProperty:@"NO" forKey:PSEnabledKey];
  }

  v20 = [[NSMutableDictionary alloc] initWithCapacity:3];
  [v20 setObject:@"YES" forKey:@"AccountPreferenceRequired"];
  [v20 setObject:kCFBooleanTrue forKey:@"disableForManagedAccounts"];
  editableSuffix = [self editableSuffix];
  v22 = [editableSuffix length];

  if (v22)
  {
    editableSuffix2 = [self editableSuffix];
    [v20 setObject:editableSuffix2 forKey:@"UserEditableSuffix"];
  }

  [v16 setUserInfo:v20];
  [v36 addObject:v16];
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"PASSWORD" value:&stru_B9FC8 table:@"AccountPreferences"];
  v26 = [PSTextFieldSpecifier preferenceSpecifierNamed:v25 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v26 setKeyboardType:1 autoCaps:0 autoCorrection:1];
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"REQUIRED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v26 setPlaceholder:v28];

  [v26 setProperty:MailAccountPassword forKey:v13];
  v29 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", 0];
  [v26 setUserInfo:v29];

  *&v26[OBJC_IVAR___PSSpecifier_cellType] = 12;
  [v36 addObject:v26];
  if (_os_feature_enabled_impl())
  {
    v30 = v26;
  }

  else
  {
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
    v30 = [PSTextFieldSpecifier preferenceSpecifierNamed:v32 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

    [v30 setKeyboardType:0 autoCaps:2 autoCorrection:0];
    [v30 setPlaceholder:placeholderCopy];
    [v30 setProperty:MFMailAccountDescription forKey:v13];
    [v36 addObject:v30];
  }

  return v36;
}

+ (id)_accountDescriptionSpecifiersForExistingAccount:(BOOL)account
{
  accountCopy = account;
  v24 = [NSMutableArray arrayWithCapacity:3];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FULL_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [PSTextFieldSpecifier preferenceSpecifierNamed:v5 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v6 setKeyboardType:0 autoCaps:1 autoCorrection:1];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"JOHN_APPLESEED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setPlaceholder:v8];

  v9 = PSKeyNameKey;
  [v6 setProperty:MailAccountFullUserName forKey:PSKeyNameKey];
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v6 setUserInfo:v10];

  [v24 addObject:v6];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v13 = [PSTextFieldSpecifier preferenceSpecifierNamed:v12 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  if (accountCopy)
  {
    [v13 setProperty:@"EXISTING_ACCOUNT_EMAIL" forKey:PSIDKey];
  }

  [v13 setKeyboardType:7 autoCaps:0 autoCorrection:1];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"GENERIC_ADDRESS_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v13 setPlaceholder:v15];

  [v13 setProperty:MailAccountEmailAddresses forKey:v9];
  v16 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v13 setUserInfo:v16];

  [v24 addObject:v13];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
  v19 = [PSTextFieldSpecifier preferenceSpecifierNamed:v18 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"GENERIC_EMAIL_ACCOUNT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];

  [v19 setKeyboardType:0 autoCaps:2 autoCorrection:0];
  [v19 setPlaceholder:v21];
  [v19 setProperty:MFMailAccountDescription forKey:v9];
  v22 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v19 setUserInfo:v22];

  [v24 addObject:v19];

  return v24;
}

+ (id)_incomingSpecifiers
{
  v26 = [NSMutableArray arrayWithCapacity:4];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INCOMING_MAIL_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  [v26 addObject:v4];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOST_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSTextFieldSpecifier preferenceSpecifierNamed:v6 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v7 setKeyboardType:3 autoCaps:0 autoCorrection:1];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HOSTNAME_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v7 setPlaceholder:v9];

  v10 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v7 setUserInfo:v10];

  v11 = PSKeyNameKey;
  [v7 setProperty:MailAccountHostname forKey:PSKeyNameKey];
  [v26 addObject:v7];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"USER_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [PSTextFieldSpecifier preferenceSpecifierNamed:v13 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  if (+[UIDevice mf_isPadIdiom])
  {
    v15 = 7;
  }

  else
  {
    v15 = 0;
  }

  [v14 setKeyboardType:v15 autoCaps:0 autoCorrection:1];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"REQUIRED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v14 setPlaceholder:v17];

  v18 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", kCFBooleanTrue, @"disableForManagedAccounts", kCFBooleanTrue, @"disableForModificationRestrictions", 0];
  [v14 setUserInfo:v18];

  [v14 setProperty:MFMailAccountUsername forKey:v11];
  [v26 addObject:v14];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PASSWORD" value:&stru_B9FC8 table:@"AccountPreferences"];
  v21 = [PSTextFieldSpecifier preferenceSpecifierNamed:v20 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v21 setKeyboardType:1 autoCaps:0 autoCorrection:1];
  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"REQUIRED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v21 setPlaceholder:v23];

  v24 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", 0];
  [v21 setUserInfo:v24];

  *&v21[OBJC_IVAR___PSSpecifier_cellType] = 12;
  [v21 setProperty:MailAccountPassword forKey:v11];
  [v26 addObject:v21];

  return v26;
}

+ (id)primarySpecifiers:(BOOL)specifiers
{
  v4 = +[NSMutableArray array];
  if ([self setupIsAutomated])
  {
    emailAddressHostPart = [self emailAddressHostPart];
    descriptionPlaceholder = [self descriptionPlaceholder];
    v7 = [self copyShortFormForHost:emailAddressHostPart descriptionPlaceholder:descriptionPlaceholder addressIsEditable:{objc_msgSend(self, "addressIsEditable")}];
    [v4 addObjectsFromArray:v7];
  }

  else
  {
    v8 = [self _accountDescriptionSpecifiersForExistingAccount:1];
    [v4 addObjectsFromArray:v8];

    emailAddressHostPart = [self _incomingSpecifiers];
    [v4 addObjectsFromArray:emailAddressHostPart];
  }

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OUTGOING_MAIL_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  [v4 addObject:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"SMTP" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:"getSMTPDisplayName:" detail:objc_opt_class() cell:2 edit:0];

  [v14 setProperty:@"SMTP_INFORMATION_KEY" forKey:PSIDKey];
  [v4 addObject:v14];

  return v4;
}

- (id)primarySpecifiers
{
  v3 = [objc_opt_class() primarySpecifiers:{-[MailAccount isManaged](self, "isManaged")}];
  [v3 makeObjectsPerformSelector:"setTarget:" withObject:self];

  return v3;
}

+ (void)getRemoveOptionTitles:(id *)titles values:(id *)values defaultValue:(id *)value
{
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v17 localizedStringForKey:@"NEVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"REMOVE_AFTER_ONE_DAY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"REMOVE_AFTER_ONE_WEEK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"REMOVE_AFTER_ONE_MONTH" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18 = [NSArray arrayWithObjects:v6, v8, v10, v12, 0];

  v13 = [NSArray arrayWithObjects:@"-1", @"1", @"7", @"30", 0];
  if (titles)
  {
    *titles = v18;
  }

  if (values)
  {
    v14 = v13;
    *values = v13;
  }

  if (value)
  {
    *value = MFMailAccountNumberOfDaysToKeepTrashDefaultValue;
  }
}

+ (id)advancedSpecifiersWithOptions:(unsigned int)options
{
  optionsCopy = options;
  v86 = +[NSMutableArray array];
  isSSLEditable = [self isSSLEditable];
  v82 = optionsCopy;
  if ((optionsCopy & 0x20) != 0)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"MOVE_DISCARDED_MESSAGES_INTO" value:&stru_B9FC8 table:@"AccountPreferences"];
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    v8 = PSIDKey;
    [v7 setProperty:@"MFArchiveMessagesGroupSpecifierID" forKey:PSIDKey];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v86 addObject:v7];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"DELETED_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v12 = PSValueKey;
    [v11 setProperty:&__kCFBooleanFalse forKey:PSValueKey];
    [v11 setProperty:@"MFArchiveMessagesTrashMailboxSpecifierID" forKey:v8];
    v13 = MFMailAccountArchive;
    v14 = PSKeyNameKey;
    [v11 setProperty:MFMailAccountArchive forKey:PSKeyNameKey];
    [v86 addObject:v11];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ARCHIVE_MAILBOX" value:&stru_B9FC8 table:@"AccountPreferences"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setProperty:&__kCFBooleanTrue forKey:v12];
    [v17 setProperty:@"MFArchiveMessagesArchiveMailboxSpecifierID" forKey:v8];
    [v17 setProperty:v13 forKey:v14];
    [v86 addObject:v17];
  }

  if ((v82 & 0x10) != 0)
  {
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"DELETED_MESSAGES_GROUP" value:&stru_B9FC8 table:@"AccountPreferences"];
    v20 = [PSSpecifier groupSpecifierWithName:v19];
    [v86 addObject:v20];

    v88 = 0;
    v89 = 0;
    v87 = 0;
    [self getRemoveOptionTitles:&v89 values:&v88 defaultValue:&v87];
    v21 = v89;
    v22 = v88;
    v23 = v87;
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"REMOVE_FROM_TRASH" value:&stru_B9FC8 table:@"AccountPreferences"];
    v26 = objc_opt_class();
    v27 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v21, @"titles", kCFBooleanFalse, @"disableForManagedAccounts", 0];
    v28 = _ConfigurePSSpecifier(v86, v25, 0, "setAccountProperty:withSpecifier:", "accountPropertyWithSpecifier:", 0, 0, v26, 2, 0, v27, MFMailAccountNumberOfDaysToKeepTrash, v22);

    lastObject = [v86 lastObject];
    [lastObject setProperty:v23 forKey:PSDefaultValueKey];
  }

  if (((v82 & 3) != 0) | isSSLEditable & 1)
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"INCOMING_SETTINGS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v32 = [PSSpecifier groupSpecifierWithName:v31];
    [v86 addObject:v32];

    if (isSSLEditable)
    {
      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"USE_SSL" value:&stru_B9FC8 table:@"AccountPreferences"];
      v35 = _ConfigureBooleanPSSpecifier(v86, v34, 0, "setSSLSetting:withSpecifier:", "accountPropertyWithSpecifier:", 0, 0, 0, 6, 0, 0, MailAccountSSLEnabled);

      v36 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanTrue, @"disableForManagedAccounts", 0];
      [v35 setUserInfo:v36];
    }

    if (v82)
    {
      v37 = [NSBundle bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"AUTHENTICATION" value:&stru_B9FC8 table:@"AccountPreferences"];
      v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

      [v39 setProperty:@"authSchemeValuesForSpecifier:" forKey:PSValuesDataSourceKey];
      [v39 setProperty:@"authSchemeTitlesForSpecifier:" forKey:PSTitlesDataSourceKey];
      [v39 setProperty:MFMailAccountAuthenticationScheme forKey:PSKeyNameKey];
      v40 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanTrue, @"disableForManagedAccounts", 0];
      [v39 setUserInfo:v40];

      [v86 addObject:v39];
    }

    if ((v82 & 2) != 0)
    {
      v41 = [NSBundle bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"IMAP_PATH_PREFIX" value:&stru_B9FC8 table:@"AccountPreferences"];
      v43 = [PSTextFieldSpecifier preferenceSpecifierNamed:v42 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

      [v43 setKeyboardType:1 autoCaps:0 autoCorrection:1];
      [v43 setPlaceholder:@"/"];
      [v43 setProperty:IMAPServerPathPrefix forKey:PSKeyNameKey];
      v44 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanTrue, @"disableForManagedAccounts", 0];
      [v43 setUserInfo:v44];

      [v86 addObject:v43];
    }

    if ((v82 & 4) != 0)
    {
      v81 = [NSBundle bundleForClass:objc_opt_class()];
      v83 = [v81 localizedStringForKey:@"DELETE_MESSAGES_INTERVAL" value:&stru_B9FC8 table:@"AccountPreferences"];
      v45 = objc_opt_class();
      v80 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [v80 localizedStringForKey:@"NEVER" value:&stru_B9FC8 table:@"AccountPreferences"];
      v47 = [NSBundle bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"7_DAYS" value:&stru_B9FC8 table:@"AccountPreferences"];
      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"AFTER_DELETE" value:&stru_B9FC8 table:@"AccountPreferences"];
      v51 = [NSArray arrayWithObjects:v46, v48, v50, 0];
      v52 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v51, @"titles", 0];
      v95[0] = MF_POPAccountNeverDeleteMessagesKey;
      v95[1] = MF_POPAccountDeleteMessagesAfterIntervalKey;
      v95[2] = MF_POPAccountDeleteMessagesWhenTransferredOutOfInboxKey;
      v53 = [NSArray arrayWithObjects:v95 count:3];
      v54 = _ConfigurePSSpecifier(v86, v83, 0, "setAccountProperty:withSpecifier:", "accountPropertyWithSpecifier:", 0, 0, v45, 2, 0, v52, @"POPDeleteIntervalKey", v53);

      v55 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanFalse, @"disableForManagedAccounts", 0];
      [v54 setUserInfo:v55];

      [v54 setProperty:MF_POPAccountDeletionPolicy forKey:PSKeyNameKey];
    }

    v56 = [NSBundle bundleForClass:objc_opt_class()];
    v57 = [v56 localizedStringForKey:@"SERVER_PORT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v58 = [PSTextFieldSpecifier preferenceSpecifierNamed:v57 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

    [v58 setKeyboardType:4 autoCaps:0 autoCorrection:1];
    [v58 setProperty:MailAccountPortNumber forKey:PSKeyNameKey];
    v59 = [NSDictionary dictionaryWithObjectsAndKeys:kCFBooleanTrue, @"disableForManagedAccounts", 0];
    [v58 setUserInfo:v59];

    [v58 setProperty:@"SERVER_PORT" forKey:PSIDKey];
    [v86 addObject:v58];
  }

  v60 = [NSBundle bundleForClass:objc_opt_class()];
  v61 = [v60 localizedStringForKey:@"SMIME_PREFS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v62 = [PSSpecifier groupSpecifierWithName:v61];
  [v86 addObject:v62];

  v63 = [NSBundle bundleForClass:objc_opt_class()];
  v64 = [v63 localizedStringForKey:@"NO" value:&stru_B9FC8 table:@"AccountPreferences"];
  v94[0] = v64;
  v65 = [NSBundle bundleForClass:objc_opt_class()];
  v66 = [v65 localizedStringForKey:@"YES" value:&stru_B9FC8 table:@"AccountPreferences"];
  v94[1] = v66;
  v84 = [NSArray arrayWithObjects:v94 count:2];

  v67 = [NSBundle bundleForClass:objc_opt_class()];
  v68 = [v67 localizedStringForKey:@"ENABLE_SIGNING" value:&stru_B9FC8 table:@"AccountPreferences"];
  v69 = [PSSpecifier preferenceSpecifierNamed:v68 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  v70 = MFMailAccountSigningEnabled;
  v71 = PSKeyNameKey;
  [v69 setObject:MFMailAccountSigningEnabled forKeyedSubscript:PSKeyNameKey];
  v72 = PSIDKey;
  [v69 setObject:v70 forKeyedSubscript:PSIDKey];
  [v69 setValues:&off_C0530 titles:v84];
  v92[0] = @"ExistingMessageAccount";
  v92[1] = @"disableForManagedAccounts";
  v93[0] = self;
  v93[1] = &__kCFBooleanFalse;
  v73 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
  [v69 setUserInfo:v73];

  [v86 addObject:v69];
  v74 = [NSBundle bundleForClass:objc_opt_class()];
  v75 = [v74 localizedStringForKey:@"ENABLE_ENCRYPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
  v76 = [PSSpecifier preferenceSpecifierNamed:v75 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  v77 = MFMailAccountEncryptionEnabled;
  [v76 setObject:MFMailAccountEncryptionEnabled forKeyedSubscript:v71];
  [v76 setObject:v77 forKeyedSubscript:v72];
  [v76 setValues:&off_C0530 titles:v84];
  v90[0] = @"ExistingMessageAccount";
  v90[1] = @"disableForManagedAccounts";
  v91[0] = self;
  v91[1] = &__kCFBooleanFalse;
  v78 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
  [v76 setUserInfo:v78];

  [v86 addObject:v76];

  return v86;
}

+ (id)advancedSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  v5 = qword_D6420;
  if (!qword_D6420)
  {
    v5 = objc_opt_class();
    qword_D6420 = v5;
  }

  if (v5 != objc_opt_class())
  {
    v6 = qword_D6418;
    qword_D6418 = 0;

    qword_D6420 = objc_opt_class();
  }

  v7 = qword_D6418;
  if (!qword_D6418)
  {
    advancedSpecifiersOptions = [self advancedSpecifiersOptions];
    if (specifiersCopy)
    {
      v9 = advancedSpecifiersOptions | 8;
    }

    else
    {
      v9 = advancedSpecifiersOptions;
    }

    v10 = [self advancedSpecifiersWithOptions:v9];
    v11 = qword_D6418;
    qword_D6418 = v10;

    v7 = qword_D6418;
  }

  return v7;
}

- (id)advancedSpecifiers
{
  v3 = [objc_opt_class() advancedSpecifiers:{-[MailAccount isManaged](self, "isManaged")}];
  v4 = [v3 specifierForID:managedExplanationText];
  if (v4)
  {
    managedAccountFooterText = [(MailAccount *)self managedAccountFooterText];
    [v4 setName:managedAccountFooterText];
  }

  return v3;
}

+ (id)detailedSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  v5 = +[NSMutableArray array];
  v6 = +[PSSpecifier emptyGroupSpecifier];
  [v5 addObject:v6];

  v31 = objc_alloc_init(NSMutableDictionary);
  [v31 setObject:? forKey:?];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ENABLE_THIS_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = _ConfigureBooleanPSSpecifier(v5, v8, 0, "setAccountProperty:withSpecifier:", "accountPropertyWithSpecifier:", 0, 0, 0, 6, 0, v31, @"MailAccountIsActive");

  displayedAccountTypeString = [self displayedAccountTypeString];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ACCOUNT_INFORMATION" value:&stru_B9FC8 table:@"AccountPreferences"];

  v30 = v11;
  v29 = [[NSString alloc] initWithFormat:v11, displayedAccountTypeString];
  v12 = [PSSpecifier groupSpecifierWithName:v29];
  v13 = PSIDKey;
  [v12 setProperty:@"RegionalAccountInformationKey" forKey:PSIDKey];
  if ([objc_opt_class() aliasesAreEditable])
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DEFAULT_EMAIL_EXPLANATION" value:&stru_B9FC8 table:@"AccountPreferences"];

    v16 = [NSString stringWithFormat:v15, displayedAccountTypeString];
    [v12 setProperty:v16 forKey:PSFooterTextGroupKey];
  }

  [v5 addObject:v12];
  v17 = [self primarySpecifiers:specifiersCopy];
  [v5 addObjectsFromArray:v17];

  v18 = +[PSSpecifier emptyGroupSpecifier];
  [v5 addObject:v18];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"ADVANCED" value:&stru_B9FC8 table:@"AccountPreferences"];
  v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v21 setProperty:@"ADVANCED_SPECIFIER_KEY" forKey:v13];
  v22 = objc_alloc_init(NSMutableDictionary);
  [v22 setObject:kCFBooleanTrue forKey:@"disableForModificationRestrictions"];
  [v21 setUserInfo:v22];
  [v5 addObject:v21];
  if (specifiersCopy)
  {
    v23 = 0;
    [v18 setProperty:managedExplanationText forKey:v13];
  }

  else
  {
    v24 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v24];

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v23 = [PSSpecifier deleteButtonSpecifierWithName:v26 target:0 action:"deleteAccount"];

    [v23 setProperty:@"DELETE_ACCOUNT" forKey:v13];
    v27 = objc_alloc_init(NSMutableDictionary);

    [v27 setObject:kCFBooleanTrue forKey:@"disableForModificationRestrictions"];
    [v23 setUserInfo:v27];
    v22 = v27;
    [v5 addObject:v23];
  }

  return v5;
}

- (id)detailedSpecifiers
{
  v46 = +[NSMutableArray array];
  v38 = [objc_opt_class() detailedSpecifiers:{-[MailAccount isManaged](self, "isManaged")}];
  [v38 makeObjectsPerformSelector:? withObject:?];
  objectEnumerator = [v38 objectEnumerator];
  v45 = [(MailAccount *)self accountPropertyForKey:@"RegionalDisplayName"];
  v42 = [(MailAccount *)self accountPropertyForKey:@"PlaceholderAddress"];
  v2 = 0;
  v43 = MFMailAccountDescription;
  v44 = MailAccountEmailAddresses;
  v3 = PSKeyNameKey;
  v4 = PSEnabledKey;
  v51 = PSFooterTextGroupKey;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v5 = [NSMutableDictionary alloc];
    userInfo = [nextObject userInfo];
    v49 = [v5 initWithDictionary:userInfo];

    [v49 setObject:self forKey:@"ExistingMessageAccount"];
    [nextObject setUserInfo:v49];
    identifier = [nextObject identifier];
    LODWORD(v5) = [identifier isEqualToString:managedExplanationText];

    if (v5)
    {
      managedAccountFooterText = [(MailAccount *)self managedAccountFooterText];
      [nextObject setProperty:managedAccountFooterText forKey:v51];
      goto LABEL_11;
    }

    if (v45)
    {
      identifier2 = [nextObject identifier];
      v10 = [identifier2 isEqualToString:@"RegionalAccountInformationKey"];

      if (v10)
      {
        v11 = [NSBundle bundleForClass:objc_opt_class()];
        managedAccountFooterText = [v11 localizedStringForKey:@"ACCOUNT_INFORMATION" value:&stru_B9FC8 table:@"AccountPreferences"];

        v12 = [NSString stringWithFormat:managedAccountFooterText, v45];
        [nextObject setName:v12];
        goto LABEL_10;
      }

      identifier3 = [nextObject identifier];
      v14 = [identifier3 isEqualToString:v43];

      if (v14)
      {
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        managedAccountFooterText = [v15 localizedStringForKey:@"GENERIC_ACCOUNT_DESCRIPTION_PLACEHOLDER_FORMAT" value:&stru_B9FC8 table:@"AccountPreferences"];

        v12 = [NSString stringWithFormat:managedAccountFooterText, v45];
        [nextObject setPlaceholder:v12];
LABEL_10:

LABEL_11:
LABEL_12:
        [v46 addObject:nextObject];
        goto LABEL_13;
      }
    }

    identifier4 = [nextObject identifier];
    v17 = [identifier4 isEqualToString:v44];

    if (!v17)
    {
      goto LABEL_12;
    }

    if (![objc_opt_class() aliasesAreEditable])
    {
      if (v42)
      {
        [nextObject setPlaceholder:v42];
      }

      goto LABEL_12;
    }

    [(MailAccount *)self invalidateEmailAliases];
    [(MailAccount *)self updateEmailAliasesIfNeeded];
    emailAddressesAndAliases = [(MailAccount *)self emailAddressesAndAliases];
    if ([emailAddressesAndAliases count] < 2)
    {
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
      v39 = [PSTextFieldSpecifier preferenceSpecifierNamed:v20 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

      [v39 setKeyboardType:7 autoCaps:0 autoCorrection:1];
      [v39 setProperty:v44 forKey:v3];
      [v39 setProperty:@"NO" forKey:v4];
      v62 = v39;
      v18 = [NSArray arrayWithObjects:&v62 count:1];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = v38;
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v22)
      {
        v23 = *v57;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v57 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v56 + 1) + 8 * i);
            identifier5 = [v25 identifier];
            v27 = [identifier5 isEqualToString:@"RegionalAccountInformationKey"];

            if (v27)
            {
              [v25 removePropertyForKey:v51];
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v22);
      }
    }

    else
    {
      v18 = [objc_opt_class() aliasSpecifiersForEmails:emailAddressesAndAliases];
    }

    if (v18)
    {
      [v18 makeObjectsPerformSelector:"setTarget:" withObject:self];
      v40 = v18;
      defaultEmailAddress = [(MailAccount *)self defaultEmailAddress];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v29 = v18;
      v30 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v30)
      {
        v31 = *v53;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v53 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v52 + 1) + 8 * j);
            v34 = [v33 propertyForKey:v3];
            v35 = [v34 isEqualToString:defaultEmailAddress];

            if (v35)
            {
              v36 = [NSNumber numberWithBool:0];
              [v33 setProperty:v36 forKey:v4];
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v30);
      }

      [v46 addObjectsFromArray:v29];
      v18 = v40;
    }

LABEL_13:
    v2 = nextObject;
  }

  return v46;
}

+ (id)firstSetupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([self setupIsAutomated])
  {
    emailAddressHostPart = [self emailAddressHostPart];
    descriptionPlaceholder = [self descriptionPlaceholder];
    v6 = [self copyShortFormForHost:emailAddressHostPart descriptionPlaceholder:descriptionPlaceholder addressIsEditable:1];
    [v3 addObjectsFromArray:v6];

    helpTitle = [self helpTitle];
    helpURL = [self helpURL];
    v9 = helpURL;
    if (helpTitle && helpURL)
    {
      v10 = +[PSSpecifier emptyGroupSpecifier];
      [v10 setProperty:@"AccountLinkButtonView" forKey:PSFooterCellClassGroupKey];
      [v10 setProperty:helpTitle forKey:@"accountLinkButtonTitle"];
      [v10 setProperty:v9 forKey:@"accountLinkButtonURL"];
      LODWORD(v11) = 1125515264;
      v12 = [NSNumber numberWithFloat:v11];
      [v10 setProperty:v12 forKey:@"accountLinkButtonViewHeight"];

      [v3 addObject:v10];
    }
  }

  else
  {
    emailAddressHostPart = [NSArray arrayWithObjects:@"IMAP", @"POP", 0];
    descriptionPlaceholder = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:"setChosenType:withSpecifier:" get:"chosenType:" detail:0 cell:9 edit:0];
    [descriptionPlaceholder setValues:emailAddressHostPart];
    [v3 addObject:descriptionPlaceholder];
    v13 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v13];

    v14 = [self _accountDescriptionSpecifiersForExistingAccount:0];
    [v3 addObjectsFromArray:v14];

    _incomingSpecifiers = [self _incomingSpecifiers];
    [v3 addObjectsFromArray:_incomingSpecifiers];

    helpTitle = +[AccountPSOutgoingDetailController outgoingGroupSpecifiers];
    [v3 addObjectsFromArray:helpTitle];
  }

  return v3;
}

+ (id)easySetupSpecifiersWithPlaceholderAddress:(id)address accountName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  if (!addressCopy)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    addressCopy = [v5 localizedStringForKey:@"GENERIC_ADDRESS_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  v31 = +[NSMutableArray array];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FULL_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [PSTextFieldSpecifier preferenceSpecifierNamed:v7 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v8 setKeyboardType:0 autoCaps:1 autoCorrection:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"JOHN_APPLESEED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v8 setPlaceholder:v10];

  v11 = PSKeyNameKey;
  [v8 setProperty:MailAccountFullUserName forKey:PSKeyNameKey];
  [v31 addObject:v8];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [PSTextFieldSpecifier preferenceSpecifierNamed:v13 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v14 setKeyboardType:7 autoCaps:0 autoCorrection:1];
  [v14 setPlaceholder:addressCopy];
  [v14 setProperty:MailAccountEmailAddresses forKey:v11];
  v15 = [NSDictionary dictionaryWithObject:@"YES" forKey:@"AccountPreferenceRequired"];
  [v14 setUserInfo:v15];

  [v31 addObject:v14];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"PASSWORD" value:&stru_B9FC8 table:@"AccountPreferences"];
  v18 = [PSTextFieldSpecifier preferenceSpecifierNamed:v17 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v18 setKeyboardType:1 autoCaps:0 autoCorrection:1];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"REQUIRED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v18 setPlaceholder:v20];

  [v18 setProperty:MailAccountPassword forKey:v11];
  v21 = [NSDictionary dictionaryWithObjectsAndKeys:@"YES", @"AccountPreferenceRequired", 0];
  [v18 setUserInfo:v21];

  *&v18[OBJC_IVAR___PSSpecifier_cellType] = 12;
  [v31 addObject:v18];
  [NSBundle bundleForClass:objc_opt_class()];
  if (nameCopy)
    v22 = {;
    v23 = [v22 localizedStringForKey:@"GENERIC_ACCOUNT_DESCRIPTION_PLACEHOLDER_FORMAT" value:&stru_B9FC8 table:@"AccountPreferences"];

    [NSString stringWithFormat:v23, nameCopy];
  }

  else
    v23 = {;
    [v23 localizedStringForKey:@"GENERIC_EMAIL_ACCOUNT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  }
  v24 = ;

  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
  v27 = [PSTextFieldSpecifier preferenceSpecifierNamed:v26 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v27 setKeyboardType:0 autoCaps:1 autoCorrection:0];
  [v27 setPlaceholder:v24];
  [v27 setProperty:MFMailAccountDescription forKey:v11];
  [v31 addObject:v27];

  return v31;
}

- (id)valueForSettingsInAccountPropertiesForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:MFMailAccountArchive])
  {
    shouldArchiveByDefault = [(MailAccount *)self shouldArchiveByDefault];
    v6 = &__kCFBooleanFalse;
    if (shouldArchiveByDefault)
    {
      v6 = &__kCFBooleanTrue;
    }

    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MailAccount;
    v7 = [(MailAccount *)&v10 valueForSettingsInAccountPropertiesForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

@end
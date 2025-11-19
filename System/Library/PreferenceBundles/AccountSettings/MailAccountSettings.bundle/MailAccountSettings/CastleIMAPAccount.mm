@interface CastleIMAPAccount
+ (id)aliasSpecifiersForEmails:(id)a3;
+ (id)copyShortFormForHost:(id)a3 descriptionPlaceholder:(id)a4 addressIsEditable:(BOOL)a5;
+ (id)descriptionPlaceholder;
+ (id)helpTitle;
+ (id)helpURL;
+ (id)log;
+ (id)userInfoForAccountTopLevelSpecifier;
- (BOOL)hasCustomDomain;
- (id)dataclassName;
@end

@implementation CastleIMAPAccount

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A4FC;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6438 != -1)
  {
    dispatch_once(&qword_D6438, block);
  }

  v2 = qword_D6430;

  return v2;
}

- (BOOL)hasCustomDomain
{
  v3 = [(CastleIMAPAccount *)self parentAccount];
  if (v3)
  {
    v4 = [(CastleIMAPAccount *)self parentAccount];
    v5 = [v4 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
    v6 = [v5 objectForKeyedSubscript:@"customDomainEnabled"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[CastleIMAPAccount log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CastleIMAPAccount *)self parentAccount];
    v11 = 134218240;
    v12 = v9;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Parent account: %p, Custom Domain enabled: %{BOOL}d", &v11, 0x12u);
  }

  return v7;
}

- (id)dataclassName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ICLOUD_MAIL_LABEL" value:&stru_B9FC8 table:@"AccountPreferences"];

  return v3;
}

+ (id)descriptionPlaceholder
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CASTLE_ACCOUNT_DESCRIPTION_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];

  return v3;
}

+ (id)helpTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CASTLE_ACCOUNT_HELP_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  return v3;
}

+ (id)helpURL
{
  if (+[UIDevice mf_isPadIdiom])
  {
    v2 = @"http://www.me.com/learn_more";
  }

  else
  {
    v2 = @"http://www.me.com/iphone_learn_more";
  }

  return [NSURL URLWithString:v2];
}

+ (id)userInfoForAccountTopLevelSpecifier
{
  v3 = NSStringFromClass(a1);
  v4 = [NSDictionary dictionaryWithObjectsAndKeys:a1, @"class", v3, @"chosenType", 0];

  return v4;
}

+ (id)aliasSpecifiersForEmails:(id)a3
{
  v3 = a3;
  v37 = +[NSMutableArray array];
  v4 = [v3 count];
  v5 = [v3 allKeys];
  v6 = [v5 sortedArrayUsingComparator:&stru_B8DB8];

  v38 = [v6 ef_map:&stru_B8DF8];
  v7 = objc_alloc_init(MFAddressPickerReformatter);
  [v7 setAddresses:v38];
  [v7 setAttributesDisabled:1];
  +[UIFont labelFontSize];
  [v7 setFontSize:?];
  v8 = +[UIDevice mf_isPadIdiom];
  v9 = 280.0;
  if (v8)
  {
    v9 = 460.0;
  }

  [v7 setMaximumWidth:v9];
  v10 = [[NSMutableArray alloc] initWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v12 = [v7 reformattedAddressStringAtIndex:i];
      [v10 addObject:v12];
    }
  }

  v13 = +[UIDevice mf_isPadIdiom];
  v14 = 190.0;
  if (v13)
  {
    v14 = 370.0;
  }

  [v7 setMaximumWidth:v14];
  v15 = [[NSMutableArray alloc] initWithCapacity:v4];
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      v17 = [v7 reformattedAddressStringAtIndex:j];
      [v15 addObject:v17];
    }
  }

  v36 = v15;
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v35 = [PSSpecifier preferenceSpecifierNamed:v19 target:0 set:"_setDefaultAlias:forSpecifier:" get:"_defaultAlias" detail:objc_opt_class() cell:2 edit:0];

  [v35 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v35 setValues:v38 titles:v10];
  [v37 addObject:v35];
  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v33 = v3;
  v21 = [v20 localizedStringForKey:@"ALLOW_SENDING_FROM" value:&stru_B9FC8 table:@"AccountPreferences"];
  v34 = [PSSpecifier groupSpecifierWithName:v21];

  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"ALIAS_SWITCH_EXPLANATION" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v34 setProperty:v23 forKey:PSFooterTextGroupKey];

  [v37 addObject:v34];
  if (v4)
  {
    v24 = 0;
    v25 = PSKeyNameKey;
    v26 = MFAliasPreferenceNameKey;
    do
    {
      v27 = [v36 objectAtIndex:v24];
      v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:0 set:"_enableAlias:forSpecifier:" get:"_isAliasEnabledForSpecifier:" detail:0 cell:6 edit:0];

      v29 = [v38 objectAtIndex:v24];
      [v28 setProperty:v29 forKey:v25];

      v30 = [v6 objectAtIndex:v24];
      v31 = [NSDictionary dictionaryWithObject:v30 forKey:v26];
      [v28 setUserInfo:v31];

      [v37 addObject:v28];
      ++v24;
    }

    while (v4 != v24);
  }

  return v37;
}

+ (id)copyShortFormForHost:(id)a3 descriptionPlaceholder:(id)a4 addressIsEditable:(BOOL)a5
{
  v6 = [[NSMutableArray alloc] initWithCapacity:3];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FULL_NAME" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:v8 target:0 set:"setAccountProperty:withSpecifier:" get:"accountPropertyWithSpecifier:" detail:0 cell:8 edit:0];

  [v9 setKeyboardType:0 autoCaps:1 autoCorrection:1];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"JOHN_APPLESEED" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v9 setPlaceholder:v11];

  [v9 setProperty:@"myFullName" forKey:PSBestGuesserKey];
  v12 = PSKeyNameKey;
  [v9 setProperty:MailAccountFullUserName forKey:PSKeyNameKey];
  [v6 addObject:v9];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:"_setDefaultAlias:forSpecifier:" get:"_getDefaultAlias:" detail:objc_opt_class() cell:2 edit:0];

  [v15 setProperty:MailAccountEmailAddresses forKey:v12];
  v16 = [[NSMutableDictionary alloc] initWithCapacity:3];
  [v16 setObject:@"YES" forKey:@"AccountPreferenceRequired"];
  [v16 setObject:kCFBooleanTrue forKey:@"disableForManagedAccounts"];
  v17 = [a1 editableSuffix];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [a1 editableSuffix];
    [v16 setObject:v19 forKey:@"UserEditableSuffix"];
  }

  [v15 setUserInfo:v16];
  [v6 addObject:v15];

  return v6;
}

@end
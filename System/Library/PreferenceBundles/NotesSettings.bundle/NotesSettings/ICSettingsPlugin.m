@interface ICSettingsPlugin
+ (NSString)localizedTitle;
- (BOOL)hasMigratedLocalAccountWithNotes;
- (BOOL)localAccountExists;
- (BOOL)localAccountHasNotes;
- (ICSettingsPlugin)initWithCoder:(id)a3;
- (ICSettingsPlugin)initWithNibName:(id)a3 bundle:(id)a4;
- (PSSystemPolicyForApp)systemPolicy;
- (id)_accountTitlesForSpecifier:(id)a3;
- (id)_accountValuesForSpecifier:(id)a3;
- (id)_accountsSpecifiers;
- (id)_appLinksSpecifiers;
- (id)_appPolicySpecifiers;
- (id)_defaultNotesAccountSyncId:(id)a3;
- (id)_getAccessNotesFromLockScreen:(id)a3;
- (id)_getLocalNotesEnabled:(id)a3;
- (id)_getMentionsShouldNotifyMe:(id)a3;
- (id)_getShouldAutoConvertToTag:(id)a3;
- (id)_getShouldResumeLastQuickNote:(id)a3;
- (id)_getShouldSavePhotosVideos:(id)a3;
- (id)_getShouldShowQuickNoteLinksBar:(id)a3;
- (id)_getShouldShowQuickNoteSuggestions:(id)a3;
- (id)_getSortCheckedItems:(id)a3;
- (id)_getUseDarkBackgroundsForNoteContent:(id)a3;
- (id)_heroPlacardSpecifiers;
- (id)_localAccountSpecifiers;
- (id)_lockscreenSpecifiers;
- (id)_mediaSpecifiers;
- (id)_mentionsSpecifiers;
- (id)_noteDefaultStyle:(id)a3;
- (id)_notePaperStyle:(id)a3;
- (id)_systemPaperSpecifiers;
- (id)_tagsSpecifiers;
- (id)_viewingSpecifiers;
- (id)accessNotesFromLockScreenSpecifier;
- (id)accountsSpecifier;
- (id)allAccountsIncludingThoseInHTMLNoteContext:(id)a3;
- (id)allowDarkBackgroundsSpecifier;
- (id)autoSortCheckedItemsSpecifier;
- (id)cornerGesturesSpecifier;
- (id)defaultAccountSpecifier;
- (id)defaultParagraphStyleSpecifier;
- (id)linesAndGridsSpecifier;
- (id)localAccount;
- (id)passwordSpecifier;
- (id)settingsBundle;
- (id)specifiers;
- (void)_setLocalNotesEnabled:(id)a3 withSpecifier:(id)a4;
- (void)_setMentionsShouldNotifyMe:(id)a3 withSpecifier:(id)a4;
- (void)_setNoteDefaultStyle:(id)a3 withSpecifier:(id)a4;
- (void)_setShouldAutoConvertToTag:(id)a3 withSpecifier:(id)a4;
- (void)_setShouldResumeLastQuickNote:(id)a3 withSpecifier:(id)a4;
- (void)_setShouldSavePhotosVideos:(id)a3 withSpecifier:(id)a4;
- (void)_setShouldShowQuickNoteLinksBar:(id)a3 withSpecifier:(id)a4;
- (void)_setShouldShowQuickNoteSuggestions:(id)a3 withSpecifier:(id)a4;
- (void)_setUseDarkBackgroundsForNoteContent:(id)a3 withSpecifier:(id)a4;
- (void)_showPaperStyleScreen:(id)a3;
- (void)_showPasswordScreen:(id)a3;
- (void)addLocalAccount;
- (void)dealloc;
- (void)deleteLocalAccount;
- (void)registerForTraitChanges;
@end

@implementation ICSettingsPlugin

- (ICSettingsPlugin)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICSettingsPlugin;
  v4 = [(ICSettingsPlugin *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"accountsDidChange" name:ICAccountsDidChangeNotification object:0];

    [(ICSettingsPlugin *)v4 registerForTraitChanges];
  }

  return v4;
}

- (ICSettingsPlugin)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICSettingsPlugin;
  v3 = [(ICSettingsPlugin *)&v6 initWithCoder:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"accountsDidChange" name:ICAccountsDidChangeNotification object:0];

    [(ICSettingsPlugin *)v3 registerForTraitChanges];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSettingsPlugin;
  [(ICSettingsPlugin *)&v4 dealloc];
}

- (void)registerForTraitChanges
{
  v4 = +[UITraitCollection ic_traitsAffectingSizeAndColor];
  v3 = [(ICSettingsPlugin *)self registerForTraitChanges:v4 withAction:"reloadSpecifiers"];
}

- (BOOL)localAccountExists
{
  v3 = [ICSettingsUtilities objectForKey:kICDefaultsKeyDidMigrateLocalAccount];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(ICSettingsPlugin *)self localAccount];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 didChooseToMigrate];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = objc_alloc_init(NoteContext);
    v8 = [v6 localAccount];
    v7 = v8 != 0;
  }

  return v7;
}

- (BOOL)localAccountHasNotes
{
  v3 = [ICSettingsUtilities objectForKey:kICDefaultsKeyDidMigrateLocalAccount];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(ICSettingsPlugin *)self localAccount];
    v6 = v5;
    v7 = v5 && [v5 didChooseToMigrate] && objc_msgSend(v6, "visibleNotesIncludingTrashCount") != 0;
  }

  else
  {
    v6 = objc_alloc_init(NoteContext);
    v8 = [v6 localAccount];
    if (v8)
    {
      v7 = [v6 countOfVisibleNotesInCollection:v8] != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)localAccount
{
  v2 = +[ICNoteContext sharedContext];
  [v2 refreshAll];
  v3 = [v2 managedObjectContext];
  v4 = [ICAccount localAccountInContext:v3];

  return v4;
}

- (void)deleteLocalAccount
{
  v5 = +[ICNoteContext sharedContext];
  v2 = [v5 managedObjectContext];
  v3 = [ICAccount localAccountInContext:v2];

  if (v3)
  {
    [ICAccount deleteAccount:v3];
    [v5 save];
  }

  [ICSettingsUtilities setObject:&__kCFBooleanTrue forKey:kICDefaultsKeyDidMigrateLocalAccount];
  v4 = [v5 crossProcessChangeCoordinator];
  [v4 postAccountDidChangeNotification];

  +[ICQuickNoteSessionSettings disableNotesOnLockScreenIfNecessary];
}

- (void)addLocalAccount
{
  v8 = +[ICNoteContext sharedContext];
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];
  v4 = [ICAccount localAccountInContext:v3];

  if (!v4)
  {
    v5 = +[ICNoteContext sharedContext];
    v6 = [v5 managedObjectContext];

    [v8 save];
    v7 = [v8 crossProcessChangeCoordinator];
    [v7 postAccountDidChangeNotification];

    +[ICQuickNoteSessionSettings updateNotesOnLockScreenWhenAccountSupportingLockScreenAdded];
  }
}

- (BOOL)hasMigratedLocalAccountWithNotes
{
  v3 = [ICSettingsUtilities objectForKey:kICDefaultsKeyDidMigrateLocalAccount];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ICSettingsPlugin *)self localAccount];
  v6 = [v5 visibleNotesIncludingTrashCount] != 0;

  return v6;
}

- (id)allAccountsIncludingThoseInHTMLNoteContext:(id)a3
{
  v3 = a3;
  v4 = +[ICNoteContext sharedContext];
  v5 = +[NSMutableArray array];
  v6 = [v4 managedObjectContext];
  v7 = [ICAccount allActiveAccountsInContext:v6];

  if ([v7 count])
  {
    [v5 addObjectsFromArray:v7];
  }

  v8 = [v3 allAccounts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (v13 && ([*(*(&v16 + 1) + 8 * i) didChooseToMigrate] & 1) == 0)
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v5 copy];

  return v14;
}

- (PSSystemPolicyForApp)systemPolicy
{
  systemPolicy = self->_systemPolicy;
  if (!systemPolicy)
  {
    v4 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:ICSettingsBundleID()];
    v5 = self->_systemPolicy;
    self->_systemPolicy = v4;

    [(PSSystemPolicyForApp *)self->_systemPolicy setDelegate:self];
    systemPolicy = self->_systemPolicy;
  }

  return systemPolicy;
}

- (id)settingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)specifiers
{
  if ((+[ICNoteContext hasSharedContext]& 1) != 0)
  {
    v3 = [(ICSettingsPlugin *)self persistentStoreURL];
    v4 = +[ICPaths persistentStoreURL];
    v5 = [v3 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v6 = +[ICNoteContext sharedContext];
      [v6 clearPersistentContainer];

      v7 = +[ICNoteContext sharedContext];
      [v7 setupCrossProcessChangeCoordinator];

      v8 = +[ICNoteContext sharedContext];
      [v8 loadAdditionalPersistentStores];

      v9 = +[ICPaths persistentStoreURL];
      [(ICSettingsPlugin *)self setPersistentStoreURL:v9];
    }
  }

  else
  {
    v10 = +[AccountUtilities sharedAccountUtilities];
    [v10 startKeepingAccountInfosUpToDate];

    [ICPluginUtilities setupNoteContextWithOptions:1573396];
  }

  v11 = +[ICNoteContext sharedContext];

  if (!v11)
  {
    [ICAssert handleFailedAssertWithCondition:"((ICNoteContext.sharedContext) != nil)" functionName:"[ICSettingsPlugin specifiers]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "ICNoteContext.sharedContext"];
  }

  v12 = +[NSMutableArray array];
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v13 = [(ICSettingsPlugin *)self _heroPlacardSpecifiers];
    [v12 addObjectsFromArray:v13];
  }

  v14 = [(ICSettingsPlugin *)self _appPolicySpecifiers];
  [v12 addObjectsFromArray:v14];

  v15 = [(ICSettingsPlugin *)self _accountsSpecifiers];
  [v12 addObjectsFromArray:v15];

  v16 = [(ICSettingsPlugin *)self _localAccountSpecifiers];
  [v12 addObjectsFromArray:v16];

  v17 = [(ICSettingsPlugin *)self _mentionsSpecifiers];
  [v12 addObjectsFromArray:v17];

  v18 = [(ICSettingsPlugin *)self _viewingSpecifiers];
  [v12 addObjectsFromArray:v18];

  if (ICInternalSettingsIsSystemPaperEnabled() && +[ICDeviceSupport deviceSupportsSystemPaper])
  {
    if (+[UIDevice ic_isiPad])
    {
      v19 = [(ICSettingsPlugin *)self _systemPaperSpecifiers];
      [v12 addObjectsFromArray:v19];
    }

    v20 = [(ICSettingsPlugin *)self _appLinksSpecifiers];
    [v12 addObjectsFromArray:v20];
  }

  v21 = [(ICSettingsPlugin *)self _tagsSpecifiers];
  [v12 addObjectsFromArray:v21];

  v22 = [(ICSettingsPlugin *)self _mediaSpecifiers];
  [v12 addObjectsFromArray:v22];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v23 = [(ICSettingsPlugin *)self _lockscreenSpecifiers];
    [v12 addObjectsFromArray:v23];
  }

  [(ICSettingsPlugin *)self setSpecifiers:v12];

  return v12;
}

+ (NSString)localizedTitle
{
  v2 = [NSBundle bundleForClass:a1];
  v3 = [v2 localizedStringForKey:@"Notes" value:0 table:@"Settings"];

  return v3;
}

- (id)_heroPlacardSpecifiers
{
  v3 = [(ICSettingsPlugin *)self accountsSpecifier];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v4 setIdentifier:@"PLACARD_GROUP"];
  v5 = [objc_opt_class() localizedTitle];
  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v6 localizedStringForKey:@"NOTES_SETTINGS_SUBTITLE" value:0 table:@"Settings"];

  v8 = [(ICSettingsPlugin *)self traitCollection];
  v9 = [v8 pe_isSettingsFeatureDescriptionCellSupported];

  if (v9)
  {
    v10 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v10 setIdentifier:@"PLACARD"];
    [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v10 setProperty:v7 forKey:PSTableCellSubtitleTextKey];
    [v10 setProperty:@"com.apple.mobilenotes" forKey:PSLazyIconAppID];
    v11 = [NSArray arrayWithObjects:v4, v10, v3, 0];
  }

  else
  {
    v11 = [NSArray arrayWithObjects:v4, v3, 0];
  }

  return v11;
}

- (id)accountsSpecifier
{
  v3 = [(ICSettingsPlugin *)self systemPolicy];
  v4 = [v3 specifiersForPolicyOptions:0x8000000 force:0];

  v5 = [v4 specifierForID:@"ACCOUNTS"];
  if (v5)
  {
    v6 = v5;
    v7 = [(ICSettingsPlugin *)self settingsBundle];
    v8 = [v7 localizedStringForKey:@"NOTES_ACCOUNTS" value:@"Notes Accounts" table:@"Settings"];
    [v6 setName:v8];
  }

  else
  {
    v6 = [v4 specifierForID:@"ADD_ACCOUNT"];
  }

  [v6 setIdentifier:@"ACCOUNTS"];

  return v6;
}

- (id)_appPolicySpecifiers
{
  v3 = +[UIDevice ic_isVision];
  v4 = [(ICSettingsPlugin *)self systemPolicy];
  v5 = v4;
  if (v3)
  {
    v6 = 142606337;
  }

  else
  {
    v6 = 41943041;
  }

  v7 = [v4 specifiersForPolicyOptions:v6 force:0];

  return v7;
}

- (id)_accountsSpecifiers
{
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 currentUser];

  if ([v4 userType] == &dword_0 + 1)
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"ACCOUNTS_GROUP"];
    v7 = [(ICSettingsPlugin *)self settingsBundle];
    v8 = [v7 localizedStringForKey:@"DEFAULT_NOTES_ACCOUNT_EXPLANATION" value:@"Notes created outside of a specific account table:{such as when using Siri, are placed in this account.", @"Settings"}];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    v9 = [(ICSettingsPlugin *)self defaultAccountSpecifier];
    v19[0] = v6;
    v19[1] = v9;
    v10 = [NSArray arrayWithObjects:v19 count:2];
    v5 = [&__NSArray0__struct arrayByAddingObjectsFromArray:v10];
  }

  if ([v4 userType] != &dword_0 + 1)
  {
    v11 = +[PSSpecifier emptyGroupSpecifier];
    v12 = [(ICSettingsPlugin *)self passwordSpecifier];
    v18[0] = v11;
    v18[1] = v12;
    v13 = [NSArray arrayWithObjects:v18 count:2];
    v14 = [v5 arrayByAddingObjectsFromArray:v13];

    v15 = [(ICSettingsPlugin *)self settingsBundle];
    v16 = [v15 localizedStringForKey:@"PASSWORD_EXPLANATION" value:@"Lock important notes using end-to-end encryption." table:@"Settings"];
    [v11 setProperty:v16 forKey:PSFooterTextGroupKey];

    v5 = v14;
  }

  return v5;
}

- (id)defaultAccountSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@" " value:@"Default Account" table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"_setDefaultNotesAccountSyncId:withSpecifier:" get:"_defaultNotesAccountSyncId:" detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:ICDefaultAccountPrefIdentifier];
  v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"DefaultNotesAccount", @"key", 0];
  [v5 setUserInfo:v6];

  [v5 setProperty:@"_accountValuesForSpecifier:" forKey:PSValuesDataSourceKey];
  [v5 setProperty:@"_accountTitlesForSpecifier:" forKey:PSTitlesDataSourceKey];

  return v5;
}

- (id)passwordSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"PASSWORD_SETTINGS" value:@"Password" table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:ICPasswordPrefIdentifier];
  v8 = &off_1EFE0;
  v9 = &stru_1E010;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v5 setTitleDictionary:v6];

  [v5 setButtonAction:"_showPasswordScreen:"];

  return v5;
}

- (id)_mentionsSpecifiers
{
  v3 = +[PSSpecifier emptyGroupSpecifier];
  v4 = [(ICSettingsPlugin *)self settingsBundle];
  v5 = [v4 localizedStringForKey:@"MENTIONS_SHOULD_NOTIFY_ME_EXPLANATION" value:@"Receive notifications on this device when your name is mentioned in shared notes." table:@"Settings"];
  [v3 setProperty:v5 forKey:PSFooterTextGroupKey];

  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v6 localizedStringForKey:@"MENTIONS_SHOULD_NOTIFY_ME_PREF" value:@"Mention Notifications" table:@"Settings"];

  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setMentionsShouldNotifyMe:withSpecifier:" get:"_getMentionsShouldNotifyMe:" detail:0 cell:6 edit:0];
  [v8 setIdentifier:ICMentionNotificationsPrefIdentifier];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ICMentionsShouldNotifyMeDefaultsKey", @"key", 0];
  [v8 setUserInfo:v9];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v12[0] = v3;
  v12[1] = v8;
  v10 = [NSArray arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_localAccountSpecifiers
{
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 currentUser];

  if ([v4 userType] == &dword_0 + 1 && !objc_msgSend(v4, "isTransientUser"))
  {
    v20 = &__NSArray0__struct;
  }

  else
  {
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = [(ICSettingsPlugin *)self settingsBundle];
    v7 = [v6 localizedStringForKey:@"DEFAULT_LOCAL_NOTES_PREF_DESC" value:@"Using an “%@” account allows you to store notes on this device. Your other notes won’t be affected." table:@"Settings"];

    v8 = [(ICSettingsPlugin *)self localAccountName];
    v9 = [NSString localizedStringWithFormat:v7, v8];
    [v5 setProperty:v9 forKey:PSFooterTextGroupKey];

    v10 = +[ICAccountUtilities sharedInstance];
    v11 = [v10 hasSyncingAccount];

    v12 = [(ICSettingsPlugin *)self settingsBundle];
    v13 = [v12 localizedStringForKey:@"DEFAULT_LOCAL_NOTES_PREF" value:@"“%@” Account" table:@"Settings"];

    v14 = [(ICSettingsPlugin *)self localAccountName];
    v15 = [NSString localizedStringWithFormat:v13, v14];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"_setLocalNotesEnabled:withSpecifier:" get:"_getLocalNotesEnabled:" detail:0 cell:6 edit:0];

    [v16 setIdentifier:ICLocalAccountPrefIdentifier];
    v17 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"LocalNotes", @"key", 0];
    [v16 setUserInfo:v17];

    v18 = [NSNumber numberWithBool:v11];
    [v16 setProperty:v18 forKey:PSEnabledKey];

    v22[0] = v5;
    v22[1] = v16;
    v19 = [NSArray arrayWithObjects:v22 count:2];
    v20 = [&__NSArray0__struct arrayByAddingObjectsFromArray:v19];
  }

  return v20;
}

- (id)_viewingSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[ICSettingsSpecifiers viewingGroupSpecifier];
  [v3 ic_addNonNilObject:v4];
  v5 = +[ICSettingsSpecifiers sortTypeAndDateHeaderSpecifiers];
  [v3 ic_addObjectsFromNonNilArray:v5];
  v6 = [(ICSettingsPlugin *)self defaultParagraphStyleSpecifier];
  v7 = [(ICSettingsPlugin *)self autoSortCheckedItemsSpecifier];
  v8 = [(ICSettingsPlugin *)self linesAndGridsSpecifier];
  v9 = [(ICSettingsPlugin *)self allowDarkBackgroundsSpecifier];
  v15[0] = v6;
  v15[1] = v7;
  v15[2] = v8;
  v10 = [NSArray arrayWithObjects:v15 count:3];
  [v3 ic_addObjectsFromNonNilArray:v10];

  v11 = [(ICSettingsPlugin *)self traitCollection];
  if ([v11 ic_isDark])
  {
    v12 = +[UIDevice ic_isVision];

    if ((v12 & 1) == 0)
    {
      [v3 ic_addNonNilObject:v9];
    }
  }

  else
  {
  }

  v13 = [v3 copy];

  return v13;
}

- (id)defaultParagraphStyleSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"NOTE_DEFAULT_STYLE" value:@"New Notes Start With" table:@"Settings"];
  v20 = self;
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"_setNoteDefaultStyle:withSpecifier:" get:"_noteDefaultStyle:" detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:ICDefaultStylePrefIdentifier];
  v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"TTTextControllerNoteDefaultNamedStyleKey", @"key", 0];
  v21 = v5;
  [v5 setUserInfo:v6];

  v7 = objc_alloc_init(NSMutableDictionary);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [&off_1EF38 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(&off_1EF38);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = +[ICTextStyle settingsDescriptionForNamedStyle:](ICTextStyle, "settingsDescriptionForNamedStyle:", [v12 unsignedIntegerValue]);
        if (v13)
        {
          [v7 setObject:v13 forKeyedSubscript:v12];
        }

        else
        {
          [ICAssert handleFailedAssertWithCondition:"title" functionName:"[ICSettingsPlugin defaultParagraphStyleSpecifier]" simulateCrash:1 showAlert:0 format:@"Failed to find title for namedStyle %@", v12];
        }
      }

      v9 = [&off_1EF38 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(a2);
  NSLog(@"[%@(%p) %@] values %@ titles %@ ", v14, v20, v15, &off_1EF38, v7);

  v16 = [&off_1EF38 copy];
  [v21 setValues:v16];

  v17 = [v7 copy];
  [v21 setTitleDictionary:v17];

  return v21;
}

- (id)autoSortCheckedItemsSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"SORT_CHECKED_ITEMS_SETTINGS" value:@"Sort Checked Items" table:@"Settings"];

  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v5 setIdentifier:ICSortCheckedItemsPrefIdentifier];
  *&v5[OBJC_IVAR___PSSpecifier_getter] = "_getSortCheckedItems:";

  return v5;
}

- (id)linesAndGridsSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"PAPER_STYLE_SETTINGS" value:@"Lines & Grids" table:@"Settings"];
  v21 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"_notePaperStyle:" detail:objc_opt_class() cell:2 edit:0];

  [v21 setIdentifier:ICPaperStylePrefIdentifier];
  [v21 setButtonAction:"_showPaperStyleScreen:"];
  v5 = [(ICSettingsPlugin *)self settingsBundle];
  v6 = [v5 localizedStringForKey:@"PAPER_STYLE_NONE" value:@"None" table:@"Settings"];

  v23[0] = &off_1F058;
  v23[1] = &off_1F070;
  v22 = v6;
  v24[0] = v6;
  v24[1] = v6;
  v23[2] = &off_1F088;
  v20 = [(ICSettingsPlugin *)self settingsBundle];
  v19 = [v20 localizedStringForKey:@"PAPER_STYLE_GRID_SMALL" value:@"Grid Small" table:@"Settings"];
  v24[2] = v19;
  v23[3] = &off_1F0A0;
  v18 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v18 localizedStringForKey:@"PAPER_STYLE_GRID_MEDIUM" value:@"Grid Medium" table:@"Settings"];
  v24[3] = v7;
  v23[4] = &off_1F0B8;
  v8 = [(ICSettingsPlugin *)self settingsBundle];
  v9 = [v8 localizedStringForKey:@"PAPER_STYLE_GRID_LARGE" value:@"Grid Large" table:@"Settings"];
  v24[4] = v9;
  v23[5] = &off_1F0D0;
  v10 = [(ICSettingsPlugin *)self settingsBundle];
  v11 = [v10 localizedStringForKey:@"PAPER_STYLE_LINES_SMALL" value:@"Lines Small" table:@"Settings"];
  v24[5] = v11;
  v23[6] = &off_1F0E8;
  v12 = [(ICSettingsPlugin *)self settingsBundle];
  v13 = [v12 localizedStringForKey:@"PAPER_STYLE_LINES_MEDIUM" value:@"Lines Medium" table:@"Settings"];
  v24[6] = v13;
  v23[7] = &off_1F100;
  v14 = [(ICSettingsPlugin *)self settingsBundle];
  v15 = [v14 localizedStringForKey:@"PAPER_STYLE_LINES_LARGE" value:@"Lines Large" table:@"Settings"];
  v24[7] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:8];

  [v21 setTitleDictionary:v16];

  return v21;
}

- (id)allowDarkBackgroundsSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"NOTE_CONTENT_BACKGROUNDS" value:@"Note Backgrounds" table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"_setUseDarkBackgroundsForNoteContent:withSpecifier:" get:"_getUseDarkBackgroundsForNoteContent:" detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:ICAllowDarkBackgroundsPrefIdentifier];
  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v6 localizedStringForKey:@"ALLOW_DARK_BACKGROUNDS" value:@"Dark" table:@"Settings"];

  v8 = [(ICSettingsPlugin *)self settingsBundle];
  v9 = [v8 localizedStringForKey:@"DISALLOW_DARK_BACKGROUNDS" value:@"Light" table:@"Settings"];

  v12[0] = &__kCFBooleanTrue;
  v12[1] = &__kCFBooleanFalse;
  v13[0] = v7;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v5 setValues:&off_1EF50];
  [v5 setTitleDictionary:v10];

  return v5;
}

- (id)_systemPaperSpecifiers
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"QUICK_NOTE_GROUP_TITLE" value:@"Quick Notes" table:@"Settings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v6 localizedStringForKey:@"QUICK_NOTES_RESUME_LAST_QUICK_NOTE_EXPLANATION" value:@"If enabled table:{resume last Quick Note instead of creating a new one.", @"Settings"}];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [(ICSettingsPlugin *)self cornerGesturesSpecifier];
  v9 = [(ICSettingsPlugin *)self settingsBundle];
  v10 = [v9 localizedStringForKey:@"SHOULD_RESUME_LAST_QUICK_NOTE_PREF" value:@"Resume Last Quick Note" table:@"Settings"];

  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"_setShouldResumeLastQuickNote:withSpecifier:" get:"_getShouldResumeLastQuickNote:" detail:0 cell:6 edit:0];
  [v11 setIdentifier:ICResumeLastQuickNotePrefIdentifier];
  [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v12 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ICShouldResumeLastQuickNoteDefaultsKey", @"key", 0];
  [v11 setUserInfo:v12];

  v15[0] = v5;
  v15[1] = v8;
  v15[2] = v11;
  v13 = [NSArray arrayWithObjects:v15 count:3];

  return v13;
}

- (id)cornerGesturesSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"CORNER_GESTURES" value:@"Corner Gestures" table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v5 setIdentifier:ICCornerGesturesPrefIdentifier];

  return v5;
}

- (id)_appLinksSpecifiers
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"APP_LINKS_GROUP_TITLE" value:@"App Links" table:@"Settings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [(ICSettingsPlugin *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = [(ICSettingsPlugin *)self settingsBundle];
  v9 = v8;
  if (v7)
  {
    if (v7 == &dword_4 + 2)
    {
      v10 = @"APP_LINKS_EXPLANATION_VISION";
      v11 = @"Only Quick Notes containing related links may be suggested when using your Vision Pro.";
    }

    else if (v7 == &dword_0 + 1)
    {
      v10 = @"APP_LINKS_EXPLANATION_IPAD";
      v11 = @"Only Quick Notes containing related links may be suggested when using your iPad.";
    }

    else
    {
      v10 = @"APP_LINKS_EXPLANATION_DEVICE";
      v11 = @"Only Quick Notes containing related links may be suggested when using your device.";
    }
  }

  else
  {
    v10 = @"APP_LINKS_EXPLANATION_IPHONE";
    v11 = @"Only Quick Notes containing related links may be suggested when using your iPhone.";
  }

  v12 = [v8 localizedStringForKey:v10 value:v11 table:@"Settings"];

  [v5 setProperty:v12 forKey:PSFooterTextGroupKey];
  v13 = [(ICSettingsPlugin *)self settingsBundle];
  v14 = [v13 localizedStringForKey:@"SHOULD_SHOW_LINK_BAR_QUICK_NOTE_PREF" value:@"Suggest App Link when Composing Quick Note" table:@"Settings"];

  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"_setShouldShowQuickNoteLinksBar:withSpecifier:" get:"_getShouldShowQuickNoteLinksBar:" detail:0 cell:6 edit:0];
  [v15 setIdentifier:ICShowQuickNoteLinksBarPrefIdentifier];
  v16 = PSAllowMultilineTitleKey;
  [v15 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v17 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ICShouldShowQuickNoteLinksBarDefaultsKey", @"key", 0];
  [v15 setUserInfo:v17];

  v18 = [(ICSettingsPlugin *)self settingsBundle];
  v19 = [v18 localizedStringForKey:@"SHOULD_SHOW_SUGGESTIONS_QUICK_NOTE_PREF" value:@"Suggest Notes with App Links" table:@"Settings"];

  v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"_setShouldShowQuickNoteSuggestions:withSpecifier:" get:"_getShouldShowQuickNoteSuggestions:" detail:0 cell:6 edit:0];
  [v20 setIdentifier:ICShowQuickNoteSuggestionsPrefIdentifier];
  [v20 setProperty:&__kCFBooleanTrue forKey:v16];
  v23[0] = v5;
  v23[1] = v15;
  v23[2] = v20;
  v21 = [NSArray arrayWithObjects:v23 count:3];

  return v21;
}

- (id)_tagsSpecifiers
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"TAGS_GROUP_TITLE" value:@"Tags" table:@"Settings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v6 localizedStringForKey:@"SHOULD_AUTO_SAVE_TO_TAG_EXPLANATION" value:@"Typing a space automatically converts #text to tag." table:@"Settings"];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [(ICSettingsPlugin *)self settingsBundle];
  v9 = [v8 localizedStringForKey:@"SHOULD_AUTO_CONVERT_TO_TAG_PREF" value:@"Auto Convert to Tag" table:@"Settings"];

  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setShouldAutoConvertToTag:withSpecifier:" get:"_getShouldAutoConvertToTag:" detail:0 cell:6 edit:0];
  [v10 setIdentifier:ICAutoConvertToTagPrefIdentifier];
  [v10 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ICHashtagsShouldAutoConvertToTagDefaultsKey", @"key", 0];
  [v10 setUserInfo:v11];

  v14[0] = v5;
  v14[1] = v10;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (id)_mediaSpecifiers
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"MEDIA_GROUP_TITLE" value:@"Media" table:@"Settings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = [v6 localizedStringForKey:@"SHOULD_SAVE_PHOTOS_VIDEOS_EXPLANATION" value:@"Save photos and videos taken in Notes to the Photos app." table:@"Settings"];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [(ICSettingsPlugin *)self settingsBundle];
  v9 = [v8 localizedStringForKey:@"SHOULD_SAVE_PHOTOS_VIDEOS_PREF" value:@"Save to Photos" table:@"Settings"];

  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setShouldSavePhotosVideos:withSpecifier:" get:"_getShouldSavePhotosVideos:" detail:0 cell:6 edit:0];
  [v10 setIdentifier:ICSavePhotosPrefIdentifier];
  v11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"ICShouldSavePhotosAndVideosToCameraRollKey", @"key", 0];
  [v10 setUserInfo:v11];

  v14[0] = v5;
  v14[1] = v10;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (id)_lockscreenSpecifiers
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"LOCKSCREEN_GROUP_TITLE" value:@"Lock Screen & Control Center" table:@"Settings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  LODWORD(v4) = MGGetBoolAnswer();
  v6 = [(ICSettingsPlugin *)self settingsBundle];
  v7 = v6;
  if (v4)
  {
    v8 = @"RESUME_TO_PREVIOUS_NOTE_EXPLANATION_WITH_PENCIL";
    v9 = @"Quickly create or resume notes by tapping anywhere on the Lock Screen with Apple Pencil, or pressing the Notes control in Control Center. You can configure Notes access from Control Center in Settings.";
  }

  else
  {
    v8 = @"RESUME_TO_PREVIOUS_NOTE_EXPLANATION_WITHOUT_PENCIL";
    v9 = @"Quickly create or resume notes by pressing the Notes control in Control Center. You can configure Notes access from Control Center in Settings.";
  }

  v10 = [v6 localizedStringForKey:v8 value:v9 table:@"Settings"];
  [v5 setProperty:v10 forKey:PSFooterTextGroupKey];

  v11 = [(ICSettingsPlugin *)self accessNotesFromLockScreenSpecifier];
  v14[0] = v5;
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];

  return v12;
}

- (id)accessNotesFromLockScreenSpecifier
{
  v3 = [(ICSettingsPlugin *)self settingsBundle];
  v4 = [v3 localizedStringForKey:@"ACCESS_NOTES_FROM_LOCK_SCREEN" value:@"Access Notes from Lock Screen" table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:ICAccessNotesFromLockScreenPrefIdentifier];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v6 = [(ICSettingsPlugin *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == &dword_0 + 1)
  {
    *&v5[OBJC_IVAR___PSSpecifier_getter] = "_getAccessNotesFromLockScreen:";
  }

  return v5;
}

- (id)_accountValuesForSpecifier:(id)a3
{
  v17 = objc_alloc_init(NoteContext);
  v3 = [(ICSettingsPlugin *)self allAccountsIncludingThoseInHTMLNoteContext:?];
  v4 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        v11 = ICDynamicCast();
        objc_opt_class();
        v12 = ICDynamicCast();
        if (v11 && [v11 accountType] != 3)
        {
          v13 = [v11 identifier];
        }

        else
        {
          if (!v12 || ![v12 accountType])
          {
            goto LABEL_14;
          }

          v13 = [v12 accountIdentifier];
        }

        v14 = v13;
        if (v13)
        {
          [v4 addObject:v13];
        }

LABEL_14:
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if (-[ICSettingsPlugin localAccountExists](self, "localAccountExists") || ![v4 count])
  {
    [v4 addObject:LegacyDeviceLocalAccountID];
  }

  return v4;
}

- (id)_accountTitlesForSpecifier:(id)a3
{
  v18 = objc_alloc_init(NoteContext);
  v3 = [(ICSettingsPlugin *)self allAccountsIncludingThoseInHTMLNoteContext:?];
  v4 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        v11 = ICDynamicCast();
        objc_opt_class();
        v12 = ICDynamicCast();
        if (v11 && [v11 accountType] != 3)
        {
          v13 = [v11 accountName];
        }

        else
        {
          if (!v12 || ![v12 accountType])
          {
            goto LABEL_14;
          }

          v13 = [v12 name];
        }

        v14 = v13;
        if (v13)
        {
          [v4 addObject:v13];
        }

LABEL_14:
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if (-[ICSettingsPlugin localAccountExists](self, "localAccountExists") || ![v4 count])
  {
    v15 = [ACUILocalization localizedTitleForLocalSourceOfDataclass:ACAccountDataclassNotes usedAtBeginningOfSentence:1];
    if (v15)
    {
      [v4 addObject:v15];
    }
  }

  return v4;
}

- (void)_showPasswordScreen:(id)a3
{
  v4 = +[ICNoteContext sharedContext];
  [v4 addOrDeleteLocalAccountIfNecessary];

  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 managedObjectContext];
  v13 = [ICAccount allActiveAccountsInContext:v6];

  if ([v13 count])
  {
    if ([v13 count] < 2)
    {
      v10 = [ICSettingsPasswordViewController alloc];
      v11 = [v13 firstObject];
      v12 = [v11 objectID];
      v7 = [(ICSettingsPasswordViewController *)v10 initWithAccountID:v12];
    }

    else
    {
      v7 = objc_alloc_init(ICSettingsAccountsPasswordViewController);
    }

    [(ICSettingsPlugin *)self showController:v7 animate:1];
  }

  else
  {
    v7 = +[ICAuthenticationAlert upgradeToLockNotesInfoAlert];
    v8 = [(ICSettingsPlugin *)self view];
    v9 = [v8 window];
    [(ICSettingsAccountsPasswordViewController *)v7 presentInWindow:v9 completionHandler:0];
  }
}

- (void)_showPaperStyleScreen:(id)a3
{
  v4 = [(ICSettingsPlugin *)self view];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom] == &dword_0 + 1;

  v17 = [[ICPaperStyleCollectionViewController alloc] initWithLargeIcons:v6 forPreferences:1];
  v7 = [(ICSettingsPlugin *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v17 view];
  [v16 setFrame:{v9, v11, v13, v15}];

  [(ICSettingsPlugin *)self showController:v17 animate:1];
  [(ICSettingsPlugin *)self ic_submitNavigationEventForIdentifier:ICPaperStylePrefIdentifier titleStringKey:@"PAPER_STYLE_SETTINGS" navigationComponents:&off_1EF68];
}

- (id)_defaultNotesAccountSyncId:(id)a3
{
  objc_opt_class();
  v3 = [ICSettingsUtilities objectForKey:@"DefaultNotesAccount"];
  v4 = ICCheckedDynamicCast();

  v5 = [[NoteContext alloc] initWithPrivateQueue];
  v6 = [ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:v5];
  objc_opt_class();
  v7 = ICDynamicCast();
  objc_opt_class();
  v8 = ICDynamicCast();
  v9 = v8;
  if (v7)
  {
    if ([v7 accountType] != 3)
    {
      v10 = [v7 identifier];
LABEL_8:
      v11 = v10;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v8)
  {
    if ([v8 accountType])
    {
      v10 = [v9 accountIdentifier];
      goto LABEL_8;
    }

LABEL_7:
    v10 = LegacyDeviceLocalAccountID;
    goto LABEL_8;
  }

  v13 = +[AccountUtilities sharedAccountUtilities];
  v11 = [v13 defaultStoreSyncIdWithDesiredSyncId:v4];

LABEL_9:

  return v11;
}

- (id)_getAccessNotesFromLockScreen:(id)a3
{
  v4 = +[ICQuickNoteSessionSettings showOnLockScreen];
  v5 = [(ICSettingsPlugin *)self settingsBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"ACCESS_FROM_LOCKSCREEN_ON";
    v8 = @"On";
  }

  else
  {
    v7 = @"ACCESS_FROM_LOCKSCREEN_OFF";
    v8 = @"Off";
  }

  v9 = [v5 localizedStringForKey:v7 value:v8 table:@"Settings"];

  return v9;
}

- (void)_setNoteDefaultStyle:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v6 = ICCheckedDynamicCast();

  v5 = v6;
  if (v6)
  {
    +[ICTextStyle setNoteDefaultNamedStyle:](ICTextStyle, "setNoteDefaultNamedStyle:", [v6 unsignedIntValue]);
    v5 = v6;
  }
}

- (id)_noteDefaultStyle:(id)a3
{
  v3 = +[ICTextStyle noteDefaultNamedStyle];

  return [NSNumber numberWithUnsignedInt:v3];
}

- (id)_getSortCheckedItems:(id)a3
{
  v4 = [ICSettingsUtilities BOOLForKey:@"ICChecklistAutoSortEnabledDefaultsKey"];
  v5 = [(ICSettingsPlugin *)self settingsBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"AUTO_SORT_CHECKLIST_ON";
    v8 = @"Automatically";
  }

  else
  {
    v7 = @"AUTO_SORT_CHECKLIST_OFF";
    v8 = @"Manually";
  }

  v9 = [v5 localizedStringForKey:v7 value:v8 table:@"Settings"];

  return v9;
}

- (id)_notePaperStyle:(id)a3
{
  v3 = [ICSettingsUtilities objectForKey:@"PaperStyle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &off_1F058;
  }

  v6 = v5;

  return v5;
}

- (id)_getLocalNotesEnabled:(id)a3
{
  objc_opt_class();
  v4 = [ICSettingsUtilities objectForKey:@"LocalNotes"];
  v5 = ICCheckedDynamicCast();

  v6 = +[ICAccountUtilities sharedInstance];
  v7 = [v6 hasSyncingAccount];

  if (([v5 BOOLValue] & 1) == 0 && (!v7 || -[ICSettingsPlugin hasMigratedLocalAccountWithNotes](self, "hasMigratedLocalAccountWithNotes")))
  {

    v5 = &__kCFBooleanTrue;
  }

  return v5;
}

- (void)_setLocalNotesEnabled:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = ICCheckedDynamicCast();
  if ([v6 BOOLValue])
  {
    [ICSettingsUtilities setObject:v5 forKey:@"LocalNotes"];
    v7 = [(ICSettingsPlugin *)self localAccount];
    if (!v7)
    {
      [(ICSettingsPlugin *)self addLocalAccount];
    }

    [(ICSettingsPlugin *)self accountsDidChange];
  }

  else if ([(ICSettingsPlugin *)self localAccountHasNotes])
  {
    v8 = [(ICSettingsPlugin *)self settingsBundle];
    v25 = [v8 localizedStringForKey:@"DELETE_LOCAL_NOTES_MESSAGE" value:@"Your “%@” account contains notes. You need to move or delete them before you can disable this account." table:@"Settings"];

    v9 = [(ICSettingsPlugin *)self settingsBundle];
    v10 = [v9 localizedStringForKey:@"DELETE_LOCAL_NOTES_TITLE" value:@"Delete Notes?" table:@"Settings"];
    v11 = [(ICSettingsPlugin *)self localAccountName];
    v12 = [NSString localizedStringWithFormat:v25, v11];
    v13 = [UIAlertController alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v14 = +[UIColor ICTintColor];
    v15 = [v13 view];
    [v15 setTintColor:v14];

    v16 = [(ICSettingsPlugin *)self settingsBundle];
    v17 = [v16 localizedStringForKey:@"GO_TO_NOTES_ACTION" value:@"Go To Notes" table:@"Settings"];
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:&stru_1C958];

    v19 = [(ICSettingsPlugin *)self settingsBundle];
    v20 = [v19 localizedStringForKey:@"DELETE_LOCAL_NOTES_ACTION" value:@"Delete Notes" table:@"Settings"];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_DA48;
    v26[3] = &unk_1C980;
    v26[4] = self;
    v27 = v5;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v26];

    v22 = [(ICSettingsPlugin *)self settingsBundle];
    v23 = [v22 localizedStringForKey:@"CANCEL_ACTION" value:@"Cancel" table:@"Settings"];
    v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];

    [v13 addAction:v18];
    [v13 addAction:v21];
    [v13 addAction:v24];
    [(ICSettingsPlugin *)self presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    [(ICSettingsPlugin *)self deleteLocalAccount];
    [ICSettingsUtilities setObject:v5 forKey:@"LocalNotes"];
    [(ICSettingsPlugin *)self accountsDidChange];
  }
}

- (void)_setUseDarkBackgroundsForNoteContent:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v6 = ICCheckedDynamicCast();

  v5 = v6;
  if (v6)
  {
    +[UITraitCollection setIc_alwaysShowLightContent:](UITraitCollection, "setIc_alwaysShowLightContent:", [v6 BOOLValue] ^ 1);
    v5 = v6;
  }
}

- (id)_getUseDarkBackgroundsForNoteContent:(id)a3
{
  v3 = +[UITraitCollection ic_alwaysShowLightContent]^ 1;

  return [NSNumber numberWithInt:v3];
}

- (void)_setShouldSavePhotosVideos:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  if (v4)
  {
    [ICSettingsUtilities setObject:v5 forKey:@"ICShouldSavePhotosAndVideosToCameraRollKey"];
  }
}

- (id)_getShouldSavePhotosVideos:(id)a3
{
  objc_opt_class();
  v3 = [ICSettingsUtilities objectForKey:@"ICShouldSavePhotosAndVideosToCameraRollKey"];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [NSNumber numberWithBool:0];
  }

  v6 = v5;

  return v6;
}

- (void)_setMentionsShouldNotifyMe:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v9 = ICCheckedDynamicCast();

  if (v9)
  {
    v5 = +[ICNoteContext sharedContext];
    v6 = [v5 managedObjectContext];
    v7 = [ICAccount defaultAccountInContext:v6];

    v8 = +[ICCloudNotificationsController sharedController];
    [v8 updateSubscriptionPreferenceForMentionNotifications:objc_msgSend(v9 forAccount:{"BOOLValue"), v7}];
  }
}

- (id)_getMentionsShouldNotifyMe:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [ICAccount defaultAccountInContext:v4];

  v6 = +[ICCloudNotificationsController sharedController];
  v7 = [v6 isSubscribedToMentionNotificationsForAccount:v5];

  v8 = [NSNumber numberWithBool:v7];

  return v8;
}

- (void)_setShouldAutoConvertToTag:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  if (v4)
  {
    [ICSettingsUtilities setObject:v5 forKey:@"ICHashtagsShouldAutoConvertToTagDefaultsKey"];
  }
}

- (id)_getShouldAutoConvertToTag:(id)a3
{
  v3 = +[ICHashtagController shouldAutoConvertToTag];

  return [NSNumber numberWithBool:v3];
}

- (void)_setShouldResumeLastQuickNote:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  if (v4)
  {
    [ICSettingsUtilities setObject:v5 forKey:@"ICShouldResumeLastQuickNoteDefaultsKey"];
  }
}

- (id)_getShouldResumeLastQuickNote:(id)a3
{
  objc_opt_class();
  v3 = [ICSettingsUtilities objectForKey:@"ICShouldResumeLastQuickNoteDefaultsKey"];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__kCFBooleanTrue;
  }

  return v5;
}

- (void)_setShouldShowQuickNoteLinksBar:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  if (v4)
  {
    [ICSettingsUtilities setObject:v6 forKey:@"ICShouldShowQuickNoteLinksBarDefaultsKey"];
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"ICShouldQuickNoteLinksBarDefaultsChangedNotification" object:0];
  }
}

- (id)_getShouldShowQuickNoteLinksBar:(id)a3
{
  objc_opt_class();
  v3 = [ICSettingsUtilities objectForKey:@"ICShouldShowQuickNoteLinksBarDefaultsKey"];
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__kCFBooleanTrue;
  }

  return v5;
}

- (void)_setShouldShowQuickNoteSuggestions:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v6 = ICCheckedDynamicCast();

  v5 = v6;
  if (v6)
  {
    +[SYDefaults setIndicatorCoverage:](SYDefaults, "setIndicatorCoverage:", [v6 BOOLValue]);
    v5 = v6;
  }
}

- (id)_getShouldShowQuickNoteSuggestions:(id)a3
{
  v3 = +[SYDefaults indicatorCoverage]== &dword_0 + 1;

  return [NSNumber numberWithBool:v3];
}

@end
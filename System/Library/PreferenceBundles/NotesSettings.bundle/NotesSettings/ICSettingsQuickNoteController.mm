@interface ICSettingsQuickNoteController
- (BOOL)stateIsSet:(unint64_t)set;
- (id)durationSpecifierNamed:(id)named duration:(int64_t)duration group:(id)group;
- (id)footerString;
- (id)settingsBundle;
- (id)specifiers;
- (id)stateSpecifierNamed:(id)named state:(unint64_t)state group:(id)group;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ICSettingsQuickNoteController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v56 = +[ICQuickNoteSessionSettings showOnLockScreen];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = PSIsRadioGroupKey;
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v3 addObject:v4];
  settingsBundle = [(ICSettingsQuickNoteController *)self settingsBundle];
  v7 = [settingsBundle localizedStringForKey:@"ACCESS_NOTES_FROM_LOCK_SCREEN_OFF" value:@"Off" table:@"Settings"];
  v8 = [(ICSettingsQuickNoteController *)self stateSpecifierNamed:v7 state:0 group:v4];

  [v3 addObject:v8];
  settingsBundle2 = [(ICSettingsQuickNoteController *)self settingsBundle];
  v10 = [settingsBundle2 localizedStringForKey:@"ALWAYS_CREATE_NEW_NOTE" value:@"Always Create New Note" table:@"Settings"];
  v11 = [(ICSettingsQuickNoteController *)self stateSpecifierNamed:v10 state:1 group:v4];

  v58 = v11;
  [v3 addObject:v11];
  settingsBundle3 = [(ICSettingsQuickNoteController *)self settingsBundle];
  v13 = [settingsBundle3 localizedStringForKey:@"RESUME_LAST_NOTE" value:@"Resume Last Note" table:@"Settings"];
  v14 = [(ICSettingsQuickNoteController *)self stateSpecifierNamed:v13 state:2 group:v4];

  [v3 addObject:v14];
  if ((v56 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v54 = v14;
    v55 = v8;
    settingsBundle4 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v16 = [settingsBundle4 localizedStringForKey:@"RESUME_LAST_NOTE_IPHONE_HEADER" value:@"RESUME LAST NOTE" table:@"Settings"];
    v17 = [PSSpecifier groupSpecifierWithName:v16];

    [v17 setProperty:&__kCFBooleanTrue forKey:v5];
    footerString = [(ICSettingsQuickNoteController *)self footerString];
    v52 = PSFooterTextGroupKey;
    [v17 setProperty:footerString forKey:?];

    [v3 addObject:v17];
    settingsBundle5 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v20 = [settingsBundle5 localizedStringForKey:@"CREATED_ON_LOCK_SCREEN" value:@"Created on Lock Screen" table:@"Settings"];
    v21 = [(ICSettingsQuickNoteController *)self stateSpecifierNamed:v20 state:3 group:v17];

    [v3 addObject:v21];
    settingsBundle6 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v23 = [settingsBundle6 localizedStringForKey:@"VIEWED_IN_NOTES_APP" value:@"Viewed in Notes App" table:@"Settings"];
    v24 = [(ICSettingsQuickNoteController *)self stateSpecifierNamed:v23 state:4 group:v17];

    [v3 addObject:v24];
    settingsBundle7 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v26 = settingsBundle7;
    if (v56 == 3)
    {
      v27 = @"CREATE_NEW_NOTE_HEADER";
      v28 = @"CREATE NEW NOTE";
    }

    else
    {
      v27 = @"REQUIRE_PASSCODE_HEADER";
      v28 = @"REQUIRE PASSCODE";
    }

    v30 = [settingsBundle7 localizedStringForKey:v27 value:v28 table:@"Settings"];

    v53 = v30;
    v31 = [PSSpecifier groupSpecifierWithName:v30];
    [v31 setProperty:&__kCFBooleanTrue forKey:v5];
    settingsBundle8 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v33 = [settingsBundle8 localizedStringForKey:@"DURATION_FOOTER" value:@"Shorter times are more secure." table:@"Settings"];
    [v31 setProperty:v33 forKey:v52];

    [v3 addObject:v31];
    if (v56 == 2)
    {
      settingsBundle9 = [(ICSettingsQuickNoteController *)self settingsBundle];
      v35 = [settingsBundle9 localizedStringForKey:@"QUICK_NOTE_DURATION_ZERO" value:@"Always" table:@"Settings"];
      v36 = [(ICSettingsQuickNoteController *)self durationSpecifierNamed:v35 duration:0 group:v31];

      [v3 addObject:v36];
    }

    settingsBundle10 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v38 = [settingsBundle10 localizedStringForKey:@"QUICK_NOTE_DURATION_FIVE_MINUTES" value:@"After 5 Minutes" table:@"Settings"];
    v57 = [(ICSettingsQuickNoteController *)self durationSpecifierNamed:v38 duration:300 group:v31];

    [v3 addObject:v57];
    settingsBundle11 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v40 = [settingsBundle11 localizedStringForKey:@"QUICK_NOTE_DURATION_FIFTEEN_MINUTES" value:@"After 15 Minutes" table:@"Settings"];
    v41 = [(ICSettingsQuickNoteController *)self durationSpecifierNamed:v40 duration:900 group:v31];

    [v3 addObject:v41];
    settingsBundle12 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v43 = [settingsBundle12 localizedStringForKey:@"QUICK_NOTE_DURATION_ONE_HOUR" value:@"After 1 Hour" table:@"Settings"];
    v44 = [(ICSettingsQuickNoteController *)self durationSpecifierNamed:v43 duration:3600 group:v31];

    [v3 addObject:v44];
    settingsBundle13 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v46 = [settingsBundle13 localizedStringForKey:@"QUICK_NOTE_DURATION_ALL_DAY" value:@"After Today" table:@"Settings"];
    v47 = [(ICSettingsQuickNoteController *)self durationSpecifierNamed:v46 duration:-2 group:v31];

    [v3 addObject:v47];
    settingsBundle14 = [(ICSettingsQuickNoteController *)self settingsBundle];
    v49 = [settingsBundle14 localizedStringForKey:@"QUICK_NOTE_DURATION_INFINITE" value:@"Never" table:@"Settings"];
    v50 = [(ICSettingsQuickNoteController *)self durationSpecifierNamed:v49 duration:-1 group:v31];

    [v3 addObject:v50];
    v14 = v54;
    v8 = v55;
    footerString2 = v53;
  }

  else
  {
    footerString2 = [(ICSettingsQuickNoteController *)self footerString];
    [v4 setProperty:footerString2 forKey:PSFooterTextGroupKey];
  }

  [(ICSettingsQuickNoteController *)self setSpecifiers:v3];

  return v3;
}

- (id)settingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v34.receiver = self;
  v34.super_class = ICSettingsQuickNoteController;
  [(ICSettingsQuickNoteController *)&v34 tableView:view didSelectRowAtIndexPath:pathCopy];
  v8 = [(ICSettingsQuickNoteController *)self specifierAtIndexPath:pathCopy];
  objc_opt_class();
  userInfo = [v8 userInfo];
  v10 = ICDynamicCast();

  if ([pathCopy section] && objc_msgSend(pathCopy, "section") != &dword_0 + 1)
  {
    objc_opt_class();
    v16 = [v10 objectForKeyedSubscript:@"ICSettingsQuickNoteDurationKey"];
    v12 = ICDynamicCast();

    if (!v12)
    {
      v18 = os_log_create("com.apple.notes", "QuickNote");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_FD78(self, a2);
      }

      goto LABEL_21;
    }

    integerValue = [v12 integerValue];
    v15 = integerValue;
    if (integerValue > 299)
    {
      if (integerValue != &stru_108.addr + 1 && integerValue != &stru_DC8.reserved2 && integerValue != &stru_338.reserved3)
      {
LABEL_34:
        v21 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_FD0C(v12, v21, v28, v29, v30, v31, v32, v33);
        }

        goto LABEL_36;
      }
    }

    else if (integerValue + 2 >= 3)
    {
      goto LABEL_34;
    }

    v14 = ICQuickNoteSessionSettings;
    goto LABEL_29;
  }

  objc_opt_class();
  v11 = [v10 objectForKeyedSubscript:@"ICSettingsQuickNoteStateKey"];
  v12 = ICDynamicCast();

  if (!v12)
  {
    v18 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_FE8C(self, a2);
    }

LABEL_21:

    goto LABEL_37;
  }

  unsignedIntegerValue = [v12 unsignedIntegerValue];
  if (unsignedIntegerValue <= 1)
  {
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue != (&dword_0 + 1))
      {
LABEL_32:
        v21 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_FE20(v12, v21, v22, v23, v24, v25, v26, v27);
        }

LABEL_36:

        goto LABEL_37;
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    [ICQuickNoteSessionSettings setShowOnLockScreen:v19];
    goto LABEL_37;
  }

  if (unsignedIntegerValue == (&dword_0 + 2))
  {
    v20 = &MGGetBoolAnswer_ptr;
    goto LABEL_28;
  }

  if (unsignedIntegerValue == (&dword_0 + 3))
  {
    v20 = &MGGetBoolAnswer_ptr;
    if (+[ICQuickNoteSessionSettings showOnLockScreen]== &dword_0 + 3)
    {
      goto LABEL_37;
    }

LABEL_28:
    [v20[122] setShowOnLockScreen:3];
    v14 = v20[122];
    v15 = 300;
    goto LABEL_29;
  }

  if (unsignedIntegerValue != &dword_4)
  {
    goto LABEL_32;
  }

  if (+[ICQuickNoteSessionSettings showOnLockScreen]!= &dword_0 + 2)
  {
    [ICQuickNoteSessionSettings setShowOnLockScreen:2];
    v14 = ICQuickNoteSessionSettings;
    v15 = 0;
LABEL_29:
    [v14 setSessionDuration:v15];
  }

LABEL_37:

  [(ICSettingsQuickNoteController *)self reloadSpecifiers];
}

- (id)stateSpecifierNamed:(id)named state:(unint64_t)state group:(id)group
{
  groupCopy = group;
  v9 = [PSSpecifier preferenceSpecifierNamed:named target:self set:0 get:0 detail:0 cell:3 edit:0];
  v13 = @"ICSettingsQuickNoteStateKey";
  v10 = [NSNumber numberWithUnsignedInteger:state];
  v14 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v9 setUserInfo:v11];

  if ([(ICSettingsQuickNoteController *)self stateIsSet:state])
  {
    [groupCopy setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  return v9;
}

- (id)durationSpecifierNamed:(id)named duration:(int64_t)duration group:(id)group
{
  groupCopy = group;
  v9 = [PSSpecifier preferenceSpecifierNamed:named target:self set:0 get:0 detail:0 cell:3 edit:0];
  v13 = @"ICSettingsQuickNoteDurationKey";
  v10 = [NSNumber numberWithInteger:duration];
  v14 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v9 setUserInfo:v11];

  if (+[ICQuickNoteSessionSettings sessionDuration]== duration)
  {
    [groupCopy setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  return v9;
}

- (BOOL)stateIsSet:(unint64_t)set
{
  v4 = +[ICQuickNoteSessionSettings showOnLockScreen];
  if (set <= 1)
  {
    if (set)
    {
      if (set != 1)
      {
        goto LABEL_15;
      }

      return v4 == 1;
    }

    else
    {
      return v4 == 0;
    }
  }

  switch(set)
  {
    case 2uLL:
      return (v4 & 0xFFFFFFFFFFFFFFFELL) == 2;
    case 3uLL:
      return v4 == 3;
    case 4uLL:
      return v4 == 2;
  }

LABEL_15:
  v7 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_FF34(set, v7, v8, v9, v10, v11, v12, v13);
  }

  return 0;
}

- (id)footerString
{
  v3 = +[ICQuickNoteSessionSettings showOnLockScreen];
  v4 = MGGetBoolAnswer();
  if (v3 == &dword_0 + 3)
  {
    settingsBundle = [(ICSettingsQuickNoteController *)self settingsBundle];
    v7 = settingsBundle;
    v8 = @"RESUME_LAST_NOTE_CREATED_HELP";
    v9 = @"Resume the last note created on the Lock Screen, or create a new note after some amount of time.";
  }

  else if (v3 == &dword_0 + 2)
  {
    settingsBundle = [(ICSettingsQuickNoteController *)self settingsBundle];
    v7 = settingsBundle;
    v8 = @"RESUME_LAST_NOTE_VIEWED_HELP";
    v9 = @"Resume the last note viewed in the Notes app, and require a passcode after some amount of time.";
  }

  else
  {
    if (v3 != &dword_0 + 1)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v5 = v4;
    settingsBundle = [(ICSettingsQuickNoteController *)self settingsBundle];
    v7 = settingsBundle;
    if (v5)
    {
      v8 = @"ALWAYS_CREATE_NEW_NOTE_HELP_PENCIL";
      v9 = @"Always create a new note when tapping anywhere on the Lock Screen with Apple Pencil, or pressing the Notes control in Control Center.";
    }

    else
    {
      v8 = @"ALWAYS_CREATE_NEW_NOTE_HELP_NO_PENCIL";
      v9 = @"Always create a new note when pressing the Notes control in Control Center.";
    }
  }

  v10 = [settingsBundle localizedStringForKey:v8 value:v9 table:@"Settings"];

LABEL_11:

  return v10;
}

@end
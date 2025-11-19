@interface CSLPRFStingSettingsViewController
- (CSLPRFStingSettingsViewController)init;
- (id)_gesturePaneChordFooterTextForActionType:(unint64_t)a3;
- (id)_gesturePaneFooterTextForActionType:(unint64_t)a3;
- (id)_gesturePaneSpecifiersForActionType:(unint64_t)a3;
- (id)_holdToActivateMandrakeForSpecifier:(id)a3;
- (id)_makeListItemSpecifier:(id)a3 label:(id)a4 icon:(id)a5 detail:(Class)a6;
- (id)_mandrakeSpecifiers;
- (id)_quickSwitchSpecifiers;
- (id)_selectedAccessibilitySpecifier;
- (id)_selectedActionItemSpecifierForActionType:(unint64_t)a3;
- (id)_selectedAppSpecifier:(id)a3 detail:(Class)a4;
- (id)_selectedShortcutSpecifier;
- (id)_selectedWorkoutItemForIdentifier:(id)a3 workoutItems:(id)a4;
- (id)_specifiersForActionType:(unint64_t)a3;
- (id)_specifiersForUnconfiguredAction;
- (id)_workoutSpecifiersForActionType:(unint64_t)a3 bundleID:(id)a4 workoutIdentifier:(id)a5;
- (id)specifiers;
- (void)_deregisterMandrakeSettingsListener;
- (void)_registerMandrakeSettingsListener;
- (void)_setHoldToActivateMandrake:(id)a3 forSpecifier:(id)a4;
- (void)addSelectedAppRowWithTitle:(id)a3 specifiers:(id)a4;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)viewDidLoad;
@end

@implementation CSLPRFStingSettingsViewController

- (CSLPRFStingSettingsViewController)init
{
  v10.receiver = self;
  v10.super_class = CSLPRFStingSettingsViewController;
  v2 = [(CSLPRFStingSettingsViewController *)&v10 init];
  if (v2)
  {
    v3 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
    appLibrary = v2->_appLibrary;
    v2->_appLibrary = v3;

    v5 = [[CSLPRFStingConfiguration alloc] initWithDelegate:v2];
    stingConfiguration = v2->_stingConfiguration;
    v2->_stingConfiguration = v5;

    v7 = objc_alloc_init(CSLPRFStingSettingsModel);
    model = v2->_model;
    v2->_model = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(CSLPRFStingSettingsViewController *)self _deregisterMandrakeSettingsListener];
  v3.receiver = self;
  v3.super_class = CSLPRFStingSettingsViewController;
  [(CSLPRFStingSettingsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CSLPRFStingSettingsViewController;
  [(CSLPRFStingSettingsViewController *)&v8 viewDidLoad];
  v3 = [(CSLPRFStingSettingsViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[CSLPRFStingGesturePaneCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ROOT_CONTROLLER_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
  [(CSLPRFStingSettingsViewController *)self setTitle:v7];

  [(CSLPRFStingSettingsViewController *)self _registerMandrakeSettingsListener];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType];
    if (v5)
    {
      [(CSLPRFStingSettingsViewController *)self _specifiersForActionType:v5];
    }

    else
    {
      [(CSLPRFStingSettingsViewController *)self _specifiersForUnconfiguredAction];
    }
    v6 = ;
    v7 = [(CSLPRFStingSettingsViewController *)self _quickSwitchSpecifiers];
    [v6 addObjectsFromArray:v7];

    v8 = [(CSLPRFStingSettingsViewController *)self _mandrakeSpecifiers];
    [v6 addObjectsFromArray:v8];

    v9 = [v6 copy];
    v10 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v9;

    v11 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *&self->PSListController_opaque[v3];
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%@: loaded specifiers %@", &v14, 0x16u);
    }

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_specifiersForUnconfiguredAction
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsChooseActionTypeGroupID"];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CHOOSE_STING_ACTION" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v7 setProperty:self->_model forKey:@"StingSettingsModel"];
  [v7 setIdentifier:@"StingSystemSettingsChooseActionTypeItem"];
  [v3 addObject:v7];

  return v3;
}

- (id)_specifiersForActionType:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v21 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
  v6 = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ACTION" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v9 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsActionTypeGroupID" name:v8];

  [v5 addObject:v9];
  v10 = [(CSLPRFStingSettingsViewController *)self _selectedActionItemSpecifierForActionType:a3];
  [v5 addObject:v10];
  if (a3 <= 8)
  {
    if (!a3)
    {
      goto LABEL_22;
    }

    if (a3 != 2)
    {
      if (a3 != 6)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    v14 = [(CSLPRFStingSettingsViewController *)self _selectedShortcutSpecifier];
    if (v14)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"SHORTCUT_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
      v17 = @"StingSystemSettingsShortcutsGroupID";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (a3 <= 19)
  {
    if (a3 != 9)
    {
      if (a3 == 18)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (a3 == 38)
  {
    v14 = [(CSLPRFStingSettingsViewController *)self _selectedAccessibilitySpecifier];
    if (v14)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"ACCESSIBILITY_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
      v17 = @"StingSystemSettingsAccessibilityGroupID";
LABEL_19:
      v18 = [PSSpecifier groupSpecifierWithID:v17 name:v16, PSSpecifier];

      [v5 addObject:v18];
      [v5 addObject:v14];

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (a3 == 20)
  {
LABEL_12:
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"APP" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v13 = [v12 localizedUppercaseString];
    [(CSLPRFStingSettingsViewController *)self addSelectedAppRowWithTitle:v13 specifiers:v5];

    if (a3 != 6 && a3 != 9)
    {
      goto LABEL_21;
    }

    v14 = [(CSLPRFStingSettingsViewController *)self _workoutSpecifiersForActionType:a3 bundleID:v21 workoutIdentifier:v6];
    [v5 addObjectsFromArray:v14];
    goto LABEL_20;
  }

LABEL_21:
  v19 = [(CSLPRFStingSettingsViewController *)self _gesturePaneSpecifiersForActionType:a3];
  [v5 addObjectsFromArray:v19];

LABEL_22:

  return v5;
}

- (id)_gesturePaneSpecifiersForActionType:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GESTURE_PANE_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v8 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsActionTypeGroupID" name:v7];

  v25 = [(CSLPRFStingSettingsViewController *)self _gesturePaneFooterTextForActionType:a3];
  [v8 setProperty:? forKey:?];
  v24 = PSFooterAlignmentGroupKey;
  [v8 setProperty:&off_CF30 forKey:?];
  [v5 addObject:v8];
  v9 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v10 = objc_opt_class();
  v11 = PSCellClassKey;
  [v9 setProperty:v10 forKey:PSCellClassKey];
  +[CSLPRFStingGesturePaneCell preferredCellHeight];
  v12 = [NSNumber numberWithDouble:?];
  v13 = PSTableCellHeightKey;
  [v9 setProperty:v12 forKey:PSTableCellHeightKey];

  v14 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:a3];
  if (v14)
  {
    [v9 setProperty:v14 forKey:@"CSLPRFStingGesturePaneCellSymbolName"];
  }

  [v5 addObject:v9];
  if (CSLHasChordActionInstructions())
  {
    v15 = CSLChordAction();
    if (v15 != a3)
    {
      v16 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:v15];

      v14 = v16;
    }

    v17 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsGesturesGroupTwoID"];
    v23 = [(CSLPRFStingSettingsViewController *)self _gesturePaneChordFooterTextForActionType:a3];
    [v17 setProperty:? forKey:?];
    [v17 setProperty:&off_CF30 forKey:v24];
    v18 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v18 setProperty:objc_opt_class() forKey:v11];
    +[CSLPRFStingGesturePaneCell preferredCellHeight];
    v19 = [NSNumber numberWithDouble:?];
    [v18 setProperty:v19 forKey:v13];

    if (v14)
    {
      [v18 setProperty:v14 forKey:@"CSLPRFStingGesturePaneCellSymbolName"];
    }

    v20 = [NSNumber numberWithBool:a3 != 20];
    [v18 setProperty:v20 forKey:@"CSLPRFStingGesturePaneCellHasChordArrow"];

    [v5 addObject:v17];
    [v5 addObject:v18];
  }

  v21 = [v5 copy];

  return v21;
}

- (id)_gesturePaneFooterTextForActionType:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 19)
  {
    if (a3 <= 4)
    {
      switch(a3)
      {
        case 1uLL:
          v4 = [NSBundle bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"GESTURE_PANE_FLASHLIGHT_SINGLE_PRESS";
          break;
        case 2uLL:
          v4 = [NSBundle bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"GESTURE_PANE_SHORTCUT_SINGLE_PRESS";
          break;
        case 4uLL:
          v4 = [NSBundle bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"GESTURE_PANE_STOPWATCH_SINGLE_PRESS";
          break;
        default:
          goto LABEL_39;
      }
    }

    else if (a3 > 8)
    {
      if (a3 == 9)
      {
        v9 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v9 localizedStringForKey:@"GESTURE_PANE_WORKOUT_OPEN" value:&stru_C380 table:@"LocalizableSettings-N199"];

        v10 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
        v11 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
        v12 = [v11 applicationWithBundleIdentifier:v10];
        v13 = [v12 localizedName];

        if (![v13 length])
        {
          v14 = [NSBundle bundleForClass:objc_opt_class()];
          v15 = [v14 localizedStringForKey:@"APP" value:&stru_C380 table:@"LocalizableSettings-N199"];

          v13 = v15;
        }

        v3 = [NSString localizedStringWithFormat:v5, v13];

        goto LABEL_38;
      }

      if (a3 != 12)
      {
        goto LABEL_39;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_BACKTRACK_SINGLE_PRESS";
    }

    else if (a3 == 5)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_WAYPOINT_SINGLE_PRESS";
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_39;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_WORKOUT_SINGLE_PRESS";
    }

    goto LABEL_36;
  }

  if (a3 <= 33)
  {
    switch(a3)
    {
      case 0x14uLL:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"GESTURE_PANE_DIVE_SINGLE_PRESS";
        break;
      case 0x19uLL:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"GESTURE_PANE_VOICE_MEMO_SINGLE_PRESS";
        break;
      case 0x1DuLL:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"GESTURE_PANE_TRANSLATE_SINGLE_PRESS";
        v7 = @"LocalizableSettings-Translate";
        goto LABEL_37;
      default:
        goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (a3 > 39)
  {
    if (a3 == 40)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_RECOGNIZE_MUSIC_SINGLE_PRESS";
    }

    else
    {
      if (a3 != 42)
      {
        goto LABEL_39;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_CONTROL_SINGLE_PRESS";
    }

    goto LABEL_36;
  }

  if (a3 != 34)
  {
    if (a3 != 38)
    {
      goto LABEL_39;
    }

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"GESTURE_PANE_ACCESSIBLITY_SINGLE_PRESS";
LABEL_36:
    v7 = @"LocalizableSettings-N199";
    goto LABEL_37;
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = @"GESTURE_PANE_REGATTA_SINGLE_PRESS";
  v7 = @"LocalizableSettings-Squall";
LABEL_37:
  v3 = [v4 localizedStringForKey:v6 value:&stru_C380 table:v7];
LABEL_38:

LABEL_39:

  return v3;
}

- (id)_gesturePaneChordFooterTextForActionType:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 11)
  {
    switch(a3)
    {
      case 0xCuLL:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"GESTURE_PANE_BACKTRACK_CHORD";
        break;
      case 0x14uLL:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"GESTURE_PANE_DIVE_CHORD";
        break;
      case 0x22uLL:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"GESTURE_PANE_REGATTA_CHORD";
        v7 = @"LocalizableSettings-Squall";
        goto LABEL_12;
      default:
        goto LABEL_13;
    }

LABEL_11:
    v7 = @"LocalizableSettings-N199";
LABEL_12:
    v3 = [v4 localizedStringForKey:v6 value:&stru_C380 table:v7];

    goto LABEL_13;
  }

  if (a3 == 4 || a3 == 6)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"GESTURE_PANE_PAUSE_CHORD";
    goto LABEL_11;
  }

LABEL_13:

  return v3;
}

- (void)addSelectedAppRowWithTitle:(id)a3 specifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
  v9 = [(CSLPRFApplicationLibrary *)self->_appLibrary applicationWithBundleIdentifier:v8];
  if (v9)
  {
    v10 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsSelectedAppGroupID" name:v6];
    [v7 addObject:v10];
    v11 = [(CSLPRFStingSettingsViewController *)self _selectedAppSpecifier:v9 detail:objc_opt_class()];
    if (v11)
    {
      [v7 addObject:v11];
    }
  }

  else
  {
    v12 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_7C00(v8, v12);
    }
  }
}

- (id)_selectedShortcutSpecifier
{
  v3 = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
  v4 = [(CSLPRFStingSettingsModel *)self->_model shortcutItems];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_24E8;
  v18 = sub_24F8;
  v19 = &stru_C380;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_2500;
  v11 = &unk_C2F0;
  v5 = v3;
  v12 = v5;
  v13 = &v14;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = [(CSLPRFStingSettingsViewController *)self _makeListItemSpecifier:@"StingSystemSettingsShortcuts" label:v15[5] icon:0 detail:objc_opt_class(), v8, v9, v10, v11];

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (id)_selectedAccessibilitySpecifier
{
  v3 = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
  [(CSLPRFStingSettingsModel *)self->_model accessibilityItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = &stru_C380;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v8 = [v10 title];
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = &stru_C380;
  }

LABEL_12:

  v13 = [(CSLPRFStingSettingsViewController *)self _makeListItemSpecifier:@"StingSystemSettingsAccessibility" label:v8 icon:0 detail:objc_opt_class()];

  return v13;
}

- (id)_workoutSpecifiersForActionType:(unint64_t)a3 bundleID:(id)a4 workoutIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableArray array];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FIRST_PRESS" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v13 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsWorkoutGroupID" name:v12];

  [v10 addObject:v13];
  if (a3 == 6)
  {
    v14 = [(CSLPRFStingSettingsModel *)self->_model startWorkoutsListForBundleID:v8];
    v15 = [(CSLPRFStingSettingsViewController *)self _selectedWorkoutItemForIdentifier:v9 workoutItems:v14];
    v16 = [v15 title];
    v17 = [v15 subtitle];
  }

  else
  {
    v26 = v9;
    v18 = v8;
    v14 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
    v19 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
    v20 = [v19 applicationWithBundleIdentifier:v14];
    v15 = [v20 localizedName];

    if (v15 && [v15 length])
    {
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"OPEN_APP_NAME" value:&stru_C380 table:@"LocalizableSettings-N199"];
      v16 = [NSString stringWithFormat:v22, v15];

      v17 = 0;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v8 = v18;
    v9 = v26;
  }

  v23 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v23 setProperty:v17 forKey:PSTableCellSubtitleTextKey];
  [v23 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v23 setProperty:self->_model forKey:@"StingSettingsModel"];
  [v10 addObject:v23];
  v24 = [v10 copy];

  return v24;
}

- (id)_selectedWorkoutItemForIdentifier:(id)a3 workoutItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 workoutIdentifier];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_selectedAppSpecifier:(id)a3 detail:(Class)a4
{
  v6 = a3;
  v7 = [v6 localizedName];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:a4 cell:2 edit:0];

  [v8 setApp:v6];
  v9 = [v6 bundleIdentifier];
  [v8 setIdentifier:v9];

  v10 = [v6 bundleIdentifier];

  [v8 setProperty:v10 forKey:PSLazyIconAppID];
  [v8 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v8 setProperty:self->_model forKey:@"StingSettingsModel"];

  return v8;
}

- (id)_selectedActionItemSpecifierForActionType:(unint64_t)a3
{
  if (a3 != 18 && a3)
  {
    v6 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:a3];
    v8 = [UIImage _systemImageNamed:v6];
    v9 = +[UIColor systemWhiteColor];
    v10 = [v8 imageWithTintColor:v9 renderingMode:1];

    v11 = [CSLPRFStingSettingsModel actionNameForActionType:a3];
    v7 = [(CSLPRFStingSettingsViewController *)self _makeListItemSpecifier:@"StingSystemSettingsActionTypeItem" label:v11 icon:v10 detail:objc_opt_class()];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NONE_ACTION" value:&stru_C380 table:@"LocalizableSettings-N199"];

    v7 = [(CSLPRFStingSettingsViewController *)self _makeListItemSpecifier:@"StingSystemSettingsActionTypeItem" label:v6 icon:0 detail:objc_opt_class()];
  }

  return v7;
}

- (void)reloadSpecifiers
{
  [(CSLPRFStingSettingsViewController *)self setSpecifiers:0];
  v3.receiver = self;
  v3.super_class = CSLPRFStingSettingsViewController;
  [(CSLPRFStingSettingsViewController *)&v3 reloadSpecifiers];
}

- (id)_makeListItemSpecifier:(id)a3 label:(id)a4 icon:(id)a5 detail:(Class)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [PSSpecifier preferenceSpecifierNamed:a4 target:self set:0 get:0 detail:a6 cell:2 edit:0];
  v13 = v12;
  if (v11)
  {
    [v12 setProperty:v11 forKey:PSIconImageKey];
  }

  [v13 setIdentifier:v10];
  [v13 setProperty:self->_model forKey:@"StingSettingsModel"];

  return v13;
}

- (id)_quickSwitchSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsShowQuickSwitchGroupID"];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"QUICK_SWITCH" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v7 setIdentifier:@"ShowQuickSwitch"];
  [v3 addObject:v7];

  return v3;
}

- (id)_mandrakeSpecifiers
{
  v3 = +[NSMutableArray array];
  if (+[SOSUtilities activeDeviceHasMandrake])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"ACTIVATE_MANDRAKE_HEADER" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v6 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsMandrakeActivationGroupID" name:v5];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ACTIVATE_MANDRAKE_FOOTER" value:&stru_C380 table:@"LocalizableSettings-N199"];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v3 addObject:v6];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ACTIVATE_MANDRAKE_TOGGLE_LABEL" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"_setHoldToActivateMandrake:forSpecifier:" get:"_holdToActivateMandrakeForSpecifier:" detail:0 cell:6 edit:0];

    [v3 addObject:v11];
  }

  return v3;
}

- (void)_registerMandrakeSettingsListener
{
  objc_initWeak(&location, self);
  v3 = [SOSMandrakeStateChangedNotification UTF8String];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_34FC;
  v5[3] = &unk_C318;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(v3, &self->_stingActivatesMandrakeNotifyToken, &_dispatch_main_q, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_deregisterMandrakeSettingsListener
{
  stingActivatesMandrakeNotifyToken = self->_stingActivatesMandrakeNotifyToken;
  if (stingActivatesMandrakeNotifyToken != -1)
  {
    notify_cancel(stingActivatesMandrakeNotifyToken);
    self->_stingActivatesMandrakeNotifyToken = -1;
  }
}

- (void)_setHoldToActivateMandrake:(id)a3 forSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];

  [SOSUtilities setLongPressTriggersMandrake:v4];
}

- (id)_holdToActivateMandrakeForSpecifier:(id)a3
{
  v3 = +[SOSUtilities longPressTriggersMandrake];

  return [NSNumber numberWithBool:v3];
}

@end
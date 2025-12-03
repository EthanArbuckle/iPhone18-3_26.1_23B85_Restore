@interface CSLPRFStingSettingsViewController
- (CSLPRFStingSettingsViewController)init;
- (id)_gesturePaneChordFooterTextForActionType:(unint64_t)type;
- (id)_gesturePaneFooterTextForActionType:(unint64_t)type;
- (id)_gesturePaneSpecifiersForActionType:(unint64_t)type;
- (id)_holdToActivateMandrakeForSpecifier:(id)specifier;
- (id)_makeListItemSpecifier:(id)specifier label:(id)label icon:(id)icon detail:(Class)detail;
- (id)_mandrakeSpecifiers;
- (id)_quickSwitchSpecifiers;
- (id)_selectedAccessibilitySpecifier;
- (id)_selectedActionItemSpecifierForActionType:(unint64_t)type;
- (id)_selectedAppSpecifier:(id)specifier detail:(Class)detail;
- (id)_selectedShortcutSpecifier;
- (id)_selectedWorkoutItemForIdentifier:(id)identifier workoutItems:(id)items;
- (id)_specifiersForActionType:(unint64_t)type;
- (id)_specifiersForUnconfiguredAction;
- (id)_workoutSpecifiersForActionType:(unint64_t)type bundleID:(id)d workoutIdentifier:(id)identifier;
- (id)specifiers;
- (void)_deregisterMandrakeSettingsListener;
- (void)_registerMandrakeSettingsListener;
- (void)_setHoldToActivateMandrake:(id)mandrake forSpecifier:(id)specifier;
- (void)addSelectedAppRowWithTitle:(id)title specifiers:(id)specifiers;
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
  table = [(CSLPRFStingSettingsViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[CSLPRFStingGesturePaneCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];

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
    actionType = [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType];
    if (actionType)
    {
      [(CSLPRFStingSettingsViewController *)self _specifiersForActionType:actionType];
    }

    else
    {
      [(CSLPRFStingSettingsViewController *)self _specifiersForUnconfiguredAction];
    }
    v6 = ;
    _quickSwitchSpecifiers = [(CSLPRFStingSettingsViewController *)self _quickSwitchSpecifiers];
    [v6 addObjectsFromArray:_quickSwitchSpecifiers];

    _mandrakeSpecifiers = [(CSLPRFStingSettingsViewController *)self _mandrakeSpecifiers];
    [v6 addObjectsFromArray:_mandrakeSpecifiers];

    v9 = [v6 copy];
    v10 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v9;

    v11 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *&self->PSListController_opaque[v3];
      v14 = 138412546;
      selfCopy = self;
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

- (id)_specifiersForActionType:(unint64_t)type
{
  v5 = +[NSMutableArray array];
  bundleID = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
  workoutIdentifier = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ACTION" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v9 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsActionTypeGroupID" name:v8];

  [v5 addObject:v9];
  v10 = [(CSLPRFStingSettingsViewController *)self _selectedActionItemSpecifierForActionType:type];
  [v5 addObject:v10];
  if (type <= 8)
  {
    if (!type)
    {
      goto LABEL_22;
    }

    if (type != 2)
    {
      if (type != 6)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    _selectedShortcutSpecifier = [(CSLPRFStingSettingsViewController *)self _selectedShortcutSpecifier];
    if (_selectedShortcutSpecifier)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"SHORTCUT_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
      v17 = @"StingSystemSettingsShortcutsGroupID";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (type <= 19)
  {
    if (type != 9)
    {
      if (type == 18)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (type == 38)
  {
    _selectedShortcutSpecifier = [(CSLPRFStingSettingsViewController *)self _selectedAccessibilitySpecifier];
    if (_selectedShortcutSpecifier)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"ACCESSIBILITY_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
      v17 = @"StingSystemSettingsAccessibilityGroupID";
LABEL_19:
      pSSpecifier = [PSSpecifier groupSpecifierWithID:v17 name:v16, PSSpecifier];

      [v5 addObject:pSSpecifier];
      [v5 addObject:_selectedShortcutSpecifier];

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (type == 20)
  {
LABEL_12:
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"APP" value:&stru_C380 table:@"LocalizableSettings-N199"];
    localizedUppercaseString = [v12 localizedUppercaseString];
    [(CSLPRFStingSettingsViewController *)self addSelectedAppRowWithTitle:localizedUppercaseString specifiers:v5];

    if (type != 6 && type != 9)
    {
      goto LABEL_21;
    }

    _selectedShortcutSpecifier = [(CSLPRFStingSettingsViewController *)self _workoutSpecifiersForActionType:type bundleID:bundleID workoutIdentifier:workoutIdentifier];
    [v5 addObjectsFromArray:_selectedShortcutSpecifier];
    goto LABEL_20;
  }

LABEL_21:
  v19 = [(CSLPRFStingSettingsViewController *)self _gesturePaneSpecifiersForActionType:type];
  [v5 addObjectsFromArray:v19];

LABEL_22:

  return v5;
}

- (id)_gesturePaneSpecifiersForActionType:(unint64_t)type
{
  v5 = +[NSMutableArray array];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GESTURE_PANE_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v8 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsActionTypeGroupID" name:v7];

  v25 = [(CSLPRFStingSettingsViewController *)self _gesturePaneFooterTextForActionType:type];
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

  v14 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:type];
  if (v14)
  {
    [v9 setProperty:v14 forKey:@"CSLPRFStingGesturePaneCellSymbolName"];
  }

  [v5 addObject:v9];
  if (CSLHasChordActionInstructions())
  {
    v15 = CSLChordAction();
    if (v15 != type)
    {
      v16 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:v15];

      v14 = v16;
    }

    v17 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsGesturesGroupTwoID"];
    v23 = [(CSLPRFStingSettingsViewController *)self _gesturePaneChordFooterTextForActionType:type];
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

    v20 = [NSNumber numberWithBool:type != 20];
    [v18 setProperty:v20 forKey:@"CSLPRFStingGesturePaneCellHasChordArrow"];

    [v5 addObject:v17];
    [v5 addObject:v18];
  }

  v21 = [v5 copy];

  return v21;
}

- (id)_gesturePaneFooterTextForActionType:(unint64_t)type
{
  v3 = 0;
  if (type <= 19)
  {
    if (type <= 4)
    {
      switch(type)
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

    else if (type > 8)
    {
      if (type == 9)
      {
        v9 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v9 localizedStringForKey:@"GESTURE_PANE_WORKOUT_OPEN" value:&stru_C380 table:@"LocalizableSettings-N199"];

        bundleID = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
        v11 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
        v12 = [v11 applicationWithBundleIdentifier:bundleID];
        localizedName = [v12 localizedName];

        if (![localizedName length])
        {
          v14 = [NSBundle bundleForClass:objc_opt_class()];
          v15 = [v14 localizedStringForKey:@"APP" value:&stru_C380 table:@"LocalizableSettings-N199"];

          localizedName = v15;
        }

        v3 = [NSString localizedStringWithFormat:v5, localizedName];

        goto LABEL_38;
      }

      if (type != 12)
      {
        goto LABEL_39;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_BACKTRACK_SINGLE_PRESS";
    }

    else if (type == 5)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_WAYPOINT_SINGLE_PRESS";
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_39;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_WORKOUT_SINGLE_PRESS";
    }

    goto LABEL_36;
  }

  if (type <= 33)
  {
    switch(type)
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

  if (type > 39)
  {
    if (type == 40)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_RECOGNIZE_MUSIC_SINGLE_PRESS";
    }

    else
    {
      if (type != 42)
      {
        goto LABEL_39;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"GESTURE_PANE_CONTROL_SINGLE_PRESS";
    }

    goto LABEL_36;
  }

  if (type != 34)
  {
    if (type != 38)
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

- (id)_gesturePaneChordFooterTextForActionType:(unint64_t)type
{
  v3 = 0;
  if (type > 11)
  {
    switch(type)
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

  if (type == 4 || type == 6)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"GESTURE_PANE_PAUSE_CHORD";
    goto LABEL_11;
  }

LABEL_13:

  return v3;
}

- (void)addSelectedAppRowWithTitle:(id)title specifiers:(id)specifiers
{
  titleCopy = title;
  specifiersCopy = specifiers;
  bundleID = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
  v9 = [(CSLPRFApplicationLibrary *)self->_appLibrary applicationWithBundleIdentifier:bundleID];
  if (v9)
  {
    v10 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsSelectedAppGroupID" name:titleCopy];
    [specifiersCopy addObject:v10];
    v11 = [(CSLPRFStingSettingsViewController *)self _selectedAppSpecifier:v9 detail:objc_opt_class()];
    if (v11)
    {
      [specifiersCopy addObject:v11];
    }
  }

  else
  {
    v12 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_7C00(bundleID, v12);
    }
  }
}

- (id)_selectedShortcutSpecifier
{
  workoutIdentifier = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
  shortcutItems = [(CSLPRFStingSettingsModel *)self->_model shortcutItems];
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
  v5 = workoutIdentifier;
  v12 = v5;
  v13 = &v14;
  [shortcutItems enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = [(CSLPRFStingSettingsViewController *)self _makeListItemSpecifier:@"StingSystemSettingsShortcuts" label:v15[5] icon:0 detail:objc_opt_class(), v8, v9, v10, v11];

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (id)_selectedAccessibilitySpecifier
{
  workoutIdentifier = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
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
    title = &stru_C380;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:workoutIdentifier];

        if (v12)
        {
          title = [v10 title];
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
    title = &stru_C380;
  }

LABEL_12:

  v13 = [(CSLPRFStingSettingsViewController *)self _makeListItemSpecifier:@"StingSystemSettingsAccessibility" label:title icon:0 detail:objc_opt_class()];

  return v13;
}

- (id)_workoutSpecifiersForActionType:(unint64_t)type bundleID:(id)d workoutIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v10 = +[NSMutableArray array];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FIRST_PRESS" value:&stru_C380 table:@"LocalizableSettings-N199"];
  v13 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsWorkoutGroupID" name:v12];

  [v10 addObject:v13];
  if (type == 6)
  {
    bundleID = [(CSLPRFStingSettingsModel *)self->_model startWorkoutsListForBundleID:dCopy];
    localizedName = [(CSLPRFStingSettingsViewController *)self _selectedWorkoutItemForIdentifier:identifierCopy workoutItems:bundleID];
    title = [localizedName title];
    subtitle = [localizedName subtitle];
  }

  else
  {
    v26 = identifierCopy;
    v18 = dCopy;
    bundleID = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
    v19 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
    v20 = [v19 applicationWithBundleIdentifier:bundleID];
    localizedName = [v20 localizedName];

    if (localizedName && [localizedName length])
    {
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"OPEN_APP_NAME" value:&stru_C380 table:@"LocalizableSettings-N199"];
      title = [NSString stringWithFormat:v22, localizedName];

      subtitle = 0;
    }

    else
    {
      subtitle = 0;
      title = 0;
    }

    dCopy = v18;
    identifierCopy = v26;
  }

  v23 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v23 setProperty:subtitle forKey:PSTableCellSubtitleTextKey];
  [v23 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v23 setProperty:self->_model forKey:@"StingSettingsModel"];
  [v10 addObject:v23];
  v24 = [v10 copy];

  return v24;
}

- (id)_selectedWorkoutItemForIdentifier:(id)identifier workoutItems:(id)items
{
  identifierCopy = identifier;
  itemsCopy = items;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        workoutIdentifier = [v12 workoutIdentifier];
        v14 = [workoutIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_selectedAppSpecifier:(id)specifier detail:(Class)detail
{
  specifierCopy = specifier;
  localizedName = [specifierCopy localizedName];
  v8 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:detail cell:2 edit:0];

  [v8 setApp:specifierCopy];
  bundleIdentifier = [specifierCopy bundleIdentifier];
  [v8 setIdentifier:bundleIdentifier];

  bundleIdentifier2 = [specifierCopy bundleIdentifier];

  [v8 setProperty:bundleIdentifier2 forKey:PSLazyIconAppID];
  [v8 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v8 setProperty:self->_model forKey:@"StingSettingsModel"];

  return v8;
}

- (id)_selectedActionItemSpecifierForActionType:(unint64_t)type
{
  if (type != 18 && type)
  {
    v6 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:type];
    v8 = [UIImage _systemImageNamed:v6];
    v9 = +[UIColor systemWhiteColor];
    v10 = [v8 imageWithTintColor:v9 renderingMode:1];

    v11 = [CSLPRFStingSettingsModel actionNameForActionType:type];
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

- (id)_makeListItemSpecifier:(id)specifier label:(id)label icon:(id)icon detail:(Class)detail
{
  specifierCopy = specifier;
  iconCopy = icon;
  v12 = [PSSpecifier preferenceSpecifierNamed:label target:self set:0 get:0 detail:detail cell:2 edit:0];
  v13 = v12;
  if (iconCopy)
  {
    [v12 setProperty:iconCopy forKey:PSIconImageKey];
  }

  [v13 setIdentifier:specifierCopy];
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
  uTF8String = [SOSMandrakeStateChangedNotification UTF8String];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_34FC;
  v5[3] = &unk_C318;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(uTF8String, &self->_stingActivatesMandrakeNotifyToken, &_dispatch_main_q, v5);

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

- (void)_setHoldToActivateMandrake:(id)mandrake forSpecifier:(id)specifier
{
  bOOLValue = [mandrake BOOLValue];

  [SOSUtilities setLongPressTriggersMandrake:bOOLValue];
}

- (id)_holdToActivateMandrakeForSpecifier:(id)specifier
{
  v3 = +[SOSUtilities longPressTriggersMandrake];

  return [NSNumber numberWithBool:v3];
}

@end
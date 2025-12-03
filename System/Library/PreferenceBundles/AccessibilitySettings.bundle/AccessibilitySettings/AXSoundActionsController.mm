@interface AXSoundActionsController
- (BOOL)_shouldEnableSoundSource;
- (id)_keyForSoundAction:(id)action;
- (id)_stringForSoundAction:(id)action;
- (id)actionForActionPickerController:(id)controller;
- (id)selectSpecifier:(id)specifier;
- (id)soundAction:(id)action;
- (id)specifiers;
- (void)actionPickerController:(id)controller didSelectAction:(id)action;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AXSoundActionsController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v24 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_opt_new();
    v5 = +[PSSpecifier emptyGroupSpecifier];
    if ([(AXSoundActionsController *)self _shouldEnableSoundSource])
    {
      v6 = @"SOUND_ACTION_PRACTICE_FOOTER";
    }

    else
    {
      v6 = @"SOUND_ACTION_GROUP_FOOTER";
    }

    v7 = settingsLocString(v6, @"Accessibility");
    [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    v8 = settingsLocString(@"SOUND_ACTION_PRACTICE_TITLE", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v9 setIdentifier:@"SOUND_ACTION_PRACTICE_ID"];
    v10 = [NSNumber numberWithBool:[(AXSoundActionsController *)self _shouldEnableSoundSource]];
    v26 = PSEnabledKey;
    [v9 setProperty:v10 forKey:?];

    [v4 addObject:v9];
    v11 = +[PSSpecifier emptyGroupSpecifier];

    v12 = v4;
    [v4 addObject:v11];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(AXSoundActionsController *)self _allSoundActions];
    v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        v17 = v11;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v27 + 1) + 8 * v16);
          v19 = [(AXSoundActionsController *)self _stringForSoundAction:v18];
          v11 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:"soundAction:" detail:objc_opt_class() cell:2 edit:0];

          [v11 setProperty:v18 forKey:@"AXSoundActionsInputEventUsage"];
          v20 = [NSNumber numberWithBool:[(AXSoundActionsController *)self _shouldEnableSoundSource]];
          [v11 setProperty:v20 forKey:v26];

          v21 = [(AXSoundActionsController *)self _keyForSoundAction:v18];
          [v11 setIdentifier:v21];

          [v12 addObject:v11];
          v16 = v16 + 1;
          v17 = v11;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v22 = *&self->AXUISettingsBaseListController_opaque[v24];
    *&self->AXUISettingsBaseListController_opaque[v24] = v12;

    v3 = *&self->AXUISettingsBaseListController_opaque[v24];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AXSoundActionsController;
  pathCopy = path;
  [(AXSoundActionsController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXSoundActionsController *)self specifierAtIndexPath:pathCopy, v12.receiver, v12.super_class];

  identifier = [v7 identifier];
  LODWORD(pathCopy) = [identifier isEqualToString:@"SOUND_ACTION_PRACTICE_ID"];

  if (pathCopy)
  {
    v9 = [SoundActionsPracticeNavigationController alloc];
    soundActionslocalURL = [(AXSoundActionsController *)self soundActionslocalURL];
    v11 = [(SoundActionsPracticeNavigationController *)v9 initWithAssetURL:soundActionslocalURL];

    [(AXSoundActionsController *)self presentModalViewController:v11 withTransition:3];
  }
}

- (id)selectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = AXSoundActionsController;
  v5 = [(AXSoundActionsController *)&v8 selectSpecifier:specifierCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
    identifier = [specifierCopy identifier];
    [v5 setIdentifier:identifier];
  }

  return v5;
}

- (id)soundAction:(id)action
{
  v4 = [action propertyForKey:@"AXSoundActionsInputEventUsage"];
  integerValue = [v4 integerValue];

  actionsBySoundAction = [(AXSoundActionsController *)self actionsBySoundAction];
  v7 = [NSNumber numberWithLong:integerValue];
  stringValue = [v7 stringValue];
  v9 = [actionsBySoundAction objectForKey:stringValue];

  if (v9)
  {
    AXUIAssistiveTouchStringForName();
  }

  else
  {
    settingsLocString(@"NONE", @"HandSettings");
  }
  v10 = ;

  return v10;
}

- (id)actionForActionPickerController:(id)controller
{
  identifier = [controller identifier];
  v5 = [(AXSoundActionsController *)self specifierForID:identifier];
  v6 = [v5 propertyForKey:@"AXSoundActionsInputEventUsage"];
  integerValue = [v6 integerValue];

  actionsBySoundAction = [(AXSoundActionsController *)self actionsBySoundAction];
  v9 = [NSNumber numberWithLong:integerValue];
  stringValue = [v9 stringValue];
  v11 = [actionsBySoundAction objectForKey:stringValue];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"__NONE__";
  }

  v14 = v13;

  return v13;
}

- (void)actionPickerController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  identifier = [controller identifier];
  v7 = [(AXSoundActionsController *)self specifierForID:identifier];
  v8 = [v7 propertyForKey:@"AXSoundActionsInputEventUsage"];
  integerValue = [v8 integerValue];

  actionsBySoundAction = [(AXSoundActionsController *)self actionsBySoundAction];
  v11 = [actionsBySoundAction mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v15 = [actionCopy isEqualToString:@"__NONE__"];
  v16 = [NSNumber numberWithLong:integerValue];
  stringValue = [v16 stringValue];
  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = actionCopy;
  }

  [v14 setObject:v18 forKeyedSubscript:stringValue];

  [(AXSoundActionsController *)self updateSoundActionsWithDictionary:v14];
  [(AXSoundActionsController *)self reloadSpecifiers];
}

- (id)_keyForSoundAction:(id)action
{
  v7[0] = &off_27A038;
  v7[1] = &off_27A050;
  v8[0] = @"SOUND_ACTION_CLICK";
  v8[1] = @"SOUND_ACTION_CLUCK";
  v7[2] = &off_27A068;
  v7[3] = &off_27A080;
  v8[2] = @"SOUND_ACTION_EE";
  v8[3] = @"SOUND_ACTION_EH";
  v7[4] = &off_27A098;
  v7[5] = &off_27A0B0;
  v8[4] = @"SOUND_ACTION_KK";
  v8[5] = @"SOUND_ACTION_LA";
  v7[6] = &off_27A0C8;
  v7[7] = &off_27A0E0;
  v8[6] = @"SOUND_ACTION_MUH";
  v8[7] = @"SOUND_ACTION_OO";
  v7[8] = &off_27A0F8;
  v7[9] = &off_27A110;
  v8[8] = @"SOUND_ACTION_POP";
  v8[9] = @"SOUND_ACTION_PP";
  v7[10] = &off_27A128;
  v7[11] = &off_27A140;
  v8[10] = @"SOUND_ACTION_SH";
  v8[11] = @"SOUND_ACTION_SS";
  v7[12] = &off_27A158;
  v7[13] = &off_27A170;
  v8[12] = @"SOUND_ACTION_TT";
  v8[13] = @"SOUND_ACTION_UH";
  actionCopy = action;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:14];
  v5 = [v4 objectForKey:actionCopy];

  return v5;
}

- (id)_stringForSoundAction:(id)action
{
  v3 = [(AXSoundActionsController *)self _keyForSoundAction:action];
  v4 = settingsLocString(v3, @"Accessibility");

  return v4;
}

- (BOOL)_shouldEnableSoundSource
{
  soundActionslocalURL = [(AXSoundActionsController *)self soundActionslocalURL];
  v3 = soundActionslocalURL != 0;

  return v3;
}

@end
@interface SCATSoundSwitchSourceController
+ (id)_soundSwitchSourceShouldEnabledDict;
- (id)_specifierForLocString:(id)a3 identifier:(id)a4 switchType:(int64_t)a5;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATSoundSwitchSourceController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    if (!self->_shouldEnableSoundSwitchDict)
    {
      v6 = +[SCATSoundSwitchSourceController _soundSwitchSourceShouldEnabledDict];
      shouldEnableSoundSwitchDict = self->_shouldEnableSoundSwitchDict;
      self->_shouldEnableSoundSwitchDict = v6;
    }

    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = settingsLocString(@"SOUND_ACTION_PRACTICE_FOOTER", @"Accessibility");
    v10 = PSFooterTextGroupKey;
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v5 addObject:v8];
    v11 = settingsLocString(@"SOUND_ACTION_PRACTICE_TITLE", @"Accessibility");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v12 setIdentifier:@"SOUND_ACTION_PRACTICE_ID"];
    [v5 addObject:v12];
    v13 = +[PSSpecifier emptyGroupSpecifier];

    v14 = settingsLocString(@"SOUND_ACTION_PRACTICE_DISC", @"Accessibility");
    [v13 setProperty:v14 forKey:v10];

    [v5 addObject:v13];
    v15 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_CLICK" identifier:@"SOUND_ACTION_CLICK_ID" switchType:1];

    [v5 addObject:v15];
    v16 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_CLUCK" identifier:@"SOUND_ACTION_CLUCK_ID" switchType:2];

    [v5 addObject:v16];
    v17 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_EE" identifier:@"SOUND_ACTION_EE_ID" switchType:3];

    [v5 addObject:v17];
    v18 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_EH" identifier:@"SOUND_ACTION_EH_ID" switchType:4];

    [v5 addObject:v18];
    v19 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_KK" identifier:@"SOUND_ACTION_KK_ID" switchType:5];

    [v5 addObject:v19];
    v20 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_LA" identifier:@"SOUND_ACTION_LA_ID" switchType:6];

    [v5 addObject:v20];
    v21 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_MUH" identifier:@"SOUND_ACTION_MUH_ID" switchType:7];

    [v5 addObject:v21];
    v22 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_OO" identifier:@"SOUND_ACTION_OO_ID" switchType:8];

    [v5 addObject:v22];
    v23 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_POP" identifier:@"SOUND_ACTION_POP_ID" switchType:9];

    [v5 addObject:v23];
    v24 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_PP" identifier:@"SOUND_ACTION_PP_ID" switchType:10];

    [v5 addObject:v24];
    v25 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_SH" identifier:@"SOUND_ACTION_SH_ID" switchType:11];

    [v5 addObject:v25];
    v26 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_SS" identifier:@"SOUND_ACTION_SS_ID" switchType:12];

    [v5 addObject:v26];
    v27 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_TT" identifier:@"SOUND_ACTION_TT_ID" switchType:13];

    [v5 addObject:v27];
    v28 = [(SCATSoundSwitchSourceController *)self _specifierForLocString:@"SOUND_ACTION_UH" identifier:@"SOUND_ACTION_UH_ID" switchType:14];

    [v5 addObject:v28];
    v29 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)_specifierForLocString:(id)a3 identifier:(id)a4 switchType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[SCATSoundSwitchSourceController _soundSwitchSourceShouldEnabledDict];
  v11 = settingsLocString(v9, @"Accessibility");

  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:1 edit:0];

  v13 = [NSNumber numberWithLong:a5];
  v14 = [v10 objectForKeyedSubscript:v13];
  [v12 setProperty:v14 forKey:PSEnabledKey];

  [v12 setIdentifier:v8];

  return v12;
}

+ (id)_soundSwitchSourceShouldEnabledDict
{
  v23[0] = &off_27A2C0;
  v23[1] = &off_27A2D8;
  v24[0] = &__kCFBooleanTrue;
  v24[1] = &__kCFBooleanTrue;
  v23[2] = &off_27A2F0;
  v23[3] = &off_27A308;
  v24[2] = &__kCFBooleanTrue;
  v24[3] = &__kCFBooleanTrue;
  v23[4] = &off_27A320;
  v23[5] = &off_27A338;
  v24[4] = &__kCFBooleanTrue;
  v24[5] = &__kCFBooleanTrue;
  v23[6] = &off_27A350;
  v23[7] = &off_27A368;
  v24[6] = &__kCFBooleanTrue;
  v24[7] = &__kCFBooleanTrue;
  v23[8] = &off_27A380;
  v23[9] = &off_27A398;
  v24[8] = &__kCFBooleanTrue;
  v24[9] = &__kCFBooleanTrue;
  v23[10] = &off_27A3B0;
  v23[11] = &off_27A3C8;
  v24[10] = &__kCFBooleanTrue;
  v24[11] = &__kCFBooleanTrue;
  v23[12] = &off_27A3E0;
  v23[13] = &off_27A3F8;
  v24[12] = &__kCFBooleanTrue;
  v24[13] = &__kCFBooleanTrue;
  v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:14];
  v2 = [v17 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchSwitches];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = SCATSwitchSourceSound;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 source];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          v13 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v10 accessibilityEventUsage]);
          v14 = [v2 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v10 accessibilityEventUsage]);
            [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = SCATSoundSwitchSourceController;
  v8 = [(SCATSoundSwitchSourceController *)&v51 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"SOUND_ACTION_PRACTICE_ID"];

  if (v11)
  {
    v12 = objc_alloc_init(SoundActionsPracticeNavigationController);
    v13 = [(SCATSoundSwitchSourceController *)self assetURL];
    [(SoundActionsPracticeNavigationController *)v12 setAssetURL:v13];

    [(SCATSoundSwitchSourceController *)self presentModalViewController:v12 withTransition:3];
    [v6 deselectRowAtIndexPath:v7 animated:1];
    goto LABEL_36;
  }

  v14 = [v9 name];
  v12 = [AXSwitch switchWithAction:0 name:v14 source:SCATSwitchSourceSound type:SCATSwitchTypeOptional];

  [(SoundActionsPracticeNavigationController *)v12 setAccessibilityEventUsagePage:3];
  v15 = [v9 identifier];
  v16 = [v15 isEqualToString:@"SOUND_ACTION_CLICK_ID"];

  if (v16)
  {
    v17 = 1;
LABEL_31:
    [(SoundActionsPracticeNavigationController *)v12 setAccessibilityEventUsage:v17];
    goto LABEL_32;
  }

  v18 = [v9 identifier];
  v19 = [v18 isEqualToString:@"SOUND_ACTION_CLUCK_ID"];

  if (v19)
  {
    v17 = 2;
    goto LABEL_31;
  }

  v20 = [v9 identifier];
  v21 = [v20 isEqualToString:@"SOUND_ACTION_EE_ID"];

  if (v21)
  {
    v17 = 3;
    goto LABEL_31;
  }

  v22 = [v9 identifier];
  v23 = [v22 isEqualToString:@"SOUND_ACTION_EH_ID"];

  if (v23)
  {
    v17 = 4;
    goto LABEL_31;
  }

  v24 = [v9 identifier];
  v25 = [v24 isEqualToString:@"SOUND_ACTION_KK_ID"];

  if (v25)
  {
    v17 = 5;
    goto LABEL_31;
  }

  v26 = [v9 identifier];
  v27 = [v26 isEqualToString:@"SOUND_ACTION_LA_ID"];

  if (v27)
  {
    v17 = 6;
    goto LABEL_31;
  }

  v28 = [v9 identifier];
  v29 = [v28 isEqualToString:@"SOUND_ACTION_MUH_ID"];

  if (v29)
  {
    v17 = 7;
    goto LABEL_31;
  }

  v30 = [v9 identifier];
  v31 = [v30 isEqualToString:@"SOUND_ACTION_OO_ID"];

  if (v31)
  {
    v17 = 8;
    goto LABEL_31;
  }

  v32 = [v9 identifier];
  v33 = [v32 isEqualToString:@"SOUND_ACTION_POP_ID"];

  if (v33)
  {
    v17 = 9;
    goto LABEL_31;
  }

  v34 = [v9 identifier];
  v35 = [v34 isEqualToString:@"SOUND_ACTION_PP_ID"];

  if (v35)
  {
    v17 = 10;
    goto LABEL_31;
  }

  v36 = [v9 identifier];
  v37 = [v36 isEqualToString:@"SOUND_ACTION_SH_ID"];

  if (v37)
  {
    v17 = 11;
    goto LABEL_31;
  }

  v38 = [v9 identifier];
  v39 = [v38 isEqualToString:@"SOUND_ACTION_SS_ID"];

  if (v39)
  {
    v17 = 12;
    goto LABEL_31;
  }

  v40 = [v9 identifier];
  v41 = [v40 isEqualToString:@"SOUND_ACTION_TT_ID"];

  if (v41)
  {
    v17 = 13;
    goto LABEL_31;
  }

  v42 = [v9 identifier];
  v43 = [v42 isEqualToString:@"SOUND_ACTION_UH_ID"];

  if (v43)
  {
    v17 = 14;
    goto LABEL_31;
  }

LABEL_32:
  v44 = +[SCATOnboardingManager sharedInstance];
  if ([v44 inSCATOnboarding])
  {
    v45 = [(SCATSoundSwitchSourceController *)self navigationController];
    [v44 addOnboardingSwitch:v12 navigationController:v45];
  }

  else
  {
    v45 = [[SCATSwitchActionsController alloc] initWithSwitch:v12];
    v46 = [(SCATSoundSwitchSourceController *)self assetURL];
    [(SCATSwitchActionsController *)v45 setAssetURL:v46];

    [(SCATSwitchActionsController *)v45 setParentController:self];
    v47 = [(SCATSoundSwitchSourceController *)self rootController];
    [(SCATSwitchActionsController *)v45 setRootController:v47];

    v48 = AXParameterizedLocalizedString();
    v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)v45 setSpecifier:v49];

    v50 = [(SCATSettingsCompletionController *)self completion];
    [(SCATSettingsCompletionController *)v45 setCompletion:v50];

    [(SCATSoundSwitchSourceController *)self showController:v45 animate:1];
  }

LABEL_36:
}

@end
@interface AVSController
- (AVSController)init;
- (id)adaptiveVoiceShortcutsEnabled:(id)a3;
- (id)createAVSIntroductionGroupSpecifier;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_loadAVSDetailControllerForSpecifier:(id)a3;
- (void)_resetButtonTapped:(id)a3;
- (void)_setUpForSpecifier:(id)a3;
- (void)_updateNavigationBarUI;
- (void)_updateSetupAVSButtonForOneness;
- (void)adaptiveVoiceShortcutsSetEnabled:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AVSController

- (AVSController)init
{
  v5.receiver = self;
  v5.super_class = AVSController;
  v2 = [(AVSController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleContinuityDisplayStateChanged_1, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AVSController;
  [(AVSController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVSController;
  [(AVSController *)&v4 viewWillAppear:a3];
  [(AVSController *)self _updateNavigationBarUI];
}

- (id)specifiers
{
  v3 = +[AVSStore shortcuts];
  v4 = +[NSMutableArray array];
  if ([v3 count])
  {
    v5 = settingsLocString(@"ADAPTIVE_VOICE_SHORTCUTS_TITLE", @"Accessibility");
    v46 = self;
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"adaptiveVoiceShortcutsSetEnabled:specifier:" get:"adaptiveVoiceShortcutsEnabled:" detail:0 cell:6 edit:0];

    v45 = v6;
    [v4 addObject:v6];
    v7 = settingsLocString(@"ADAPTIVE_VOICE_SHORTCUTS_ACTIONS_SECTION_TITLE", @"Accessibility");
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    v44 = v8;
    [v4 addObject:v8];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = v3;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    v10 = PSIDKey;
    if (v9)
    {
      v11 = v9;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          v14 = v4;
          if (*v50 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          v16 = +[AVSTableCell specifier];
          v17 = [v15 associatedShortcutName];
          [v16 setProperty:v17 forKey:@"avsActionName"];

          v18 = settingsLocString(@"ADAPTIVE_VOICE_SHORTCUTS_ACTION", @"Accessibility");
          v19 = [v15 name];
          v20 = [NSString localizedStringWithFormat:v18, v19];
          [v16 setProperty:v20 forKey:@"avsName"];

          v21 = [v15 identifier];
          [v16 setProperty:v21 forKey:v10];

          v22 = [v15 identifier];
          [v16 setProperty:v22 forKey:@"avsIdentifier"];

          v4 = v14;
          [v14 addObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v11);
    }

    v23 = +[PSSpecifier emptyGroupSpecifier];
    [v23 setIdentifier:@"AVSAddNewGroupIdentifier"];
    [v4 addObject:v23];
    v24 = settingsLocString(@"AVS_ADD_BUTTON_TITLE", @"Accessibility");
    self = v46;
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:v46 set:0 get:0 detail:0 cell:13 edit:0];

    [v25 setProperty:@"AVS_ADD_BUTTON_TITLE" forKey:v10];
    [v25 setButtonAction:"_setUpForSpecifier:"];
    v26 = PSAllowMultilineTitleKey;
    [v25 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v27 = +[AXSpringBoardServer server];
    LODWORD(v24) = [v27 isContinuitySessionActive];

    v28 = [NSNumber numberWithBool:v24 ^ 1];
    [v25 setProperty:v28 forKey:PSEnabledKey];

    objc_storeStrong(&v46->_addSpecifier, v25);
    [v4 addObject:v25];
    v29 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:v29];
    if (AXIsInternalInstall())
    {
      v30 = +[PSSpecifier emptyGroupSpecifier];
      [v4 addObject:v30];
      v31 = settingsLocString(@"AVS_RESET", @"Accessibility");
      v32 = [PSSpecifier deleteButtonSpecifierWithName:v31 target:v46 action:"_resetButtonTapped:"];

      [v32 setProperty:&__kCFBooleanTrue forKey:v26];
      [v4 addObject:v32];
    }

    v3 = v47;
  }

  else
  {
    v33 = [(AVSController *)self createAVSIntroductionGroupSpecifier];
    [v4 addObject:v33];
    v34 = settingsLocString(@"AVS_SET_UP_BUTTON_TITLE", @"Accessibility");
    v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v35 setProperty:@"AVS_SET_UP_BUTTON_TITLE" forKey:PSIDKey];
    [v35 setButtonAction:"_setUpForSpecifier:"];
    [v35 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v36 = +[AXSpringBoardServer server];
    LODWORD(v34) = [v36 isContinuitySessionActive];

    v37 = [NSNumber numberWithBool:v34 ^ 1];
    [v35 setProperty:v37 forKey:PSEnabledKey];

    [v4 addObject:v35];
  }

  v38 = OBJC_IVAR___PSListController__specifiers;
  v39 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = v4;
  v40 = v4;

  v41 = *&self->AXUISettingsBaseListController_opaque[v38];
  v42 = v41;

  return v41;
}

- (void)_updateSetupAVSButtonForOneness
{
  v9 = [(AVSController *)self specifierForID:@"AVS_SET_UP_BUTTON_TITLE"];
  v3 = [(AVSController *)self specifierForID:@"AVS_ADD_BUTTON_TITLE"];
  v4 = +[AXSpringBoardServer server];
  v5 = [v4 isContinuitySessionActive];

  v6 = [NSNumber numberWithBool:v5 ^ 1];
  v7 = PSEnabledKey;
  [v9 setProperty:v6 forKey:PSEnabledKey];

  v8 = [NSNumber numberWithBool:v5 ^ 1];
  [v3 setProperty:v8 forKey:v7];

  [(AVSController *)self reloadSpecifier:v9];
  [(AVSController *)self reloadSpecifier:v3];
}

- (void)_loadAVSDetailControllerForSpecifier:(id)a3
{
  v4 = PSIDKey;
  v5 = a3;
  v6 = [v5 propertyForKey:v4];
  v7 = [AVSDetailController alloc];
  v8 = [v5 propertyForKey:PSTitleKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __54__AVSController__loadAVSDetailControllerForSpecifier___block_invoke;
  v10[3] = &unk_2564C0;
  v10[4] = self;
  v9 = [(AVSDetailController *)v7 initWithIdentifier:v6 title:v8 withCompletion:v10];

  [(AVSController *)self showController:v9];
}

id *__54__AVSController__loadAVSDetailControllerForSpecifier___block_invoke(id *result, int a2)
{
  if (a2)
  {
    return [result[4] reloadSpecifiers];
  }

  return result;
}

- (id)createAVSIntroductionGroupSpecifier
{
  v2 = +[PSSpecifier emptyGroupSpecifier];
  v3 = AXLocStringKeyForModel();
  v18 = settingsLocString(v3, @"Accessibility");

  [v2 setProperty:v18 forKey:PSFooterTextGroupKey];
  [v2 setObject:@"Accessibility" forKeyedSubscript:@"table"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setObject:v5 forKeyedSubscript:PSFooterCellClassGroupKey];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundlePath];
  [v2 setObject:v7 forKeyedSubscript:@"bundlePath"];

  v8 = AXLocStringKeyForModel();
  v26 = @"contentLabel";
  v27 = v8;
  v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v28[0] = v17;
  v24[0] = @"moreLabel";
  v24[1] = @"additionalTitleLabel";
  v25[0] = @"AVS_FOOTER_LEARN_MORE";
  v25[1] = @"AVS_FOOTER_LEARN_MORE_TITLE";
  v25[2] = v8;
  v24[2] = @"additionalSubtitleLabel";
  v24[3] = @"additionalContent";
  v23[0] = &off_27D530;
  v23[1] = &off_27D558;
  v23[2] = &off_27D580;
  v21 = @"headerLabel";
  v9 = AXLocStringKeyForModel();
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v23[3] = v10;
  v23[4] = &off_27D5A8;
  v23[5] = &off_27D5D0;
  v19 = @"headerLabel";
  v11 = AXLocStringKeyForModel();
  v20 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v23[6] = v12;
  v13 = [NSArray arrayWithObjects:v23 count:7];
  v25[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
  v28[1] = v14;
  v15 = [NSArray arrayWithObjects:v28 count:2];
  [v2 setObject:v15 forKeyedSubscript:@"content"];

  return v2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = AVSController;
  [(AVSController *)&v4 tableView:a3 didSelectRowAtIndexPath:a4];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(AVSController *)self specifierForIndexPath:a4];
  v8 = [v7 propertyForKey:@"avsIdentifier"];
  if (v8)
  {
    v9 = [v6 isEditing];

    v8 = v9;
  }

  return v8;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v16 = v5;
    v17 = v6;
    v8 = [(AVSController *)self specifierForIndexPath:a5];
    v9 = objc_alloc_init(AVSStore);
    v10 = [v8 identifier];
    [v9 deleteShortcutWithIdentifier:v10];

    [(AVSController *)self removeSpecifier:v8 animated:1];
    [(AVSController *)self _updateNavigationBarUI];
    v11 = +[AVSStore shortcuts];
    v12 = [v11 count];

    if (!v12)
    {
      v13 = AXLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Turning off AVS because there are no shortcuts left", buf, 2u);
      }

      v14 = +[AXSettings sharedInstance];
      [v14 setAdaptiveVoiceShortcutsEnabled:0 source:AXVocalShortcutsSettingsEventSourceSettingsApp];

      [(AVSController *)self reloadSpecifiers];
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }
}

- (void)_setUpForSpecifier:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __36__AVSController__setUpForSpecifier___block_invoke;
  v5[3] = &unk_2553B0;
  v5[4] = self;
  v4 = [_TtC21AccessibilitySettings31AVSEnrollmentCoordinatorFactory createWithCompletionHandler:v5];
  [(AVSController *)self presentViewController:v4 animated:1 completion:0];
}

id __36__AVSController__setUpForSpecifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _updateNavigationBarUI];
}

- (void)_updateNavigationBarUI
{
  v9 = +[AVSStore shortcuts];
  if ([v9 count])
  {
    v3 = [(AVSController *)self isEditing];
    v4 = objc_allocWithZone(UIBarButtonItem);
    if (v3)
    {
      v5 = "_doneNavigationButtonTapped:";
      v6 = 0;
    }

    else
    {
      v5 = "_editNavigationButtonTapped:";
      v6 = 2;
    }

    v7 = [v4 initWithBarButtonSystemItem:v6 target:self action:v5];
    v8 = [(AVSController *)self navigationItem];
    [v8 setRightBarButtonItem:v7];
  }

  else
  {
    v7 = [(AVSController *)self navigationItem];
    [v7 setRightBarButtonItem:0];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVSController;
  [AVSController setEditing:"setEditing:animated:" animated:?];
  [(AVSController *)self _updateNavigationBarUI];
  if (v5)
  {
    [(AVSController *)self removeSpecifier:self->_addSpecifier animated:v4];
  }

  else
  {
    v7 = +[AVSStore shortcuts];
    v8 = [v7 count];

    if (v8)
    {
      [(AVSController *)self insertSpecifier:self->_addSpecifier afterSpecifierID:@"AVSAddNewGroupIdentifier" animated:v4];
    }
  }
}

- (id)adaptiveVoiceShortcutsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 isAdaptiveVoiceShortcutsEnabled];

  return [NSNumber numberWithBool:v4];
}

- (void)adaptiveVoiceShortcutsSetEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAdaptiveVoiceShortcutsEnabled:v4 source:AXVocalShortcutsSettingsEventSourceSettingsApp];
}

- (void)_resetButtonTapped:(id)a3
{
  v4 = objc_alloc_init(AVSStore);
  [v4 deleteAllShortcuts];
  [(AVSController *)self reloadSpecifiers];
  [(AVSController *)self _updateNavigationBarUI];
}

@end
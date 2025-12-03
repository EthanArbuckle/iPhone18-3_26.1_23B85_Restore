@interface VoiceOverCommandDetailsViewController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addGestureButtonTapped:(id)tapped;
- (void)_addKeyboardShortcutButtonTapped:(id)tapped;
- (void)_addKeyboardShortcutWithSpecifier:(id)specifier resolver:(id)resolver;
- (void)_addQuickNavShortcutButtonTapped:(id)tapped;
- (void)_addSpecifiersForShortcuts:(id)shortcuts toSpecifiers:(id)specifiers commandManager:(id)manager resolver:(id)resolver;
- (void)_finishEditingIfNeeded;
- (void)_updateNavigationBarUI;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverCommandDetailsViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VoiceOverCommandDetailsViewController;
  [(VoiceOverCommandDetailsViewController *)&v4 viewWillAppear:appear];
  [(VoiceOverCommandDetailsViewController *)self _updateNavigationBarUI];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v18.receiver = self;
  v18.super_class = VoiceOverCommandDetailsViewController;
  [(VoiceOverCommandDetailsViewController *)&v18 setEditing:editing animated:animated];
  [(VoiceOverCommandDetailsViewController *)self _updateNavigationBarUI];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_addItemSpecifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = PSEnabledKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [NSNumber numberWithInt:!editingCopy, v14];
        [v12 setProperty:v13 forKey:v10];

        [(VoiceOverCommandDetailsViewController *)self reloadSpecifier:v12 animated:1];
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_24;
  }

  v48 = OBJC_IVAR___PSListController__specifiers;
  v4 = objc_opt_new();
  v51 = objc_opt_new();
  v5 = OBJC_IVAR___PSViewController__specifier;
  voCommandManager = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  voCommandContext = [*&self->AXUISettingsBaseListController_opaque[v5] voCommandContext];
  command = [voCommandContext command];

  voCommandResolver = [*&self->AXUISettingsBaseListController_opaque[v5] voCommandResolver];
  v9 = _AXSTripleClickCopyOptions();
  if (_AXSTripleClickContainsOption())
  {
    v10 = 1;
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = _AXSZoomTouchEnabled() != 0;
  if (v9)
  {
LABEL_4:
    CFRelease(v9);
  }

LABEL_5:
  v11 = settingsLocString(@"vo.touch.gestures", @"VoiceOverSettings");
  v12 = [PSSpecifier groupSpecifierWithName:v11];

  if (v10 && [voCommandManager commandHasModifiedBindingsWhenZoomEnabled:command withResolver:voCommandResolver])
  {
    v13 = settingsLocString(@"vo.touch.gestures.zoom.conflict", @"VoiceOverSettings");
    [v12 setProperty:v13 forKey:PSFooterTextGroupKey];
  }

  selfCopy = self;
  v52 = v12;
  [v4 addObject:v12];
  v14 = voCommandManager;
  v50 = command;
  [voCommandManager gestureBindingsForCommand:command withResolver:voCommandResolver];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v15 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v57;
    v19 = PSEnabledKey;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v56 + 1) + 8 * i);
        v22 = [v14 availabilityForGesture:v21 withResolver:voCommandResolver];
        if (v22 != &dword_0 + 2)
        {
          v23 = v22;
          v24 = [PSSpecifier voGestureItem:v21 commandManager:v14 resolver:voCommandResolver];

          v25 = [NSNumber numberWithUnsignedInteger:v23];
          voCommandContext2 = [v24 voCommandContext];
          [voCommandContext2 setBindingAvailability:v25];

          v27 = [NSNumber numberWithInt:v23 == 0];
          [v24 setProperty:v27 forKey:v19];

          v14 = voCommandManager;
          [v4 addObject:v24];
          v17 = v24;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v28 = v14;
  v29 = settingsLocString(@"vo.add.gesture", @"VoiceOverSettings");
  v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

  v31 = v50;
  v32 = [VOCommandContext genericContextWithCommandManager:v14 command:v50 resolver:voCommandResolver];
  [v30 setVoCommandContext:v32];

  [v30 setButtonAction:"_addGestureButtonTapped:"];
  [v4 addObject:v30];
  [(NSArray *)v51 addObject:v30];
  v33 = settingsLocString(@"vo.keyboard.shortcuts", @"VoiceOverSettings");
  v34 = [PSSpecifier groupSpecifierWithName:v33];

  v35 = voiceOverLocalizedStringForKeyboardShortcutsFooterText();
  [v34 setProperty:v35 forKey:PSFooterTextGroupKey];

  v53 = v34;
  [v4 addObject:v34];
  v47 = [v28 shortcutBindingsForCommand:v50 withResolver:voCommandResolver];
  [VoiceOverCommandDetailsViewController _addSpecifiersForShortcuts:selfCopy toSpecifiers:"_addSpecifiersForShortcuts:toSpecifiers:commandManager:resolver:" commandManager:? resolver:?];
  v36 = settingsLocString(@"vo.add.keyboard.shortcut", @"VoiceOverSettings");
  v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

  v38 = [VOCommandContext genericContextWithCommandManager:v28 command:v50 resolver:voCommandResolver];
  [v37 setVoCommandContext:v38];

  [v37 setButtonAction:"_addKeyboardShortcutButtonTapped:"];
  [v4 addObject:v37];
  [(NSArray *)v51 addObject:v37];
  v39 = [voCommandResolver copy];
  [v39 setKeyboardMode:1];
  v40 = [v28 shortcutBindingsForCommand:v50 withResolver:v39];
  if ([v40 count])
  {
    v41 = settingsLocString(@"vo.quicknav.shortcuts", @"VoiceOverSettings");
    v42 = [PSSpecifier groupSpecifierWithName:v41];

    v31 = v50;
    [v4 addObject:v42];
    [(VoiceOverCommandDetailsViewController *)selfCopy _addSpecifiersForShortcuts:v40 toSpecifiers:v4 commandManager:v28 resolver:v39];
    v53 = v42;
  }

  v43 = *&selfCopy->AXUISettingsBaseListController_opaque[v48];
  *&selfCopy->AXUISettingsBaseListController_opaque[v48] = v4;
  v44 = v4;

  addItemSpecifiers = selfCopy->_addItemSpecifiers;
  selfCopy->_addItemSpecifiers = v51;

  v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v48];
LABEL_24:

  return v3;
}

- (void)_addSpecifiersForShortcuts:(id)shortcuts toSpecifiers:(id)specifiers commandManager:(id)manager resolver:(id)resolver
{
  shortcutsCopy = shortcuts;
  specifiersCopy = specifiers;
  managerCopy = manager;
  resolverCopy = resolver;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = shortcutsCopy;
  v12 = [shortcutsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v28;
    v24 = PSEnabledKey;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [managerCopy availabilityForShortcut:v17 withResolver:resolverCopy];
        if (v18 != &dword_0 + 2)
        {
          v19 = v18;
          v20 = [VOCommandContext keyboardShortcutContextWithKeyChord:v17 commandManager:managerCopy resolver:resolverCopy];
          v21 = [NSNumber numberWithUnsignedInteger:v19];
          [v20 setBindingAvailability:v21];

          v22 = [PSSpecifier voKeyboardShortcutItem:v20 commandManager:managerCopy resolver:resolverCopy];

          v23 = [NSNumber numberWithInt:v19 == 0];
          [v22 setProperty:v23 forKey:v24];

          [specifiersCopy addObject:v22];
          v14 = v22;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverCommandDetailsViewController *)self specifierForIndexPath:path];
  v5 = [v4 voBindingAvailability] == 0;

  return v5;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverCommandDetailsViewController *)self specifierForIndexPath:path];
  v5 = [v4 voBindingAvailability] == 0;

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v50[2] = v8;
    v50[3] = v7;
    v50[14] = v5;
    v50[15] = v6;
    v10 = [(VoiceOverCommandDetailsViewController *)self specifierForIndexPath:path];
    voCommandResolver = [v10 voCommandResolver];
    voCommandContext = [v10 voCommandContext];
    commandManager = [voCommandContext commandManager];
    voCommandContext2 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
    command = [voCommandContext2 command];

    if (!v10 || !voCommandContext || !commandManager || !command || ![voCommandContext itemType])
    {
      goto LABEL_12;
    }

    itemType = [voCommandContext itemType];
    if ((itemType - 3) >= 2)
    {
      if (itemType != &dword_0 + 2)
      {
LABEL_12:

        return;
      }

      [voCommandContext gesture];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v47[3] = &unk_255A48;
      v25 = v21 = &v48;
      v48 = v25;
      v32 = &v49;
      v27 = command;
      v49 = v27;
      v31 = v50;
      v26 = voCommandResolver;
      v50[0] = v26;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2;
      v42[3] = &unk_255A70;
      v42[4] = self;
      v30 = &v43;
      v43 = v10;
      v44 = v25;
      v28 = &v45;
      v29 = &v44;
      v45 = v27;
      v20 = &v46;
      v46 = v26;
      v22 = v25;
      v23 = v47;
      v24 = v42;
    }

    else
    {
      [voCommandContext keyChord];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_315;
      v17 = v38[3] = &unk_255A48;
      v39 = v17;
      v32 = &v40;
      v18 = command;
      v40 = v18;
      v31 = &v41;
      v19 = voCommandResolver;
      v41 = v19;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2_316;
      v33[3] = &unk_255A70;
      v33[4] = self;
      v30 = &v34;
      v34 = v10;
      v35 = v17;
      v28 = &v36;
      v29 = &v35;
      v36 = v18;
      v20 = &v37;
      v21 = &v39;
      v37 = v19;
      v22 = v17;
      v23 = v38;
      v24 = v33;
    }

    [commandManager batchUpdateActiveProfile:v23 saveIfSuccessful:1 completion:v24];

    goto LABEL_12;
  }
}

void __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VOTLogCommands();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
    [*(a1 + 32) _finishEditingIfNeeded];
  }
}

void __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2_316(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VOTLogCommands();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__VoiceOverCommandDetailsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2_316_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
    [*(a1 + 32) _finishEditingIfNeeded];
  }
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  [(VoiceOverCommandDetailsViewController *)self setEditing:1 animated:1];

  [(VoiceOverCommandDetailsViewController *)self _updateNavigationBarUI];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  [(VoiceOverCommandDetailsViewController *)self setEditing:0 animated:1];

  [(VoiceOverCommandDetailsViewController *)self _updateNavigationBarUI];
}

- (void)_finishEditingIfNeeded
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  voCommandManager = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  voCommandContext = [*&self->AXUISettingsBaseListController_opaque[v3] voCommandContext];
  command = [voCommandContext command];
  voCommandResolver = [*&self->AXUISettingsBaseListController_opaque[v3] voCommandResolver];
  v7 = [voCommandManager commandHasAnyBindings:command withResolver:voCommandResolver];

  if ((v7 & 1) == 0)
  {
    [(VoiceOverCommandDetailsViewController *)self setEditing:0 animated:1];
  }
}

- (void)_updateNavigationBarUI
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  voCommandManager = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  voCommandContext = [*&self->AXUISettingsBaseListController_opaque[v3] voCommandContext];
  command = [voCommandContext command];
  voCommandResolver = [*&self->AXUISettingsBaseListController_opaque[v3] voCommandResolver];
  v7 = [voCommandManager commandHasAnyBindings:command withResolver:voCommandResolver];

  if (v7)
  {
    isEditing = [(VoiceOverCommandDetailsViewController *)self isEditing];
    v9 = objc_allocWithZone(UIBarButtonItem);
    if (isEditing)
    {
      v10 = "_doneNavigationButtonTapped:";
      v11 = 0;
    }

    else
    {
      v10 = "_editNavigationButtonTapped:";
      v11 = 2;
    }

    navigationItem2 = [v9 initWithBarButtonSystemItem:v11 target:self action:v10];
    navigationItem = [(VoiceOverCommandDetailsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem2];
  }

  else
  {
    navigationItem2 = [(VoiceOverCommandDetailsViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)_addGestureButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  voCommandResolver = [tappedCopy voCommandResolver];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke;
  v12[3] = &unk_258958;
  v6 = tappedCopy;
  v13 = v6;
  v7 = voCommandResolver;
  v14 = v7;
  objc_copyWeak(&v15, &location);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke_324;
  v10[3] = &unk_255388;
  objc_copyWeak(&v11, &location);
  v8 = [VoiceOverGesturePickerPresenter presenterWithSpecifier:v6 selectionBlock:v12 cancelBlock:v10];
  gesturePickerPresenter = self->_gesturePickerPresenter;
  self->_gesturePickerPresenter = v8;

  [(VoiceOverGesturePickerPresenter *)self->_gesturePickerPresenter presentWithController:self];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a1[4] voCommandManager];
  v10 = a1[5];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke_2;
  v14[3] = &unk_258930;
  objc_copyWeak(&v18, a1 + 6);
  v12 = v7;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  v17 = a1[5];
  [v9 applyAction:a4 toCommand:v13 withGesture:v12 keyboardShortcut:0 resolver:v10 presentationController:WeakRetained completion:v14];

  objc_destroyWeak(&v18);
}

void __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VOTLogCommands();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke_2_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained reloadSpecifiers];
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    v6 = WeakRetained[19];
    WeakRetained[19] = 0;

    [WeakRetained _updateNavigationBarUI];
  }
}

void __65__VoiceOverCommandDetailsViewController__addGestureButtonTapped___block_invoke_324(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  v1 = WeakRetained[19];
  WeakRetained[19] = 0;
}

- (void)_addKeyboardShortcutWithSpecifier:(id)specifier resolver:(id)resolver
{
  specifierCopy = specifier;
  resolverCopy = resolver;
  objc_initWeak(&location, self);
  v8 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke;
  v22[3] = &unk_258980;
  v9 = v8;
  v23 = v9;
  v10 = specifierCopy;
  v24 = v10;
  v11 = resolverCopy;
  v25 = v11;
  objc_copyWeak(&v26, &location);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke_328;
  v20 = &unk_255388;
  objc_copyWeak(&v21, &location);
  v12 = [AXKeyboardShortcutEntryPresenter presenterWithSpecifier:v10 selectionBlock:v22 cancelBlock:&v17];
  keyboardShortcutEntryPresenter = self->_keyboardShortcutEntryPresenter;
  self->_keyboardShortcutEntryPresenter = v12;

  [(AXKeyboardShortcutEntryPresenter *)self->_keyboardShortcutEntryPresenter setFilteredKeyModifiers:22, v17, v18, v19, v20];
  v14 = self->_keyboardShortcutEntryPresenter;
  voCommandContext = [v10 voCommandContext];
  keyChord = [voCommandContext keyChord];
  [(AXKeyboardShortcutEntryPresenter *)v14 presentWithController:self initialKeyChord:keyChord];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);
}

void __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] voCommandContext];
  v5 = [v4 command];

  v6 = [a1[5] voCommandManager];
  v7 = a1[6];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke_2;
  v11[3] = &unk_258930;
  objc_copyWeak(&v15, a1 + 7);
  v9 = v3;
  v12 = v9;
  v10 = v5;
  v13 = v10;
  v14 = a1[6];
  [v6 applyAction:3 toCommand:v10 withGesture:0 keyboardShortcut:v9 resolver:v7 presentationController:WeakRetained completion:v11];

  objc_destroyWeak(&v15);
}

void __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VOTLogCommands();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke_2_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained reloadSpecifiers];
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    v6 = WeakRetained[18];
    WeakRetained[18] = 0;

    [WeakRetained _updateNavigationBarUI];
  }
}

void __84__VoiceOverCommandDetailsViewController__addKeyboardShortcutWithSpecifier_resolver___block_invoke_328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  v1 = WeakRetained[18];
  WeakRetained[18] = 0;
}

- (void)_addKeyboardShortcutButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[VOSCommandResolver resolverForCurrentHost];
  [(VoiceOverCommandDetailsViewController *)self _addKeyboardShortcutWithSpecifier:tappedCopy resolver:v5];
}

- (void)_addQuickNavShortcutButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[VOSCommandResolver resolverForCurrentHost];
  [v5 setKeyboardMode:1];
  [(VoiceOverCommandDetailsViewController *)self _addKeyboardShortcutWithSpecifier:tappedCopy resolver:v5];
}

@end
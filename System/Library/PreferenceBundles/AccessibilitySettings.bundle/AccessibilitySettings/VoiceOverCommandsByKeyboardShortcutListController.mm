@interface VoiceOverCommandsByKeyboardShortcutListController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (id)_keyboardShortcutValueForSpecifier:(id)specifier;
- (id)makeSpecifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_finishEditingIfNeeded;
- (void)_modifyKeyboardShortcutWithSpecifier:(id)specifier resolver:(id)resolver;
- (void)_updateNavigationBarUI;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverCommandsByKeyboardShortcutListController

- (id)makeSpecifiers
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  voCommandResolver = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandResolver];
  v33 = v3;
  selfCopy = self;
  voCommandContext = [*&self->AXUISettingsSearchableBaseListController_opaque[v3] voCommandContext];
  commandManager = [voCommandContext commandManager];

  v7 = objc_opt_new();
  v8 = settingsLocString(@"vo.keyboard.shortcuts", @"VoiceOverSettings");
  v9 = [PSSpecifier groupSpecifierWithName:v8];

  v28 = v9;
  [v7 addObject:v9];
  [commandManager userPresentableAllShortcutBindingsWithResolver:voCommandResolver];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v37;
    v31 = PSEnabledKey;
    v32 = voCommandResolver;
    v29 = v7;
    v30 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [commandManager availabilityForShortcut:v15 withResolver:voCommandResolver];
        if (v16 != &dword_0 + 2)
        {
          v17 = v16;
          v18 = [VOCommandContext keyboardShortcutContextWithKeyChord:v15 commandManager:commandManager resolver:voCommandResolver];
          v19 = [commandManager commandForKeyChord:v15 withResolver:voCommandResolver];
          [v18 setCommand:v19];

          v20 = [NSNumber numberWithUnsignedInteger:v17];
          [v18 setBindingAvailability:v20];

          voCommandContext2 = [*&selfCopy->AXUISettingsSearchableBaseListController_opaque[v33] voCommandContext];
          [voCommandContext2 resolver];
          v23 = v22 = v11;
          v24 = [PSSpecifier voKeyboardShortcutBindingItem:v18 commandManager:commandManager resolver:v23];

          v11 = v22;
          v25 = [NSNumber numberWithInt:v17 == 0];
          [v24 setProperty:v25 forKey:v31];

          v7 = v29;
          v13 = v30;
          voCommandResolver = v32;
          objc_storeWeak(&v24[OBJC_IVAR___PSSpecifier_target], selfCopy);
          *&v24[OBJC_IVAR___PSSpecifier_getter] = "_keyboardShortcutValueForSpecifier:";
          [v29 addObject:v24];

          v12 = v24;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v26 = v7;

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VoiceOverCommandsByKeyboardShortcutListController;
  [(VoiceOverCommandsByKeyboardShortcutListController *)&v4 viewWillAppear:appear];
  [(VoiceOverCommandsByKeyboardShortcutListController *)self _updateNavigationBarUI];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = VoiceOverCommandsByKeyboardShortcutListController;
  [(VoiceOverCommandsByKeyboardShortcutListController *)&v5 setEditing:editing animated:animated];
  [(VoiceOverCommandsByKeyboardShortcutListController *)self _updateNavigationBarUI];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(VoiceOverCommandsByKeyboardShortcutListController *)self specifierAtIndexPath:pathCopy];

  v7 = +[VOSCommandResolver resolverForCurrentHost];
  [(VoiceOverCommandsByKeyboardShortcutListController *)self _modifyKeyboardShortcutWithSpecifier:v8 resolver:v7];
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverCommandsByKeyboardShortcutListController *)self specifierForIndexPath:path];
  v5 = [v4 voBindingAvailability] == 0;

  return v5;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverCommandsByKeyboardShortcutListController *)self specifierForIndexPath:path];
  v5 = [v4 voBindingAvailability] == 0;

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v26 = v8;
    v27 = v7;
    v28 = v5;
    v29 = v6;
    v10 = [(VoiceOverCommandsByKeyboardShortcutListController *)self specifierForIndexPath:path];
    voCommandResolver = [v10 voCommandResolver];
    voCommandContext = [v10 voCommandContext];
    commandManager = [voCommandContext commandManager];
    voCommandContext2 = [v10 voCommandContext];
    command = [voCommandContext2 command];

    if (v10 && voCommandContext && commandManager && command && [voCommandContext itemType] && objc_msgSend(voCommandContext, "itemType") - 3 <= &dword_0 + 1)
    {
      [voCommandContext keyChord];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __100__VoiceOverCommandsByKeyboardShortcutListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
      v23 = v22[3] = &unk_255A48;
      v24 = command;
      v25 = voCommandResolver;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __100__VoiceOverCommandsByKeyboardShortcutListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2;
      v17[3] = &unk_255A70;
      v17[4] = self;
      v18 = v10;
      v19 = v23;
      v20 = v24;
      v21 = v25;
      v16 = v23;
      [commandManager batchUpdateActiveProfile:v22 saveIfSuccessful:1 completion:v17];
    }
  }
}

void __100__VoiceOverCommandsByKeyboardShortcutListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VOTLogCommands();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __100__VoiceOverCommandsByKeyboardShortcutListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2_cold_1(a1, v3, v4);
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
  [(VoiceOverCommandsByKeyboardShortcutListController *)self setEditing:1 animated:1];

  [(VoiceOverCommandsByKeyboardShortcutListController *)self _updateNavigationBarUI];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  [(VoiceOverCommandsByKeyboardShortcutListController *)self setEditing:0 animated:1];

  [(VoiceOverCommandsByKeyboardShortcutListController *)self _updateNavigationBarUI];
}

- (void)_modifyKeyboardShortcutWithSpecifier:(id)specifier resolver:(id)resolver
{
  specifierCopy = specifier;
  resolverCopy = resolver;
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke;
  v17[3] = &unk_255AE8;
  v8 = specifierCopy;
  v18 = v8;
  v9 = resolverCopy;
  v19 = v9;
  objc_copyWeak(&v20, &location);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_301;
  v15[3] = &unk_255388;
  objc_copyWeak(&v16, &location);
  v10 = [AXKeyboardShortcutEntryPresenter presenterWithSpecifier:v8 selectionBlock:v17 cancelBlock:v15];
  keyboardShortcutEntryPresenter = self->_keyboardShortcutEntryPresenter;
  self->_keyboardShortcutEntryPresenter = v10;

  [(AXKeyboardShortcutEntryPresenter *)self->_keyboardShortcutEntryPresenter setFilteredKeyModifiers:22];
  v12 = self->_keyboardShortcutEntryPresenter;
  voCommandContext = [v8 voCommandContext];
  keyChord = [voCommandContext keyChord];
  [(AXKeyboardShortcutEntryPresenter *)v12 presentWithController:self initialKeyChord:keyChord];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
}

void __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] voCommandContext];
  v5 = [v4 command];

  v6 = [a1[4] voCommandContext];
  v7 = [v6 keyChord];

  v8 = [a1[4] voCommandManager];
  v9 = a1[5];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_2;
  v13[3] = &unk_255AC0;
  v14 = a1[4];
  v11 = v5;
  v15 = v11;
  v12 = v3;
  v16 = v12;
  v17 = a1[5];
  objc_copyWeak(&v18, a1 + 6);
  [v8 applyAction:4 toCommand:v11 withGesture:0 keyboardShortcut:v7 resolver:v9 presentationController:WeakRetained completion:v13];

  objc_destroyWeak(&v18);
}

void __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) voCommandManager];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_3;
  v9[3] = &unk_255A98;
  objc_copyWeak(&v10, (a1 + 64));
  [v4 applyAction:3 toCommand:v5 withGesture:0 keyboardShortcut:v6 resolver:v7 presentationController:WeakRetained completion:v9];

  objc_destroyWeak(&v10);
}

void __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = VOTLogCommands();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_3_cold_1(v3, WeakRetained);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setNeedsSpecifierRefresh];
    [WeakRetained reloadSpecifiers];
    [(objc_class *)WeakRetained[18].isa dismissViewController];
    isa = WeakRetained[18].isa;
    WeakRetained[18].isa = 0;

    [WeakRetained _updateNavigationBarUI];
  }
}

void __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_301(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[18] dismissViewController];
  v1 = WeakRetained[18];
  WeakRetained[18] = 0;
}

- (void)_finishEditingIfNeeded
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  voCommandManager = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  voCommandResolver = [*&self->AXUISettingsSearchableBaseListController_opaque[v3] voCommandResolver];
  v5 = [voCommandManager allShortcutBindingsWithResolver:voCommandResolver];
  v6 = [v5 count];

  if (!v6)
  {
    [(VoiceOverCommandsByKeyboardShortcutListController *)self setEditing:0 animated:1];
  }
}

- (void)_updateNavigationBarUI
{
  isEditing = [(VoiceOverCommandsByKeyboardShortcutListController *)self isEditing];
  v4 = objc_allocWithZone(UIBarButtonItem);
  if (isEditing)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = &selRef__doneNavigationButtonTapped_;
  if (!isEditing)
  {
    v6 = &selRef__editNavigationButtonTapped_;
  }

  v8 = [v4 initWithBarButtonSystemItem:v5 target:self action:*v6];
  navigationItem = [(VoiceOverCommandsByKeyboardShortcutListController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];
}

- (id)_keyboardShortcutValueForSpecifier:(id)specifier
{
  voCommandContext = [specifier voCommandContext];
  keyChord = [voCommandContext keyChord];
  accessibilitySpeakableDisplayValue = [keyChord accessibilitySpeakableDisplayValue];

  return accessibilitySpeakableDisplayValue;
}

void __100__VoiceOverCommandsByKeyboardShortcutListController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2_cold_1(void *a1, uint64_t a2, os_log_t log)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = 138413058;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to batch remove keyChord '%@' from command '%@' with '%@'. %@", &v6, 0x2Au);
}

void __99__VoiceOverCommandsByKeyboardShortcutListController__modifyKeyboardShortcutWithSpecifier_resolver___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Modify keyboard shortcut failed: %@", &v2, 0xCu);
}

@end
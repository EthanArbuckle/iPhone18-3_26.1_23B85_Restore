@interface SCATSwitchActionsController
- (BOOL)_popToActionTypeController;
- (SCATSwitchActionsController)initWithSwitch:(id)switch;
- (id)_actionSpecifiersWithActions:(id)actions;
- (id)_rootSwitchesController;
- (id)_shortcutSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_cellAccessoryTypeForSpecifier:(id)specifier;
- (void)_rootSwitchesController;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATSwitchActionsController

- (void)dealloc
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  [v3 unregisterShortcutsDidChangeBlock:self->_siriShortcutToken];

  v4.receiver = self;
  v4.super_class = SCATSwitchActionsController;
  [(SCATSwitchActionsController *)&v4 dealloc];
}

- (id)_shortcutSpecifiers
{
  v3 = objc_opt_new();
  v4 = +[AXSiriShortcutsManager sharedManager];
  shortcuts = [v4 shortcuts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = shortcuts;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = PSEnabledKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        shortcutName = [v11 shortcutName];
        v13 = [PSSpecifier preferenceSpecifierNamed:shortcutName target:self set:0 get:0 detail:0 cell:3 edit:0];

        identifier = [v11 identifier];
        [v13 setProperty:identifier forKey:@"ShortcutActionKey"];

        [v13 setProperty:&__kCFBooleanTrue forKey:v9];
        [v3 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)_actionSpecifiersWithActions:(id)actions
{
  actionsCopy = actions;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [actionsCopy count]);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __60__SCATSwitchActionsController__actionSpecifiersWithActions___block_invoke;
  v9[3] = &unk_257CD0;
  v5 = v9[4] = self;
  v10 = v5;
  [actionsCopy enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __60__SCATSwitchActionsController__actionSpecifiersWithActions___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) disallowedActions];
  v4 = [v3 containsObject:v7];

  if ((v4 & 1) == 0)
  {
    [v7 integerValue];
    v5 = SCATLocStringForAction();
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

    [v6 setProperty:v7 forKey:@"ActionKey"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [*(a1 + 40) addObject:v6];
  }
}

- (id)_rootSwitchesController
{
  selfCopy = self;
  navigationController = [(SCATSwitchActionsController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v25 = navigationController;
    v26 = viewControllers;
    v23 = selfCopy;
    v24 = *v32;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([(SCATSwitchActionsController *)v10 isMemberOfClass:objc_opt_class()])
        {
          v22 = v10;
LABEL_22:

          navigationController = v25;
          goto LABEL_27;
        }

        childViewControllers = [(SCATSwitchActionsController *)v10 childViewControllers];
        v12 = [childViewControllers count];

        if (v12)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          childViewControllers2 = [(SCATSwitchActionsController *)v10 childViewControllers];
          v14 = [childViewControllers2 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            while (2)
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(childViewControllers2);
                }

                if ([*(*(&v27 + 1) + 8 * j) isMemberOfClass:objc_opt_class()])
                {
                  v19 = v10;

                  viewControllers = v26;
                  goto LABEL_22;
                }
              }

              v15 = [childViewControllers2 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          viewControllers = v26;
          v8 = v24;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v36 count:16];
      navigationController = v25;
      selfCopy = v23;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([viewControllers count] < 3)
  {
    v20 = AXLogSettings();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(SCATSwitchActionsController *)selfCopy _rootSwitchesController];
    }

    v18 = selfCopy;
  }

  else
  {
    v18 = [viewControllers objectAtIndexedSubscript:2];
  }

  v10 = v18;
LABEL_27:

  return v10;
}

- (BOOL)_popToActionTypeController
{
  navigationController = [(SCATSwitchActionsController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers indexOfObjectPassingTest:&__block_literal_global_77];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    viewControllers2 = [navigationController viewControllers];
    v7 = [viewControllers2 mutableCopy];

    v8 = [SCATSwitchActionTypeController alloc];
    storedSwitch = [(SCATSwitchActionsController *)self storedSwitch];
    v10 = [(SCATSwitchActionTypeController *)v8 initWithSwitch:storedSwitch];

    storedSwitch2 = [(SCATSwitchActionsController *)self storedSwitch];
    name = [storedSwitch2 name];
    v13 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionTypeController *)v10 setSpecifier:v13];

    [v7 insertObject:v10 atIndex:v5 + 1];
    [navigationController setViewControllers:v7 animated:0];
    navigationController2 = [(SCATSwitchActionsController *)self navigationController];
    v15 = [navigationController2 popToViewController:v10 animated:1];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __57__SCATSwitchActionsController__popToActionTypeController__block_invoke(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

- (SCATSwitchActionsController)initWithSwitch:(id)switch
{
  switchCopy = switch;
  v14.receiver = self;
  v14.super_class = SCATSwitchActionsController;
  v5 = [(SCATSwitchActionsController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(SCATSwitchActionsController *)v5 setPopToRootSwitchViewControlAfterSelection:1];
    [(SCATSwitchActionsController *)v6 setStoredSwitch:switchCopy];
    objc_initWeak(&location, v6);
    v7 = +[AXSiriShortcutsManager sharedManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __46__SCATSwitchActionsController_initWithSwitch___block_invoke;
    v11[3] = &unk_256718;
    objc_copyWeak(&v12, &location);
    v8 = [v7 registerShortcutsDidChangeBlock:v11];
    siriShortcutToken = v6->_siriShortcutToken;
    v6->_siriShortcutToken = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __46__SCATSwitchActionsController_initWithSwitch___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v38 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_opt_new();
    storedSwitch = [(SCATSwitchActionsController *)self storedSwitch];
    source = [storedSwitch source];
    v7 = [source isEqualToString:SCATSwitchSourceSound];

    if (v7)
    {
      v8 = +[PSSpecifier emptyGroupSpecifier];
      v9 = settingsLocString(@"SOUND_ACTION_PRACTICE_FOOTER", @"Accessibility");
      [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

      [v4 addObject:v8];
      v10 = settingsLocString(@"SOUND_ACTION_PRACTICE_TITLE", @"Accessibility");
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v11 setIdentifier:@"SOUND_ACTION_PRACTICE_ID"];
      [v4 addObject:v11];
    }

    footerTextSpecifier = [(SCATSwitchActionsController *)self footerTextSpecifier];

    if (!footerTextSpecifier)
    {
      v13 = +[PSSpecifier emptyGroupSpecifier];
      v14 = AXParameterizedLocalizedString();
      [v13 setProperty:v14 forKey:PSFooterTextGroupKey];

      [(SCATSwitchActionsController *)self setFooterTextSpecifier:v13];
      [v4 addObject:v13];
    }

    if ([(SCATSwitchActionsController *)self selectLongPress])
    {
      v15 = +[AXSettings sharedInstance];
      assistiveTouchLongPressEnabled = [v15 assistiveTouchLongPressEnabled];

      if (assistiveTouchLongPressEnabled)
      {
        v17 = AXParameterizedLocalizedString();
        v18 = [PSSpecifier groupSpecifierWithName:v17];

        [v4 addObject:v18];
        v19 = AXParameterizedLocalizedString();
        v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];

        [v20 setObject:&off_27B5F8 forKeyedSubscript:@"ActionKey"];
        [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:PSEnabledKey];
        [v4 addObject:v20];
      }
    }

    v21 = AXParameterizedLocalizedString();
    v22 = [PSSpecifier groupSpecifierWithName:v21];

    [v4 addObject:v22];
    v23 = SCATScannerSwitchActions();
    v24 = [(SCATSwitchActionsController *)self _actionSpecifiersWithActions:v23];

    [v4 addObjectsFromArray:v24];
    v25 = AXParameterizedLocalizedString();
    v26 = [PSSpecifier groupSpecifierWithName:v25];

    [v4 addObject:v26];
    v27 = SCATNavigationSwitchActions();
    v28 = [(SCATSwitchActionsController *)self _actionSpecifiersWithActions:v27];

    [v4 addObjectsFromArray:v28];
    v29 = AXParameterizedLocalizedString();
    v30 = [PSSpecifier groupSpecifierWithName:v29];

    [v4 addObject:v30];
    v31 = SCATSystemSwitchActions();
    v32 = [(SCATSwitchActionsController *)self _actionSpecifiersWithActions:v31];

    [v4 addObjectsFromArray:v32];
    v33 = AXParameterizedLocalizedString();
    v34 = [PSSpecifier groupSpecifierWithName:v33];

    [v4 addObject:v34];
    _shortcutSpecifiers = [(SCATSwitchActionsController *)self _shortcutSpecifiers];
    [v4 addObjectsFromArray:_shortcutSpecifiers];

    v36 = *&self->super.AXUISettingsSetupCapableListController_opaque[v38];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v38] = v4;

    v3 = *&self->super.AXUISettingsSetupCapableListController_opaque[v38];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = SCATSwitchActionsController;
  v5 = [(SCATSwitchActionsController *)&v8 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  [v5 setAccessoryType:{-[SCATSwitchActionsController _cellAccessoryTypeForSpecifier:](self, "_cellAccessoryTypeForSpecifier:", specifier)}];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v38.receiver = self;
  v38.super_class = SCATSwitchActionsController;
  [(SCATSwitchActionsController *)&v38 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v37.receiver = self;
  v37.super_class = SCATSwitchActionsController;
  v8 = [(SCATSwitchActionsController *)&v37 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  storedSwitch = [(SCATSwitchActionsController *)self storedSwitch];
  specifier = [v8 specifier];
  identifier = [specifier identifier];
  v12 = [identifier isEqualToString:@"SOUND_ACTION_PRACTICE_ID"];

  if (v12)
  {
    v13 = [SoundActionsPracticeNavigationController alloc];
    assetURL = [(SCATSwitchActionsController *)self assetURL];
    v15 = -[SoundActionsPracticeNavigationController initWithAssetURL:usage:](v13, "initWithAssetURL:usage:", assetURL, [storedSwitch accessibilityEventUsage]);

    [(SCATSwitchActionsController *)self presentModalViewController:v15 withTransition:3];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    specifier2 = [v8 specifier];
    v17 = [specifier2 propertyForKey:@"ActionKey"];
    if (v17)
    {
    }

    else
    {
      specifier3 = [v8 specifier];
      v19 = [specifier3 propertyForKey:@"ShortcutActionKey"];

      if (!v19)
      {
        [v8 setAccessoryType:0];
        goto LABEL_22;
      }
    }

    specifier4 = [v8 specifier];
    v21 = [specifier4 propertyForKey:@"ActionKey"];

    if (v21)
    {
      integerValue = [v21 integerValue];
      selectLongPress = [(SCATSwitchActionsController *)self selectLongPress];
      storedSwitch2 = [(SCATSwitchActionsController *)self storedSwitch];
      v25 = storedSwitch2;
      if (selectLongPress)
      {
        [storedSwitch2 setLongPressShortcutIdentifier:0];

        storedSwitch3 = [(SCATSwitchActionsController *)self storedSwitch];
        [storedSwitch3 setLongPressAction:integerValue];
      }

      else
      {
        [storedSwitch2 setShortcutIdentifier:0];

        storedSwitch3 = [(SCATSwitchActionsController *)self storedSwitch];
        [storedSwitch3 setAction:integerValue];
      }
    }

    specifier5 = [v8 specifier];
    v28 = [specifier5 propertyForKey:@"ShortcutActionKey"];

    if (v28)
    {
      selectLongPress2 = [(SCATSwitchActionsController *)self selectLongPress];
      storedSwitch4 = [(SCATSwitchActionsController *)self storedSwitch];
      v31 = storedSwitch4;
      if (selectLongPress2)
      {
        [storedSwitch4 setLongPressShortcutIdentifier:v28];

        storedSwitch5 = [(SCATSwitchActionsController *)self storedSwitch];
        [storedSwitch5 setLongPressAction:0];
      }

      else
      {
        [storedSwitch4 setShortcutIdentifier:v28];

        storedSwitch5 = [(SCATSwitchActionsController *)self storedSwitch];
        [storedSwitch5 setAction:0];
      }
    }

    [(SCATSwitchActionsController *)self saveSwitchToSettings:storedSwitch];
    if ([(SCATSwitchActionsController *)self popToRootSwitchViewControlAfterSelection])
    {
      completion = [(SCATSettingsCompletionController *)self completion];

      if (completion)
      {
        completion2 = [(SCATSettingsCompletionController *)self completion];
        completion2[2]();
      }

      v36.receiver = self;
      v36.super_class = SCATSwitchActionsController;
      [(SCATSwitchActionsController *)&v36 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }

    else
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = __65__SCATSwitchActionsController_tableView_didSelectRowAtIndexPath___block_invoke;
      v35[3] = &unk_256BB8;
      v35[4] = self;
      [(SCATSwitchActionsController *)self updateCellAccessories:v35];
    }
  }

LABEL_22:
}

- (int64_t)_cellAccessoryTypeForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"ShortcutActionKey"];
  selectLongPress = [(SCATSwitchActionsController *)self selectLongPress];
  storedSwitch = [(SCATSwitchActionsController *)self storedSwitch];
  v8 = storedSwitch;
  if (selectLongPress)
  {
    [storedSwitch longPressShortcutIdentifier];
  }

  else
  {
    [storedSwitch shortcutIdentifier];
  }
  v9 = ;

  if ([v5 isEqualToString:v9])
  {
    v10 = 3;
  }

  else if (v9)
  {
    v10 = 0;
  }

  else
  {
    selectLongPress2 = [(SCATSwitchActionsController *)self selectLongPress];
    storedSwitch2 = [(SCATSwitchActionsController *)self storedSwitch];
    v13 = storedSwitch2;
    if (selectLongPress2)
    {
      longPressAction = [storedSwitch2 longPressAction];
    }

    else
    {
      longPressAction = [storedSwitch2 action];
    }

    v15 = longPressAction;

    v16 = [specifierCopy propertyForKey:@"ActionKey"];
    v17 = v16;
    if (v16 && [v16 integerValue] == v15)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_rootSwitchesController
{
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%@ Failed to find rootswitchController for rootVC: %@", &v3, 0x16u);
}

@end
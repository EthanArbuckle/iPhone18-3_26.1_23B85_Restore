@interface CACCommandsController
- (BOOL)_commandItemBelongsToDifferentLocale:(id)locale;
- (CACCommandsController)init;
- (CACSpokenCommandGroup)commandGroup;
- (id)_detailStringForSpecifier:(id)specifier;
- (id)_sortedCustomCommandsArrayByLanguage;
- (id)specifiers;
- (void)_commandSettingsDidChange;
- (void)_refreshGroupCommands;
- (void)dealloc;
- (void)presentCustomAction:(id)action;
@end

@implementation CACCommandsController

- (CACCommandsController)init
{
  v5.receiver = self;
  v5.super_class = CACCommandsController;
  v2 = [(CACCommandsController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_A384, @"CACNotificationCommandsSettingsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationCommandsSettingsChanged", 0);
  v4.receiver = self;
  v4.super_class = CACCommandsController;
  [(CACCommandsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_32;
  }

  v42 = +[NSMutableArray array];
  commandGroup = [(CACCommandsController *)self commandGroup];
  if (![commandGroup isCustom])
  {
    goto LABEL_5;
  }

  v6 = +[CACPreferences sharedPreferences];
  allCustomCommandProperties = [v6 allCustomCommandProperties];
  v8 = [allCustomCommandProperties count];
  v9 = +[CACCommandImportExportUtilities maximumNumberOfAllowedEntries];

  if (v8 < v9)
  {
    v10 = settingsLocString(@"CREATE_NEW_CUSTOM_COMMAND", @"CommandAndControlSettings");
    commandGroup = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [commandGroup setControllerLoadAction:"presentCustomAction:"];
    v11 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v11 bestLocaleIdentifier];
    v13 = [CACSpokenCommandItem newCommandItemWithLocale:bestLocaleIdentifier scope:@"com.apple.speech.SystemWideScope"];
    [commandGroup setProperty:v13 forKey:@"CACCommandItem"];

    [v42 addObject:commandGroup];
    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v42 addObject:v14];

LABEL_5:
  }

  commandGroup2 = [(CACCommandsController *)self commandGroup];
  v38 = v3;
  if ([commandGroup2 isCustom])
  {
    _sortedCustomCommandsArrayByLanguage = [(CACCommandsController *)self _sortedCustomCommandsArrayByLanguage];
  }

  else
  {
    commandGroup3 = [(CACCommandsController *)self commandGroup];
    _sortedCustomCommandsArrayByLanguage = [commandGroup3 commandsArray];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = _sortedCustomCommandsArrayByLanguage;
  v18 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v40 = *v44;
    v39 = PSEnabledKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v43 + 1) + 8 * i);
        if ([v22 isGroup])
        {
          commandGroup4 = [(CACCommandsController *)self commandGroup];
          v37 = v22;
          _AXAssert();
        }

        if ([v22 isCustom])
        {
          v23 = 0;
        }

        else
        {
          v23 = objc_opt_class();
        }

        v24 = [(CACCommandsController *)self _commandItemBelongsToDifferentLocale:v22];
        if (v24)
        {
          untranslatedDisplayString = [v22 untranslatedDisplayString];
          v26 = -1;
        }

        else
        {
          untranslatedDisplayString = [v22 displayString];
          v26 = 2;
        }

        v27 = [PSSpecifier preferenceSpecifierNamed:untranslatedDisplayString target:self set:0 get:"_detailStringForSpecifier:" detail:v23 cell:v26 edit:0];
        if ([v22 isCustom])
        {
          [v27 setControllerLoadAction:"presentCustomAction:"];
          v28 = [NSNumber numberWithInt:v24 ^ 1];
          [v27 setProperty:v28 forKey:v39];
        }

        [v27 setProperty:v22 forKey:@"CACCommandItem"];
        [v42 addObject:v27];
        ++v20;
        commandGroup5 = [(CACCommandsController *)self commandGroup];
        isCustom = [commandGroup5 isCustom];

        if (isCustom)
        {
          v31 = [obj axSafeObjectAtIndex:v20];
          if (![(CACCommandsController *)self _commandItemBelongsToDifferentLocale:v22]&& [(CACCommandsController *)self _commandItemBelongsToDifferentLocale:v31])
          {
            v32 = settingsLocString(@"CUSTOM_COMMAND_GROUP_OTHER_LANGUAGES_HEADER", @"CommandAndControlSettings");
            v33 = [PSSpecifier groupSpecifierWithName:v32];
            [v42 addObject:v33];
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v19);
  }

  v34 = *&self->AXUISettingsBaseListController_opaque[v38];
  *&self->AXUISettingsBaseListController_opaque[v38] = v42;

  v4 = *&self->AXUISettingsBaseListController_opaque[v38];
LABEL_32:

  return v4;
}

- (void)presentCustomAction:(id)action
{
  actionCopy = action;
  v7 = objc_alloc_init(CACCustomCommandEditorViewController);
  v5 = [actionCopy propertyForKey:@"CACCommandItem"];

  [v7 setCommandItem:v5];
  [v7 setDelegate:self];
  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(CACCommandsController *)self presentViewController:v6 animated:1 completion:0];
}

- (CACSpokenCommandGroup)commandGroup
{
  specifier = [(CACCommandsController *)self specifier];
  v3 = [specifier propertyForKey:@"CACCommandGroup"];

  return v3;
}

- (BOOL)_commandItemBelongsToDifferentLocale:(id)locale
{
  localeCopy = locale;
  untranslatedLocale = [localeCopy untranslatedLocale];
  if (untranslatedLocale && [localeCopy isCustom])
  {
    untranslatedLocale2 = [localeCopy untranslatedLocale];
    v6 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v6 bestLocaleIdentifier];
    v8 = untranslatedLocale2 != bestLocaleIdentifier;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_detailStringForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"CACCommandItem"];
  if ([v4 isCustom])
  {
    if ([(CACCommandsController *)self _commandItemBelongsToDifferentLocale:v4])
    {
      v5 = +[NSLocale currentLocale];
      untranslatedLocale = [v4 untranslatedLocale];
      v7 = [v5 localizedStringForLocaleIdentifier:untranslatedLocale];
      localizedCapitalizedString = [v7 localizedCapitalizedString];
    }

    else
    {
      localizedCapitalizedString = 0;
    }
  }

  else
  {
    if ([v4 isEnabled])
    {
      v9 = @"ON";
    }

    else
    {
      v9 = @"OFF";
    }

    localizedCapitalizedString = settingsLocString(v9, @"CommandAndControlSettings");
  }

  return localizedCapitalizedString;
}

- (void)_commandSettingsDidChange
{
  if ([(CACCommandsController *)self isCurrentlyAppearing])
  {
    [(CACCommandsController *)self _refreshGroupCommands];
    v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

    [(CACCommandsController *)self reloadSpecifiers];
    commandGroup = [(CACCommandsController *)self commandGroup];
    commandsArray = [commandGroup commandsArray];
    if ([commandsArray count])
    {
    }

    else
    {
      navigationController = [(CACCommandsController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      lastObject = [viewControllers lastObject];

      if (lastObject != self)
      {
        return;
      }

      commandGroup = [(CACCommandsController *)self navigationController];
      v8 = [commandGroup popViewControllerAnimated:1];
    }
  }
}

- (void)_refreshGroupCommands
{
  v3 = objc_alloc_init(CACSpokenCommandPresentation);
  [(CACCommandsController *)self setCommandPresentation:v3];

  commandPresentation = [(CACCommandsController *)self commandPresentation];
  [commandPresentation setUsedByPreferences:1];

  commandPresentation2 = [(CACCommandsController *)self commandPresentation];
  nestedCommandGroupsAndItems = [commandPresentation2 nestedCommandGroupsAndItems];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = nestedCommandGroupsAndItems;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        identifier = [v12 identifier];
        commandGroup = [(CACCommandsController *)self commandGroup];
        identifier2 = [commandGroup identifier];
        v16 = [identifier isEqualToString:identifier2];

        if (v16)
        {
          v17 = v7;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = [[CACSpokenCommandGroup alloc] initWithIdentifier:@"Custom"];
  v17 = v12;
LABEL_11:
  specifier = [(CACCommandsController *)self specifier];
  [specifier setProperty:v12 forKey:@"CACCommandGroup"];
}

- (id)_sortedCustomCommandsArrayByLanguage
{
  commandGroup = [(CACCommandsController *)self commandGroup];
  commandsArray = [commandGroup commandsArray];

  v4 = [commandsArray sortedArrayUsingComparator:&stru_29098];

  return v4;
}

@end
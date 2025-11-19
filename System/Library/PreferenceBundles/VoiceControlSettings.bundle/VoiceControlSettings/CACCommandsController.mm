@interface CACCommandsController
- (BOOL)_commandItemBelongsToDifferentLocale:(id)a3;
- (CACCommandsController)init;
- (CACSpokenCommandGroup)commandGroup;
- (id)_detailStringForSpecifier:(id)a3;
- (id)_sortedCustomCommandsArrayByLanguage;
- (id)specifiers;
- (void)_commandSettingsDidChange;
- (void)_refreshGroupCommands;
- (void)dealloc;
- (void)presentCustomAction:(id)a3;
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
  v5 = [(CACCommandsController *)self commandGroup];
  if (![v5 isCustom])
  {
    goto LABEL_5;
  }

  v6 = +[CACPreferences sharedPreferences];
  v7 = [v6 allCustomCommandProperties];
  v8 = [v7 count];
  v9 = +[CACCommandImportExportUtilities maximumNumberOfAllowedEntries];

  if (v8 < v9)
  {
    v10 = settingsLocString(@"CREATE_NEW_CUSTOM_COMMAND", @"CommandAndControlSettings");
    v5 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v5 setControllerLoadAction:"presentCustomAction:"];
    v11 = +[CACPreferences sharedPreferences];
    v12 = [v11 bestLocaleIdentifier];
    v13 = [CACSpokenCommandItem newCommandItemWithLocale:v12 scope:@"com.apple.speech.SystemWideScope"];
    [v5 setProperty:v13 forKey:@"CACCommandItem"];

    [v42 addObject:v5];
    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v42 addObject:v14];

LABEL_5:
  }

  v15 = [(CACCommandsController *)self commandGroup];
  v38 = v3;
  if ([v15 isCustom])
  {
    v16 = [(CACCommandsController *)self _sortedCustomCommandsArrayByLanguage];
  }

  else
  {
    v17 = [(CACCommandsController *)self commandGroup];
    v16 = [v17 commandsArray];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v16;
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
          v36 = [(CACCommandsController *)self commandGroup];
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
          v25 = [v22 untranslatedDisplayString];
          v26 = -1;
        }

        else
        {
          v25 = [v22 displayString];
          v26 = 2;
        }

        v27 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:"_detailStringForSpecifier:" detail:v23 cell:v26 edit:0];
        if ([v22 isCustom])
        {
          [v27 setControllerLoadAction:"presentCustomAction:"];
          v28 = [NSNumber numberWithInt:v24 ^ 1];
          [v27 setProperty:v28 forKey:v39];
        }

        [v27 setProperty:v22 forKey:@"CACCommandItem"];
        [v42 addObject:v27];
        ++v20;
        v29 = [(CACCommandsController *)self commandGroup];
        v30 = [v29 isCustom];

        if (v30)
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

- (void)presentCustomAction:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(CACCustomCommandEditorViewController);
  v5 = [v4 propertyForKey:@"CACCommandItem"];

  [v7 setCommandItem:v5];
  [v7 setDelegate:self];
  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(CACCommandsController *)self presentViewController:v6 animated:1 completion:0];
}

- (CACSpokenCommandGroup)commandGroup
{
  v2 = [(CACCommandsController *)self specifier];
  v3 = [v2 propertyForKey:@"CACCommandGroup"];

  return v3;
}

- (BOOL)_commandItemBelongsToDifferentLocale:(id)a3
{
  v3 = a3;
  v4 = [v3 untranslatedLocale];
  if (v4 && [v3 isCustom])
  {
    v5 = [v3 untranslatedLocale];
    v6 = +[CACPreferences sharedPreferences];
    v7 = [v6 bestLocaleIdentifier];
    v8 = v5 != v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_detailStringForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"CACCommandItem"];
  if ([v4 isCustom])
  {
    if ([(CACCommandsController *)self _commandItemBelongsToDifferentLocale:v4])
    {
      v5 = +[NSLocale currentLocale];
      v6 = [v4 untranslatedLocale];
      v7 = [v5 localizedStringForLocaleIdentifier:v6];
      v8 = [v7 localizedCapitalizedString];
    }

    else
    {
      v8 = 0;
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

    v8 = settingsLocString(v9, @"CommandAndControlSettings");
  }

  return v8;
}

- (void)_commandSettingsDidChange
{
  if ([(CACCommandsController *)self isCurrentlyAppearing])
  {
    [(CACCommandsController *)self _refreshGroupCommands];
    v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

    [(CACCommandsController *)self reloadSpecifiers];
    v9 = [(CACCommandsController *)self commandGroup];
    v4 = [v9 commandsArray];
    if ([v4 count])
    {
    }

    else
    {
      v5 = [(CACCommandsController *)self navigationController];
      v6 = [v5 viewControllers];
      v7 = [v6 lastObject];

      if (v7 != self)
      {
        return;
      }

      v9 = [(CACCommandsController *)self navigationController];
      v8 = [v9 popViewControllerAnimated:1];
    }
  }
}

- (void)_refreshGroupCommands
{
  v3 = objc_alloc_init(CACSpokenCommandPresentation);
  [(CACCommandsController *)self setCommandPresentation:v3];

  v4 = [(CACCommandsController *)self commandPresentation];
  [v4 setUsedByPreferences:1];

  v5 = [(CACCommandsController *)self commandPresentation];
  v6 = [v5 nestedCommandGroupsAndItems];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
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
        v13 = [v12 identifier];
        v14 = [(CACCommandsController *)self commandGroup];
        v15 = [v14 identifier];
        v16 = [v13 isEqualToString:v15];

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
  v18 = [(CACCommandsController *)self specifier];
  [v18 setProperty:v12 forKey:@"CACCommandGroup"];
}

- (id)_sortedCustomCommandsArrayByLanguage
{
  v2 = [(CACCommandsController *)self commandGroup];
  v3 = [v2 commandsArray];

  v4 = [v3 sortedArrayUsingComparator:&stru_29098];

  return v4;
}

@end
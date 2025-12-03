@interface ClarityUISettingsWrapperController
- (ClarityUISettingsWrapperController)initWithPSSpecifier:(id)specifier;
- (ClarityUISettingsWrapperControllerDelegate)delegate;
- (id)_axFooterText:(BOOL)text;
- (id)_axHandleCalendarAuthorizationController:(id)controller;
- (id)_axHandleContactsAuthorizationController:(id)controller;
- (id)_axHandleLocationAuthorizationController:(id)controller;
- (id)_axHandlePhotosAuthorizationController:(id)controller;
- (id)_axPreciseLocationEnabled:(id)enabled;
- (id)_axSelectSpecifierFromSpecifiers:(id)specifiers;
- (id)specifiers;
- (void)_axSetPreciseLocationEnabled:(id)enabled specifier:(id)specifier;
- (void)_axValidateAuthenticationController;
- (void)_handleUpgradePromptNotification:(id)notification;
- (void)_updateFooterText:(id)text;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ClarityUISettingsWrapperController

- (ClarityUISettingsWrapperController)initWithPSSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = ClarityUISettingsWrapperController;
  v6 = [(ClarityUISettingsWrapperController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privacySpecifier, specifier);
  }

  return v7;
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __71__ClarityUISettingsWrapperController__handleUpgradePromptNotification___block_invoke;
  v4[3] = &unk_255538;
  v4[4] = self;
  notificationCopy = notification;
  v3 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

void __71__ClarityUISettingsWrapperController__handleUpgradePromptNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) performGetter];
  v3 = CLFLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 152);
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Specifier: %@, updated value: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 40) name];
  v6 = [v5 isEqualToString:@"PSCalendarPrivacyUpgradePromptCompletedNotification"];

  if ((v6 & 1) != 0 || ([*(a1 + 40) name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"PUIPhotosPrivacyUpgradePromptCompletedNotification"), v7, v8))
  {
    if ([v2 intValue] != 2)
    {
      [*(a1 + 32) setCachedSpecifier:0];
    }

    v9 = [*(a1 + 32) delegate];
    v10 = [*(a1 + 32) cachedSpecifier];
    [v9 updateContinueButtonForSpecifier:v10];

    [*(a1 + 32) reloadSpecifiers];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ClarityUISettingsWrapperController;
  [(ClarityUISettingsWrapperController *)&v5 viewWillAppear:appear];
  [(ClarityUISettingsWrapperController *)self reloadSpecifiers];
  v4 = [PSSpecifier groupSpecifierWithID:@"Privacy Choices"];
  [(ClarityUISettingsWrapperController *)self _updateFooterText:v4];
}

- (void)_axValidateAuthenticationController
{
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Received a privacy specifier to create settings for with no identifier. Specifier: %@", &v3, 0xCu);
}

void __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke(id a1)
{
  if (!AXSafeClassFromString())
  {
    v1 = CLFLogSettings();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

void __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_370(id a1)
{
  if (!AXSafeClassFromString())
  {
    v1 = CLFLogSettings();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_370_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

void __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_376(id a1)
{
  if (!AXSafeClassFromString())
  {
    v1 = CLFLogSettings();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_376_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

void __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_382(id a1)
{
  if (!AXSafeClassFromString())
  {
    v1 = CLFLogSettings();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      __73__ClarityUISettingsWrapperController__axValidateAuthenticationController__block_invoke_382_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = CLFLogSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PSSpecifier *)self->_privacySpecifier propertyForKey:@"ClarityIDKey"];
      v7 = [NSNumber numberWithInteger:[(PSSpecifier *)self->_privacySpecifier cellType]];
      detailControllerClass = [(PSSpecifier *)self->_privacySpecifier detailControllerClass];
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = detailControllerClass;
      v9 = detailControllerClass;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Loading specifiers based off of privacy ID %@: \n\t cell type: %@ \n\t detail class: %@", buf, 0x20u);
    }

    v10 = objc_opt_new();
    v11 = [PSSpecifier groupSpecifierWithID:@"Privacy Choices"];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [(ClarityUISettingsWrapperController *)self setClarityGroupSpecifier:v11];
    if ([(PSSpecifier *)self->_privacySpecifier cellType]== &dword_4 + 2)
    {
      [v10 addObject:v11];
      v12 = settingsLocString(@"PRIVACY_ALLOW_ACCESS", @"ClarityUISettings");
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v13 setProperty:@"AllowSpecifierID" forKey:@"ClarityIDKey"];
      [v10 addObject:v13];
      v14 = settingsLocString(@"PRIVACY_DO_NOT_ALLOW_ACCESS", @"ClarityUISettings");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v15 setProperty:@"DoNotAllowSpecifierID" forKey:@"ClarityIDKey"];
      [v10 addObject:v15];

LABEL_22:
LABEL_23:
      v28 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v10;

      v4 = *&self->PSListController_opaque[v3];
      goto LABEL_24;
    }

    if ([(PSSpecifier *)self->_privacySpecifier cellType]!= &dword_0 + 2)
    {
      v20 = CLFLogSettings();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        privacySpecifier = self->_privacySpecifier;
        *buf = 138412290;
        v31 = privacySpecifier;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Specifier not handled and added via fallback. Specifier: %@", buf, 0xCu);
      }

      [v10 addObject:self->_privacySpecifier];
      goto LABEL_23;
    }

    [(ClarityUISettingsWrapperController *)self _axValidateAuthenticationController];
    v13 = NSStringFromClass([(PSSpecifier *)self->_privacySpecifier detailControllerClass]);
    if ([v13 isEqualToString:@"PSPhotoServicesAuthorizationLevelController"])
    {
      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_handleUpgradePromptNotification:" name:@"PUIPhotosPrivacyUpgradePromptCompletedNotification" object:0];

      [v10 addObject:v11];
      v17 = [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
      v18 = [v17 safeArrayForKey:@"specifiers"];
      v19 = [(ClarityUISettingsWrapperController *)self _axHandlePhotosAuthorizationController:v18];
    }

    else if ([v13 isEqualToString:@"PUILocationServicesAuthorizationLevelController"])
    {
      [v10 addObject:v11];
      v17 = [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
      v18 = [v17 safeArrayForKey:@"specifiers"];
      v19 = [(ClarityUISettingsWrapperController *)self _axHandleLocationAuthorizationController:v18];
    }

    else if ([v13 isEqualToString:@"__PSCalendarPolicyAuthorizationLevelController"])
    {
      v22 = +[NSNotificationCenter defaultCenter];
      [v22 addObserver:self selector:"_handleUpgradePromptNotification:" name:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:0];

      [v10 addObject:v11];
      v17 = [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
      v18 = [v17 safeArrayForKey:@"specifiers"];
      v19 = [(ClarityUISettingsWrapperController *)self _axHandleCalendarAuthorizationController:v18];
    }

    else
    {
      if (![v13 isEqualToString:@"PSContactsAuthorizationLevelController"])
      {
LABEL_19:
        v25 = [(ClarityUISettingsWrapperController *)self _axSelectSpecifierFromSpecifiers:v10];
        if (v25)
        {
          clarityGroupSpecifier = [(ClarityUISettingsWrapperController *)self clarityGroupSpecifier];
          [clarityGroupSpecifier setProperty:v25 forKey:PSRadioGroupCheckedSpecifierKey];

          clarityGroupSpecifier2 = [(ClarityUISettingsWrapperController *)self clarityGroupSpecifier];
          [(ClarityUISettingsWrapperController *)self _updateFooterText:clarityGroupSpecifier2];
        }

        goto LABEL_22;
      }

      v23 = +[NSNotificationCenter defaultCenter];
      [v23 addObserver:self selector:"_handleUpgradePromptNotification:" name:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:0];

      [v10 addObject:v11];
      v17 = [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
      v18 = [v17 safeArrayForKey:@"specifiers"];
      v19 = [(ClarityUISettingsWrapperController *)self _axHandleContactsAuthorizationController:v18];
    }

    v24 = v19;

    [v10 addObjectsFromArray:v24];
    goto LABEL_19;
  }

LABEL_24:

  return v4;
}

- (id)_axFooterText:(BOOL)text
{
  textCopy = text;
  v5 = [(PSSpecifier *)self->_privacySpecifier propertyForKey:@"ClarityTCCAppNameKey"];
  name = [(PSSpecifier *)self->_privacySpecifier name];
  identifier = [(PSSpecifier *)self->_privacySpecifier identifier];
  v8 = [identifier isEqualToString:@"Allow Tracking"];

  if (v8)
  {
    if (textCopy)
    {
      v9 = @"PRIVACY_FOOTER_TRACKING_ALLOW";
    }

    else
    {
      v9 = @"PRIVACY_FOOTER_TRACKING_NO_ALLOW";
    }
  }

  else if (textCopy)
  {
    v9 = @"PRIVACY_FOOTER_TEXT_ALLOW";
  }

  else
  {
    v9 = @"PRIVACY_FOOTER_TEXT_NO_ALLOW";
  }

  v10 = settingsLocString(v9, @"ClarityUISettings");
  v11 = AXCFormattedString();

  return v11;
}

- (id)_axHandlePhotosAuthorizationController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  if (controllerCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = controllerCopy;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v19 = controllerCopy;
    v7 = *v23;
    v8 = PSIDKey;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        cellType = [v10 cellType];
        v12 = [v10 propertyForKey:v8];
        v13 = v12;
        if (cellType)
        {
          v14 = [v12 isEqualToString:@"PHOTOS_PICKER_INFO_CELL"];

          v15 = @"PhotosSpecifierID";
          if (v14)
          {
            delegate = [(ClarityUISettingsWrapperController *)self delegate];
            [delegate updateContinueButtonForSpecifier:v10];

            v15 = @"PhotosSpecifierID";
          }
        }

        else
        {
          v17 = [v12 isEqualToString:@"PHOTOS_MANUAL_SELECTION_GROUP"];

          v15 = @"PhotosGroupSpecifierID";
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        [v10 setProperty:v15 forKey:@"ClarityIDKey"];
        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v6)
      {
        controllerCopy = v19;
        goto LABEL_17;
      }
    }
  }

  obj = CLFLogSettings();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    [ClarityUISettingsWrapperController _axHandlePhotosAuthorizationController:];
  }

LABEL_17:

  return v4;
}

- (void)_updateFooterText:(id)text
{
  privacySpecifier = self->_privacySpecifier;
  textCopy = text;
  v13 = NSStringFromClass([(PSSpecifier *)privacySpecifier detailControllerClass]);
  if ([v13 isEqualToString:@"PUILocationServicesAuthorizationLevelController"])
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.preferences-framework"];
    v7 = [v6 localizedStringForKey:@"NEVER_AUTHORIZATION" value:0 table:@"LocationServicesPrivacy"];
    performGetter = [(PSSpecifier *)self->_privacySpecifier performGetter];
    bOOLValue = [performGetter isEqualToString:v7] ^ 1;

    goto LABEL_8;
  }

  if ([v13 isEqualToString:@"__PSCalendarPolicyAuthorizationLevelController"])
  {
    performGetter2 = [(PSSpecifier *)self->_privacySpecifier performGetter];
    v6 = performGetter2;
LABEL_6:
    bOOLValue = [performGetter2 intValue] > 0;
    goto LABEL_8;
  }

  v11 = [v13 isEqualToString:@"PSPhotoServicesAuthorizationLevelController"];
  performGetter2 = [(PSSpecifier *)self->_privacySpecifier performGetter];
  v6 = performGetter2;
  if (v11)
  {
    goto LABEL_6;
  }

  bOOLValue = [performGetter2 BOOLValue];
LABEL_8:

  v12 = [(ClarityUISettingsWrapperController *)self _axFooterText:bOOLValue];
  [textCopy setProperty:v12 forKey:PSFooterTextGroupKey];
}

- (id)_axHandleLocationAuthorizationController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  if (controllerCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = controllerCopy;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = v6;
    v19 = controllerCopy;
    v8 = 0;
    v9 = *v23;
    v21 = PSIDKey;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (![v11 cellType])
        {
          v14 = [v11 propertyForKey:v21];
          v15 = [v14 isEqualToString:@"LOCATION_SERVICES_AUTH_GROUP"];

          if (v15)
          {
            continue;
          }

          [v4 addObject:v11];
          goto LABEL_12;
        }

        if (v8)
        {
          name = [v11 name];
          v13 = [PSSpecifier preferenceSpecifierNamed:name target:self set:"_axSetPreciseLocationEnabled:specifier:" get:"_axPreciseLocationEnabled:" detail:0 cell:6 edit:0];

          [v13 setProperty:@"LocationPreciseSpecifierID" forKey:@"ClarityIDKey"];
          [v4 addObject:v13];

LABEL_12:
          v8 = 1;
          continue;
        }

        identifier = [v11 identifier];
        v17 = [identifier isEqualToString:@"LOCATION_SERVICES_AUTH_NOT_DETERMINED"];

        if ((v17 & 1) == 0)
        {
          [v11 setProperty:@"LocationSpecifierID" forKey:@"ClarityIDKey"];
          [v4 addObject:v11];
        }

        v8 = 0;
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v7)
      {
        controllerCopy = v19;
        goto LABEL_21;
      }
    }
  }

  v5 = CLFLogSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ClarityUISettingsWrapperController _axHandleLocationAuthorizationController:];
  }

LABEL_21:

  return v4;
}

- (id)_axHandleCalendarAuthorizationController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  if (controllerCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = controllerCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 cellType])
          {
            [v10 setProperty:@"CalendarSpecifierID" forKey:@"ClarityIDKey"];
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = CLFLogSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ClarityUISettingsWrapperController _axHandleCalendarAuthorizationController:];
    }
  }

  return v4;
}

- (id)_axHandleContactsAuthorizationController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  if (controllerCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = controllerCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v14 = controllerCopy;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (![v10 cellType])
          {
            identifier = [v10 identifier];
            v12 = [identifier isEqualToString:@"LIST_ITEMS_GROUP_SPECIFIER"];

            if (v12)
            {
              continue;
            }
          }

          [v10 setProperty:@"ContactsSpecifierID" forKey:@"ClarityIDKey"];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
      controllerCopy = v14;
    }
  }

  else
  {
    v5 = CLFLogSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ClarityUISettingsWrapperController _axHandleContactsAuthorizationController:];
    }
  }

  return v4;
}

- (id)_axSelectSpecifierFromSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  cachedSpecifier = self->_cachedSpecifier;
  if (cachedSpecifier)
  {
    identifier = [(PSSpecifier *)cachedSpecifier identifier];
    intValue = [identifier intValue];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = specifiersCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          identifier2 = [v13 identifier];
          intValue2 = [identifier2 intValue];

          if (intValue == intValue2)
          {
            v16 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v79.receiver = self;
  v79.super_class = ClarityUISettingsWrapperController;
  [(ClarityUISettingsWrapperController *)&v79 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(ClarityUISettingsWrapperController *)self specifierAtIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ClarityIDKey"];
  if (([v9 isEqualToString:@"AllowSpecifierID"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"DoNotAllowSpecifierID"))
  {
    v10 = [v9 isEqualToString:@"AllowSpecifierID"];
    privacySpecifier = self->_privacySpecifier;
    v12 = [NSNumber numberWithBool:v10];
    [(PSSpecifier *)privacySpecifier performSetterWithValue:v12];

    delegate = CLFLogSettings();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_privacySpecifier;
      performGetter = [(PSSpecifier *)v14 performGetter];
      *buf = 138412546;
      v82 = v14;
      v83 = 2112;
      v84 = performGetter;
      _os_log_impl(&dword_0, delegate, OS_LOG_TYPE_DEFAULT, "Specifier: %@, updated value: %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if ([v9 isEqualToString:@"LocationPreciseSpecifierID"])
  {
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"LocationSpecifierID"])
  {
    v69 = pathCopy;
    v70 = viewCopy;
    delegate = [v8 propertyForKey:PSIDKey];
    [(PSSpecifier *)self->_privacySpecifier performSetterWithValue:delegate];
    v18 = CLFLogSettings();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_privacySpecifier;
      performGetter2 = [(PSSpecifier *)v19 performGetter];
      *buf = 138412546;
      v82 = v19;
      v83 = 2112;
      v84 = performGetter2;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Specifier: %@, updated value: %@", buf, 0x16u);
    }

    v72 = v9;

    [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v71 = v78 = 0u;
    specifiers = [v71 specifiers];
    v22 = [specifiers countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v22)
    {
      v23 = v22;
      v68 = delegate;
      selfCopy = self;
      v24 = 0;
      v25 = *v76;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v76 != v25)
          {
            objc_enumerationMutation(specifiers);
          }

          v27 = *(*(&v75 + 1) + 8 * i);
          identifier = [v27 identifier];
          identifier2 = [v8 identifier];
          v30 = [identifier isEqualToString:identifier2];

          if (v30)
          {
            v31 = v27;

            v24 = v31;
          }
        }

        v23 = [specifiers countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v23);

      delegate = v68;
      if (v24)
      {
        v32 = CLFLogSettings();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v82 = v24;
          v83 = 2112;
          v84 = v8;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Found matching location specifier: %@, for selected specifier: %@", buf, 0x16u);
        }

        v33 = [v71 indexPathForSpecifier:v24];
        v34 = CLFLogSettings();
        v9 = v72;
        self = selfCopy;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v33;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Location Specifier index path: %@", buf, 0xCu);
        }

        [v71 tableView:v70 didSelectRowAtIndexPath:v33];
        v35 = CLFLogSettings();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = selfCopy->_privacySpecifier;
          performGetter3 = [(PSSpecifier *)v36 performGetter];
          *buf = 138412546;
          v82 = v36;
          v83 = 2112;
          v84 = performGetter3;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Specifier: %@, updated value: %@", buf, 0x16u);
        }

        pathCopy = v69;
        viewCopy = v70;
        goto LABEL_5;
      }
    }

    else
    {
    }

    v48 = CLFLogSettings();
    pathCopy = v69;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [ClarityUISettingsWrapperController tableView:v8 didSelectRowAtIndexPath:v48];
    }

    viewCopy = v70;
LABEL_41:
    v9 = v72;
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"PhotosSpecifierID"])
  {
    v72 = v9;
    v38 = [v8 propertyForKey:PSIDKey];
    intValue = [v38 intValue];

    v40 = self->_privacySpecifier;
    v41 = [NSNumber numberWithInt:intValue];
    [(PSSpecifier *)v40 performSetterWithValue:v41];

    if (intValue != 2)
    {
      delegate = CLFLogSettings();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        v49 = self->_privacySpecifier;
        performGetter4 = [(PSSpecifier *)v49 performGetter];
        *buf = 138412546;
        v82 = v49;
        v83 = 2112;
        v84 = performGetter4;
        _os_log_impl(&dword_0, delegate, OS_LOG_TYPE_DEFAULT, "Specifier: %@, updated value: %@", buf, 0x16u);
      }

      v9 = v72;
      goto LABEL_5;
    }

    delegate = [APApplication applicationWithBundleIdentifier:AX_PhotosBundleName];
    sharedGuard = [getAPGuardClass() sharedGuard];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = __72__ClarityUISettingsWrapperController_tableView_didSelectRowAtIndexPath___block_invoke;
    v73[3] = &unk_2562F8;
    v73[4] = self;
    v74 = v8;
    [sharedGuard authenticateForSubject:delegate completion:v73];

    goto LABEL_41;
  }

  if ([v9 isEqualToString:@"CalendarSpecifierID"])
  {
    v43 = [v8 propertyForKey:PSIDKey];
    intValue2 = [v43 intValue];

    performGetter5 = [(PSSpecifier *)self->_privacySpecifier performGetter];
    intValue3 = [performGetter5 intValue];

    if (intValue2 == 2 && intValue3 == 2)
    {
      v47 = CLFLogSettings();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Calendar Full Access was chosen but existing value is already Full Access. Ignoring.", buf, 2u);
      }

LABEL_62:

      delegate = CLFLogSettings();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      goto LABEL_5;
    }

    if (intValue2 != 2)
    {
      v63 = self->_privacySpecifier;
      v47 = [NSNumber numberWithInt:intValue2];
      [(PSSpecifier *)v63 performSetterWithValue:v47];
      goto LABEL_62;
    }

    [(ClarityUISettingsWrapperController *)self setCachedSpecifier:v8];
    v57 = self->_privacySpecifier;
    v58 = [NSNumber numberWithInt:2];
    [(PSSpecifier *)v57 performSetterWithValue:v58];

    delegate = CLFLogSettings();
    if (!os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 138412290;
    v82 = v8;
    v59 = "Calendar Full Access was chosen. Caching specifier until user agrees. Specifier: %@";
LABEL_60:
    _os_log_impl(&dword_0, delegate, OS_LOG_TYPE_DEFAULT, v59, buf, 0xCu);
    goto LABEL_6;
  }

  if (![v9 isEqualToString:@"ContactsSpecifierID"])
  {
    delegate = [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
    [delegate tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    v60 = CLFLogSettings();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [(ClarityUISettingsWrapperController *)v8 tableView:v60 didSelectRowAtIndexPath:?];
    }

    goto LABEL_5;
  }

  values = [v8 values];
  firstObject = [values firstObject];
  intValue4 = [firstObject intValue];

  performGetter6 = [(PSSpecifier *)self->_privacySpecifier performGetter];
  intValue5 = [performGetter6 intValue];

  if (intValue4 == 2 && intValue5 == 2)
  {
    v56 = CLFLogSettings();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "Contacts Full Access was chosen but existing value is already Full Access. Ignoring.", buf, 2u);
    }
  }

  else
  {
    if (intValue4 == 2)
    {
      [(ClarityUISettingsWrapperController *)self setCachedSpecifier:v8];
      v61 = self->_privacySpecifier;
      v62 = [NSNumber numberWithInt:2];
      [(PSSpecifier *)v61 performSetterWithValue:v62];

      delegate = CLFLogSettings();
      if (!os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      *buf = 138412290;
      v82 = v8;
      v59 = "Contacts Full Access was chosen. Caching specifier until user agrees. Specifier: %@";
      goto LABEL_60;
    }

    v64 = self->_privacySpecifier;
    v56 = [NSNumber numberWithInt:intValue4];
    [(PSSpecifier *)v64 performSetterWithValue:v56];
  }

  delegate = CLFLogSettings();
  if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
  {
LABEL_66:
    v65 = self->_privacySpecifier;
    performGetter7 = [(PSSpecifier *)v65 performGetter];
    *buf = 138412546;
    v82 = v65;
    v83 = 2112;
    v84 = performGetter7;
    _os_log_impl(&dword_0, delegate, OS_LOG_TYPE_DEFAULT, "Specifier: %@, updated value: %@", buf, 0x16u);
  }

LABEL_5:

  clarityGroupSpecifier = [(ClarityUISettingsWrapperController *)self clarityGroupSpecifier];
  [(ClarityUISettingsWrapperController *)self _updateFooterText:clarityGroupSpecifier];

  clarityGroupSpecifier2 = [(ClarityUISettingsWrapperController *)self clarityGroupSpecifier];
  [(ClarityUISettingsWrapperController *)self reloadSpecifier:clarityGroupSpecifier2];

  delegate = [(ClarityUISettingsWrapperController *)self delegate];
  [delegate updateContinueButtonForSpecifier:v8];
LABEL_6:

LABEL_7:
}

void __72__ClarityUISettingsWrapperController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = CLFLogSettings();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Error attempting to authenticate to update photos access %@", &v9, 0xCu);
    }

    [*(a1 + 32) setCachedSpecifier:0];
  }

  else
  {
    [*(a1 + 32) setCachedSpecifier:*(a1 + 40)];
    v6 = CLFLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Photos Full Access was chosen. Caching specifier until user agrees. Specifier: %@", &v9, 0xCu);
    }
  }
}

- (void)_axSetPreciseLocationEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = [(ClarityUISettingsWrapperController *)self selectSpecifier:self->_privacySpecifier];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  specifiers = [v8 specifiers];
  v10 = [specifiers countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(specifiers);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 cellType] == &dword_4 + 2)
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [specifiers countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);

    if (v12)
    {
      [v12 performSetterWithValue:enabledCopy];
      v17 = CLFLogSettings();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        performGetter = [v12 performGetter];
        *buf = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = performGetter;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Precise Location Specifier: %@, updated value: %@", buf, 0x16u);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v12 = CLFLogSettings();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ClarityUISettingsWrapperController _axSetPreciseLocationEnabled:specifier:];
  }

LABEL_17:
}

- (id)_axPreciseLocationEnabled:(id)enabled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__ClarityUISettingsWrapperController__axPreciseLocationEnabled___block_invoke;
  block[3] = &unk_2553B0;
  block[4] = self;
  if (_axPreciseLocationEnabled__onceToken != -1)
  {
    dispatch_once(&_axPreciseLocationEnabled__onceToken, block);
  }

  return &off_279AF8;
}

- (ClarityUISettingsWrapperControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(os_log_t)log didSelectRowAtIndexPath:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unknown specifier id selected for privacy specifier. Specifier: %@. Privacy Specifier: %@", &v4, 0x16u);
}

- (void)tableView:(uint64_t)a1 didSelectRowAtIndexPath:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Did not found matching location specifier for selected specifier: %@", &v2, 0xCu);
}

@end
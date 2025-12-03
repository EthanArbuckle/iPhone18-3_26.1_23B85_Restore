@interface SafariWebExtensionsPermissionsSettingsController
- (BOOL)_clearStorageButtonWasOnlyButtonInExtensionsButtonsGroup:(int64_t)group;
- (BOOL)_isExtensionEnabledInMoreThanOneProfile;
- (NSString)authenticationPrompt;
- (SafariWebExtensionsPermissionsSettingsController)init;
- (id)_domainPermissionForSpecifier:(id)specifier;
- (id)_enabledStateOfWebExtensionForSpecifier:(id)specifier;
- (id)_enabledStateOfWebExtensionInPrivateBrowsingForSpecifier:(id)specifier;
- (id)_perDomainSpecifierForMatchPattern:(id)pattern withName:(id)name;
- (id)_specifiersForEnablingExtension;
- (id)_specifiersForExtensionErrors;
- (id)_specifiersForExtensionSettingsAndStorage;
- (id)_tabOverrideTopLevelDetailString;
- (id)_tintIconForDarkModeIfNeeded:(id)needed;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_calculateExtensionStorageSizeAndCreateClearStorageButton;
- (void)_deleteExtensionStorage:(id)storage;
- (void)_extensionEnabledStateDidChange:(id)change;
- (void)_reloadSpecifiersSoon;
- (void)_setDomainPermission:(id)permission forSpecifier:(id)specifier;
- (void)_setExtensionIfNeeded;
- (void)_setWebExtensionEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)_setWebExtensionEnabledInPrivateBrowsing:(id)browsing forSpecifier:(id)specifier;
- (void)_showManageStorageConfirmationPrompt:(id)prompt;
- (void)_showWebExtensionSettings:(id)settings;
- (void)_updateAllowInPrivateBrowsingValue:(id)value forWebExtension:(id)extension;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation SafariWebExtensionsPermissionsSettingsController

- (SafariWebExtensionsPermissionsSettingsController)init
{
  v9.receiver = self;
  v9.super_class = SafariWebExtensionsPermissionsSettingsController;
  v2 = [(SafariWebExtensionsPermissionsSettingsController *)&v9 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_webExtensionPermissionDidChange:" name:WBSWebExtensionPermissionDidChangeNotification object:0];
    [v3 addObserver:v2 selector:"_extensionEnabledStateDidChange:" name:WBSExtensionEnabledStateDidChangeNotification object:0];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_managedExtensionsStateDidChange:" name:WBSManagedExtensionsStateDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_managedNewTabPageDidChange:" name:WBSManagedNewTabPageDidChangeNotification object:0];

    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_reloadSpecifiersSoon" name:kMobileSafariChangedExtensionSettingsNotification object:0];

    v7 = v2;
  }

  return v2;
}

- (void)_reloadSpecifiersSoon
{
  objc_initWeak(&location, self);
  [(NSTimer *)self->_reloadSpecifiersTimer invalidate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __73__SafariWebExtensionsPermissionsSettingsController__reloadSpecifiersSoon__block_invoke;
  v5[3] = &unk_8AF20;
  objc_copyWeak(&v6, &location);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
  reloadSpecifiersTimer = self->_reloadSpecifiersTimer;
  self->_reloadSpecifiersTimer = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __73__SafariWebExtensionsPermissionsSettingsController__reloadSpecifiersSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (id)_specifiersForEnablingExtension
{
  v3 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_DEFAULT_PROFILE_GROUP"];
  v4 = [NSMutableArray arrayWithObject:v3];
  v61 = webExtensionsController();
  v5 = [v61 webExtensionForExtension:self->_extension];
  v6 = SafariSettingsLocalizedString(@"Allow Extension", @"Extensions");
  v7 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:v6 set:self get:0 detail:? cell:? edit:?];

  extension = self->_extension;
  v72[0] = @"Extension";
  v72[1] = @"ProfileServerID";
  v73[0] = extension;
  v73[1] = WBSDefaultProfileIdentifier;
  v9 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
  v60 = v7;
  [v7 setUserInfo:v9];

  canLoad = [v5 canLoad];
  v11 = +[WBSManagedExtensionsController sharedController];
  v59 = v5;
  composedIdentifier = [v5 composedIdentifier];
  v13 = [v11 managedExtensionStateForComposedIdentifier:composedIdentifier];

  if (v13)
  {
    v14 = _WBSLocalizedString();
    [v3 setProperty:v14 forKey:PSFooterTextGroupKey];

    v15 = 0;
  }

  else
  {
    v15 = canLoad;
  }

  v63 = v15;
  v16 = [NSNumber numberWithBool:?];
  v64 = PSEnabledKey;
  [v7 setProperty:v16 forKey:?];

  [v4 addObject:v7];
  v58 = [v61 extensionIsEnabled:self->_extension];
  if (v58)
  {
    v17 = +[WBSManagedExtensionsController sharedController];
    composedIdentifier2 = [v59 composedIdentifier];
    v19 = [v17 managedExtensionPrivateBrowsingStateForComposedIdentifier:composedIdentifier2];

    if (v13 | v19)
    {
      v21 = &SFCapsuleCollectionViewMaximumContentSizeCategoryForMinibar_ptr;
      v20 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_PRIVATE_BROWSING_GROUP"];
      [v4 addObject:v20];
    }

    else
    {
      v20 = 0;
      v21 = &SFCapsuleCollectionViewMaximumContentSizeCategoryForMinibar_ptr;
    }

    v22 = v21[364];
    v23 = SafariSettingsLocalizedString(@"Allow in Private Browsing", @"Extensions");
    v24 = [v22 preferenceSpecifierNamed:v23 target:self set:"_setWebExtensionEnabledInPrivateBrowsing:forSpecifier:" get:"_enabledStateOfWebExtensionInPrivateBrowsingForSpecifier:" detail:0 cell:6 edit:0];

    [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [v24 setUserInfo:self->_extension];
    if (v19)
    {
      [v24 setProperty:&__kCFBooleanFalse forKey:v64];
      v25 = _WBSLocalizedString();
      [v20 setProperty:v25 forKey:PSFooterTextGroupKey];
    }

    [v4 addObject:v24];
  }

  v26 = +[SafariSettingsController tabGroupManager];
  namedProfiles = [v26 namedProfiles];
  v28 = [namedProfiles count];

  if (v28)
  {
    v57 = v3;
    v29 = +[NSMutableArray array];

    v56 = SafariSettingsLocalizedString(@"Allow Extension In Title (Extensions)", @"Extensions");
    v30 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_PROFILES_GROUP" name:?];
    if (v13)
    {
      v31 = _WBSLocalizedString();
      [v30 setProperty:v31 forKey:PSFooterTextGroupKey];
    }

    v55 = v30;
    [v29 addObject:v30];
    v32 = +[SafariSettingsController tabGroupManager];
    defaultProfile = [v32 defaultProfile];
    v34 = [NSArray arrayWithObject:defaultProfile];

    v35 = +[SafariSettingsController tabGroupManager];
    namedProfiles2 = [v35 namedProfiles];
    v37 = [v34 arrayByAddingObjectsFromArray:namedProfiles2];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v37;
    v38 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v66;
      v41 = PSAllowMultilineTitleKey;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v66 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v65 + 1) + 8 * i);
          title = [v43 title];
          v45 = [PSSpecifier preferenceSpecifierNamed:title target:self set:"_setWebExtensionEnabled:forSpecifier:" get:"_enabledStateOfWebExtensionForSpecifier:" detail:0 cell:6 edit:0];

          [v45 setObject:&__kCFBooleanTrue forKeyedSubscript:v41];
          v46 = self->_extension;
          v69[0] = @"Extension";
          v69[1] = @"ProfileServerID";
          v70[0] = v46;
          identifierForExtensions = [v43 identifierForExtensions];
          v70[1] = identifierForExtensions;
          v48 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
          [v45 setUserInfo:v48];

          v49 = [NSNumber numberWithBool:v63];
          [v45 setProperty:v49 forKey:v64];

          [v29 addObject:v45];
        }

        v39 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v39);
    }

    if (v58)
    {
      v50 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_PRIVATE_BROWSING_GROUP"];
      [v29 addObject:v50];

      v51 = SafariSettingsLocalizedString(@"Private Browsing", @"Extensions");
      v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:self set:"_setWebExtensionEnabledInPrivateBrowsing:forSpecifier:" get:"_enabledStateOfWebExtensionInPrivateBrowsingForSpecifier:" detail:0 cell:6 edit:0];

      [v52 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
      [v52 setUserInfo:self->_extension];
      [v29 addObject:v52];
    }

    v53 = [v29 copy];

    v3 = v57;
  }

  else
  {
    v53 = [v4 copy];
    v29 = v4;
  }

  return v53;
}

- (id)_specifiersForExtensionErrors
{
  v3 = webExtensionsController();
  v4 = [v3 webExtensionForExtension:self->_extension];

  if (!v4)
  {
    v27 = &__NSArray0__struct;
    goto LABEL_23;
  }

  manifestErrors = [v4 manifestErrors];
  if ([v4 canLoad] && !objc_msgSend(manifestErrors, "count"))
  {
    v27 = &__NSArray0__struct;
    goto LABEL_22;
  }

  if (([v4 canLoad] & 1) == 0 && !objc_msgSend(manifestErrors, "count"))
  {
    v6 = [NSError errorWithDomain:WBSWebExtensionErrorDomain code:1 userInfo:0];
    v49 = v6;
    v7 = [NSArray arrayWithObjects:&v49 count:1];

    manifestErrors = v7;
  }

  v8 = [PSSpecifier groupSpecifierWithID:@"MANIFEST_ERRORS"];
  if ([v4 isDevelopmentBuild])
  {
    v9 = [NSMutableArray arrayWithObject:v8];
    v10 = +[UIColor systemRedColor];
    v11 = [UIImage systemImageNamed:@"xmark.octagon.fill"];
    v33 = v10;
    v12 = [v11 imageWithTintColor:v10 renderingMode:1];

    v13 = SafariSettingsLocalizedString(@"Web Extension error section title", @"Extensions");
    v36 = v4;
    displayShortName = [v4 displayShortName];
    v15 = [NSString stringWithFormat:v13, displayShortName];
    v34 = v8;
    [v8 setName:v15];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = manifestErrors;
    obj = manifestErrors;
    v16 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      v19 = PSCellClassKey;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v22 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
          [v22 setProperty:objc_opt_class() forKey:v19];
          v43[0] = @"title";
          localizedDescription = [v21 localizedDescription];
          v44[0] = localizedDescription;
          v44[1] = v12;
          v43[1] = @"image";
          v43[2] = @"imageDirectionalMargins";
          v38[0] = xmmword_7B640;
          v38[1] = xmmword_7B650;
          v24 = [NSValue valueWithBytes:v38 objCType:"{NSDirectionalEdgeInsets=dddd}"];
          v44[2] = v24;
          v25 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
          [v22 setUserInfo:v25];

          [v9 addObject:v22];
        }

        v17 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v17);
    }

    v26 = v9;
    v27 = [v9 copy];

    manifestErrors = v35;
    v4 = v36;
    v8 = v34;
    goto LABEL_20;
  }

  if (([v4 canLoad] & 1) == 0)
  {
    v26 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    v47 = @"title";
    v28 = SafariSettingsLocalizedString(@"Web Extension fatal error description", @"Extensions");
    displayShortName2 = [v4 displayShortName];
    v30 = [NSString stringWithFormat:v28, displayShortName2];
    v48 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [v26 setUserInfo:v31];

    [v26 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v46[0] = v8;
    v46[1] = v26;
    v27 = [NSArray arrayWithObjects:v46 count:2];
LABEL_20:

    goto LABEL_21;
  }

  v27 = &__NSArray0__struct;
LABEL_21:

LABEL_22:
LABEL_23:

  return v27;
}

- (void)_showManageStorageConfirmationPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = webExtensionsController();
  v6 = [v5 webExtensionForExtension:self->_extension];

  userInfo = [promptCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"failedToCalculateExtensionStorage"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = SafariSettingsLocalizedString(@"An error occurred while calculating extension storage.", @"Extensions");
    v11 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];
    v12 = SafariSettingsLocalizedString(@"OK", @"Safari");
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:0];
    [v11 addAction:v13];

    [(SafariWebExtensionsPermissionsSettingsController *)self presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    userInfo2 = [promptCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:@"storageSize"];

    v15 = +[SafariSettingsController tabGroupManager];
    namedProfiles = [v15 namedProfiles];
    v17 = [namedProfiles count];

    if (v17)
    {
      v18 = @"The “%@” extension is using %@ of storage space. (profiles)";
    }

    else
    {
      v18 = @"The “%@” extension is using %@ of storage space.";
    }

    v19 = SafariSettingsLocalizedString(v18, @"Extensions");
    displayName = [v6 displayName];
    [v10 unsignedLongLongValue];
    v21 = NSLocalizedFileSizeDescription();
    v11 = [NSString stringWithFormat:v19, displayName, v21];

    v22 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v27[0] = PSConfirmationTitleKey;
    v23 = SafariSettingsLocalizedString(@"Clear Storage Title", @"Extensions");
    v28[0] = v23;
    v28[1] = v11;
    v27[1] = PSConfirmationPromptKey;
    v27[2] = PSConfirmationOKKey;
    v24 = SafariSettingsLocalizedString(@"Delete", @"Extensions");
    v28[2] = v24;
    v27[3] = PSConfirmationCancelKey;
    v25 = SafariSettingsLocalizedString(@"Cancel", @"Extensions");
    v28[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
    [v22 setupWithDictionary:v26];

    [v22 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    [v22 setProperty:promptCopy forKey:@"manageStorageButton"];
    [v22 setConfirmationAction:"_deleteExtensionStorage:"];
    [(SafariWebExtensionsPermissionsSettingsController *)self showConfirmationViewForSpecifier:v22];
  }
}

- (BOOL)_clearStorageButtonWasOnlyButtonInExtensionsButtonsGroup:(int64_t)group
{
  v4 = [(SafariWebExtensionsPermissionsSettingsController *)self specifierAtIndex:group - 1];
  v5 = [(SafariWebExtensionsPermissionsSettingsController *)self specifierForID:@"EXTENSION_BUTTONS_GROUP"];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)_deleteExtensionStorage:(id)storage
{
  storageCopy = storage;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v4 profileServerIDToWebExtensionsControllers];
  allValues = [profileServerIDToWebExtensionsControllers allValues];

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = __76__SafariWebExtensionsPermissionsSettingsController__deleteExtensionStorage___block_invoke;
  v37[3] = &unk_8AF48;
  v40 = v43;
  v41 = v44;
  v42 = [allValues count];
  v22 = storageCopy;
  v38 = v22;
  selfCopy = self;
  v24 = objc_retainBlock(v37);
  v7 = webExtensionsController();
  v25 = [v7 webExtensionForExtension:self->_extension];

  composedIdentifier = [v25 composedIdentifier];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = allValues;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v8)
  {
    v9 = *v34;
    v10 = WKWebExtensionDataTypeLocal;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        webKitController = [v12 webKitController];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          dataRecords = self->_dataRecords;
          webKitContext = [v25 webKitContext];
          v17 = [(NSMapTable *)dataRecords objectForKey:webKitContext];

          webKitController2 = [v12 webKitController];
          v19 = [NSSet setWithObject:v10];
          v46 = v17;
          v20 = [NSArray arrayWithObjects:&v46 count:1];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = __76__SafariWebExtensionsPermissionsSettingsController__deleteExtensionStorage___block_invoke_2;
          v28[3] = &unk_8AF70;
          v21 = v17;
          v29 = v21;
          v32 = v44;
          v31 = v24;
          v30 = composedIdentifier;
          [webKitController2 removeDataOfTypes:v19 fromDataRecords:v20 completionHandler:v28];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
}

void __76__SafariWebExtensionsPermissionsSettingsController__deleteExtensionStorage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    v5 = WBSWebExtensionLocalStorageWasDeletedNotification;
    v12 = WBSWebExtensionComposedIdentifierKey;
    v13 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v4 postNotificationName:v5 object:0 userInfo:v6];
  }

  if (*(a1 + 64) == *(*(*(a1 + 48) + 8) + 24))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v7 = SafariSettingsLocalizedString(@"An error occurred attempting to delete extension storage.", @"Extensions");
      v8 = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:1];
      v9 = SafariSettingsLocalizedString(@"OK", @"Safari");
      v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
      [v8 addAction:v10];

      [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      v7 = [*(a1 + 32) propertyForKey:@"manageStorageButton"];
      v11 = [*(a1 + 40) indexOfSpecifier:v7];
      [*(a1 + 40) removeSpecifier:v7 animated:1];
      if ([*(a1 + 40) _clearStorageButtonWasOnlyButtonInExtensionsButtonsGroup:v11])
      {
        [*(a1 + 40) removeSpecifierID:@"EXTENSION_BUTTONS_GROUP"];
      }
    }
  }
}

uint64_t __76__SafariWebExtensionsPermissionsSettingsController__deleteExtensionStorage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) errors];
    v4 = [v3 count];

    if (v4)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 16);

  return v6();
}

- (BOOL)_isExtensionEnabledInMoreThanOneProfile
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[SafariSettingsController tabGroupManager];
  profiles = [v3 profiles];

  obj = profiles;
  v5 = [profiles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = +[SafariSettingsController extensionsProfilesDataSource];
        profileServerIDToWebExtensionsControllers = [v11 profileServerIDToWebExtensionsControllers];
        identifierForExtensions = [v10 identifierForExtensions];
        v14 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:identifierForExtensions];

        v7 += [v14 extensionIsEnabled:self->_extension];
        if (v7 > 1)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)_specifiersForExtensionSettingsAndStorage
{
  v3 = +[NSMutableArray array];
  v4 = webExtensionsController();
  v5 = [v4 webExtensionForExtension:self->_extension];

  composedIdentifier = [v5 composedIdentifier];
  v7 = webExtensionsController();
  v8 = [SFExtensionWrapper extensionWrapperForWebExtensionWithComposedIdentifier:composedIdentifier webExtensionsController:v7];

  if ([v8 isEnabledInAnyProfile])
  {
    optionsPageURL = [v5 optionsPageURL];

    if (optionsPageURL)
    {
      v10 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_BUTTONS_GROUP"];
      [v3 addObject:v10];

      v11 = [PSSpecifier alloc];
      v12 = SafariSettingsLocalizedString(@"Web Extension Settings Button Title", @"Extensions");
      v13 = [v11 initWithName:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];

      if ([(SafariWebExtensionsPermissionsSettingsController *)self _isExtensionEnabledInMoreThanOneProfile])
      {
        [v13 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v13 setUserInfo:self->_extension];
      }

      [v13 setButtonAction:"_showWebExtensionSettings:"];
      [v3 addObject:v13];
    }
  }

  if ([v5 hasPermission:unlimitedStoragePermissionKey])
  {
    [(SafariWebExtensionsPermissionsSettingsController *)self _calculateExtensionStorageSizeAndCreateClearStorageButton];
  }

  v14 = [v3 copy];

  return v14;
}

- (void)_calculateExtensionStorageSizeAndCreateClearStorageButton
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v3 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v3 profileServerIDToWebExtensionsControllers];
  allValues = [profileServerIDToWebExtensionsControllers allValues];

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __109__SafariWebExtensionsPermissionsSettingsController__calculateExtensionStorageSizeAndCreateClearStorageButton__block_invoke;
  v28[3] = &unk_8AF98;
  v28[5] = v30;
  v28[6] = v29;
  v28[7] = v31;
  v28[8] = [allValues count];
  v28[4] = self;
  v18 = objc_retainBlock(v28);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = allValues;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v6)
  {
    v17 = *v25;
    v7 = WKWebExtensionDataTypeLocal;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 webExtensionForExtension:self->_extension];
        v11 = [v9 extensionIsEnabled:self->_extension];
        [v9 initializeWebKitControllerIfNeededFromSettings:1];
        webKitController = [v9 webKitController];
        v13 = [NSSet setWithObjects:v7, 0];
        webKitContext = [v10 webKitContext];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = __109__SafariWebExtensionsPermissionsSettingsController__calculateExtensionStorageSizeAndCreateClearStorageButton__block_invoke_2;
        v19[3] = &unk_8AFC0;
        v19[4] = self;
        v15 = v10;
        v20 = v15;
        v22 = v31;
        v21 = v18;
        v23 = v11;
        [webKitController fetchDataRecordOfTypes:v13 forExtensionContext:webKitContext completionHandler:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v31, 8);
}

void __109__SafariWebExtensionsPermissionsSettingsController__calculateExtensionStorageSizeAndCreateClearStorageButton__block_invoke(uint64_t a1, void *a2, unsigned int a3, double a4)
{
  v7 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + a4;
  if (*(a1 + 64) == *(*(*(a1 + 40) + 8) + 24) && (*(*(*(a1 + 48) + 8) + 24) != 0.0 || *(*(*(a1 + 56) + 8) + 24) == 1))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = *(*(a1 + 32) + OBJC_IVAR___PSListController__specifiers);
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v35 + 1) + 8 * v12) identifier];
        v14 = [v13 isEqualToString:@"manageStorageButtonIdentifier"];

        if (v14)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      v15 = [PSSpecifier alloc];
      v16 = SafariSettingsLocalizedString(@"Clear Storage Title", @"Extensions");
      v8 = [v15 initWithName:v16 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:0];

      v39[0] = @"storageSize";
      v17 = [NSNumber numberWithDouble:*(*(*(a1 + 48) + 8) + 24)];
      v39[1] = @"failedToCalculateExtensionStorage";
      v40[0] = v17;
      v18 = [NSNumber numberWithBool:*(*(*(a1 + 56) + 8) + 24)];
      v40[1] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
      [v8 setUserInfo:v19];

      [v8 setButtonAction:"_showManageStorageConfirmationPrompt:"];
      [v8 setIdentifier:@"manageStorageButtonIdentifier"];
      v20 = +[SafariSettingsController tabGroupManager];
      v21 = [v20 namedProfiles];
      v22 = [v21 count];

      v23 = [v7 composedIdentifier];
      v24 = +[WBSManagedExtensionsController sharedController];
      if ([v24 managedExtensionStateForComposedIdentifier:v23])
      {
        v25 = 1;
      }

      else
      {
        v26 = +[WBSManagedExtensionsController sharedController];
        v25 = [v26 managedExtensionPrivateBrowsingStateForComposedIdentifier:v23] != 0;
      }

      if (((v22 != 0 || v25) & a3) != 0)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v28 = [v7 newTabOverridePageURL];
      if (v28)
      {
        v29 = a3;
      }

      else
      {
        v29 = 0;
      }

      v30 = v27 + v29;

      if ([*(a1 + 32) indexOfSpecifierID:@"EXTENSION_BUTTONS_GROUP"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = +[NSMutableArray array];
        v32 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_BUTTONS_GROUP"];
        [v31 addObject:v32];

        [v31 addObject:v8];
        v33 = *(a1 + 32);
        v34 = [v31 copy];
        [v33 insertContiguousSpecifiers:v34 atEndOfGroup:v30 - 1];
      }

      else
      {
        [*(a1 + 32) insertSpecifier:v8 atEndOfGroup:v30];
      }
    }
  }
}

void __109__SafariWebExtensionsPermissionsSettingsController__calculateExtensionStorageSizeAndCreateClearStorageButton__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (!*(*(a1 + 32) + 152))
  {
    v4 = +[NSMapTable weakToStrongObjectsMapTable];
    v5 = *(a1 + 32);
    v6 = *(v5 + 152);
    *(v5 + 152) = v4;

    v3 = v14;
  }

  if (v3)
  {
    v7 = *(*(a1 + 32) + 152);
    v8 = [*(a1 + 40) webKitContext];
    [v7 setObject:v14 forKey:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v14 errors];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v14 totalSizeInBytes];
  }

  else
  {
    v11 = [v14 totalSize];
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  (*(*(a1 + 48) + 16))(v11);
}

- (id)specifiers
{
  [(SafariWebExtensionsPermissionsSettingsController *)self _setExtensionIfNeeded];
  v3 = webExtensionsController();
  navigationController = [(SafariWebExtensionsPermissionsSettingsController *)self navigationController];
  extensions = [v3 extensions];
  if ([extensions containsObject:self->_extension])
  {
  }

  else
  {
    viewIfLoaded = [(SafariWebExtensionsPermissionsSettingsController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      v8 = [navigationController popViewControllerAnimated:1];
      v9 = 0;
      goto LABEL_36;
    }
  }

  v10 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v10)
  {
    v9 = v10;
    goto LABEL_36;
  }

  v88 = OBJC_IVAR___PSListController__specifiers;
  v90 = navigationController;
  v11 = +[NSMutableArray array];
  v12 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_INFO_GROUP"];
  [v11 addObject:v12];
  v13 = [v3 webExtensionForExtension:self->_extension];
  displayName = [v13 displayName];
  v14 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 canLoad]);
  v93 = PSEnabledKey;
  [v14 setProperty:v15 forKey:?];

  preferencesIcon = [v13 preferencesIcon];
  v17 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
  [v17 size];
  v19 = v18;
  v21 = v20;

  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = __62__SafariWebExtensionsPermissionsSettingsController_specifiers__block_invoke;
  v98[3] = &unk_8AFE8;
  v98[4] = self;
  v22 = [preferencesIcon safari_dynamicImageWithSize:v98 generator:{v19, v21}];

  v86 = v22;
  [v14 setProperty:v22 forKey:PSIconImageKey];
  [v14 setUserInfo:self->_extension];
  v87 = v14;
  [v11 addObject:v14];
  v23 = SafariSettingsLocalizedString(@"App", @"Extensions");
  v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:"_hostAppDisplayName:" detail:0 cell:4 edit:0];
  [v11 addObject:v24];

  v91 = v13;
  displayDescription = [v13 displayDescription];
  if ([displayDescription length])
  {
    v26 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v26 setProperty:@"DESCRIPTION" forKey:PSIDKey];
    v102[0] = @"title";
    v27 = SafariSettingsLocalizedString(@"Description", @"Extensions");
    v102[1] = @"subtitle";
    v103[0] = v27;
    v103[1] = displayDescription;
    v28 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:2];
    [v26 setUserInfo:v28];

    [v26 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v11 addObject:v26];
  }

  _specifiersForEnablingExtension = [(SafariWebExtensionsPermissionsSettingsController *)self _specifiersForEnablingExtension];
  [v11 addObjectsFromArray:_specifiersForEnablingExtension];

  _specifiersForExtensionErrors = [(SafariWebExtensionsPermissionsSettingsController *)self _specifiersForExtensionErrors];
  [v11 addObjectsFromArray:_specifiersForExtensionErrors];

  v31 = webExtensionsController();
  if (![v31 extensionIsEnabled:self->_extension])
  {
    v32 = v91;
LABEL_19:

    goto LABEL_20;
  }

  v32 = v91;
  newTabOverridePageURL = [v91 newTabOverridePageURL];

  if (newTabOverridePageURL)
  {
    v34 = +[WBSManagedNewTabPageController sharedController];
    managedNewTabPageState = [v34 managedNewTabPageState];

    v31 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_OVERRIDE_SETTINGS_GROUP"];
    if (managedNewTabPageState)
    {
      v36 = _WBSLocalizedString();
      [v31 setProperty:v36 forKey:PSFooterTextGroupKey];
    }

    [v11 addObject:v31];
    newTabOverridePageURL2 = [v91 newTabOverridePageURL];

    if (newTabOverridePageURL2)
    {
      v38 = SafariSettingsLocalizedString(@"New Tab Override Title", @"Extensions");
      v39 = displayDescription;
      if (managedNewTabPageState)
      {
        v40 = 0;
        v41 = -1;
      }

      else
      {
        v40 = objc_opt_class();
        v41 = 2;
      }

      v42 = managedNewTabPageState == 0;
      v43 = [PSSpecifier preferenceSpecifierNamed:v38 target:self set:0 get:"_tabOverrideTopLevelDetailString" detail:v40 cell:v41 edit:0];

      [v43 setProperty:@"NEW_TAB_OVERRIDE" forKey:PSIDKey];
      v44 = [NSNumber numberWithBool:v42];
      [v43 setProperty:v44 forKey:v93];

      v100 = @"profileID";
      v101 = WBSDefaultProfileIdentifier;
      v45 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      [v43 setUserInfo:v45];

      [v11 addObject:v43];
      displayDescription = v39;
    }

    goto LABEL_19;
  }

LABEL_20:
  v85 = displayDescription;
  _specifiersForExtensionSettingsAndStorage = [(SafariWebExtensionsPermissionsSettingsController *)self _specifiersForExtensionSettingsAndStorage];
  [v11 addObjectsFromArray:_specifiersForExtensionSettingsAndStorage];

  v47 = [[SafariExtensionPermissionsExplanation alloc] initWithExtension:v32];
  specifiers = [(SafariExtensionPermissionsExplanation *)v47 specifiers];
  [v11 addObjectsFromArray:specifiers];

  composedIdentifier = [v32 composedIdentifier];
  v50 = webExtensionsController();
  v51 = [SFExtensionWrapper extensionWrapperForWebExtensionWithComposedIdentifier:composedIdentifier webExtensionsController:v50];

  v84 = v51;
  if ([v51 isEnabledInAnyProfile])
  {
    v82 = v12;
    v83 = v3;
    selfCopy = self;
    configuredPermissionOrigins = [v32 configuredPermissionOrigins];
    allKeys = [configuredPermissionOrigins allKeys];
    v53 = [allKeys safari_setByApplyingBlock:&__block_literal_global_18];

    v80 = v53;
    allObjects = [v53 allObjects];
    v55 = [allObjects sortedArrayUsingComparator:&__block_literal_global_217];

    composedIdentifier2 = [v51 composedIdentifier];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v57 = v55;
    v58 = [v57 countByEnumeratingWithState:&v94 objects:v99 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v95;
      do
      {
        for (i = 0; i != v59; i = i + 1)
        {
          if (*v95 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v94 + 1) + 8 * i);
          v63 = [WBSWebExtensionMatchPattern matchPatternForDomain:v62];
          v64 = [(SafariWebExtensionsPermissionsSettingsController *)selfCopy _perDomainSpecifierForMatchPattern:v63 withName:0];

          v65 = +[WBSManagedExtensionsController sharedController];
          v66 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v65 domainIsManaged:v62 forComposedIdentifier:composedIdentifier2] ^ 1);
          [v64 setProperty:v66 forKey:v93];

          [v11 addObject:v64];
        }

        v59 = [v57 countByEnumeratingWithState:&v94 objects:v99 count:16];
      }

      while (v59);
    }

    v67 = v57;

    v32 = v91;
    v68 = displayName;
    if ([v91 requestsAccessToAllHosts])
    {
      if ([v57 count])
      {
        v69 = @"Web Extension Default For Other Websites Title";
      }

      else
      {
        v69 = @"Web Extension Default For All Websites Title";
      }

      v70 = SafariSettingsLocalizedString(v69, @"Extensions");
      v71 = +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern];
      v72 = [(SafariWebExtensionsPermissionsSettingsController *)selfCopy _perDomainSpecifierForMatchPattern:v71 withName:v70];

      v73 = +[WBSManagedExtensionsController sharedController];
      v74 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v73 allDomainsAreManagedForComposedIdentifier:composedIdentifier2] ^ 1);
      [v72 setProperty:v74 forKey:v93];

      [v11 addObject:v72];
      v32 = v91;
    }

    v75 = [v11 copy];
    v76 = *&selfCopy->super.PSListController_opaque[v88];
    *&selfCopy->super.PSListController_opaque[v88] = v75;

    v9 = *&selfCopy->super.PSListController_opaque[v88];
    v12 = v82;
    v3 = v83;
    navigationController = v90;
  }

  else
  {
    v77 = [v11 copy];
    v78 = *&self->super.PSListController_opaque[v88];
    *&self->super.PSListController_opaque[v88] = v77;

    v9 = *&self->super.PSListController_opaque[v88];
    v68 = displayName;
    navigationController = v90;
  }

LABEL_36:

  return v9;
}

id __62__SafariWebExtensionsPermissionsSettingsController_specifiers__block_invoke_2(id a1, WBSWebExtensionMatchPattern *a2)
{
  v2 = a2;
  if (([(WBSWebExtensionMatchPattern *)v2 matchesAllHosts]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(WBSWebExtensionMatchPattern *)v2 host];
    v3 = [v4 safari_stringByRemovingWwwAndWildcardDotPrefixes];
  }

  return v3;
}

- (void)_setExtensionIfNeeded
{
  if (!self->_extension)
  {
    specifier = [(SafariWebExtensionsPermissionsSettingsController *)self specifier];
    userInfo = [specifier userInfo];
    extension = [userInfo extension];
    extension = self->_extension;
    self->_extension = extension;
  }
}

- (id)_enabledStateOfWebExtensionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"Extension"];

  v6 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v6 profileServerIDToWebExtensionsControllers];
  userInfo2 = [specifierCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:@"ProfileServerID"];
  v10 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:v9];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 extensionIsEnabled:v5]);

  return v11;
}

- (void)_setWebExtensionEnabled:(id)enabled forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  userInfo = [specifierCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"Extension"];

  v10 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v10 profileServerIDToWebExtensionsControllers];
  userInfo2 = [specifierCopy userInfo];

  v13 = [userInfo2 objectForKeyedSubscript:@"ProfileServerID"];
  v14 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:v13];

  v15 = [v14 webExtensionForExtension:v9];
  LODWORD(profileServerIDToWebExtensionsControllers) = [enabledCopy BOOLValue];

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __89__SafariWebExtensionsPermissionsSettingsController__setWebExtensionEnabled_forSpecifier___block_invoke;
  v23 = &unk_8B070;
  v16 = v14;
  v24 = v16;
  v25 = v9;
  LOBYTE(v27) = profileServerIDToWebExtensionsControllers;
  selfCopy = self;
  v17 = v9;
  v18 = objc_retainBlock(&v20);
  v19 = v18;
  if (profileServerIDToWebExtensionsControllers)
  {
    [v16 reportCommandShortcutConflictsIfNecessaryForExtension:v15 presentingViewController:self completionHandler:{v18, v20, v21, v22, v23, v24, v25, selfCopy, v27}];
  }

  else
  {
    (v18[2])(v18);
  }
}

id __89__SafariWebExtensionsPermissionsSettingsController__setWebExtensionEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExtension:*(a1 + 40) isEnabled:*(a1 + 56)];
  [*(a1 + 48) _reloadSpecifiersSoon];
  v2 = *(a1 + 48);

  return [v2 postDistributedNotificationNamed:@"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings"];
}

- (id)_enabledStateOfWebExtensionInPrivateBrowsingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = webExtensionsController();
  userInfo = [specifierCopy userInfo];

  v6 = [v4 webExtensionForExtension:userInfo];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 readAllowedInPrivateBrowsingValueFromDisk]);

  return v7;
}

- (void)_setWebExtensionEnabledInPrivateBrowsing:(id)browsing forSpecifier:(id)specifier
{
  browsingCopy = browsing;
  specifierCopy = specifier;
  v8 = webExtensionsController();
  userInfo = [specifierCopy userInfo];
  v10 = [v8 webExtensionForExtension:userInfo];

  v11 = +[NSUserDefaults safari_browserDefaults];
  LODWORD(userInfo) = [v11 BOOLForKey:WBSPrivateBrowsingRequiresAuthenticationPreferenceKey];

  if (userInfo && +[WBSFeatureAvailability isLockedPrivateBrowsingEnabled](WBSFeatureAvailability, "isLockedPrivateBrowsingEnabled") && [browsingCopy BOOLValue])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __106__SafariWebExtensionsPermissionsSettingsController__setWebExtensionEnabledInPrivateBrowsing_forSpecifier___block_invoke;
    v12[3] = &unk_8B098;
    v13 = specifierCopy;
    selfCopy = self;
    v15 = browsingCopy;
    v16 = v10;
    [_SFSettingsAuthentication authenticateForSettings:self allowAuthenticationReuse:0 completionHandler:v12];
  }

  else
  {
    [(SafariWebExtensionsPermissionsSettingsController *)self _updateAllowInPrivateBrowsingValue:browsingCopy forWebExtension:v10];
  }
}

id __106__SafariWebExtensionsPermissionsSettingsController__setWebExtensionEnabledInPrivateBrowsing_forSpecifier___block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    return [v3 _updateAllowInPrivateBrowsingValue:v4 forWebExtension:v5];
  }

  else
  {
    [PSRootController setPreferenceValue:&__kCFBooleanFalse specifier:a1[4]];
    v8 = a1[4];
    v7 = a1[5];

    return [v7 reloadSpecifier:v8 animated:1];
  }
}

- (void)_updateAllowInPrivateBrowsingValue:(id)value forWebExtension:(id)extension
{
  extensionCopy = extension;
  valueCopy = value;
  [extensionCopy setAllowedInPrivateBrowsing:{objc_msgSend(valueCopy, "BOOLValue")}];
  v7 = +[NSDistributedNotificationCenter defaultCenter];
  v8 = WBSWebExtensionDidChangeEnabledStateInPrivateBrowsingNotification;
  v11[0] = WBSWebExtensionComposedIdentifierKey;
  composedIdentifier = [extensionCopy composedIdentifier];

  v11[1] = WBSExtensionEnabledInPrivateBrowsingNotificationKey;
  v12[0] = composedIdentifier;
  v12[1] = valueCopy;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  [v7 postNotificationName:v8 object:0 userInfo:v10];
}

- (id)_tabOverrideTopLevelDetailString
{
  v2 = webExtensionsController();
  v3 = [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:v2];

  return v3;
}

- (void)_showWebExtensionSettings:(id)settings
{
  v4 = webExtensionsController();
  v12 = [v4 webExtensionForExtension:self->_extension];

  composedIdentifier = [v12 composedIdentifier];
  v6 = webExtensionsController();
  v7 = [SFExtensionWrapper extensionWrapperForWebExtensionWithComposedIdentifier:composedIdentifier webExtensionsController:v6];

  enabledNamedProfiles = [v7 enabledNamedProfiles];
  extension = self->_extension;
  if ([enabledNamedProfiles count])
  {
    firstObject = [enabledNamedProfiles firstObject];
    identifier = [firstObject identifier];
    openExtensionSettingsInMobileSafariForExtension(extension, identifier);
  }

  else
  {
    openExtensionSettingsInMobileSafariForExtension(extension, WBSDefaultProfileIdentifier);
  }
}

- (id)_domainPermissionForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v5 = webExtensionsController();
  v6 = [v5 webExtensionForExtension:self->_extension];

  configuredPermissionOrigins = [v6 configuredPermissionOrigins];
  v8 = [configuredPermissionOrigins objectForKeyedSubscript:userInfo];

  if (v8)
  {
    v9 = [configuredPermissionOrigins objectForKeyedSubscript:userInfo];
  }

  else
  {
    v9 = &off_90C10;
    if ([v6 requestsAccessToAllHosts])
    {
      v10 = +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern];
      v11 = [configuredPermissionOrigins objectForKeyedSubscript:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = &off_90C10;
      }

      v9 = v13;
    }
  }

  return v9;
}

- (void)_setDomainPermission:(id)permission forSpecifier:(id)specifier
{
  permissionCopy = permission;
  userInfo = [specifier userInfo];
  v8 = +[NSSet set];
  v22 = +[NSDate distantFuture];
  v28 = userInfo;
  v9 = [NSArray arrayWithObjects:&v28 count:1];
  v10 = [NSSet setWithArray:v9];

  v21 = permissionCopy;
  integerValue = [permissionCopy integerValue];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v12 profileServerIDToWebExtensionsControllers];
  allValues = [profileServerIDToWebExtensionsControllers allValues];

  v15 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v19 = [*(*(&v23 + 1) + 8 * i) webExtensionForExtension:self->_extension];
        v20 = v19;
        if (integerValue == &dword_0 + 1)
        {
          [v19 grantPermissions:v8 origins:v10 expirationDate:v22];
        }

        else if (integerValue)
        {
          if (integerValue == -1)
          {
            [v19 revokePermissions:v8 origins:v10 expirationDate:v22];
          }
        }

        else
        {
          [v19 removeGrantedAndRevokedPermissions:v8 origins:v10 exactPatternMatchesOnly:{objc_msgSend(userInfo, "matchesAllHosts")}];
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [(SafariWebExtensionsPermissionsSettingsController *)self reloadSpecifiers];
}

- (void)_extensionEnabledStateDidChange:(id)change
{
  object = [change object];
  if ([object isEqual:self->_extension])
  {
    [(SafariWebExtensionsPermissionsSettingsController *)self _reloadSpecifiersSoon];
  }
}

- (id)_perDomainSpecifierForMatchPattern:(id)pattern withName:(id)name
{
  patternCopy = pattern;
  nameCopy = name;
  v8 = [&off_90DE8 safari_mapObjectsUsingBlock:&__block_literal_global_238];
  if (nameCopy)
  {
    host = nameCopy;
  }

  else
  {
    host = [patternCopy host];
  }

  v10 = host;
  safari_stringByRemovingWwwAndWildcardDotPrefixes = [host safari_stringByRemovingWwwAndWildcardDotPrefixes];
  v12 = [PSSpecifier preferenceSpecifierNamed:safari_stringByRemovingWwwAndWildcardDotPrefixes target:self set:"_setDomainPermission:forSpecifier:" get:"_domainPermissionForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
  [v12 setValues:&off_90DE8 titles:v8];
  [v12 setProperty:&off_90C10 forKey:PSDefaultValueKey];
  [v12 setUserInfo:patternCopy];

  return v12;
}

NSString *__cdecl __96__SafariWebExtensionsPermissionsSettingsController__perDomainSpecifierForMatchPattern_withName___block_invoke(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 integerValue]+ 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = SafariSettingsLocalizedString(*(&off_8B120 + v2), @"Extensions");
  }

  return v3;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(SafariWebExtensionsPermissionsSettingsController *)self specifierAtIndexPath:path];
  userInfo = [v5 userInfo];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([userInfo matchesAllHosts] & 1) == 0)
  {
    v8 = webExtensionsController();
    v9 = [v8 webExtensionForExtension:self->_extension];

    host = [userInfo host];
    safari_stringByRemovingWwwAndWildcardDotPrefixes = [host safari_stringByRemovingWwwAndWildcardDotPrefixes];

    v12 = +[WBSManagedExtensionsController sharedController];
    composedIdentifier = [v9 composedIdentifier];
    v14 = [v12 domainIsManaged:safari_stringByRemovingWwwAndWildcardDotPrefixes forComposedIdentifier:composedIdentifier];

    if (v14)
    {
      v7 = 0;
    }

    else
    {
      [v9 manifestAccessibleOrigins];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v30 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v25 = v9;
        v26 = v5;
        v18 = *v28;
        v7 = 1;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            if (([v20 matchesAllHosts] & 1) == 0)
            {
              host2 = [v20 host];
              safari_stringByRemovingWwwAndWildcardDotPrefixes2 = [host2 safari_stringByRemovingWwwAndWildcardDotPrefixes];
              v23 = [safari_stringByRemovingWwwAndWildcardDotPrefixes2 isEqual:safari_stringByRemovingWwwAndWildcardDotPrefixes];

              if (v23)
              {
                v7 = 0;
                goto LABEL_17;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

LABEL_17:
        v9 = v25;
        v5 = v26;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(SafariWebExtensionsPermissionsSettingsController *)self specifierAtIndexPath:path, style];
  userInfo = [style userInfo];
  v8 = webExtensionsController();
  v9 = [v8 webExtensionForExtension:self->_extension];

  host = [userInfo host];
  safari_stringByRemovingWwwAndWildcardDotPrefixes = [host safari_stringByRemovingWwwAndWildcardDotPrefixes];

  configuredPermissionOrigins = [v9 configuredPermissionOrigins];
  allKeys = [configuredPermissionOrigins allKeys];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __99__SafariWebExtensionsPermissionsSettingsController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  v18[3] = &unk_8B100;
  v19 = safari_stringByRemovingWwwAndWildcardDotPrefixes;
  v14 = safari_stringByRemovingWwwAndWildcardDotPrefixes;
  v15 = [allKeys safari_filterObjectsUsingBlock:v18];

  v16 = +[NSSet set];
  v17 = [NSSet setWithArray:v15];
  [v9 removeGrantedAndRevokedPermissions:v16 origins:v17 exactPatternMatchesOnly:1];

  [(SafariWebExtensionsPermissionsSettingsController *)self reloadSpecifiers];
}

id __99__SafariWebExtensionsPermissionsSettingsController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 host];
  v4 = [v3 safari_stringByRemovingWwwAndWildcardDotPrefixes];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)_tintIconForDarkModeIfNeeded:(id)needed
{
  neededCopy = needed;
  [neededCopy safari_computeAverageLuminance];
  v5 = v4;
  safari_isGrayscale = [neededCopy safari_isGrayscale];
  safari_transparencyAnalysisResultIsNotOpaque = [neededCopy safari_transparencyAnalysisResultIsNotOpaque];
  if (v5 >= 0.1 || safari_isGrayscale == 0 || safari_transparencyAnalysisResultIsNotOpaque == 0)
  {
    v11 = neededCopy;
  }

  else
  {
    v10 = +[UIColor labelColor];
    v11 = [neededCopy imageWithTintColor:v10];
  }

  return v11;
}

- (NSString)authenticationPrompt
{
  v3 = webExtensionsController();
  v4 = [v3 webExtensionForExtension:self->_extension];

  v5 = SafariSettingsLocalizedString(@"Turn On %@ in Private Browsing", @"Extensions");
  displayName = [v4 displayName];
  v7 = [NSString stringWithFormat:v5, displayName];

  return v7;
}

@end
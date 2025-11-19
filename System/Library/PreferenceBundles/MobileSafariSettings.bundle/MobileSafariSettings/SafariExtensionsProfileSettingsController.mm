@interface SafariExtensionsProfileSettingsController
- (SafariExtensionsProfileSettingsController)init;
- (SafariExtensionsProfileSettingsController)initWithProfileIdentifier:(id)a3;
- (id)_contentBlockerManager;
- (id)_contentBlockerWrappers;
- (id)_webExtensionWrappers;
- (id)_webExtensionsController;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SafariExtensionsProfileSettingsController

- (SafariExtensionsProfileSettingsController)initWithProfileIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SafariExtensionsProfileSettingsController;
  v6 = [(SafariExtensionsProfileSettingsController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileIdentifier, a3);
    v7->_showingExtensionsInline = 1;
    v8 = v7;
  }

  return v7;
}

- (SafariExtensionsProfileSettingsController)init
{
  v6.receiver = self;
  v6.super_class = SafariExtensionsProfileSettingsController;
  v2 = [(SafariExtensionsProfileSettingsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)_webExtensionsController
{
  v3 = +[SafariSettingsController extensionsProfilesDataSource];
  v4 = [v3 profileServerIDToWebExtensionsControllers];
  v5 = v4;
  if (self->_profileIdentifier)
  {
    v6 = [v4 objectForKeyedSubscript:?];
  }

  else
  {
    v7 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [v5 objectForKeyedSubscript:v7];
  }

  return v6;
}

- (id)_contentBlockerManager
{
  v3 = +[SafariSettingsController extensionsProfilesDataSource];
  v4 = [v3 profileServerIDToContentBlockerManagers];
  v5 = v4;
  if (self->_profileIdentifier)
  {
    v6 = [v4 objectForKeyedSubscript:?];
  }

  else
  {
    v7 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [v5 objectForKeyedSubscript:v7];
  }

  return v6;
}

- (id)_webExtensionWrappers
{
  v2 = [(SafariExtensionsProfileSettingsController *)self _webExtensionsController];
  v3 = [v2 extensions];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __66__SafariExtensionsProfileSettingsController__webExtensionWrappers__block_invoke;
  v7[3] = &unk_8A378;
  v8 = v2;
  v4 = v2;
  v5 = [v3 safari_mapAndFilterObjectsUsingBlock:v7];

  return v5;
}

id __66__SafariExtensionsProfileSettingsController__webExtensionWrappers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = [v3 composedIdentifier];
  v5 = [SFExtensionWrapper extensionWrapperForWebExtensionWithComposedIdentifier:v4 webExtensionsController:*(a1 + 32)];

  return v5;
}

- (id)_contentBlockerWrappers
{
  v3 = [(SafariExtensionsProfileSettingsController *)self _webExtensionsController];
  v4 = [(SafariExtensionsProfileSettingsController *)self _contentBlockerManager];
  v5 = [v4 extensions];
  v6 = [v5 allObjects];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__SafariExtensionsProfileSettingsController__contentBlockerWrappers__block_invoke;
  v10[3] = &unk_8A3A0;
  v11 = v3;
  v12 = self;
  v7 = v3;
  v8 = [v6 safari_mapAndFilterObjectsUsingBlock:v10];

  return v8;
}

id __68__SafariExtensionsProfileSettingsController__contentBlockerWrappers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];
  v4 = [*(a1 + 40) _contentBlockerManager];
  v5 = [SFExtensionWrapper extensionWrapperForContentBlockerWithComposedIdentifier:v3 contentBlockerManager:v4];

  return v5;
}

- (id)specifiers
{
  v2 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v37 = OBJC_IVAR___PSListController__specifiers;
    v47 = +[NSMutableArray array];
    v39 = [PSSpecifier groupSpecifierWithID:@"EXTENSIONS_PROFILE_HEADER"];
    v4 = self;
    if (self->_showingExtensionsInline)
    {
      v5 = SafariSettingsLocalizedString(@"Extensions Profiles Title", @"Extensions");
      [v39 setName:v5];

      v4 = self;
    }

    v6 = [(SafariExtensionsProfileSettingsController *)v4 _webExtensionWrappers];
    v7 = [(SafariExtensionsProfileSettingsController *)self _contentBlockerWrappers];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = [v8 sortedArrayUsingSelector:"localizedCompare:"];
    extensionWrappers = self->_extensionWrappers;
    self->_extensionWrappers = v9;

    v11 = +[WBSManagedExtensionsController sharedController];
    LODWORD(v7) = [v11 hasAnyExtensionManagement];

    if (v7)
    {
      [(NSArray *)self->_extensionWrappers safari_containsObjectPassingTest:&__block_literal_global_10];
      _WBSLocalizedString();
    }

    else
    {
      SafariSettingsLocalizedString(@"Extensions Profiles Header Text", @"Extensions");
    }
    v38 = ;
    [v39 setProperty:v38 forKey:PSFooterTextGroupKey];
    [v47 addObject:v39];
    v49 = [(SafariExtensionsProfileSettingsController *)self _webExtensionsController];
    v46 = [v49 parentalControlsAreEnabledForExtensions];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = self->_extensionWrappers;
    v48 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v48)
    {
      v45 = *v56;
      v40 = kISImageDescriptorTableUIName;
      v44 = PSIconImageKey;
      v42 = PSPrioritizeValueTextDisplayKey;
      v43 = PSEnabledKey;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v55 + 1) + 8 * i);
          v14 = [v13 displayName];
          if ([v13 contentBlockerHasSameNameAsWebExtensionFromSameApp:self->_extensionWrappers])
          {
            v15 = SafariSettingsLocalizedString(@"%@ — Content Blocker", @"Extensions");
            v16 = [v13 displayName];
            v17 = [NSString stringWithFormat:v15, v16];

            v14 = v17;
          }

          v18 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v14, self, 0, 0, [v13 settingsPermissionClass], 3, 0);
          objc_initWeak(&location, self);
          v19 = [v13 extension];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = __55__SafariExtensionsProfileSettingsController_specifiers__block_invoke_2;
          v51[3] = &unk_8A408;
          v51[4] = v13;
          objc_copyWeak(&v53, &location);
          v20 = v18;
          v52 = v20;
          [v49 _isExtensionBlockedByBlocklist:v19 completionHandler:v51];

          if ([v13 isContentBlocker])
          {
            goto LABEL_18;
          }

          v21 = [v13 extension];
          v22 = [v49 webExtensionForExtension:v21];

          if (!v22)
          {
            goto LABEL_18;
          }

          v23 = [v22 preferencesIcon];
          v24 = [ISImageDescriptor imageDescriptorNamed:v40];
          [v24 size];
          v25 = [WBSImageUtilities resizedImage:v23 withSize:?];

          if (!v25)
          {
LABEL_18:
            v26 = [v13 extension];
            v27 = [v26 _plugIn];
            v28 = [v27 uuid];
            v29 = [LSPlugInKitProxy pluginKitProxyForUUID:v28];

            v25 = [UIImage _iconForResourceProxy:v29 format:0];
          }

          [v20 setProperty:v25 forKey:v44];
          if (v46)
          {
            v30 = 0;
          }

          else
          {
            v31 = +[WBSManagedExtensionsController sharedController];
            v32 = [v13 composedIdentifier];
            v30 = [v31 managedExtensionStateForComposedIdentifier:v32] == 0;
          }

          v33 = [NSNumber numberWithBool:v30];
          [v20 setProperty:v33 forKey:v43];

          [v20 setProperty:&__kCFBooleanTrue forKey:v42];
          [v20 setUserInfo:v13];
          [v47 addObject:v20];

          objc_destroyWeak(&v53);
          objc_destroyWeak(&location);
        }

        v48 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v48);
    }

    v34 = [v47 copy];
    v35 = *&self->super.PSListController_opaque[v37];
    *&self->super.PSListController_opaque[v37] = v34;

    v3 = *&self->super.PSListController_opaque[v37];
  }

  return v3;
}

BOOL __55__SafariExtensionsProfileSettingsController_specifiers__block_invoke(id a1, SFExtensionWrapper *a2)
{
  v2 = a2;
  v3 = +[WBSManagedExtensionsController sharedController];
  v4 = [(SFExtensionWrapper *)v2 composedIdentifier];

  LOBYTE(v2) = [v3 managedExtensionStateForComposedIdentifier:v4] == 0;
  return v2;
}

void __55__SafariExtensionsProfileSettingsController_specifiers__block_invoke_2(id *a1, int a2)
{
  v4 = [a1[4] isContentBlocker];
  if (a2)
  {
    if ((v4 & 1) == 0)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = __55__SafariExtensionsProfileSettingsController_specifiers__block_invoke_3;
      v5[3] = &unk_89BE8;
      objc_copyWeak(&v7, a1 + 6);
      v6 = a1[5];
      dispatch_async(&_dispatch_main_q, v5);

      objc_destroyWeak(&v7);
    }
  }
}

void __55__SafariExtensionsProfileSettingsController_specifiers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained removeSpecifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(SafariExtensionsProfileSettingsController *)self indexForIndexPath:a5];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v12 = v9;
  v10 = [v9 userInfo];
  if ([v10 isEnabled])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SafariExtensionsProfileSettingsController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v10 = [v9 userInfo];
  if ([v10 isEnabled])
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  v12 = [v6 cellForRowAtIndexPath:v7];
  [v12 setAccessoryType:v11];

  if ([v10 isEnabled])
  {
    [v10 disable];
    [(SafariSettingsListController *)self postDistributedNotificationNamed:@"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings"];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __79__SafariExtensionsProfileSettingsController_tableView_didSelectRowAtIndexPath___block_invoke;
    v14[3] = &unk_895D8;
    v14[4] = self;
    [v10 enableWithPresentingViewController:self completionHandler:v14];
  }

  v13.receiver = self;
  v13.super_class = SafariExtensionsProfileSettingsController;
  [(SafariSettingsListController *)&v13 tableView:v6 didSelectRowAtIndexPath:v7];
}

@end
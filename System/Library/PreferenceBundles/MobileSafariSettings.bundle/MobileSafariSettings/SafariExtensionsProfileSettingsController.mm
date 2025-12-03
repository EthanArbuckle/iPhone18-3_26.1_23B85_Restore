@interface SafariExtensionsProfileSettingsController
- (SafariExtensionsProfileSettingsController)init;
- (SafariExtensionsProfileSettingsController)initWithProfileIdentifier:(id)identifier;
- (id)_contentBlockerManager;
- (id)_contentBlockerWrappers;
- (id)_webExtensionWrappers;
- (id)_webExtensionsController;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SafariExtensionsProfileSettingsController

- (SafariExtensionsProfileSettingsController)initWithProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SafariExtensionsProfileSettingsController;
  v6 = [(SafariExtensionsProfileSettingsController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileIdentifier, identifier);
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
  profileServerIDToWebExtensionsControllers = [v3 profileServerIDToWebExtensionsControllers];
  v5 = profileServerIDToWebExtensionsControllers;
  if (self->_profileIdentifier)
  {
    v6 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:?];
  }

  else
  {
    userInfo = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [v5 objectForKeyedSubscript:userInfo];
  }

  return v6;
}

- (id)_contentBlockerManager
{
  v3 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToContentBlockerManagers = [v3 profileServerIDToContentBlockerManagers];
  v5 = profileServerIDToContentBlockerManagers;
  if (self->_profileIdentifier)
  {
    v6 = [profileServerIDToContentBlockerManagers objectForKeyedSubscript:?];
  }

  else
  {
    userInfo = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [v5 objectForKeyedSubscript:userInfo];
  }

  return v6;
}

- (id)_webExtensionWrappers
{
  _webExtensionsController = [(SafariExtensionsProfileSettingsController *)self _webExtensionsController];
  extensions = [_webExtensionsController extensions];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __66__SafariExtensionsProfileSettingsController__webExtensionWrappers__block_invoke;
  v7[3] = &unk_8A378;
  v8 = _webExtensionsController;
  v4 = _webExtensionsController;
  v5 = [extensions safari_mapAndFilterObjectsUsingBlock:v7];

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
  _webExtensionsController = [(SafariExtensionsProfileSettingsController *)self _webExtensionsController];
  _contentBlockerManager = [(SafariExtensionsProfileSettingsController *)self _contentBlockerManager];
  extensions = [_contentBlockerManager extensions];
  allObjects = [extensions allObjects];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__SafariExtensionsProfileSettingsController__contentBlockerWrappers__block_invoke;
  v10[3] = &unk_8A3A0;
  v11 = _webExtensionsController;
  selfCopy = self;
  v7 = _webExtensionsController;
  v8 = [allObjects safari_mapAndFilterObjectsUsingBlock:v10];

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
    selfCopy2 = self;
    if (self->_showingExtensionsInline)
    {
      v5 = SafariSettingsLocalizedString(@"Extensions Profiles Title", @"Extensions");
      [v39 setName:v5];

      selfCopy2 = self;
    }

    _webExtensionWrappers = [(SafariExtensionsProfileSettingsController *)selfCopy2 _webExtensionWrappers];
    _contentBlockerWrappers = [(SafariExtensionsProfileSettingsController *)self _contentBlockerWrappers];
    v8 = [_webExtensionWrappers arrayByAddingObjectsFromArray:_contentBlockerWrappers];
    v9 = [v8 sortedArrayUsingSelector:"localizedCompare:"];
    extensionWrappers = self->_extensionWrappers;
    self->_extensionWrappers = v9;

    v11 = +[WBSManagedExtensionsController sharedController];
    LODWORD(_contentBlockerWrappers) = [v11 hasAnyExtensionManagement];

    if (_contentBlockerWrappers)
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
    _webExtensionsController = [(SafariExtensionsProfileSettingsController *)self _webExtensionsController];
    parentalControlsAreEnabledForExtensions = [_webExtensionsController parentalControlsAreEnabledForExtensions];
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
          displayName = [v13 displayName];
          if ([v13 contentBlockerHasSameNameAsWebExtensionFromSameApp:self->_extensionWrappers])
          {
            v15 = SafariSettingsLocalizedString(@"%@ — Content Blocker", @"Extensions");
            displayName2 = [v13 displayName];
            v17 = [NSString stringWithFormat:v15, displayName2];

            displayName = v17;
          }

          v18 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", displayName, self, 0, 0, [v13 settingsPermissionClass], 3, 0);
          objc_initWeak(&location, self);
          extension = [v13 extension];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = __55__SafariExtensionsProfileSettingsController_specifiers__block_invoke_2;
          v51[3] = &unk_8A408;
          v51[4] = v13;
          objc_copyWeak(&v53, &location);
          v20 = v18;
          v52 = v20;
          [_webExtensionsController _isExtensionBlockedByBlocklist:extension completionHandler:v51];

          if ([v13 isContentBlocker])
          {
            goto LABEL_18;
          }

          extension2 = [v13 extension];
          v22 = [_webExtensionsController webExtensionForExtension:extension2];

          if (!v22)
          {
            goto LABEL_18;
          }

          preferencesIcon = [v22 preferencesIcon];
          v24 = [ISImageDescriptor imageDescriptorNamed:v40];
          [v24 size];
          v25 = [WBSImageUtilities resizedImage:preferencesIcon withSize:?];

          if (!v25)
          {
LABEL_18:
            extension3 = [v13 extension];
            _plugIn = [extension3 _plugIn];
            uuid = [_plugIn uuid];
            v29 = [LSPlugInKitProxy pluginKitProxyForUUID:uuid];

            v25 = [UIImage _iconForResourceProxy:v29 format:0];
          }

          [v20 setProperty:v25 forKey:v44];
          if (parentalControlsAreEnabledForExtensions)
          {
            v30 = 0;
          }

          else
          {
            v31 = +[WBSManagedExtensionsController sharedController];
            composedIdentifier = [v13 composedIdentifier];
            v30 = [v31 managedExtensionStateForComposedIdentifier:composedIdentifier] == 0;
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(SafariExtensionsProfileSettingsController *)self indexForIndexPath:path];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v12 = v9;
  userInfo = [v9 userInfo];
  if ([userInfo isEnabled])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [cellCopy setAccessoryType:v11];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SafariExtensionsProfileSettingsController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  userInfo = [v9 userInfo];
  if ([userInfo isEnabled])
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v12 setAccessoryType:v11];

  if ([userInfo isEnabled])
  {
    [userInfo disable];
    [(SafariSettingsListController *)self postDistributedNotificationNamed:@"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings"];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __79__SafariExtensionsProfileSettingsController_tableView_didSelectRowAtIndexPath___block_invoke;
    v14[3] = &unk_895D8;
    v14[4] = self;
    [userInfo enableWithPresentingViewController:self completionHandler:v14];
  }

  v13.receiver = self;
  v13.super_class = SafariExtensionsProfileSettingsController;
  [(SafariSettingsListController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

@end
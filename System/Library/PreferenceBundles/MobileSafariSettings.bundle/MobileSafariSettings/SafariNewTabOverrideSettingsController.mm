@interface SafariNewTabOverrideSettingsController
+ (BOOL)canUseCurrentNewTabOverrideSelectionWithWebExtensionsController:(id)controller;
+ (id)_specifierTitleForExtensionNamed:(id)named;
+ (id)topLevelDetailStringWithWebExtensionsController:(id)controller;
- (id)_webExtensionsController;
- (id)specifiers;
- (void)_computeCurrentCheckmarkIndexPath;
- (void)_newTabPageDidChangeRemotely:(id)remotely;
- (void)_reloadSpecifiersSoon:(BOOL)soon;
- (void)_setUserInfoForExtensionWithIdentifier:(id)identifier;
- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SafariNewTabOverrideSettingsController

+ (id)_specifierTitleForExtensionNamed:(id)named
{
  namedCopy = named;
  v4 = SafariSettingsLocalizedString(@"Specifier Title For Extension With New Tab Override Page", @"Extensions");
  namedCopy = [NSString stringWithFormat:v4, namedCopy];

  return namedCopy;
}

+ (BOOL)canUseCurrentNewTabOverrideSelectionWithWebExtensionsController:(id)controller
{
  controllerCopy = controller;
  tabOverridePreferencesManager = [controllerCopy tabOverridePreferencesManager];
  v5 = +[NSUserDefaults safari_browserDefaults];
  v6 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:v5];

  if (v6)
  {
    v7 = [controllerCopy extensionWithComposedIdentifier:v6];
    v8 = [controllerCopy webExtensionForExtension:v7];
    newTabOverridePageURL = [v8 newTabOverridePageURL];

    v10 = [controllerCopy extensionIsEnabled:v7];
    if (newTabOverridePageURL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)topLevelDetailStringWithWebExtensionsController:(id)controller
{
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __90__SafariNewTabOverrideSettingsController_topLevelDetailStringWithWebExtensionsController___block_invoke;
  v18 = &unk_8B1B0;
  controllerCopy = controller;
  v19 = controllerCopy;
  selfCopy = self;
  v5 = objc_retainBlock(&v15);
  v6 = [WBSManagedNewTabPageController sharedController:v15];
  managedNewTabPageState = [v6 managedNewTabPageState];

  if (managedNewTabPageState == &dword_0 + 3)
  {
    v9 = +[WBSManagedNewTabPageController sharedController];
    managedNewTabPageHomepageURLString = [v9 managedNewTabPageHomepageURLString];
    goto LABEL_7;
  }

  if (managedNewTabPageState == &dword_0 + 2)
  {
    v9 = +[WBSManagedNewTabPageController sharedController];
    managedNewTabPageExtensionComposedIdentifier = [v9 managedNewTabPageExtensionComposedIdentifier];
    managedNewTabPageHomepageURLString = (v5[2])(v5, managedNewTabPageExtensionComposedIdentifier);

LABEL_7:
    goto LABEL_9;
  }

  if (managedNewTabPageState == &dword_0 + 1)
  {
    managedNewTabPageHomepageURLString = [objc_opt_class() _defaultStartPageTitleTopLevel];
  }

  else
  {
    tabOverridePreferencesManager = [controllerCopy tabOverridePreferencesManager];
    v12 = +[NSUserDefaults safari_browserDefaults];
    v13 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:v12];

    managedNewTabPageHomepageURLString = (v5[2])(v5, v13);
  }

LABEL_9:

  return managedNewTabPageHomepageURLString;
}

id __90__SafariNewTabOverrideSettingsController_topLevelDetailStringWithWebExtensionsController___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForComposedIdentifier:a2];
  if (v3 && (v4 = *(a1 + 40), ([objc_opt_class() canUseCurrentNewTabOverrideSelectionWithWebExtensionsController:*(a1 + 32)] & 1) != 0))
  {
    v5 = *(a1 + 40);
    v6 = objc_opt_class();
    v7 = [v3 displayName];
    v8 = [v6 _specifierTitleForExtensionNamed:v7];
  }

  else
  {
    v9 = *(a1 + 40);
    v8 = [objc_opt_class() _defaultStartPageTitleTopLevel];
  }

  return v8;
}

- (id)_webExtensionsController
{
  if (self->_isCreatingNewProfile)
  {
    v2 = WBSDefaultProfileIdentifier;
  }

  else
  {
    userInfo = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v2 = [userInfo objectForKeyedSubscript:WBSProfileIDKey];
  }

  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v4 profileServerIDToWebExtensionsControllers];
  v6 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:v2];

  return v6;
}

- (void)_setUserInfoForExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _webExtensionsController = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
  v6 = [_webExtensionsController webExtensionForComposedIdentifier:identifierCopy];
  displayName = [v6 displayName];

  v8 = OBJC_IVAR___PSViewController__specifier;
  userInfo = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v14[0] = WBSNewTabTopLevelStringKey;
  _defaultStartPageTitleTopLevel = displayName;
  if (!displayName)
  {
    _defaultStartPageTitleTopLevel = [objc_opt_class() _defaultStartPageTitleTopLevel];
  }

  v14[1] = WBSWebExtensionComposedIdentifierKey;
  v15[0] = _defaultStartPageTitleTopLevel;
  v11 = &stru_8BB60;
  if (identifierCopy)
  {
    v11 = identifierCopy;
  }

  v15[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v13 = [userInfo safari_setValuesFromDictionary:v12];
  [*&self->super.PSListController_opaque[v8] setUserInfo:v13];

  if (!displayName)
  {
  }
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
    selfCopy = self;
    v31 = OBJC_IVAR___PSListController__specifiers;
    userInfo = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [userInfo objectForKeyedSubscript:WBSProfileIDKey];
    selfCopy->_isCreatingNewProfile = [v6 length] == 0;

    v7 = +[NSMutableArray array];
    _defaultStartPageTitleDrillIn = [objc_opt_class() _defaultStartPageTitleDrillIn];
    v9 = [PSSpecifier preferenceSpecifierNamed:_defaultStartPageTitleDrillIn target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    v10 = safariMobileApplicationBundleIdentifier;
    v34 = kISImageDescriptorTableUIName;
    v11 = [ISImageDescriptor imageDescriptorNamed:?];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __52__SafariNewTabOverrideSettingsController_specifiers__block_invoke;
    v41[3] = &unk_89790;
    v12 = v9;
    v42 = v12;
    v43 = selfCopy;
    [SFIconGenerator getAppIconForBundleIdentifier:v10 imageDescriptor:v11 resultHandler:v41];

    v36 = v7;
    v30 = v12;
    [v7 addObject:v12];
    _webExtensionsController = [(SafariNewTabOverrideSettingsController *)selfCopy _webExtensionsController];
    tabOverridePreferencesManager = [_webExtensionsController tabOverridePreferencesManager];
    sortedComposedIdentifiersForExtensionsWithOverridePages = [tabOverridePreferencesManager sortedComposedIdentifiersForExtensionsWithOverridePages];

    selfCopy->_showingEnabledNewTabOverrideExtensions = [sortedComposedIdentifiersForExtensionsWithOverridePages count] != 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = sortedComposedIdentifiersForExtensionsWithOverridePages;
    v15 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = *v38;
      v17 = PSIconImageKey;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [_webExtensionsController webExtensionForComposedIdentifier:v19];
          displayName = [v20 displayName];
          v22 = [PSSpecifier preferenceSpecifierNamed:displayName target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

          [v20 preferencesIcon];
          v24 = v23 = selfCopy;
          v25 = [ISImageDescriptor imageDescriptorNamed:v34];
          [v25 size];
          v26 = [WBSImageUtilities resizedImage:v24 withSize:?];

          selfCopy = v23;
          [v22 setProperty:v26 forKey:v17];
          [v22 setUserInfo:v19];
          [v36 addObject:v22];
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v16);
    }

    v27 = [v36 copy];
    v28 = *&selfCopy->super.PSListController_opaque[v31];
    *&selfCopy->super.PSListController_opaque[v31] = v27;

    v3 = *&selfCopy->super.PSListController_opaque[v31];
  }

  return v3;
}

void __52__SafariNewTabOverrideSettingsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__SafariNewTabOverrideSettingsController_specifiers__block_invoke_2;
  block[3] = &unk_89CB0;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id __52__SafariNewTabOverrideSettingsController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:PSIconImageKey];
  v2 = *(a1 + 48);

  return [v2 reload];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  if (self->_currentCheckmarkIndexPath == path)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [cell setAccessoryType:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SafariNewTabOverrideSettingsController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  if (self->_currentCheckmarkIndexPath != pathCopy)
  {
    v10 = [viewCopy cellForRowAtIndexPath:?];
    [v10 setAccessoryType:0];

    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v11 setAccessoryType:3];

    v12 = +[NSUserDefaults safari_browserDefaults];
    userInfo = [v9 userInfo];
    if (self->_isCreatingNewProfile)
    {
      [(SafariNewTabOverrideSettingsController *)self _setUserInfoForExtensionWithIdentifier:userInfo];
    }

    else
    {
      _webExtensionsController = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
      tabOverridePreferencesManager = [_webExtensionsController tabOverridePreferencesManager];
      v16 = tabOverridePreferencesManager;
      if (userInfo)
      {
        [tabOverridePreferencesManager setNewTabBehaviorWithExtensionComposedIdentifier:userInfo inDefaults:v12];
      }

      else
      {
        [tabOverridePreferencesManager clearNewTabBehaviorInDefaults:v12];
      }
    }

    objc_storeStrong(&self->_currentCheckmarkIndexPath, path);
    userInfo2 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:WBSDelegateKey];

    [v18 profileNewTabOverrideSettingsController:self];
    v19.receiver = self;
    v19.super_class = SafariNewTabOverrideSettingsController;
    [(SafariSettingsListController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)_reloadSpecifiersSoon:(BOOL)soon
{
  if (soon)
  {
    objc_initWeak(&location, self);
    [(NSTimer *)self->_reloadSpecifiersTimer invalidate];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __64__SafariNewTabOverrideSettingsController__reloadSpecifiersSoon___block_invoke;
    v6[3] = &unk_8AF20;
    objc_copyWeak(&v7, &location);
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:0.5];
    reloadSpecifiersTimer = self->_reloadSpecifiersTimer;
    self->_reloadSpecifiersTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SafariNewTabOverrideSettingsController *)self reload];
  }
}

void __64__SafariNewTabOverrideSettingsController__reloadSpecifiersSoon___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reload];
    WeakRetained = v2;
  }
}

- (void)_computeCurrentCheckmarkIndexPath
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __75__SafariNewTabOverrideSettingsController__computeCurrentCheckmarkIndexPath__block_invoke;
  v13[3] = &unk_8B200;
  v13[4] = self;
  v3 = objc_retainBlock(v13);
  userInfo = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [userInfo objectForKeyedSubscript:WBSWebExtensionComposedIdentifierKey];

  if ([v5 length])
  {
    v6 = (v3[2])(v3, v5);
    currentCheckmarkIndexPath = self->_currentCheckmarkIndexPath;
    self->_currentCheckmarkIndexPath = v6;
    v8 = v5;
  }

  else
  {
    currentCheckmarkIndexPath = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
    tabOverridePreferencesManager = [currentCheckmarkIndexPath tabOverridePreferencesManager];
    v10 = +[NSUserDefaults safari_browserDefaults];
    v8 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:v10];

    if (self->_isCreatingNewProfile)
    {
      [(SafariNewTabOverrideSettingsController *)self _setUserInfoForExtensionWithIdentifier:v8];
    }

    v11 = (v3[2])(v3, v8);
    v12 = self->_currentCheckmarkIndexPath;
    self->_currentCheckmarkIndexPath = v11;
  }
}

id __75__SafariNewTabOverrideSettingsController__computeCurrentCheckmarkIndexPath__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) table];
  v5 = [v4 indexPathsForVisibleRows];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = __75__SafariNewTabOverrideSettingsController__computeCurrentCheckmarkIndexPath__block_invoke_2;
  v16 = &unk_8B1D8;
  v6 = v3;
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  v8 = [v5 safari_firstObjectPassingTest:&v13];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [NSIndexPath indexPathForRow:0 inSection:0, v13, v14, v15, v16];
  }

  v11 = v10;

  return v11;
}

id __75__SafariNewTabOverrideSettingsController__computeCurrentCheckmarkIndexPath__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + OBJC_IVAR___PSListController__specifiers) objectAtIndex:{objc_msgSend(*(a1 + 40), "indexForIndexPath:", a2)}];
  v4 = [v3 userInfo];
  v5 = [v2 isEqualToString:v4];

  return v5;
}

- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference
{
  identifierCopy = identifier;
  _webExtensionsController = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
  profile = [_webExtensionsController profile];
  identifier = [profile identifier];
  v10 = [identifier isEqualToString:identifierCopy];

  if (v10)
  {
    [(SafariNewTabOverrideSettingsController *)self _computeCurrentCheckmarkIndexPath];

    [(SafariNewTabOverrideSettingsController *)self reload];
  }
}

- (void)_newTabPageDidChangeRemotely:(id)remotely
{
  [(SafariNewTabOverrideSettingsController *)self _computeCurrentCheckmarkIndexPath];

  [(SafariNewTabOverrideSettingsController *)self reload];
}

@end
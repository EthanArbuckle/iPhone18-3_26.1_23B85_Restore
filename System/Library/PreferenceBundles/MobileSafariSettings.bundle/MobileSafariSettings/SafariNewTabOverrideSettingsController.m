@interface SafariNewTabOverrideSettingsController
+ (BOOL)canUseCurrentNewTabOverrideSelectionWithWebExtensionsController:(id)a3;
+ (id)_specifierTitleForExtensionNamed:(id)a3;
+ (id)topLevelDetailStringWithWebExtensionsController:(id)a3;
- (id)_webExtensionsController;
- (id)specifiers;
- (void)_computeCurrentCheckmarkIndexPath;
- (void)_newTabPageDidChangeRemotely:(id)a3;
- (void)_reloadSpecifiersSoon:(BOOL)a3;
- (void)_setUserInfoForExtensionWithIdentifier:(id)a3;
- (void)tabGroupManager:(id)a3 didUpdateProfileWithIdentifier:(id)a4 difference:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SafariNewTabOverrideSettingsController

+ (id)_specifierTitleForExtensionNamed:(id)a3
{
  v3 = a3;
  v4 = SafariSettingsLocalizedString(@"Specifier Title For Extension With New Tab Override Page", @"Extensions");
  v5 = [NSString stringWithFormat:v4, v3];

  return v5;
}

+ (BOOL)canUseCurrentNewTabOverrideSelectionWithWebExtensionsController:(id)a3
{
  v3 = a3;
  v4 = [v3 tabOverridePreferencesManager];
  v5 = +[NSUserDefaults safari_browserDefaults];
  v6 = [v4 extensionComposedIdentifierForNewTabPreferenceInDefaults:v5];

  if (v6)
  {
    v7 = [v3 extensionWithComposedIdentifier:v6];
    v8 = [v3 webExtensionForExtension:v7];
    v9 = [v8 newTabOverridePageURL];

    v10 = [v3 extensionIsEnabled:v7];
    if (v9)
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

+ (id)topLevelDetailStringWithWebExtensionsController:(id)a3
{
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __90__SafariNewTabOverrideSettingsController_topLevelDetailStringWithWebExtensionsController___block_invoke;
  v18 = &unk_8B1B0;
  v4 = a3;
  v19 = v4;
  v20 = a1;
  v5 = objc_retainBlock(&v15);
  v6 = [WBSManagedNewTabPageController sharedController:v15];
  v7 = [v6 managedNewTabPageState];

  if (v7 == &dword_0 + 3)
  {
    v9 = +[WBSManagedNewTabPageController sharedController];
    v8 = [v9 managedNewTabPageHomepageURLString];
    goto LABEL_7;
  }

  if (v7 == &dword_0 + 2)
  {
    v9 = +[WBSManagedNewTabPageController sharedController];
    v10 = [v9 managedNewTabPageExtensionComposedIdentifier];
    v8 = (v5[2])(v5, v10);

LABEL_7:
    goto LABEL_9;
  }

  if (v7 == &dword_0 + 1)
  {
    v8 = [objc_opt_class() _defaultStartPageTitleTopLevel];
  }

  else
  {
    v11 = [v4 tabOverridePreferencesManager];
    v12 = +[NSUserDefaults safari_browserDefaults];
    v13 = [v11 extensionComposedIdentifierForNewTabPreferenceInDefaults:v12];

    v8 = (v5[2])(v5, v13);
  }

LABEL_9:

  return v8;
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
    v3 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v2 = [v3 objectForKeyedSubscript:WBSProfileIDKey];
  }

  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  v5 = [v4 profileServerIDToWebExtensionsControllers];
  v6 = [v5 objectForKeyedSubscript:v2];

  return v6;
}

- (void)_setUserInfoForExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
  v6 = [v5 webExtensionForComposedIdentifier:v4];
  v7 = [v6 displayName];

  v8 = OBJC_IVAR___PSViewController__specifier;
  v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v14[0] = WBSNewTabTopLevelStringKey;
  v10 = v7;
  if (!v7)
  {
    v10 = [objc_opt_class() _defaultStartPageTitleTopLevel];
  }

  v14[1] = WBSWebExtensionComposedIdentifierKey;
  v15[0] = v10;
  v11 = &stru_8BB60;
  if (v4)
  {
    v11 = v4;
  }

  v15[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v13 = [v9 safari_setValuesFromDictionary:v12];
  [*&self->super.PSListController_opaque[v8] setUserInfo:v13];

  if (!v7)
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
    v4 = self;
    v31 = OBJC_IVAR___PSListController__specifiers;
    v5 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v6 = [v5 objectForKeyedSubscript:WBSProfileIDKey];
    v4->_isCreatingNewProfile = [v6 length] == 0;

    v7 = +[NSMutableArray array];
    v8 = [objc_opt_class() _defaultStartPageTitleDrillIn];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:v4 set:0 get:0 detail:0 cell:3 edit:0];

    v10 = safariMobileApplicationBundleIdentifier;
    v34 = kISImageDescriptorTableUIName;
    v11 = [ISImageDescriptor imageDescriptorNamed:?];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __52__SafariNewTabOverrideSettingsController_specifiers__block_invoke;
    v41[3] = &unk_89790;
    v12 = v9;
    v42 = v12;
    v43 = v4;
    [SFIconGenerator getAppIconForBundleIdentifier:v10 imageDescriptor:v11 resultHandler:v41];

    v36 = v7;
    v30 = v12;
    [v7 addObject:v12];
    v35 = [(SafariNewTabOverrideSettingsController *)v4 _webExtensionsController];
    v13 = [v35 tabOverridePreferencesManager];
    v14 = [v13 sortedComposedIdentifiersForExtensionsWithOverridePages];

    v4->_showingEnabledNewTabOverrideExtensions = [v14 count] != 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v14;
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
          v20 = [v35 webExtensionForComposedIdentifier:v19];
          v21 = [v20 displayName];
          v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:v4 set:0 get:0 detail:0 cell:3 edit:0];

          [v20 preferencesIcon];
          v24 = v23 = v4;
          v25 = [ISImageDescriptor imageDescriptorNamed:v34];
          [v25 size];
          v26 = [WBSImageUtilities resizedImage:v24 withSize:?];

          v4 = v23;
          [v22 setProperty:v26 forKey:v17];
          [v22 setUserInfo:v19];
          [v36 addObject:v22];
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v16);
    }

    v27 = [v36 copy];
    v28 = *&v4->super.PSListController_opaque[v31];
    *&v4->super.PSListController_opaque[v31] = v27;

    v3 = *&v4->super.PSListController_opaque[v31];
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if (self->_currentCheckmarkIndexPath == a5)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [a4 setAccessoryType:v5];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SafariNewTabOverrideSettingsController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  [v6 deselectRowAtIndexPath:v7 animated:0];
  if (self->_currentCheckmarkIndexPath != v7)
  {
    v10 = [v6 cellForRowAtIndexPath:?];
    [v10 setAccessoryType:0];

    v11 = [v6 cellForRowAtIndexPath:v7];
    [v11 setAccessoryType:3];

    v12 = +[NSUserDefaults safari_browserDefaults];
    v13 = [v9 userInfo];
    if (self->_isCreatingNewProfile)
    {
      [(SafariNewTabOverrideSettingsController *)self _setUserInfoForExtensionWithIdentifier:v13];
    }

    else
    {
      v14 = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
      v15 = [v14 tabOverridePreferencesManager];
      v16 = v15;
      if (v13)
      {
        [v15 setNewTabBehaviorWithExtensionComposedIdentifier:v13 inDefaults:v12];
      }

      else
      {
        [v15 clearNewTabBehaviorInDefaults:v12];
      }
    }

    objc_storeStrong(&self->_currentCheckmarkIndexPath, a4);
    v17 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v18 = [v17 objectForKeyedSubscript:WBSDelegateKey];

    [v18 profileNewTabOverrideSettingsController:self];
    v19.receiver = self;
    v19.super_class = SafariNewTabOverrideSettingsController;
    [(SafariSettingsListController *)&v19 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (void)_reloadSpecifiersSoon:(BOOL)a3
{
  if (a3)
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
  v4 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v4 objectForKeyedSubscript:WBSWebExtensionComposedIdentifierKey];

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
    v9 = [currentCheckmarkIndexPath tabOverridePreferencesManager];
    v10 = +[NSUserDefaults safari_browserDefaults];
    v8 = [v9 extensionComposedIdentifierForNewTabPreferenceInDefaults:v10];

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

- (void)tabGroupManager:(id)a3 didUpdateProfileWithIdentifier:(id)a4 difference:(id)a5
{
  v6 = a4;
  v7 = [(SafariNewTabOverrideSettingsController *)self _webExtensionsController];
  v8 = [v7 profile];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:v6];

  if (v10)
  {
    [(SafariNewTabOverrideSettingsController *)self _computeCurrentCheckmarkIndexPath];

    [(SafariNewTabOverrideSettingsController *)self reload];
  }
}

- (void)_newTabPageDidChangeRemotely:(id)a3
{
  [(SafariNewTabOverrideSettingsController *)self _computeCurrentCheckmarkIndexPath];

  [(SafariNewTabOverrideSettingsController *)self reload];
}

@end
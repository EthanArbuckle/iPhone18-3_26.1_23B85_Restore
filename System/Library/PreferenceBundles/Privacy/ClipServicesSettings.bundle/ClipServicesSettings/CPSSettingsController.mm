@interface CPSSettingsController
- (BOOL)_hasAppClipInAppProxies:(id)a3;
- (BOOL)_isDimSumApp:(id)a3;
- (id)_allDimSumApps;
- (id)_specifiersForDimSumAppsIfExists;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_didClearAllAppClips;
- (void)_reloadSpecifiersForUpdatedAppsIfNeeded:(id)a3;
- (void)_willClearAllAppClips;
- (void)clearAllClips;
- (void)confirmClearAllClips:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didTapLearnMoreLink;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation CPSSettingsController

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = [(CPSSettingsController *)self loadSpecifiersFromPlistName:@"ClipServicesSettings" target:self];
    v7 = [(CPSSettingsController *)self _specifiersForDimSumAppsIfExists];
    if ([v7 count])
    {
      v8 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v7 count]);
      [v6 insertObjects:v7 atIndexes:v8];
    }

    v9 = [v6 specifierForID:@"CLEAR_CLIP_HISTORY"];
    v10 = &__kCFBooleanFalse;
    if (+[CPSClipURL isSupported](CPSClipURL, "isSupported") && [v7 count])
    {
      v10 = &__kCFBooleanTrue;
    }

    [v9 setProperty:v10 forKey:PSEnabledKey];
    v11 = [v6 specifierForID:@"SPACE_CELL_AFTER_GLOBAL_SWITCH"];
    v12 = _CPSLocalizedString();
    v13 = _CPSLocalizedString();
    v14 = [NSString stringWithFormat:v13, v12];

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v11 setProperty:v16 forKey:PSFooterCellClassGroupKey];

    [v11 setProperty:v14 forKey:PSFooterHyperlinkViewTitleKey];
    v23.location = [v14 rangeOfString:v12];
    v17 = NSStringFromRange(v23);
    [v11 setProperty:v17 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v18 = [NSValue valueWithNonretainedObject:self];
    [v11 setProperty:v18 forKey:PSFooterHyperlinkViewTargetKey];

    [v11 setProperty:@"didTapLearnMoreLink" forKey:PSFooterHyperlinkViewActionKey];
    v19 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v6;
    v20 = v6;

    v4 = *&self->PSListController_opaque[v2];
  }

  return v4;
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = v5;
  if (a3)
  {
    [v5 addObserver:self];
  }

  else
  {
    [v5 removeObserver:self];
  }
}

- (id)_specifiersForDimSumAppsIfExists
{
  v3 = +[NSMutableArray array];
  v4 = [(CPSSettingsController *)self _allDimSumApps];
  v5 = [PSSystemPolicyManager specifiersForThirdPartyApps:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) setDetailControllerClass:{objc_opt_class(), v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v11 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v11];

    [v3 addObjectsFromArray:v6];
  }

  return v3;
}

- (id)_allDimSumApps
{
  v3 = +[NSMutableArray array];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_78B0;
  v9[3] = &unk_14B38;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateBundlesOfType:1 block:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)_isDimSumApp:(id)a3
{
  v3 = a3;
  v7 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v7];

  v5 = [v4 appClipMetadata];
  LOBYTE(v3) = v5 != 0;

  return v3;
}

- (void)confirmClearAllClips:(id)a3
{
  v4 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_14F50 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v12 = PSConfirmationTitleKey;
  v5 = _CPSLocalizedString();
  v16[0] = v5;
  v13 = PSConfirmationPromptKey;
  v6 = _CPSLocalizedString();
  v7 = +[CPSUtilities localizedDeviceName];
  v8 = [NSString stringWithFormat:v6, v7, v12, v13];
  v16[1] = v8;
  v14 = PSConfirmationOKKey;
  v9 = _CPSLocalizedString();
  v16[2] = v9;
  v15 = PSConfirmationCancelKey;
  v10 = _CPSLocalizedString();
  v16[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v12 count:4];
  [v4 setupWithDictionary:v11];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v4 setConfirmationAction:"clearAllClips"];
  [(CPSSettingsController *)self showConfirmationViewForSpecifier:v4];
}

- (void)clearAllClips
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) identifier];
        if ([(CPSSettingsController *)self _isDimSumApp:v9])
        {
          [v3 addObject:v9];
          v10 = +[CPSAnalyticsLogger sharedLogger];
          [v10 didManuallyDeleteClip:v9 withEvent:2];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [(CPSSettingsController *)self _willClearAllAppClips];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_7DFC;
    v11[3] = &unk_14B60;
    v11[4] = self;
    [CPSClipRequest deleteClipsWithBundleIDs:v3 completion:v11];
  }
}

- (void)didTapLearnMoreLink
{
  v3 = objc_alloc_init(CPSAboutViewController);
  [(CPSSettingsController *)self presentViewController:v3 animated:1 completion:0];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(CPSSettingsController *)self specifierAtIndexPath:a4];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"APP_CLIPS"])
  {

    v6 = 0;
  }

  else
  {
    v7 = +[CPSClipURL isSupported];

    v6 = v7;
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = [(CPSSettingsController *)self specifierAtIndexPath:v9];
    [(CPSSettingsController *)self beginUpdates];
    [(CPSSettingsController *)self removeSpecifier:v10 animated:1];
    [(CPSSettingsController *)self endUpdates];
    v11 = [v10 identifier];
    v12 = +[CPSAnalyticsLogger sharedLogger];
    [v12 didManuallyDeleteClip:v11 withEvent:1];

    v18 = v11;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_80D4;
    v14[3] = &unk_14B88;
    v15 = v8;
    v16 = v9;
    v17 = self;
    [CPSClipRequest deleteClipsWithBundleIDs:v13 completion:v14];
  }
}

- (BOOL)_hasAppClipInAppProxies:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) correspondingApplicationRecord];
        v8 = [v7 appClipMetadata];

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_reloadSpecifiersForUpdatedAppsIfNeeded:(id)a3
{
  v4 = a3;
  if (!self->_clearingAllAppClips && [(CPSSettingsController *)self _hasAppClipInAppProxies:v4])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_8364;
    v5[3] = &unk_14758;
    v6 = v4;
    v7 = self;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)_willClearAllAppClips
{
  self->_clearingAllAppClips = 1;
  v2 = [(CPSSettingsController *)self specifiers];
  v7 = [v2 specifierForID:@"CLEAR_CLIP_HISTORY"];

  [v7 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  v3 = [v7 propertyForKey:PSTableCellKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessoryView];

    if (!v5)
    {
      v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v4 setAccessoryView:v6];
      [v6 startAnimating];
    }
  }
}

- (void)_didClearAllAppClips
{
  v3 = [(CPSSettingsController *)self specifiers];
  v5 = [v3 specifierForID:@"CLEAR_CLIP_HISTORY"];

  v4 = [v5 propertyForKey:PSTableCellKey];
  [v4 setAccessoryView:0];
  self->_clearingAllAppClips = 0;
}

@end
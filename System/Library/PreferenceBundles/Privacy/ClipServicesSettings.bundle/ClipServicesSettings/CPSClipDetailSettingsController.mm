@interface CPSClipDetailSettingsController
- (id)specifiers;
- (void)_confirmDeleteAppClip;
- (void)_popAndShowAllAppClips;
- (void)didTapReportAProblemLink;
@end

@implementation CPSClipDetailSettingsController

- (id)specifiers
{
  v2 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v48 = OBJC_IVAR___PSListController__specifiers;
    v5 = objc_alloc_init(NSMutableArray);
    v6 = OBJC_IVAR___PSViewController__specifier;
    cps_bundleIdentifier = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] cps_bundleIdentifier];
    v8 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:cps_bundleIdentifier];
    appPolicy = self->_appPolicy;
    self->_appPolicy = v8;

    v10 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:-142737409 force:0];
    [v5 addObjectsFromArray:v10];

    cps_storeItemIdentifier = [*&self->PSListController_opaque[v6] cps_storeItemIdentifier];
    cps_isTestFlight = [*&self->PSListController_opaque[v6] cps_isTestFlight];
    if (cps_storeItemIdentifier)
    {
      v13 = 0;
    }

    else
    {
      v13 = cps_isTestFlight == 0;
    }

    if (!v13)
    {
      v14 = [PSSpecifier groupSpecifierWithID:@"STORE_UPSELL"];
      v15 = _CPSLocalizedString();
      [v14 setName:v15];

      [v5 addObject:v14];
      v16 = [CPSClipStoreTableViewCell specifierForBundleIdentifier:cps_bundleIdentifier];
      [v5 addObject:v16];
    }

    v49 = cps_bundleIdentifier;
    v17 = [PSSpecifier groupSpecifierWithID:@"DELETE_GROUP_ID"];
    v18 = _CPSLocalizedString();
    v19 = +[CPSUtilities localizedDeviceName];
    v20 = [NSString stringWithFormat:v18, v19];
    [v17 setProperty:v20 forKey:PSFooterTextGroupKey];

    v47 = v17;
    [v5 addObject:v17];
    v21 = _CPSLocalizedString();
    v22 = [PSSpecifier deleteButtonSpecifierWithName:v21 target:self action:"_confirmDeleteAppClip"];

    if (+[CPSClipURL isSupported])
    {
      v23 = &__kCFBooleanTrue;
    }

    else
    {
      v23 = &__kCFBooleanFalse;
    }

    [v22 setProperty:v23 forKey:PSEnabledKey];
    v45 = v5;
    v46 = v22;
    [v5 addObject:v22];
    v24 = [PSSpecifier groupSpecifierWithID:@"REPORT_A_PROBLEM_GROUP_ID"];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v24 setProperty:v26 forKey:PSHeaderCellClassGroupKey];

    v27 = _CPSLocalizedString();
    v28 = _CPSLocalizedString();
    cps_appClipApplicationRecord = [*&self->PSListController_opaque[v6] cps_appClipApplicationRecord];
    iTunesMetadata = [cps_appClipApplicationRecord iTunesMetadata];
    itemName = [iTunesMetadata itemName];
    v32 = itemName;
    if (itemName)
    {
      v33 = v27;
      v34 = [NSString stringWithFormat:v28, itemName, v27];
    }

    else
    {
      name = [*&self->PSListController_opaque[v6] name];
      v34 = [NSString stringWithFormat:v28, name, v27];

      v33 = v27;
    }

    [v24 setProperty:v34 forKey:PSFooterHyperlinkViewTitleKey];
    v58.location = [v34 rangeOfString:v33];
    v36 = NSStringFromRange(v58);
    [v24 setProperty:v36 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v37 = [NSValue valueWithNonretainedObject:self];
    [v24 setProperty:v37 forKey:PSFooterHyperlinkViewTargetKey];

    [v24 setProperty:@"didTapReportAProblemLink" forKey:PSFooterHyperlinkViewActionKey];
    [v45 addObject:v24];
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_6030;
    v55 = sub_6040;
    v56 = 0;
    v38 = +[NSNotificationCenter defaultCenter];
    v39 = +[NSOperationQueue mainQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_6048;
    v50[3] = &unk_14AF8;
    v50[4] = self;
    v50[5] = &v51;
    v40 = [v38 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v39 usingBlock:v50];
    v41 = v52[5];
    v52[5] = v40;

    v42 = *&self->PSListController_opaque[v48];
    *&self->PSListController_opaque[v48] = v45;
    v43 = v45;

    v3 = *&self->PSListController_opaque[v48];
    _Block_object_dispose(&v51, 8);
  }

  return v3;
}

- (void)_confirmDeleteAppClip
{
  bundleIdentifier = [(PSSystemPolicyForApp *)self->_appPolicy bundleIdentifier];
  v9 = bundleIdentifier;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_61E0;
  v6[3] = &unk_14970;
  v7 = bundleIdentifier;
  selfCopy = self;
  v5 = bundleIdentifier;
  [CPSClipRequest deleteClipsWithBundleIDs:v4 completion:v6];
}

- (void)_popAndShowAllAppClips
{
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Settings.Apps.AppClips"];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)didTapReportAProblemLink
{
  v3 = [CPSReportProblemViewController alloc];
  v4 = OBJC_IVAR___PSViewController__specifier;
  cps_bundleIdentifier = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] cps_bundleIdentifier];
  v6 = -[CPSReportProblemViewController initWithClipBundleIdentifier:itemIdentifier:](v3, "initWithClipBundleIdentifier:itemIdentifier:", cps_bundleIdentifier, [*&self->PSListController_opaque[v4] cps_storeItemIdentifier]);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6468;
  v9[3] = &unk_14948;
  v9[4] = self;
  [(CPSReportProblemViewController *)v6 setFinishAction:v9];
  [(CPSClipDetailSettingsController *)self presentViewController:v6 animated:1 completion:0];
  v7 = +[CPSAnalyticsLogger sharedLogger];
  cps_bundleIdentifier2 = [*&self->PSListController_opaque[v4] cps_bundleIdentifier];
  [v7 recordReportProblemStepCompletedWithBundleID:cps_bundleIdentifier2 problemLabel:0 event:1];
}

@end
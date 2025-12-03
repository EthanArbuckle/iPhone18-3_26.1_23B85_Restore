@interface COSPreferencesListController
- (BOOL)_newSystemAppSpecifiers:(id)specifiers sameAs:(id)as;
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (COSPreferencesListController)init;
- (PSController)categoryController;
- (id)specifierForBundle:(id)bundle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_decorateInsertAndReloadSystemAppSpecifiers:(id)specifiers;
- (void)_decorateSpecifierForLazyIconLoading:(id)loading;
- (void)_removeSystemAppSpecifierFromCache:(id)cache;
- (void)_showControllerFromSpecifier:(id)specifier;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)insertContiguousSpecifiers:(id)specifiers atIndex:(int64_t)index animated:(BOOL)animated;
- (void)launchBridgeSetup:(id)setup;
- (void)loadSystemAppSpecifiers:(id)specifiers;
- (void)removeSystemAppSpecifiers:(id)specifiers;
- (void)selectGeneralCategoryForced:(BOOL)forced showController:(BOOL)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation COSPreferencesListController

- (COSPreferencesListController)init
{
  v8.receiver = self;
  v8.super_class = COSPreferencesListController;
  v2 = [(COSPreferencesListController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    if ([(COSPreferencesListController *)v2 reloadsWhenBecomingActive])
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 addObserver:v3 selector:"becomeActive:" name:@"com.apple.PreferencesApp.willBecomeActive" object:0];
    }

    if ((sub_100007C2C() & 1) == 0)
    {
      v5 = [[COSSystemAppsSettingsManager alloc] initWithDelegate:v3];
      systemAppsSettingsManager = v3->_systemAppsSettingsManager;
      v3->_systemAppsSettingsManager = v5;
    }
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    bundle = [(COSPreferencesListController *)self bundle];
    v120 = 0;
    settingsFileName = [(COSPreferencesListController *)self settingsFileName];
    v6 = +[NSMutableArray array];
    v7 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    v8 = v7;
    obj = v6;
    if (settingsFileName)
    {
      v107 = v3;
      v108 = v7;
      v9 = [NSMutableDictionary alloc];
      resourcePath = [bundle resourcePath];
      v110 = settingsFileName;
      v11 = [resourcePath stringByAppendingPathComponent:settingsFileName];
      v12 = [v11 stringByAppendingPathExtension:@"plist"];
      v13 = [v9 initWithContentsOfFile:v12];

      v14 = [NSMutableArray alloc];
      v15 = [v13 objectForKey:@"items"];
      v16 = [v14 initWithArray:v15];

      v17 = *&self->super.BPSListController_opaque[OBJC_IVAR___PSListController__bundleControllers];
      *buf = 0;
      v18 = v17;
      v106 = v16;
      [v13 setObject:v16 forKey:@"items"];
      v19 = [v13 objectForKey:@"title"];
      v119 = v18;
      v98 = SpecifiersFromPlist();
      v20 = v119;

      settingsFileName2 = [(COSPreferencesListController *)self settingsFileName];
      v22 = [NSString stringWithFormat:@"%@-tinker", settingsFileName2];

      v23 = [NSMutableDictionary alloc];
      resourcePath2 = [bundle resourcePath];
      v105 = v22;
      v25 = [resourcePath2 stringByAppendingPathComponent:v22];
      v26 = [v25 stringByAppendingPathExtension:@"plist"];
      v27 = [v23 initWithContentsOfFile:v26];

      v28 = [v13 objectForKey:@"title"];
      v29 = [v28 stringByAppendingString:@"-tinker"];
      v118 = v20;
      v104 = v27;
      v30 = SpecifiersFromPlist();
      v31 = v118;

      v103 = v30;
      [v98 addObjectsFromArray:{v30, &v118}];
      settingsFileName3 = [(COSPreferencesListController *)self settingsFileName];
      v33 = [NSString stringWithFormat:@"%@-sting", settingsFileName3];

      v34 = [NSMutableDictionary alloc];
      resourcePath3 = [bundle resourcePath];
      v102 = v33;
      v36 = [resourcePath3 stringByAppendingPathComponent:v33];
      v37 = [v36 stringByAppendingPathExtension:@"plist"];
      v38 = [v34 initWithContentsOfFile:v37];

      v112 = v13;
      v39 = [v13 objectForKey:@"title"];
      v40 = [v39 stringByAppendingString:@"-sting"];
      v117 = v31;
      v101 = v38;
      v41 = SpecifiersFromPlist();
      v42 = v117;

      v43 = [v98 indexOfSpecifierWithID:{@"GENERAL_GROUP_ID", &v117}];
      if ([v41 count] && objc_msgSend(v98, "count") && v43)
      {
        v44 = [v41 objectAtIndexedSubscript:0];
        v45 = +[NSBundle mainBundle];
        name = [v44 name];
        v47 = [v45 localizedStringForKey:name value:&stru_10026E598 table:@"Localizable-N199"];
        [v44 setName:v47];

        [v98 insertObject:v44 atIndex:v43];
      }

      v100 = v41;
      settingsFileName4 = [(COSPreferencesListController *)self settingsFileName];
      v49 = [NSString stringWithFormat:@"%@-elton", settingsFileName4];

      v50 = [NSMutableDictionary alloc];
      resourcePath4 = [bundle resourcePath];
      v99 = v49;
      v52 = [resourcePath4 stringByAppendingPathComponent:v49];
      v53 = [v52 stringByAppendingPathExtension:@"plist"];
      v54 = [v50 initWithContentsOfFile:v53];

      v55 = [v13 objectForKey:@"title"];
      v56 = [v55 stringByAppendingString:@"-elton"];
      v116 = v42;
      v57 = SpecifiersFromPlist();
      v58 = v116;

      v59 = [v98 indexOfSpecifierWithID:{@"ACCESSIBILITY_ID", &v116}];
      if ([v57 count] && objc_msgSend(v98, "count") && v59)
      {
        v60 = [v57 objectAtIndexedSubscript:0];
        v61 = +[NSBundle mainBundle];
        name2 = [v60 name];
        v63 = [v61 localizedStringForKey:name2 value:&stru_10026E598 table:@"Localizable-elton"];
        [v60 setName:v63];

        [v98 insertObject:v60 atIndex:v59];
      }

      [(COSPreferencesListController *)self setTitle:*buf];
      [(COSPreferencesListController *)self setSpecifierID:v120];
      v6 = obj;
      [obj addObjectsFromArray:v98];

      v3 = v107;
      v8 = v108;
      settingsFileName = v110;
    }

    if ((sub_100007C2C() & 1) == 0)
    {
      v64 = +[PSSpecifier emptyGroupSpecifier];
      [v64 setIdentifier:@"APPLE_APP_GROUP_ID"];
      [v6 addObject:v64];
      systemAppSpecifiers = [(COSPreferencesListController *)self systemAppSpecifiers];

      if (systemAppSpecifiers)
      {
        systemAppSpecifiers2 = [(COSPreferencesListController *)self systemAppSpecifiers];
        [v6 addObjectsFromArray:systemAppSpecifiers2];
      }

      if (v8)
      {
        systemAppsSettingsManager = [(COSPreferencesListController *)self systemAppsSettingsManager];
        [systemAppsSettingsManager buildSystemAppSettings];
      }
    }

    if (sub_100009A74() && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v68 = objc_claimAutoreleasedReturnValue(), v69 = [v68 fileExistsAtPath:@"/AppleInternal/Library/NanoPreferenceBundles/General/CompanionSetupSettings.bundle"], v68, v69))
    {
      if (sub_100007C2C() & 1) != 0 || (sub_10000D3B4())
      {
        v70 = 1;
      }

      else
      {
        v132[0] = PSTitleKey;
        v132[1] = PSTableCellClassKey;
        v133[0] = @"Internal Settings";
        v133[1] = @"PSLinkCell";
        v132[2] = PSBundlePathKey;
        v132[3] = PSBundleHasIconKey;
        v133[2] = @"CompanionSetupSettings";
        v133[3] = kCFBooleanTrue;
        v132[4] = PSBundleIsControllerKey;
        v132[5] = PSSearchNanoInternalSettingsBundlePath;
        v133[4] = kCFBooleanTrue;
        v133[5] = kCFBooleanTrue;
        v132[6] = PSIDKey;
        v133[6] = @"INTERNAL_SETTINGS";
        v113 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:7];
        v129 = v113;
        v130 = @"items";
        v70 = 1;
        v90 = [NSArray arrayWithObjects:&v129 count:1];
        v131 = v90;
        [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        v92 = v91 = settingsFileName;
        +[NSBundle mainBundle];
        v94 = v93 = v8;
        v95 = SpecifiersFromPlist();

        v8 = v93;
        settingsFileName = v91;

        v96 = [v95 specifierForID:{@"INTERNAL_SETTINGS", 0}];
        [v96 setProperty:@"CompanionInternalSettings" forKey:PSSpecifierSearchPlistKey];

        v97 = +[PSSpecifier emptyGroupSpecifier];
        [v95 insertObject:v97 atIndex:0];

        [obj addObjectsFromArray:v95];
      }
    }

    else
    {
      v70 = 0;
    }

    HasCellularDataCapability = BPSDeviceHasCellularDataCapability();
    v72 = +[NSFileManager defaultManager];
    v73 = [v72 fileExistsAtPath:@"/AppleInternal/Library/NanoPreferenceBundles/General/Carrier Settings.bundle"];

    v74 = pbb_setup_log();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = HasCellularDataCapability;
      v127 = 1024;
      v128 = v73;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Cellular Capable: %d Carrier Settings %d", buf, 0xEu);
    }

    v75 = obj;
    if ((HasCellularDataCapability & v73) == 1 && ([UIApp launchedToTest] & 1) == 0)
    {
      v109 = v8;
      v111 = settingsFileName;
      if ((v70 & 1) == 0)
      {
        v76 = +[PSSpecifier emptyGroupSpecifier];
        [obj addObject:v76];
      }

      v124[0] = PSTitleKey;
      v124[1] = PSTableCellClassKey;
      v125[0] = @"Carrier Settings";
      v125[1] = @"PSLinkCell";
      v124[2] = PSBundlePathKey;
      v124[3] = PSBundleHasIconKey;
      v125[2] = @"Carrier Settings";
      v125[3] = kCFBooleanTrue;
      v124[4] = PSBundleIsControllerKey;
      v124[5] = PSSearchNanoInternalSettingsBundlePath;
      v125[4] = kCFBooleanTrue;
      v125[5] = kCFBooleanTrue;
      v124[6] = PSIDKey;
      v125[6] = @"CARRIER_SETTINGS";
      v77 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:7];
      v121 = v77;
      v122 = @"items";
      v78 = [NSArray arrayWithObjects:&v121 count:1];
      v123 = v78;
      v79 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
      v80 = +[NSBundle mainBundle];
      v81 = SpecifiersFromPlist();

      v82 = [v81 specifierForID:{@"CARRIER_SETTINGS", 0}];
      v83 = [UIImage imageNamed:@"CarrierSettings"];
      v84 = BPSCreateRoundedGizmoAppIconForSquareImage();
      [v82 setProperty:v84 forKey:PSIconImageKey];

      v75 = obj;
      [v82 setProperty:@"Carrier Settings" forKey:PSSpecifierSearchPlistKey];
      [obj addObjectsFromArray:v81];

      v8 = v109;
      settingsFileName = v111;
    }

    objc_storeStrong(&self->super.BPSListController_opaque[v3], v75);
    additionalSpecifiers = [(COSPreferencesListController *)self additionalSpecifiers];
    if ([additionalSpecifiers count])
    {
      [v75 addObjectsFromArray:additionalSpecifiers];
    }

    if (PBShouldOfferBetterTogetherFlow())
    {
      v86 = pbb_bridge_log();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Running in demo mode; disabling Passcode row", buf, 2u);
      }

      v87 = [v75 specifierForID:@"PASSCODE_ID"];
      [v87 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    v88 = *&self->super.BPSListController_opaque[v3];
    *&self->super.BPSListController_opaque[v3] = v75;

    [(COSPreferencesListController *)self reindexIfNeeded];
    v4 = *&self->super.BPSListController_opaque[v3];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSPreferencesListController;
  [(COSPreferencesListController *)&v4 dealloc];
}

- (id)specifierForBundle:(id)bundle
{
  bundleCopy = bundle;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  specifiers = [(COSPreferencesListController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = PSAppSettingsBundleIDKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 propertyForKey:v9];
        lastPathComponent = [v12 lastPathComponent];

        if (lastPathComponent && ([lastPathComponent isEqualToString:bundleCopy] & 1) != 0)
        {
          v14 = v11;

          goto LABEL_12;
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)loadSystemAppSpecifiers:(id)specifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C7F8;
  v5[3] = &unk_100268358;
  specifiersCopy = specifiers;
  selfCopy = self;
  v4 = specifiersCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (BOOL)_newSystemAppSpecifiers:(id)specifiers sameAs:(id)as
{
  specifiersCopy = specifiers;
  asCopy = as;
  v7 = [specifiersCopy count];
  if (v7 == [asCopy count])
  {
    if ([specifiersCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [specifiersCopy objectAtIndexedSubscript:v8];
        identifier = [v9 identifier];
        v11 = [asCopy objectAtIndexedSubscript:v8];
        identifier2 = [v11 identifier];
        v13 = [identifier isEqualToString:identifier2];

        if ((v13 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [specifiersCopy count]);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_decorateInsertAndReloadSystemAppSpecifiers:(id)specifiers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [specifiers reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(COSPreferencesListController *)self _decorateSpecifierForLazyIconLoading:v9];
        [(COSPreferencesListController *)self insertSpecifier:v9 afterSpecifierID:@"APPLE_APP_GROUP_ID" animated:1];
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeSystemAppSpecifiers:(id)specifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005CDEC;
  v5[3] = &unk_100268358;
  specifiersCopy = specifiers;
  selfCopy = self;
  v4 = specifiersCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_decorateSpecifierForLazyIconLoading:(id)loading
{
  loadingCopy = loading;
  v4 = PSLazyIconAppID;
  v10 = loadingCopy;
  v5 = [loadingCopy propertyForKey:PSLazyIconAppID];

  if (!v5)
  {
    v6 = [NSNumber numberWithBool:1];
    [v10 setProperty:v6 forKey:PSLazyIconLoading];

    v7 = BPSWatchAppBundleIDForSettingsBundleSpecifier();
    [v10 setProperty:v7 forKey:v4];
    v8 = BPSIsIconForBundleIDRemote();
    if (([v8 BOOLValue] & 1) == 0)
    {
      v9 = BPSLocalIconName();
      [v10 setProperty:v9 forKey:@"squareIconName"];
    }

    [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }
}

- (void)_removeSystemAppSpecifierFromCache:(id)cache
{
  cacheCopy = cache;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  systemAppSpecifiers = [(COSPreferencesListController *)self systemAppSpecifiers];
  v6 = [systemAppSpecifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(systemAppSpecifiers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:cacheCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [systemAppSpecifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  systemAppSpecifiers2 = [(COSPreferencesListController *)self systemAppSpecifiers];
  [systemAppSpecifiers2 removeObject:v6];
}

- (PSController)categoryController
{
  splitViewController = [(COSPreferencesListController *)self splitViewController];
  containerNavigationController = [splitViewController containerNavigationController];

  viewControllers = [containerNavigationController viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)launchBridgeSetup:(id)setup
{
  v3 = +[UIApplication sharedApplication];
  [v3 presentSetupFlowAnimated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(COSPreferencesListController *)self specifierAtIndex:[(COSPreferencesListController *)self indexForIndexPath:pathCopy]];
  if (v6)
  {
    [(COSPreferencesListController *)self _showControllerFromSpecifier:v6];
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = pathCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "nil specifier at indexPath: %@", &v8, 0xCu);
    }
  }
}

- (void)selectGeneralCategoryForced:(BOOL)forced showController:(BOOL)controller
{
  controllerCopy = controller;
  v7 = [(COSPreferencesListController *)self indexPathForIndex:[(COSPreferencesListController *)self indexOfGeneralController]];
  v8 = v7;
  v11 = v7;
  if (!v7 || forced)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = OBJC_IVAR___PSListController__table;
  }

  else
  {
    v9 = OBJC_IVAR___PSListController__table;
    v10 = [(COSPreferencesListController *)self tableView:*&self->super.BPSListController_opaque[OBJC_IVAR___PSListController__table] willSelectRowAtIndexPath:v7];

    v8 = v11;
    if (v10 != v11)
    {
      goto LABEL_9;
    }
  }

  [*&self->super.BPSListController_opaque[v9] selectRowAtIndexPath:v8 animated:0 scrollPosition:0];
  v8 = v11;
  if (controllerCopy)
  {
    [(COSPreferencesListController *)self tableView:*&self->super.BPSListController_opaque[v9] didSelectRowAtIndexPath:v11];
    v8 = v11;
  }

LABEL_9:
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = COSPreferencesListController;
  [(COSPreferencesListController *)&v7 viewDidAppear:appear];
  splitViewController = [(COSPreferencesListController *)self splitViewController];
  view = [splitViewController view];
  [view setUserInteractionEnabled:1];

  v6 = dispatch_get_global_queue(-2, 0);
  dispatch_async(v6, &stru_100269730);

  [(COSPreferencesListController *)self createPrequeuedPSTableCells:3];
  if ([(COSPreferencesListController *)self _isRegularWidth])
  {
    if (!self->_didFirstLoad)
    {
      [(COSPreferencesListController *)self selectGeneralCategoryForced:0 showController:0];
      self->_didFirstLoad = 1;
    }
  }
}

- (void)_showControllerFromSpecifier:(id)specifier
{
  v4 = [(COSPreferencesListController *)self selectSpecifier:specifier];
  if (v4)
  {
    v6 = v4;
    splitViewController = [(COSPreferencesListController *)self splitViewController];
    [splitViewController showInitialViewController:v6];

    v4 = v6;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = COSPreferencesListController;
  v5 = [(COSPreferencesListController *)&v8 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    splitViewController = [(COSPreferencesListController *)self splitViewController];
    [v5 setForceHideDisclosureIndicator:{objc_msgSend(splitViewController, "isCollapsed") ^ 1}];
  }

  return v5;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = OBJC_IVAR___PSViewController__rootController;
  WeakRetained = objc_loadWeakRetained(&self->super.BPSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
  if ([WeakRetained _isTransitioning])
  {

LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  v8 = objc_loadWeakRetained(&self->super.BPSListController_opaque[v6]);
  topViewController = [v8 topViewController];
  presentedViewController = [topViewController presentedViewController];

  if (presentedViewController)
  {
    goto LABEL_4;
  }

  v11 = pathCopy;
LABEL_5:

  return v11;
}

- (void)insertContiguousSpecifiers:(id)specifiers atIndex:(int64_t)index animated:(BOOL)animated
{
  v10.receiver = self;
  v10.super_class = COSPreferencesListController;
  [(COSPreferencesListController *)&v10 insertContiguousSpecifiers:specifiers atIndex:index animated:animated];
  specifierIDPendingPush = [(COSPreferencesListController *)self specifierIDPendingPush];
  v7 = [(COSPreferencesListController *)self specifierForID:specifierIDPendingPush];

  if (v7)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      specifierIDPendingPush2 = [(COSPreferencesListController *)self specifierIDPendingPush];
      *buf = 136315394;
      v12 = "[COSPreferencesListController insertContiguousSpecifiers:atIndex:animated:]";
      v13 = 2112;
      v14 = specifierIDPendingPush2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Pending url specifier has been inserted. Handling url for %@", buf, 0x16u);
    }

    [(COSPreferencesListController *)self handlePendingURL];
  }
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  dCopy = d;
  if (*&self->super.BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] && ([(COSPreferencesListController *)self specifierForID:dCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[COSPreferencesListController shouldDeferPushForSpecifierID:]";
      v11 = 2112;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: YES", &v9, 0x16u);
    }

    v7 = 1;
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[COSPreferencesListController shouldDeferPushForSpecifierID:]";
      v11 = 2112;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: NO", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pendingURLResourceDictionary = [(COSPreferencesListController *)self pendingURLResourceDictionary];
    *buf = 136315394;
    v18 = "[COSPreferencesListController handleURL:withCompletion:]";
    v19 = 1024;
    v20 = pendingURLResourceDictionary != 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: handling pending URL: %{BOOL}d", buf, 0x12u);
  }

  pendingURLResourceDictionary2 = [(COSPreferencesListController *)self pendingURLResourceDictionary];

  if (pendingURLResourceDictionary2)
  {
    pendingURLResourceDictionary3 = [(COSPreferencesListController *)self pendingURLResourceDictionary];
    v12 = [pendingURLResourceDictionary3 isEqualToDictionary:lCopy];

    if ((v12 & 1) == 0)
    {
      v13 = pbb_bridge_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[COSPreferencesListController handleURL:withCompletion:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: pending url dictioanry is different from resource dictionary", buf, 0xCu);
      }
    }

    v14 = +[UIApplication sharedApplication];
    v15 = [lCopy mutableCopy];
    [v14 navigateToRootObjectWithURLDictionary:v15 animated:1];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = COSPreferencesListController;
    [(COSPreferencesListController *)&v16 handleURL:lCopy withCompletion:completionCopy];
  }
}

@end
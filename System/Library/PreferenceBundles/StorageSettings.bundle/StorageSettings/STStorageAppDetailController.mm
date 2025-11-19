@interface STStorageAppDetailController
- (BOOL)removeAllowed;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)appSizeString:(id)a3;
- (id)dataSizeString:(id)a3;
- (id)editButton;
- (id)fileProviderTips;
- (id)hlsSpecifiers;
- (id)specifierForDocument:(id)a3;
- (id)specifiers;
- (id)usageIndexPathForSpecifier:(id)a3;
- (id)valueForSpecifier:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_syncUI:(id)a3;
- (void)confirmDeleteApp;
- (void)confirmDemoteApp;
- (void)deleteApp;
- (void)deleteAssets:(id)a3;
- (void)deleteMediaItems:(id)a3;
- (void)deleteURLItems:(id)a3;
- (void)demoteApp;
- (void)didLock;
- (void)reinstallApp;
- (void)reloadSpecs:(id)a3;
- (void)setEditable:(BOOL)a3;
- (void)setUIState:(int)a3;
- (void)setupSpecifiers;
- (void)showAlertForFailedInstallation;
- (void)suspend;
- (void)syncUI;
- (void)syncUIState:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateHLSSpecs;
- (void)viewDidLoad;
@end

@implementation STStorageAppDetailController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = STStorageAppDetailController;
  [(STStorageDetailViewController *)&v7 viewDidLoad];
  v3 = [(STStorageApp *)self->_storageApp name];
  v4 = [(STStorageAppDetailController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = [(STStorageAppDetailController *)self table];
  [v5 setAllowsSelectionDuringEditing:1];

  v6 = [(STStorageAppDetailController *)self table];
  [v6 setAllowsMultipleSelectionDuringEditing:0];
}

- (id)appSizeString:(id)a3
{
  v4 = a3;
  storageApp = self->_storageApp;
  if (!storageApp || [(STStorageApp *)storageApp isDemoted])
  {
    self->_appSize = 0;
LABEL_4:
    v6 = &stru_2D2D0;
    goto LABEL_5;
  }

  v8 = [(STStorageApp *)self->_storageApp appSize];
  self->_appSize = [v8 fixed];

  if (!self->_appSize)
  {
    goto LABEL_4;
  }

  v6 = STFormattedSize();
LABEL_5:

  return v6;
}

- (id)dataSizeString:(id)a3
{
  v4 = a3;
  storageApp = self->_storageApp;
  if (storageApp)
  {
    v6 = [(STStorageApp *)storageApp appSize];
    if ([(STStorageApp *)self->_storageApp isDemoted])
    {
      v7 = [v6 userTotal];
    }

    else
    {
      v7 = [v6 docsAndData];
    }

    self->_dataSize = v7;

    if (self->_dataSize >= 1)
    {
      v8 = STFormattedSize();
      goto LABEL_9;
    }
  }

  else
  {
    self->_dataSize = 0;
  }

  v8 = &stru_2D2D0;
LABEL_9:

  return v8;
}

- (id)valueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSValueKey];
  [v3 longLongValue];
  v4 = STFormattedSize();

  return v4;
}

- (void)setUIState:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_145E0;
  v3[3] = &unk_2D058;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)deleteApp
{
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v3 = self->_storageApp;
    if ([(STStorageApp *)v3 isDeletable])
    {
      self->_skipTimer = 1;
      [(STStorageAppDetailController *)self setUIState:6];
      v9 = [(STStorageApp *)v3 name];
      STLog();

      v14 = NSLocalizedDescriptionKey;
      v15 = @"Canceling existing install coord because user has requested delete";
      v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1, v9];
      v5 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v4];

      v6 = [(STStorageApp *)v3 bundleIdentifier];
      v13 = 0;
      v7 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:v6 withReason:v5 client:26 error:&v13];
      v8 = v13;
      if (v7)
      {
        STLog();
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_14820;
      v10[3] = &unk_2CD28;
      v11 = v3;
      v12 = self;
      [IXAppInstallCoordinator uninstallAppWithBundleID:v6 requestUserConfirmation:0 waitForDeletion:1 completion:v10];
    }
  }
}

- (void)confirmDeleteApp
{
  v2 = self->_storageApp;
  v21 = v2;
  v3 = [(STStorageApp *)v2 isAppClip];
  v4 = @"DELETE_APP";
  if (v3)
  {
    v4 = @"DELETE_APPCLIP";
  }

  v5 = v4;
  v23 = [(__CFString *)v5 stringByAppendingString:@"_EXPLANATION"];
  v6 = objc_alloc_init(PSConfirmationSpecifier);
  v7 = STStorageLocStr(v5);
  v20 = PSConfirmationOKKey;
  v8 = STStorageLocStr(@"CANCEL");
  v9 = PSConfirmationCancelKey;
  v10 = STStorageLocStr(v23);
  v11 = [(STStorageApp *)v2 name];
  v12 = [NSString stringWithFormat:v10, v11];
  v13 = PSConfirmationPromptKey;
  v14 = STStorageLocStr(v5);

  v15 = [NSDictionary dictionaryWithObjectsAndKeys:v7, v20, v8, v9, v12, v13, v14, PSConfirmationTitleKey, 0];
  [v6 setupWithDictionary:v15];

  v16 = [NSNumber numberWithBool:1];
  [v6 setProperty:v16 forKey:PSConfirmationDestructiveKey];

  objc_storeWeak(&v6[OBJC_IVAR___PSSpecifier_target], self);
  [v6 setConfirmationAction:"deleteApp"];
  v24 = kCFBundleIdentifierKey;
  v17 = [(STStorageApp *)v21 bundleIdentifier];
  v25 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v19 = +[NSDistributedNotificationCenter defaultCenter];
  [v19 postNotificationName:@"com.apple.StorageSettings.AppMayUninstall" object:0 userInfo:v18 deliverImmediately:1];

  [(STStorageAppDetailController *)self showConfirmationViewForSpecifier:v6];
}

- (void)demoteApp
{
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v3 = self->_storageApp;
    if ([(STStorageApp *)v3 isDemotable])
    {
      v4 = [(STStorageApp *)v3 appRecord];
      v5 = [v4 applicationState];
      v6 = [v5 isValid];

      if (v6)
      {
        v12 = [(STStorageApp *)v3 name];
        STLog();

        v17 = NSLocalizedDescriptionKey;
        v18 = @"Canceling existing install coord because user has requested offload";
        v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1, v12];
        v8 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v7];

        v9 = [(STStorageApp *)v3 bundleIdentifier];
        v16 = 0;
        v10 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:v9 withReason:v8 client:26 error:&v16];
        v11 = v16;
        if (v10)
        {
          STLog();
        }

        self->_skipTimer = 1;
        [(STStorageAppDetailController *)self setUIState:4];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_14ED4;
        v13[3] = &unk_2CD28;
        v14 = v3;
        v15 = self;
        [IXAppInstallCoordinator demoteAppToPlaceholderWithBundleID:v9 forReason:2 waitForDeletion:1 completion:v13];
      }
    }
  }
}

- (void)confirmDemoteApp
{
  v14 = objc_alloc_init(PSConfirmationSpecifier);
  v3 = STStorageLocStr(@"UNINSTALL");
  v4 = PSConfirmationOKKey;
  v5 = STStorageLocStr(@"CANCEL");
  v6 = PSConfirmationCancelKey;
  v7 = STStorageLocStr(@"UNINSTALL_APP_EXPLANATION");
  v8 = [(STStorageApp *)self->_storageApp name];
  v9 = [NSString stringWithFormat:v7, v8];
  v10 = PSConfirmationPromptKey;
  v11 = STStorageLocStr(@"UNINSTALL_APP");
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:v3, v4, v5, v6, v9, v10, v11, PSConfirmationTitleKey, 0];
  [v14 setupWithDictionary:v12];

  v13 = [NSNumber numberWithBool:0];
  [v14 setProperty:v13 forKey:PSConfirmationDestructiveKey];

  objc_storeWeak(&v14[OBJC_IVAR___PSSpecifier_target], self);
  [v14 setConfirmationAction:"demoteApp"];
  [(STStorageAppDetailController *)self showConfirmationViewForSpecifier:v14];
}

- (void)reinstallApp
{
  v3 = self->_storageApp;
  v4 = [(STStorageApp *)v3 bundleIdentifier];
  v5 = [(STStorageApp *)self->_storageApp state];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_15468;
  v17[3] = &unk_2D080;
  v17[4] = self;
  v19 = v5;
  v6 = v3;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  if ([(STStorageApp *)v6 isDeleted])
  {
    v13 = [(STStorageApp *)v6 name];
    STLog();

    self->_skipTimer = 1;
    [(STStorageAppDetailController *)self setUIState:2, v13];
    v8 = [[ASDSystemAppMetadata alloc] initWithBundleID:v4];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_15570;
    v15[3] = &unk_2D0A8;
    v16 = v7;
    [ASDInstallApps installApp:v8 withCompletionHandler:v15];

LABEL_5:
    goto LABEL_6;
  }

  if ([(STStorageApp *)v6 isDemoted])
  {
    v14 = [(STStorageApp *)v6 name];
    STLog();

    self->_skipTimer = 1;
    [(STStorageAppDetailController *)self setUIState:2, v14];
    v9 = [ASDRestoreDemotedApplicationsRequest alloc];
    v10 = [ASDRestoreDemotedApplicationsRequestOptions alloc];
    v20 = v4;
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    v12 = [v10 initWithBundleIDs:v11];
    v8 = [v9 initWithOptions:v12];

    [v8 startWithCompletionBlock:v7];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)showAlertForFailedInstallation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_155F8;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)fileProviderTips
{
  v3 = [(STStorageApp *)self->_storageApp fpDomain];
  if ([v3 supportsEnumeration] && (objc_msgSend(v3, "providerID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", localFilesProviderID), v4, v5))
  {
    localTip = self->_localTip;
    if (!localTip)
    {
      v7 = STStorageDeviceKey();
      v8 = objc_alloc_init(STStorageActionTip);
      v9 = self->_localTip;
      self->_localTip = v8;

      v10 = [v3 identifier];
      v11 = [v10 stringByAppendingString:@"_local"];
      [(STStorageActionTip *)self->_localTip setIdentifier:v11];

      v12 = [NSString stringWithFormat:@"LOCAL_FILES_TITLE_%@", v7];
      v13 = STStorageLocStr(v12);
      [(STStorageActionTip *)self->_localTip setTitle:v13];

      v14 = [NSString stringWithFormat:@"LOCAL_FILES_INFO_%@", v7];
      v15 = STStorageLocStr(v14);
      [(STStorageActionTip *)self->_localTip setInfoText:v15];

      v16 = [(STStorageApp *)self->_storageApp appIdentifier];
      [(STStorageActionTip *)self->_localTip setRepresentedApp:v16];

      [(STStorageActionTip *)self->_localTip setDetailControllerClass:NSClassFromString(@"STStorageLocalStorageController")];
      [(STStorageActionTip *)self->_localTip setProperty:self->_storageApp forKey:STStorageAppKey];
      [(STStorageActionTip *)self->_localTip setProperty:v3 forKey:@"_stFPDomain"];

      localTip = self->_localTip;
    }

    v19 = localTip;
    v17 = [NSArray arrayWithObjects:&v19 count:1];
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (id)hlsSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = [(STStorageApp *)self->_storageApp bundleIdentifier];
  if ([v5 length])
  {
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_15D64;
    v40 = &unk_2CEA0;
    v41 = v3;
    v42 = v4;
    CacheManagementEnumerateAssets();
  }

  v6 = [v3 count];
  v7 = &v6[[v4 count]];
  v8 = [NSMutableArray arrayWithCapacity:v7 + 2];
  if (v7)
  {
    v28 = v5;
    v9 = STStorageLocStr(@"HLS_VIDEOS");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v8 addObject:v10];
    if ([v4 count])
    {
      [v4 sortUsingComparator:&stru_2D0C8];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [STStorageCacheAssetCell specifierForAsset:*(*(&v33 + 1) + 8 * i)];
            [v8 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v44 count:16];
        }

        while (v13);
      }
    }

    if ([v3 count])
    {
      [v3 sortUsingComparator:&stru_2D0E8];
      if ([v4 count])
      {
        v17 = +[PSSpecifier emptyGroupSpecifier];

        [v8 addObject:v17];
        v26 = v17;
      }

      else
      {
        v26 = v10;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = v3;
      v18 = v3;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [STStorageCacheAssetCell specifierForAsset:*(*(&v29 + 1) + 8 * j)];
            [v23 setProperty:&__kCFBooleanTrue forKey:@"_hideSize"];
            [v8 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v43 count:16];
        }

        while (v20);
      }

      v10 = v26;
      v3 = v27;
    }

    v24 = STStorageLocStr(@"AUTO_DELETE_MSG");
    [v10 setProperty:v24 forKey:PSFooterTextGroupKey];

    v5 = v28;
  }

  return v8;
}

- (void)updateHLSSpecs
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16050;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)specifierForDocument:(id)a3
{
  v3 = a3;
  v29 = 0;
  [v3 getResourceValue:&v29 forKey:NSURLIsRegularFileKey error:0];
  v4 = v29;
  v28 = 0;
  [v3 getResourceValue:&v28 forKey:NSURLIsPackageKey error:0];
  v5 = v28;
  if (([v4 BOOLValue] & 1) != 0 || objc_msgSend(v5, "BOOLValue"))
  {
    v6 = [STStorageItemCell specifierForItemURL:v3];
    if (v6)
    {
      v7 = dispatch_semaphore_create(0);
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = sub_163E4;
      v26 = sub_163F4;
      v27 = 0;
      v8 = [QLThumbnailGenerationRequest alloc];
      ScreenScale();
      v10 = [v8 initWithFileAtURL:v3 size:4 scale:29.0 representationTypes:{29.0, v9}];
      v11 = +[QLThumbnailGenerator sharedGenerator];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_163FC;
      v19 = &unk_2D110;
      v21 = &v22;
      v12 = v7;
      v20 = v12;
      [v11 generateBestRepresentationForRequest:v10 completionHandler:&v16];

      dispatch_semaphore_wait(v12, 0);
      v13 = v23[5];
      if (v13)
      {
        [v6 setProperty:v13 forKey:{STStorageIconKey, v16, v17, v18, v19}];
      }

      v14 = [NSNumber numberWithBool:1, v16, v17, v18, v19];
      [v6 setProperty:v14 forKey:PSEnabledKey];

      _Block_object_dispose(&v22, 8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setupSpecifiers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16544;
  block[3] = &unk_2CAA0;
  block[4] = self;
  if (qword_3A018 != -1)
  {
    dispatch_once(&qword_3A018, block);
  }

  [qword_3A028 setTarget:self];
  [qword_3A030 setTarget:self];
  [qword_3A038 setTarget:self];
  [qword_3A040 setTarget:self];
  [qword_3A050 setTarget:self];
  [qword_3A048 setTarget:self];
}

- (BOOL)removeAllowed
{
  v3 = [(STStorageApp *)self->_storageApp appRecord];
  if (v3)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = [(STStorageApp *)self->_storageApp bundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_16BA8;
    v10[3] = &unk_2D138;
    v12 = &v13;
    v6 = v4;
    v11 = v6;
    [IXAppInstallCoordinator removabilityForAppWithBundleID:v5 completion:v10];

    v7 = dispatch_walltime(0, 5000000000);
    dispatch_semaphore_wait(v6, v7);
    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_107;
  }

  if (!self->_storageApp)
  {
    v5 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageAppKey];
    storageApp = self->_storageApp;
    self->_storageApp = v5;

    self->_uiState = [(STStorageApp *)self->_storageApp state];
    if (!self->_storageApp)
    {
      v26 = &__NSArray0__struct;
      goto LABEL_108;
    }
  }

  v173 = v2;
  v7 = +[NSMutableArray array];
  v8 = [STStorageAppHeaderCell specifierForStorageApp:self->_storageApp];
  if (v8)
  {
    v9 = [(STStorageApp *)self->_storageApp appIdentifier];
    [v8 setVersionLabelEnabled:{objc_msgSend(v9, "hasPrefix:", @"com.apple."}];

    [v7 addObject:v8];
  }

  v179 = self;
  if ((-[STStorageApp isDemoted](self->_storageApp, "isDemoted") & 1) != 0 || (-[STStorageApp appSize](self->_storageApp, "appSize"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 fixed], v10, !v11))
  {
    v172 = 0;
  }

  else
  {
    if ([(STStorageApp *)self->_storageApp isAppClip])
    {
      v12 = @"APPCLIP_SIZE";
    }

    else
    {
      v12 = @"APP_SIZE";
    }

    v13 = STStorageLocStr(v12);
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"appSizeString:" detail:0 cell:4 edit:0];

    [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v14 setProperty:self->_storageApp forKey:STStorageAppKey];
    [v7 addObject:v14];
    v8 = v14;
    v172 = v8;
  }

  v15 = STStorageLocStr(STDocsAndDataKey);
  v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"dataSizeString:" detail:0 cell:4 edit:0];

  v17 = self;
  [v16 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v167 = STStorageAppKey;
  [v16 setProperty:self->_storageApp forKey:?];
  [v7 addObject:v16];
  v18 = [(STStorageApp *)self->_storageApp bundleIdentifier];
  v19 = v16;
  v176 = v18;
  v177 = v19;
  if ([(STStorageAppDetailController *)self removeAllowed])
  {
    v20 = [(STStorageApp *)self->_storageApp isDeletable];
    v21 = [(STStorageApp *)self->_storageApp isDemotable];
    v22 = [(STStorageApp *)self->_storageApp isAppClip];
    if ((v21 & 1) != 0 || v20)
    {
      [(STStorageAppDetailController *)self setupSpecifiers];
      if (!v21)
      {
        v24 = 0;
        goto LABEL_48;
      }

      v23 = qword_3A058;
      v24 = 0;
      uiState = self->_uiState;
      if (uiState <= 3)
      {
        if (uiState <= 1)
        {
          if (uiState)
          {
            if (uiState == 1)
            {
              v24 = 1;
LABEL_32:
              if ([v18 isEqualToString:@"com.apple.Health"])
              {
                v27 = qword_3A068;

                v28 = &qword_3A020;
                v29 = &qword_3A038;
              }

              else
              {
                v27 = qword_3A060;

                v28 = &qword_3A020;
                v29 = &qword_3A030;
              }

              if (!v24)
              {
                v28 = v29;
              }

              v31 = *v28;
              goto LABEL_44;
            }

LABEL_47:

LABEL_48:
            if (!v20)
            {
LABEL_74:
              v41 = &__kCFBooleanTrue;
              if (v24)
              {
                v41 = &__kCFBooleanFalse;
              }

              v42 = qword_3A028;
              v43 = PSEnabledKey;
              v44 = v41;
              [v42 setProperty:v44 forKey:v43];
              [qword_3A030 setProperty:v44 forKey:v43];
              [qword_3A040 setProperty:v44 forKey:v43];
              [qword_3A050 setProperty:v44 forKey:v43];
              [qword_3A048 setProperty:v44 forKey:v43];

              v17 = self;
              v19 = v177;
              goto LABEL_77;
            }

            if (v22)
            {
              v34 = qword_3A078;
              if ((self->_uiState - 5) > 1)
              {
                v35 = qword_3A050;
              }

              else
              {
                v35 = qword_3A020;
                v24 = 1;
              }

LABEL_71:
              v39 = v35;
              if (v39)
              {
                v40 = v39;
                [v7 addObject:v34];
                [v7 addObject:v40];
              }

              goto LABEL_73;
            }

            v34 = qword_3A070;
            v36 = self->_uiState;
            if (v36 <= 2)
            {
              if (!v36)
              {
                goto LABEL_61;
              }

              if (v36 == 1 || v36 == 2)
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v36 <= 4)
              {
                if (v36 != 3)
                {
LABEL_60:
                  v24 = 1;
                }

LABEL_61:
                v35 = qword_3A040;
                goto LABEL_71;
              }

              if (v36 == 5)
              {
LABEL_65:
                v37 = [(STStorageApp *)self->_storageApp isDemoted];
                v35 = qword_3A020;
                if (v37)
                {
                  v38 = qword_3A048;
                }

                else
                {
                  v38 = qword_3A040;
                }

                if (!v24)
                {
                  v35 = v38;
                }

                goto LABEL_71;
              }

              if (v36 == 6)
              {
                v24 = 1;
                goto LABEL_65;
              }
            }

LABEL_73:

            goto LABEL_74;
          }

          v30 = &qword_3A028;
LABEL_40:
          v31 = *v30;
          goto LABEL_45;
        }

        if (uiState != 2)
        {
          goto LABEL_32;
        }

LABEL_34:
        v30 = &qword_3A020;
        v24 = 1;
        goto LABEL_40;
      }

      if (uiState > 5)
      {
        if (uiState != 6)
        {
          if (uiState == 7)
          {
            goto LABEL_32;
          }

          goto LABEL_47;
        }

        v24 = 1;
      }

      else if (uiState == 4)
      {
        goto LABEL_34;
      }

      if (![(STStorageApp *)self->_storageApp isDemoted])
      {
        v31 = qword_3A028;
LABEL_45:
        v32 = v31;
        if (v32)
        {
          v33 = v32;
          [v7 addObject:v23];
          [v7 addObject:v33];
        }

        goto LABEL_47;
      }

      v27 = qword_3A060;

      v31 = qword_3A030;
LABEL_44:
      v23 = v27;
      goto LABEL_45;
    }
  }

LABEL_77:
  v45 = +[STStoragePluginManager sharedManager];
  v46 = [(STStorageApp *)v17->_storageApp bundleIdentifier];
  if ([v46 isEqualToString:comAppleTV])
  {
    v47 = 0;
  }

  else
  {
    v47 = [v45 tipsForApp:v17->_storageApp];
  }

  v178 = [(STStorageAppDetailController *)v17 fileProviderTips];
  v174 = v47;
  v175 = v45;
  if ([v47 count] || objc_msgSend(v178, "count"))
  {
    v48 = [NSValue valueWithPointer:v17];
    v49 = STStorageLocStr(STFreeUpSpaceKey);
    v50 = [PSSpecifier preferenceSpecifierNamed:v49 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v7 addObject:v50];

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v51 = v47;
    v52 = [v51 countByEnumeratingWithState:&v205 objects:v214 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v206;
      do
      {
        v56 = 0;
        v181 = v54;
        v57 = -v54;
        do
        {
          if (*v206 != v55)
          {
            objc_enumerationMutation(v51);
          }

          v58 = *(*(&v205 + 1) + 8 * v56);
          if (v57 != v56)
          {
            v59 = +[PSSpecifier emptyGroupSpecifier];
            [v7 addObject:v59];
          }

          v60 = [v58 specifier];
          [v7 addObject:v60];

          v61 = [v58 infoSpecifier];
          [v7 addObject:v61];

          [v58 setProperty:v48 forKey:@"_stController"];
          v56 = v56 + 1;
        }

        while (v53 != v56);
        v54 = v181 + v53;
        v53 = [v51 countByEnumeratingWithState:&v205 objects:v214 count:16];
      }

      while (v53);
    }

    else
    {
      v54 = 0;
    }

    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v62 = v178;
    v63 = [v62 countByEnumeratingWithState:&v201 objects:v213 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v202;
      do
      {
        v66 = 0;
        v182 = v54;
        v67 = -v54;
        do
        {
          if (*v202 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v68 = *(*(&v201 + 1) + 8 * v66);
          if (v67 != v66)
          {
            v69 = +[PSSpecifier emptyGroupSpecifier];
            [v7 addObject:v69];
          }

          v70 = [v68 specifier];
          [v7 addObject:v70];

          v71 = [v68 infoSpecifier];
          [v7 addObject:v71];

          [v68 setProperty:v48 forKey:@"_stController"];
          v66 = v66 + 1;
        }

        while (v64 != v66);
        v54 = v182 + v64;
        v64 = [v62 countByEnumeratingWithState:&v201 objects:v213 count:16];
      }

      while (v64);
    }

    v17 = v179;
    v18 = v176;
    v19 = v177;
    v47 = v174;
    v45 = v175;
  }

  v171 = [v7 count];
  v72 = [v45 docPluginsForApp:v17->_storageApp];
  v73 = [(STStorageApp *)v17->_storageApp childApps];
  v183 = v72;
  if (([v18 isEqualToString:comApplePhotos] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", comAppleNews) & 1) == 0)
  {
    if ([v73 count])
    {
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v83 = v73;
      v84 = v73;
      v85 = [v84 countByEnumeratingWithState:&v197 objects:v212 count:16];
      if (v85)
      {
        v86 = v85;
        v87 = 0;
        v88 = *v198;
        do
        {
          for (i = 0; i != v86; i = i + 1)
          {
            if (*v198 != v88)
            {
              objc_enumerationMutation(v84);
            }

            v90 = [STStorageAppCell specifierForChildApp:*(*(&v197 + 1) + 8 * i)];
            [v7 addObject:v90];
          }

          v87 += v86;
          v86 = [v84 countByEnumeratingWithState:&v197 objects:v212 count:16];
        }

        while (v86);
      }

      else
      {
        v87 = 0;
      }

      STStorageLocStr(@"CHILD_APPS");
      v101 = 0;
      v19 = v177;
      v75 = v177;
      v47 = v174;
      v45 = v175;
      v74 = v73 = v83;
      if (!v87)
      {
        goto LABEL_206;
      }

LABEL_178:
      docsGroup = v17->_docsGroup;
      v18 = v176;
      if (docsGroup)
      {
        goto LABEL_182;
      }

      if (([v176 isEqualToString:@"com.apple.Health"] & 1) == 0)
      {
        v145 = [PSSpecifier preferenceSpecifierNamed:v74 target:0 set:0 get:0 detail:0 cell:0 edit:0];
        v146 = v17->_docsGroup;
        v17->_docsGroup = v145;
      }

      docsGroup = v17->_docsGroup;
      if (docsGroup)
      {
LABEL_182:
        if (v101)
        {
          [(PSSpecifier *)docsGroup setProperty:@"STStorageButtonHeader" forKey:PSHeaderCellClassGroupKey];
          v147 = v17->_docsGroup;
          STStorageLocStr(@"EDIT");
          v168 = v74;
          v148 = v73;
          v150 = v149 = v47;
          [(PSSpecifier *)v147 setProperty:v150 forKey:@"stButtonTitle"];

          v47 = v149;
          v73 = v148;
          v74 = v168;
          [(PSSpecifier *)v17->_docsGroup setTarget:v17];
          [(PSSpecifier *)v17->_docsGroup setButtonAction:"toggleEdit"];
          docsGroup = v17->_docsGroup;
        }

        v19 = v177;
        [v7 insertObject:docsGroup atIndex:v171];
      }

      else
      {
        v19 = v177;
      }

      goto LABEL_106;
    }

    v166 = v73;
    if ([v72 count])
    {
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v91 = v72;
      v92 = [v91 countByEnumeratingWithState:&v193 objects:v211 count:16];
      if (v92)
      {
        v93 = v92;
        v94 = 0;
        v95 = *v194;
        do
        {
          for (j = 0; j != v93; j = j + 1)
          {
            if (*v194 != v95)
            {
              objc_enumerationMutation(v91);
            }

            v97 = *(*(&v193 + 1) + 8 * j);
            v98 = [(STStorageApp *)v17->_storageApp appIdentifier];
            v99 = [v97 documentSpecifiersForApp:v98];

            if ([v99 count])
            {
              if (v94)
              {
                v100 = +[PSSpecifier emptyGroupSpecifier];
                [v7 addObject:v100];
              }

              ++v94;
              [v7 addObjectsFromArray:v99];
            }
          }

          v93 = [v91 countByEnumeratingWithState:&v193 objects:v211 count:16];
        }

        while (v93);
      }

      else
      {
        v94 = 0;
      }

      v74 = STStorageLocStr(@"DOCUMENTS");
      v101 = 0;
      v19 = v177;
      v75 = v177;
      v47 = v174;
      v45 = v175;
LABEL_144:
      v73 = v166;
      if (v94)
      {
        goto LABEL_178;
      }

LABEL_206:
      v18 = v176;
      goto LABEL_106;
    }

    v102 = [STMediaCache mediaTypesForIdentifier:v18];

    if (v102)
    {
      v103 = +[STMediaCache sharedCache];
      v104 = [v103 mediaSpecifiersForApp:v17->_storageApp];

      v105 = [v104 count];
      v101 = v105 != 0;
      if (v105)
      {
        v73 = v166;
        if ([v104 count] >= 2 && objc_msgSend(v18, "isEqualToString:", comApplePodcasts))
        {
          v106 = +[STMediaCache sharedCache];
          v107 = v101;
          v108 = [v106 totalSizeForApp:v17->_storageApp];

          v109 = STStorageLocStr(@"PODCASTS_ALL_EPISODES");
          v110 = [PSSpecifier preferenceSpecifierNamed:v109 target:v17 set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

          v111 = [NSNumber numberWithLongLong:v108];
          [v110 setProperty:v111 forKey:PSValueKey];

          [v110 setProperty:v104 forKey:@"_stMediaSpecifiers"];
          [v7 addObject:v110];
          v112 = STStorageLocStr(@"PODCASTS_SHOWS");
          v113 = [PSSpecifier groupSpecifierWithName:v112];
          [v7 addObject:v113];

          v101 = v107;
          v19 = v177;

          v73 = v166;
        }

        v114 = [v104 count];
        [v7 addObjectsFromArray:v104];
      }

      else
      {
        v114 = 0;
        v73 = v166;
      }

      if ([v176 isEqualToString:comApplePodcasts])
      {
        v133 = @"PODCASTS";
      }

      else if ([v176 isEqualToString:PSBundleIdentifieriBooks])
      {
        v133 = @"BOOKS";
      }

      else
      {
        if (![v176 isEqualToString:PSBundleIdentifierTV])
        {
          v74 = 0;
          v45 = v175;
LABEL_177:

          v75 = v19;
          if (v114)
          {
            goto LABEL_178;
          }

          goto LABEL_206;
        }

        v133 = @"TV_SHOWS";
      }

      v45 = v175;
      v74 = STStorageLocStr(v133);
      goto LABEL_177;
    }

    v115 = [(STStorageApp *)v17->_storageApp isUsageApp];
    v116 = v17->_storageApp;
    if (!v115)
    {
      if (![(STStorageApp *)v116 isDocumentApp])
      {
        hlsSpecs = v17->_hlsSpecs;
        if (hlsSpecs)
        {
          if ([(NSArray *)hlsSpecs count])
          {
            [v7 addObjectsFromArray:v17->_hlsSpecs];
          }
        }

        else
        {
          v160 = +[PSSpecifier emptyGroupSpecifier];
          [v7 addObject:v160];

          v161 = [(STStorageAppDetailController *)v17 spinnerSpecifier];
          [v7 addObject:v161];

          [(STStorageAppDetailController *)v17 updateHLSSpecs];
        }

        v74 = 0;
        v75 = v19;
        v45 = v175;
        v73 = v166;
        goto LABEL_106;
      }

      v134 = [(STStorageApp *)v17->_storageApp documents];
      v135 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v134 count]);
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v136 = v134;
      v137 = [v136 countByEnumeratingWithState:&v184 objects:v209 count:16];
      v75 = v19;
      if (v137)
      {
        v138 = v137;
        v139 = *v185;
        v75 = v19;
        do
        {
          v140 = 0;
          v141 = v75;
          do
          {
            if (*v185 != v139)
            {
              objc_enumerationMutation(v136);
            }

            v75 = [(STStorageAppDetailController *)v179 specifierForDocument:*(*(&v184 + 1) + 8 * v140)];

            if (v75)
            {
              [v135 addObject:v75];
            }

            v140 = v140 + 1;
            v141 = v75;
          }

          while (v138 != v140);
          v138 = [v136 countByEnumeratingWithState:&v184 objects:v209 count:16];
        }

        while (v138);
      }

      v142 = [v135 count];
      v101 = v142 != 0;
      if (v142)
      {
        v143 = [v135 count];
        [v7 addObjectsFromArray:v135];
      }

      else
      {
        v143 = 0;
      }

      v47 = v174;
      v45 = v175;
      v73 = v166;
      v170 = STStorageLocStr(@"DOCUMENTS");

      v74 = v170;
      v17 = v179;
      if (!v143)
      {
        goto LABEL_206;
      }

      goto LABEL_178;
    }

    v117 = [(STStorageApp *)v116 usageBundle];
    v118 = [v117 usageBundleStorageReporter];
    v119 = objc_opt_class();
    v165 = v118;
    if (objc_opt_respondsToSelector())
    {
      v119 = [v118 usageDetailControllerClassForUsageBundleApp:v117];
    }

    v45 = v175;
    v120 = objc_alloc_init(v119);
    usageDetailController = v17->_usageDetailController;
    v17->_usageDetailController = v120;

    v122 = [(STStorageAppDetailController *)v17 rootController];
    [(PSUsageBundleDetailController *)v17->_usageDetailController setRootController:v122];

    [(PSUsageBundleDetailController *)v17->_usageDetailController setParentController:v17];
    v75 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:v119 cell:1 edit:0];

    v164 = v117;
    [v75 setProperty:v117 forKey:PSUsageBundleAppKey];
    [v75 setProperty:v17->_storageApp forKey:v167];
    [v75 setProperty:v17->_storageApp forKey:@"USAGE_APP"];
    [(PSUsageBundleDetailController *)v17->_usageDetailController setSpecifier:v75];
    v123 = [(objc_class *)v119 mediaGroups];
    [(objc_class *)v119 setupSpecifier:v75 forMediaGroups:v123];

    if (objc_opt_respondsToSelector())
    {
      v124 = [(STStorageApp *)v17->_storageApp usageBundle];
      v192 = v75;
      [v165 usageBundleApp:v124 willDisplaySpecifier:&v192];
      v125 = v192;

      v75 = v125;
    }

    [(PSUsageBundleDetailController *)v17->_usageDetailController viewDidLoad];
    [(STStorageAppDetailController *)v17 addChildViewController:v17->_usageDetailController];
    v126 = [(PSUsageBundleDetailController *)v17->_usageDetailController specifiers];
    v127 = [v126 mutableCopy];

    v163 = v127;
    if (![v127 count])
    {
      v74 = 0;
      v94 = 0;
      v101 = 0;
LABEL_203:

      v19 = v177;
      goto LABEL_144;
    }

    v128 = [v127 firstObject];
    v129 = [v128 propertyForKey:PSHeaderCellClassGroupKey];
    v130 = [v129 isEqualToString:@"PSUsageSizeHeader"];

    if (v130)
    {
      [v127 removeObjectAtIndex:0];
    }

    if ([v18 isEqualToString:comAppleMusic])
    {
      v131 = [v127 count];
      if (v131)
      {
        v131 = STStorageLocStr(@"MUSIC");
        v132 = 1;
LABEL_193:
        v169 = v131;
        v162 = v132;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        obj = v127;
        v152 = [obj countByEnumeratingWithState:&v188 objects:v210 count:16];
        if (v152)
        {
          v153 = v152;
          v94 = 0;
          v154 = *v189;
          v155 = 1000;
          do
          {
            v156 = 0;
            v157 = v155;
            do
            {
              if (*v189 != v154)
              {
                objc_enumerationMutation(obj);
              }

              v158 = *(*(&v188 + 1) + 8 * v156);
              v155 = v157 + 1;
              v159 = [NSNumber numberWithLong:v157];
              [v158 setProperty:v159 forKey:@"_stUsageItemID"];

              [v7 addObject:v158];
              v156 = v156 + 1;
              v157 = v155;
            }

            while (v153 != v156);
            v94 += v153;
            v153 = [obj countByEnumeratingWithState:&v188 objects:v210 count:16];
          }

          while (v153);
        }

        else
        {
          v94 = 0;
        }

        v17 = v179;
        v47 = v174;
        v45 = v175;
        v101 = v162;
        v74 = v169;
        goto LABEL_203;
      }
    }

    else
    {
      v131 = 0;
    }

    v132 = 0;
    goto LABEL_193;
  }

  v74 = 0;
  v75 = v19;
LABEL_106:

  v76 = *&v17->super.PSListController_opaque[v173];
  *&v17->super.PSListController_opaque[v173] = v7;
  v77 = v7;

  appSizeSpec = v17->_appSizeSpec;
  v17->_appSizeSpec = v172;
  v79 = v172;

  dataSizeSpec = v17->_dataSizeSpec;
  v17->_dataSizeSpec = v19;
  v81 = v19;

  v3 = *&v17->super.PSListController_opaque[v173];
LABEL_107:
  v26 = v3;
LABEL_108:

  return v26;
}

- (void)_syncUI:(id)a3
{
  v4 = [(STStorageApp *)self->_storageApp state];

  [(STStorageAppDetailController *)self setUIState:v4];
}

- (void)syncUI
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_182D0;
  block[3] = &unk_2CAA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reloadSpecs:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"APPS"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[STStorageApp bundleIdentifier](self->_storageApp, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 containsObject:v6], v6, v7))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18430;
    block[3] = &unk_2CAA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)syncUIState:(id)a3
{
  v4 = a3;
  v5 = [(STStorageApp *)self->_storageApp appRecord];
  v6 = [v5 bundleIdentifier];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v13 = [v12 isEqualToString:v6];

        if (v13)
        {
          [(STStorageApp *)self->_storageApp refreshAppState];
          [(STStorageAppDetailController *)self syncUI];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)deleteAssets:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 propertyForKey:{@"stCacheAsset", v11, v12, v13, v14, v15, v16}];
        if (v10)
        {
          v11 = _NSConcreteStackBlock;
          v12 = 3221225472;
          v13 = sub_18730;
          v14 = &unk_2CD28;
          v15 = self;
          v16 = v9;
          CacheManagementRemove();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)deleteURLItems:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = STStorageItemURLKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 propertyForKey:v9];
        if (v12)
        {
          v13 = dispatch_get_global_queue(25, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_18A28;
          block[3] = &unk_2D160;
          v16 = v4;
          v17 = v12;
          v18 = self;
          v19 = v11;
          dispatch_async(v13, block);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)deleteMediaItems:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 propertyForKey:@"stMediaCollection"];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 items];
          if ([v14 count])
          {
            [v5 addObjectsFromArray:v14];
          }
        }

        else
        {
          v14 = [v11 propertyForKey:@"stMediaItem"];
          if (v14)
          {
            [v5 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18D5C;
    block[3] = &unk_2CA10;
    v17 = v5;
    v18 = v6;
    v19 = self;
    dispatch_async(v15, block);
  }
}

- (id)usageIndexPathForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"_stUsageItemID"];
  v6 = [v5 longValue];

  if (v6 < 1000)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(PSUsageBundleDetailController *)self->_usageDetailController indexPathForSpecifier:v4];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STStorageAppDetailController *)self specifierAtIndexPath:v7];
  v9 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v8];
  if (v9 && (-[STStorageApp usageBundle](self->_storageApp, "usageBundle"), v10 = objc_claimAutoreleasedReturnValue(), [v10 bundleIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"com.apple.mobilesafari"), v11, v10, (v12 & 1) == 0))
  {
    usageDetailController = self->_usageDetailController;
    if (objc_opt_respondsToSelector())
    {
      [(PSUsageBundleDetailController *)self->_usageDetailController tableView:v6 didSelectRowAtIndexPath:v9];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = STStorageAppDetailController;
    [(STStorageAppDetailController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STStorageAppDetailController *)self specifierAtIndexPath:v7];
  v9 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v8];
  if (v9)
  {
    usageDetailController = self->_usageDetailController;
    if (objc_opt_respondsToSelector())
    {
      [(PSUsageBundleDetailController *)self->_usageDetailController tableView:v6 didDeselectRowAtIndexPath:v9];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STStorageAppDetailController;
    [(STStorageAppDetailController *)&v11 tableView:v6 didDeselectRowAtIndexPath:v7];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = [(STStorageAppDetailController *)self specifierAtIndexPath:a4];
  v6 = v5;
  if (!self->_usageDetailController)
  {
    v12 = [v5 propertyForKey:@"stCacheAsset"];
    if (v12 || ([v6 propertyForKey:STStorageItemURLKey], (v12 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "propertyForKey:", UsageMediaKindKey), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v14 = [v6 propertyForKey:@"_stMediaSpecifiers"];

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v11 = 1;
    goto LABEL_12;
  }

  v7 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v5];
  if (!v7 || (usageDetailController = self->_usageDetailController, (objc_opt_respondsToSelector() & 1) == 0))
  {

LABEL_6:
    v11 = 0;
    goto LABEL_12;
  }

  v9 = self->_usageDetailController;
  v10 = [(PSUsageBundleDetailController *)v9 table];
  v11 = [(PSUsageBundleDetailController *)v9 tableView:v10 canEditRowAtIndexPath:v7];

LABEL_12:
  return v11;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  usageDetailController = self->_usageDetailController;
  v9 = [(STStorageAppDetailController *)self specifierAtIndexPath:v7];
  v10 = v9;
  if (!usageDetailController)
  {

    if (v10)
    {
      v16 = &dword_0 + 1;
      goto LABEL_11;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v11 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v9];
  v12 = self->_usageDetailController;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_10;
  }

  v13 = self->_usageDetailController;
  v14 = [(PSUsageBundleDetailController *)v13 table];
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  v16 = [(PSUsageBundleDetailController *)v13 tableView:v14 editingStyleForRowAtIndexPath:v15];

LABEL_11:
  return v16;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v8 = [(STStorageAppDetailController *)self specifierAtIndexPath:v7];
    v9 = v8;
    if (self->_usageDetailController)
    {
      v10 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v8];
      if (v10)
      {
        usageDetailController = self->_usageDetailController;
        if (objc_opt_respondsToSelector())
        {
          v12 = self->_usageDetailController;
          v13 = [(PSUsageBundleDetailController *)v12 table];
          [(PSUsageBundleDetailController *)v12 tableView:v13 commitEditingStyle:a4 forRowAtIndexPath:v10];

          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_196B4;
          v19[3] = &unk_2CA38;
          v19[4] = self;
          v20 = v9;
          dispatch_async(&_dispatch_main_q, v19);
        }
      }

      goto LABEL_16;
    }

    if (a4 == 1)
    {
      v14 = [v8 propertyForKey:@"stCacheAsset"];

      if (v14)
      {
        v23 = v9;
        v10 = [NSArray arrayWithObjects:&v23 count:1];
        [(STStorageAppDetailController *)self deleteAssets:v10];
LABEL_16:

        goto LABEL_17;
      }

      v15 = [v9 propertyForKey:STStorageItemURLKey];

      if (v15)
      {
        v22 = v9;
        v10 = [NSArray arrayWithObjects:&v22 count:1];
        [(STStorageAppDetailController *)self deleteURLItems:v10];
        goto LABEL_16;
      }

      v16 = [v9 propertyForKey:UsageMediaKindKey];

      if (v16)
      {
        v21 = v9;
        v17 = [NSArray arrayWithObjects:&v21 count:1];
LABEL_15:
        v10 = v17;
        [(STStorageAppDetailController *)self deleteMediaItems:v17];
        goto LABEL_16;
      }

      v18 = [v9 propertyForKey:@"_stMediaSpecifiers"];

      if (v18)
      {
        v17 = [v9 propertyForKey:@"_stMediaSpecifiers"];
        goto LABEL_15;
      }
    }

LABEL_17:
  }
}

- (id)editButton
{
  v2 = [(PSSpecifier *)self->_docsGroup propertyForKey:PSHeaderViewKey];
  v3 = [v2 headerButton];

  return v3;
}

- (void)setEditable:(BOOL)a3
{
  if (self->_editable != a3)
  {
    self->_editable = a3;
    v6 = [(PSSpecifier *)self->_docsGroup propertyForKey:PSHeaderViewKey];
    if (self->_editable)
    {
      v4 = @"DONE";
    }

    else
    {
      v4 = @"EDIT";
    }

    v5 = STStorageLocStr(v4);
    [v6 setHeaderButtonTitle:v5];

    [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__table] setEditing:self->_editable animated:1];
  }
}

- (void)suspend
{
  v3.receiver = self;
  v3.super_class = STStorageAppDetailController;
  [(STStorageAppDetailController *)&v3 suspend];
  [(STStorageAppDetailController *)self setEditable:0];
}

- (void)didLock
{
  v3.receiver = self;
  v3.super_class = STStorageAppDetailController;
  [(STStorageAppDetailController *)&v3 didLock];
  [(STStorageAppDetailController *)self setEditable:0];
}

@end
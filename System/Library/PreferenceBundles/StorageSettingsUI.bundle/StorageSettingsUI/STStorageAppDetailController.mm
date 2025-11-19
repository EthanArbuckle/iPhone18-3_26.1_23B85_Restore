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
  v9.receiver = self;
  v9.super_class = STStorageAppDetailController;
  [(STStorageAppDetailController *)&v9 viewDidLoad];
  v3 = [(STStorageDetailViewController *)self storageApp];
  v4 = [v3 name];
  v5 = [(STStorageAppDetailController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = [(STStorageAppDetailController *)self navigationItem];
  [v6 setRightBarButtonItems:&__NSArray0__struct];

  v7 = [(STStorageAppDetailController *)self table];
  [v7 setAllowsSelectionDuringEditing:1];

  v8 = [(STStorageAppDetailController *)self table];
  [v8 setAllowsMultipleSelectionDuringEditing:0];
}

- (id)appSizeString:(id)a3
{
  v4 = [(STStorageDetailViewController *)self storageApp];
  if (!v4 || (v5 = v4, -[STStorageDetailViewController storageApp](self, "storageApp"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isDemoted], v6, v5, v7))
  {
    *(&self->_childAppsGroup + 4) = 0;
LABEL_4:
    v8 = &stru_AD3C8;
    goto LABEL_5;
  }

  v10 = [(STStorageDetailViewController *)self storageApp];
  v11 = [v10 externalSizes];
  *(&self->_childAppsGroup + 4) = [v11 fixed];

  if (!*(&self->_childAppsGroup + 4))
  {
    goto LABEL_4;
  }

  v8 = STFormattedSize();
LABEL_5:

  return v8;
}

- (id)dataSizeString:(id)a3
{
  v4 = [(STStorageDetailViewController *)self storageApp];

  if (v4)
  {
    v5 = [(STStorageDetailViewController *)self storageApp];
    v6 = [v5 externalSizes];

    v7 = [(STStorageDetailViewController *)self storageApp];
    if ([v7 isDemoted])
    {
      v8 = [v6 userTotal];
    }

    else
    {
      v8 = [v6 docsAndData];
    }

    *(&self->_appSize + 4) = v8;

    if (*(&self->_appSize + 4) >= 1)
    {
      v9 = STFormattedSize();
      goto LABEL_9;
    }
  }

  else
  {
    *(&self->_appSize + 4) = 0;
  }

  v9 = &stru_AD3C8;
LABEL_9:

  return v9;
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
  v3[2] = sub_59F8;
  v3[3] = &unk_AA6B0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)deleteApp
{
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v3 = [(STStorageDetailViewController *)self storageApp];
    if ([v3 isDeletable])
    {
      BYTE4(self->_localTip) = 1;
      [(STStorageAppDetailController *)self setUIState:6];
      v8 = [v3 name];
      STLog();

      v13 = NSLocalizedDescriptionKey;
      v14 = @"Canceling existing install coord because user has requested delete";
      v4 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1, v8];
      v5 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v4];

      v6 = [v3 bundleIdentifier];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_5C1C;
      v9[3] = &unk_AA700;
      v10 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v6];
      v11 = v3;
      v12 = self;
      v7 = v10;
      [IXAppInstallCoordinator cancelCoordinatorForAppWithIdentity:v7 withReason:v5 client:26 completion:v9];
    }
  }
}

- (void)demoteApp
{
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
  {
    v3 = [(STStorageDetailViewController *)self storageApp];
    if ([v3 isDemotable])
    {
      v4 = [v3 appRecord];
      v5 = [v4 applicationState];
      v6 = [v5 isValid];

      if (v6)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_8031C(v3);
        }

        v17 = NSLocalizedDescriptionKey;
        v18 = @"Canceling existing install coord because user has requested offload";
        v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v8 = [NSError errorWithDomain:@"com.apple.settings.storage" code:0 userInfo:v7];

        v9 = [v3 bundleIdentifier];
        v10 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v9];
        v16 = 0;
        v11 = [IXAppInstallCoordinator cancelCoordinatorForAppWithIdentity:v10 withReason:v8 client:19 error:&v16];
        v12 = v16;
        if (v11)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_803A4();
          }
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_60C0;
        v13[3] = &unk_AA728;
        v14 = v3;
        v15 = self;
        [IXAppInstallCoordinator demoteAppToPlaceholderWithApplicationIdentity:v10 forReason:2 waitForDeletion:1 ignoreRemovability:0 completion:v13];
      }
    }
  }
}

- (void)confirmDemoteApp
{
  v3 = STLocalizedString(@"Offloading “%@” will delete the app but keep its documents and data.");
  v4 = [(STStorageDetailViewController *)self storageApp];
  v5 = [v4 name];
  v15 = [NSString stringWithFormat:v3, v5];

  v6 = objc_alloc_init(PSConfirmationSpecifier);
  v7 = STLocalizedString(@"Offload App");
  v8 = PSConfirmationOKKey;
  v9 = STLocalizedString(@"Cancel");
  v10 = PSConfirmationCancelKey;
  v11 = PSConfirmationPromptKey;
  v12 = STLocalizedString(@"Offload App");
  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v7, v8, v9, v10, v15, v11, v12, PSConfirmationTitleKey, 0];
  [v6 setupWithDictionary:v13];

  v14 = [NSNumber numberWithBool:0];
  [v6 setProperty:v14 forKey:PSConfirmationDestructiveKey];

  objc_storeWeak(&v6[OBJC_IVAR___PSSpecifier_target], self);
  [v6 setConfirmationAction:"demoteApp"];
  [(STStorageAppDetailController *)self showConfirmationViewForSpecifier:v6];
}

- (void)reinstallApp
{
  v3 = [(STStorageDetailViewController *)self storageApp];
  v4 = [v3 bundleIdentifier];
  v5 = [(STStorageDetailViewController *)self storageApp];
  v6 = [v5 state];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_6630;
  v16[3] = &unk_AA750;
  v16[4] = self;
  v18 = v6;
  v7 = v3;
  v17 = v7;
  v8 = objc_retainBlock(v16);
  if ([v7 isDeleted])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_80478(v7);
    }

    BYTE4(self->_localTip) = 1;
    [(STStorageAppDetailController *)self setUIState:2];
    v9 = [[ASDSystemAppMetadata alloc] initWithBundleID:v4];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_670C;
    v14[3] = &unk_AA778;
    v15 = v8;
    [ASDInstallApps installApp:v9 withCompletionHandler:v14];

LABEL_9:
    goto LABEL_10;
  }

  if ([v7 isDemoted])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_80478(v7);
    }

    BYTE4(self->_localTip) = 1;
    [(STStorageAppDetailController *)self setUIState:2];
    v10 = [ASDRestoreDemotedApplicationsRequest alloc];
    v11 = [ASDRestoreDemotedApplicationsRequestOptions alloc];
    v19 = v4;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v13 = [v11 initWithBundleIDs:v12];
    v9 = [v10 initWithOptions:v13];

    [v9 startWithCompletionBlock:v8];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)showAlertForFailedInstallation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6794;
  block[3] = &unk_AA628;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)fileProviderTips
{
  v3 = [(STStorageDetailViewController *)self storageApp];
  v4 = [v3 fpDomain];

  if (![v4 supportsEnumeration] || (objc_msgSend(v4, "providerID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", localFilesProviderID), v5, !v6))
  {
    v13 = &__NSArray0__struct;
    goto LABEL_14;
  }

  v7 = *(&self->_quotaTip + 4);
  if (!v7)
  {
    v8 = STStorageDeviceKey();
    v9 = STLocalizedString(@"On My Device");
    v10 = STLocalizedString(@"Review document files taking the most space and consider deleting them. These items are stored only on your device and will be permanently deleted.");
    if ([v8 isEqualToString:@"PHONE"])
    {
      v11 = STLocalizedString(@"On My iPhone");
      v12 = @"Review document files taking the most space and consider deleting them. These items are stored only on your iPhone and will be permanently deleted.";
    }

    else if ([v8 isEqualToString:@"PAD"])
    {
      v11 = STLocalizedString(@"On My iPad");
      v12 = @"Review document files taking the most space and consider deleting them. These items are stored only on your iPad and will be permanently deleted.";
    }

    else
    {
      if (![v8 isEqualToString:@"IPOD"])
      {
LABEL_12:
        v15 = objc_alloc_init(STStorageActionTip);
        v16 = *(&self->_quotaTip + 4);
        *(&self->_quotaTip + 4) = v15;

        v17 = [v4 identifier];
        v18 = [v17 stringByAppendingString:@"_local"];
        [*(&self->_quotaTip + 4) setIdentifier:v18];

        [*(&self->_quotaTip + 4) setTitle:v9];
        [*(&self->_quotaTip + 4) setInfoText:v10];
        v19 = [(STStorageDetailViewController *)self storageApp];
        v20 = [v19 appIdentifier];
        [*(&self->_quotaTip + 4) setRepresentedApp:v20];

        [*(&self->_quotaTip + 4) setDetailControllerClass:NSClassFromString(@"STStorageLocalStorageController")];
        v21 = *(&self->_quotaTip + 4);
        v22 = [(STStorageDetailViewController *)self storageApp];
        [v21 setProperty:v22 forKey:STStorageAppKey];

        [*(&self->_quotaTip + 4) setProperty:v4 forKey:@"_stFPDomain"];
        v7 = *(&self->_quotaTip + 4);
        goto LABEL_13;
      }

      v11 = STLocalizedString(@"On My iPod touch");
      v12 = @"Review document files taking the most space and consider deleting them. These items are stored only on your iPod touch and will be permanently deleted.";
    }

    v14 = STLocalizedString(v12);

    v9 = v11;
    v10 = v14;
    goto LABEL_12;
  }

LABEL_13:
  v24 = v7;
  v13 = [NSArray arrayWithObjects:&v24 count:1];
LABEL_14:

  return v13;
}

- (id)hlsSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = [(STStorageDetailViewController *)self storageApp];
  v6 = [v5 bundleIdentifier];

  if ([v6 length])
  {
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_703C;
    v41 = &unk_AA7A0;
    v42 = v3;
    v43 = v4;
    CacheManagementEnumerateAssets();
  }

  v7 = [v3 count];
  v8 = &v7[[v4 count]];
  v9 = [NSMutableArray arrayWithCapacity:v8 + 2];
  if (v8)
  {
    v29 = v6;
    v10 = STLocalizedString(@"Downloaded Videos");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v9 addObject:v11];
    if ([v4 count])
    {
      [v4 sortUsingComparator:&stru_AA7E0];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v4;
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [STStorageCacheAssetCell specifierForAsset:*(*(&v34 + 1) + 8 * i)];
            [v9 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
        }

        while (v14);
      }
    }

    if ([v3 count])
    {
      [v3 sortUsingComparator:&stru_AA800];
      if ([v4 count])
      {
        v18 = +[PSSpecifier emptyGroupSpecifier];

        [v9 addObject:v18];
        v27 = v18;
      }

      else
      {
        v27 = v11;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = v3;
      v19 = v3;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [STStorageCacheAssetCell specifierForAsset:*(*(&v30 + 1) + 8 * j)];
            [v24 setProperty:&__kCFBooleanTrue forKey:@"_hideSize"];
            [v9 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v30 objects:v44 count:16];
        }

        while (v21);
      }

      v11 = v27;
      v3 = v28;
    }

    v25 = STLocalizedString(@"Content from this app may be automatically deleted when this device is running low on storage.");
    [v11 setProperty:v25 forKey:PSFooterTextGroupKey];

    v6 = v29;
  }

  return v9;
}

- (void)updateHLSSpecs
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7328;
  block[3] = &unk_AA628;
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
      v25 = sub_76BC;
      v26 = sub_76CC;
      v27 = 0;
      v8 = [QLThumbnailGenerationRequest alloc];
      ScreenScale();
      v10 = [v8 initWithFileAtURL:v3 size:4 scale:29.0 representationTypes:{29.0, v9}];
      v11 = +[QLThumbnailGenerator sharedGenerator];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_76D4;
      v19 = &unk_AA828;
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
  v59 = STStorageDeviceKey();
  v3 = STLocalizedString(@"This will reinstall the app and place back all the app data and documents that are still present on this device.");
  v4 = STLocalizedString(@"This will reinstall the Health app and allow you to view and manage all of the Health data and documents on this device.");
  v5 = STLocalizedString(@"This will delete all remaining data and documents for this app from this device. This action can’t be undone.");
  v6 = STLocalizedString(@"This will delete the app clip and all related data from this device. This action can’t be undone.");
  v58 = STLocalizedString(@"This will delete all remaining data and documents for this app from this device. This action can’t be undone.");
  if ([v59 isEqualToString:@"PHONE"])
  {
    v7 = v6;
    v8 = @"This will delete all remaining data and documents for this app from this iPhone. This action can’t be undone.";
    v9 = @"This will delete the app clip and all related data from this iPhone. This action can’t be undone.";
    v10 = @"This will delete the app and all related data from this iPhone. This action can’t be undone.";
    v11 = @"This will reinstall the Health app and allow you to view and manage all of the Health data and documents on this iPhone.";
    v12 = @"This will reinstall the app and place back all the app data and documents that are still present on this iPhone.";
LABEL_7:
    v13 = STLocalizedString(v12);

    v14 = STLocalizedString(v11);

    v15 = STLocalizedString(v10);

    v16 = STLocalizedString(v9);

    v17 = STLocalizedString(v8);

    v56 = v15;
    v57 = v14;
    v55 = v16;
    v58 = v17;
    v18 = v13;
    goto LABEL_8;
  }

  if ([v59 isEqualToString:@"PAD"])
  {
    v7 = v6;
    v8 = @"This will delete all remaining data and documents for this app from this iPad. This action can’t be undone.";
    v9 = @"This will delete the app clip and all related data from this iPad. This action can’t be undone.";
    v10 = @"This will delete the app and all related data from this iPad. This action can’t be undone.";
    v11 = @"This will reinstall the Health app and allow you to view and manage all of the Health data and documents on this iPad.";
    v12 = @"This will reinstall the app and place back all the app data and documents that are still present on this iPad.";
    goto LABEL_7;
  }

  if ([v59 isEqualToString:@"IPOD"])
  {
    v7 = v6;
    v8 = @"This will delete all remaining data and documents for this app from this iPod touch. This action can’t be undone.";
    v9 = @"This will delete the app clip and all related data from this iPod touch. This action can’t be undone.";
    v10 = @"This will delete the app and all related data from this iPod touch. This action can’t be undone.";
    v11 = @"This will reinstall the Health app and allow you to view and manage all of the Health data and documents on this device.";
    v12 = @"This will reinstall the app and place back all the app data and documents that are still present on this iPod touch.";
    goto LABEL_7;
  }

  v56 = v5;
  v57 = v4;
  v18 = v3;
  v55 = v6;
LABEL_8:
  v19 = [(STStorageAppDetailController *)self spinnerSpecifier];
  v20 = *(&self->_deleteClipGroupSpec + 4);
  *(&self->_deleteClipGroupSpec + 4) = v19;

  v21 = STLocalizedString(@"Offload App");
  v22 = [PSSpecifier deleteButtonSpecifierWithName:v21 target:self action:"confirmDemoteApp"];
  v23 = *(&self->_hlsSpecs + 4);
  *(&self->_hlsSpecs + 4) = v22;

  v24 = STLocalizedString(@"Reinstall App");
  v25 = [PSSpecifier deleteButtonSpecifierWithName:v24 target:self action:"reinstallApp"];
  v26 = *(&self->_demoteGroupSpec + 4);
  *(&self->_demoteGroupSpec + 4) = v25;

  v27 = STLocalizedString(@"Reinstall Health App");
  v28 = [PSSpecifier deleteButtonSpecifierWithName:v27 target:self action:"reinstallApp"];
  v29 = *(&self->_installGroupSpec + 4);
  *(&self->_installGroupSpec + 4) = v28;

  v30 = STLocalizedString(@"Delete App");
  v31 = [PSSpecifier deleteButtonSpecifierWithName:v30 target:self action:"deleteApp"];
  v32 = *(&self->_installHealthGroupSpec + 4);
  *(&self->_installHealthGroupSpec + 4) = v31;

  v33 = STLocalizedString(@"Delete Data");
  v34 = [PSSpecifier deleteButtonSpecifierWithName:v33 target:self action:"deleteApp"];
  v35 = *(&self->_deleteGroupSpec + 4);
  *(&self->_deleteGroupSpec + 4) = v34;

  v36 = STLocalizedString(@"Delete App Clip");
  v37 = [PSSpecifier deleteButtonSpecifierWithName:v36 target:self action:"deleteApp"];
  v38 = *(&self->_deleteDataGroupSpec + 4);
  *(&self->_deleteDataGroupSpec + 4) = v37;

  v39 = +[PSSpecifier emptyGroupSpecifier];
  v40 = *(&self->_demoteSpec + 4);
  *(&self->_demoteSpec + 4) = v39;

  v41 = *(&self->_demoteSpec + 4);
  v42 = STLocalizedString(@"This will free up storage used by the app, but keep its documents and data. Reinstalling the app will place back your data if the app is still available for download.");
  v43 = PSFooterTextGroupKey;
  [v41 setProperty:v42 forKey:PSFooterTextGroupKey];

  v44 = +[PSSpecifier emptyGroupSpecifier];
  v45 = *(&self->_installSpec + 4);
  *(&self->_installSpec + 4) = v44;

  [*(&self->_installSpec + 4) setProperty:v18 forKey:v43];
  v46 = +[PSSpecifier emptyGroupSpecifier];
  v47 = *(&self->_installHealthSpec + 4);
  *(&self->_installHealthSpec + 4) = v46;

  [*(&self->_installHealthSpec + 4) setProperty:v57 forKey:v43];
  v48 = +[PSSpecifier emptyGroupSpecifier];
  v49 = *(&self->_deleteSpec + 4);
  *(&self->_deleteSpec + 4) = v48;

  [*(&self->_deleteSpec + 4) setProperty:v56 forKey:v43];
  v50 = +[PSSpecifier emptyGroupSpecifier];
  v51 = *(&self->_deleteClipSpec + 4);
  *(&self->_deleteClipSpec + 4) = v50;

  [*(&self->_deleteClipSpec + 4) setProperty:v55 forKey:v43];
  v52 = +[PSSpecifier emptyGroupSpecifier];
  v53 = *(&self->_deleteDataSpec + 4);
  *(&self->_deleteDataSpec + 4) = v52;

  [*(&self->_deleteDataSpec + 4) setProperty:v58 forKey:v43];
  v54 = +[UIColor systemBlueColor];
  [*(&self->_demoteGroupSpec + 4) setProperty:v54 forKey:@"buttonColor"];
  [*(&self->_installGroupSpec + 4) setProperty:v54 forKey:@"buttonColor"];
  [*(&self->_hlsSpecs + 4) setProperty:v54 forKey:@"buttonColor"];
  [*(&self->_hlsSpecs + 4) setTarget:self];
  [*(&self->_demoteGroupSpec + 4) setTarget:self];
  [*(&self->_installGroupSpec + 4) setTarget:self];
  [*(&self->_installHealthGroupSpec + 4) setTarget:self];
  [*(&self->_deleteDataGroupSpec + 4) setTarget:self];
  [*(&self->_deleteGroupSpec + 4) setTarget:self];
}

- (BOOL)removeAllowed
{
  v2 = [(STStorageDetailViewController *)self storageApp];
  v3 = [v2 appRecord];

  if (v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_7F1C;
    v8[3] = &unk_AA850;
    v10 = &v11;
    v4 = dispatch_semaphore_create(0);
    v9 = v4;
    [_TtC17StorageSettingsUI15AppRemovability isAllowedAndPossibleWithApp:v3 completionHandler:v8];
    v5 = dispatch_walltime(0, 5000000000);
    dispatch_semaphore_wait(v4, v5);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)specifiers
{
  v2 = self;
  v3 = *&self->super.PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v197 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    v6 = objc_opt_class();
    v7 = PSCellClassKey;
    [v5 setProperty:v6 forKey:PSCellClassKey];
    v8 = [(STStorageDetailViewController *)v2 storageApp];
    v9 = STStorageAppKey;
    [v5 setProperty:v8 forKey:STStorageAppKey];

    if (v5)
    {
      [v4 addObject:v5];
    }

    v10 = [(STStorageDetailViewController *)v2 storageApp];
    if ([v10 isDemoted])
    {
      v196 = 0;
    }

    else
    {
      v11 = [(STStorageDetailViewController *)v2 storageApp];
      v12 = [v11 externalSizes];
      v13 = [v12 fixed];

      if (!v13)
      {
        v196 = 0;
        goto LABEL_11;
      }

      v10 = STLocalizedString(@"App Size");
      v14 = [(STStorageDetailViewController *)v2 storageApp];
      v15 = [v14 isAppClip];

      if (v15)
      {
        v16 = STLocalizedString(@"App Clip Size");

        v10 = v16;
      }

      v17 = [PSSpecifier preferenceSpecifierNamed:v10 target:v2 set:0 get:"appSizeString:" detail:0 cell:4 edit:0];

      [v17 setProperty:objc_opt_class() forKey:v7];
      v18 = [(STStorageDetailViewController *)v2 storageApp];
      [v17 setProperty:v18 forKey:v9];

      [v4 addObject:v17];
      v5 = v17;
      v196 = v5;
    }

LABEL_11:
    v19 = STLocalizedString(@"Documents & Data");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v2 set:0 get:"dataSizeString:" detail:0 cell:4 edit:0];

    [v20 setProperty:objc_opt_class() forKey:v7];
    v21 = [(STStorageDetailViewController *)v2 storageApp];
    [v20 setProperty:v21 forKey:v9];

    [v4 addObject:v20];
    v22 = [(STStorageDetailViewController *)v2 storageApp];
    v23 = [v22 bundleIdentifier];

    v200 = v20;
    v203 = v2;
    if (![(STStorageAppDetailController *)v2 removeAllowed])
    {
      goto LABEL_77;
    }

    v24 = [(STStorageDetailViewController *)v2 storageApp];
    v25 = [v24 isDeletable];

    v26 = [(STStorageDetailViewController *)v2 storageApp];
    v27 = [v26 isDemotable];

    v28 = [(STStorageDetailViewController *)v2 storageApp];
    v29 = [v28 isAppClip];

    if ((v27 & 1) == 0 && !v25)
    {
      goto LABEL_77;
    }

    [(STStorageAppDetailController *)v2 setupSpecifiers];
    if (!v27)
    {
      v31 = 0;
      if (!v25)
      {
        goto LABEL_74;
      }

      goto LABEL_45;
    }

    v30 = *(&v2->_demoteSpec + 4);
    v31 = 0;
    uiState = v2->_uiState;
    if (uiState <= 3)
    {
      if (uiState <= 1)
      {
        if (uiState)
        {
          if (uiState != 1)
          {
            goto LABEL_44;
          }

          v31 = 1;
          goto LABEL_30;
        }

LABEL_41:
        v34 = &OBJC_IVAR___STStorageAppDetailController__demoteSpec;
LABEL_42:
        v37 = *&v2->super.PSEditableListController_opaque[*v34];
        if (v37)
        {
          v38 = v37;
          [v4 addObject:v30];
          [v4 addObject:v38];
        }

LABEL_44:

        if (!v25)
        {
LABEL_74:
          v50 = &__kCFBooleanTrue;
          if (v31)
          {
            v50 = &__kCFBooleanFalse;
          }

          v51 = *(&v2->_hlsSpecs + 4);
          v52 = PSEnabledKey;
          v53 = v50;
          [v51 setProperty:v53 forKey:v52];
          [*(&v2->_demoteGroupSpec + 4) setProperty:v53 forKey:v52];
          [*(&v2->_installHealthGroupSpec + 4) setProperty:v53 forKey:v52];
          [*(&v2->_deleteDataGroupSpec + 4) setProperty:v53 forKey:v52];
          [*(&v2->_deleteGroupSpec + 4) setProperty:v53 forKey:v52];

LABEL_77:
          obj = v9;
          v54 = +[StorageSettingsWrapper recommendationsShared];
          v55 = [(STStorageDetailViewController *)v2 storageApp];
          v56 = [v55 bundleIdentifier];
          if ([v56 isEqualToString:comAppleTV])
          {
            v57 = 0;
          }

          else
          {
            v58 = [(STStorageDetailViewController *)v2 storageApp];
            v57 = [v54 tipsForApp:v58];
          }

          v202 = [(STStorageAppDetailController *)v2 fileProviderTips];
          v198 = v23;
          v199 = v54;
          v201 = v57;
          if ([v57 count] || objc_msgSend(v202, "count"))
          {
            v59 = [NSValue valueWithPointer:v2];
            v60 = STLocalizedString(@"Recommendations");
            v61 = [PSSpecifier preferenceSpecifierNamed:v60 target:0 set:0 get:0 detail:0 cell:0 edit:0];
            [v4 addObject:v61];

            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v62 = v57;
            v63 = [v62 countByEnumeratingWithState:&v228 objects:v237 count:16];
            if (v63)
            {
              v64 = v63;
              v65 = 0;
              v66 = *v229;
              do
              {
                v67 = 0;
                v204 = v65;
                v68 = -v65;
                do
                {
                  if (*v229 != v66)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v69 = *(*(&v228 + 1) + 8 * v67);
                  if (v68 != v67)
                  {
                    v70 = +[PSSpecifier emptyGroupSpecifier];
                    [v4 addObject:v70];
                  }

                  v71 = [v69 specifier];
                  [v4 addObject:v71];

                  v72 = [v69 infoSpecifier];
                  [v4 addObject:v72];

                  [v69 setProperty:v59 forKey:@"_stController"];
                  v67 = v67 + 1;
                }

                while (v64 != v67);
                v65 = v204 + v64;
                v64 = [v62 countByEnumeratingWithState:&v228 objects:v237 count:16];
              }

              while (v64);
            }

            else
            {
              v65 = 0;
            }

            v226 = 0u;
            v227 = 0u;
            v224 = 0u;
            v225 = 0u;
            v73 = v202;
            v74 = [v73 countByEnumeratingWithState:&v224 objects:v236 count:16];
            if (v74)
            {
              v75 = v74;
              v76 = *v225;
              do
              {
                v77 = 0;
                v205 = v65;
                v78 = -v65;
                do
                {
                  if (*v225 != v76)
                  {
                    objc_enumerationMutation(v73);
                  }

                  v79 = *(*(&v224 + 1) + 8 * v77);
                  if (v78 != v77)
                  {
                    v80 = +[PSSpecifier emptyGroupSpecifier];
                    [v4 addObject:v80];
                  }

                  v81 = [v79 specifier];
                  [v4 addObject:v81];

                  v82 = [v79 infoSpecifier];
                  [v4 addObject:v82];

                  [v79 setProperty:v59 forKey:@"_stController"];
                  v77 = v77 + 1;
                }

                while (v75 != v77);
                v65 = v205 + v75;
                v75 = [v73 countByEnumeratingWithState:&v224 objects:v236 count:16];
              }

              while (v75);
            }

            v2 = v203;
            v23 = v198;
            v54 = v199;
            v57 = v201;
          }

          v194 = [v4 count];
          v83 = [(STStorageDetailViewController *)v2 storageApp];
          v84 = [v54 docPluginsForApp:v83];

          v85 = [(STStorageDetailViewController *)v2 storageApp];
          v86 = [v85 childApps];

          v206 = v84;
          v195 = v86;
          if ([v86 count])
          {
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v87 = v86;
            v88 = [v87 countByEnumeratingWithState:&v220 objects:v235 count:16];
            if (v88)
            {
              v89 = v88;
              v90 = 0;
              v91 = *v221;
              do
              {
                for (i = 0; i != v89; ++i)
                {
                  if (*v221 != v91)
                  {
                    objc_enumerationMutation(v87);
                  }

                  v93 = [STStorageAppCell specifierForChildApp:*(*(&v220 + 1) + 8 * i)];
                  [v4 addObject:v93];
                }

                v90 = &v89[v90];
                v89 = [v87 countByEnumeratingWithState:&v220 objects:v235 count:16];
              }

              while (v89);
            }

            else
            {
              v90 = 0;
            }

            v104 = STLocalizedString(@"Applications");
            v105 = 0;
            v106 = v200;
            v107 = v200;
            v2 = v203;
            goto LABEL_131;
          }

          if ([v84 count])
          {
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v94 = v84;
            v95 = [v94 countByEnumeratingWithState:&v216 objects:v234 count:16];
            if (v95)
            {
              v96 = v95;
              v90 = 0;
              v97 = *v217;
              do
              {
                for (j = 0; j != v96; j = j + 1)
                {
                  if (*v217 != v97)
                  {
                    objc_enumerationMutation(v94);
                  }

                  v99 = *(*(&v216 + 1) + 8 * j);
                  v100 = [(STStorageDetailViewController *)v2 storageApp];
                  v101 = [v100 appIdentifier];
                  v102 = [v99 documentSpecifiersForApp:v101];

                  if ([v102 count])
                  {
                    if (v90)
                    {
                      v103 = +[PSSpecifier emptyGroupSpecifier];
                      [v4 addObject:v103];
                    }

                    ++v90;
                    [v4 addObjectsFromArray:v102];
                  }
                }

                v96 = [v94 countByEnumeratingWithState:&v216 objects:v234 count:16];
              }

              while (v96);
            }

            else
            {
              v90 = 0;
            }

            v104 = STLocalizedString(@"Documents");
            v105 = 0;
            v54 = v199;
            v106 = v200;
            v107 = v200;
            v23 = v198;
            goto LABEL_131;
          }

          if ([v23 isEqualToString:comApplePhotos])
          {
LABEL_128:
            v104 = 0;
            v106 = v200;
LABEL_142:
            v107 = v106;
LABEL_143:

            v115 = v2;
            v116 = *&v2->super.PSEditableListController_opaque[v197];
            *&v115->super.PSEditableListController_opaque[v197] = v4;
            v117 = v4;

            v118 = *(&v115->_docsGroup + 4);
            *(&v115->_docsGroup + 4) = v196;
            v119 = v196;

            v120 = *(&v115->_appSizeSpec + 4);
            *(&v115->_appSizeSpec + 4) = v106;
            v121 = v106;

            v3 = *&v115->super.PSEditableListController_opaque[v197];
            goto LABEL_144;
          }

          v106 = v200;
          if ([v23 isEqualToString:comAppleNews])
          {
            v104 = 0;
            goto LABEL_142;
          }

          v123 = [STMediaCache mediaTypesForIdentifier:v23];

          if (v123)
          {
            v124 = +[STMediaCache sharedCache];
            v125 = [(STStorageDetailViewController *)v203 storageApp];
            v126 = [v124 mediaSpecifiersForApp:v125];

            v127 = [v126 count];
            v105 = v127 != 0;
            if (v127)
            {
              v106 = v200;
              if ([v126 count] >= 2 && objc_msgSend(v23, "isEqualToString:", comApplePodcasts))
              {
                +[STMediaCache sharedCache];
                v128 = v188 = v105;
                v129 = [(STStorageDetailViewController *)v203 storageApp];
                v130 = [v128 totalSizeForApp:v129];

                v131 = STLocalizedString(@"All Episodes");
                v132 = [PSSpecifier preferenceSpecifierNamed:v131 target:v203 set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

                v133 = [NSNumber numberWithLongLong:v130];
                [v132 setProperty:v133 forKey:PSValueKey];

                [v132 setProperty:v126 forKey:@"_stMediaSpecifiers"];
                [v4 addObject:v132];
                v134 = STLocalizedString(@"Shows");
                v135 = [PSSpecifier groupSpecifierWithName:v134];
                [v4 addObject:v135];

                v106 = v200;
                v105 = v188;
              }

              v90 = [v126 count];
              [v4 addObjectsFromArray:v126];
            }

            else
            {
              v90 = 0;
              v106 = v200;
            }

            v2 = v203;
            if ([v23 isEqualToString:comApplePodcasts])
            {
              v146 = @"Podcasts";
            }

            else if ([v23 isEqualToString:PSBundleIdentifieriBooks])
            {
              v146 = @"Books";
            }

            else
            {
              if (![v23 isEqualToString:PSBundleIdentifierTV])
              {
                v104 = 0;
                goto LABEL_179;
              }

              v146 = @"TV Shows";
            }

            v104 = STLocalizedString(v146);
LABEL_179:

            v107 = v106;
            goto LABEL_131;
          }

          v2 = v203;
          v136 = [(STStorageDetailViewController *)v203 storageApp];
          v137 = [v136 isUsageApp];

          v138 = [(STStorageDetailViewController *)v203 storageApp];
          v139 = v138;
          if (!v137)
          {
            v147 = [v138 isDocumentApp];

            if (v147)
            {
              v148 = [(STStorageDetailViewController *)v203 storageApp];
              v149 = [v148 documents];

              v150 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v149 count]);
              v207 = 0u;
              v208 = 0u;
              v209 = 0u;
              v210 = 0u;
              v151 = v149;
              v152 = [v151 countByEnumeratingWithState:&v207 objects:v232 count:16];
              v107 = v200;
              if (v152)
              {
                v153 = v152;
                v154 = *v208;
                v107 = v200;
                do
                {
                  v155 = 0;
                  v156 = v107;
                  do
                  {
                    if (*v208 != v154)
                    {
                      objc_enumerationMutation(v151);
                    }

                    v107 = [(STStorageAppDetailController *)v203 specifierForDocument:*(*(&v207 + 1) + 8 * v155)];

                    if (v107)
                    {
                      [v150 addObject:v107];
                    }

                    v155 = v155 + 1;
                    v156 = v107;
                  }

                  while (v153 != v155);
                  v153 = [v151 countByEnumeratingWithState:&v207 objects:v232 count:16];
                }

                while (v153);
              }

              v157 = [v150 count];
              v105 = v157 != 0;
              if (v157)
              {
                v90 = [v150 count];
                [v4 addObjectsFromArray:v150];
              }

              else
              {
                v90 = 0;
              }

              v104 = STLocalizedString(@"Documents");

              v2 = v203;
              v54 = v199;
              v106 = v200;
              goto LABEL_131;
            }

            v158 = *(&v203->_skipTimer + 4);
            if (!v158)
            {
              v183 = +[PSSpecifier emptyGroupSpecifier];
              [v4 addObject:v183];

              v184 = [(STStorageAppDetailController *)v203 spinnerSpecifier];
              [v4 addObject:v184];

              [(STStorageAppDetailController *)v203 updateHLSSpecs];
              v104 = 0;
              v107 = v200;
              v106 = v200;
              goto LABEL_143;
            }

            if (![v158 count])
            {
              v104 = 0;
              v106 = v200;
              v107 = v200;
              v2 = v203;
              goto LABEL_143;
            }

            v2 = v203;
            [v4 addObjectsFromArray:*(&v203->_skipTimer + 4)];
            goto LABEL_128;
          }

          v140 = [v138 usageBundle];

          v141 = [v140 usageBundleStorageReporter];
          v142 = objc_opt_class();
          v190 = v141;
          if (objc_opt_respondsToSelector())
          {
            v142 = [v141 usageDetailControllerClassForUsageBundleApp:v140];
          }

          v143 = objc_alloc_init(v142);
          v144 = *(&v203->_uiState + 1);
          *(&v203->_uiState + 1) = v143;

          v145 = [(STStorageAppDetailController *)v203 rootController];
          if (v145)
          {
            [*(&v203->_uiState + 1) setRootController:v145];
          }

          else
          {
            v159 = [(STStorageAppDetailController *)v203 navigationController];
            [*(&v203->_uiState + 1) setRootController:v159];

            v106 = v200;
          }

          [*(&v203->_uiState + 1) setParentController:v203];
          v107 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:v142 cell:1 edit:0];

          [v107 setProperty:v140 forKey:PSUsageBundleAppKey];
          v160 = [(STStorageDetailViewController *)v203 storageApp];
          [v107 setProperty:v160 forKey:obj];

          v161 = [(STStorageDetailViewController *)v203 storageApp];
          [v107 setProperty:v161 forKey:@"USAGE_APP"];

          [*(&v203->_uiState + 1) setSpecifier:v107];
          v162 = [(objc_class *)v142 mediaGroups];
          [(objc_class *)v142 setupSpecifier:v107 forMediaGroups:v162];

          v163 = v140;
          v187 = v140;
          if (objc_opt_respondsToSelector())
          {
            objb = [(STStorageDetailViewController *)v203 storageApp];
            v164 = [objb usageBundle];
            v215 = v107;
            [v190 usageBundleApp:v164 willDisplaySpecifier:&v215];
            v165 = v215;

            v107 = v165;
          }

          [*(&v203->_uiState + 1) viewDidLoad];
          [(STStorageAppDetailController *)v203 addChildViewController:*(&v203->_uiState + 1)];
          v166 = [*(&v203->_uiState + 1) specifiers];
          v167 = [v166 mutableCopy];

          v186 = v167;
          if (![v167 count])
          {
            v90 = 0;
            v173 = v163;
            v104 = 0;
            v105 = 0;
            v174 = v190;
LABEL_206:

            v106 = v200;
LABEL_131:
            if (v90)
            {
              v108 = *(&v2->_usageDetailController + 4);
              v57 = v201;
              if (v108)
              {
                goto LABEL_136;
              }

              if (([v23 isEqualToString:@"com.apple.Health"] & 1) == 0)
              {
                v109 = [PSSpecifier preferenceSpecifierNamed:v104 target:0 set:0 get:0 detail:0 cell:0 edit:0];
                v110 = *(&v2->_usageDetailController + 4);
                *(&v2->_usageDetailController + 4) = v109;
              }

              v108 = *(&v2->_usageDetailController + 4);
              if (v108)
              {
LABEL_136:
                if (v105)
                {
                  [v108 setProperty:@"STStorageButtonHeader" forKey:PSHeaderCellClassGroupKey];
                  v111 = *(&v2->_usageDetailController + 4);
                  STLocalizedString(@"Edit");
                  v113 = v112 = v104;
                  v114 = v111;
                  v106 = v200;
                  [v114 setProperty:v113 forKey:@"stButtonTitle"];

                  v104 = v112;
                  [*(&v2->_usageDetailController + 4) setTarget:v2];
                  [*(&v2->_usageDetailController + 4) setButtonAction:"toggleEdit"];
                  v108 = *(&v2->_usageDetailController + 4);
                }

                [v4 insertObject:v108 atIndex:v194];
              }
            }

            else
            {
              v57 = v201;
            }

            goto LABEL_143;
          }

          v168 = [v167 firstObject];
          v169 = [v168 propertyForKey:PSHeaderCellClassGroupKey];
          v170 = [v169 isEqualToString:@"PSUsageSizeHeader"];

          if (v170)
          {
            [v167 removeObjectAtIndex:0];
          }

          if ([v23 isEqualToString:comAppleMusic])
          {
            v171 = [v167 count];
            if (v171)
            {
              v171 = STLocalizedString(@"Music");
              v172 = 1;
LABEL_196:
              v185 = v171;
              v189 = v172;
              v213 = 0u;
              v214 = 0u;
              v211 = 0u;
              v212 = 0u;
              obja = v167;
              v175 = [obja countByEnumeratingWithState:&v211 objects:v233 count:16];
              if (v175)
              {
                v176 = v175;
                v90 = 0;
                v177 = *v212;
                v178 = 1000;
                do
                {
                  v179 = 0;
                  v180 = v178;
                  do
                  {
                    if (*v212 != v177)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v181 = *(*(&v211 + 1) + 8 * v179);
                    v178 = v180 + 1;
                    v182 = [NSNumber numberWithLong:v180];
                    [v181 setProperty:v182 forKey:@"_stUsageItemID"];

                    [v4 addObject:v181];
                    ++v179;
                    v180 = v178;
                  }

                  while (v176 != v179);
                  v90 = &v176[v90];
                  v176 = [obja countByEnumeratingWithState:&v211 objects:v233 count:16];
                }

                while (v176);
              }

              else
              {
                v90 = 0;
              }

              v2 = v203;
              v23 = v198;
              v54 = v199;
              v105 = v189;
              v173 = v187;
              v174 = v190;
              v104 = v185;
              goto LABEL_206;
            }
          }

          else
          {
            v171 = 0;
          }

          v172 = 0;
          goto LABEL_196;
        }

LABEL_45:
        if (v29)
        {
          v39 = v2;
          v40 = *(&v2->_deleteClipSpec + 4);
          v41 = v2->_uiState - 5;
          if (v41 >= 2)
          {
            v42 = &OBJC_IVAR___STStorageAppDetailController__deleteClipSpec;
          }

          else
          {
            v42 = &OBJC_IVAR___STStorageAppDetailController__spinnerSpec;
          }

          if (v41 < 2)
          {
            v31 = 1;
          }

          goto LABEL_71;
        }

        v40 = *(&v2->_deleteSpec + 4);
        v43 = v2->_uiState;
        v42 = &OBJC_IVAR___STStorageAppDetailController__deleteSpec;
        if (v43 <= 2)
        {
          if (!v43)
          {
            goto LABEL_59;
          }

          if (v43 == 1 || v43 == 2)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v43 <= 4)
          {
            if (v43 != 3)
            {
LABEL_58:
              v31 = 1;
            }

LABEL_59:
            v39 = v203;
LABEL_71:
            v48 = *&v39->super.PSEditableListController_opaque[*v42];
            v2 = v39;
            if (v48)
            {
              v49 = v48;
              [v4 addObject:v40];
              [v4 addObject:v49];
            }

            goto LABEL_73;
          }

          if (v43 == 5)
          {
LABEL_63:
            v39 = v203;
            v44 = [(STStorageDetailViewController *)v203 storageApp];
            v45 = [v44 isDemoted];

            v46 = &OBJC_IVAR___STStorageAppDetailController__spinnerSpec;
            if (v31)
            {
              v47 = &OBJC_IVAR___STStorageAppDetailController__spinnerSpec;
            }

            else
            {
              v47 = &OBJC_IVAR___STStorageAppDetailController__deleteSpec;
            }

            if (!v31)
            {
              v46 = &OBJC_IVAR___STStorageAppDetailController__deleteDataSpec;
            }

            if (v45)
            {
              v42 = v46;
            }

            else
            {
              v42 = v47;
            }

            goto LABEL_71;
          }

          if (v43 == 6)
          {
            v31 = 1;
            goto LABEL_63;
          }
        }

        v2 = v203;
LABEL_73:

        goto LABEL_74;
      }

      if (uiState != 2)
      {
LABEL_30:
        if ([v23 isEqualToString:@"com.apple.Health"])
        {
          v33 = *(&v2->_installHealthSpec + 4);

          v34 = &OBJC_IVAR___STStorageAppDetailController__installHealthSpec;
        }

        else
        {
          v33 = *(&v2->_installSpec + 4);

          v34 = &OBJC_IVAR___STStorageAppDetailController__installSpec;
        }

        if (v31)
        {
          v34 = &OBJC_IVAR___STStorageAppDetailController__spinnerSpec;
        }

        goto LABEL_40;
      }

LABEL_32:
      v31 = 1;
      v34 = &OBJC_IVAR___STStorageAppDetailController__spinnerSpec;
      goto LABEL_42;
    }

    if (uiState > 5)
    {
      if (uiState != 6)
      {
        if (uiState != 7)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      v31 = 1;
    }

    else if (uiState == 4)
    {
      goto LABEL_32;
    }

    v35 = [(STStorageDetailViewController *)v2 storageApp];
    v36 = [v35 isDemoted];

    if (v36)
    {
      v33 = *(&v2->_installSpec + 4);

      v34 = &OBJC_IVAR___STStorageAppDetailController__installSpec;
LABEL_40:
      v30 = v33;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_144:

  return v3;
}

- (void)_syncUI:(id)a3
{
  v4 = [(STStorageDetailViewController *)self storageApp];
  -[STStorageAppDetailController setUIState:](self, "setUIState:", [v4 state]);
}

- (void)syncUI
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9888;
  block[3] = &unk_AA628;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reloadSpecs:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"APPS"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[STStorageDetailViewController storageApp](self, "storageApp"), v6 = objc_claimAutoreleasedReturnValue(), [v6 bundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "containsObject:", v7), v7, v6, v8))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_99F4;
    block[3] = &unk_AA628;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)syncUIState:(id)a3
{
  v4 = a3;
  v5 = [(STStorageDetailViewController *)self storageApp];
  v6 = [v5 appRecord];
  v7 = [v6 bundleIdentifier];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) bundleIdentifier];
        v14 = [v13 isEqualToString:v7];

        if (v14)
        {
          v15 = [(STStorageDetailViewController *)self storageApp];
          [v15 refreshAppState];

          [(STStorageAppDetailController *)self syncUI];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
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
          v13 = sub_9D0C;
          v14 = &unk_AA728;
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
          block[2] = sub_9FE4;
          block[3] = &unk_AA878;
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
    block[2] = sub_A2F4;
    block[3] = &unk_AA8A0;
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
    v7 = [*(&self->_uiState + 1) indexPathForSpecifier:v4];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STStorageAppDetailController *)self specifierAtIndexPath:v7];
  v9 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v8];
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = [(STStorageDetailViewController *)self storageApp];
  v11 = [v10 usageBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.mobilesafari"];

  if ((v13 & 1) == 0)
  {
    v14 = *(&self->_uiState + 1);
    if (objc_opt_respondsToSelector())
    {
      [*(&self->_uiState + 1) tableView:v6 didSelectRowAtIndexPath:v9];
    }
  }

  else
  {
LABEL_3:
    v15.receiver = self;
    v15.super_class = STStorageAppDetailController;
    [(STStorageAppDetailController *)&v15 tableView:v6 didSelectRowAtIndexPath:v7];
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
    v10 = *(&self->_uiState + 1);
    if (objc_opt_respondsToSelector())
    {
      [*(&self->_uiState + 1) tableView:v6 didDeselectRowAtIndexPath:v9];
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
  if (!*(&self->_uiState + 1))
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
  if (!v7 || (v8 = *(&self->_uiState + 1), (objc_opt_respondsToSelector() & 1) == 0))
  {

LABEL_6:
    v11 = 0;
    goto LABEL_12;
  }

  v9 = *(&self->_uiState + 1);
  v10 = [v9 table];
  v11 = [v9 tableView:v10 canEditRowAtIndexPath:v7];

LABEL_12:
  return v11;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(&self->_uiState + 1);
  v9 = [(STStorageAppDetailController *)self specifierAtIndexPath:v7];
  v10 = v9;
  if (!v8)
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
  v12 = *(&self->_uiState + 1);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_10;
  }

  v13 = *(&self->_uiState + 1);
  v14 = [v13 table];
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  v16 = [v13 tableView:v14 editingStyleForRowAtIndexPath:v15];

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
    if (*(&self->_uiState + 1))
    {
      v10 = [(STStorageAppDetailController *)self usageIndexPathForSpecifier:v8];
      if (v10)
      {
        v11 = *(&self->_uiState + 1);
        if (objc_opt_respondsToSelector())
        {
          v12 = *(&self->_uiState + 1);
          v13 = [v12 table];
          [v12 tableView:v13 commitEditingStyle:a4 forRowAtIndexPath:v10];

          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_AC5C;
          v19[3] = &unk_AA650;
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
  v2 = [*(&self->_usageDetailController + 4) propertyForKey:PSHeaderViewKey];
  v3 = [v2 headerButton];

  return v3;
}

- (void)setEditable:(BOOL)a3
{
  v3 = OBJC_IVAR___PSEditableListController__editable;
  if (self->super.PSEditableListController_opaque[OBJC_IVAR___PSEditableListController__editable] != a3)
  {
    self->super.PSEditableListController_opaque[OBJC_IVAR___PSEditableListController__editable] = a3;
    v7 = [*(&self->_usageDetailController + 4) propertyForKey:PSHeaderViewKey];
    v5 = STLocalizedString(@"Edit");
    if (self->super.PSEditableListController_opaque[v3] == 1)
    {
      v6 = STLocalizedString(@"Done");

      v5 = v6;
    }

    [v7 setHeaderButtonTitle:v5];
    [*&self->super.PSEditableListController_opaque[OBJC_IVAR___PSListController__table] setEditing:self->super.PSEditableListController_opaque[v3] animated:1];
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
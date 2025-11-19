@interface SettingsBaseController
+ (id)filterAndConfigureSpecifiers:(id)a3 shownFromAccountSettings:(BOOL)a4 cloudPhotosEnabled:(BOOL)a5 cplKeepOriginals:(BOOL)a6 isCPLInExitMode:(BOOL)a7 cplDaysUntilExit:(int64_t)a8 shouldHideCPL:(BOOL)a9 shouldHideTransferBehaviors:(BOOL)a10 cloudPhotosPaused:(BOOL)a11 canEnableSharedStreams:(BOOL)a12 cplStatus:(id)a13 cplActionPerformer:(id)a14 showPhotosDiagnoseButton:(BOOL)a15 showPhotosRebuildButton:(BOOL)a16 accountModificationAllowed:(BOOL)a17 isOLEDDevice:(BOOL)a18 wantsPhotosAppSpecificSettings:(BOOL)a19 isLocationBeingOverridden:(BOOL)a20 currentAuthenticationType:(int64_t)a21 systemPolicyOptions:(unint64_t)a22 bundleIdentifier:(id)a23 transferBehaviorUserPreference:(int64_t)a24 sharedLibraryInvitationSpecifiers:(id)a25 sharedLibrarySettingsSpecifiers:(id)a26 instanceLogInfo:(id)a27 featureDescriptionCellSupported:(BOOL)a28;
+ (id)lastCPLSpecifierInSpecifiers:(id)a3 shownFromAccountSettings:(BOOL)a4;
+ (void)setPhotoStreamsEnabledFromAccountSettings:(id)a3;
+ (void)setPhotoStreamsEnabledFromBuddyWorkflow:(id)a3;
- (BOOL)_isAppleInternal;
- (BOOL)_isSettingsPaneInLocation:(int64_t)a3;
- (BOOL)_needsChangeForSpecifiers:(id)a3 shouldShow:(BOOL)a4;
- (BOOL)_photoStreamAssetsWillBeDeletedIfTurnedOff;
- (BOOL)_sharedStreamsAssetsWillBeDeletedIfTurnedOff;
- (BOOL)_shouldHideCPL;
- (BOOL)_useInternalDiagnostics;
- (BOOL)_wantsInstalledPhotosAppSpecificOptions;
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (PHPhotoLibrary)systemPhotoLibrary;
- (SettingsBaseController)init;
- (id)_fetchBlockedMemoryFeatures;
- (id)_fetchDeniedSuggestions;
- (id)_fetchMemoriesWithUserFeedback;
- (id)_iCloudPhotosItems:(id)a3;
- (id)_iCloudPhotosStatus:(id)a3;
- (id)_initializeSpecifiers;
- (id)_nonLocalResourceInfo;
- (id)_personID;
- (id)_previousSpecifierIDForSpecifierID:(id)a3;
- (id)_showSpinnerWithText:(id)a3;
- (id)_viewForSpinnerPresentation;
- (id)alchemizeButtonEnabled:(id)a3;
- (id)contentPrivacyEnabled:(id)a3;
- (id)diagnoseServiceConnection;
- (id)featuredContentAllowed:(id)a3;
- (id)highMotionReminderEnabled:(id)a3;
- (id)shouldShowPhotoLibraryInSearch:(id)a3;
- (id)specifiers;
- (id)tapToRadarURL;
- (id)videoAutoplayEnabled:(id)a3;
- (int64_t)_daysUntilExit;
- (int64_t)_settingsDebugOverrideLocation;
- (void)_beginCloudPhotosDisableFlow;
- (void)_cancelDisableCloudPhotos;
- (void)_confirmCloudPhotosDisableWhilePrunedWithNonLocalResourceInfo:(id)a3;
- (void)_confirmCloudPhotosDisableWithNonLocalResourceInfo:(id)a3;
- (void)_confirmCloudPhotosDisableWithSyncInProgress;
- (void)_confirmDeletePrunedResourcesWithNonLocalResourceInfo:(id)a3;
- (void)_confirmWithTitle:(id)a3 message:(id)a4 confirmationButtonTitle:(id)a5 cancelButtonTtle:(id)a6 completion:(id)a7;
- (void)_continueWithoutStoragePurchase:(id)a3;
- (void)_cplStorageCellWasTapped:(id)a3;
- (void)_disableCloudPhotos;
- (void)_emitNavigationEvent;
- (void)_enableCloudPhotosIgnoringStorageLimits:(BOOL)a3;
- (void)_enableKeepOriginalsWithNonLocalResourceInfo:(id)a3;
- (void)_filterAndConfigureSpecifiers:(id *)a3 isAsync:(BOOL *)a4;
- (void)_formatKeepOriginalsAndOptimizeSpecifiers;
- (void)_getPhotosCloudSpaceInBytes;
- (void)_handleDeferredPushIdentifier;
- (void)_hideDisplayedSpinner;
- (void)_initializeCPLStatusProvider;
- (void)_openBackupManagement:(id)a3;
- (void)_openStorageManagement:(id)a3;
- (void)_performICloudPhotosAction:(id)a3;
- (void)_presentAlertExitModeBeforeCPLEnableWithCompletion:(id)a3;
- (void)_privacyButtonPressed:(id)a3;
- (void)_saveUserAccount;
- (void)_setDisplayedSpinner:(id)a3;
- (void)_setSharedStreamsEnabled:(BOOL)a3;
- (void)_setupCPLStatus;
- (void)_setupSharedLibrarySettings;
- (void)_showSpinnerForDuration:(double)a3 withText:(id)a4;
- (void)_showStorageOptions;
- (void)_updateDiagnoseSpecifier;
- (void)_updatePhotosCloudSpace:(id)a3 error:(id)a4;
- (void)_updateSharedLibrarySpecifiersAnimated:(BOOL)a3;
- (void)_updateSpecifiersForCPLEnablementChange;
- (void)_updateStatusActionLabelForSpecifier:(id)a3 reload:(BOOL)a4;
- (void)_updateStatusActionSpecifierVisibility;
- (void)alchemizeButtonEnabledWasToggled:(id)a3 specifier:(id)a4;
- (void)cloudPhotosEnableWasToggled:(id)a3 specifier:(id)a4;
- (void)contentPrivacyEnableWasToggled:(id)a3 specifier:(id)a4;
- (void)diagnosticServiceStateDidChange:(char)a3 outputURL:(id)a4 error:(id)a5;
- (void)featuredContentAllowedWasToggled:(id)a3 specifier:(id)a4;
- (void)generateCPLDiagnose:(id)a3;
- (void)highMotionReminderEnabledWasToggled:(id)a3 specifier:(id)a4;
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)manager:(id)a3 willPresentViewController:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)navigationEventParameters:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidBecomeUnavailable:(id)a3;
- (void)reloadSpecifiers;
- (void)resetBlacklistedMemoryFeatures;
- (void)resetPeopleFeedback;
- (void)runPhotosRebuild:(id)a3;
- (void)setTransferBehaviorUserPreference:(int64_t)a3;
- (void)sharedStreamsSwitchWasToggled:(id)a3 specifier:(id)a4;
- (void)shouldShowPhotoLibraryInSearchWasToggled:(id)a3 specifier:(id)a4;
- (void)statusDidChange:(id)a3;
- (void)updateDiagnoseButtonName:(id)a3 enabled:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation SettingsBaseController

- (void)_emitNavigationEvent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_31C4;
  v2[3] = &unk_2D070;
  v2[4] = self;
  [(SettingsBaseController *)self navigationEventParameters:v2];
}

- (void)navigationEventParameters:(id)a3
{
  v3 = a3;
  v4 = SettingsBaseControllerLocalizedStringResource(@"NAVIGATION_COMPONENT_APPS");
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  v6 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobileslideshow"];
  v3[2](v3, v5, v6);
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v13 = a3;
  if (off_33238 != a5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SettingsBaseController.m" lineNumber:3053 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((*&v6 & 0x71C02BLL) != 0)
  {
    if (v6)
    {
      [(SettingsBaseController *)self reloadSpecifierID:@"cloudPhotosStatus" animated:1];
    }

    if ((*&v6 & 0x700000) != 0)
    {
      [(SettingsBaseController *)self reloadSpecifierID:@"iCloudPhotosItems" animated:1];
    }

    if ((*&v6 & 0x1C008) != 0)
    {
      [(SettingsBaseController *)self _updateSharedLibrarySpecifiersAnimated:1];
    }

    if ((v6 & 0x20) != 0)
    {
      [(SettingsBaseController *)self _updateStatusActionSpecifierVisibility];
      v9 = [(SettingsBaseController *)self specifierForID:@"iCloudPhotosAction"];
      [(SettingsBaseController *)self _updateStatusActionLabelForSpecifier:v9 reload:1];
    }

    if ((v6 & 2) != 0)
    {
      v10 = [(SettingsBaseController *)self specifierForID:@"cloudPhotosStatusGroup"];
      v11 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
      sub_35A0(v10, v11, self->_cloudPhotosEnabled, self);

      if ((v6 & 0x2000) != 0)
      {
        [(SettingsBaseController *)self reloadSpecifiers];
      }
    }
  }
}

- (void)_initializeCPLStatusProvider
{
  if (!self->_cplUIStatusProvider)
  {
    v3 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Settings: Initializing CPL Status Provider.", v8, 2u);
    }

    v4 = [(SettingsBaseController *)self systemPhotoLibrary];
    v5 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:v4];
    v6 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:v4 actionManager:v5 presentationStyle:1];
    cplUIStatusProvider = self->_cplUIStatusProvider;
    self->_cplUIStatusProvider = v6;

    [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider registerChangeObserver:self context:off_33238];
  }
}

- (void)_performICloudPhotosAction:(id)a3
{
  v4 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v5 = [v4 action];
  if (v5)
  {
    v6 = [v4 actionConfirmationAlertTitle];
    if (v6 && (v7 = v6, [v4 actionConfirmationAlertButtonTitle], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = +[UIDevice currentDevice];
      v10 = [v9 userInterfaceIdiom];

      [v4 actionConfirmationAlertTitle];
      if (v10 == &dword_0 + 1)
        v11 = {;
        v12 = v11;
        v13 = 1;
      }

      else
        v11 = {;
        v12 = v11;
        v13 = 0;
      }

      v17 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:v13];

      v18 = [v4 actionConfirmationAlertButtonTitle];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_3EF0;
      v29[3] = &unk_2D048;
      v19 = v4;
      v30 = v19;
      v31 = v5;
      v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:v29];
      [v17 addAction:v20];

      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"ICLOUDPHOTOS_CANCEL" value:&stru_2D398 table:@"Photos"];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_3FC0;
      v27[3] = &unk_2CEA0;
      v23 = v19;
      v28 = v23;
      v24 = [UIAlertAction actionWithTitle:v22 style:1 handler:v27];
      [v17 addAction:v24];

      v25 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v23 actionTitle];
        *buf = 138543362;
        v33 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Settings: Presenting alert with action with title: %{public}@", buf, 0xCu);
      }

      [(SettingsBaseController *)self presentViewController:v17 animated:1 completion:0];
    }

    else
    {
      v14 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 actionTitle];
        *buf = 138543362;
        v33 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Settings: Performing action with title: %{public}@, no confirmation alert", buf, 0xCu);
      }

      (v5)[2](v5, v4);
    }
  }

  else
  {
    v16 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Settings: User tapped on action button but there is no action", buf, 2u);
    }
  }
}

- (void)_updateStatusActionLabelForSpecifier:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
    v8 = sub_4158(v7);
    [v6 setName:v8];

    if (v4)
    {
      [(SettingsBaseController *)self reloadSpecifier:v6 animated:1];
    }
  }

  else
  {
    v9 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Settings: Attempting to update nil specifier: iCPL status action button", v10, 2u);
    }
  }
}

- (void)_updateStatusActionSpecifierVisibility
{
  v3 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v4 = sub_4360(v3, self->_cloudPhotosEnabled, (*(self + 195) >> 1) & 1);

  if ([(SettingsBaseController *)self _needsChangeForSpecifiers:self->_iCloudActionSpecifiers shouldShow:v4])
  {
    if (v4)
    {
      v6 = [(SettingsBaseController *)self specifierForID:@"cloudPhotosStatus"];
      [(SettingsBaseController *)self insertContiguousSpecifiers:self->_iCloudActionSpecifiers afterSpecifier:v6];
    }

    else
    {
      iCloudActionSpecifiers = self->_iCloudActionSpecifiers;

      [(SettingsBaseController *)self removeContiguousSpecifiers:iCloudActionSpecifiers animated:1];
    }
  }
}

- (void)_updatePhotosCloudSpace:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3 || v6)
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "<%@: %p> Error requesting iCloud Storage info: %@", &v13, 0x20u);
    }
  }

  else
  {
    [a3 longLongValue];
    v8 = NSLocalizedFileSizeDescription();
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v8;
      v10 = v14;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Storage updated to: %@", &v13, 0x20u);
    }

    cloudStorageString = self->_cloudStorageString;
    self->_cloudStorageString = v8;

    [(SettingsBaseController *)self reloadSpecifierID:@"iCloudPhotosStorage" animated:1];
  }
}

- (void)_getPhotosCloudSpaceInBytes
{
  if (!self->_cplStorageDataController)
  {
    v3 = +[PLAccountStore pl_sharedAccountStore];
    v4 = [v3 cachedPrimaryAppleAccount];

    v5 = [[ICQCloudStorageDataController alloc] initWithAccount:v4];
    cplStorageDataController = self->_cplStorageDataController;
    self->_cplStorageDataController = v5;
  }

  objc_initWeak(&location, self);
  [(ICQCloudStorageDataController *)self->_cplStorageDataController setShouldIgnoreCache:1];
  v7 = self->_cplStorageDataController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_46F4;
  v8[3] = &unk_2D020;
  objc_copyWeak(&v9, &location);
  [(ICQCloudStorageDataController *)v7 fetchStorageByApp:@"com.apple.mobileslideshow" completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_iCloudPhotosStatus:(id)a3
{
  v3 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v4 = [v3 stateDescription];

  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_STATUS_PENDING" value:&stru_2D398 table:@"Photos"];
  }

  return v4;
}

- (id)_iCloudPhotosItems:(id)a3
{
  v4 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];

  if (v4)
  {
    v5 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
    v6 = [v5 numberOfPhotoAssets];
    v7 = [v5 numberOfVideoAssets];
    v8 = [v5 numberOfOtherAssets];
    if (self->_hasValidCPLCounts || &v6[v7] != -v8)
    {
      v9 = PLLocalizedCountDescription();

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v10 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_STATUS_PENDING" value:&stru_2D398 table:@"Photos"];

LABEL_7:

  return v9;
}

- (BOOL)_wantsInstalledPhotosAppSpecificOptions
{
  v3 = [(SettingsBaseController *)self _settingsDebugOverrideLocation];
  if (v3 >= 2)
  {
    return v3 != 3;
  }

  return [(SettingsBaseController *)self _isSettingsPaneInLocation:1];
}

- (BOOL)_isSettingsPaneInLocation:(int64_t)a3
{
  v4 = [(SettingsBaseController *)self specifier];
  v5 = [v4 objectForKeyedSubscript:@"PhotosSettingsLocation"];

  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  return v6 == a3;
}

- (int64_t)_settingsDebugOverrideLocation
{
  if (![(SettingsBaseController *)self _isAppleInternal])
  {
    return 1;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"OverrideLocationAppOrGeneral"];

  if (v3)
  {
    v4 = [v3 lowercaseString];
    v5 = [v4 isEqualToString:@"app"];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v7 = [v3 lowercaseString];
      v8 = [v7 isEqualToString:@"general"];

      if (v8)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)statusDidChange:(id)a3
{
  v10 = a3;
  v4 = [v10 exitDeleteTime];
  v5 = v4 != 0;

  isCPLInExitMode = self->_isCPLInExitMode;
  if (isCPLInExitMode != v5)
  {
    self->_isCPLInExitMode = v5;
    [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:v4 != 0];
    [(SettingsBaseController *)self _getPhotosCloudSpaceInBytes];
  }

  v7 = [v10 cloudAssetCountPerType];
  v8 = [v7 allKeys];
  v9 = [v8 count] != 0;

  if (self->_hasValidCPLCounts != v9)
  {
    self->_hasValidCPLCounts = v9;
    goto LABEL_7;
  }

  if (isCPLInExitMode != v5)
  {
LABEL_7:
    [(SettingsBaseController *)self reloadSpecifiers];
  }
}

- (void)manager:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%{public}@:%p> ICQUICloudStorageOffersManager failed with error: %@", &v7, 0x20u);
  }
}

- (void)managerDidCancel:(id)a3
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> ICQUICloudStorageOffersManager was cancelled by the user", &v5, 0x16u);
  }
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v5 = a4;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%{public}@:%p> ICQUICloudStorageOffersManager load failed with error: %@", &v7, 0x20u);
  }
}

- (void)manager:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:101 primaryAction:0];
  v7 = [v5 navigationItem];
  [v7 setLeftBarButtonItem:v6];

  v8 = PULocalizedString();
  [v5 setTitle:v8];
  if (self->_requireStorageUpgradeForCPL)
  {
    [v5 px_removeFooterToolbar];
  }

  else
  {
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v10 = [UIBarButtonItem alloc];
    v11 = PULocalizedString();
    v12 = [v10 initWithTitle:v11 style:0 target:self action:"_continueWithoutStoragePurchase:"];

    v14[0] = v9;
    v14[1] = v12;
    v14[2] = v9;
    v13 = [NSArray arrayWithObjects:v14 count:3];
    [v5 px_insertFooterToolbarWithItems:v13];
  }
}

- (int64_t)_daysUntilExit
{
  v2 = [(CPLStatus *)self->_cplStatus exitDeleteTime];
  if (v2)
  {
    v3 = PXCPLNumberOfCalendarDaysUntilDate();
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (void)_openBackupManagement:(id)a3
{
  v3 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Will navigate to iCloud Storage Settings", v4, 2u);
  }

  [PXSystemNavigation navigateToDestination:12 completion:&stru_2CFD0];
}

- (void)_openStorageManagement:(id)a3
{
  v3 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Will navigate to iCloud Storage Settings", v4, 2u);
  }

  [PXSystemNavigation navigateToDestination:5 completion:&stru_2CFB0];
}

- (void)_privacyButtonPressed:(id)a3
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.photos"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)_continueWithoutStoragePurchase:(id)a3
{
  [(ICQUICloudStorageOffersManager *)self->_offersManager cancelLoad];

  [(SettingsBaseController *)self _enableCloudPhotosWithExitModeWarningIgnoringStorageLimits:1];
}

- (void)_updateSharedLibrarySpecifiersAnimated:(BOOL)a3
{
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosEnabled:self->_cloudPhotosEnabled];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:self->_isCPLInExitMode];
  v4 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosStatus:v4];

  [(SettingsBaseController *)self reloadSpecifiers];
}

- (void)_updateSpecifiersForCPLEnablementChange
{
  if ((*(self + 195) & 2) != 0)
  {
    [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider unregisterChangeObserver:self context:off_33238];
    cplUIStatusProvider = self->_cplUIStatusProvider;
    self->_cplUIStatusProvider = 0;

    [(SettingsBaseController *)self _initializeCPLStatusProvider];
  }

  [(SettingsBaseController *)self reloadSpecifiers];
}

- (void)_disableCloudPhotos
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = self;
    v4 = v17;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Will disable iCPL", buf, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ICLOUDPHOTOS_TURN_OFF_SPINNER_TEXT" value:&stru_2D398 table:@"Photos"];

  v7 = [(SettingsBaseController *)self _showSpinnerWithText:v6];
  [(SettingsBaseController *)self _setDisplayedSpinner:v7];
  v8 = [(SettingsBaseController *)self view];
  v9 = [v8 window];
  [v9 setUserInteractionEnabled:0];

  v10 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5F78;
  block[3] = &unk_2D128;
  v14 = v7;
  v15 = self;
  v11 = v7;
  dispatch_after(v10, &_dispatch_main_q, block);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5FF0;
  v12[3] = &unk_2D1A0;
  v12[4] = self;
  [PLCloudPhotoLibraryHelper disableCPL:v12];
}

- (void)_showStorageOptions
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present ICQUICloudStorageOffersManager", &v8, 0x16u);
  }

  v4 = objc_alloc_init(ICQUICloudStorageOffersManager);
  offersManager = self->_offersManager;
  self->_offersManager = v4;

  [(ICQUICloudStorageOffersManager *)self->_offersManager setDelegate:self];
  v6 = self->_offersManager;
  v7 = [(SettingsBaseController *)self navigationController];
  [(ICQUICloudStorageOffersManager *)v6 beginFlowWithNavigationController:v7 modally:1];
}

- (void)_presentAlertExitModeBeforeCPLEnableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Alert Exit Mode is ON", buf, 2u);
  }

  if ([(SettingsBaseController *)self _daysUntilExit]< 1)
  {
    v7 = PULocalizedString();
  }

  else
  {
    v6 = PULocalizedString();
    v7 = PFLocalizedStringWithValidatedFormat();
  }

  v8 = PULocalizedString();
  v9 = PULocalizedString();
  v10 = PULocalizedString();
  v11 = PULocalizedString();
  v12 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_6684;
  v23[3] = &unk_2CEF0;
  v13 = v4;
  v24 = v13;
  v14 = [UIAlertAction actionWithTitle:v11 style:0 handler:v23];
  [v12 addAction:v14];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_6704;
  v21[3] = &unk_2CEF0;
  v15 = v13;
  v22 = v15;
  v16 = [UIAlertAction actionWithTitle:v9 style:1 handler:v21];
  [v12 addAction:v16];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_6784;
  v19[3] = &unk_2CEF0;
  v20 = v15;
  v17 = v15;
  v18 = [UIAlertAction actionWithTitle:v10 style:0 handler:v19];
  [v12 addAction:v18];

  [(SettingsBaseController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_enableCloudPhotosIgnoringStorageLimits:(BOOL)a3
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = self;
    v5 = v15;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> Handle request to enable iCPL", buf, 0x16u);
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ICLOUDPHOTOS_TURN_ON_SPINNER_TEXT" value:&stru_2D398 table:@"Photos"];

  v8 = [(SettingsBaseController *)self _showSpinnerWithText:v7];
  [(SettingsBaseController *)self _setDisplayedSpinner:v8];
  v9 = [(SettingsBaseController *)self view];
  v10 = [v9 window];
  [v10 setUserInteractionEnabled:0];

  v11 = +[PLAccountStore pl_sharedAccountStore];
  v12 = [v11 cachedPrimaryAppleAccount];

  v13 = v8;
  PLCanEnableCloudPhotoLibraryForAccount();
}

- (id)_personID
{
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];
  v4 = [v3 aa_personID];

  return v4;
}

- (BOOL)_needsChangeForSpecifiers:(id)a3 shouldShow:(BOOL)a4
{
  v6 = [a3 firstObject];
  v7 = [(SettingsBaseController *)self indexOfSpecifier:v6];

  return (v7 != 0x7FFFFFFFFFFFFFFFLL) ^ a4;
}

- (id)_previousSpecifierIDForSpecifierID:(id)a3
{
  v5 = a3;
  v6 = [(NSArray *)self->_allPhotosSpecifiers indexOfSpecifierWithID:v5];
  v7 = [(SettingsBaseController *)self specifiers];
  while (1)
  {
    v8 = [(NSArray *)self->_allPhotosSpecifiers objectAtIndex:--v6];
    v9 = [v8 identifier];
    v10 = [v7 specifierForID:v9];

    if (v10)
    {
      break;
    }
  }

  v11 = [v10 identifier];

  if (!v11)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SettingsBaseController.m" lineNumber:2311 description:@"Specifier ID doesn't have a previous Photos Specifier"];
  }

  return v11;
}

- (void)_formatKeepOriginalsAndOptimizeSpecifiers
{
  [(SettingsBaseController *)self _updateKeepOriginalsFooterTextAnimated:1];
  iCloudPhotoLibraryConditionalSpecifiers = self->_iCloudPhotoLibraryConditionalSpecifiers;
  v4 = [(SettingsBaseController *)self systemPhotoLibrary];
  sub_7710(iCloudPhotoLibraryConditionalSpecifiers, [v4 isKeepOriginalsEnabled]);
}

- (void)_confirmWithTitle:(id)a3 message:(id)a4 confirmationButtonTitle:(id)a5 cancelButtonTtle:(id)a6 completion:(id)a7
{
  v12 = a3;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_79D0;
  v27[3] = &unk_2CEF0;
  v13 = a7;
  v28 = v13;
  v14 = a5;
  v15 = a4;
  v16 = [UIAlertAction actionWithTitle:a6 style:1 handler:v27];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_79E4;
  v25 = &unk_2CEF0;
  v17 = v13;
  v26 = v17;
  v18 = [UIAlertAction actionWithTitle:v14 style:0 handler:&v22];

  v19 = [UIDevice currentDevice:v22];
  v20 = [v19 userInterfaceIdiom];

  if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = [UIAlertController alertControllerWithTitle:v12 message:v15 preferredStyle:1];
  }

  else
  {
    v21 = [UIAlertController alertControllerWithTitle:v15 message:0 preferredStyle:0];

    [v21 setAccessibilityLabel:v12];
  }

  [v21 addAction:v16];
  [v21 addAction:v18];
  [(SettingsBaseController *)self presentViewController:v21 animated:1 completion:0];
}

- (id)_nonLocalResourceInfo
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  v3 = [PLInternalResource bytesNeededToDownloadOriginalResourcesInLibrary:v2];

  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = +[PLPhotoLibrary systemPhotoLibrary];
  [PLManagedAsset countOfAssetsWithRequiredResourcesNotLocallyAvailableInLibrary:v4 outCount:&v14 photoCount:&v13 videoCount:&v12];

  v15[0] = @"kCPLNonLocalOriginalsFileSizeKey";
  v5 = [NSNumber numberWithUnsignedLongLong:(v3 * 1.1)];
  v16[0] = v5;
  v15[1] = @"kCPLNonLocalOriginalsCountKey";
  v6 = [NSNumber numberWithUnsignedInteger:v14];
  v16[1] = v6;
  v15[2] = @"kCPLNonLocalOriginalsPhotoCountKey";
  v7 = [NSNumber numberWithUnsignedInteger:v13];
  v16[2] = v7;
  v15[3] = @"kCPLNonLocalOriginalsVideoCountKey";
  v8 = [NSNumber numberWithUnsignedInteger:v12];
  v16[3] = v8;
  v15[4] = @"kCPLExistNonLocalOriginalsKey";
  v9 = [NSNumber numberWithInt:v14 != 0];
  v16[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v10;
}

- (void)_cancelDisableCloudPhotos
{
  self->_cloudPhotosEnabled = 1;
  [(SettingsBaseController *)self reloadSpecifierID:@"iCloudPhotosSwitch" animated:1];

  [(SettingsBaseController *)self _updateSharedLibrarySpecifiersAnimated:1];
}

- (void)_confirmCloudPhotosDisableWithNonLocalResourceInfo:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

  v7 = +[UIDevice currentDevice];
  v8 = [v7 model];

  v9 = [v4 objectForKeyedSubscript:@"kCPLNonLocalOriginalsCountKey"];
  v10 = [v9 integerValue];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  if (v10 < 2)
  {
    v15 = [@"ICLOUDPHOTOS_DISABLE_DISK_PRESSURE_PRUNED_MESSAGE_SINGULAR_" stringByAppendingString:v8];
    v14 = [v11 localizedStringForKey:v15 value:&stru_2D398 table:@"Photos"];
  }

  else
  {
    v12 = [@"ICLOUDPHOTOS_DISABLE_DISK_PRESSURE_PRUNED_MESSAGE_PLURAL_" stringByAppendingString:v8];
    v13 = [v11 localizedStringForKey:v12 value:&stru_2D398 table:@"Photos"];

    v27 = v10;
    v14 = PFLocalizedStringWithValidatedFormat();
    v11 = v13;
  }

  v28 = v8;
  v16 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:v8];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v16 value:&stru_2D398 table:@"Photos"];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_8060;
  v32[3] = &unk_2CEA0;
  v32[4] = self;
  v29 = v6;
  v19 = [UIAlertAction actionWithTitle:v6 style:1 handler:v32];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_8068;
  v30[3] = &unk_2CD48;
  v30[4] = self;
  v20 = v4;
  v31 = v20;
  v21 = [UIAlertAction actionWithTitle:v18 style:2 handler:v30];
  v22 = +[UIDevice currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if ((v23 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_TITLE" value:&stru_2D398 table:@"Photos"];

    v26 = [UIAlertController alertControllerWithTitle:v25 message:v14 preferredStyle:1];
  }

  else
  {
    v26 = [UIAlertController alertControllerWithTitle:v14 message:0 preferredStyle:0];
  }

  [v26 addAction:{v19, v27}];
  [v26 addAction:v21];
  [(SettingsBaseController *)self presentViewController:v26 animated:1 completion:0];
}

- (void)_confirmCloudPhotosDisableWithSyncInProgress
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_SYNCING_TITLE" value:&stru_2D398 table:@"Photos"];

  v5 = +[UIDevice currentDevice];
  v6 = [v5 model];
  v7 = [@"ICLOUDPHOTOS_DISABLE_SYNCING_MESSAGE_" stringByAppendingString:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:v7 value:&stru_2D398 table:@"Photos"];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_SYNCING_STOP" value:&stru_2D398 table:@"Photos"];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_SYNCING_CONTINUE" value:&stru_2D398 table:@"Photos"];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_836C;
  v23[3] = &unk_2CEA0;
  v23[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_8374;
  v22[3] = &unk_2CEA0;
  v22[4] = self;
  v15 = [UIAlertAction actionWithTitle:v11 style:2 handler:v22];
  v16 = +[UIDevice currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = v4;
    v19 = v9;
    v20 = 1;
  }

  else
  {
    v18 = v9;
    v19 = 0;
    v20 = 0;
  }

  v21 = [UIAlertController alertControllerWithTitle:v18 message:v19 preferredStyle:v20];
  [v21 addAction:v14];
  [v21 addAction:v15];
  [(SettingsBaseController *)self presentViewController:v21 animated:1 completion:0];
}

- (void)_enableKeepOriginalsWithNonLocalResourceInfo:(id)a3
{
  v4 = a3;
  v5 = PLCPLLocalStorageAvailableForResources();
  v6 = [v4 objectForKeyedSubscript:@"kCPLNonLocalOriginalsFileSizeKey"];

  v7 = [v6 longLongValue];
  v8 = &v7[-v5];
  if (v7 <= v5)
  {
    v32 = [(SettingsBaseController *)self specifierForID:@"iCloudKeepOriginalsOption"];
    [(SettingsBaseController *)self keepOriginals:v32];
  }

  else
  {
    v34 = MGCopyAnswer();
    v9 = [v34 objectForKey:kMGQDiskUsageTotalDataCapacity];
    v10 = [v9 longLongValue];

    v11 = +[PLPhotoLibrary systemPhotoLibrary];
    v33 = [v11 estimatedLibrarySizes];

    v12 = [v33 objectForKeyedSubscript:&off_2FAF8];
    v13 = [v12 longLongValue];

    v14 = &v7[v13];
    v15 = +[UIDevice currentDevice];
    v16 = [v15 model];
    if (v14 <= v10)
    {
      v17 = @"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_MESSAGE_FORMAT_";
    }

    else
    {
      v17 = @"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_MESSAGE_IMPOSSIBLE_FORMAT_";
    }

    v18 = [(__CFString *)v17 stringByAppendingString:v16];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_TITLE" value:&stru_2D398 table:@"Photos"];

    v21 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:0];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v18 value:&stru_2D398 table:@"Photos"];
    v24 = [NSString stringWithFormat:v23, v21];

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_MANAGE" value:&stru_2D398 table:@"Photos"];

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

    v29 = [UIAlertController alertControllerWithTitle:v20 message:v24 preferredStyle:1];
    v30 = [UIAlertAction actionWithTitle:v28 style:1 handler:0];
    [v29 addAction:v30];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_876C;
    v35[3] = &unk_2CEA0;
    v35[4] = self;
    v31 = [UIAlertAction actionWithTitle:v26 style:0 handler:v35];
    [v29 addAction:v31];

    [(SettingsBaseController *)self presentViewController:v29 animated:1 completion:0];
  }

  [(SettingsBaseController *)self _cancelDisableCloudPhotos];
}

- (void)_confirmDeletePrunedResourcesWithNonLocalResourceInfo:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v50 = [v5 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

  v6 = [v4 objectForKeyedSubscript:@"kCPLNonLocalOriginalsCountKey"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 objectForKeyedSubscript:@"kCPLNonLocalOriginalsPhotoCountKey"];
  v9 = [v8 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:@"kCPLNonLocalOriginalsVideoCountKey"];

  v11 = [v10 BOOLValue];
  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_MESSAGE_FORMAT_PHOTOS";
    if (v11)
    {
      v14 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_MESSAGE_FORMAT_PHOTOS_VIDEOS";
    }

    v15 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_";
    if (v11)
    {
      v15 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_VIDEOS_";
    }

    if (v9)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_MESSAGE_FORMAT_VIDEOS";
    }

    if (v9)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_VIDEOS_";
    }

    v18 = +[UIDevice currentDevice];
    v19 = [v18 model];
    v20 = [(__CFString *)v17 stringByAppendingString:v19];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = v20;
    v22 = [v21 localizedStringForKey:v20 value:&stru_2D398 table:@"Photos"];

    v48 = v22;
    v23 = PFLocalizedStringWithValidatedFormat();
    v24 = [NSBundle bundleForClass:objc_opt_class(), v7];
    v25 = [v24 localizedStringForKey:v16 value:&stru_2D398 table:@"Photos"];

    v47 = v7;
    v26 = PFLocalizedStringWithValidatedFormat();
    v27 = +[UIDevice currentDevice];
    v28 = [v27 model];
    v29 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:v28];

    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:v29 value:&stru_2D398 table:@"Photos"];

    v32 = [UIAlertController alertControllerWithTitle:v23 message:v26 preferredStyle:1];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_8E0C;
    v54[3] = &unk_2CEA0;
    v54[4] = self;
    v33 = [UIAlertAction actionWithTitle:v50 style:1 handler:v54];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_8E14;
    v53[3] = &unk_2CEA0;
    v53[4] = self;
    v34 = [UIAlertAction actionWithTitle:v31 style:2 handler:v53];
    [v32 addAction:v33];
    [v32 addAction:v34];
  }

  else
  {
    v35 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_";
    if (v11)
    {
      v35 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_VIDEOS_";
    }

    if (v9)
    {
      v36 = v35;
    }

    else
    {
      v36 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_VIDEOS_";
    }

    v37 = +[UIDevice currentDevice];
    v38 = [v37 model];
    v39 = [(__CFString *)v36 stringByAppendingString:v38];

    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = v39;
    v41 = [v40 localizedStringForKey:v39 value:&stru_2D398 table:@"Photos"];

    v48 = v41;
    v23 = PFLocalizedStringWithValidatedFormat();
    v42 = +[UIDevice currentDevice];
    v43 = [v42 model];
    v25 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:v43];

    v44 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v44 localizedStringForKey:v25 value:&stru_2D398 table:@"Photos"];

    v32 = [UIAlertController alertControllerWithTitle:v23 message:0 preferredStyle:0];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_8E1C;
    v52[3] = &unk_2CEA0;
    v52[4] = self;
    v45 = [UIAlertAction actionWithTitle:v50 style:1 handler:v52];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_8E24;
    v51[3] = &unk_2CEA0;
    v51[4] = self;
    v46 = [UIAlertAction actionWithTitle:v26 style:2 handler:v51];
    [v32 addAction:v45];
    [v32 addAction:v46];
  }

  [(SettingsBaseController *)self presentViewController:v32 animated:1 completion:0];
}

- (void)_confirmCloudPhotosDisableWhilePrunedWithNonLocalResourceInfo:(id)a3
{
  v27 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

  v6 = +[UIDevice currentDevice];
  v7 = [v6 model];
  v8 = [@"ICLOUDPHOTOS_DISABLE_PROMPT_DOWNLOAD_ORIGINALS_" stringByAppendingString:v7];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = v8;
  v30 = [v9 localizedStringForKey:v8 value:&stru_2D398 table:@"Photos"];

  v10 = +[UIDevice currentDevice];
  v11 = [v10 model];
  v12 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:v11];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v12 value:&stru_2D398 table:@"Photos"];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_PROMPT_DOWNLOAD_ORIGINALS_OK" value:&stru_2D398 table:@"Photos"];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_9294;
  v35[3] = &unk_2CEA0;
  v35[4] = self;
  v29 = v5;
  v17 = [UIAlertAction actionWithTitle:v5 style:1 handler:v35];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_929C;
  v33[3] = &unk_2CD48;
  v33[4] = self;
  v18 = v27;
  v34 = v18;
  v19 = [UIAlertAction actionWithTitle:v14 style:2 handler:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_92A8;
  v31[3] = &unk_2CD48;
  v31[4] = self;
  v20 = v18;
  v32 = v20;
  v21 = [UIAlertAction actionWithTitle:v16 style:0 handler:v31];
  v22 = +[UIDevice currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if ((v23 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_PROMPT_DOWNLOAD_ORIGINALS_TITLE" value:&stru_2D398 table:@"Photos"];

    v26 = [UIAlertController alertControllerWithTitle:v25 message:v30 preferredStyle:1];
  }

  else
  {
    v26 = [UIAlertController alertControllerWithTitle:v30 message:0 preferredStyle:0];
  }

  [v26 addAction:{v17, v27}];
  [v26 addAction:v19];
  [v26 addAction:v21];
  [(SettingsBaseController *)self presentViewController:v26 animated:1 completion:0];
}

- (void)_beginCloudPhotosDisableFlow
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ICLOUDPHOTOS_TURN_OFF_SPINNER_TEXT" value:&stru_2D398 table:@"Photos"];

  v5 = [(SettingsBaseController *)self _showSpinnerWithText:v4];
  [(SettingsBaseController *)self _setDisplayedSpinner:v5];
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_93BC;
  block[3] = &unk_2D360;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)resetPeopleFeedback
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RESET_PEOPLE_FEEDBACK_CANCEL_ACTION_TITLE" value:&stru_2D398 table:@"Photos"];

  v5 = [UIAlertAction actionWithTitle:v4 style:1 handler:0];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RESET_PEOPLE_FEEDBACK_RESET_ACTION_TITLE" value:&stru_2D398 table:@"Photos"];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9808;
  v16[3] = &unk_2CEA0;
  v16[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:2 handler:v16];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"RESET_PEOPLE_FEEDBACK_RESET_ACTION_DETAILS" value:&stru_2D398 table:@"Photos"];

  v11 = +[UIDevice currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"RESET_PEOPLE_FEEDBACK_RESET_ACTION_ALERT_TITLE" value:&stru_2D398 table:@"Photos"];

    v15 = [UIAlertController alertControllerWithTitle:v14 message:v10 preferredStyle:1];
  }

  else
  {
    v15 = [UIAlertController alertControllerWithTitle:v10 message:0 preferredStyle:0];
  }

  [v15 addAction:v5];
  [v15 addAction:v8];
  [(SettingsBaseController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)resetBlacklistedMemoryFeatures
{
  objc_initWeak(&location, self);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MEMORIES_BLACKLISTED_MEMORIES_CANCEL_ACTION_TITLE" value:&stru_2D398 table:@"Photos"];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_9CA8;
  v22[3] = &unk_2CE30;
  objc_copyWeak(&v23, &location);
  v5 = [UIAlertAction actionWithTitle:v4 style:1 handler:v22];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MEMORIES_BLACKLISTED_MEMORIES_RESET_ACTION_TITLE" value:&stru_2D398 table:@"Photos"];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_9D38;
  v19 = &unk_2CE58;
  objc_copyWeak(&v21, &location);
  v20 = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:2 handler:&v16];
  v9 = [NSBundle bundleForClass:objc_opt_class(), v16, v17, v18, v19];
  v10 = [v9 localizedStringForKey:@"MEMORIES_BLACKLISTED_MEMORIES_RESET_ACTION_DETAILS" value:&stru_2D398 table:@"Photos"];

  v11 = +[UIDevice currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"MEMORIES_BLACKLISTED_MEMORIES_RESET_ALERT_TITLE" value:&stru_2D398 table:@"Photos"];

    v15 = [UIAlertController alertControllerWithTitle:v14 message:v10 preferredStyle:1];
  }

  else
  {
    v15 = [UIAlertController alertControllerWithTitle:v10 message:0 preferredStyle:0];
  }

  [v15 addAction:v5];
  [v15 addAction:v8];
  [(SettingsBaseController *)self presentViewController:v15 animated:1 completion:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (id)_fetchDeniedSuggestions
{
  v2 = [(SettingsBaseController *)self systemPhotoLibrary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 librarySpecificFetchOptions];
    v5 = [PHSuggestion fetchSuggestionsWithState:4 withOptions:v4];
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "SettingsBaseController: systemPhotoLibrary is nil", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_fetchMemoriesWithUserFeedback
{
  v2 = [(SettingsBaseController *)self systemPhotoLibrary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 librarySpecificFetchOptions];
    v5 = [PHMemory fetchMemoriesWithUserFeedbackWithOptions:v4];
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "SettingsBaseController: systemPhotoLibrary is nil", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_fetchBlockedMemoryFeatures
{
  v2 = [(SettingsBaseController *)self systemPhotoLibrary];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 librarySpecificFetchOptions];
    v5 = [PHMemory fetchBlockedMemoriesWithOptions:v4];
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "SettingsBaseController: systemPhotoLibrary is nil", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_cplStorageCellWasTapped:(id)a3
{
  v4 = a3;
  manageStorageController = self->_manageStorageController;
  v10 = v4;
  if (!manageStorageController)
  {
    v6 = +[PLAccountStore pl_sharedAccountStore];
    v7 = [v6 cachedPrimaryAppleAccount];

    v8 = [[ICSManageStorageDrilldownController alloc] initWithAppBundleID:@"com.apple.mobileslideshow" account:v7 presentingController:self];
    v9 = self->_manageStorageController;
    self->_manageStorageController = v8;

    v4 = v10;
    manageStorageController = self->_manageStorageController;
  }

  [(ICSManageStorageDrilldownController *)manageStorageController beginLoadingForSpecifier:v4];
  self->_refreshQuotaStorageOnViewWillAppear = 1;
}

- (void)_filterAndConfigureSpecifiers:(id *)a3 isAsync:(BOOL *)a4
{
  v5 = +[PLAccountStore pl_sharedAccountStore];
  v65 = [v5 cachedPrimaryAppleAccount];

  *(self + 195) = *(self + 195) & 0xFE | [v65 isEnabledForDataclass:kAccountDataclassSharedStreams];
  self->_cloudPhotosEnabled = [v65 isEnabledForDataclass:kAccountDataclassCloudPhotos];
  v6 = [(SettingsBaseController *)self loadSpecifiersFromPlistName:@"Photos" target:self];
  v7 = [v6 copy];
  allPhotosSpecifiers = self->_allPhotosSpecifiers;
  self->_allPhotosSpecifiers = v7;

  if ((*(self + 195) & 2) != 0)
  {
    v9 = @"PHOTOS";
  }

  else
  {
    if (![(SettingsBaseController *)self _isSettingsPaneInLocation:2])
    {
      goto LABEL_6;
    }

    v9 = @"PHOTOS_LIBRARY_SETTINGS_TITLE";
  }

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v9 value:&stru_2D398 table:@"Photos"];
  [(SettingsBaseController *)self setTitle:v11];

LABEL_6:
  v66 = [v6 specifierForID:@"iCloudPhotosItems"];
  v64 = [v6 specifierForID:@"cloudPhotosStatus"];
  v77[0] = v66;
  v77[1] = v64;
  v12 = [NSArray arrayWithObjects:v77 count:2];
  iCloudStatusConditionalSpecifiers = self->_iCloudStatusConditionalSpecifiers;
  self->_iCloudStatusConditionalSpecifiers = v12;

  v76 = v66;
  v14 = [NSArray arrayWithObjects:&v76 count:1];
  iCloudStatusExitConditionalSpecifiers = self->_iCloudStatusExitConditionalSpecifiers;
  self->_iCloudStatusExitConditionalSpecifiers = v14;

  v63 = [v6 specifierForID:@"iCloudPhotosAction"];
  v75 = v63;
  v16 = [NSArray arrayWithObjects:&v75 count:1];
  iCloudActionSpecifiers = self->_iCloudActionSpecifiers;
  self->_iCloudActionSpecifiers = v16;

  v74[0] = @"iCloudKeepOriginalsGroup";
  v74[1] = @"iCloudKeepOriginalsOption";
  v74[2] = @"iCloudOptimizeStorageOption";
  v18 = [NSArray arrayWithObjects:v74 count:3];
  v19 = [v6 mss_specifiersWithIdentifiers:v18];
  iCloudPhotoLibraryConditionalSpecifiers = self->_iCloudPhotoLibraryConditionalSpecifiers;
  self->_iCloudPhotoLibraryConditionalSpecifiers = v19;

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v21 = [(SettingsBaseController *)self _useInternalDiagnostics]|| CFPreferencesGetAppBooleanValue(@"showCloudDiagnoseButton", @"com.apple.mobileslideshow", 0) != 0;
  v59 = v21;
  v22 = [(SettingsBaseController *)self _useInternalDiagnostics]|| CFPreferencesGetAppBooleanValue(@"showPhotosRebuildButton", @"com.apple.mobileslideshow", 0) != 0;
  v58 = v22;
  v23 = [(SettingsBaseController *)self systemPhotoLibrary];
  v57 = [v23 isKeepOriginalsEnabled];

  cloudPhotosEnabled = self->_cloudPhotosEnabled;
  isCPLInExitMode = self->_isCPLInExitMode;
  v54 = [(SettingsBaseController *)self _shouldHideCPL];
  shouldHideTransferBehaviors = self->_shouldHideTransferBehaviors;
  v52 = PLCanEnableSharedStreamsForAccount();
  accountModificationAllowed = self->_accountModificationAllowed;
  v49 = *(self + 195);
  v50 = PXSupportsImageModulation();
  v48 = [(SettingsBaseController *)self _wantsInstalledPhotosAppSpecificOptions];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"cloudPhotosPaused", @"com.apple.mobileslideshow", 0);
  v46 = [(SettingsBaseController *)self _settingsDebugOverrideLocation];
  v45 = [(SettingsBaseController *)self _daysUntilExit];
  v44 = [(SettingsBaseController *)self transferBehaviorUserPreference];
  [(PXContentPrivacyController *)self->_privacyController updateAuthenticationTypeImmediately];
  v43 = [(PXContentPrivacyController *)self->_privacyController authenticationType];
  v24 = [(SettingsBaseController *)self systemPolicyOptions];
  v62 = [(SettingsBaseController *)self bundleIdentifier];
  v25 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v26 = [NSString stringWithFormat:@"%@: %p", objc_opt_class(), self];
  objc_initWeak(&location, self);
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosEnabled:self->_cloudPhotosEnabled];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:self->_isCPLInExitMode];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosStatus:v25];
  v27 = [(SettingsBaseController *)self traitCollection];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(SettingsBaseController *)self traitCollection];
    v30 = [v29 pe_isSettingsFeatureDescriptionCellSupported];
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_class();
  v32 = objc_loadWeakRetained(&location);
  v33 = [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController invitationSpecifiers];
  v34 = [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController settingsSpecifiers];
  LOBYTE(v42) = v30;
  BYTE5(v41) = (v46 & 0xFFFFFFFFFFFFFFFELL) == 2;
  BYTE4(v41) = v48;
  BYTE3(v41) = v50;
  BYTE2(v41) = accountModificationAllowed;
  BYTE1(v41) = v58;
  LOBYTE(v41) = v59;
  BYTE3(v40) = v52;
  BYTE2(v40) = AppBooleanValue != 0;
  BYTE1(v40) = shouldHideTransferBehaviors;
  LOBYTE(v40) = v54;
  v35 = [v31 filterAndConfigureSpecifiers:v6 shownFromAccountSettings:(v49 >> 1) & 1 cloudPhotosEnabled:cloudPhotosEnabled cplKeepOriginals:v57 isCPLInExitMode:isCPLInExitMode cplDaysUntilExit:v45 shouldHideCPL:v40 shouldHideTransferBehaviors:v25 cloudPhotosPaused:v32 canEnableSharedStreams:v41 cplStatus:v43 cplActionPerformer:v24 showPhotosDiagnoseButton:v62 showPhotosRebuildButton:v44 accountModificationAllowed:v33 isOLEDDevice:v34 wantsPhotosAppSpecificSettings:v26 isLocationBeingOverridden:v42 currentAuthenticationType:? systemPolicyOptions:? bundleIdentifier:? transferBehaviorUserPreference:? sharedLibraryInvitationSpecifiers:? sharedLibrarySettingsSpecifiers:? instanceLogInfo:? featureDescriptionCellSupported:?];

  v36 = v35;
  *a3 = v35;
  if (*a4)
  {
    v37 = PLUIGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = [v35 count];
      *buf = 138412802;
      v69 = v38;
      v70 = 2048;
      v71 = self;
      v72 = 2048;
      v73 = v39;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "<%@: %p> Initialized specifiers async: %lu", buf, 0x20u);
    }

    [(SettingsBaseController *)self setSpecifiers:v35];
  }

  objc_destroyWeak(&location);
}

- (id)_initializeSpecifiers
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_AF88;
  v23 = sub_AF98;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 138412546;
    v26 = v4;
    v27 = 2048;
    v28 = self;
    v5 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Will check if iCPL has exited", buf, 0x16u);
  }

  PLDisableCPLIfExited();
  if (v20[5])
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [v20[5] count];
      *buf = 138412802;
      v26 = v7;
      v27 = 2048;
      v28 = self;
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Initialized specifiers: %lu", buf, 0x20u);
    }
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138412546;
      v26 = v10;
      v27 = 2048;
      v28 = self;
      v11 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Specifiers are being initialized async - returning the empty array for now", buf, 0x16u);
    }

    v12 = v20[5];
    v20[5] = &__NSArray0__struct;

    *(v16 + 24) = 1;
  }

  v13 = v20[5];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)_sharedStreamsAssetsWillBeDeletedIfTurnedOff
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  [PLCloudSharedAlbum allCloudSharedAlbumsInLibrary:v2];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) assetsCount])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)_photoStreamAssetsWillBeDeletedIfTurnedOff
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  [v2 photoStreamAlbums];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isCloudSharedAlbum] & 1) == 0 && objc_msgSend(v7, "assetsCount"))
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)_showSpinnerForDuration:(double)a3 withText:(id)a4
{
  v6 = a4;
  v7 = [(SettingsBaseController *)self view];
  v8 = [v7 window];
  [v8 setUserInteractionEnabled:0];

  v9 = objc_alloc_init(UIProgressHUD);
  [v9 setAutoresizingMask:45];
  [v9 setFontSize:16];
  [v9 setText:v6];

  v10 = [(SettingsBaseController *)self _viewForSpinnerPresentation];
  [v9 showInView:v10];
  v11 = [(SettingsBaseController *)self view];
  v12 = [v11 window];

  [v12 setUserInteractionEnabled:0];
  [(SettingsBaseController *)self _setDisplayedSpinner:v9];
  v13 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B548;
  block[3] = &unk_2D338;
  v17 = v9;
  v18 = self;
  v19 = v12;
  v14 = v12;
  v15 = v9;
  dispatch_after(v13, &_dispatch_main_q, block);
}

- (id)_showSpinnerWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIProgressHUD);
  [v5 setAutoresizingMask:45];
  [v5 setFontSize:16];
  [v5 setText:v4];

  v6 = [(SettingsBaseController *)self _viewForSpinnerPresentation];
  [v5 showInView:v6];

  return v5;
}

- (id)_viewForSpinnerPresentation
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(SettingsBaseController *)self rootController];
  v6 = v5;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = [v5 parentViewController];
    v8 = [v7 view];
  }

  else
  {
    v8 = [v5 view];
  }

  if (!v8)
  {
    v9 = [(SettingsBaseController *)self parentViewController];
    v8 = [v9 view];

    if (!v8)
    {
      v10 = PXAssertGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "SettingsBaseController: missing view to present legacy UIProgressHUD", v12, 2u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)_hideDisplayedSpinner
{
  displayedSpinner = self->_displayedSpinner;
  if (displayedSpinner)
  {
    [(UIProgressHUD *)displayedSpinner hide];
    [(SettingsBaseController *)self _setDisplayedSpinner:0];
    v5 = [(SettingsBaseController *)self view];
    v4 = [v5 window];
    [v4 setUserInteractionEnabled:1];
  }
}

- (void)_setDisplayedSpinner:(id)a3
{
  v5 = a3;
  if (self->_displayedSpinner != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_displayedSpinner, a3);
    v5 = v6;
  }
}

- (void)_saveUserAccount
{
  v3 = +[PLAccountStore pl_sharedAccountStore];
  v4 = +[PLAccountStore pl_sharedAccountStore];
  v5 = [v4 cachedPrimaryAppleAccount];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B924;
  v6[3] = &unk_2D1A0;
  v6[4] = self;
  [v3 saveAccount:v5 withDataclassActions:0 doVerify:0 completion:v6];
}

- (void)_setSharedStreamsEnabled:(BOOL)a3
{
  v11 = +[PLAccountStore pl_sharedAccountStore];
  v5 = [v11 cachedPrimaryAppleAccount];
  v6 = [v5 provisionedDataclasses];
  v7 = kAccountDataclassSharedStreams;
  v8 = [v6 containsObject:kAccountDataclassSharedStreams];

  *(self + 195) = *(self + 195) & 0xFE | a3 & v8;
  v9 = +[PLAccountStore pl_sharedAccountStore];
  v10 = [v9 cachedPrimaryAppleAccount];
  [v10 setEnabled:*(self + 195) & 1 forDataclass:v7];

  [(SettingsBaseController *)self _saveUserAccount];
}

- (void)alchemizeButtonEnabledWasToggled:(id)a3 specifier:(id)a4
{
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 unsignedIntValue]);
  CFPreferencesSetAppValue(@"EnableAlchemizeButton", v4, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

- (id)alchemizeButtonEnabled:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableAlchemizeButton", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = [NSNumber numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v5 = PLPreferencesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"com.apple.mobileslideshow";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Enable Alchemize button default not set in domain %@. Defaulting toggle to ON", buf, 0xCu);
    }

    v4 = &__kCFBooleanTrue;
  }

  return v4;
}

- (void)highMotionReminderEnabledWasToggled:(id)a3 specifier:(id)a4
{
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 1 - [a3 unsignedIntValue]);
  CFPreferencesSetAppValue(@"com.apple.SpatialMedia.OverrideVideoImmersiveRecommendation", v4, @"Apple Global Domain");
  CFPreferencesAppSynchronize(@"Apple Global Domain");
}

- (id)highMotionReminderEnabled:(id)a3
{
  CFPreferencesAppSynchronize(@"Apple Global Domain");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"com.apple.SpatialMedia.OverrideVideoImmersiveRecommendation", @"Apple Global Domain", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = [NSNumber numberWithInt:AppBooleanValue == 0];
  }

  else
  {
    v5 = PLPreferencesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = @"Apple Global Domain";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Override Video Immersive Recommendation default not set in domain %@. Defaulting toggle to ON", buf, 0xCu);
    }

    v4 = &__kCFBooleanTrue;
  }

  return v4;
}

- (void)featuredContentAllowedWasToggled:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];
  PLSetFeaturedContentAllowed();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
  v16 = 0;
  v6 = [PXWidgetTimeline requestForYouWidgetTimelineReloadWithError:&v16];
  v7 = v16;
  v8 = PLUIGetLog();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "[FeaturedContentAllowedToggled] request to reload widget completed";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v11, v12, v10, buf, v13);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v7;
    v10 = "[FeaturedContentAllowedToggled] request to reload widget failed: %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 12;
    goto LABEL_6;
  }

  v14 = [(SettingsBaseController *)self systemPhotoLibrary];
  v15 = [v14 photoAnalysisClient];
  [v15 reloadWallpaperSuggestions:0 reply:&stru_2CDB8];
}

- (id)featuredContentAllowed:(id)a3
{
  v3 = PLIsFeaturedContentAllowed();

  return [NSNumber numberWithBool:v3];
}

- (void)contentPrivacyEnableWasToggled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 propertyForKey:PSKeyNameKey];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    *buf = 138412802;
    v30 = v10;
    v31 = 2048;
    v32 = self;
    v33 = 1024;
    v34 = [v6 BOOLValue];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> content privacy setting set to %d", buf, 0x1Cu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_C668;
  v27[3] = &unk_2CD70;
  v12 = v8;
  v28 = v12;
  v13 = objc_retainBlock(v27);
  if (([v6 BOOLValue] & 1) == 0)
  {
    objc_initWeak(buf, self);
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_TOUCHID_TITLE" value:&stru_2D398 table:@"Photos"];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_TITLE" value:&stru_2D398 table:@"Photos"];

    v18 = [(PXContentPrivacyController *)self->_privacyController authenticationType];
    v19 = 0;
    if (v18 > 3)
    {
      if (v18 - 6 >= 2)
      {
        if (v18 == &dword_4)
        {
          v20 = [NSBundle bundleForClass:objc_opt_class()];
          v21 = [v20 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_SUBTITLE_FACEID" value:&stru_2D398 table:@"Photos"];
          goto LABEL_14;
        }

        if (v18 == (&dword_4 + 1))
        {
          v20 = [NSBundle bundleForClass:objc_opt_class()];
          v21 = [v20 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_SUBTITLE_OPTIC" value:&stru_2D398 table:@"Photos"];
          goto LABEL_14;
        }

LABEL_15:
        privacyController = self->_privacyController;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_C6C8;
        v23[3] = &unk_2CD98;
        v25 = v13;
        objc_copyWeak(&v26, buf);
        v24 = v7;
        [(PXContentPrivacyController *)privacyController performUserAuthenticationIfNeededWithTitle:v15 passcodeTitle:v17 passcodeSubtitle:v19 completion:v23];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
        goto LABEL_16;
      }
    }

    else if (v18 >= 3)
    {
      if (v18 == (&dword_0 + 3))
      {
        v20 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_SUBTITLE_TOUCHID" value:&stru_2D398 table:@"Photos"];
LABEL_14:
        v19 = v21;

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_SUBTITLE_GENERAL" value:&stru_2D398 table:@"Photos"];
    goto LABEL_14;
  }

  (v13[2])(v13, v6);
LABEL_16:
}

- (id)contentPrivacyEnabled:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:PSKeyNameKey];
  keyExistsAndHasValidFormat = 0;
  v6 = CFPreferencesGetAppBooleanValue(v5, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v7 = [v4 propertyForKey:PSDefaultValueKey];
    v6 = [v7 BOOLValue];

    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138412802;
      v18 = v9;
      v19 = 2048;
      v20 = self;
      v21 = 1024;
      v22 = v6;
      v10 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> content privacy setting never set. Defaulting to: %d", buf, 0x1Cu);
    }
  }

  [(PXContentPrivacyController *)self->_privacyController updateAuthenticationTypeImmediately];
  if ([(PXContentPrivacyController *)self->_privacyController authenticationType]== &dword_0 + 1)
  {
    v11 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = @"NO";
      if (v6)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "User has no passcode or biometrics enabled, so forcing the settings switch to NO. Actual pref value is %{public}@", buf, 0xCu);
    }

    v6 = 0;
  }

  v14 = [NSNumber numberWithBool:v6];

  return v14;
}

- (id)videoAutoplayEnabled:(id)a3
{
  v4 = [a3 propertyForKey:PSKeyNameKey];
  keyExistsAndHasValidFormat = 0;
  IsVideoAutoplayEnabled = CFPreferencesGetAppBooleanValue(v4, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138412802;
      v13 = v7;
      v14 = 2048;
      v15 = self;
      v16 = 1024;
      v17 = IsVideoAutoplayEnabled;
      v8 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> video auto-play setting set to %d to honor AX setting", buf, 0x1Cu);
    }
  }

  v9 = [NSNumber numberWithBool:IsVideoAutoplayEnabled];

  return v9;
}

- (void)setTransferBehaviorUserPreference:(int64_t)a3
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceMediaTransferBehavior", [NSNumber numberWithInteger:?], @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
  v5 = [(SettingsBaseController *)self specifiers];
  sub_CB54(v5, a3);

  [(SettingsBaseController *)self reloadSpecifierID:@"TransferGroup"];
}

- (void)runPhotosRebuild:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:PSEnabledKey];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PHOTOS_REBUILD_ACTION_DETAILS" value:&stru_2D398 table:@"Photos"];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PHOTOS_REBUILD_DECLINE_ACTION_TITLE" value:&stru_2D398 table:@"Photos"];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"PHOTOS_REBUILD_CONFIRM_ACTION_TITLE" value:&stru_2D398 table:@"Photos"];

    v13 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_CEF0;
    v19 = &unk_2CD48;
    v20 = v4;
    v21 = self;
    v14 = [UIAlertAction actionWithTitle:v12 style:2 handler:&v16];
    v15 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:0, v16, v17, v18, v19];
    [v15 addAction:v13];
    [v15 addAction:v14];
    [(SettingsBaseController *)self presentViewController:v15 animated:1 completion:0];
  }
}

- (void)diagnosticServiceStateDidChange:(char)a3 outputURL:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6 == 1)
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 138412546;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2048;
      *&v16[14] = self;
      v15 = *&v16[4];
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "<%@: %p> Diagnose running", v16, 0x16u);
    }

    v11 = @"PHOTOS_DIAGNOSE_RUNNING";
  }

  else if (v6)
  {
    if (v6 == -1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v9 localizedFailureReason];
        *v16 = 138543362;
        *&v16[4] = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error running diagnose: %{public}@", v16, 0xCu);
      }

      v11 = @"PHOTOS_DIAGNOSE_UNAVAILABLE";
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 138412546;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2048;
      *&v16[14] = self;
      v13 = *&v16[4];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> Diagnose ready to run", v16, 0x16u);
    }

    v11 = @"PHOTOS_DIAGNOSE_RUN";
  }

  [(SettingsBaseController *)self updateDiagnoseButtonName:v11 enabled:v6 == 0, *v16, *&v16[16]];
}

- (void)updateDiagnoseButtonName:(id)a3 enabled:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D4D8;
  block[3] = &unk_2CD20;
  v7 = a4;
  block[4] = self;
  v6 = a3;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)generateCPLDiagnose:(id)a3
{
  v4 = [a3 propertyForKey:PSEnabledKey];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    if ([(SettingsBaseController *)self _useInternalDiagnostics])
    {
      v9 = +[LSApplicationWorkspace defaultWorkspace];
      v6 = [(SettingsBaseController *)self tapToRadarURL];
      [v9 openURL:v6 configuration:0 completionHandler:0];
    }

    else
    {
      [(SettingsBaseController *)self updateDiagnoseButtonName:@"PHOTOS_DIAGNOSE_REQUESTING" enabled:0];
      v7 = [(SettingsBaseController *)self diagnoseServiceConnection];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_D7A0;
      v11[3] = &unk_2CC30;
      v11[4] = self;
      v8 = [v7 remoteObjectProxyWithErrorHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_D89C;
      v10[3] = &unk_2CCF8;
      v10[4] = self;
      [v8 runDiagnoseWithOptions:&off_2F9C8 replyHandler:v10];
    }
  }
}

- (id)diagnoseServiceConnection
{
  diagnoseServiceConnection = self->_diagnoseServiceConnection;
  if (!diagnoseServiceConnection)
  {
    v4 = [NSXPCConnection alloc];
    v5 = [v4 initWithServiceName:CPLDiagnosticsService];
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDiagnoseServiceProtocol];
    [v5 setRemoteObjectInterface:v6];

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDiagnoseServiceClientProtocol];
    [v5 setExportedInterface:v7];

    [v5 setExportedObject:self];
    objc_initWeak(&location, self);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_DC44;
    v16 = &unk_2D1C8;
    objc_copyWeak(&v17, &location);
    v8 = objc_retainBlock(&v13);
    [v5 setInterruptionHandler:{v8, v13, v14, v15, v16}];
    [v5 setInvalidationHandler:v8];
    [v5 resume];
    objc_storeStrong(&self->_diagnoseServiceConnection, v5);
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138412546;
      v20 = v10;
      v21 = 2048;
      v22 = self;
      v11 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Diagnose service connected", buf, 0x16u);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    diagnoseServiceConnection = self->_diagnoseServiceConnection;
  }

  return diagnoseServiceConnection;
}

- (void)cloudPhotosEnableWasToggled:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  if (self->_cloudPhotosEnabled != v7)
  {
    if (v7)
    {
      v8 = +[PLPhotoLibrary systemPhotoLibrary];
      v9 = [v8 iTunesSyncedContentInfo];

      v10 = PLITunesSyncedContentInfoAssetCountKey;
      v11 = [v9 objectForKeyedSubscript:PLITunesSyncedContentInfoAssetCountKey];
      v12 = [v11 integerValue];

      if (v12)
      {
        v13 = [v9 objectForKeyedSubscript:PLITunesSyncedContentInfoVideoCountKey];
        v14 = [v13 BOOLValue];

        v15 = [v9 objectForKeyedSubscript:PLITunesSyncedContentInfoPhotoCountKey];
        v16 = [v15 BOOLValue];

        v17 = [v9 objectForKeyedSubscript:v10];
        v18 = [v17 integerValue];

        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_DEC0;
        v22[3] = &unk_2D360;
        v22[4] = self;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_DF80;
        v20[3] = &unk_2D128;
        v20[4] = self;
        v21 = v6;
        v19 = [UIAlertController px_deleteITunesContentAlertWithAssetCount:v18 includesPhotos:v16 includesVideos:v14 actionHandler:v22 cancelHandler:v20];
        [(SettingsBaseController *)self presentViewController:v19 animated:1 completion:0];
      }

      else
      {
        [(SettingsBaseController *)self _enableCloudPhotosWithExitModeWarningIgnoringStorageLimits:0];
      }
    }

    else
    {
      [(SettingsBaseController *)self _beginCloudPhotosDisableFlow];
    }
  }
}

- (void)shouldShowPhotoLibraryInSearchWasToggled:(id)a3 specifier:(id)a4
{
  v5 = CFPreferencesCopyAppValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui");
  value = [NSMutableArray arrayWithArray:v5];

  v6 = PLMobileSlideshowBundleId;
  v7 = [value containsObject:PLMobileSlideshowBundleId];
  if (a3 && v7)
  {
    [value removeObject:v6];
  }

  else if ((a3 != 0) | v7 & 1)
  {
    [value addObject:v6];
  }

  CFPreferencesSetAppValue(@"SBSearchDisabledBundles", value, @"com.apple.spotlightui");
  CFPreferencesSynchronize(@"com.apple.spotlightui", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (id)shouldShowPhotoLibraryInSearch:(id)a3
{
  v3 = CFPreferencesCopyAppValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui");
  if (v3)
  {
    v4 = v3;
    v9.length = CFArrayGetCount(v3);
    v9.location = 0;
    v5 = CFArrayContainsValue(v4, v9, PLMobileSlideshowBundleId) == 0;
    CFRelease(v4);
    v6 = [NSNumber numberWithBool:v5];
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (void)sharedStreamsSwitchWasToggled:(id)a3 specifier:(id)a4
{
  v6 = a4;
  if (![a3 BOOLValue])
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SHAREDSTREAMS_TURN_OFF_CONFIRMATION_TITLE"];
    v11 = [v9 localizedStringForKey:v10 value:&stru_2D398 table:@"Photos"];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SHAREDSTREAMS_OK" value:&stru_2D398 table:@"Photos"];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SHAREDSTREAMS_CANCEL" value:&stru_2D398 table:@"Photos"];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_E48C;
    v17[3] = &unk_2CCD0;
    v17[4] = self;
    v18 = v6;
    [(SettingsBaseController *)self _confirmWithTitle:0 message:v11 confirmationButtonTitle:v13 cancelButtonTtle:v15 completion:v17];

LABEL_6:
    goto LABEL_7;
  }

  if ((*(self + 195) & 2) == 0)
  {
    v7 = +[PLAccountStore pl_sharedAccountStore];
    v8 = [v7 cachedPrimaryAppleAccount];

    if (!v8)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = objc_opt_class();
        v21 = 2048;
        v22 = self;
        v16 = v20;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "<%@: %p> Can't enable shared streams without an account!", buf, 0x16u);
      }

      goto LABEL_6;
    }
  }

  [(SettingsBaseController *)self _setSharedStreamsEnabled:1];
LABEL_7:
}

- (void)photoLibraryDidBecomeUnavailable:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E564;
  v5[3] = &unk_2D128;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_handleDeferredPushIdentifier
{
  if (!self->_deferredPushIdentifier)
  {
    return;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3 - self->_deferredPushTimeIntervalSinceReferenceDate;
  if (v4 <= 3.0)
  {
    v10 = [(SettingsBaseController *)self specifiers];
    v11 = [v10 specifierForID:self->_deferredPushIdentifier];

    if (v11)
    {
      v12 = [v11 propertyForKey:PSEnabledKey];
      v13 = [v12 BOOLValue];

      v14 = PLUIGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v16 = objc_opt_class();
          deferredPushIdentifier = self->_deferredPushIdentifier;
          v26 = 138412802;
          v27 = v16;
          v28 = 2048;
          v29 = self;
          v30 = 2114;
          v31 = deferredPushIdentifier;
          v18 = v16;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "<%@: %p> Execute deferred push for specifier: %{public}@", &v26, 0x20u);
        }

        v19 = self->_deferredPushIdentifier;
        self->_deferredPushIdentifier = 0;

        [(SettingsBaseController *)self handlePendingURL];
        goto LABEL_17;
      }

      if (v15)
      {
        v24 = objc_opt_class();
        v25 = self->_deferredPushIdentifier;
        v26 = 138412802;
        v27 = v24;
        v28 = 2048;
        v29 = self;
        v30 = 2114;
        v31 = v25;
        v22 = v24;
        v23 = "<%@: %p> Keep deferring push for DISABLED specifier: %{public}@";
        goto LABEL_15;
      }
    }

    else
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = self->_deferredPushIdentifier;
        v26 = 138412802;
        v27 = v20;
        v28 = 2048;
        v29 = self;
        v30 = 2114;
        v31 = v21;
        v22 = v20;
        v23 = "<%@: %p> Keep deferring push for MISSING specifier: %{public}@";
LABEL_15:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v23, &v26, 0x20u);
      }
    }

LABEL_17:
    return;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = self->_deferredPushIdentifier;
    v26 = 138413058;
    v27 = v6;
    v28 = 2048;
    v29 = self;
    v30 = 2114;
    v31 = v7;
    v32 = 2048;
    v33 = v4;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Deferred push for specifier: %{public}@, TIMED OUT after %.2f s", &v26, 0x2Au);
  }

  v9 = self->_deferredPushIdentifier;
  self->_deferredPushIdentifier = 0;

  self->_deferredPushTimeIntervalSinceReferenceDate = 0.0;
  [(SettingsBaseController *)self clearPendingURL];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  v4 = a3;
  v5 = +[MSSSharedLibraryBaseController buttonIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [(SettingsBaseController *)self specifiers];
    v7 = [v6 specifierForID:v5];

    v8 = [v7 propertyForKey:PSEnabledKey];
    v9 = [v8 BOOLValue];

    v10 = PLUIGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412802;
        v21 = objc_opt_class();
        v22 = 2048;
        v23 = self;
        v24 = 2114;
        v25 = v5;
        v12 = v21;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> No need to defer push for specifier: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 138412802;
        v21 = objc_opt_class();
        v22 = 2048;
        v23 = self;
        v24 = 2114;
        v25 = v5;
        v16 = v21;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Schedule deferred push for specifier: %{public}@", buf, 0x20u);
      }

      objc_storeStrong(&self->_deferredPushIdentifier, v5);
      +[NSDate timeIntervalSinceReferenceDate];
      self->_deferredPushTimeIntervalSinceReferenceDate = v17;
    }

    v15 = v9 ^ 1;
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = objc_opt_class();
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v14 = v21;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> No support for deferring push for specifier: %{public}@", buf, 0x20u);
    }

    v19.receiver = self;
    v19.super_class = SettingsBaseController;
    v15 = [(SettingsBaseController *)&v19 shouldDeferPushForSpecifierID:v4];
  }

  return v15;
}

- (void)_setupSharedLibrarySettings
{
  v3 = [[MSSSharedLibraryBaseController alloc] initWithSettingsBaseController:self];
  sharedLibrarySettingsController = self->_sharedLibrarySettingsController;
  self->_sharedLibrarySettingsController = v3;

  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosEnabled:self->_cloudPhotosEnabled];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:self->_isCPLInExitMode];
  v5 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosStatus:v5];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = +[PLPhotoLibrary systemPhotoLibrary];
  PLShouldShowSharedLibrarySetting();

  *(v8 + 24) = *(v12 + 24) ^ 1;
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

- (void)_setupCPLStatus
{
  v6 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
  v3 = CPLStatusFromPathManager();
  cplStatus = self->_cplStatus;
  self->_cplStatus = v3;

  [(CPLStatus *)self->_cplStatus setDelegate:self];
  v5 = [(CPLStatus *)self->_cplStatus exitDeleteTime];
  self->_isCPLInExitMode = v5 != 0;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SettingsBaseController;
  [(SettingsBaseController *)&v3 viewDidLoad];
  [(SettingsBaseController *)self _updateDiagnoseSpecifier];
  if ((*(self + 195) & 2) != 0)
  {
    [(SettingsBaseController *)self _getPhotosCloudSpaceInBytes];
  }
}

- (void)_updateDiagnoseSpecifier
{
  v3 = [(SettingsBaseController *)self specifierForID:@"photosDiagnose"];
  if (v3)
  {
    if ([(SettingsBaseController *)self _useInternalDiagnostics])
    {
      [(SettingsBaseController *)self updateDiagnoseButtonName:@"PHOTOS_DIAGNOSE_RUN" enabled:1];
    }

    else
    {
      [(SettingsBaseController *)self updateDiagnoseButtonName:@"PHOTOS_DIAGNOSE_CHECKING_STATUS" enabled:0];
      v4 = [(SettingsBaseController *)self diagnoseServiceConnection];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F374;
      v7[3] = &unk_2CC30;
      v7[4] = self;
      v5 = [v4 remoteObjectProxyWithErrorHandler:v7];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_F388;
      v6[3] = &unk_2CC58;
      v6[4] = self;
      [v5 checkStateWithReplyHandler:v6];
    }
  }
}

- (void)reloadSpecifiers
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Reload specifiers", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SettingsBaseController;
  [(SettingsBaseController *)&v5 reloadSpecifiers];
  [(SettingsBaseController *)self _updateDiagnoseSpecifier];
  [(SettingsBaseController *)self _handleDeferredPushIdentifier];
}

- (BOOL)_shouldHideCPL
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = +[PLAccountStore pl_sharedAccountStore];
  v5 = [v4 cachedPrimaryAppleAccount];

  if (v5)
  {
    v6 = [v5 provisionedDataclasses];
    v7 = [v6 containsObject:kAccountDataclassCloudPhotos];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 BOOLRestrictionForFeature:MCFeatureCloudPhotoLibraryAllowed];
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 ^ 1;
  }

  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v8 == 2;
    v12 = objc_opt_class();
    v16 = 138413314;
    v13 = @"Nope.";
    v18 = 2048;
    v17 = v12;
    if (v9)
    {
      v13 = @"Yes!";
    }

    v19 = self;
    v20 = 2112;
    v21 = v13;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v11;
    v14 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Should hide iCPL: %@ (provisioned: %d, restricted: %d)", &v16, 0x2Cu);
  }

  return v9;
}

- (id)tapToRadarURL
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics" forKeyedSubscript:@"ExtensionIdentifiers"];
  [v2 setObject:@"630529" forKeyedSubscript:@"ComponentID"];
  [v2 setObject:@"Photos (New Bugs)" forKeyedSubscript:@"ComponentName"];
  [v2 setObject:@"iOS" forKeyedSubscript:@"ComponentVersion"];
  v3 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:{v9, v15}];
        v11 = [NSURLQueryItem queryItemWithName:v9 value:v10];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v12 setQueryItems:v3];
  v13 = [v12 URL];

  return v13;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SettingsBaseController *)self _initializeSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (BOOL)_useInternalDiagnostics
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F948;
  block[3] = &unk_2D360;
  block[4] = self;
  if (qword_336D8 != -1)
  {
    dispatch_once(&qword_336D8, block);
  }

  return byte_336D0;
}

- (BOOL)_isAppleInternal
{
  if (qword_336C8 != -1)
  {
    dispatch_once(&qword_336C8, &stru_2CC08);
  }

  return byte_336C0;
}

- (PHPhotoLibrary)systemPhotoLibrary
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  systemPhotoLibrary = self->_systemPhotoLibrary;
  if (!systemPhotoLibrary)
  {
    v4 = [PHPhotoLibrary alloc];
    v5 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v6 = [v4 initWithPhotoLibraryURL:v5];
    v7 = self->_systemPhotoLibrary;
    self->_systemPhotoLibrary = v6;

    [(PHPhotoLibrary *)self->_systemPhotoLibrary openAndWaitWithUpgrade:0 error:0];
    [(PHPhotoLibrary *)self->_systemPhotoLibrary registerAvailabilityObserver:self];
    systemPhotoLibrary = self->_systemPhotoLibrary;
  }

  return systemPhotoLibrary;
}

- (SettingsBaseController)init
{
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = self;
    v4 = v18;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Init", buf, 0x16u);
  }

  v16.receiver = self;
  v16.super_class = SettingsBaseController;
  v5 = [(SettingsBaseController *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SettingsBaseController *)v5 _shownFromAccountSettings];
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 195) = *(v6 + 195) & 0xFD | v8;
    if (v7)
    {
      [(SettingsBaseController *)v6 _initializeCPLStatusProvider];
      cloudStorageString = v6->_cloudStorageString;
      v6->_cloudStorageString = &stru_2D398;
    }

    v6->_shouldHideTransferBehaviors = 0;
    v10 = +[MCProfileConnection sharedConnection];
    v6->_accountModificationAllowed = [v10 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] != 2;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v6 selector:"_applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    [(SettingsBaseController *)v6 _initializeCPLStatusProvider];
    v13 = [[PXContentPrivacyController alloc] initWithLogIdentifier:@"Preferences"];
    privacyController = v6->_privacyController;
    v6->_privacyController = v13;

    [(SettingsBaseController *)v6 _setupCPLStatus];
    [(SettingsBaseController *)v6 _setupSharedLibrarySettings];
  }

  return v6;
}

+ (id)filterAndConfigureSpecifiers:(id)a3 shownFromAccountSettings:(BOOL)a4 cloudPhotosEnabled:(BOOL)a5 cplKeepOriginals:(BOOL)a6 isCPLInExitMode:(BOOL)a7 cplDaysUntilExit:(int64_t)a8 shouldHideCPL:(BOOL)a9 shouldHideTransferBehaviors:(BOOL)a10 cloudPhotosPaused:(BOOL)a11 canEnableSharedStreams:(BOOL)a12 cplStatus:(id)a13 cplActionPerformer:(id)a14 showPhotosDiagnoseButton:(BOOL)a15 showPhotosRebuildButton:(BOOL)a16 accountModificationAllowed:(BOOL)a17 isOLEDDevice:(BOOL)a18 wantsPhotosAppSpecificSettings:(BOOL)a19 isLocationBeingOverridden:(BOOL)a20 currentAuthenticationType:(int64_t)a21 systemPolicyOptions:(unint64_t)a22 bundleIdentifier:(id)a23 transferBehaviorUserPreference:(int64_t)a24 sharedLibraryInvitationSpecifiers:(id)a25 sharedLibrarySettingsSpecifiers:(id)a26 instanceLogInfo:(id)a27 featureDescriptionCellSupported:(BOOL)a28
{
  v206 = a7;
  v207 = a4;
  v210 = a6;
  v211 = a5;
  v213 = a3;
  v202 = a13;
  objc_initWeak(&location, a14);
  v194 = a23;
  v201 = a25;
  v209 = a26;
  v205 = a27;
  v28 = [v213 specifierForID:@"photosDiagnose"];
  v29 = [v213 specifierForID:@"photosRebuild"];
  v30 = objc_alloc_init(NSMutableArray);
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  if (v28 && !a15)
  {
    v31 = PLUIGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "<%@> Hiding internal Photos diagnose option", buf, 0xCu);
    }

    [v30 addObject:v28];
  }

  if (v29 && !a16)
  {
    v32 = PLUIGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "<%@> Hiding internal Photos rebuild option", buf, 0xCu);
    }

    [v30 addObject:v29];
  }

  if ([v30 count] >= 2)
  {
    v33 = [v213 specifierForID:@"photosDiagnoseTitleGroup"];
    if (v33)
    {
      [v30 addObject:v33];
    }
  }

  if ([v30 count])
  {
    [v213 removeObjectsInArray:v30];
  }

  v203 = [v213 specifierForID:@"iCloudOptimizeStorageOption"];
  v34 = +[UIDevice currentDevice];
  v35 = [v34 model];
  v199 = [@"ICLOUDPHOTOS_OPTIMIZE_STORAGE_" stringByAppendingString:v35];

  v36 = PULocalizedString();
  [v203 setName:v36];
  v191 = v36;
  v197 = [v213 specifierForID:@"iCloudKeepOriginalsGroup"];
  v37 = sub_5530(v210, v206);
  v193 = PSFooterTextGroupKey;
  [v197 setProperty:v37 forKey:?];
  v190 = v37;
  v195 = [v213 specifierForID:@"iCloudPhotosTitleGroup"];
  v38 = objc_loadWeakRetained(&location);
  sub_57A0(v195, v206, v211, v210, a8, v207, v38);

  v39 = [v213 specifierForID:@"VideoAutoplaySwitch"];
  v212 = PSAllowMultilineTitleKey;
  [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
  v189 = v39;
  v40 = [v213 specifierForID:@"VideoAutoloopSwitch"];
  [v40 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v188 = v40;
  v41 = [v213 specifierForID:@"ImageModulationSwitch"];
  [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v187 = v41;
  v42 = [v213 specifierForID:@"ResetBlacklistedMemoryFeatures"];
  [v42 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v43 = [v213 specifierForID:@"ResetPeopleFeedback"];
  [v43 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v44 = [v213 specifierForID:@"PhotosPrivacyOverview"];
  v45 = objc_loadWeakRetained(&location);
  v46 = v44;
  objc_initWeak(buf, v45);
  v47 = +[OBBundleManager sharedManager];
  v48 = [v47 bundleWithIdentifier:@"com.apple.onboarding.photos"];

  v49 = [v48 privacyFlow];
  v50 = [v49 localizedButtonTitle];
  v51 = [v50 rangeOfString:v50];
  v53 = v52;
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  [v46 setProperty:v55 forKey:PSFooterCellClassGroupKey];

  [v46 setProperty:v50 forKey:PSFooterHyperlinkViewTitleKey];
  v243.location = v51;
  v243.length = v53;
  v56 = NSStringFromRange(v243);
  [v46 setProperty:v56 forKey:PSFooterHyperlinkViewLinkRangeKey];

  WeakRetained = objc_loadWeakRetained(buf);
  v58 = [NSValue valueWithNonretainedObject:WeakRetained];
  [v46 setProperty:v58 forKey:PSFooterHyperlinkViewTargetKey];

  v59 = NSStringFromSelector("_privacyButtonPressed:");
  [v46 setProperty:v59 forKey:PSFooterHyperlinkViewActionKey];

  objc_destroyWeak(buf);
  v239[0] = @"iCloudKeepOriginalsGroup";
  v239[1] = @"iCloudKeepOriginalsOption";
  v239[2] = @"iCloudOptimizeStorageOption";
  v60 = [NSArray arrayWithObjects:v239 count:3];
  v204 = [v213 mss_specifiersWithIdentifiers:v60];

  sub_7710(v204, v210);
  if (!v211)
  {
    v61 = PLUIGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "<%@> Hiding iCPL conditional specifiers", buf, 0xCu);
    }

    [v213 removeObjectsInArray:v204];
  }

  if (+[MSSCellularDataSettingsController shouldShowCellularDataSettings])
  {
    if (!MGGetBoolAnswer())
    {
      goto LABEL_28;
    }

    v62 = [v213 specifierForID:@"CellularDataGroup"];
    v63 = [NSBundle bundleForClass:objc_opt_class()];
    v64 = [v63 localizedStringForKey:@"USE_CELLULAR_DATA_FOOTER_WLAN" value:&stru_2D398 table:@"Photos"];

    [v62 setProperty:v64 forKey:v193];
    v65 = [v213 specifierForID:@"CellularDataLinkList"];
    v66 = [NSBundle bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"USE_CELLULAR_DATA_LABEL_WLAN" value:&stru_2D398 table:@"Photos"];

    [v65 setName:v67];
  }

  else
  {
    v62 = [v213 mss_specifiersWithIdentifiers:&off_2FA08];
    v68 = PLUIGetLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "<%@> Hiding cellular specifiers", buf, 0xCu);
    }

    [v213 removeObjectsInArray:v62];
  }

LABEL_28:
  if (a10)
  {
    v238[0] = @"TransferGroup";
    v238[1] = @"TransferAutomaticOption";
    v238[2] = @"TransferKeepOriginalsOption";
    v69 = [NSArray arrayWithObjects:v238 count:3];
    v70 = [v213 mss_specifiersWithIdentifiers:v69];

    v71 = PLUIGetLog();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "<%@> Hiding all Transfer behavior specifiers", buf, 0xCu);
    }

    [v213 removeObjectsInArray:v70];
  }

  else
  {
    sub_CB54(v213, a24);
  }

  if (a9)
  {
    v237[0] = @"iCloudPhotosTitleGroup";
    v237[1] = @"iCloudPhotosSwitch";
    v237[2] = @"iCloudKeepOriginalsGroup";
    v237[3] = @"iCloudOptimizeStorageOption";
    v237[4] = @"iCloudKeepOriginalsOption";
    v72 = [NSArray arrayWithObjects:v237 count:5];
    v73 = [v213 mss_specifiersWithIdentifiers:v72];

    v74 = PLUIGetLog();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "<%@> Hiding all iCPL specifiers", buf, 0xCu);
    }

    [v213 removeObjectsInArray:v73];
  }

  if ([v209 count] && (objc_msgSend(v209, "firstObject"), v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v75, "identifier"), v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v213, "indexOfSpecifierWithID:", v76) == 0x7FFFFFFFFFFFFFFFLL, v76, v75, v77))
  {
    v78 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v201 count]);
    [v213 insertObjects:v201 atIndexes:v78];
    v79 = [v201 lastObject];
    if (a9)
    {
      v80 = v213;
      v81 = [v209 mutableCopy];
      [v81 addObjectsFromArray:v213];
      v82 = v81;
      v213 = v82;
    }

    else
    {
      v236[0] = @"iCloudPhotosTitleGroup";
      v236[1] = @"iCloudPhotosSwitch";
      v236[2] = @"iCloudKeepOriginalsGroup";
      v236[3] = @"iCloudOptimizeStorageOption";
      v236[4] = @"iCloudKeepOriginalsOption";
      v83 = [NSArray arrayWithObjects:v236 count:5];
      v82 = [v83 arrayByAddingObjectsFromArray:&off_2FA20];

      v84 = [v213 mss_specifiersWithIdentifiers:v82];
      v80 = [v84 lastObject];

      [v213 ps_insertObjectsFromArray:v209 afterObject:v80];
    }
  }

  else
  {
    v79 = 0;
  }

  v200 = v79;
  if (!a12)
  {
    v85 = PLUIGetLog();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v205;
      _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "<%@> Disabling Shared Albums specifiers", buf, 0xCu);
    }

    v86 = [v213 specifierForID:@"SharedStreamsSwitch"];
    [v86 setProperty:kCFBooleanFalse forKey:PSEnabledKey];
  }

  if (!a17)
  {
    [v213 mss_specifiersWithIdentifiers:&off_2FA38];
    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v87 = v219 = 0u;
    v88 = [v87 countByEnumeratingWithState:&v218 objects:v235 count:16];
    if (v88)
    {
      v89 = *v219;
      v90 = PSEnabledKey;
      do
      {
        for (i = 0; i != v88; i = i + 1)
        {
          if (*v219 != v89)
          {
            objc_enumerationMutation(v87);
          }

          [*(*(&v218 + 1) + 8 * i) setProperty:kCFBooleanFalse forKey:v90];
        }

        v88 = [v87 countByEnumeratingWithState:&v218 objects:v235 count:16];
      }

      while (v88);
    }
  }

  if (v207)
  {
    v92 = [v209 arrayByAddingObjectsFromArray:v201];
    v93 = v213;
    v94 = v92;
    v95 = PLUIGetLog();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = objc_opt_class();
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v96;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "<%@> Hiding all non photo stream or iCPL specifiers", buf, 0xCu);
    }

    v97 = objc_alloc_init(NSMutableSet);
    v242[0] = @"iCloudPhotosTitleGroup";
    v242[1] = @"iCloudPhotosSwitch";
    v242[2] = @"iCloudKeepOriginalsGroup";
    v242[3] = @"iCloudOptimizeStorageOption";
    v242[4] = @"iCloudKeepOriginalsOption";
    v98 = [NSArray arrayWithObjects:v242 count:5];
    [v97 addObjectsFromArray:v98];

    [v97 addObjectsFromArray:&off_2FAC8];
    [v97 addObjectsFromArray:&off_2FAE0];
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v99 = v94;
    v100 = [v99 countByEnumeratingWithState:&v227 objects:buf count:16];
    if (v100)
    {
      v101 = *v228;
      do
      {
        for (j = 0; j != v100; j = j + 1)
        {
          if (*v228 != v101)
          {
            objc_enumerationMutation(v99);
          }

          v103 = [*(*(&v227 + 1) + 8 * j) identifier];
          [v97 addObject:v103];
        }

        v100 = [v99 countByEnumeratingWithState:&v227 objects:buf count:16];
      }

      while (v100);
    }

    v104 = [v93 copy];
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v105 = v104;
    v106 = [v105 countByEnumeratingWithState:&v223 objects:v240 count:16];
    if (v106)
    {
      v107 = *v224;
      do
      {
        for (k = 0; k != v106; k = k + 1)
        {
          if (*v224 != v107)
          {
            objc_enumerationMutation(v105);
          }

          v109 = *(*(&v223 + 1) + 8 * k);
          v110 = [v109 identifier];
          v111 = [v97 containsObject:v110];

          if ((v111 & 1) == 0)
          {
            [v93 removeObject:v109];
          }
        }

        v106 = [v105 countByEnumeratingWithState:&v223 objects:v240 count:16];
      }

      while (v106);
    }
  }

  v112 = [v213 specifierForID:@"FeaturedContentAllowedSwitch"];
  [v112 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];

  if (!v207)
  {
    v113 = [v213 mss_specifiersWithIdentifiers:&off_2FA68];
    [v213 removeObjectsInArray:v113];
    goto LABEL_89;
  }

  v113 = [v213 specifierForID:@"iCloudPhotosTitleGroup"];
  [v213 removeObject:v113];
  v114 = [v213 mss_specifiersWithIdentifiers:&off_2FA50];
  [v213 removeObjectsInArray:v114];
  v208 = [v213 specifierForID:@"iCloudPhotosAction"];
  v115 = sub_4158(v202);
  [v208 setName:v115];

  if (!sub_4360(v202, v211, 1))
  {
    [v213 removeObject:v208];
  }

  v116 = [v213 specifierForID:@"iCloudPhotosItems"];
  v117 = [v213 specifierForID:@"cloudPhotosStatus"];
  v234[0] = v116;
  v196 = v117;
  v234[1] = v117;
  v198 = [NSArray arrayWithObjects:v234 count:2];
  if (v211)
  {
    if (!v206)
    {
      goto LABEL_86;
    }
  }

  else
  {
    [v213 removeObjectsInArray:v198];
  }

  [v213 removeObject:v116];
LABEL_86:
  v118 = [v213 specifierForID:@"iCloudPhotosAccountTitleGroup"];
  v119 = objc_loadWeakRetained(&location);
  sub_57A0(v118, v206, v211, v210, a8, 1, v119);

  v120 = [v213 specifierForID:@"cloudPhotosStatusGroup"];
  v121 = objc_loadWeakRetained(&location);
  sub_35A0(v120, v202, v211, v121);

  if (!a28)
  {
    v122 = [v213 specifierForID:@"iCloudPhotosHeader"];
    [v122 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  }

  v123 = [v213 specifierForID:@"iCloudPhotosStorage"];
  [v123 setControllerLoadAction:"_cplStorageCellWasTapped:"];
  v124 = [v213 specifierForID:@"iCloudPhotosSwitch"];
  v125 = +[UIDevice currentDevice];
  v126 = [v125 model];
  v127 = [@"ICLOUDPHOTOS_MAINSWITCH_FORMAT_" stringByAppendingString:v126];

  v128 = [NSBundle bundleForClass:objc_opt_class()];
  v129 = [v128 localizedStringForKey:v127 value:&stru_2D398 table:@"Photos"];
  [v124 setName:v129];

LABEL_89:
  if ((PLDeviceSupportsEnhancedVisualSearch() & 1) == 0)
  {
    v233[0] = @"EnhancedVisualSearchGroup";
    v233[1] = @"VisualSearchSwitch";
    v130 = [NSArray arrayWithObjects:v233 count:2];
    v131 = [v213 mss_specifiersWithIdentifiers:v130];

    [v213 removeObjectsInArray:v131];
  }

  if (!a18)
  {
    v132 = v213;
    v133 = PLUIGetLog();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      v134 = objc_opt_class();
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v134;
      _os_log_impl(&dword_0, v133, OS_LOG_TYPE_DEFAULT, "<%@> Hiding image modulation specifiers", buf, 0xCu);
    }

    *&buf[0] = @"ImageModulationGroup";
    *(&buf[0] + 1) = @"ImageModulationSwitch";
    v135 = [NSArray arrayWithObjects:buf count:2];
    v136 = [v132 mss_specifiersWithIdentifiers:v135];
    [v132 removeObjectsInArray:v136];
  }

  v137 = +[UIDevice currentDevice];
  v138 = [v137 userInterfaceIdiom];

  if ((v138 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v139 = [v213 specifierForID:@"PhotosHiddenAlbumGroup"];
    v140 = [NSBundle bundleForClass:objc_opt_class()];
    v141 = [v140 localizedStringForKey:@"HIDDEN_ALBUM_GROUP_FOOTER_DESCRIPTION_IPAD" value:&stru_2D398 table:@"Photos"];

    [v139 setProperty:v141 forKey:v193];
  }

  v142 = +[UIDevice currentDevice];
  v143 = [v142 userInterfaceIdiom];

  if ((v143 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v144 = [v213 specifierForID:@"PhotosRecentlyViewedAndSharedAlbumGroup"];
    v145 = [NSBundle bundleForClass:objc_opt_class()];
    v146 = [v145 localizedStringForKey:@"RECENTLY_VIEWED_AND_SHARED_ALBUM_GROUP_FOOTER_DESCRIPTION_IPAD" value:&stru_2D398 table:@"Photos"];

    [v144 setProperty:v146 forKey:v193];
  }

  v147 = [v213 specifierForID:@"PhotosHiddenAlbumSwitch"];
  [v147 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v148 = [v213 specifierForID:@"PhotosRecentlyViewedAndSharedAlbumSwitch"];
  [v148 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v149 = +[PXContentPrivacySettings sharedInstance];
  v150 = [v149 simulationMode];

  if (v150 == &dword_0 + 2)
  {
    v151 = [v213 mss_specifiersWithIdentifiers:&off_2FA80];
    [v213 removeObjectsInArray:v151];
    goto LABEL_123;
  }

  v152 = 0;
  if (a21 > 3)
  {
    if (a21 <= 5)
    {
      v157 = [NSBundle bundleForClass:objc_opt_class()];
      if (a21 == 4)
      {
        v151 = [v157 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_FACEID" value:&stru_2D398 table:@"Photos"];

        v155 = [NSBundle bundleForClass:objc_opt_class()];
        [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_FACEID" value:&stru_2D398 table:@"Photos"];
      }

      else
      {
        v151 = [v157 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_OPTIC" value:&stru_2D398 table:@"Photos"];

        v155 = [NSBundle bundleForClass:objc_opt_class()];
        [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_OPTIC" value:&stru_2D398 table:@"Photos"];
      }
      v156 = ;
      goto LABEL_117;
    }

    if (a21 == 6)
    {
      v160 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v160 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_COMPANION_MAC" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_COMPANION_MAC" value:&stru_2D398 table:@"Photos"];
      goto LABEL_117;
    }

    v151 = 0;
    if (a21 == 7)
    {
      v158 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v158 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_COMPANION_VISION" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_COMPANION_VISION" value:&stru_2D398 table:@"Photos"];
LABEL_117:
      v152 = v156;
    }
  }

  else
  {
    if (a21 < 3)
    {
      v153 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = a21;
        _os_log_impl(&dword_0, v153, OS_LOG_TYPE_ERROR, "Settings: currentAuthenticationType is NEITHER Face ID or Touch ID (it's %tu). Falling back to showing 'Passcode' text.", buf, 0xCu);
      }

      v154 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v154 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_PASSCODE" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_PASSCODE" value:&stru_2D398 table:@"Photos"];
      goto LABEL_117;
    }

    v151 = 0;
    if (a21 == 3)
    {
      v159 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v159 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_TOUCHID" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_TOUCHID" value:&stru_2D398 table:@"Photos"];
      goto LABEL_117;
    }
  }

  v161 = [v213 specifierForID:@"PhotosContentPrivacySwitch"];
  [v161 setName:v151];
  [v161 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v162 = [v213 specifierForID:@"PhotosContentPrivacyGroup"];
  [v162 setProperty:v152 forKey:v193];
  if (a21 == 1)
  {
    v163 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = 1;
      _os_log_impl(&dword_0, v163, OS_LOG_TYPE_ERROR, "Settings: currentAuthenticationType is NEITHER Face ID or Touch ID (it's %lu). Setting the privacy switch to OFF, regardless of preference.", buf, 0xCu);
    }

    [v161 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

LABEL_123:
  v164 = [v213 specifierForID:@"iCloudPause"];
  v165 = [NSBundle bundleForClass:objc_opt_class()];
  v166 = SFLocalizableWAPIStringKeyForKey();
  v167 = [v165 localizedStringForKey:v166 value:&stru_2D398 table:@"Photos"];
  [v164 setName:v167];

  if (a22 && a19)
  {
    if (!v194)
    {
      v185 = +[NSAssertionHandler currentHandler];
      v186 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SettingsBaseController filterAndConfigureSpecifiers:shownFromAccountSettings:cloudPhotosEnabled:cplKeepOriginals:isCPLInExitMode:cplDaysUntilExit:shouldHideCPL:shouldHideTransferBehaviors:cloudPhotosPaused:canEnableSharedStreams:cplStatus:cplActionPerformer:showPhotosDiagnoseButton:showPhotosRebuildButton:accountModificationAllowed:isOLEDDevice:wantsPhotosAppSpecificSettings:isLocationBeingOverridden:currentAuthenticationType:systemPolicyOptions:bundleIdentifier:transferBehaviorUserPreference:sharedLibraryInvitationSpecifiers:sharedLibrarySettingsSpecifiers:instanceLogInfo:featureDescriptionCellSupported:]");
      [v185 handleFailureInFunction:v186 file:@"SettingsBaseController.m" lineNumber:1699 description:@"A bundle identifier must be provided by subclass if a system policy option has been provided"];
    }

    v168 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:v194];
    v169 = [v168 specifiersForPolicyOptions:a22 force:0];
    v170 = v169;
    if (v200)
    {
      [v213 ps_insertObjectsFromArray:v169 afterObject:?];
    }

    else
    {
      v171 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v169 count]);
      [v213 insertObjects:v170 atIndexes:v171];
    }
  }

  v172 = v213;
  v173 = [v172 specifierForID:@"HighMotionReminderEnabledTabTitle"];
  v174 = [v172 specifierForID:@"HighMotionReminderEnabledSwitch"];
  if (v173)
  {
    [v172 removeObject:v173];
  }

  if (v174)
  {
    [v172 removeObject:v174];
  }

  if (a19)
  {
    v175 = [v172 mss_specifiersWithIdentifiers:&off_2FA98];
  }

  else
  {
    v232[0] = @"PhotosHiddenAlbumGroup";
    v232[1] = @"PhotosHiddenAlbumSwitch";
    v232[2] = @"PhotosRecentlyViewedAndSharedAlbumGroup";
    v232[3] = @"PhotosRecentlyViewedAndSharedAlbumSwitch";
    v232[4] = @"SharedStreamsTitleGroup";
    v232[5] = @"SharedStreamsSwitch";
    v232[6] = @"PhotosContentPrivacyGroup";
    v232[7] = @"PhotosContentPrivacySwitch";
    v232[8] = @"AutoplayGroup";
    v232[9] = @"VideoAutoplaySwitch";
    v232[10] = @"VideoAutoloopSwitch";
    v232[11] = @"ImageModulationGroup";
    v232[12] = @"ImageModulationSwitch";
    v232[13] = @"MemoriesAndRelatedTabTitleGroup";
    v232[14] = @"ResetBlacklistedMemoryFeatures";
    v232[15] = @"ResetPeopleFeedback";
    v232[16] = @"MEMORIES_HOLIDAY_CALENDAR_EVENTS_SWITCH";
    v232[17] = @"FeaturedContentAllowedTabTitle";
    v232[18] = @"FeaturedContentAllowedSwitch";
    v232[19] = @"EnhancedVisualSearchGroup";
    v232[20] = @"VisualSearchSwitch";
    v176 = [NSArray arrayWithObjects:v232 count:21];
    v175 = [v172 mss_specifiersWithIdentifiers:v176];
  }

  if (!a20)
  {
    v177 = [v172 mss_specifiersWithIdentifiers:&off_2FAB0];
    v178 = [v175 arrayByAddingObjectsFromArray:v177];

    v175 = v178;
  }

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v179 = v175;
  v180 = [v179 countByEnumeratingWithState:&v214 objects:v231 count:16];
  if (v180)
  {
    v181 = *v215;
    do
    {
      for (m = 0; m != v180; m = m + 1)
      {
        if (*v215 != v181)
        {
          objc_enumerationMutation(v179);
        }

        [v172 removeObject:*(*(&v214 + 1) + 8 * m)];
      }

      v180 = [v179 countByEnumeratingWithState:&v214 objects:v231 count:16];
    }

    while (v180);
  }

  v183 = v172;
  objc_destroyWeak(&location);

  return v172;
}

+ (id)lastCPLSpecifierInSpecifiers:(id)a3 shownFromAccountSettings:(BOOL)a4
{
  if (a4)
  {
    v4 = [a3 mss_specifiersWithIdentifiers:&off_2F9F0];
    v5 = [v4 lastObject];
  }

  else
  {
    v5 = [a3 specifierForID:@"iCloudPhotosSwitch"];
  }

  return v5;
}

+ (void)setPhotoStreamsEnabledFromBuddyWorkflow:(id)a3
{
  v3 = [a3 BOOLValue];

  [PLPhotoLibrary setPhotoStreamEnabled:v3];
}

+ (void)setPhotoStreamsEnabledFromAccountSettings:(id)a3
{
  v3 = [a3 BOOLValue];

  [PLPhotoLibrary setPhotoStreamEnabled:v3];
}

@end
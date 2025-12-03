@interface SettingsBaseController
+ (id)filterAndConfigureSpecifiers:(id)specifiers shownFromAccountSettings:(BOOL)settings cloudPhotosEnabled:(BOOL)enabled cplKeepOriginals:(BOOL)originals isCPLInExitMode:(BOOL)mode cplDaysUntilExit:(int64_t)exit shouldHideCPL:(BOOL)l shouldHideTransferBehaviors:(BOOL)self0 cloudPhotosPaused:(BOOL)self1 canEnableSharedStreams:(BOOL)self2 cplStatus:(id)self3 cplActionPerformer:(id)self4 showPhotosDiagnoseButton:(BOOL)self5 showPhotosRebuildButton:(BOOL)self6 accountModificationAllowed:(BOOL)self7 isOLEDDevice:(BOOL)self8 wantsPhotosAppSpecificSettings:(BOOL)self9 isLocationBeingOverridden:(BOOL)overridden currentAuthenticationType:(int64_t)type systemPolicyOptions:(unint64_t)options bundleIdentifier:(id)identifier transferBehaviorUserPreference:(int64_t)preference sharedLibraryInvitationSpecifiers:(id)invitationSpecifiers sharedLibrarySettingsSpecifiers:(id)settingsSpecifiers instanceLogInfo:(id)info featureDescriptionCellSupported:(BOOL)supported;
+ (id)lastCPLSpecifierInSpecifiers:(id)specifiers shownFromAccountSettings:(BOOL)settings;
+ (void)setPhotoStreamsEnabledFromAccountSettings:(id)settings;
+ (void)setPhotoStreamsEnabledFromBuddyWorkflow:(id)workflow;
- (BOOL)_isAppleInternal;
- (BOOL)_isSettingsPaneInLocation:(int64_t)location;
- (BOOL)_needsChangeForSpecifiers:(id)specifiers shouldShow:(BOOL)show;
- (BOOL)_photoStreamAssetsWillBeDeletedIfTurnedOff;
- (BOOL)_sharedStreamsAssetsWillBeDeletedIfTurnedOff;
- (BOOL)_shouldHideCPL;
- (BOOL)_useInternalDiagnostics;
- (BOOL)_wantsInstalledPhotosAppSpecificOptions;
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (PHPhotoLibrary)systemPhotoLibrary;
- (SettingsBaseController)init;
- (id)_fetchBlockedMemoryFeatures;
- (id)_fetchDeniedSuggestions;
- (id)_fetchMemoriesWithUserFeedback;
- (id)_iCloudPhotosItems:(id)items;
- (id)_iCloudPhotosStatus:(id)status;
- (id)_initializeSpecifiers;
- (id)_nonLocalResourceInfo;
- (id)_personID;
- (id)_previousSpecifierIDForSpecifierID:(id)d;
- (id)_showSpinnerWithText:(id)text;
- (id)_viewForSpinnerPresentation;
- (id)alchemizeButtonEnabled:(id)enabled;
- (id)contentPrivacyEnabled:(id)enabled;
- (id)diagnoseServiceConnection;
- (id)featuredContentAllowed:(id)allowed;
- (id)highMotionReminderEnabled:(id)enabled;
- (id)shouldShowPhotoLibraryInSearch:(id)search;
- (id)specifiers;
- (id)tapToRadarURL;
- (id)videoAutoplayEnabled:(id)enabled;
- (int64_t)_daysUntilExit;
- (int64_t)_settingsDebugOverrideLocation;
- (void)_beginCloudPhotosDisableFlow;
- (void)_cancelDisableCloudPhotos;
- (void)_confirmCloudPhotosDisableWhilePrunedWithNonLocalResourceInfo:(id)info;
- (void)_confirmCloudPhotosDisableWithNonLocalResourceInfo:(id)info;
- (void)_confirmCloudPhotosDisableWithSyncInProgress;
- (void)_confirmDeletePrunedResourcesWithNonLocalResourceInfo:(id)info;
- (void)_confirmWithTitle:(id)title message:(id)message confirmationButtonTitle:(id)buttonTitle cancelButtonTtle:(id)ttle completion:(id)completion;
- (void)_continueWithoutStoragePurchase:(id)purchase;
- (void)_cplStorageCellWasTapped:(id)tapped;
- (void)_disableCloudPhotos;
- (void)_emitNavigationEvent;
- (void)_enableCloudPhotosIgnoringStorageLimits:(BOOL)limits;
- (void)_enableKeepOriginalsWithNonLocalResourceInfo:(id)info;
- (void)_filterAndConfigureSpecifiers:(id *)specifiers isAsync:(BOOL *)async;
- (void)_formatKeepOriginalsAndOptimizeSpecifiers;
- (void)_getPhotosCloudSpaceInBytes;
- (void)_handleDeferredPushIdentifier;
- (void)_hideDisplayedSpinner;
- (void)_initializeCPLStatusProvider;
- (void)_openBackupManagement:(id)management;
- (void)_openStorageManagement:(id)management;
- (void)_performICloudPhotosAction:(id)action;
- (void)_presentAlertExitModeBeforeCPLEnableWithCompletion:(id)completion;
- (void)_privacyButtonPressed:(id)pressed;
- (void)_saveUserAccount;
- (void)_setDisplayedSpinner:(id)spinner;
- (void)_setSharedStreamsEnabled:(BOOL)enabled;
- (void)_setupCPLStatus;
- (void)_setupSharedLibrarySettings;
- (void)_showSpinnerForDuration:(double)duration withText:(id)text;
- (void)_showStorageOptions;
- (void)_updateDiagnoseSpecifier;
- (void)_updatePhotosCloudSpace:(id)space error:(id)error;
- (void)_updateSharedLibrarySpecifiersAnimated:(BOOL)animated;
- (void)_updateSpecifiersForCPLEnablementChange;
- (void)_updateStatusActionLabelForSpecifier:(id)specifier reload:(BOOL)reload;
- (void)_updateStatusActionSpecifierVisibility;
- (void)alchemizeButtonEnabledWasToggled:(id)toggled specifier:(id)specifier;
- (void)cloudPhotosEnableWasToggled:(id)toggled specifier:(id)specifier;
- (void)contentPrivacyEnableWasToggled:(id)toggled specifier:(id)specifier;
- (void)diagnosticServiceStateDidChange:(char)change outputURL:(id)l error:(id)error;
- (void)featuredContentAllowedWasToggled:(id)toggled specifier:(id)specifier;
- (void)generateCPLDiagnose:(id)diagnose;
- (void)highMotionReminderEnabledWasToggled:(id)toggled specifier:(id)specifier;
- (void)manager:(id)manager didCompleteWithError:(id)error;
- (void)manager:(id)manager loadDidFailWithError:(id)error;
- (void)manager:(id)manager willPresentViewController:(id)controller;
- (void)managerDidCancel:(id)cancel;
- (void)navigationEventParameters:(id)parameters;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidBecomeUnavailable:(id)unavailable;
- (void)reloadSpecifiers;
- (void)resetBlacklistedMemoryFeatures;
- (void)resetPeopleFeedback;
- (void)runPhotosRebuild:(id)rebuild;
- (void)setTransferBehaviorUserPreference:(int64_t)preference;
- (void)sharedStreamsSwitchWasToggled:(id)toggled specifier:(id)specifier;
- (void)shouldShowPhotoLibraryInSearchWasToggled:(id)toggled specifier:(id)specifier;
- (void)statusDidChange:(id)change;
- (void)updateDiagnoseButtonName:(id)name enabled:(BOOL)enabled;
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

- (void)navigationEventParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = SettingsBaseControllerLocalizedStringResource(@"NAVIGATION_COMPONENT_APPS");
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  v6 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobileslideshow"];
  parametersCopy[2](parametersCopy, v5, v6);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (off_33238 != context)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SettingsBaseController.m" lineNumber:3053 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((*&changeCopy & 0x71C02BLL) != 0)
  {
    if (changeCopy)
    {
      [(SettingsBaseController *)self reloadSpecifierID:@"cloudPhotosStatus" animated:1];
    }

    if ((*&changeCopy & 0x700000) != 0)
    {
      [(SettingsBaseController *)self reloadSpecifierID:@"iCloudPhotosItems" animated:1];
    }

    if ((*&changeCopy & 0x1C008) != 0)
    {
      [(SettingsBaseController *)self _updateSharedLibrarySpecifiersAnimated:1];
    }

    if ((changeCopy & 0x20) != 0)
    {
      [(SettingsBaseController *)self _updateStatusActionSpecifierVisibility];
      v9 = [(SettingsBaseController *)self specifierForID:@"iCloudPhotosAction"];
      [(SettingsBaseController *)self _updateStatusActionLabelForSpecifier:v9 reload:1];
    }

    if ((changeCopy & 2) != 0)
    {
      v10 = [(SettingsBaseController *)self specifierForID:@"cloudPhotosStatusGroup"];
      status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
      sub_35A0(v10, status, self->_cloudPhotosEnabled, self);

      if ((changeCopy & 0x2000) != 0)
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

    systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
    v5 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:systemPhotoLibrary];
    v6 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:systemPhotoLibrary actionManager:v5 presentationStyle:1];
    cplUIStatusProvider = self->_cplUIStatusProvider;
    self->_cplUIStatusProvider = v6;

    [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider registerChangeObserver:self context:off_33238];
  }
}

- (void)_performICloudPhotosAction:(id)action
{
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  action = [status action];
  if (action)
  {
    actionConfirmationAlertTitle = [status actionConfirmationAlertTitle];
    if (actionConfirmationAlertTitle && (v7 = actionConfirmationAlertTitle, [status actionConfirmationAlertButtonTitle], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v9 userInterfaceIdiom];

      [status actionConfirmationAlertTitle];
      if (userInterfaceIdiom == &dword_0 + 1)
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

      actionConfirmationAlertButtonTitle = [status actionConfirmationAlertButtonTitle];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_3EF0;
      v29[3] = &unk_2D048;
      v19 = status;
      v30 = v19;
      v31 = action;
      v20 = [UIAlertAction actionWithTitle:actionConfirmationAlertButtonTitle style:0 handler:v29];
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
        actionTitle = [v23 actionTitle];
        *buf = 138543362;
        v33 = actionTitle;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Settings: Presenting alert with action with title: %{public}@", buf, 0xCu);
      }

      [(SettingsBaseController *)self presentViewController:v17 animated:1 completion:0];
    }

    else
    {
      v14 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        actionTitle2 = [status actionTitle];
        *buf = 138543362;
        v33 = actionTitle2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Settings: Performing action with title: %{public}@, no confirmation alert", buf, 0xCu);
      }

      (action)[2](action, status);
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

- (void)_updateStatusActionLabelForSpecifier:(id)specifier reload:(BOOL)reload
{
  reloadCopy = reload;
  specifierCopy = specifier;
  if (specifierCopy)
  {
    status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
    v8 = sub_4158(status);
    [specifierCopy setName:v8];

    if (reloadCopy)
    {
      [(SettingsBaseController *)self reloadSpecifier:specifierCopy animated:1];
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
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v4 = sub_4360(status, self->_cloudPhotosEnabled, (*(self + 195) >> 1) & 1);

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

- (void)_updatePhotosCloudSpace:(id)space error:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (!space || errorCopy)
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = objc_opt_class();
      v15 = 2048;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "<%@: %p> Error requesting iCloud Storage info: %@", &v13, 0x20u);
    }
  }

  else
  {
    [space longLongValue];
    v8 = NSLocalizedFileSizeDescription();
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = objc_opt_class();
      v15 = 2048;
      selfCopy2 = self;
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
    cachedPrimaryAppleAccount = [v3 cachedPrimaryAppleAccount];

    v5 = [[ICQCloudStorageDataController alloc] initWithAccount:cachedPrimaryAppleAccount];
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

- (id)_iCloudPhotosStatus:(id)status
{
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  stateDescription = [status stateDescription];

  if (!stateDescription)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    stateDescription = [v5 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_STATUS_PENDING" value:&stru_2D398 table:@"Photos"];
  }

  return stateDescription;
}

- (id)_iCloudPhotosItems:(id)items
{
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];

  if (status)
  {
    status2 = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
    numberOfPhotoAssets = [status2 numberOfPhotoAssets];
    numberOfVideoAssets = [status2 numberOfVideoAssets];
    numberOfOtherAssets = [status2 numberOfOtherAssets];
    if (self->_hasValidCPLCounts || &numberOfPhotoAssets[numberOfVideoAssets] != -numberOfOtherAssets)
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
  _settingsDebugOverrideLocation = [(SettingsBaseController *)self _settingsDebugOverrideLocation];
  if (_settingsDebugOverrideLocation >= 2)
  {
    return _settingsDebugOverrideLocation != 3;
  }

  return [(SettingsBaseController *)self _isSettingsPaneInLocation:1];
}

- (BOOL)_isSettingsPaneInLocation:(int64_t)location
{
  specifier = [(SettingsBaseController *)self specifier];
  v5 = [specifier objectForKeyedSubscript:@"PhotosSettingsLocation"];

  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  return v6 == location;
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
    lowercaseString = [v3 lowercaseString];
    v5 = [lowercaseString isEqualToString:@"app"];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      lowercaseString2 = [v3 lowercaseString];
      v8 = [lowercaseString2 isEqualToString:@"general"];

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

- (void)statusDidChange:(id)change
{
  changeCopy = change;
  exitDeleteTime = [changeCopy exitDeleteTime];
  v5 = exitDeleteTime != 0;

  isCPLInExitMode = self->_isCPLInExitMode;
  if (isCPLInExitMode != v5)
  {
    self->_isCPLInExitMode = v5;
    [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:exitDeleteTime != 0];
    [(SettingsBaseController *)self _getPhotosCloudSpaceInBytes];
  }

  cloudAssetCountPerType = [changeCopy cloudAssetCountPerType];
  allKeys = [cloudAssetCountPerType allKeys];
  v9 = [allKeys count] != 0;

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

- (void)manager:(id)manager didCompleteWithError:(id)error
{
  errorCopy = error;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%{public}@:%p> ICQUICloudStorageOffersManager failed with error: %@", &v7, 0x20u);
  }
}

- (void)managerDidCancel:(id)cancel
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> ICQUICloudStorageOffersManager was cancelled by the user", &v5, 0x16u);
  }
}

- (void)manager:(id)manager loadDidFailWithError:(id)error
{
  errorCopy = error;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%{public}@:%p> ICQUICloudStorageOffersManager load failed with error: %@", &v7, 0x20u);
  }
}

- (void)manager:(id)manager willPresentViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:101 primaryAction:0];
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  v8 = PULocalizedString();
  [controllerCopy setTitle:v8];
  if (self->_requireStorageUpgradeForCPL)
  {
    [controllerCopy px_removeFooterToolbar];
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
    [controllerCopy px_insertFooterToolbarWithItems:v13];
  }
}

- (int64_t)_daysUntilExit
{
  exitDeleteTime = [(CPLStatus *)self->_cplStatus exitDeleteTime];
  if (exitDeleteTime)
  {
    v3 = PXCPLNumberOfCalendarDaysUntilDate();
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (void)_openBackupManagement:(id)management
{
  v3 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Will navigate to iCloud Storage Settings", v4, 2u);
  }

  [PXSystemNavigation navigateToDestination:12 completion:&stru_2CFD0];
}

- (void)_openStorageManagement:(id)management
{
  v3 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Will navigate to iCloud Storage Settings", v4, 2u);
  }

  [PXSystemNavigation navigateToDestination:5 completion:&stru_2CFB0];
}

- (void)_privacyButtonPressed:(id)pressed
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.photos"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)_continueWithoutStoragePurchase:(id)purchase
{
  [(ICQUICloudStorageOffersManager *)self->_offersManager cancelLoad];

  [(SettingsBaseController *)self _enableCloudPhotosWithExitModeWarningIgnoringStorageLimits:1];
}

- (void)_updateSharedLibrarySpecifiersAnimated:(BOOL)animated
{
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosEnabled:self->_cloudPhotosEnabled];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:self->_isCPLInExitMode];
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosStatus:status];

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
    selfCopy = self;
    v4 = v17;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Will disable iCPL", buf, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ICLOUDPHOTOS_TURN_OFF_SPINNER_TEXT" value:&stru_2D398 table:@"Photos"];

  v7 = [(SettingsBaseController *)self _showSpinnerWithText:v6];
  [(SettingsBaseController *)self _setDisplayedSpinner:v7];
  view = [(SettingsBaseController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v10 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5F78;
  block[3] = &unk_2D128;
  v14 = v7;
  selfCopy2 = self;
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
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present ICQUICloudStorageOffersManager", &v8, 0x16u);
  }

  v4 = objc_alloc_init(ICQUICloudStorageOffersManager);
  offersManager = self->_offersManager;
  self->_offersManager = v4;

  [(ICQUICloudStorageOffersManager *)self->_offersManager setDelegate:self];
  v6 = self->_offersManager;
  navigationController = [(SettingsBaseController *)self navigationController];
  [(ICQUICloudStorageOffersManager *)v6 beginFlowWithNavigationController:navigationController modally:1];
}

- (void)_presentAlertExitModeBeforeCPLEnableWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v13 = completionCopy;
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

- (void)_enableCloudPhotosIgnoringStorageLimits:(BOOL)limits
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = objc_opt_class();
    v16 = 2048;
    selfCopy = self;
    v5 = v15;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> Handle request to enable iCPL", buf, 0x16u);
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ICLOUDPHOTOS_TURN_ON_SPINNER_TEXT" value:&stru_2D398 table:@"Photos"];

  v8 = [(SettingsBaseController *)self _showSpinnerWithText:v7];
  [(SettingsBaseController *)self _setDisplayedSpinner:v8];
  view = [(SettingsBaseController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v11 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v11 cachedPrimaryAppleAccount];

  v13 = v8;
  PLCanEnableCloudPhotoLibraryForAccount();
}

- (id)_personID
{
  v2 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v2 cachedPrimaryAppleAccount];
  aa_personID = [cachedPrimaryAppleAccount aa_personID];

  return aa_personID;
}

- (BOOL)_needsChangeForSpecifiers:(id)specifiers shouldShow:(BOOL)show
{
  firstObject = [specifiers firstObject];
  v7 = [(SettingsBaseController *)self indexOfSpecifier:firstObject];

  return (v7 != 0x7FFFFFFFFFFFFFFFLL) ^ show;
}

- (id)_previousSpecifierIDForSpecifierID:(id)d
{
  dCopy = d;
  v6 = [(NSArray *)self->_allPhotosSpecifiers indexOfSpecifierWithID:dCopy];
  specifiers = [(SettingsBaseController *)self specifiers];
  while (1)
  {
    v8 = [(NSArray *)self->_allPhotosSpecifiers objectAtIndex:--v6];
    identifier = [v8 identifier];
    v10 = [specifiers specifierForID:identifier];

    if (v10)
    {
      break;
    }
  }

  identifier2 = [v10 identifier];

  if (!identifier2)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SettingsBaseController.m" lineNumber:2311 description:@"Specifier ID doesn't have a previous Photos Specifier"];
  }

  return identifier2;
}

- (void)_formatKeepOriginalsAndOptimizeSpecifiers
{
  [(SettingsBaseController *)self _updateKeepOriginalsFooterTextAnimated:1];
  iCloudPhotoLibraryConditionalSpecifiers = self->_iCloudPhotoLibraryConditionalSpecifiers;
  systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
  sub_7710(iCloudPhotoLibraryConditionalSpecifiers, [systemPhotoLibrary isKeepOriginalsEnabled]);
}

- (void)_confirmWithTitle:(id)title message:(id)message confirmationButtonTitle:(id)buttonTitle cancelButtonTtle:(id)ttle completion:(id)completion
{
  titleCopy = title;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_79D0;
  v27[3] = &unk_2CEF0;
  completionCopy = completion;
  v28 = completionCopy;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  v16 = [UIAlertAction actionWithTitle:ttle style:1 handler:v27];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_79E4;
  v25 = &unk_2CEF0;
  v17 = completionCopy;
  v26 = v17;
  v18 = [UIAlertAction actionWithTitle:buttonTitleCopy style:0 handler:&v22];

  v19 = [UIDevice currentDevice:v22];
  userInterfaceIdiom = [v19 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  }

  else
  {
    v21 = [UIAlertController alertControllerWithTitle:messageCopy message:0 preferredStyle:0];

    [v21 setAccessibilityLabel:titleCopy];
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

- (void)_confirmCloudPhotosDisableWithNonLocalResourceInfo:(id)info
{
  infoCopy = info;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

  v7 = +[UIDevice currentDevice];
  model = [v7 model];

  v9 = [infoCopy objectForKeyedSubscript:@"kCPLNonLocalOriginalsCountKey"];
  integerValue = [v9 integerValue];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  if (integerValue < 2)
  {
    v15 = [@"ICLOUDPHOTOS_DISABLE_DISK_PRESSURE_PRUNED_MESSAGE_SINGULAR_" stringByAppendingString:model];
    v14 = [v11 localizedStringForKey:v15 value:&stru_2D398 table:@"Photos"];
  }

  else
  {
    v12 = [@"ICLOUDPHOTOS_DISABLE_DISK_PRESSURE_PRUNED_MESSAGE_PLURAL_" stringByAppendingString:model];
    v13 = [v11 localizedStringForKey:v12 value:&stru_2D398 table:@"Photos"];

    v27 = integerValue;
    v14 = PFLocalizedStringWithValidatedFormat();
    v11 = v13;
  }

  v28 = model;
  v16 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:model];
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
  v20 = infoCopy;
  v31 = v20;
  v21 = [UIAlertAction actionWithTitle:v18 style:2 handler:v30];
  v22 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v22 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  model = [v5 model];
  v7 = [@"ICLOUDPHOTOS_DISABLE_SYNCING_MESSAGE_" stringByAppendingString:model];

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
  userInterfaceIdiom = [v16 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (void)_enableKeepOriginalsWithNonLocalResourceInfo:(id)info
{
  infoCopy = info;
  v5 = PLCPLLocalStorageAvailableForResources();
  v6 = [infoCopy objectForKeyedSubscript:@"kCPLNonLocalOriginalsFileSizeKey"];

  longLongValue = [v6 longLongValue];
  v8 = &longLongValue[-v5];
  if (longLongValue <= v5)
  {
    v32 = [(SettingsBaseController *)self specifierForID:@"iCloudKeepOriginalsOption"];
    [(SettingsBaseController *)self keepOriginals:v32];
  }

  else
  {
    v34 = MGCopyAnswer();
    v9 = [v34 objectForKey:kMGQDiskUsageTotalDataCapacity];
    longLongValue2 = [v9 longLongValue];

    v11 = +[PLPhotoLibrary systemPhotoLibrary];
    estimatedLibrarySizes = [v11 estimatedLibrarySizes];

    v12 = [estimatedLibrarySizes objectForKeyedSubscript:&off_2FAF8];
    longLongValue3 = [v12 longLongValue];

    v14 = &longLongValue[longLongValue3];
    v15 = +[UIDevice currentDevice];
    model = [v15 model];
    if (v14 <= longLongValue2)
    {
      v17 = @"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_MESSAGE_FORMAT_";
    }

    else
    {
      v17 = @"ICLOUDPHOTOS_DISABLE_PROMPT_INSUFFICIENT_SPACE_MESSAGE_IMPOSSIBLE_FORMAT_";
    }

    v18 = [(__CFString *)v17 stringByAppendingString:model];

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

- (void)_confirmDeletePrunedResourcesWithNonLocalResourceInfo:(id)info
{
  infoCopy = info;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v50 = [v5 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

  v6 = [infoCopy objectForKeyedSubscript:@"kCPLNonLocalOriginalsCountKey"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [infoCopy objectForKeyedSubscript:@"kCPLNonLocalOriginalsPhotoCountKey"];
  bOOLValue = [v8 BOOLValue];

  v10 = [infoCopy objectForKeyedSubscript:@"kCPLNonLocalOriginalsVideoCountKey"];

  bOOLValue2 = [v10 BOOLValue];
  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_MESSAGE_FORMAT_PHOTOS";
    if (bOOLValue2)
    {
      v14 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_MESSAGE_FORMAT_PHOTOS_VIDEOS";
    }

    v15 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_";
    if (bOOLValue2)
    {
      v15 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_VIDEOS_";
    }

    if (bOOLValue)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_MESSAGE_FORMAT_VIDEOS";
    }

    if (bOOLValue)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_VIDEOS_";
    }

    v18 = +[UIDevice currentDevice];
    model = [v18 model];
    v20 = [(__CFString *)v17 stringByAppendingString:model];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = v20;
    v22 = [v21 localizedStringForKey:v20 value:&stru_2D398 table:@"Photos"];

    v48 = v22;
    v23 = PFLocalizedStringWithValidatedFormat();
    v24 = [NSBundle bundleForClass:objc_opt_class(), unsignedIntegerValue];
    v25 = [v24 localizedStringForKey:v16 value:&stru_2D398 table:@"Photos"];

    v47 = unsignedIntegerValue;
    v26 = PFLocalizedStringWithValidatedFormat();
    v27 = +[UIDevice currentDevice];
    model2 = [v27 model];
    v29 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:model2];

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
    if (bOOLValue2)
    {
      v35 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_PHOTOS_VIDEOS_";
    }

    if (bOOLValue)
    {
      v36 = v35;
    }

    else
    {
      v36 = @"ICLOUDPHOTOS_DISABLE_PROMPT_DELETE_LOW_RES_TITLE_FORMAT_VIDEOS_";
    }

    v37 = +[UIDevice currentDevice];
    model3 = [v37 model];
    v39 = [(__CFString *)v36 stringByAppendingString:model3];

    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = v39;
    v41 = [v40 localizedStringForKey:v39 value:&stru_2D398 table:@"Photos"];

    v48 = v41;
    v23 = PFLocalizedStringWithValidatedFormat();
    v42 = +[UIDevice currentDevice];
    model4 = [v42 model];
    v25 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:model4];

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

- (void)_confirmCloudPhotosDisableWhilePrunedWithNonLocalResourceInfo:(id)info
{
  infoCopy = info;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_CANCEL" value:&stru_2D398 table:@"Photos"];

  v6 = +[UIDevice currentDevice];
  model = [v6 model];
  v8 = [@"ICLOUDPHOTOS_DISABLE_PROMPT_DOWNLOAD_ORIGINALS_" stringByAppendingString:model];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = v8;
  v30 = [v9 localizedStringForKey:v8 value:&stru_2D398 table:@"Photos"];

  v10 = +[UIDevice currentDevice];
  model2 = [v10 model];
  v12 = [@"ICLOUDPHOTOS_REMOVE_FROM_DEVICE_" stringByAppendingString:model2];

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
  v18 = infoCopy;
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
  userInterfaceIdiom = [v22 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"ICLOUDPHOTOS_DISABLE_PROMPT_DOWNLOAD_ORIGINALS_TITLE" value:&stru_2D398 table:@"Photos"];

    v26 = [UIAlertController alertControllerWithTitle:v25 message:v30 preferredStyle:1];
  }

  else
  {
    v26 = [UIAlertController alertControllerWithTitle:v30 message:0 preferredStyle:0];
  }

  [v26 addAction:{v17, infoCopy}];
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
  userInterfaceIdiom = [v11 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  selfCopy = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:2 handler:&v16];
  v9 = [NSBundle bundleForClass:objc_opt_class(), v16, v17, v18, v19];
  v10 = [v9 localizedStringForKey:@"MEMORIES_BLACKLISTED_MEMORIES_RESET_ACTION_DETAILS" value:&stru_2D398 table:@"Photos"];

  v11 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v11 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
  v3 = systemPhotoLibrary;
  if (systemPhotoLibrary)
  {
    librarySpecificFetchOptions = [systemPhotoLibrary librarySpecificFetchOptions];
    v5 = [PHSuggestion fetchSuggestionsWithState:4 withOptions:librarySpecificFetchOptions];
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
  systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
  v3 = systemPhotoLibrary;
  if (systemPhotoLibrary)
  {
    librarySpecificFetchOptions = [systemPhotoLibrary librarySpecificFetchOptions];
    v5 = [PHMemory fetchMemoriesWithUserFeedbackWithOptions:librarySpecificFetchOptions];
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
  systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
  v3 = systemPhotoLibrary;
  if (systemPhotoLibrary)
  {
    librarySpecificFetchOptions = [systemPhotoLibrary librarySpecificFetchOptions];
    v5 = [PHMemory fetchBlockedMemoriesWithOptions:librarySpecificFetchOptions];
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

- (void)_cplStorageCellWasTapped:(id)tapped
{
  tappedCopy = tapped;
  manageStorageController = self->_manageStorageController;
  v10 = tappedCopy;
  if (!manageStorageController)
  {
    v6 = +[PLAccountStore pl_sharedAccountStore];
    cachedPrimaryAppleAccount = [v6 cachedPrimaryAppleAccount];

    v8 = [[ICSManageStorageDrilldownController alloc] initWithAppBundleID:@"com.apple.mobileslideshow" account:cachedPrimaryAppleAccount presentingController:self];
    v9 = self->_manageStorageController;
    self->_manageStorageController = v8;

    tappedCopy = v10;
    manageStorageController = self->_manageStorageController;
  }

  [(ICSManageStorageDrilldownController *)manageStorageController beginLoadingForSpecifier:tappedCopy];
  self->_refreshQuotaStorageOnViewWillAppear = 1;
}

- (void)_filterAndConfigureSpecifiers:(id *)specifiers isAsync:(BOOL *)async
{
  v5 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v5 cachedPrimaryAppleAccount];

  *(self + 195) = *(self + 195) & 0xFE | [cachedPrimaryAppleAccount isEnabledForDataclass:kAccountDataclassSharedStreams];
  self->_cloudPhotosEnabled = [cachedPrimaryAppleAccount isEnabledForDataclass:kAccountDataclassCloudPhotos];
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
  systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
  isKeepOriginalsEnabled = [systemPhotoLibrary isKeepOriginalsEnabled];

  cloudPhotosEnabled = self->_cloudPhotosEnabled;
  isCPLInExitMode = self->_isCPLInExitMode;
  _shouldHideCPL = [(SettingsBaseController *)self _shouldHideCPL];
  shouldHideTransferBehaviors = self->_shouldHideTransferBehaviors;
  v52 = PLCanEnableSharedStreamsForAccount();
  accountModificationAllowed = self->_accountModificationAllowed;
  v49 = *(self + 195);
  v50 = PXSupportsImageModulation();
  _wantsInstalledPhotosAppSpecificOptions = [(SettingsBaseController *)self _wantsInstalledPhotosAppSpecificOptions];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"cloudPhotosPaused", @"com.apple.mobileslideshow", 0);
  _settingsDebugOverrideLocation = [(SettingsBaseController *)self _settingsDebugOverrideLocation];
  _daysUntilExit = [(SettingsBaseController *)self _daysUntilExit];
  transferBehaviorUserPreference = [(SettingsBaseController *)self transferBehaviorUserPreference];
  [(PXContentPrivacyController *)self->_privacyController updateAuthenticationTypeImmediately];
  authenticationType = [(PXContentPrivacyController *)self->_privacyController authenticationType];
  systemPolicyOptions = [(SettingsBaseController *)self systemPolicyOptions];
  bundleIdentifier = [(SettingsBaseController *)self bundleIdentifier];
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  v26 = [NSString stringWithFormat:@"%@: %p", objc_opt_class(), self];
  objc_initWeak(&location, self);
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosEnabled:self->_cloudPhotosEnabled];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosInExitMode:self->_isCPLInExitMode];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosStatus:status];
  traitCollection = [(SettingsBaseController *)self traitCollection];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    traitCollection2 = [(SettingsBaseController *)self traitCollection];
    pe_isSettingsFeatureDescriptionCellSupported = [traitCollection2 pe_isSettingsFeatureDescriptionCellSupported];
  }

  else
  {
    pe_isSettingsFeatureDescriptionCellSupported = 0;
  }

  v31 = objc_opt_class();
  v32 = objc_loadWeakRetained(&location);
  invitationSpecifiers = [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController invitationSpecifiers];
  settingsSpecifiers = [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController settingsSpecifiers];
  LOBYTE(v42) = pe_isSettingsFeatureDescriptionCellSupported;
  BYTE5(v41) = (_settingsDebugOverrideLocation & 0xFFFFFFFFFFFFFFFELL) == 2;
  BYTE4(v41) = _wantsInstalledPhotosAppSpecificOptions;
  BYTE3(v41) = v50;
  BYTE2(v41) = accountModificationAllowed;
  BYTE1(v41) = v58;
  LOBYTE(v41) = v59;
  BYTE3(v40) = v52;
  BYTE2(v40) = AppBooleanValue != 0;
  BYTE1(v40) = shouldHideTransferBehaviors;
  LOBYTE(v40) = _shouldHideCPL;
  v35 = [v31 filterAndConfigureSpecifiers:v6 shownFromAccountSettings:(v49 >> 1) & 1 cloudPhotosEnabled:cloudPhotosEnabled cplKeepOriginals:isKeepOriginalsEnabled isCPLInExitMode:isCPLInExitMode cplDaysUntilExit:_daysUntilExit shouldHideCPL:v40 shouldHideTransferBehaviors:status cloudPhotosPaused:v32 canEnableSharedStreams:v41 cplStatus:authenticationType cplActionPerformer:systemPolicyOptions showPhotosDiagnoseButton:bundleIdentifier showPhotosRebuildButton:transferBehaviorUserPreference accountModificationAllowed:invitationSpecifiers isOLEDDevice:settingsSpecifiers wantsPhotosAppSpecificSettings:v26 isLocationBeingOverridden:v42 currentAuthenticationType:? systemPolicyOptions:? bundleIdentifier:? transferBehaviorUserPreference:? sharedLibraryInvitationSpecifiers:? sharedLibrarySettingsSpecifiers:? instanceLogInfo:? featureDescriptionCellSupported:?];

  v36 = v35;
  *specifiers = v35;
  if (*async)
  {
    v37 = PLUIGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = [v35 count];
      *buf = 138412802;
      v69 = v38;
      v70 = 2048;
      selfCopy = self;
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
    selfCopy3 = self;
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
      selfCopy3 = self;
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
      selfCopy3 = self;
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

- (void)_showSpinnerForDuration:(double)duration withText:(id)text
{
  textCopy = text;
  view = [(SettingsBaseController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v9 = objc_alloc_init(UIProgressHUD);
  [v9 setAutoresizingMask:45];
  [v9 setFontSize:16];
  [v9 setText:textCopy];

  _viewForSpinnerPresentation = [(SettingsBaseController *)self _viewForSpinnerPresentation];
  [v9 showInView:_viewForSpinnerPresentation];
  view2 = [(SettingsBaseController *)self view];
  window2 = [view2 window];

  [window2 setUserInteractionEnabled:0];
  [(SettingsBaseController *)self _setDisplayedSpinner:v9];
  v13 = dispatch_time(0, (duration * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B548;
  block[3] = &unk_2D338;
  v17 = v9;
  selfCopy = self;
  v19 = window2;
  v14 = window2;
  v15 = v9;
  dispatch_after(v13, &_dispatch_main_q, block);
}

- (id)_showSpinnerWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(UIProgressHUD);
  [v5 setAutoresizingMask:45];
  [v5 setFontSize:16];
  [v5 setText:textCopy];

  _viewForSpinnerPresentation = [(SettingsBaseController *)self _viewForSpinnerPresentation];
  [v5 showInView:_viewForSpinnerPresentation];

  return v5;
}

- (id)_viewForSpinnerPresentation
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  rootController = [(SettingsBaseController *)self rootController];
  v6 = rootController;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    parentViewController = [rootController parentViewController];
    view = [parentViewController view];
  }

  else
  {
    view = [rootController view];
  }

  if (!view)
  {
    parentViewController2 = [(SettingsBaseController *)self parentViewController];
    view = [parentViewController2 view];

    if (!view)
    {
      v10 = PXAssertGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "SettingsBaseController: missing view to present legacy UIProgressHUD", v12, 2u);
      }

      view = 0;
    }
  }

  return view;
}

- (void)_hideDisplayedSpinner
{
  displayedSpinner = self->_displayedSpinner;
  if (displayedSpinner)
  {
    [(UIProgressHUD *)displayedSpinner hide];
    [(SettingsBaseController *)self _setDisplayedSpinner:0];
    view = [(SettingsBaseController *)self view];
    window = [view window];
    [window setUserInteractionEnabled:1];
  }
}

- (void)_setDisplayedSpinner:(id)spinner
{
  spinnerCopy = spinner;
  if (self->_displayedSpinner != spinnerCopy)
  {
    v6 = spinnerCopy;
    objc_storeStrong(&self->_displayedSpinner, spinner);
    spinnerCopy = v6;
  }
}

- (void)_saveUserAccount
{
  v3 = +[PLAccountStore pl_sharedAccountStore];
  v4 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v4 cachedPrimaryAppleAccount];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B924;
  v6[3] = &unk_2D1A0;
  v6[4] = self;
  [v3 saveAccount:cachedPrimaryAppleAccount withDataclassActions:0 doVerify:0 completion:v6];
}

- (void)_setSharedStreamsEnabled:(BOOL)enabled
{
  v11 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v11 cachedPrimaryAppleAccount];
  provisionedDataclasses = [cachedPrimaryAppleAccount provisionedDataclasses];
  v7 = kAccountDataclassSharedStreams;
  v8 = [provisionedDataclasses containsObject:kAccountDataclassSharedStreams];

  *(self + 195) = *(self + 195) & 0xFE | enabled & v8;
  v9 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount2 = [v9 cachedPrimaryAppleAccount];
  [cachedPrimaryAppleAccount2 setEnabled:*(self + 195) & 1 forDataclass:v7];

  [(SettingsBaseController *)self _saveUserAccount];
}

- (void)alchemizeButtonEnabledWasToggled:(id)toggled specifier:(id)specifier
{
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [toggled unsignedIntValue]);
  CFPreferencesSetAppValue(@"EnableAlchemizeButton", v4, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

- (id)alchemizeButtonEnabled:(id)enabled
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

- (void)highMotionReminderEnabledWasToggled:(id)toggled specifier:(id)specifier
{
  v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 1 - [toggled unsignedIntValue]);
  CFPreferencesSetAppValue(@"com.apple.SpatialMedia.OverrideVideoImmersiveRecommendation", v4, @"Apple Global Domain");
  CFPreferencesAppSynchronize(@"Apple Global Domain");
}

- (id)highMotionReminderEnabled:(id)enabled
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

- (void)featuredContentAllowedWasToggled:(id)toggled specifier:(id)specifier
{
  [toggled BOOLValue];
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

  systemPhotoLibrary = [(SettingsBaseController *)self systemPhotoLibrary];
  photoAnalysisClient = [systemPhotoLibrary photoAnalysisClient];
  [photoAnalysisClient reloadWallpaperSuggestions:0 reply:&stru_2CDB8];
}

- (id)featuredContentAllowed:(id)allowed
{
  v3 = PLIsFeaturedContentAllowed();

  return [NSNumber numberWithBool:v3];
}

- (void)contentPrivacyEnableWasToggled:(id)toggled specifier:(id)specifier
{
  toggledCopy = toggled;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:PSKeyNameKey];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    *buf = 138412802;
    v30 = v10;
    v31 = 2048;
    selfCopy = self;
    v33 = 1024;
    bOOLValue = [toggledCopy BOOLValue];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> content privacy setting set to %d", buf, 0x1Cu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_C668;
  v27[3] = &unk_2CD70;
  v12 = v8;
  v28 = v12;
  v13 = objc_retainBlock(v27);
  if (([toggledCopy BOOLValue] & 1) == 0)
  {
    objc_initWeak(buf, self);
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_TOUCHID_TITLE" value:&stru_2D398 table:@"Photos"];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_TITLE" value:&stru_2D398 table:@"Photos"];

    authenticationType = [(PXContentPrivacyController *)self->_privacyController authenticationType];
    v19 = 0;
    if (authenticationType > 3)
    {
      if (authenticationType - 6 >= 2)
      {
        if (authenticationType == &dword_4)
        {
          v20 = [NSBundle bundleForClass:objc_opt_class()];
          v21 = [v20 localizedStringForKey:@"CONTENT_PRIVACY_DISABLE_PASSCODE_SUBTITLE_FACEID" value:&stru_2D398 table:@"Photos"];
          goto LABEL_14;
        }

        if (authenticationType == (&dword_4 + 1))
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
        v24 = specifierCopy;
        [(PXContentPrivacyController *)privacyController performUserAuthenticationIfNeededWithTitle:v15 passcodeTitle:v17 passcodeSubtitle:v19 completion:v23];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
        goto LABEL_16;
      }
    }

    else if (authenticationType >= 3)
    {
      if (authenticationType == (&dword_0 + 3))
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

  (v13[2])(v13, toggledCopy);
LABEL_16:
}

- (id)contentPrivacyEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [enabledCopy propertyForKey:PSKeyNameKey];
  keyExistsAndHasValidFormat = 0;
  bOOLValue = CFPreferencesGetAppBooleanValue(v5, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v7 = [enabledCopy propertyForKey:PSDefaultValueKey];
    bOOLValue = [v7 BOOLValue];

    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138412802;
      v18 = v9;
      v19 = 2048;
      selfCopy = self;
      v21 = 1024;
      v22 = bOOLValue;
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
      if (bOOLValue)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "User has no passcode or biometrics enabled, so forcing the settings switch to NO. Actual pref value is %{public}@", buf, 0xCu);
    }

    bOOLValue = 0;
  }

  v14 = [NSNumber numberWithBool:bOOLValue];

  return v14;
}

- (id)videoAutoplayEnabled:(id)enabled
{
  v4 = [enabled propertyForKey:PSKeyNameKey];
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
      selfCopy = self;
      v16 = 1024;
      v17 = IsVideoAutoplayEnabled;
      v8 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> video auto-play setting set to %d to honor AX setting", buf, 0x1Cu);
    }
  }

  v9 = [NSNumber numberWithBool:IsVideoAutoplayEnabled];

  return v9;
}

- (void)setTransferBehaviorUserPreference:(int64_t)preference
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceMediaTransferBehavior", [NSNumber numberWithInteger:?], @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
  specifiers = [(SettingsBaseController *)self specifiers];
  sub_CB54(specifiers, preference);

  [(SettingsBaseController *)self reloadSpecifierID:@"TransferGroup"];
}

- (void)runPhotosRebuild:(id)rebuild
{
  rebuildCopy = rebuild;
  v5 = [rebuildCopy propertyForKey:PSEnabledKey];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
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
    v20 = rebuildCopy;
    selfCopy = self;
    v14 = [UIAlertAction actionWithTitle:v12 style:2 handler:&v16];
    v15 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:0, v16, v17, v18, v19];
    [v15 addAction:v13];
    [v15 addAction:v14];
    [(SettingsBaseController *)self presentViewController:v15 animated:1 completion:0];
  }
}

- (void)diagnosticServiceStateDidChange:(char)change outputURL:(id)l error:(id)error
{
  changeCopy = change;
  lCopy = l;
  errorCopy = error;
  if (changeCopy == 1)
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

  else if (changeCopy)
  {
    if (changeCopy == -1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        localizedFailureReason = [errorCopy localizedFailureReason];
        *v16 = 138543362;
        *&v16[4] = localizedFailureReason;
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

  [(SettingsBaseController *)self updateDiagnoseButtonName:v11 enabled:changeCopy == 0, *v16, *&v16[16]];
}

- (void)updateDiagnoseButtonName:(id)name enabled:(BOOL)enabled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D4D8;
  block[3] = &unk_2CD20;
  enabledCopy = enabled;
  block[4] = self;
  nameCopy = name;
  v4 = nameCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)generateCPLDiagnose:(id)diagnose
{
  v4 = [diagnose propertyForKey:PSEnabledKey];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    if ([(SettingsBaseController *)self _useInternalDiagnostics])
    {
      v9 = +[LSApplicationWorkspace defaultWorkspace];
      tapToRadarURL = [(SettingsBaseController *)self tapToRadarURL];
      [v9 openURL:tapToRadarURL configuration:0 completionHandler:0];
    }

    else
    {
      [(SettingsBaseController *)self updateDiagnoseButtonName:@"PHOTOS_DIAGNOSE_REQUESTING" enabled:0];
      diagnoseServiceConnection = [(SettingsBaseController *)self diagnoseServiceConnection];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_D7A0;
      v11[3] = &unk_2CC30;
      v11[4] = self;
      v8 = [diagnoseServiceConnection remoteObjectProxyWithErrorHandler:v11];
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
      selfCopy = self;
      v11 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Diagnose service connected", buf, 0x16u);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    diagnoseServiceConnection = self->_diagnoseServiceConnection;
  }

  return diagnoseServiceConnection;
}

- (void)cloudPhotosEnableWasToggled:(id)toggled specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [toggled BOOLValue];
  if (self->_cloudPhotosEnabled != bOOLValue)
  {
    if (bOOLValue)
    {
      v8 = +[PLPhotoLibrary systemPhotoLibrary];
      iTunesSyncedContentInfo = [v8 iTunesSyncedContentInfo];

      v10 = PLITunesSyncedContentInfoAssetCountKey;
      v11 = [iTunesSyncedContentInfo objectForKeyedSubscript:PLITunesSyncedContentInfoAssetCountKey];
      integerValue = [v11 integerValue];

      if (integerValue)
      {
        v13 = [iTunesSyncedContentInfo objectForKeyedSubscript:PLITunesSyncedContentInfoVideoCountKey];
        bOOLValue2 = [v13 BOOLValue];

        v15 = [iTunesSyncedContentInfo objectForKeyedSubscript:PLITunesSyncedContentInfoPhotoCountKey];
        bOOLValue3 = [v15 BOOLValue];

        v17 = [iTunesSyncedContentInfo objectForKeyedSubscript:v10];
        integerValue2 = [v17 integerValue];

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
        v21 = specifierCopy;
        v19 = [UIAlertController px_deleteITunesContentAlertWithAssetCount:integerValue2 includesPhotos:bOOLValue3 includesVideos:bOOLValue2 actionHandler:v22 cancelHandler:v20];
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

- (void)shouldShowPhotoLibraryInSearchWasToggled:(id)toggled specifier:(id)specifier
{
  v5 = CFPreferencesCopyAppValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui");
  value = [NSMutableArray arrayWithArray:v5];

  v6 = PLMobileSlideshowBundleId;
  v7 = [value containsObject:PLMobileSlideshowBundleId];
  if (toggled && v7)
  {
    [value removeObject:v6];
  }

  else if ((toggled != 0) | v7 & 1)
  {
    [value addObject:v6];
  }

  CFPreferencesSetAppValue(@"SBSearchDisabledBundles", value, @"com.apple.spotlightui");
  CFPreferencesSynchronize(@"com.apple.spotlightui", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (id)shouldShowPhotoLibraryInSearch:(id)search
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

- (void)sharedStreamsSwitchWasToggled:(id)toggled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (![toggled BOOLValue])
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
    v18 = specifierCopy;
    [(SettingsBaseController *)self _confirmWithTitle:0 message:v11 confirmationButtonTitle:v13 cancelButtonTtle:v15 completion:v17];

LABEL_6:
    goto LABEL_7;
  }

  if ((*(self + 195) & 2) == 0)
  {
    v7 = +[PLAccountStore pl_sharedAccountStore];
    cachedPrimaryAppleAccount = [v7 cachedPrimaryAppleAccount];

    if (!cachedPrimaryAppleAccount)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = objc_opt_class();
        v21 = 2048;
        selfCopy = self;
        v16 = v20;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "<%@: %p> Can't enable shared streams without an account!", buf, 0x16u);
      }

      goto LABEL_6;
    }
  }

  [(SettingsBaseController *)self _setSharedStreamsEnabled:1];
LABEL_7:
}

- (void)photoLibraryDidBecomeUnavailable:(id)unavailable
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E564;
  v5[3] = &unk_2D128;
  unavailableCopy = unavailable;
  selfCopy = self;
  v4 = unavailableCopy;
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
    specifiers = [(SettingsBaseController *)self specifiers];
    v11 = [specifiers specifierForID:self->_deferredPushIdentifier];

    if (v11)
    {
      v12 = [v11 propertyForKey:PSEnabledKey];
      bOOLValue = [v12 BOOLValue];

      v14 = PLUIGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (bOOLValue)
      {
        if (v15)
        {
          v16 = objc_opt_class();
          deferredPushIdentifier = self->_deferredPushIdentifier;
          v26 = 138412802;
          v27 = v16;
          v28 = 2048;
          selfCopy4 = self;
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
        selfCopy4 = self;
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
        selfCopy4 = self;
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
    selfCopy4 = self;
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

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  dCopy = d;
  v5 = +[MSSSharedLibraryBaseController buttonIdentifier];
  if ([dCopy isEqualToString:v5])
  {
    specifiers = [(SettingsBaseController *)self specifiers];
    v7 = [specifiers specifierForID:v5];

    v8 = [v7 propertyForKey:PSEnabledKey];
    bOOLValue = [v8 BOOLValue];

    v10 = PLUIGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (bOOLValue)
    {
      if (v11)
      {
        *buf = 138412802;
        v21 = objc_opt_class();
        v22 = 2048;
        selfCopy3 = self;
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
        selfCopy3 = self;
        v24 = 2114;
        v25 = v5;
        v16 = v21;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Schedule deferred push for specifier: %{public}@", buf, 0x20u);
      }

      objc_storeStrong(&self->_deferredPushIdentifier, v5);
      +[NSDate timeIntervalSinceReferenceDate];
      self->_deferredPushTimeIntervalSinceReferenceDate = v17;
    }

    v15 = bOOLValue ^ 1;
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = objc_opt_class();
      v22 = 2048;
      selfCopy3 = self;
      v24 = 2114;
      v25 = dCopy;
      v14 = v21;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> No support for deferring push for specifier: %{public}@", buf, 0x20u);
    }

    v19.receiver = self;
    v19.super_class = SettingsBaseController;
    v15 = [(SettingsBaseController *)&v19 shouldDeferPushForSpecifierID:dCopy];
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
  status = [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider status];
  [(MSSSharedLibraryBaseController *)self->_sharedLibrarySettingsController setCloudPhotosStatus:status];

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
  exitDeleteTime = [(CPLStatus *)self->_cplStatus exitDeleteTime];
  self->_isCPLInExitMode = exitDeleteTime != 0;
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
      diagnoseServiceConnection = [(SettingsBaseController *)self diagnoseServiceConnection];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_F374;
      v7[3] = &unk_2CC30;
      v7[4] = self;
      v5 = [diagnoseServiceConnection remoteObjectProxyWithErrorHandler:v7];
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
    selfCopy = self;
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
  cachedPrimaryAppleAccount = [v4 cachedPrimaryAppleAccount];

  if (cachedPrimaryAppleAccount)
  {
    provisionedDataclasses = [cachedPrimaryAppleAccount provisionedDataclasses];
    v7 = [provisionedDataclasses containsObject:kAccountDataclassCloudPhotos];
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

    selfCopy = self;
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
    _initializeSpecifiers = [(SettingsBaseController *)self _initializeSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = _initializeSpecifiers;

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
    selfCopy = self;
    v4 = v18;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Init", buf, 0x16u);
  }

  v16.receiver = self;
  v16.super_class = SettingsBaseController;
  v5 = [(SettingsBaseController *)&v16 init];
  v6 = v5;
  if (v5)
  {
    _shownFromAccountSettings = [(SettingsBaseController *)v5 _shownFromAccountSettings];
    if (_shownFromAccountSettings)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 195) = *(v6 + 195) & 0xFD | v8;
    if (_shownFromAccountSettings)
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

+ (id)filterAndConfigureSpecifiers:(id)specifiers shownFromAccountSettings:(BOOL)settings cloudPhotosEnabled:(BOOL)enabled cplKeepOriginals:(BOOL)originals isCPLInExitMode:(BOOL)mode cplDaysUntilExit:(int64_t)exit shouldHideCPL:(BOOL)l shouldHideTransferBehaviors:(BOOL)self0 cloudPhotosPaused:(BOOL)self1 canEnableSharedStreams:(BOOL)self2 cplStatus:(id)self3 cplActionPerformer:(id)self4 showPhotosDiagnoseButton:(BOOL)self5 showPhotosRebuildButton:(BOOL)self6 accountModificationAllowed:(BOOL)self7 isOLEDDevice:(BOOL)self8 wantsPhotosAppSpecificSettings:(BOOL)self9 isLocationBeingOverridden:(BOOL)overridden currentAuthenticationType:(int64_t)type systemPolicyOptions:(unint64_t)options bundleIdentifier:(id)identifier transferBehaviorUserPreference:(int64_t)preference sharedLibraryInvitationSpecifiers:(id)invitationSpecifiers sharedLibrarySettingsSpecifiers:(id)settingsSpecifiers instanceLogInfo:(id)info featureDescriptionCellSupported:(BOOL)supported
{
  modeCopy = mode;
  settingsCopy = settings;
  originalsCopy = originals;
  enabledCopy = enabled;
  specifiersCopy = specifiers;
  statusCopy = status;
  objc_initWeak(&location, performer);
  identifierCopy = identifier;
  invitationSpecifiersCopy = invitationSpecifiers;
  settingsSpecifiersCopy = settingsSpecifiers;
  infoCopy = info;
  v28 = [specifiersCopy specifierForID:@"photosDiagnose"];
  v29 = [specifiersCopy specifierForID:@"photosRebuild"];
  v30 = objc_alloc_init(NSMutableArray);
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  if (v28 && !button)
  {
    v31 = PLUIGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "<%@> Hiding internal Photos diagnose option", buf, 0xCu);
    }

    [v30 addObject:v28];
  }

  if (v29 && !rebuildButton)
  {
    v32 = PLUIGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "<%@> Hiding internal Photos rebuild option", buf, 0xCu);
    }

    [v30 addObject:v29];
  }

  if ([v30 count] >= 2)
  {
    v33 = [specifiersCopy specifierForID:@"photosDiagnoseTitleGroup"];
    if (v33)
    {
      [v30 addObject:v33];
    }
  }

  if ([v30 count])
  {
    [specifiersCopy removeObjectsInArray:v30];
  }

  v203 = [specifiersCopy specifierForID:@"iCloudOptimizeStorageOption"];
  v34 = +[UIDevice currentDevice];
  model = [v34 model];
  v199 = [@"ICLOUDPHOTOS_OPTIMIZE_STORAGE_" stringByAppendingString:model];

  v36 = PULocalizedString();
  [v203 setName:v36];
  v191 = v36;
  v197 = [specifiersCopy specifierForID:@"iCloudKeepOriginalsGroup"];
  v37 = sub_5530(originalsCopy, modeCopy);
  v193 = PSFooterTextGroupKey;
  [v197 setProperty:v37 forKey:?];
  v190 = v37;
  v195 = [specifiersCopy specifierForID:@"iCloudPhotosTitleGroup"];
  v38 = objc_loadWeakRetained(&location);
  sub_57A0(v195, modeCopy, enabledCopy, originalsCopy, exit, settingsCopy, v38);

  v39 = [specifiersCopy specifierForID:@"VideoAutoplaySwitch"];
  v212 = PSAllowMultilineTitleKey;
  [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
  v189 = v39;
  v40 = [specifiersCopy specifierForID:@"VideoAutoloopSwitch"];
  [v40 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v188 = v40;
  v41 = [specifiersCopy specifierForID:@"ImageModulationSwitch"];
  [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v187 = v41;
  v42 = [specifiersCopy specifierForID:@"ResetBlacklistedMemoryFeatures"];
  [v42 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v43 = [specifiersCopy specifierForID:@"ResetPeopleFeedback"];
  [v43 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v44 = [specifiersCopy specifierForID:@"PhotosPrivacyOverview"];
  v45 = objc_loadWeakRetained(&location);
  v46 = v44;
  objc_initWeak(buf, v45);
  v47 = +[OBBundleManager sharedManager];
  v48 = [v47 bundleWithIdentifier:@"com.apple.onboarding.photos"];

  privacyFlow = [v48 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];
  v51 = [localizedButtonTitle rangeOfString:localizedButtonTitle];
  v53 = v52;
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  [v46 setProperty:v55 forKey:PSFooterCellClassGroupKey];

  [v46 setProperty:localizedButtonTitle forKey:PSFooterHyperlinkViewTitleKey];
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
  v204 = [specifiersCopy mss_specifiersWithIdentifiers:v60];

  sub_7710(v204, originalsCopy);
  if (!enabledCopy)
  {
    v61 = PLUIGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "<%@> Hiding iCPL conditional specifiers", buf, 0xCu);
    }

    [specifiersCopy removeObjectsInArray:v204];
  }

  if (+[MSSCellularDataSettingsController shouldShowCellularDataSettings])
  {
    if (!MGGetBoolAnswer())
    {
      goto LABEL_28;
    }

    v62 = [specifiersCopy specifierForID:@"CellularDataGroup"];
    v63 = [NSBundle bundleForClass:objc_opt_class()];
    v64 = [v63 localizedStringForKey:@"USE_CELLULAR_DATA_FOOTER_WLAN" value:&stru_2D398 table:@"Photos"];

    [v62 setProperty:v64 forKey:v193];
    v65 = [specifiersCopy specifierForID:@"CellularDataLinkList"];
    v66 = [NSBundle bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"USE_CELLULAR_DATA_LABEL_WLAN" value:&stru_2D398 table:@"Photos"];

    [v65 setName:v67];
  }

  else
  {
    v62 = [specifiersCopy mss_specifiersWithIdentifiers:&off_2FA08];
    v68 = PLUIGetLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "<%@> Hiding cellular specifiers", buf, 0xCu);
    }

    [specifiersCopy removeObjectsInArray:v62];
  }

LABEL_28:
  if (behaviors)
  {
    v238[0] = @"TransferGroup";
    v238[1] = @"TransferAutomaticOption";
    v238[2] = @"TransferKeepOriginalsOption";
    v69 = [NSArray arrayWithObjects:v238 count:3];
    v70 = [specifiersCopy mss_specifiersWithIdentifiers:v69];

    v71 = PLUIGetLog();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "<%@> Hiding all Transfer behavior specifiers", buf, 0xCu);
    }

    [specifiersCopy removeObjectsInArray:v70];
  }

  else
  {
    sub_CB54(specifiersCopy, preference);
  }

  if (l)
  {
    v237[0] = @"iCloudPhotosTitleGroup";
    v237[1] = @"iCloudPhotosSwitch";
    v237[2] = @"iCloudKeepOriginalsGroup";
    v237[3] = @"iCloudOptimizeStorageOption";
    v237[4] = @"iCloudKeepOriginalsOption";
    v72 = [NSArray arrayWithObjects:v237 count:5];
    v73 = [specifiersCopy mss_specifiersWithIdentifiers:v72];

    v74 = PLUIGetLog();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "<%@> Hiding all iCPL specifiers", buf, 0xCu);
    }

    [specifiersCopy removeObjectsInArray:v73];
  }

  if ([settingsSpecifiersCopy count] && (objc_msgSend(settingsSpecifiersCopy, "firstObject"), v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v75, "identifier"), v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(specifiersCopy, "indexOfSpecifierWithID:", v76) == 0x7FFFFFFFFFFFFFFFLL, v76, v75, v77))
  {
    v78 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [invitationSpecifiersCopy count]);
    [specifiersCopy insertObjects:invitationSpecifiersCopy atIndexes:v78];
    lastObject = [invitationSpecifiersCopy lastObject];
    if (l)
    {
      lastObject2 = specifiersCopy;
      v81 = [settingsSpecifiersCopy mutableCopy];
      [v81 addObjectsFromArray:specifiersCopy];
      v82 = v81;
      specifiersCopy = v82;
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

      v84 = [specifiersCopy mss_specifiersWithIdentifiers:v82];
      lastObject2 = [v84 lastObject];

      [specifiersCopy ps_insertObjectsFromArray:settingsSpecifiersCopy afterObject:lastObject2];
    }
  }

  else
  {
    lastObject = 0;
  }

  v200 = lastObject;
  if (!streams)
  {
    v85 = PLUIGetLog();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = infoCopy;
      _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "<%@> Disabling Shared Albums specifiers", buf, 0xCu);
    }

    v86 = [specifiersCopy specifierForID:@"SharedStreamsSwitch"];
    [v86 setProperty:kCFBooleanFalse forKey:PSEnabledKey];
  }

  if (!allowed)
  {
    [specifiersCopy mss_specifiersWithIdentifiers:&off_2FA38];
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

  if (settingsCopy)
  {
    v92 = [settingsSpecifiersCopy arrayByAddingObjectsFromArray:invitationSpecifiersCopy];
    v93 = specifiersCopy;
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

          identifier = [*(*(&v227 + 1) + 8 * j) identifier];
          [v97 addObject:identifier];
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
          identifier2 = [v109 identifier];
          v111 = [v97 containsObject:identifier2];

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

  v112 = [specifiersCopy specifierForID:@"FeaturedContentAllowedSwitch"];
  [v112 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];

  if (!settingsCopy)
  {
    v113 = [specifiersCopy mss_specifiersWithIdentifiers:&off_2FA68];
    [specifiersCopy removeObjectsInArray:v113];
    goto LABEL_89;
  }

  v113 = [specifiersCopy specifierForID:@"iCloudPhotosTitleGroup"];
  [specifiersCopy removeObject:v113];
  v114 = [specifiersCopy mss_specifiersWithIdentifiers:&off_2FA50];
  [specifiersCopy removeObjectsInArray:v114];
  v208 = [specifiersCopy specifierForID:@"iCloudPhotosAction"];
  v115 = sub_4158(statusCopy);
  [v208 setName:v115];

  if (!sub_4360(statusCopy, enabledCopy, 1))
  {
    [specifiersCopy removeObject:v208];
  }

  v116 = [specifiersCopy specifierForID:@"iCloudPhotosItems"];
  v117 = [specifiersCopy specifierForID:@"cloudPhotosStatus"];
  v234[0] = v116;
  v196 = v117;
  v234[1] = v117;
  v198 = [NSArray arrayWithObjects:v234 count:2];
  if (enabledCopy)
  {
    if (!modeCopy)
    {
      goto LABEL_86;
    }
  }

  else
  {
    [specifiersCopy removeObjectsInArray:v198];
  }

  [specifiersCopy removeObject:v116];
LABEL_86:
  v118 = [specifiersCopy specifierForID:@"iCloudPhotosAccountTitleGroup"];
  v119 = objc_loadWeakRetained(&location);
  sub_57A0(v118, modeCopy, enabledCopy, originalsCopy, exit, 1, v119);

  v120 = [specifiersCopy specifierForID:@"cloudPhotosStatusGroup"];
  v121 = objc_loadWeakRetained(&location);
  sub_35A0(v120, statusCopy, enabledCopy, v121);

  if (!supported)
  {
    v122 = [specifiersCopy specifierForID:@"iCloudPhotosHeader"];
    [v122 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  }

  v123 = [specifiersCopy specifierForID:@"iCloudPhotosStorage"];
  [v123 setControllerLoadAction:"_cplStorageCellWasTapped:"];
  v124 = [specifiersCopy specifierForID:@"iCloudPhotosSwitch"];
  v125 = +[UIDevice currentDevice];
  model2 = [v125 model];
  v127 = [@"ICLOUDPHOTOS_MAINSWITCH_FORMAT_" stringByAppendingString:model2];

  v128 = [NSBundle bundleForClass:objc_opt_class()];
  v129 = [v128 localizedStringForKey:v127 value:&stru_2D398 table:@"Photos"];
  [v124 setName:v129];

LABEL_89:
  if ((PLDeviceSupportsEnhancedVisualSearch() & 1) == 0)
  {
    v233[0] = @"EnhancedVisualSearchGroup";
    v233[1] = @"VisualSearchSwitch";
    v130 = [NSArray arrayWithObjects:v233 count:2];
    v131 = [specifiersCopy mss_specifiersWithIdentifiers:v130];

    [specifiersCopy removeObjectsInArray:v131];
  }

  if (!device)
  {
    v132 = specifiersCopy;
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
  userInterfaceIdiom = [v137 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v139 = [specifiersCopy specifierForID:@"PhotosHiddenAlbumGroup"];
    v140 = [NSBundle bundleForClass:objc_opt_class()];
    v141 = [v140 localizedStringForKey:@"HIDDEN_ALBUM_GROUP_FOOTER_DESCRIPTION_IPAD" value:&stru_2D398 table:@"Photos"];

    [v139 setProperty:v141 forKey:v193];
  }

  v142 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v142 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v144 = [specifiersCopy specifierForID:@"PhotosRecentlyViewedAndSharedAlbumGroup"];
    v145 = [NSBundle bundleForClass:objc_opt_class()];
    v146 = [v145 localizedStringForKey:@"RECENTLY_VIEWED_AND_SHARED_ALBUM_GROUP_FOOTER_DESCRIPTION_IPAD" value:&stru_2D398 table:@"Photos"];

    [v144 setProperty:v146 forKey:v193];
  }

  v147 = [specifiersCopy specifierForID:@"PhotosHiddenAlbumSwitch"];
  [v147 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v148 = [specifiersCopy specifierForID:@"PhotosRecentlyViewedAndSharedAlbumSwitch"];
  [v148 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v149 = +[PXContentPrivacySettings sharedInstance];
  simulationMode = [v149 simulationMode];

  if (simulationMode == &dword_0 + 2)
  {
    v151 = [specifiersCopy mss_specifiersWithIdentifiers:&off_2FA80];
    [specifiersCopy removeObjectsInArray:v151];
    goto LABEL_123;
  }

  v152 = 0;
  if (type > 3)
  {
    if (type <= 5)
    {
      v157 = [NSBundle bundleForClass:objc_opt_class()];
      if (type == 4)
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

    if (type == 6)
    {
      v160 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v160 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_COMPANION_MAC" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_COMPANION_MAC" value:&stru_2D398 table:@"Photos"];
      goto LABEL_117;
    }

    v151 = 0;
    if (type == 7)
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
    if (type < 3)
    {
      v153 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = type;
        _os_log_impl(&dword_0, v153, OS_LOG_TYPE_ERROR, "Settings: currentAuthenticationType is NEITHER Face ID or Touch ID (it's %tu). Falling back to showing 'Passcode' text.", buf, 0xCu);
      }

      v154 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v154 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_PASSCODE" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_PASSCODE" value:&stru_2D398 table:@"Photos"];
      goto LABEL_117;
    }

    v151 = 0;
    if (type == 3)
    {
      v159 = [NSBundle bundleForClass:objc_opt_class()];
      v151 = [v159 localizedStringForKey:@"CONTENT_PRIVACY_SWITCH_TOUCHID" value:&stru_2D398 table:@"Photos"];

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      v156 = [v155 localizedStringForKey:@"CONTENT_PRIVACY_GROUP_FOOTER_DESCRIPTION_TOUCHID" value:&stru_2D398 table:@"Photos"];
      goto LABEL_117;
    }
  }

  v161 = [specifiersCopy specifierForID:@"PhotosContentPrivacySwitch"];
  [v161 setName:v151];
  [v161 setObject:&__kCFBooleanTrue forKeyedSubscript:v212];
  v162 = [specifiersCopy specifierForID:@"PhotosContentPrivacyGroup"];
  [v162 setProperty:v152 forKey:v193];
  if (type == 1)
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
  v164 = [specifiersCopy specifierForID:@"iCloudPause"];
  v165 = [NSBundle bundleForClass:objc_opt_class()];
  v166 = SFLocalizableWAPIStringKeyForKey();
  v167 = [v165 localizedStringForKey:v166 value:&stru_2D398 table:@"Photos"];
  [v164 setName:v167];

  if (options && specificSettings)
  {
    if (!identifierCopy)
    {
      v185 = +[NSAssertionHandler currentHandler];
      v186 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SettingsBaseController filterAndConfigureSpecifiers:shownFromAccountSettings:cloudPhotosEnabled:cplKeepOriginals:isCPLInExitMode:cplDaysUntilExit:shouldHideCPL:shouldHideTransferBehaviors:cloudPhotosPaused:canEnableSharedStreams:cplStatus:cplActionPerformer:showPhotosDiagnoseButton:showPhotosRebuildButton:accountModificationAllowed:isOLEDDevice:wantsPhotosAppSpecificSettings:isLocationBeingOverridden:currentAuthenticationType:systemPolicyOptions:bundleIdentifier:transferBehaviorUserPreference:sharedLibraryInvitationSpecifiers:sharedLibrarySettingsSpecifiers:instanceLogInfo:featureDescriptionCellSupported:]");
      [v185 handleFailureInFunction:v186 file:@"SettingsBaseController.m" lineNumber:1699 description:@"A bundle identifier must be provided by subclass if a system policy option has been provided"];
    }

    v168 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:identifierCopy];
    v169 = [v168 specifiersForPolicyOptions:options force:0];
    v170 = v169;
    if (v200)
    {
      [specifiersCopy ps_insertObjectsFromArray:v169 afterObject:?];
    }

    else
    {
      v171 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v169 count]);
      [specifiersCopy insertObjects:v170 atIndexes:v171];
    }
  }

  v172 = specifiersCopy;
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

  if (specificSettings)
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

  if (!overridden)
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

+ (id)lastCPLSpecifierInSpecifiers:(id)specifiers shownFromAccountSettings:(BOOL)settings
{
  if (settings)
  {
    v4 = [specifiers mss_specifiersWithIdentifiers:&off_2F9F0];
    lastObject = [v4 lastObject];
  }

  else
  {
    lastObject = [specifiers specifierForID:@"iCloudPhotosSwitch"];
  }

  return lastObject;
}

+ (void)setPhotoStreamsEnabledFromBuddyWorkflow:(id)workflow
{
  bOOLValue = [workflow BOOLValue];

  [PLPhotoLibrary setPhotoStreamEnabled:bOOLValue];
}

+ (void)setPhotoStreamsEnabledFromAccountSettings:(id)settings
{
  bOOLValue = [settings BOOLValue];

  [PLPhotoLibrary setPhotoStreamEnabled:bOOLValue];
}

@end
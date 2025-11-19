@interface ClarityUIAppSetupCoordinator
+ (id)sharedInstance;
- (BOOL)_bundleIdentifierProvidesOwnSettings:(id)a3;
- (BOOL)bundleIdentifierHasClaritySettings:(id)a3 includingSystem:(BOOL)a4;
- (ClarityUIAppSetupCoordinator)init;
- (id)_dataSourceForBundleIdentifier:(id)a3;
- (id)_detailTextForApplicationIdentifier:(id)a3;
- (id)_iconForApplicationIdentifier:(id)a3;
- (id)clarityBundleNameForBundleIdentifier:(id)a3;
- (id)createPrivacyDisclosureControllerForBundleIdentifier:(id)a3;
- (id)createSettingsControllerForBundleIdentifier:(id)a3;
- (id)createSetupControllerForBundleIdentifier:(id)a3;
- (id)createSetupNavigationControllerForBundleIdentifier:(id)a3;
@end

@implementation ClarityUIAppSetupCoordinator

- (ClarityUIAppSetupCoordinator)init
{
  v6.receiver = self;
  v6.super_class = ClarityUIAppSetupCoordinator;
  v2 = [(ClarityUIAppSetupCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    applicationIdentifiersToDataSources = v2->_applicationIdentifiersToDataSources;
    v2->_applicationIdentifiersToDataSources = v3;

    v2->_applicationIdentifiersToDataSourcesLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[ClarityUIAppSetupCoordinator sharedInstance];
  }

  v3 = sharedInstance_SharedSettings;

  return v3;
}

void __46__ClarityUIAppSetupCoordinator_sharedInstance__block_invoke(id a1)
{
  v1 = objc_alloc_init(ClarityUIAppSetupCoordinator);
  v2 = sharedInstance_SharedSettings;
  sharedInstance_SharedSettings = v1;

  _objc_release_x1(v1, v2);
}

- (id)createPrivacyDisclosureControllerForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [ClarityUIAppPrivacyDisclosureController alloc];
  v6 = [(ClarityUIAppSetupCoordinator *)self _displayNameForApplicationIdentifier:v4];
  v7 = [(ClarityUIAppSetupCoordinator *)self _iconForApplicationIdentifier:v4];
  v8 = [(ClarityUIAppPrivacyDisclosureController *)v5 initWithApplicationTitle:v6 icon:v7 bundleIdentifier:v4];

  return v8;
}

- (id)createSetupNavigationControllerForBundleIdentifier:(id)a3
{
  v3 = [(ClarityUIAppSetupCoordinator *)self createSetupControllerForBundleIdentifier:a3];
  if (v3)
  {
    v4 = [[ClarityAppSetupNavigationController alloc] initWithSetupController:v3];
    [(ClarityAppSetupNavigationController *)v4 setModalPresentationStyle:5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createSetupControllerForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ClarityUIAppSetupCoordinator *)self _displayNameForApplicationIdentifier:v4];
  v6 = [(ClarityUIAppSetupCoordinator *)self _iconForApplicationIdentifier:v4];
  v7 = [(ClarityUIAppSetupCoordinator *)self _detailTextForApplicationIdentifier:v4];
  if ([(ClarityUIAppSetupCoordinator *)self _bundleIdentifierProvidesOwnSettings:v4])
  {
    v8 = [(ClarityUIAppSetupCoordinator *)self clarityBundleNameForBundleIdentifier:v4];
    v9 = PSBundlePathForPreferenceBundle();
    v10 = SFRuntimeAbsoluteFilePathForPath();
    v11 = [NSBundle bundleWithPath:v10];

    v12 = objc_alloc_init([v11 principalClass]);
    if (v12)
    {
      v13 = [[ClarityUIAppSetupController alloc] initWithTitle:v5 detailText:v7 icon:v6 controller:v12 identifier:v4];
    }

    else
    {
      v15 = CLFLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ClarityUIAppSetupCoordinator createSetupControllerForBundleIdentifier:];
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = [(ClarityUIAppSetupCoordinator *)self _dataSourceForBundleIdentifier:v4];
    v12 = v14;
    if (v14)
    {
      if ([v14 hasClaritySettings])
      {
        v13 = [[ClarityUIAppSetupController alloc] initWithTitle:v5 detailText:v7 icon:v6 dataSource:v12];
        goto LABEL_15;
      }
    }

    else
    {
      v16 = CLFLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ClarityUIAppSetupCoordinator createSetupControllerForBundleIdentifier:];
      }
    }

    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (id)createSettingsControllerForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(ClarityUIAppSetupCoordinator *)self _bundleIdentifierProvidesOwnSettings:v4])
  {
    v5 = 0;
    goto LABEL_11;
  }

  v6 = [(ClarityUIAppSetupCoordinator *)self _dataSourceForBundleIdentifier:v4];
  v7 = v6;
  if (!v6)
  {
    v8 = CLFLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ClarityUIAppSetupCoordinator createSetupControllerForBundleIdentifier:];
    }

    goto LABEL_9;
  }

  if (![v6 hasClaritySettings])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [[ClarityUISettingsListController alloc] initWithDataSource:v7];
LABEL_10:

LABEL_11:

  return v5;
}

- (BOOL)bundleIdentifierHasClaritySettings:(id)a3 includingSystem:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(ClarityUIAppSetupCoordinator *)self _bundleIdentifierProvidesOwnSettings:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ClarityUIAppSetupCoordinator *)self _dataSourceForBundleIdentifier:v6];
    v9 = v8;
    if (v8)
    {
      v7 = [v8 hasClaritySettingsIncludingSystem:v4];
    }

    else
    {
      v10 = CLFLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ClarityUIAppSetupCoordinator createSetupControllerForBundleIdentifier:];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)_iconForApplicationIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:v3 format:2 scale:?];

  return v5;
}

- (id)_detailTextForApplicationIdentifier:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:AX_MobilePhoneBundleName] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", AX_FaceTimeBundleName) || objc_msgSend(v4, "isEqualToString:", AX_MobileSMSBundleName))
  {
    v5 = AXLocStringKeyForModel();
    v6 = settingsLocString(v5, @"ClarityUISettings");
    goto LABEL_4;
  }

  if (![v4 isEqualToString:AX_ClarityCameraBundleName])
  {
    if ([v4 isEqualToString:AX_ClarityPhotosBundleName])
    {
      v8 = @"CONFIGURE_SETTINGS_FOR_PHOTOS";
      goto LABEL_19;
    }

    if ([v4 isEqualToString:AX_MusicBundleName])
    {
      v8 = @"CONFIGURE_SETTINGS_FOR_MUSIC";
      goto LABEL_19;
    }

    if ([v4 isEqualToString:AX_AppleTVAppBundleName])
    {
      if (WLKIsRegulatedSKU())
      {
        v8 = @"CONFIGURE_SETTINGS_FOR_VIDEOS";
      }

      else
      {
        v8 = @"CONFIGURE_SETTINGS_FOR_TV";
      }

      goto LABEL_19;
    }

    v5 = [(ClarityUIAppSetupCoordinator *)self _displayNameForApplicationIdentifier:v4];
    v9 = settingsLocString(@"CONFIGURE_SETTINGS_FOR_APP", @"ClarityUISettings");
    v6 = [NSString localizedStringWithFormat:v9, v5];

LABEL_4:
    goto LABEL_5;
  }

  v8 = @"CONFIGURE_SETTINGS_FOR_CAMERA";
LABEL_19:
  v6 = settingsLocString(v8, @"ClarityUISettings");
LABEL_5:

  return v6;
}

- (BOOL)_bundleIdentifierProvidesOwnSettings:(id)a3
{
  v3 = _bundleIdentifierProvidesOwnSettings__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [ClarityUIAppSetupCoordinator _bundleIdentifierProvidesOwnSettings:];
  }

  v5 = [_bundleIdentifierProvidesOwnSettings__bundleIdentifiers containsObject:v4];

  return v5;
}

void __69__ClarityUIAppSetupCoordinator__bundleIdentifierProvidesOwnSettings___block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = AX_MobilePhoneBundleName;
  v5[1] = AX_FaceTimeBundleName;
  v5[2] = AX_MusicBundleName;
  v5[3] = AX_MobileSMSBundleName;
  v5[4] = AX_ClarityCameraBundleName;
  v5[5] = AX_ClarityPhotosBundleName;
  v5[6] = AX_AppleTVAppBundleName;
  v2 = [NSArray arrayWithObjects:v5 count:7];
  v3 = [v1 initWithArray:v2];
  v4 = _bundleIdentifierProvidesOwnSettings__bundleIdentifiers;
  _bundleIdentifierProvidesOwnSettings__bundleIdentifiers = v3;
}

- (id)clarityBundleNameForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:AX_MobilePhoneBundleName];
  v5 = [v3 isEqualToString:AX_FaceTimeBundleName];
  v6 = &CLFPhoneSettingsBundleName;
  if (v4 & 1) != 0 || (v5)
  {
    goto LABEL_13;
  }

  if ([v3 isEqualToString:AX_MusicBundleName])
  {
    v6 = &CLFMusicSettingsBundleName;
LABEL_13:
    v7 = *v6;
    goto LABEL_14;
  }

  if ([v3 isEqualToString:AX_MobileSMSBundleName])
  {
    v6 = &CLFMessagesSettingsBundleName;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:AX_ClarityCameraBundleName])
  {
    v6 = &CLFCameraSettingsBundleName;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:AX_ClarityPhotosBundleName])
  {
    v6 = &CLFPhotosSettingsBundleName;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:AX_AppleTVAppBundleName])
  {
    v6 = &CLFTVSettingsBundleName;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)_dataSourceForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(ClarityUIAppSetupCoordinator *)self _bundleIdentifierProvidesOwnSettings:v4])
  {
    v5 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_applicationIdentifiersToDataSourcesLock);
    v6 = [(ClarityUIAppSetupCoordinator *)self applicationIdentifiersToDataSources];
    v5 = [v6 objectForKey:v4];

    os_unfair_lock_unlock(&self->_applicationIdentifiersToDataSourcesLock);
    if (!v5)
    {
      v5 = [[ClarityUISettingsDataSource alloc] initWithBundleIdentifier:v4];
      os_unfair_lock_lock(&self->_applicationIdentifiersToDataSourcesLock);
      v7 = [(ClarityUIAppSetupCoordinator *)self applicationIdentifiersToDataSources];
      [v7 setObject:v5 forKey:v4];

      os_unfair_lock_unlock(&self->_applicationIdentifiersToDataSourcesLock);
    }
  }

  return v5;
}

@end
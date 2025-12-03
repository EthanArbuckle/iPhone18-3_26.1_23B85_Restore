@interface NPTOBridgeSettingsController
- (BOOL)_isTinkerPaired;
- (BOOL)_shouldShowPhotoSyncingSettings;
- (id)_device;
- (id)_preferencesAccessor;
- (id)albumLimit:(id)limit;
- (id)albumSpecifiers;
- (id)albumTitle:(id)title;
- (id)featuredPhotosSpecifiers;
- (id)featuredPhotosSyncingEnabled;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)memoriesSpecifiers;
- (id)memoriesSyncingEnabled;
- (id)notificationSpecifiers;
- (id)photoSyncingEnabled;
- (id)photoSyncingSpecifiers;
- (id)specifiers;
- (void)_addHyperlinkToText:(id)text inString:(id)string forSpecifier:(id)specifier;
- (void)_showAboutActionSheet;
- (void)setFeaturedPhotosSyncingEnabled:(id)enabled;
- (void)setMemoriesSyncingEnabled:(id)enabled;
- (void)setPhotoSyncingEnabled:(id)enabled;
@end

@implementation NPTOBridgeSettingsController

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];

  return v3;
}

- (id)localizedMirroringDetailFooter
{
  if ([(NPTOBridgeSettingsController *)self mirrorSettings])
  {
    showAlerts = [(NPTOBridgeSettingsController *)self showAlerts];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    if (showAlerts)
    {
      v6 = @"ALERTS_ENABLED";
    }

    else
    {
      v6 = @"ALERTS_DISABLED";
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    _isTinkerPaired = [(NPTOBridgeSettingsController *)self _isTinkerPaired];
    photoSyncingSpecifiers = [(NPTOBridgeSettingsController *)self photoSyncingSpecifiers];
    [v5 addObjectsFromArray:photoSyncingSpecifiers];

    if (_isTinkerPaired)
    {
      if (![(NPTOBridgeSettingsController *)self _shouldShowPhotoSyncingSettings])
      {
LABEL_15:
        v18 = *&self->BPSNotificationAppController_opaque[v3];
        *&self->BPSNotificationAppController_opaque[v3] = v5;

        v4 = *&self->BPSNotificationAppController_opaque[v3];
        goto LABEL_16;
      }

      albumSpecifiers = [(NPTOBridgeSettingsController *)self albumSpecifiers];
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        if ([(NPTOBridgeSettingsController *)self _shouldShowPhotoSyncingSettings])
        {
          _device = [(NPTOBridgeSettingsController *)self _device];
          v10 = [[NSUUID alloc] initWithUUIDString:@"AD784C80-650B-11EB-8572-0800200C9A66"];
          v11 = [_device supportsCapability:v10];

          if (v11)
          {
            v12 = +[LSApplicationWorkspace defaultWorkspace];
            v13 = [v12 applicationIsInstalled:@"com.apple.mobileslideshow"];

            if (v13)
            {
              memoriesSpecifiers = [(NPTOBridgeSettingsController *)self memoriesSpecifiers];
              [v5 addObjectsFromArray:memoriesSpecifiers];
            }

            featuredPhotosSpecifiers = [(NPTOBridgeSettingsController *)self featuredPhotosSpecifiers];
            [v5 addObjectsFromArray:featuredPhotosSpecifiers];
          }
        }
      }

      if ([(NPTOBridgeSettingsController *)self _shouldShowPhotoSyncingSettings])
      {
        albumSpecifiers2 = [(NPTOBridgeSettingsController *)self albumSpecifiers];
        [v5 addObjectsFromArray:albumSpecifiers2];
      }

      albumSpecifiers = [(NPTOBridgeSettingsController *)self notificationSpecifiers];
    }

    v17 = albumSpecifiers;
    [v5 addObjectsFromArray:albumSpecifiers];

    goto LABEL_15;
  }

LABEL_16:

  return v4;
}

- (id)photoSyncingSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PHOTO_SYNCING" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v5 = [PSSpecifier groupSpecifierWithID:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PHOTOS_SYNCING_PRIVACY_LINK_TEXT" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];

  if ([(NPTOBridgeSettingsController *)self _isTinkerPaired])
  {
    _device = [(NPTOBridgeSettingsController *)self _device];
    v9 = [_device valueForProperty:NRDevicePropertyName];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PHOTOS_SYNCING_SECTION_FOOTER_TINKER" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
    v12 = [NSString localizedStringWithFormat:v11, v9, v9, v7];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PHOTOS_SYNCING_SECTION_FOOTER" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
    v12 = [NSString localizedStringWithFormat:v10, v7];
  }

  [v5 setProperty:v12 forKey:PSFooterTextGroupKey];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v5 setProperty:v14 forKey:PSFooterCellClassGroupKey];

  [(NPTOBridgeSettingsController *)self _addHyperlinkToText:v7 inString:v12 forSpecifier:v5];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PHOTOS_SYNCING_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setPhotoSyncingEnabled:" get:"photoSyncingEnabled" detail:0 cell:6 edit:0];

  v20[0] = v5;
  v20[1] = v17;
  v18 = [NSArray arrayWithObjects:v20 count:2];

  return v18;
}

- (void)_addHyperlinkToText:(id)text inString:(id)string forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8 = [string rangeOfString:text];
  if (v9)
  {
    [specifierCopy addFooterHyperlinkWithRange:v8 target:v9 action:{self, "_showAboutActionSheet"}];
  }
}

- (void)_showAboutActionSheet
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.photos"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (id)memoriesSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MEMORIES_SECTION_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MEMORIES_SPECIFIER_FOOTER" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MEMORIES_SPECIFIER_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setMemoriesSyncingEnabled:" get:"memoriesSyncingEnabled" detail:0 cell:6 edit:0];

  [v10 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v13[0] = v5;
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];

  return v11;
}

- (id)featuredPhotosSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FEATURED_PHOTOS_SECTION_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FEATURED_PHOTOS_SPECIFIER_FOOTER" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FEATURED_PHOTOS_SPECIFIER_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setFeaturedPhotosSyncingEnabled:" get:"featuredPhotosSyncingEnabled" detail:0 cell:6 edit:0];

  [v10 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v13[0] = v5;
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];

  return v11;
}

- (id)albumSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ALBUM_SECTION_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ALBUM_NAME_SPECIFIER_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"albumTitle:" detail:objc_opt_class() cell:2 edit:0];

  [v8 setIdentifier:@"SELECTED_PHOTO_ALBUM_ID"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ALBUM_LIMIT_SPECIFIER_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"albumLimit:" detail:objc_opt_class() cell:2 edit:0];

  [v11 setIdentifier:@"PHOTOS_LIMIT_ID"];
  v14[0] = v5;
  v14[1] = v8;
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  return v12;
}

- (id)notificationSpecifiers
{
  v10.receiver = self;
  v10.super_class = NPTOBridgeSettingsController;
  specifiers = [(NPTOBridgeSettingsController *)&v10 specifiers];
  v3 = specifiers;
  v4 = &__NSArray0__struct;
  if (specifiers)
  {
    v4 = specifiers;
  }

  v5 = v4;

  v6 = [v5 specifierForID:BPSMirrorGroupID];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_SECTION_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  [v6 setName:v8];

  return v5;
}

- (void)setPhotoSyncingEnabled:(id)enabled
{
  enabledCopy = enabled;
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  bOOLValue = [enabledCopy BOOLValue];

  v7 = [NSNumber numberWithBool:bOOLValue];
  [_preferencesAccessor setObject:v7 forKey:NPTOPreferencesAppPhotosSyncingEnabledKey];

  [(NPTOBridgeSettingsController *)self reloadSpecifiers];
}

- (id)photoSyncingEnabled
{
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_preferencesAccessor npto_appPhotosSyncingEnabled]);

  return v3;
}

- (void)setMemoriesSyncingEnabled:(id)enabled
{
  enabledCopy = enabled;
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  bOOLValue = [enabledCopy BOOLValue];

  v6 = [NSNumber numberWithBool:bOOLValue];
  [_preferencesAccessor setObject:v6 forKey:NPTOPreferencesMemoriesSyncingEnabledKey];
}

- (id)memoriesSyncingEnabled
{
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_preferencesAccessor npto_memoriesSyncingEnabled]);

  return v3;
}

- (void)setFeaturedPhotosSyncingEnabled:(id)enabled
{
  enabledCopy = enabled;
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  bOOLValue = [enabledCopy BOOLValue];

  v6 = [NSNumber numberWithBool:bOOLValue];
  [_preferencesAccessor setObject:v6 forKey:NPTOPreferencesFeaturedPhotosSyncingEnabledKey];
}

- (id)featuredPhotosSyncingEnabled
{
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_preferencesAccessor npto_featuredPhotosSyncingEnabled]);

  return v3;
}

- (id)albumTitle:(id)title
{
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  npto_fetchSyncedAlbum = [_preferencesAccessor npto_fetchSyncedAlbum];
  firstObject = [npto_fetchSyncedAlbum firstObject];

  if (firstObject)
  {
    localizedTitle = [firstObject localizedTitle];
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    localizedTitle = [v7 localizedStringForKey:@"ALBUM_NONE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  }

  v8 = nanophotos_log_bridge();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = localizedTitle;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "title is %@", &v10, 0xCu);
  }

  return localizedTitle;
}

- (id)albumLimit:(id)limit
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"AMOUNT_COUNT" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [_preferencesAccessor npto_syncedPhotosLimit]);

  v8 = nanophotos_log_bridge();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v7;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "selectedAmount is %@", buf, 0xCu);
  }

  return v7;
}

- (BOOL)_shouldShowPhotoSyncingSettings
{
  _preferencesAccessor = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  npto_appPhotosSyncingEnabled = [_preferencesAccessor npto_appPhotosSyncingEnabled];

  return npto_appPhotosSyncingEnabled;
}

- (id)_preferencesAccessor
{
  preferencesAccessor = self->_preferencesAccessor;
  if (!preferencesAccessor)
  {
    v4 = [NPTOPreferencesAccessor alloc];
    _device = [(NPTOBridgeSettingsController *)self _device];
    v6 = [v4 initWithDevice:_device];
    v7 = self->_preferencesAccessor;
    self->_preferencesAccessor = v6;

    preferencesAccessor = self->_preferencesAccessor;
  }

  return preferencesAccessor;
}

- (id)_device
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (BOOL)_isTinkerPaired
{
  _device = [(NPTOBridgeSettingsController *)self _device];
  v3 = [_device valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end
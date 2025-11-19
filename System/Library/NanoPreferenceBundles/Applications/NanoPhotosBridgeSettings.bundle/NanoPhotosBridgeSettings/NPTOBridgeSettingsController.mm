@interface NPTOBridgeSettingsController
- (BOOL)_isTinkerPaired;
- (BOOL)_shouldShowPhotoSyncingSettings;
- (id)_device;
- (id)_preferencesAccessor;
- (id)albumLimit:(id)a3;
- (id)albumSpecifiers;
- (id)albumTitle:(id)a3;
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
- (void)_addHyperlinkToText:(id)a3 inString:(id)a4 forSpecifier:(id)a5;
- (void)_showAboutActionSheet;
- (void)setFeaturedPhotosSyncingEnabled:(id)a3;
- (void)setMemoriesSyncingEnabled:(id)a3;
- (void)setPhotoSyncingEnabled:(id)a3;
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
    v3 = [(NPTOBridgeSettingsController *)self showAlerts];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    if (v3)
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
    v6 = [(NPTOBridgeSettingsController *)self _isTinkerPaired];
    v7 = [(NPTOBridgeSettingsController *)self photoSyncingSpecifiers];
    [v5 addObjectsFromArray:v7];

    if (v6)
    {
      if (![(NPTOBridgeSettingsController *)self _shouldShowPhotoSyncingSettings])
      {
LABEL_15:
        v18 = *&self->BPSNotificationAppController_opaque[v3];
        *&self->BPSNotificationAppController_opaque[v3] = v5;

        v4 = *&self->BPSNotificationAppController_opaque[v3];
        goto LABEL_16;
      }

      v8 = [(NPTOBridgeSettingsController *)self albumSpecifiers];
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        if ([(NPTOBridgeSettingsController *)self _shouldShowPhotoSyncingSettings])
        {
          v9 = [(NPTOBridgeSettingsController *)self _device];
          v10 = [[NSUUID alloc] initWithUUIDString:@"AD784C80-650B-11EB-8572-0800200C9A66"];
          v11 = [v9 supportsCapability:v10];

          if (v11)
          {
            v12 = +[LSApplicationWorkspace defaultWorkspace];
            v13 = [v12 applicationIsInstalled:@"com.apple.mobileslideshow"];

            if (v13)
            {
              v14 = [(NPTOBridgeSettingsController *)self memoriesSpecifiers];
              [v5 addObjectsFromArray:v14];
            }

            v15 = [(NPTOBridgeSettingsController *)self featuredPhotosSpecifiers];
            [v5 addObjectsFromArray:v15];
          }
        }
      }

      if ([(NPTOBridgeSettingsController *)self _shouldShowPhotoSyncingSettings])
      {
        v16 = [(NPTOBridgeSettingsController *)self albumSpecifiers];
        [v5 addObjectsFromArray:v16];
      }

      v8 = [(NPTOBridgeSettingsController *)self notificationSpecifiers];
    }

    v17 = v8;
    [v5 addObjectsFromArray:v8];

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
    v8 = [(NPTOBridgeSettingsController *)self _device];
    v9 = [v8 valueForProperty:NRDevicePropertyName];

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

- (void)_addHyperlinkToText:(id)a3 inString:(id)a4 forSpecifier:(id)a5
{
  v10 = a5;
  v8 = [a4 rangeOfString:a3];
  if (v9)
  {
    [v10 addFooterHyperlinkWithRange:v8 target:v9 action:{self, "_showAboutActionSheet"}];
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
  v2 = [(NPTOBridgeSettingsController *)&v10 specifiers];
  v3 = v2;
  v4 = &__NSArray0__struct;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 specifierForID:BPSMirrorGroupID];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_SECTION_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  [v6 setName:v8];

  return v5;
}

- (void)setPhotoSyncingEnabled:(id)a3
{
  v4 = a3;
  v5 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v6 = [v4 BOOLValue];

  v7 = [NSNumber numberWithBool:v6];
  [v5 setObject:v7 forKey:NPTOPreferencesAppPhotosSyncingEnabledKey];

  [(NPTOBridgeSettingsController *)self reloadSpecifiers];
}

- (id)photoSyncingEnabled
{
  v2 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 npto_appPhotosSyncingEnabled]);

  return v3;
}

- (void)setMemoriesSyncingEnabled:(id)a3
{
  v4 = a3;
  v7 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v5 = [v4 BOOLValue];

  v6 = [NSNumber numberWithBool:v5];
  [v7 setObject:v6 forKey:NPTOPreferencesMemoriesSyncingEnabledKey];
}

- (id)memoriesSyncingEnabled
{
  v2 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 npto_memoriesSyncingEnabled]);

  return v3;
}

- (void)setFeaturedPhotosSyncingEnabled:(id)a3
{
  v4 = a3;
  v7 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v5 = [v4 BOOLValue];

  v6 = [NSNumber numberWithBool:v5];
  [v7 setObject:v6 forKey:NPTOPreferencesFeaturedPhotosSyncingEnabledKey];
}

- (id)featuredPhotosSyncingEnabled
{
  v2 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 npto_featuredPhotosSyncingEnabled]);

  return v3;
}

- (id)albumTitle:(id)a3
{
  v3 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v4 = [v3 npto_fetchSyncedAlbum];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 localizedTitle];
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"ALBUM_NONE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  }

  v8 = nanophotos_log_bridge();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "title is %@", &v10, 0xCu);
  }

  return v6;
}

- (id)albumLimit:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"AMOUNT_COUNT" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];
  v6 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [v6 npto_syncedPhotosLimit]);

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
  v2 = [(NPTOBridgeSettingsController *)self _preferencesAccessor];
  v3 = [v2 npto_appPhotosSyncingEnabled];

  return v3;
}

- (id)_preferencesAccessor
{
  preferencesAccessor = self->_preferencesAccessor;
  if (!preferencesAccessor)
  {
    v4 = [NPTOPreferencesAccessor alloc];
    v5 = [(NPTOBridgeSettingsController *)self _device];
    v6 = [v4 initWithDevice:v5];
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
  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)_isTinkerPaired
{
  v2 = [(NPTOBridgeSettingsController *)self _device];
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  return v4;
}

@end
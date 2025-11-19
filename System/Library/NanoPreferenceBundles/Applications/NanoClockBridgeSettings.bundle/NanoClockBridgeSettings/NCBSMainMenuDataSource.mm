@interface NCBSMainMenuDataSource
+ (BOOL)_supportsSettingShowComplicationDataWhenPasscodeLocked;
- (NCBSMainMenuDataSource)init;
- (id)_currentLocale;
- (id)_getFaceSupportNotificationEnabled;
- (id)_getFastFaceSwitchingEnabled;
- (id)_getNotificationsIndicatorActive:(id)a3;
- (id)_getShowComplicationDataWhenPasscodeLockedEnabled;
- (id)_getTimeTravelEnabled:(id)a3;
- (id)_is24HourTime:(id)a3;
- (id)_tapToSpeakTimeEnabled;
- (id)_tapticChimesCurrentSounds;
- (id)_tapticChimesEnabled;
- (void)_checkAndUpdateSettings;
- (void)_loadSectionInfo;
- (void)_set24HourTime:(id)a3 withSpecifier:(id)a4;
- (void)_setAlertsActive:(id)a3 withSpecifier:(id)a4;
- (void)_setFaceSupportNotificationEnabled:(id)a3;
- (void)_setFastFaceSwitchingEnabled:(id)a3;
- (void)_setNotificationsIndicatorActive:(id)a3 withSpecifier:(id)a4;
- (void)_setShowComplicationDataWhenPasscodeLockedEnabled:(id)a3;
- (void)_setTapToSpeakTimeEnabled:(id)a3;
- (void)_setTapticChimesEnabled:(id)a3;
- (void)_setTimeTravelEnabled:(id)a3 withSpecifier:(id)a4;
- (void)_writeSectionState;
- (void)dealloc;
- (void)handleCustomMonogramChange:(id)a3;
- (void)loadSpecifiers;
@end

@implementation NCBSMainMenuDataSource

- (NCBSMainMenuDataSource)init
{
  v13.receiver = self;
  v13.super_class = NCBSMainMenuDataSource;
  v2 = [(NCBSMainMenuDataSource *)&v13 init];
  if (v2)
  {
    v3 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v2->_gizmoGlobalDomain;
    v2->_gizmoGlobalDomain = v3;

    v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.NanoTimeKit.face"];
    faceSupportDomain = v2->_faceSupportDomain;
    v2->_faceSupportDomain = v5;

    if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
    {
      v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.chronod"];
      chronoSupportDomain = v2->_chronoSupportDomain;
      v2->_chronoSupportDomain = v7;
    }

    v9 = objc_alloc_init(NPSManager);
    syncManager = v2->_syncManager;
    v2->_syncManager = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"handleCustomMonogramChange:" name:NTKCustomMonogramChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCBSMainMenuDataSource;
  [(NCBSMainMenuDataSource *)&v4 dealloc];
}

- (void)_writeSectionState
{
  sectionInfo = self->_sectionInfo;
  v4 = +[NSDate date];
  [(NSMutableDictionary *)sectionInfo setObject:v4 forKey:BPSNanoBulletinUpdateTimestamp];

  v5 = [NPSDomainAccessor alloc];
  v10 = [v5 initWithDomain:BPSBulletinBoardAppsSettingsDomain];
  v6 = self->_sectionInfo;
  v7 = [(NCBSMainMenuDataSource *)self applicationBundleIdentifier];
  [v10 setObject:v6 forKey:v7];

  v8 = [v10 synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, BPSBulletinDistributorBBSectionsDidChangeNotification, 0, 0, 0);
}

- (void)_checkAndUpdateSettings
{
  v3 = BPSNanoBulletinShowsAlerts;
  v4 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:BPSNanoBulletinShowsAlerts];
  v5 = v4 == 0;
  v18 = v4;
  if (!v4)
  {
    sectionInfo = self->_sectionInfo;
    v7 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)sectionInfo setObject:v7 forKey:v3];
  }

  v8 = BPSNanoBulletinShowsPreview;
  v9 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:BPSNanoBulletinShowsPreview];
  v10 = v9;
  if (!v9 || [v9 BOOLValue])
  {
    v11 = self->_sectionInfo;
    v12 = [NSNumber numberWithBool:0];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v8];

    v5 = 1;
  }

  v13 = BPSNanoBulletinShowsCustomSettings;
  v14 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:BPSNanoBulletinShowsCustomSettings];
  v15 = v14;
  if (!v14 || ([v14 BOOLValue] & 1) == 0)
  {
    v16 = self->_sectionInfo;
    v17 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v16 setObject:v17 forKey:v13];

    goto LABEL_11;
  }

  if (v5)
  {
LABEL_11:
    [(NCBSMainMenuDataSource *)self _writeSectionState];
  }
}

- (void)_loadSectionInfo
{
  v3 = [NPSDomainAccessor alloc];
  v9 = [v3 initWithDomain:BPSBulletinBoardAppsSettingsDomain];
  v4 = [v9 synchronize];
  v5 = [(NCBSMainMenuDataSource *)self applicationBundleIdentifier];
  v6 = [v9 dictionaryForKey:v5];

  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
  }

  sectionInfo = self->_sectionInfo;
  self->_sectionInfo = v7;

  [(NCBSMainMenuDataSource *)self _checkAndUpdateSettings];
}

- (void)loadSpecifiers
{
  v2 = self;
  v116 = [(NCBSMainMenuDataSource *)self specifiers];
  v3 = +[NSMutableArray array];
  [(NCBSMainMenuDataSource *)v2 _loadSectionInfo];
  if ([(NCBSMainMenuDataSource *)v2 _currentLocale])
  {
    v2->_localeForces24HourTime = PSLocaleUses24HourClock();
  }

  v115 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  [v3 addObject:?];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TWENTY_FOUR_HOUR_TIME_FORMAT" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v6 = [NSString localizedStringWithFormat:v5, 24];

  v114 = v6;
  v113 = [PSSpecifier preferenceSpecifierNamed:v6 target:v2 set:"_set24HourTime:withSpecifier:" get:"_is24HourTime:" detail:0 cell:6 edit:0];
  [v3 addObject:?];
  v7 = +[PSSpecifier emptyGroupSpecifier];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FACE_FACE_SWITCHING_SECTION_FOOTER" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v118 = PSFooterTextGroupKey;
  [v7 setProperty:v9 forKey:?];

  v112 = v7;
  [v3 addObject:v7];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FAST_FACE_SWITCHING_CELL_TITLE" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:v2 set:"_setFastFaceSwitchingEnabled:" get:"_getFastFaceSwitchingEnabled" detail:0 cell:6 edit:0];

  v111 = v12;
  [v3 addObject:v12];
  if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    v13 = +[PSSpecifier emptyGroupSpecifier];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SHOW_COMPLICATION_DATA_WHEN_LOCKED_SECTION_FOOTER" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
    [v13 setProperty:v15 forKey:v118];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SHOW_COMPLICATION_DATA_WHEN_LOCKED_SECTION_HEADER" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
    [v13 setName:v17];

    [v3 addObject:v13];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SHOW_COMPLICATION_DATA_WHEN_LOCKED_CELL_TITLE" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v2 set:"_setShowComplicationDataWhenPasscodeLockedEnabled:" get:"_getShowComplicationDataWhenPasscodeLockedEnabled" detail:0 cell:6 edit:0];

    [v3 addObject:v20];
  }

  v21 = +[NRPairedDeviceRegistry sharedInstance];
  v22 = [v21 getActivePairedDevice];
  v23 = [[NSUUID alloc] initWithUUIDString:@"78E1881C-F6E1-421F-BC90-A1EBF1784BB1"];
  v24 = [v22 supportsCapability:v23];

  v117 = v3;
  v125 = v2;
  if (v24)
  {
    v25 = +[NSMutableArray array];
    v26 = +[AXTimeOutputPreferences sharedInstance];
    v27 = +[PSSpecifier emptyGroupSpecifier];
    v28 = [v26 tapticChimesLocalizedDescription];
    v29 = v118;
    [v27 setProperty:v28 forKey:v118];

    v109 = v27;
    [v25 addObject:v27];
    v30 = [v26 tapticChimesLocalizedTitle];
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:v2 set:"_setTapticChimesEnabled:" get:"_tapticChimesEnabled" detail:0 cell:6 edit:0];

    v107 = v31;
    [v25 addObject:v31];
    v32 = [v26 tapticChimesSoundsLocalizedTitle];
    v33 = v26;
    v34 = [PSSpecifier preferenceSpecifierNamed:v32 target:v2 set:0 get:"_tapticChimesCurrentSounds" detail:objc_opt_class() cell:2 edit:0];

    [v34 setIdentifier:@"CHIMES_SOUNDS_ID"];
    v105 = v34;
    [v25 addObject:v34];
    v35 = +[PSSpecifier emptyGroupSpecifier];
    v36 = [v33 tapToSpeakTimeLocalizedDescription];
    [v35 setProperty:v36 forKey:v118];

    [v35 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v35 setIdentifier:@"TapToSpeakTimeSettingsGroupID"];
    [v25 addObject:v35];
    v37 = [v33 tapToSpeakTimeLocalizedTitle];
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:v2 set:"_setTapToSpeakTimeEnabled:" get:"_tapToSpeakTimeEnabled" detail:0 cell:6 edit:0];

    v123 = v25;
    v103 = v38;
    [v25 addObject:v38];
    if ([v33 tapToSpeakTimeEnabled])
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v121 = v33;
      obj = [v33 tapToSpeakAvailabilityOptions];
      v39 = [obj countByEnumeratingWithState:&v126 objects:v131 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = 0;
        v42 = *v127;
        v43 = PSValueKey;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v127 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v45 = [*(*(&v126 + 1) + 8 * i) integerValue];
            v46 = [v121 localizedStringForTapToSpeakTimeAvailability:v45];
            v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:v125 set:0 get:0 detail:0 cell:3 edit:0];

            v48 = [NSNumber numberWithInteger:v45];
            [v47 setProperty:v48 forKey:v43];

            [v123 addObject:v47];
            if ([v121 tapToSpeakTimeAvailability] == v45)
            {
              v49 = v47;

              v41 = v49;
            }
          }

          v40 = [obj countByEnumeratingWithState:&v126 objects:v131 count:16];
        }

        while (v40);
      }

      else
      {
        v41 = 0;
      }

      [v35 setProperty:v41 forKey:PSRadioGroupCheckedSpecifierKey];
      v3 = v117;
      v29 = v118;
      v2 = v125;
      v33 = v121;
    }

    v50 = +[PSSpecifier emptyGroupSpecifier];
    v51 = [v33 tapticTimeLocalizedDescription];
    [v50 setProperty:v51 forKey:v29];

    [v123 addObject:v50];
    v52 = [v33 tapticTimeLocalizedTitle];
    v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:v2 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v53 setIdentifier:@"TAPTIC_TIME_IDENTIFIER"];
    [v123 addObject:v53];
    [v3 addObjectsFromArray:v123];
  }

  [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v55 = v54 = v2;
  [v3 addObject:v55];
  v56 = [NSBundle bundleForClass:objc_opt_class()];
  v57 = [v56 localizedStringForKey:@"MIRROR_ALERTS" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:v54 set:"_setAlertsActive:withSpecifier:" get:"_getAlertsActive:" detail:0 cell:6 edit:0];

  v122 = v58;
  [v3 addObject:v58];
  v59 = [NSBundle bundleForClass:objc_opt_class()];
  v60 = [v59 localizedStringForKey:@"MIRROR_DESCRIPTION" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v124 = v55;
  v61 = v55;
  v62 = v54;
  [v61 setProperty:v60 forKey:v118];

  v63 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v64 = [NSBundle bundleForClass:objc_opt_class()];
  v65 = [v64 localizedStringForKey:@"NOTIFICATIONS_INDICATOR" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v66 = [PSSpecifier preferenceSpecifierNamed:v65 target:v62 set:"_setNotificationsIndicatorActive:withSpecifier:" get:"_getNotificationsIndicatorActive:" detail:0 cell:6 edit:0];

  v67 = [NSBundle bundleForClass:objc_opt_class()];
  v68 = [v67 localizedStringForKey:@"NOTIFICATIONS_DESCRIPTION" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  [v63 setProperty:v68 forKey:v118];

  obja = v63;
  [v3 addObject:v63];
  v110 = v66;
  [v3 addObject:v66];
  v69 = +[NRPairedDeviceRegistry sharedInstance];
  v70 = [v69 getActivePairedDevice];
  v71 = [[NSUUID alloc] initWithUUIDString:@"21FFC697-E29F-4C65-878E-2AC90BAF5B9E"];
  LOBYTE(v64) = [v70 supportsCapability:v71];

  if ((v64 & 1) == 0)
  {
    v72 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v73 = [NSBundle bundleForClass:objc_opt_class()];
    v74 = [v73 localizedStringForKey:@"TIME_TRAVEL" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
    v75 = [PSSpecifier preferenceSpecifierNamed:v74 target:v125 set:"_setTimeTravelEnabled:withSpecifier:" get:"_getTimeTravelEnabled:" detail:0 cell:6 edit:0];

    v76 = [NSBundle bundleForClass:objc_opt_class()];
    v77 = [v76 localizedStringForKey:@"TIME_TRAVEL_DESCRIPTION" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
    [v72 setProperty:v77 forKey:v118];

    [v117 addObject:v72];
    [v117 addObject:v75];
  }

  v78 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v79 = [NTKCompanionMonogramEntryViewControllerClass() localizedTitle];
  v80 = [PSSpecifier preferenceSpecifierNamed:v79 target:v125 set:0 get:"_getMonogram:" detail:NTKCompanionMonogramEntryViewControllerClass() cell:2 edit:0];

  [v80 setIdentifier:@"MONOGRAM_ID"];
  v81 = [NTKCompanionMonogramEntryViewControllerClass() localizedDescription];
  [v78 setProperty:v81 forKey:v118];

  v108 = v78;
  [v117 addObject:v78];
  v106 = v80;
  [v117 addObject:v80];
  v82 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v83 = [NSBundle bundleForClass:objc_opt_class()];
  v102 = [v83 localizedStringForKey:@"FACE_NOTIFICATION_CELL_TITLE" value:&stru_C6C0 table:@"NanoClockBridgeSettings-argon"];
  v84 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];
  [v84 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v82 setIdentifier:@"faceSupportID"];
  v104 = v83;
  v100 = [v83 localizedStringForKey:@"FACE_NOTIFICATION_SECTION_FOOTER" value:&stru_C6C0 table:@"NanoClockBridgeSettings-argon"];
  [v82 setProperty:? forKey:?];
  v99 = v82;
  [v117 addObject:v82];
  v101 = v84;
  [v117 addObject:v84];
  v85 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v86 = [NSBundle bundleForClass:objc_opt_class()];
  v87 = [v86 localizedStringForKey:@"CITY_ABBREVIATIONS" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  v88 = [PSSpecifier preferenceSpecifierNamed:v87 target:v125 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v88 setIdentifier:@"CITY_ABBREVIATIONS_ID"];
  v89 = [NSBundle bundleForClass:objc_opt_class()];
  v90 = [v89 localizedStringForKey:@"CITY_ABBREVIATIONS_DESCRIPTION" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
  [v85 setProperty:v90 forKey:v118];

  [v117 addObject:v85];
  [v117 addObject:v88];
  v91 = +[NRPairedDeviceRegistry sharedInstance];
  v92 = [v91 getActivePairedDevice];
  v93 = [[NSUUID alloc] initWithUUIDString:@"DAB81146-4105-445B-94AD-14033A199AC4"];
  LOBYTE(v86) = [v92 supportsCapability:v93];

  if ((v86 & 1) == 0)
  {
    v94 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v95 = [NSBundle bundleForClass:objc_opt_class()];
    v96 = [v95 localizedStringForKey:@"SIRI_DATA_SOURCES" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];
    v97 = [PSSpecifier preferenceSpecifierNamed:v96 target:v125 set:0 get:0 detail:NTKCUpNextDataSourcesViewControllerClass() cell:2 edit:0];

    v130[0] = v94;
    v130[1] = v97;
    v98 = [NSArray arrayWithObjects:v130 count:2];
    [v117 addObjectsFromArray:v98];
  }

  [v116 removeAllObjects];
  [v116 addObjectsFromArray:v117];
}

- (void)_set24HourTime:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  localeForces24HourTime = self->_localeForces24HourTime;
  v9 = [v6 BOOLValue];
  v10 = &__kCFBooleanTrue;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = &__kCFBooleanTrue;
  }

  if (!v9)
  {
    v10 = 0;
  }

  v12 = !localeForces24HourTime;
  if (localeForces24HourTime)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  [(NPSDomainAccessor *)self->_gizmoGlobalDomain setObject:v14 forKey:@"AppleICUForce12HourTime"];
  [(NPSDomainAccessor *)self->_gizmoGlobalDomain setObject:v13 forKey:@"AppleICUForce24HourTime"];
  v15 = [(NPSDomainAccessor *)self->_gizmoGlobalDomain synchronize];
  v20[0] = @"AppleICUForce12HourTime";
  v20[1] = @"AppleICUForce24HourTime";
  v16 = [NSArray arrayWithObjects:v20 count:2];
  syncManager = self->_syncManager;
  v18 = [(NPSDomainAccessor *)self->_gizmoGlobalDomain domain];
  v19 = [NSSet setWithArray:v16];
  [(NPSManager *)syncManager synchronizeNanoDomain:v18 keys:v19];
}

- (id)_is24HourTime:(id)a3
{
  localeForces24HourTime = self->_localeForces24HourTime;
  gizmoGlobalDomain = self->_gizmoGlobalDomain;
  if (localeForces24HourTime)
  {
    v5 = ([(NPSDomainAccessor *)gizmoGlobalDomain BOOLForKey:@"AppleICUForce12HourTime"]^ 1);
  }

  else
  {
    v5 = [(NPSDomainAccessor *)gizmoGlobalDomain BOOLForKey:@"AppleICUForce24HourTime"];
  }

  return [NSNumber numberWithBool:v5];
}

- (id)_currentLocale
{
  v3 = [(NPSDomainAccessor *)self->_gizmoGlobalDomain synchronize];
  v4 = [(NPSDomainAccessor *)self->_gizmoGlobalDomain objectForKey:@"AppleLocale"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"en_US";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSLocale localeWithLocaleIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setAlertsActive:(id)a3 withSpecifier:(id)a4
{
  [(NSMutableDictionary *)self->_sectionInfo setObject:a3 forKey:BPSNanoBulletinShowsAlerts];

  [(NCBSMainMenuDataSource *)self _writeSectionState];
}

- (void)_setNotificationsIndicatorActive:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  v6 = +[NTKClockStatusBarSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setNotificationsIndicatorEnabled:v5];
}

- (id)_getNotificationsIndicatorActive:(id)a3
{
  v3 = +[NTKClockStatusBarSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isNotificationsIndicatorEnabled]);

  return v4;
}

- (void)_setTimeTravelEnabled:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  v6 = +[NTKTimeTravelSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setTimeTravelEnabled:v5];
}

- (id)_getTimeTravelEnabled:(id)a3
{
  v3 = +[NTKTimeTravelSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTimeTravelEnabled]);

  return v4;
}

- (void)handleCustomMonogramChange:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4AC8;
  v3[3] = &unk_C3B8;
  v3[4] = self;
  [(NCBSMainMenuDataSource *)self performUpdatesAnimated:0 usingBlock:v3];
}

- (id)_getFastFaceSwitchingEnabled
{
  v3 = [(NPSDomainAccessor *)self->_faceSupportDomain synchronize];
  v7 = 0;
  v4 = [(NPSDomainAccessor *)self->_faceSupportDomain BOOLForKey:@"FaceSupportFastSwitching" keyExistsAndHasValidFormat:&v7];
  if (v7 == 1)
  {
    v5 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)_setFastFaceSwitchingEnabled:(id)a3
{
  [(NPSDomainAccessor *)self->_faceSupportDomain setObject:a3 forKey:@"FaceSupportFastSwitching"];
  v4 = [(NPSDomainAccessor *)self->_faceSupportDomain synchronize];
  syncManager = self->_syncManager;
  v8 = @"FaceSupportFastSwitching";
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = [NSSet setWithArray:v6];
  [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.NanoTimeKit.face" keys:v7];
}

- (id)_getFaceSupportNotificationEnabled
{
  v3 = [(NPSDomainAccessor *)self->_faceSupportDomain synchronize];
  v7 = 0;
  v4 = [(NPSDomainAccessor *)self->_faceSupportDomain BOOLForKey:@"FaceSupportNotifications" keyExistsAndHasValidFormat:&v7];
  if (v7 == 1)
  {
    v5 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v5 = &__kCFBooleanTrue;
  }

  return v5;
}

- (void)_setFaceSupportNotificationEnabled:(id)a3
{
  [(NPSDomainAccessor *)self->_faceSupportDomain setObject:a3 forKey:@"FaceSupportNotifications"];
  v4 = [(NPSDomainAccessor *)self->_faceSupportDomain synchronize];
  v9 = @"FaceSupportNotifications";
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  syncManager = self->_syncManager;
  v7 = [(NPSDomainAccessor *)self->_faceSupportDomain domain];
  v8 = [NSSet setWithArray:v5];
  [(NPSManager *)syncManager synchronizeNanoDomain:v7 keys:v8];
}

- (id)_getShowComplicationDataWhenPasscodeLockedEnabled
{
  if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    v3 = [(NPSDomainAccessor *)self->_chronoSupportDomain synchronize];
    v7 = 0;
    v4 = [(NPSDomainAccessor *)self->_chronoSupportDomain BOOLForKey:@"showComplicationDataWhenPasscodeLocked" keyExistsAndHasValidFormat:&v7];
    if (v7 == 1)
    {
      v5 = [NSNumber numberWithBool:v4];
    }

    else
    {
      v5 = &__kCFBooleanTrue;
    }
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)_setShowComplicationDataWhenPasscodeLockedEnabled:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    [(NPSDomainAccessor *)self->_chronoSupportDomain setObject:v4 forKey:@"showComplicationDataWhenPasscodeLocked"];
    v5 = [(NPSDomainAccessor *)self->_chronoSupportDomain synchronize];
    v6 = [(NPSDomainAccessor *)self->_chronoSupportDomain domain];
    v9 = @"showComplicationDataWhenPasscodeLocked";
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    v8 = [NSSet setWithArray:v7];
    [(NPSManager *)self->_syncManager synchronizeNanoDomain:v6 keys:v8];
  }
}

+ (BOOL)_supportsSettingShowComplicationDataWhenPasscodeLocked
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (void)_setTapticChimesEnabled:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = +[AXTimeOutputPreferences sharedInstance];
  [v4 setVoiceOverTapticChimesEnabled:v3];
}

- (id)_tapticChimesEnabled
{
  v2 = +[AXTimeOutputPreferences sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 voiceOverTapticChimesEnabled]);

  return v3;
}

- (id)_tapticChimesCurrentSounds
{
  v2 = +[AXTimeOutputPreferences sharedInstance];
  v3 = [v2 tapticChimesLocalizedCurrentSounds];

  return v3;
}

- (void)_setTapToSpeakTimeEnabled:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = +[AXTimeOutputPreferences sharedInstance];
  [v5 setTapToSpeakTimeEnabled:v4];

  [(NCBSMainMenuDataSource *)self reloadSpecifiers];
}

- (id)_tapToSpeakTimeEnabled
{
  v2 = +[AXTimeOutputPreferences sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 tapToSpeakTimeEnabled]);

  return v3;
}

@end
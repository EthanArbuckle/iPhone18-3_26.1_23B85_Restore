@interface BYExpressSetupDataProvider
+ (BOOL)_shouldAddFeatureDeviceAndAppAnalyticsForDataSource:(id)a3;
+ (BOOL)_shouldAllowEnablingSiriWithVoiceTriggerEnabledSetting:(id)a3 hasNeededTrainingData:(BOOL)a4;
+ (id)featuresArrayForDataSource:(id)a3 eligibleForChlorine:(BOOL)a4;
+ (id)stringForDataSourceType:(unint64_t)a3;
- (BOOL)_countrySupportsFastDeviceAnalyticsOptIn;
- (BOOL)_eligibleForChlorine;
- (BOOL)_fetchSiriVoiceProfileAvailability;
- (BOOL)_fetchSiriWantsToRun;
- (BOOL)_hasiCloudSiriTrainingDataForLanguage:(id)a3 withMetadata:(id)a4;
- (BOOL)_isControllerSkippedForFeature:(unint64_t)a3;
- (BOOL)_isExcludedByApplicableDispositionsOfFlowItemClass:(Class)a3;
- (BOOL)_isRestrictedForFeature:(unint64_t)a3;
- (BOOL)_isStolenDeviceProtectionRestricted;
- (BOOL)_siriWantsToRun;
- (BYExpressSetupDataProvider)initWithChronicle:(id)a3 displayZoomExecutor:(id)a4 capabilities:(id)a5 settingsManager:(id)a6 buddyPreferences:(id)a7 buddyPreferencesExcludedFromBackup:(id)a8 managedConfiguration:(id)a9 deviceProvider:(id)a10 expressSettingsCache:(id)a11 iPadMultitaskingManager:(id)a12 flowItemDispositionProvider:(id)a13;
- (NSString)description;
- (PKPaymentSetupAssistantProvisioningContext)walletProvisioningContext;
- (id)_countryCode;
- (id)_descriptionForDataSource:(id)a3;
- (id)_stringForFeature:(unint64_t)a3;
- (id)actionButtonData;
- (id)appAnalyticsOptIn;
- (id)dataSource;
- (id)deviceAnalyticsOptIn;
- (id)expressSetupFeatures;
- (id)iPadMultitaskingMode;
- (id)locationServicesOptIn;
- (id)locationServicesSettings;
- (id)pairedWatches;
- (id)screenTimeEnabled;
- (id)siriDataSharingOptIn;
- (id)siriOptIn;
- (id)siriVoiceProfileAvailabilityMetadata;
- (id)siriVoiceTriggerEnabled;
- (id)softwareUpdateAutoDownloadEnabled;
- (id)softwareUpdateAutoUpdateEnabled;
- (id)sourceDeviceClass;
- (id)stolenDeviceProtectionEnabled;
- (id)stolenDeviceProtectionStrictModeEnabled;
- (id)stringForDataSourceFeatures:(id)a3;
- (id)walletMetadata;
- (id)watchMigrationData;
- (int64_t)userInterfaceStyleModeValue;
- (unint64_t)dataSourceType;
- (void)_applyDataSourceSetting:(BOOL)a3 forFeature:(unint64_t)a4;
- (void)_verifyAppliedSettings:(BOOL)a3;
- (void)applyDataSourceSetting:(BOOL)a3 forFeature:(unint64_t)a4;
- (void)applyExpressSettings;
- (void)prepare:(id)a3;
- (void)revertExpressSettings;
@end

@implementation BYExpressSetupDataProvider

- (BYExpressSetupDataProvider)initWithChronicle:(id)a3 displayZoomExecutor:(id)a4 capabilities:(id)a5 settingsManager:(id)a6 buddyPreferences:(id)a7 buddyPreferencesExcludedFromBackup:(id)a8 managedConfiguration:(id)a9 deviceProvider:(id)a10 expressSettingsCache:(id)a11 iPadMultitaskingManager:(id)a12 flowItemDispositionProvider:(id)a13
{
  v37[0] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  v33 = 0;
  objc_storeStrong(&v33, a6);
  v32 = 0;
  objc_storeStrong(&v32, a7);
  v31 = 0;
  objc_storeStrong(&v31, a8);
  v30 = 0;
  objc_storeStrong(&v30, a9);
  v29 = 0;
  objc_storeStrong(&v29, a10);
  v28 = 0;
  objc_storeStrong(&v28, a11);
  v27 = 0;
  objc_storeStrong(&v27, a12);
  v26 = 0;
  objc_storeStrong(&v26, a13);
  v18 = v37[0];
  v37[0] = 0;
  v25.receiver = v18;
  v25.super_class = BYExpressSetupDataProvider;
  v37[0] = [(BYExpressSetupDataProvider *)&v25 init];
  objc_storeStrong(v37, v37[0]);
  if (v37[0])
  {
    objc_storeStrong(v37[0] + 11, location[0]);
    v19 = objc_opt_new();
    v20 = *(v37[0] + 3);
    *(v37[0] + 3) = v19;

    objc_storeStrong(v37[0] + 12, obj);
    objc_storeStrong(v37[0] + 13, v34);
    objc_storeStrong(v37[0] + 14, v33);
    objc_storeStrong(v37[0] + 15, v32);
    objc_storeStrong(v37[0] + 16, v31);
    objc_storeStrong(v37[0] + 17, v30);
    objc_storeStrong(v37[0] + 18, v29);
    v21 = dispatch_queue_create("Siri State Cache Queue", 0);
    v22 = *(v37[0] + 22);
    *(v37[0] + 22) = v21;

    *(v37[0] + 33) = 0;
    objc_storeStrong(v37[0] + 19, v28);
    objc_storeStrong(v37[0] + 20, v27);
    objc_storeStrong(v37[0] + 21, v26);
  }

  v23 = v37[0];
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(v37, 0);
  return v23;
}

- (BOOL)_eligibleForChlorine
{
  v2 = self;
  objc_sync_enter(v2);
  if (!self->_didCacheEligibleForChlorine)
  {
    v3 = [(BYExpressSetupDataProvider *)self capabilities];
    self->_cachedEligibleForChlorine = [(BYCapabilities *)v3 eligibleForChlorine]& 1;

    self->_didCacheEligibleForChlorine = 1;
  }

  cachedEligibleForChlorine = self->_cachedEligibleForChlorine;
  objc_sync_exit(v2);

  return cachedEligibleForChlorine;
}

- (NSString)description
{
  v8 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableString);
  [location[0] appendFormat:@"<%@: %p>\n", objc_opt_class(), v8];
  v2 = [(BYExpressSetupDataProvider *)v8 _descriptionForDataSource:v8];
  [location[0] appendFormat:@"Resolved: %@\n", v2];

  v3 = [(BYExpressSetupDataProvider *)v8 dataSource];
  v4 = [(BYExpressSetupDataProvider *)v8 _descriptionForDataSource:v3];
  [location[0] appendFormat:@"Data source: %@\n", v4];

  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)dataSource
{
  v2 = [(BYExpressSetupDataProvider *)self backupDataSource];
  v3 = [(BYExpressSetupBackupSource *)v2 dataAvailable];

  if (v3)
  {
    v12 = [(BYExpressSetupDataProvider *)self backupDataSource];
  }

  else
  {
    v4 = [(BYExpressSetupDataProvider *)self proximitySetupDataSource];
    v5 = [(BYExpressSetupProximityDataSource *)v4 dataAvailable];

    if (v5)
    {
      v12 = [(BYExpressSetupDataProvider *)self proximitySetupDataSource];
    }

    else
    {
      v6 = [(BYExpressSetupDataProvider *)self cloudDataSource];
      v7 = [(BYExpressSetupCloudSource *)v6 dataAvailable];

      if (v7)
      {
        v12 = [(BYExpressSetupDataProvider *)self cloudDataSource];
      }

      else
      {
        v8 = [(BYExpressSetupDataProvider *)self defaultSource];

        if (!v8)
        {
          v9 = objc_alloc_init(BYExpressSetupDefaultSource);
          [(BYExpressSetupDataProvider *)self setDefaultSource:v9];
        }

        v12 = [(BYExpressSetupDataProvider *)self defaultSource];
      }
    }
  }

  return v12;
}

- (unint64_t)dataSourceType
{
  v8 = self;
  location[1] = a2;
  location[0] = [(BYExpressSetupDataProvider *)self dataSource];
  if (!location[0])
  {
    goto LABEL_10;
  }

  v2 = [(BYExpressSetupDataProvider *)v8 cloudDataSource];

  if (location[0] != v2)
  {
    v3 = [(BYExpressSetupDataProvider *)v8 proximitySetupDataSource];

    if (location[0] == v3)
    {
      v9 = 3;
      goto LABEL_11;
    }

    v4 = [(BYExpressSetupDataProvider *)v8 backupDataSource];

    if (location[0] == v4)
    {
      v9 = 2;
      goto LABEL_11;
    }

    v5 = [(BYExpressSetupDataProvider *)v8 defaultSource];

    if (location[0] == v5)
    {
      v9 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 4;
LABEL_11:
  objc_storeStrong(location, 0);
  return v9;
}

- (id)pairedWatches
{
  v2 = +[NRMigrator sharedMigrator];
  v3 = [(BYExpressSetupDataProvider *)self watchMigrationData];
  v4 = [v2 devicesFromMigrationConsentRequestData:v3];

  return v4;
}

- (id)expressSetupFeatures
{
  v6 = self;
  obj[1] = a2;
  if (!self->_listedFeatures)
  {
    v2 = [objc_opt_class() featuresArrayForDataSource:v6 eligibleForChlorine:{-[BYExpressSetupDataProvider _eligibleForChlorine](v6, "_eligibleForChlorine")}];
    obj[0] = [v2 mutableCopy];

    if (![(BYExpressSetupDataProvider *)v6 willRestoreOrMigrate])
    {
      [obj[0] removeObject:&off_10033D3E8];
    }

    if (![(BYExpressSetupDataProvider *)v6 willRestoreOrReallyMigrate])
    {
      [obj[0] removeObject:&off_10033D400];
    }

    objc_storeStrong(&v6->_listedFeatures, obj[0]);
    objc_storeStrong(obj, 0);
  }

  listedFeatures = v6->_listedFeatures;

  return listedFeatures;
}

+ (id)stringForDataSourceType:(unint64_t)a3
{
  if (a3)
  {
    switch(a3)
    {
      case 1uLL:
        v4 = @"Default";
        break;
      case 2uLL:
        v4 = @"Backup";
        break;
      case 3uLL:
        v4 = @"Proximity";
        break;
      case 4uLL:
        v4 = @"iCloud";
        break;
    }
  }

  else
  {
    v4 = @"Undefined";
  }

  return v4;
}

+ (id)featuresArrayForDataSource:(id)a3 eligibleForChlorine:(BOOL)a4
{
  v36 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v33 = objc_alloc_init(NSMutableArray);
  v5 = [location[0] siriOptIn];

  if (v5)
  {
    [v33 addObject:&off_10033D418];
    v6 = [location[0] siriDataSharingOptIn];

    if (v6)
    {
      [v33 addObject:&off_10033D430];
    }
  }

  v7 = [location[0] locationServicesOptIn];
  v31 = 0;
  v8 = 1;
  if (!v7)
  {
    v32 = [location[0] locationServicesSettings];
    v31 = 1;
    v8 = v32 != 0;
  }

  if (v31)
  {
  }

  if (v8)
  {
    [v33 addObject:&off_10033D448];
  }

  if (v34)
  {
    if ([v36 _shouldAddFeatureDeviceAndAppAnalyticsForDataSource:location[0]])
    {
      [v33 addObject:&off_10033D460];
    }
  }

  else
  {
    v9 = [location[0] deviceAnalyticsOptIn];

    if (v9)
    {
      [v33 addObject:&off_10033D478];
    }

    v10 = [location[0] appAnalyticsOptIn];

    if (v10)
    {
      [v33 addObject:&off_10033D490];
    }
  }

  v11 = [location[0] screenTimeEnabled];

  if (v11)
  {
    [v33 addObject:&off_10033D4A8];
  }

  v12 = [location[0] softwareUpdateAutoDownloadEnabled];
  v29 = 0;
  v13 = 0;
  if ([v12 BOOLValue])
  {
    v30 = [location[0] softwareUpdateAutoUpdateEnabled];
    v29 = 1;
    v13 = [v30 BOOLValue];
  }

  if (v29)
  {
  }

  if (v13)
  {
    [v33 addObject:&off_10033D4C0];
  }

  if ([location[0] userInterfaceStyleModeValue])
  {
    [v33 addObject:&off_10033D4D8];
  }

  v14 = [location[0] watchMigrationData];

  if (v14)
  {
    v15 = +[NRMigrator sharedMigrator];
    v16 = [location[0] watchMigrationData];
    v28 = [v15 devicesFromMigrationConsentRequestData:v16];

    if ([v28 count])
    {
      [v33 addObject:&off_10033D3E8];
    }

    objc_storeStrong(&v28, 0);
  }

  v17 = [location[0] walletProvisioningContext];
  v18 = [v17 setupAssistantCredentials];
  v19 = [v18 count];

  if (v19)
  {
    [v33 addObject:&off_10033D4F0];
  }

  v20 = [location[0] actionButtonData];

  if (v20)
  {
    [v33 addObject:&off_10033D508];
  }

  v21 = [location[0] stolenDeviceProtectionEnabled];
  v26 = 0;
  v22 = 0;
  if (v21)
  {
    v27 = [location[0] stolenDeviceProtectionEnabled];
    v26 = 1;
    v22 = [v27 BOOLValue];
  }

  if (v26)
  {
  }

  if (v22)
  {
    [v33 addObject:&off_10033D400];
  }

  v23 = [location[0] iPadMultitaskingMode];

  if (v23)
  {
    [v33 addObject:&off_10033D520];
  }

  v24 = [v33 copy];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);

  return v24;
}

- (id)stringForDataSourceFeatures:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [objc_opt_class() featuresArrayForDataSource:location[0] eligibleForChlorine:{-[BYExpressSetupDataProvider _eligibleForChlorine](v17, "_eligibleForChlorine")}];
  v14 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:__b objects:v18 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(__b[1] + 8 * i);
        v7 = [v13 unsignedIntegerValue];
        v8 = v14;
        v9 = [(BYExpressSetupDataProvider *)v17 _stringForFeature:v7, v7];
        [v8 addObject:v9];
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v18 count:16];
    }

    while (v4);
  }

  v10 = [v14 componentsJoinedByString:{@", "}];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)sourceDeviceClass
{
  v2 = [(BYExpressSetupDataProvider *)self dataSource:a2];
  v3 = [v2 sourceDeviceClass];

  return v3;
}

- (id)locationServicesOptIn
{
  v10 = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:1])
  {
    v11 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v10 _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v2, v3, "Express excluding location services because of inapplicable disposition", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    v11 = 0;
  }

  else
  {
    v4 = [(BYExpressSetupDataProvider *)v10 dataSource];
    v11 = [v4 locationServicesOptIn];
  }

  v5 = v11;

  return v5;
}

- (id)locationServicesSettings
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:1])
  {
    v5 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self dataSource];
    v5 = [v2 locationServicesSettings];
  }

  return v5;
}

- (id)appAnalyticsOptIn
{
  v11 = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:3])
  {
    v12 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v11 _isRestrictedForFeature:3])
  {
    v12 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v11 _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
  {
    oslog[0] = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v9;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Express excluding app analytics because of inapplicable disposition", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v12 = 0;
  }

  else
  {
    location = [(BYExpressSetupDataProvider *)v11 deviceAnalyticsOptIn];
    if (location)
    {
      if ([location BOOLValue])
      {
        v4 = [(BYExpressSetupDataProvider *)v11 dataSource];
        v12 = [v4 appAnalyticsOptIn];
      }

      else
      {
        v12 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&location, 0);
  }

  v5 = v12;

  return v5;
}

- (id)deviceAnalyticsOptIn
{
  v12 = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:2])
  {
    v13 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v12 _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
  {
    oslog[0] = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v10;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Express excluding device analytics because of inapplicable disposition", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v13 = 0;
  }

  else
  {
    v8 = [(BYExpressSetupDataProvider *)v12 _countrySupportsFastDeviceAnalyticsOptIn];
    v7 = [(BYExpressSetupDataProvider *)v12 _isRestrictedForFeature:2];
    if (v8 & 1) == 0 || (v7)
    {
      v13 = 0;
    }

    else
    {
      v4 = [(BYExpressSetupDataProvider *)v12 dataSource];
      v13 = [v4 deviceAnalyticsOptIn];
    }
  }

  v5 = v13;

  return v5;
}

- (id)siriOptIn
{
  v49 = self;
  location[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    v50 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)v49 dataSource];
    v3 = [v2 siriOptIn];
    v4 = v3 == 0;

    if (v4)
    {
      location[0] = _BYLoggingFacility();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        v5 = location[0];
        v6 = v47;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v5, v6, "Express Data Provider: Siri is nil", buf, 2u);
      }

      objc_storeStrong(location, 0);
      v50 = 0;
    }

    else
    {
      v45 = [(BYExpressSetupDataProvider *)v49 _isRestrictedForFeature:5];
      v7 = [(BYExpressSetupDataProvider *)v49 capabilities];
      v8 = 0;
      if (([(BYCapabilities *)v7 canShowSiriScreen]& 1) != 0)
      {
        v8 = [(BYExpressSetupDataProvider *)v49 _siriWantsToRun];
      }

      v44 = v8 & 1;
      v9 = [(BYExpressSetupDataProvider *)v49 dataSource];
      v10 = [v9 siriOptIn];
      v11 = [v10 BOOLValue] ^ 1;

      if (v11)
      {
        oslog = _BYLoggingFacility();
        v42 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075A38(v52, v44 & 1, v45 & 1);
          _os_log_impl(&_mh_execute_header, oslog, v42, "Express Data Provider: Siri is disabled. Siri conditions: wantsToRun = %d, restricted = %d", v52, 0xEu);
        }

        objc_storeStrong(&oslog, 0);
        if ((v45 & 1) != 0 || (v44 & 1) == 0)
        {
          v50 = 0;
        }

        else
        {
          v12 = [(BYExpressSetupDataProvider *)v49 dataSource];
          v50 = [v12 siriOptIn];
        }
      }

      else
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x20000000;
        v40 = 32;
        v41 = 0;
        v13 = [(BYExpressSetupDataProvider *)v49 siriStateCacheQueue];
        block = _NSConcreteStackBlock;
        v32 = -1073741824;
        v33 = 0;
        v34 = sub_10019CA70;
        v35 = &unk_10032C290;
        v36[1] = &v37;
        v36[0] = v49;
        dispatch_sync(v13, &block);

        v14 = [sub_10019CAB8() sharedPreferences];
        v15 = [v14 allSiriLanguageCodesForSystemLanguageCode:0 isGoodFit:0];
        v30 = [v15 count];

        v29 = [(BYExpressSetupDataProvider *)v49 _supportsAlwaysOnHeySiri];
        v16 = 1;
        if (v29)
        {
          v16 = *(v38 + 24);
        }

        v28 = v16 & 1;
        v17 = [sub_10019CAB8() sharedPreferences];
        v27 = [v17 languageCode];

        v18 = 0;
        if (v30 > 1)
        {
          v18 = 0;
          if (!v27)
          {
            v18 = *(v38 + 24) ^ 1;
          }
        }

        v26 = v18 & 1;
        v19 = [(BYExpressSetupDataProvider *)v49 dataSource];
        v25 = [v19 siriVoiceTriggerEnabled];

        v24 = [BYExpressSetupDataProvider _shouldAllowEnablingSiriWithVoiceTriggerEnabledSetting:v25 hasNeededTrainingData:v28 & 1];
        v23 = _BYLoggingFacility();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_10019CBCC(v51, v44 & 1, v26 & 1, v45 & 1, v29 & 1, v38[3] & 1, v25, v24 & 1);
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Express Data Provider: Siri conditions: wantsToRun = %d, needsLanguageDisambiguation = %d, restricted = %d, supportsAOP = %d, hasVoiceProfileIniCloud = %d, voiceTriggerEnabledSetting = %@, shouldAllowEnablingSiriWithVoiceTriggerDetails = %d", v51, 0x30u);
        }

        objc_storeStrong(&v23, 0);
        if ((v45 & 1) != 0 || (v44 & 1) == 0 || (v26 & 1) != 0 || (v24 & 1) == 0)
        {
          v50 = 0;
        }

        else
        {
          v20 = [(BYExpressSetupDataProvider *)v49 dataSource];
          v50 = [v20 siriOptIn];
        }

        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(v36, 0);
        _Block_object_dispose(&v37, 8);
      }
    }
  }

  v21 = v50;

  return v21;
}

+ (BOOL)_shouldAllowEnablingSiriWithVoiceTriggerEnabledSetting:(id)a3 hasNeededTrainingData:(BOOL)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v7 = ([location[0] BOOLValue] & 1) == 0 || a4;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (id)siriVoiceProfileAvailabilityMetadata
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    v5 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self dataSource];
    v5 = [v2 siriVoiceProfileAvailabilityMetadata];
  }

  return v5;
}

- (id)siriDataSharingOptIn
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    v5 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self dataSource];
    v5 = [v2 siriDataSharingOptIn];
  }

  return v5;
}

- (id)siriVoiceTriggerEnabled
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    v5 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self dataSource];
    v5 = [v2 siriVoiceTriggerEnabled];
  }

  return v5;
}

- (id)screenTimeEnabled
{
  v10 = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:7])
  {
    v11 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v10 _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v2, v3, "Express excluding screen time because of inapplicable disposition", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    v11 = 0;
  }

  else
  {
    v4 = [(BYExpressSetupDataProvider *)v10 dataSource];
    v11 = [v4 screenTimeEnabled];
  }

  v5 = v11;

  return v5;
}

- (id)softwareUpdateAutoUpdateEnabled
{
  v10 = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:8])
  {
    v11 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v10 _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v2, v3, "Express excluding software update auto update because of inapplicable disposition", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    v11 = 0;
  }

  else
  {
    v4 = [(BYExpressSetupDataProvider *)v10 dataSource];
    v11 = [v4 softwareUpdateAutoUpdateEnabled];
  }

  v5 = v11;

  return v5;
}

- (id)softwareUpdateAutoDownloadEnabled
{
  v10 = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:8])
  {
    v11 = 0;
  }

  else if ([(BYExpressSetupDataProvider *)v10 _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v2, v3, "Express excluding software update auto download because of inapplicable disposition", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    v11 = 0;
  }

  else
  {
    v4 = [(BYExpressSetupDataProvider *)v10 dataSource];
    v11 = [v4 softwareUpdateAutoDownloadEnabled];
  }

  v5 = v11;

  return v5;
}

- (int64_t)userInterfaceStyleModeValue
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:9])
  {
    return 0;
  }

  v2 = [(BYExpressSetupDataProvider *)self dataSource];
  v5 = [v2 userInterfaceStyleModeValue];

  return v5;
}

- (id)watchMigrationData
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:10])
  {
    v7 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self capabilities];
    v3 = [(BYCapabilities *)v2 supportsAppleWatch]^ 1;

    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v4 = [(BYExpressSetupDataProvider *)self dataSource];
      v7 = [v4 watchMigrationData];
    }
  }

  return v7;
}

- (PKPaymentSetupAssistantProvisioningContext)walletProvisioningContext
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:11])
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_walletProvisioningContext;
  }

  return v4;
}

- (id)walletMetadata
{
  v2 = [(BYExpressSetupDataProvider *)self dataSource:a2];
  v3 = [v2 walletMetadata];

  return v3;
}

- (id)actionButtonData
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:12])
  {
    v7 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self deviceProvider];
    v3 = [(BYDeviceProvider *)v2 hasActionButton]^ 1;

    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v4 = [(BYExpressSetupDataProvider *)self dataSource];
      v7 = [v4 actionButtonData];
    }
  }

  return v7;
}

- (id)stolenDeviceProtectionEnabled
{
  if ([(BYExpressSetupDataProvider *)self _isRestrictedForFeature:13])
  {
    v5 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self dataSource];
    v5 = [v2 stolenDeviceProtectionEnabled];
  }

  return v5;
}

- (id)stolenDeviceProtectionStrictModeEnabled
{
  v2 = [(BYExpressSetupDataProvider *)self stolenDeviceProtectionEnabled];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [(BYExpressSetupDataProvider *)self dataSource];
    v7 = [v4 stolenDeviceProtectionStrictModeEnabled];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iPadMultitaskingMode
{
  if ([(BYExpressSetupDataProvider *)self _isRestrictedForFeature:14])
  {
    v5 = 0;
  }

  else
  {
    v2 = [(BYExpressSetupDataProvider *)self dataSource];
    v5 = [v2 iPadMultitaskingMode];
  }

  return v5;
}

- (void)prepare:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10019D728;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_fetchSiriVoiceProfileAvailability
{
  v18 = self;
  v17[1] = a2;
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_not_V2(v2);

  if ([(BYExpressSetupDataProvider *)v18 _supportsAlwaysOnHeySiri])
  {
    v3 = [sub_10019CAB8() sharedPreferences];
    v17[0] = [v3 languageCode];

    if (!v17[0])
    {
      oslog = _BYLoggingFacility();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(buf, v17[0]);
        _os_log_impl(&_mh_execute_header, oslog, v15, "Language code from AFPreferences = %@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v4 = +[NSLocale currentLocale];
      v5 = [(NSLocale *)v4 localeIdentifier];
      v6 = [NSLocale canonicalLanguageIdentifierFromString:v5];
      v7 = v17[0];
      v17[0] = v6;

      v14 = _BYLoggingFacility();
      v13 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v21, v17[0]);
        _os_log_impl(&_mh_execute_header, v14, v13, "Canonical language identifier from NSLocale = %@", v21, 0xCu);
      }

      objc_storeStrong(&v14, 0);
    }

    location = [(BYExpressSetupDataProvider *)v18 siriVoiceProfileAvailabilityMetadata];
    v11 = [(BYExpressSetupDataProvider *)v18 _hasiCloudSiriTrainingDataForLanguage:v17[0] withMetadata:location];
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(BYExpressSetupDataProvider *)v18 hasVoiceProfileIniCloud];
      sub_100097718(v20, v8 & 1, v17[0]);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Has stored voice profile = %d, language = %@", v20, 0x12u);
    }

    objc_storeStrong(&v10, 0);
    v19 = v11 & 1;
    objc_storeStrong(&location, 0);
    objc_storeStrong(v17, 0);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

- (BOOL)_fetchSiriWantsToRun
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_not_V2(v2);

  return BYAssistantScreenShouldBeShownInSetupAssistant() & 1;
}

- (void)applyExpressSettings
{
  v14 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Apply express settings...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  memset(__b, 0, sizeof(__b));
  v4 = [(BYExpressSetupDataProvider *)v14 expressSetupFeatures];
  v5 = [v4 countByEnumeratingWithState:__b objects:v15 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(__b[1] + 8 * i);
        v8 = [v10 unsignedIntegerValue];
        [(BYExpressSetupDataProvider *)v14 applyDataSourceSetting:1 forFeature:v8, v8];
      }

      v5 = [v4 countByEnumeratingWithState:__b objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)revertExpressSettings
{
  v14 = self;
  oslog[1] = a2;
  if ([(NSMutableArray *)self->_appliedFeatures count])
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Revert express settings", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    memset(__b, 0, sizeof(__b));
    v4 = v14->_appliedFeatures;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:__b objects:v15 count:16];
    if (v5)
    {
      v6 = *__b[2];
      do
      {
        for (i = 0; i < v5; ++i)
        {
          if (*__b[2] != v6)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(__b[1] + 8 * i);
          v8 = [v10 unsignedIntegerValue];
          [(BYExpressSetupDataProvider *)v14 _applyDataSourceSetting:0 forFeature:v8, v8];
        }

        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:__b objects:v15 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)v14->_appliedFeatures removeAllObjects];
  }
}

- (id)_stringForFeature:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v4 = @"Location Services";
      break;
    case 2uLL:
      v4 = @"Device Analytics";
      break;
    case 3uLL:
      v4 = @"App Analytics";
      break;
    case 4uLL:
      v4 = @"Device And App Analytics";
      break;
    case 5uLL:
      v4 = @"Siri";
      break;
    case 6uLL:
      v4 = @"Siri Data Sharing";
      break;
    case 7uLL:
      v4 = @"Screen Time";
      break;
    case 8uLL:
      v4 = @"Auto Update";
      break;
    case 9uLL:
      v4 = @"Appearance";
      break;
    case 0xAuLL:
      v4 = @"Watch";
      break;
    case 0xBuLL:
      v4 = @"Apple Wallet";
      break;
    case 0xCuLL:
      v4 = @"Action Button";
      break;
    case 0xDuLL:
      v4 = @"Stolen Device Protection";
      break;
    case 0xEuLL:
      v4 = @"iPad Multitasking";
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (void)applyDataSourceSetting:(BOOL)a3 forFeature:(unint64_t)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = [(BYExpressSetupDataProvider *)v12 _stringForFeature:v9];
    sub_100071CBC(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v7, "Applying value from data source for %{public}@...", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(BYExpressSetupDataProvider *)v12 _applyDataSourceSetting:v10 forFeature:v9];
  if (v10)
  {
    appliedFeatures = v12->_appliedFeatures;
    v5 = [NSNumber numberWithUnsignedInteger:v9];
    [(NSMutableArray *)appliedFeatures addObject:v5];
  }
}

- (id)_descriptionForDataSource:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = objc_alloc_init(NSMutableString);
  [v23 appendFormat:@"<%@: %p {\n", objc_opt_class(), location[0]];
  v3 = [location[0] locationServicesOptIn];
  v4 = [location[0] locationServicesSettings];
  [v23 appendFormat:@"\tLocation Services: (opt-in: %@, data: %@)\n", v3, v4];

  v5 = [location[0] deviceAnalyticsOptIn];
  [v23 appendFormat:@"\tDevice Analytics: %@\n", v5];

  v6 = [location[0] appAnalyticsOptIn];
  [v23 appendFormat:@"\tApp Analytics: %@\n", v6];

  v7 = [location[0] siriOptIn];
  v8 = [location[0] siriVoiceProfileAvailabilityMetadata];
  v9 = [location[0] siriDataSharingOptIn];
  v10 = [location[0] siriVoiceTriggerEnabled];
  [v23 appendFormat:@"\tSiri: (opt-in: %@, metadata: %@, data sharing: %@, voice trigger enabled: %@)\n", v7, v8, v9, v10];

  v11 = [location[0] screenTimeEnabled];
  [v23 appendFormat:@"\tScreen Time: %@\n", v11];

  v12 = [location[0] softwareUpdateAutoUpdateEnabled];
  v13 = [location[0] softwareUpdateAutoDownloadEnabled];
  [v23 appendFormat:@"\tAuto Update: (update: %@, download: %@)\n", v12, v13];

  v14 = [location[0] stolenDeviceProtectionEnabled];
  [v23 appendFormat:@"\tStolen Device Protection: %@\n", v14];

  v15 = [location[0] stolenDeviceProtectionStrictModeEnabled];
  [v23 appendFormat:@"\tStolen Device Protection Strict Mode: %@\n", v15];

  [v23 appendFormat:@"\tAppearance: %ld\n", objc_msgSend(location[0], "userInterfaceStyleModeValue")];
  v16 = [location[0] watchMigrationData];
  [v23 appendFormat:@"\tWatch: %@\n", v16];

  v17 = [location[0] walletProvisioningContext];
  v18 = [v17 setupAssistantCredentials];
  [v23 appendFormat:@"\tApple Wallet: %lu credentials\n", objc_msgSend(v18, "count")];

  v19 = [location[0] actionButtonData];
  [v23 appendFormat:@"\tAction Button: %@\n", v19];

  v20 = [location[0] iPadMultitaskingMode];
  [v23 appendFormat:@"\tMultiTasking: %@\n", v20];

  [v23 appendString:@"}>"];
  v21 = v23;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (void)_applyDataSourceSetting:(BOOL)a3 forFeature:(unint64_t)a4
{
  v122 = self;
  v121 = a2;
  v120 = a3;
  location[1] = a4;
  switch(a4)
  {
    case 1uLL:
      v4 = [(BYExpressSetupDataProvider *)v122 dataSource];
      v5 = [v4 locationServicesSettings];

      if (v5)
      {
        location[0] = 0;
        if (v120)
        {
          v6 = [(BYExpressSetupDataProvider *)v122 dataSource];
          v7 = [v6 locationServicesSettings];
          v8 = location[0];
          location[0] = v7;
        }

        v9 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        [BuddyLocationServicesController setSettingsFromArchivedPreferences:location[0] settingsManager:v9];

        objc_storeStrong(location, 0);
      }

      else
      {
        v116 = 0;
        v114 = 0;
        v10 = 0;
        if (v120)
        {
          v117 = [(BYExpressSetupDataProvider *)v122 dataSource];
          v116 = 1;
          v115 = [v117 locationServicesOptIn];
          v114 = 1;
          v10 = [v115 BOOLValue];
        }

        if (v114)
        {
        }

        if (v116)
        {
        }

        v118 = v10 & 1;
        v11 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        [BuddyLocationServicesController setSettingEnabled:v10 & 1 presented:v120 settingsManager:v11];
      }

      break;
    case 2uLL:
      if (v120)
      {
        v12 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v13 = [v12 deviceAnalyticsOptIn];
        v14 = [v13 BOOLValue];
        v15 = [(BYExpressSetupDataProvider *)v122 chronicle];
        v16 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v17 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyDiagnosticsController setDeviceAnalyticsSubmissionEnabled:v14 & 1 presented:1 chronicle:v15 settingsManager:v16 buddyPreferences:v17];
      }

      else
      {
        v18 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v19 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyDiagnosticsController clearDeviceAnalyticsSettingWithSettingsManager:v18 buddyPreferences:v19];
      }

      break;
    case 3uLL:
      if (v120)
      {
        v20 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v21 = [v20 appAnalyticsOptIn];
        v22 = [v21 BOOLValue];
        v23 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v24 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyAppActivityController setAppActivityEnabled:v22 & 1 presented:1 settingsManager:v23 buddyPreferences:v24];
      }

      else
      {
        v25 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v26 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyAppActivityController clearAppActivitySettingWithSettingsManager:v25 buddyPreferences:v26];
      }

      break;
    case 4uLL:
      if (v120)
      {
        v27 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v28 = [v27 deviceAnalyticsOptIn];
        v29 = [v28 BOOLValue];

        v113 = v29 & 1;
        v30 = v29 & 1;
        v31 = [(BYExpressSetupDataProvider *)v122 chronicle];
        v32 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v33 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyDiagnosticsController setDeviceAnalyticsSubmissionEnabled:v30 & 1 presented:1 chronicle:v31 settingsManager:v32 buddyPreferences:v33];

        v34 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v35 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyAppActivityController setAppActivityEnabled:v113 & 1 presented:1 settingsManager:v34 buddyPreferences:v35];
      }

      else
      {
        v36 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v37 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyDiagnosticsController clearDeviceAnalyticsSettingWithSettingsManager:v36 buddyPreferences:v37];

        v34 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v35 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyAppActivityController clearAppActivitySettingWithSettingsManager:v34 buddyPreferences:v35];
      }

      break;
    case 5uLL:
      v110 = 0;
      v108 = 0;
      v38 = 0;
      if (v120)
      {
        v111 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v110 = 1;
        v109 = [v111 siriOptIn];
        v108 = 1;
        v38 = [v109 BOOLValue];
      }

      if (v108)
      {
      }

      if (v110)
      {
      }

      v112 = v38 & 1;
      oslog = _BYLoggingFacility();
      v106 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(buf, v112 & 1);
        _os_log_impl(&_mh_execute_header, oslog, v106, "Setting Siri enabled to %d", buf, 8u);
      }

      objc_storeStrong(&oslog, 0);
      v39 = v112;
      v40 = [(BYExpressSetupDataProvider *)v122 settingsManager];
      [AssistantOptInController setAssistantEnabled:v39 & 1 settingsManager:v40];

      v103 = 0;
      v101 = 0;
      v41 = 0;
      if (v112)
      {
        v104 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v103 = 1;
        v102 = [v104 siriVoiceTriggerEnabled];
        v101 = 1;
        v41 = [v102 BOOLValue];
      }

      if (v101)
      {
      }

      if (v103)
      {
      }

      v105 = v41 & 1;
      v100 = _BYLoggingFacility();
      v99 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(v125, v105 & 1);
        _os_log_impl(&_mh_execute_header, v100, v99, "Setting Siri voice trigger enabled to %d", v125, 8u);
      }

      objc_storeStrong(&v100, 0);
      if (v105)
      {
        v42 = [sub_10019CAB8() sharedPreferences];
        v98 = [v42 languageCode];

        v97 = _BYLoggingFacility();
        v96 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          sub_10006AE18(v124, v98);
          _os_log_impl(&_mh_execute_header, v97, v96, "Will enable Voice Trigger upon sync for language: %@", v124, 0xCu);
        }

        objc_storeStrong(&v97, 0);
        v43 = [sub_10019FB28() sharedInstance];
        [v43 enableVoiceTriggerUponVoiceProfileSyncForLanguage:v98];

        objc_storeStrong(&v98, 0);
      }

      v44 = [(BYExpressSetupDataProvider *)v122 settingsManager];
      [(BFFSettingsManager *)v44 setAssistantVoiceTriggerEnabled:v105 & 1];

      v45 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
      v46 = [NSNumber numberWithBool:v120];
      [(BYPreferencesController *)v45 setObject:v46 forKey:BYBuddyAssistantPresentedKey];

      if ([(BYExpressSetupDataProvider *)v122 _supportsAlwaysOnHeySiri])
      {
        v47 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        v48 = [NSNumber numberWithBool:v120];
        [(BYPreferencesController *)v47 setObject:v48 forKey:BYBuddyAssistantPHSOfferedKey];
      }

      break;
    case 6uLL:
      v95 = objc_alloc_init(sub_10019FC3C());
      v94 = 0;
      v92 = 0;
      v90 = 0;
      v49 = 0;
      if (v120)
      {
        v93 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v92 = 1;
        v91 = [v93 siriDataSharingOptIn];
        v90 = 1;
        v49 = v91 != 0;
      }

      if (v90)
      {
      }

      if (v92)
      {
      }

      if (v49)
      {
        v50 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v51 = [v50 siriDataSharingOptIn];
        v52 = [v51 BOOLValue];

        if (v52)
        {
          v94 = 1;
        }

        else
        {
          v94 = 2;
        }
      }

      v89 = _BYLoggingFacility();
      v88 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        sub_10019FD50(v123, v94);
        _os_log_impl(&_mh_execute_header, v89, v88, "Setting Siri data sharing opt-in to %{public}ld", v123, 0xCu);
      }

      objc_storeStrong(&v89, 0);
      v53 = [BYExpressSetupDataProvider stringForDataSourceType:[(BYExpressSetupDataProvider *)v122 dataSourceType]];
      v87 = [NSString stringWithFormat:@"express setup (%@)", v53];

      [v95 setSiriDataSharingOptInStatus:v94 propagateToHomeAccessories:0 source:1 reason:v87 completion:&stru_10032E1E8];
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v95, 0);
      break;
    case 7uLL:
      if (v120)
      {
        v54 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v55 = [(BYPreferencesController *)v54 screenTimeEnabled];
        v56 = [v55 BOOLValue];
        v57 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyScreenTimeController setScreenTimeEnabled:v56 & 1 presented:1 buddyPreferences:v57];
      }

      else
      {
        v54 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyScreenTimeController clearScreenTimeSetting:v54];
      }

      goto LABEL_61;
    case 8uLL:
      if (v120)
      {
        v54 = [(BYExpressSetupDataProvider *)v122 dataSource];
        v58 = [(BYPreferencesController *)v54 softwareUpdateAutoUpdateEnabled];
        v59 = [v58 BOOLValue];
        v60 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyAutoUpdateController setAutoDownloadWithUpdateEnabled:v59 & 1 presented:1 buddyPreferences:v60];
      }

      else
      {
        v54 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyAutoUpdateController clearAutoDownloadWithUpdateSetting:v54];
      }

LABEL_61:

      break;
    case 9uLL:
      if (v120)
      {
        v61 = [(BYExpressSetupDataProvider *)v122 userInterfaceStyleModeValue];
        v62 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyUserInterfaceStyleSelector setUserInterfaceStyleModeValue:v61 presented:1 buddyPreferences:v62];
      }

      else
      {
        v63 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
        [BuddyUserInterfaceStyleSelector clearUserInterfaceStyleMode:v63];
      }

      break;
    case 0xAuLL:
      if (v120)
      {
        v64 = [(BYExpressSetupDataProvider *)v122 pairedWatches];
        v86 = [NRMigrator migrationDataPreRestoreForConsentedDevices:v64];

        v65 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v66 = [(BYExpressSetupDataProvider *)v122 buddyPreferencesExcludedFromBackup];
        [BuddyWatchMigrationController setWatchDataForMigration:v86 presented:1 settingsManager:v65 buddyPreferencesExcludedFromBackup:v66];

        objc_storeStrong(&v86, 0);
      }

      else
      {
        v67 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v68 = [(BYExpressSetupDataProvider *)v122 buddyPreferencesExcludedFromBackup];
        [BuddyWatchMigrationController clearWatchDataForMigrationWithSettingsManager:v67 buddyPreferencesExcludedFromBackup:v68];
      }

      break;
    case 0xBuLL:
      if (v120)
      {
        v69 = [(BYExpressSetupDataProvider *)v122 walletProvisioningContext];
        v70 = [(BYExpressSetupDataProvider *)v122 miscState];
        [(BuddyMiscState *)v70 setWalletProvisioningContext:v69];
      }

      else
      {
        v69 = [(BYExpressSetupDataProvider *)v122 miscState];
        [(PKPaymentSetupAssistantProvisioningContext *)v69 setWalletProvisioningContext:0];
      }

      goto LABEL_74;
    case 0xCuLL:
      if (v120)
      {
        v71 = [(BYExpressSetupDataProvider *)v122 actionButtonData];
        [BYActionButtonStore setCurrentData:v71];

        v72 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        v73 = [(BYExpressSetupDataProvider *)v122 actionButtonData];
        [(BFFSettingsManager *)v72 stashActionButtonData:v73];
      }

      else
      {
        [BYActionButtonStore setCurrentData:0];
        v72 = [(BYExpressSetupDataProvider *)v122 settingsManager];
        [(BFFSettingsManager *)v72 stashActionButtonData:0];
      }

      v74 = [(BYExpressSetupDataProvider *)v122 buddyPreferences];
      v75 = [NSNumber numberWithBool:v120];
      [(BYPreferencesController *)v74 setObject:v75 forKey:@"ButtonConfigurationPresented"];

      break;
    case 0xDuLL:
      v76 = [(BYExpressSetupDataProvider *)v122 buddyPreferencesExcludedFromBackup];
      v77 = [NSNumber numberWithBool:v120];
      [(BYPreferencesController *)v76 setObject:v77 forKey:@"StolenDeviceProtectionPresented"];

      v69 = [(BYExpressSetupDataProvider *)v122 expressSettingsCache];
      if (v120)
      {
        [(PKPaymentSetupAssistantProvisioningContext *)v69 setApplyHandlerFor:13];
      }

      else
      {
        [(PKPaymentSetupAssistantProvisioningContext *)v69 removeApplyHandlerFor:13];
      }

LABEL_74:

      break;
    case 0xEuLL:
      v78 = [(BYExpressSetupDataProvider *)v122 iPadMultitaskingMode];

      if (v78)
      {
        v79 = [(BYExpressSetupDataProvider *)v122 iPadMultitaskingManager];
        [(BuddyMultitaskingSelectionManagerType *)v79 updatePanePresented:v120];

        if (v120)
        {
          v80 = [(BYExpressSetupDataProvider *)v122 iPadMultitaskingMode];
          v81 = [v80 unsignedIntValue];
          v82 = [(BYExpressSetupDataProvider *)v122 iPadMultitaskingManager];
          [(BuddyMultitaskingSelectionManagerType *)v82 setCurrentMode:v81];

          v83 = [(BYExpressSetupDataProvider *)v122 iPadMultitaskingManager];
          v84 = [(BYExpressSetupDataProvider *)v122 settingsManager];
          [(BuddyMultitaskingSelectionManagerType *)v83 stashSettingUsing:v84];
        }

        else
        {
          v83 = [(BYExpressSetupDataProvider *)v122 iPadMultitaskingManager];
          v84 = [(BYExpressSetupDataProvider *)v122 settingsManager];
          [(BuddyMultitaskingSelectionManagerType *)v83 resetSettingsUsing:v84];
        }
      }

      break;
    default:
      break;
  }

  if (v120)
  {
    v85 = [(BYExpressSetupDataProvider *)v122 expressSettingsCache];
    [(BYExpressSettingsSetupCache *)v85 setExpressDataSource:v122];
  }

  else
  {
    v85 = [(BYExpressSetupDataProvider *)v122 expressSettingsCache];
    [(BYExpressSettingsSetupCache *)v85 setExpressDataSource:0];
  }
}

- (BOOL)_isControllerSkippedForFeature:(unint64_t)a3
{
  v7 = 0;
  switch(a3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
      v3 = [(BYExpressSetupDataProvider *)self _cloudConfigManager:objc_opt_class()];
      break;
    case 0xEuLL:
      v7 = objc_opt_class();
      goto LABEL_4;
    default:
LABEL_4:
      v3 = [(BYExpressSetupDataProvider *)self _cloudConfigManager:v7];
      break;
  }

  v4 = v3;
  v5 = [v4 cloudConfigWantsToSkipControllerClass:v8];

  return v5 & 1;
}

- (BOOL)_isRestrictedForFeature:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      goto LABEL_20;
    case 2uLL:
      v3 = [(BYExpressSetupDataProvider *)self capabilities];
      v15 = [(BYCapabilities *)v3 isDeviceAnalyticsRestricted]& 1;

      return v15 & 1;
    case 3uLL:
      v4 = [(BYExpressSetupDataProvider *)self capabilities];
      v15 = [(BYCapabilities *)v4 isAppAnalyticsRestricted]& 1;

      return v15 & 1;
  }

  if (a3 != 4)
  {
    if (a3 - 5 < 2)
    {
      v8 = [(BYExpressSetupDataProvider *)self capabilities];
      v15 = [(BYCapabilities *)v8 isSiriRestricted]& 1;

      return v15 & 1;
    }

    if (a3 == 7)
    {
      v9 = [(BYExpressSetupDataProvider *)self capabilities];
      v15 = [(BYCapabilities *)v9 isScreenTimeRestricted]& 1;

      return v15 & 1;
    }

    if (a3 - 8 >= 5)
    {
      if (a3 == 13)
      {
        v15 = [(BYExpressSetupDataProvider *)self _isStolenDeviceProtectionRestricted];
      }

      else if (a3 == 14)
      {
        v10 = [(BYExpressSetupDataProvider *)self iPadMultitaskingManager];
        v15 = ([(BuddyMultitaskingSelectionManagerType *)v10 isFeatureApplicableToSetup]^ 1) & 1;
      }

      return v15 & 1;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  v5 = [(BYExpressSetupDataProvider *)self capabilities];
  v6 = [(BYCapabilities *)v5 isDeviceAnalyticsRestricted];
  v12 = 0;
  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v13 = [(BYExpressSetupDataProvider *)self capabilities];
    v12 = 1;
    v7 = [(BYCapabilities *)v13 isAppAnalyticsRestricted];
  }

  v15 = v7 & 1;
  if (v12)
  {
  }

  return v15 & 1;
}

- (BOOL)_isExcludedByApplicableDispositionsOfFlowItemClass:(Class)a3
{
  v3 = [(BYExpressSetupDataProvider *)self flowItemDispositionProvider];
  v4 = [(BYFlowItemDispositionProvider *)v3 dispositions];
  v5 = v4 & [(objc_class *)a3 applicableDispositions];

  return v5 == 0;
}

- (BOOL)_countrySupportsFastDeviceAnalyticsOptIn
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(BYExpressSetupDataProvider *)self _countryCode];
  location = &off_10033CF58;
  v5 = ([location containsObject:v4[0]] & 1) == 0;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
  return v5;
}

- (id)_countryCode
{
  v2 = [NSLocale currentLocale:a2];
  v3 = [(NSLocale *)v2 countryCode];

  return v3;
}

- (BOOL)_siriWantsToRun
{
  v16 = self;
  v15 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 0;
  v2 = [(BYExpressSetupDataProvider *)self siriStateCacheQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001A0648;
  v8 = &unk_10032C290;
  v9[1] = &v10;
  v9[0] = v16;
  dispatch_sync(v2, &v4);

  LOBYTE(v2) = *(v11 + 24);
  objc_storeStrong(v9, 0);
  _Block_object_dispose(&v10, 8);
  return v2 & 1;
}

- (BOOL)_hasiCloudSiriTrainingDataForLanguage:(id)a3 withMetadata:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v5 = [sub_10019FB28() sharedInstance];
  v6 = [v5 hasVoiceProfileIniCloudForLanguageCode:location[0] withBackupMetaBlob:v10];

  v9 = v6 & 1;
  if ((v6 & 1) == 0)
  {
    v7 = [sub_10019FB28() sharedInstance];
    v9 = [v7 hasVoiceProfileIniCloudForLanguageCode:location[0]] & 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BOOL)_isStolenDeviceProtectionRestricted
{
  v17 = self;
  v16 = a2;
  v2 = [(BYExpressSetupDataProvider *)self capabilities];
  v3 = [(BYCapabilities *)v2 isPearlEnrolled];
  v14 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v15 = [(BYExpressSetupDataProvider *)v17 capabilities];
    v14 = 1;
    v4 = [v15 isTouchIDEnrolled];
  }

  v5 = v4 ^ 1;
  if (v14)
  {
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    v6 = +[LARatchetManager sharedInstance];
    v7 = [(LARatchetManager *)v6 isFeatureAvailable]^ 1;

    if (v7)
    {
      return 1;
    }

    else
    {
      v8 = +[AKAccountManager sharedInstance];
      location = [(AKAccountManager *)v8 primaryAuthKitAccount];

      v11 = 0;
      v9 = 1;
      if (location)
      {
        v12 = +[AKAccountManager sharedInstance];
        v11 = 1;
        v9 = [(AKAccountManager *)v12 securityLevelForAccount:location]!= 4;
      }

      if (v11)
      {
      }

      v18 = v9;
      objc_storeStrong(&location, 0);
    }
  }

  return v18;
}

- (void)_verifyAppliedSettings:(BOOL)a3
{
  if (a3)
  {
    if (![(NSMutableArray *)self->_appliedFeatures count])
    {
      v3 = +[NSAssertionHandler currentHandler];
      [(NSAssertionHandler *)v3 handleFailureInMethod:a2 object:self file:@"BYExpressSetupDataProvider.m" lineNumber:1169 description:@"Expected applied features to not be 0"];
    }
  }

  else if ([(NSMutableArray *)self->_appliedFeatures count])
  {
    v4 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v4 handleFailureInMethod:a2 object:self file:@"BYExpressSetupDataProvider.m" lineNumber:1171 description:@"Expected applied features to be 0"];
  }
}

+ (BOOL)_shouldAddFeatureDeviceAndAppAnalyticsForDataSource:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] deviceAnalyticsOptIn];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v11 = [location[0] appAnalyticsOptIn];
    v10 = 1;
    v4 = 0;
    if (v11)
    {
      v9 = [location[0] deviceAnalyticsOptIn];
      v8 = 1;
      v7 = [location[0] appAnalyticsOptIn];
      v6 = 1;
      v4 = [v9 isEqualToNumber:?];
    }
  }

  v13 = v4 & 1;
  if (v6)
  {
  }

  if (v8)
  {
  }

  if (v10)
  {
  }

  objc_storeStrong(location, 0);
  return v13 & 1;
}

@end
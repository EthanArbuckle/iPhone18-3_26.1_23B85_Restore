@interface BYExpressSetupDataProvider
+ (BOOL)_shouldAddFeatureDeviceAndAppAnalyticsForDataSource:(id)source;
+ (BOOL)_shouldAllowEnablingSiriWithVoiceTriggerEnabledSetting:(id)setting hasNeededTrainingData:(BOOL)data;
+ (id)featuresArrayForDataSource:(id)source eligibleForChlorine:(BOOL)chlorine;
+ (id)stringForDataSourceType:(unint64_t)type;
- (BOOL)_countrySupportsFastDeviceAnalyticsOptIn;
- (BOOL)_eligibleForChlorine;
- (BOOL)_fetchSiriVoiceProfileAvailability;
- (BOOL)_fetchSiriWantsToRun;
- (BOOL)_hasiCloudSiriTrainingDataForLanguage:(id)language withMetadata:(id)metadata;
- (BOOL)_isControllerSkippedForFeature:(unint64_t)feature;
- (BOOL)_isExcludedByApplicableDispositionsOfFlowItemClass:(Class)class;
- (BOOL)_isRestrictedForFeature:(unint64_t)feature;
- (BOOL)_isStolenDeviceProtectionRestricted;
- (BOOL)_siriWantsToRun;
- (BYExpressSetupDataProvider)initWithChronicle:(id)chronicle displayZoomExecutor:(id)executor capabilities:(id)capabilities settingsManager:(id)manager buddyPreferences:(id)preferences buddyPreferencesExcludedFromBackup:(id)backup managedConfiguration:(id)configuration deviceProvider:(id)self0 expressSettingsCache:(id)self1 iPadMultitaskingManager:(id)self2 flowItemDispositionProvider:(id)self3;
- (NSString)description;
- (PKPaymentSetupAssistantProvisioningContext)walletProvisioningContext;
- (id)_countryCode;
- (id)_descriptionForDataSource:(id)source;
- (id)_stringForFeature:(unint64_t)feature;
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
- (id)stringForDataSourceFeatures:(id)features;
- (id)walletMetadata;
- (id)watchMigrationData;
- (int64_t)userInterfaceStyleModeValue;
- (unint64_t)dataSourceType;
- (void)_applyDataSourceSetting:(BOOL)setting forFeature:(unint64_t)feature;
- (void)_verifyAppliedSettings:(BOOL)settings;
- (void)applyDataSourceSetting:(BOOL)setting forFeature:(unint64_t)feature;
- (void)applyExpressSettings;
- (void)prepare:(id)prepare;
- (void)revertExpressSettings;
@end

@implementation BYExpressSetupDataProvider

- (BYExpressSetupDataProvider)initWithChronicle:(id)chronicle displayZoomExecutor:(id)executor capabilities:(id)capabilities settingsManager:(id)manager buddyPreferences:(id)preferences buddyPreferencesExcludedFromBackup:(id)backup managedConfiguration:(id)configuration deviceProvider:(id)self0 expressSettingsCache:(id)self1 iPadMultitaskingManager:(id)self2 flowItemDispositionProvider:(id)self3
{
  v37[0] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, chronicle);
  obj = 0;
  objc_storeStrong(&obj, executor);
  v34 = 0;
  objc_storeStrong(&v34, capabilities);
  v33 = 0;
  objc_storeStrong(&v33, manager);
  v32 = 0;
  objc_storeStrong(&v32, preferences);
  v31 = 0;
  objc_storeStrong(&v31, backup);
  v30 = 0;
  objc_storeStrong(&v30, configuration);
  v29 = 0;
  objc_storeStrong(&v29, provider);
  v28 = 0;
  objc_storeStrong(&v28, cache);
  v27 = 0;
  objc_storeStrong(&v27, multitaskingManager);
  v26 = 0;
  objc_storeStrong(&v26, dispositionProvider);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!self->_didCacheEligibleForChlorine)
  {
    capabilities = [(BYExpressSetupDataProvider *)self capabilities];
    self->_cachedEligibleForChlorine = [(BYCapabilities *)capabilities eligibleForChlorine]& 1;

    self->_didCacheEligibleForChlorine = 1;
  }

  cachedEligibleForChlorine = self->_cachedEligibleForChlorine;
  objc_sync_exit(selfCopy);

  return cachedEligibleForChlorine;
}

- (NSString)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableString);
  [location[0] appendFormat:@"<%@: %p>\n", objc_opt_class(), selfCopy];
  v2 = [(BYExpressSetupDataProvider *)selfCopy _descriptionForDataSource:selfCopy];
  [location[0] appendFormat:@"Resolved: %@\n", v2];

  dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
  v4 = [(BYExpressSetupDataProvider *)selfCopy _descriptionForDataSource:dataSource];
  [location[0] appendFormat:@"Data source: %@\n", v4];

  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)dataSource
{
  backupDataSource = [(BYExpressSetupDataProvider *)self backupDataSource];
  dataAvailable = [(BYExpressSetupBackupSource *)backupDataSource dataAvailable];

  if (dataAvailable)
  {
    backupDataSource2 = [(BYExpressSetupDataProvider *)self backupDataSource];
  }

  else
  {
    proximitySetupDataSource = [(BYExpressSetupDataProvider *)self proximitySetupDataSource];
    dataAvailable2 = [(BYExpressSetupProximityDataSource *)proximitySetupDataSource dataAvailable];

    if (dataAvailable2)
    {
      backupDataSource2 = [(BYExpressSetupDataProvider *)self proximitySetupDataSource];
    }

    else
    {
      cloudDataSource = [(BYExpressSetupDataProvider *)self cloudDataSource];
      dataAvailable3 = [(BYExpressSetupCloudSource *)cloudDataSource dataAvailable];

      if (dataAvailable3)
      {
        backupDataSource2 = [(BYExpressSetupDataProvider *)self cloudDataSource];
      }

      else
      {
        defaultSource = [(BYExpressSetupDataProvider *)self defaultSource];

        if (!defaultSource)
        {
          v9 = objc_alloc_init(BYExpressSetupDefaultSource);
          [(BYExpressSetupDataProvider *)self setDefaultSource:v9];
        }

        backupDataSource2 = [(BYExpressSetupDataProvider *)self defaultSource];
      }
    }
  }

  return backupDataSource2;
}

- (unint64_t)dataSourceType
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(BYExpressSetupDataProvider *)self dataSource];
  if (!location[0])
  {
    goto LABEL_10;
  }

  cloudDataSource = [(BYExpressSetupDataProvider *)selfCopy cloudDataSource];

  if (location[0] != cloudDataSource)
  {
    proximitySetupDataSource = [(BYExpressSetupDataProvider *)selfCopy proximitySetupDataSource];

    if (location[0] == proximitySetupDataSource)
    {
      v9 = 3;
      goto LABEL_11;
    }

    backupDataSource = [(BYExpressSetupDataProvider *)selfCopy backupDataSource];

    if (location[0] == backupDataSource)
    {
      v9 = 2;
      goto LABEL_11;
    }

    defaultSource = [(BYExpressSetupDataProvider *)selfCopy defaultSource];

    if (location[0] == defaultSource)
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
  watchMigrationData = [(BYExpressSetupDataProvider *)self watchMigrationData];
  v4 = [v2 devicesFromMigrationConsentRequestData:watchMigrationData];

  return v4;
}

- (id)expressSetupFeatures
{
  selfCopy = self;
  obj[1] = a2;
  if (!self->_listedFeatures)
  {
    v2 = [objc_opt_class() featuresArrayForDataSource:selfCopy eligibleForChlorine:{-[BYExpressSetupDataProvider _eligibleForChlorine](selfCopy, "_eligibleForChlorine")}];
    obj[0] = [v2 mutableCopy];

    if (![(BYExpressSetupDataProvider *)selfCopy willRestoreOrMigrate])
    {
      [obj[0] removeObject:&off_10033D3E8];
    }

    if (![(BYExpressSetupDataProvider *)selfCopy willRestoreOrReallyMigrate])
    {
      [obj[0] removeObject:&off_10033D400];
    }

    objc_storeStrong(&selfCopy->_listedFeatures, obj[0]);
    objc_storeStrong(obj, 0);
  }

  listedFeatures = selfCopy->_listedFeatures;

  return listedFeatures;
}

+ (id)stringForDataSourceType:(unint64_t)type
{
  if (type)
  {
    switch(type)
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

+ (id)featuresArrayForDataSource:(id)source eligibleForChlorine:(BOOL)chlorine
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  chlorineCopy = chlorine;
  v33 = objc_alloc_init(NSMutableArray);
  siriOptIn = [location[0] siriOptIn];

  if (siriOptIn)
  {
    [v33 addObject:&off_10033D418];
    siriDataSharingOptIn = [location[0] siriDataSharingOptIn];

    if (siriDataSharingOptIn)
    {
      [v33 addObject:&off_10033D430];
    }
  }

  locationServicesOptIn = [location[0] locationServicesOptIn];
  v31 = 0;
  v8 = 1;
  if (!locationServicesOptIn)
  {
    locationServicesSettings = [location[0] locationServicesSettings];
    v31 = 1;
    v8 = locationServicesSettings != 0;
  }

  if (v31)
  {
  }

  if (v8)
  {
    [v33 addObject:&off_10033D448];
  }

  if (chlorineCopy)
  {
    if ([selfCopy _shouldAddFeatureDeviceAndAppAnalyticsForDataSource:location[0]])
    {
      [v33 addObject:&off_10033D460];
    }
  }

  else
  {
    deviceAnalyticsOptIn = [location[0] deviceAnalyticsOptIn];

    if (deviceAnalyticsOptIn)
    {
      [v33 addObject:&off_10033D478];
    }

    appAnalyticsOptIn = [location[0] appAnalyticsOptIn];

    if (appAnalyticsOptIn)
    {
      [v33 addObject:&off_10033D490];
    }
  }

  screenTimeEnabled = [location[0] screenTimeEnabled];

  if (screenTimeEnabled)
  {
    [v33 addObject:&off_10033D4A8];
  }

  softwareUpdateAutoDownloadEnabled = [location[0] softwareUpdateAutoDownloadEnabled];
  v29 = 0;
  bOOLValue = 0;
  if ([softwareUpdateAutoDownloadEnabled BOOLValue])
  {
    softwareUpdateAutoUpdateEnabled = [location[0] softwareUpdateAutoUpdateEnabled];
    v29 = 1;
    bOOLValue = [softwareUpdateAutoUpdateEnabled BOOLValue];
  }

  if (v29)
  {
  }

  if (bOOLValue)
  {
    [v33 addObject:&off_10033D4C0];
  }

  if ([location[0] userInterfaceStyleModeValue])
  {
    [v33 addObject:&off_10033D4D8];
  }

  watchMigrationData = [location[0] watchMigrationData];

  if (watchMigrationData)
  {
    v15 = +[NRMigrator sharedMigrator];
    watchMigrationData2 = [location[0] watchMigrationData];
    v28 = [v15 devicesFromMigrationConsentRequestData:watchMigrationData2];

    if ([v28 count])
    {
      [v33 addObject:&off_10033D3E8];
    }

    objc_storeStrong(&v28, 0);
  }

  walletProvisioningContext = [location[0] walletProvisioningContext];
  setupAssistantCredentials = [walletProvisioningContext setupAssistantCredentials];
  v19 = [setupAssistantCredentials count];

  if (v19)
  {
    [v33 addObject:&off_10033D4F0];
  }

  actionButtonData = [location[0] actionButtonData];

  if (actionButtonData)
  {
    [v33 addObject:&off_10033D508];
  }

  stolenDeviceProtectionEnabled = [location[0] stolenDeviceProtectionEnabled];
  v26 = 0;
  bOOLValue2 = 0;
  if (stolenDeviceProtectionEnabled)
  {
    stolenDeviceProtectionEnabled2 = [location[0] stolenDeviceProtectionEnabled];
    v26 = 1;
    bOOLValue2 = [stolenDeviceProtectionEnabled2 BOOLValue];
  }

  if (v26)
  {
  }

  if (bOOLValue2)
  {
    [v33 addObject:&off_10033D400];
  }

  iPadMultitaskingMode = [location[0] iPadMultitaskingMode];

  if (iPadMultitaskingMode)
  {
    [v33 addObject:&off_10033D520];
  }

  v24 = [v33 copy];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);

  return v24;
}

- (id)stringForDataSourceFeatures:(id)features
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v15 = [objc_opt_class() featuresArrayForDataSource:location[0] eligibleForChlorine:{-[BYExpressSetupDataProvider _eligibleForChlorine](selfCopy, "_eligibleForChlorine")}];
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
        unsignedIntegerValue = [v13 unsignedIntegerValue];
        v8 = v14;
        v9 = [(BYExpressSetupDataProvider *)selfCopy _stringForFeature:unsignedIntegerValue, unsignedIntegerValue];
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
  sourceDeviceClass = [v2 sourceDeviceClass];

  return sourceDeviceClass;
}

- (id)locationServicesOptIn
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:1])
  {
    locationServicesOptIn = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
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
    locationServicesOptIn = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
    locationServicesOptIn = [dataSource locationServicesOptIn];
  }

  v5 = locationServicesOptIn;

  return v5;
}

- (id)locationServicesSettings
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:1])
  {
    locationServicesSettings = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    locationServicesSettings = [dataSource locationServicesSettings];
  }

  return locationServicesSettings;
}

- (id)appAnalyticsOptIn
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:3])
  {
    appAnalyticsOptIn = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isRestrictedForFeature:3])
  {
    appAnalyticsOptIn = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
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
    appAnalyticsOptIn = 0;
  }

  else
  {
    location = [(BYExpressSetupDataProvider *)selfCopy deviceAnalyticsOptIn];
    if (location)
    {
      if ([location BOOLValue])
      {
        dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        appAnalyticsOptIn = [dataSource appAnalyticsOptIn];
      }

      else
      {
        appAnalyticsOptIn = &__kCFBooleanFalse;
      }
    }

    else
    {
      appAnalyticsOptIn = 0;
    }

    objc_storeStrong(&location, 0);
  }

  v5 = appAnalyticsOptIn;

  return v5;
}

- (id)deviceAnalyticsOptIn
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:2])
  {
    deviceAnalyticsOptIn = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
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
    deviceAnalyticsOptIn = 0;
  }

  else
  {
    _countrySupportsFastDeviceAnalyticsOptIn = [(BYExpressSetupDataProvider *)selfCopy _countrySupportsFastDeviceAnalyticsOptIn];
    v7 = [(BYExpressSetupDataProvider *)selfCopy _isRestrictedForFeature:2];
    if (_countrySupportsFastDeviceAnalyticsOptIn & 1) == 0 || (v7)
    {
      deviceAnalyticsOptIn = 0;
    }

    else
    {
      dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
      deviceAnalyticsOptIn = [dataSource deviceAnalyticsOptIn];
    }
  }

  v5 = deviceAnalyticsOptIn;

  return v5;
}

- (id)siriOptIn
{
  selfCopy = self;
  location[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    siriOptIn3 = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
    siriOptIn = [dataSource siriOptIn];
    v4 = siriOptIn == 0;

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
      siriOptIn3 = 0;
    }

    else
    {
      v45 = [(BYExpressSetupDataProvider *)selfCopy _isRestrictedForFeature:5];
      capabilities = [(BYExpressSetupDataProvider *)selfCopy capabilities];
      _siriWantsToRun = 0;
      if (([(BYCapabilities *)capabilities canShowSiriScreen]& 1) != 0)
      {
        _siriWantsToRun = [(BYExpressSetupDataProvider *)selfCopy _siriWantsToRun];
      }

      v44 = _siriWantsToRun & 1;
      dataSource2 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
      siriOptIn2 = [dataSource2 siriOptIn];
      v11 = [siriOptIn2 BOOLValue] ^ 1;

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
          siriOptIn3 = 0;
        }

        else
        {
          dataSource3 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
          siriOptIn3 = [dataSource3 siriOptIn];
        }
      }

      else
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x20000000;
        v40 = 32;
        v41 = 0;
        siriStateCacheQueue = [(BYExpressSetupDataProvider *)selfCopy siriStateCacheQueue];
        block = _NSConcreteStackBlock;
        v32 = -1073741824;
        v33 = 0;
        v34 = sub_10019CA70;
        v35 = &unk_10032C290;
        v36[1] = &v37;
        v36[0] = selfCopy;
        dispatch_sync(siriStateCacheQueue, &block);

        sharedPreferences = [sub_10019CAB8() sharedPreferences];
        v15 = [sharedPreferences allSiriLanguageCodesForSystemLanguageCode:0 isGoodFit:0];
        v30 = [v15 count];

        _supportsAlwaysOnHeySiri = [(BYExpressSetupDataProvider *)selfCopy _supportsAlwaysOnHeySiri];
        v16 = 1;
        if (_supportsAlwaysOnHeySiri)
        {
          v16 = *(v38 + 24);
        }

        v28 = v16 & 1;
        sharedPreferences2 = [sub_10019CAB8() sharedPreferences];
        languageCode = [sharedPreferences2 languageCode];

        v18 = 0;
        if (v30 > 1)
        {
          v18 = 0;
          if (!languageCode)
          {
            v18 = *(v38 + 24) ^ 1;
          }
        }

        v26 = v18 & 1;
        dataSource4 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        siriVoiceTriggerEnabled = [dataSource4 siriVoiceTriggerEnabled];

        v24 = [BYExpressSetupDataProvider _shouldAllowEnablingSiriWithVoiceTriggerEnabledSetting:siriVoiceTriggerEnabled hasNeededTrainingData:v28 & 1];
        v23 = _BYLoggingFacility();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_10019CBCC(v51, v44 & 1, v26 & 1, v45 & 1, _supportsAlwaysOnHeySiri & 1, v38[3] & 1, siriVoiceTriggerEnabled, v24 & 1);
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Express Data Provider: Siri conditions: wantsToRun = %d, needsLanguageDisambiguation = %d, restricted = %d, supportsAOP = %d, hasVoiceProfileIniCloud = %d, voiceTriggerEnabledSetting = %@, shouldAllowEnablingSiriWithVoiceTriggerDetails = %d", v51, 0x30u);
        }

        objc_storeStrong(&v23, 0);
        if ((v45 & 1) != 0 || (v44 & 1) == 0 || (v26 & 1) != 0 || (v24 & 1) == 0)
        {
          siriOptIn3 = 0;
        }

        else
        {
          dataSource5 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
          siriOptIn3 = [dataSource5 siriOptIn];
        }

        objc_storeStrong(&siriVoiceTriggerEnabled, 0);
        objc_storeStrong(&languageCode, 0);
        objc_storeStrong(v36, 0);
        _Block_object_dispose(&v37, 8);
      }
    }
  }

  v21 = siriOptIn3;

  return v21;
}

+ (BOOL)_shouldAllowEnablingSiriWithVoiceTriggerEnabledSetting:(id)setting hasNeededTrainingData:(BOOL)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setting);
  if (location[0])
  {
    v7 = ([location[0] BOOLValue] & 1) == 0 || data;
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
    siriVoiceProfileAvailabilityMetadata = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    siriVoiceProfileAvailabilityMetadata = [dataSource siriVoiceProfileAvailabilityMetadata];
  }

  return siriVoiceProfileAvailabilityMetadata;
}

- (id)siriDataSharingOptIn
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    siriDataSharingOptIn = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    siriDataSharingOptIn = [dataSource siriDataSharingOptIn];
  }

  return siriDataSharingOptIn;
}

- (id)siriVoiceTriggerEnabled
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:5])
  {
    siriVoiceTriggerEnabled = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    siriVoiceTriggerEnabled = [dataSource siriVoiceTriggerEnabled];
  }

  return siriVoiceTriggerEnabled;
}

- (id)screenTimeEnabled
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:7])
  {
    screenTimeEnabled = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
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
    screenTimeEnabled = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
    screenTimeEnabled = [dataSource screenTimeEnabled];
  }

  v5 = screenTimeEnabled;

  return v5;
}

- (id)softwareUpdateAutoUpdateEnabled
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:8])
  {
    softwareUpdateAutoUpdateEnabled = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
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
    softwareUpdateAutoUpdateEnabled = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
    softwareUpdateAutoUpdateEnabled = [dataSource softwareUpdateAutoUpdateEnabled];
  }

  v5 = softwareUpdateAutoUpdateEnabled;

  return v5;
}

- (id)softwareUpdateAutoDownloadEnabled
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:8])
  {
    softwareUpdateAutoDownloadEnabled = 0;
  }

  else if ([(BYExpressSetupDataProvider *)selfCopy _isExcludedByApplicableDispositionsOfFlowItemClass:objc_opt_class()])
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
    softwareUpdateAutoDownloadEnabled = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
    softwareUpdateAutoDownloadEnabled = [dataSource softwareUpdateAutoDownloadEnabled];
  }

  v5 = softwareUpdateAutoDownloadEnabled;

  return v5;
}

- (int64_t)userInterfaceStyleModeValue
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:9])
  {
    return 0;
  }

  dataSource = [(BYExpressSetupDataProvider *)self dataSource];
  userInterfaceStyleModeValue = [dataSource userInterfaceStyleModeValue];

  return userInterfaceStyleModeValue;
}

- (id)watchMigrationData
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:10])
  {
    watchMigrationData = 0;
  }

  else
  {
    capabilities = [(BYExpressSetupDataProvider *)self capabilities];
    v3 = [(BYCapabilities *)capabilities supportsAppleWatch]^ 1;

    if (v3)
    {
      watchMigrationData = 0;
    }

    else
    {
      dataSource = [(BYExpressSetupDataProvider *)self dataSource];
      watchMigrationData = [dataSource watchMigrationData];
    }
  }

  return watchMigrationData;
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
  walletMetadata = [v2 walletMetadata];

  return walletMetadata;
}

- (id)actionButtonData
{
  if ([(BYExpressSetupDataProvider *)self _isControllerSkippedForFeature:12])
  {
    actionButtonData = 0;
  }

  else
  {
    deviceProvider = [(BYExpressSetupDataProvider *)self deviceProvider];
    v3 = [(BYDeviceProvider *)deviceProvider hasActionButton]^ 1;

    if (v3)
    {
      actionButtonData = 0;
    }

    else
    {
      dataSource = [(BYExpressSetupDataProvider *)self dataSource];
      actionButtonData = [dataSource actionButtonData];
    }
  }

  return actionButtonData;
}

- (id)stolenDeviceProtectionEnabled
{
  if ([(BYExpressSetupDataProvider *)self _isRestrictedForFeature:13])
  {
    stolenDeviceProtectionEnabled = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    stolenDeviceProtectionEnabled = [dataSource stolenDeviceProtectionEnabled];
  }

  return stolenDeviceProtectionEnabled;
}

- (id)stolenDeviceProtectionStrictModeEnabled
{
  stolenDeviceProtectionEnabled = [(BYExpressSetupDataProvider *)self stolenDeviceProtectionEnabled];
  bOOLValue = [stolenDeviceProtectionEnabled BOOLValue];

  if (bOOLValue)
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    stolenDeviceProtectionStrictModeEnabled = [dataSource stolenDeviceProtectionStrictModeEnabled];
  }

  else
  {
    stolenDeviceProtectionStrictModeEnabled = 0;
  }

  return stolenDeviceProtectionStrictModeEnabled;
}

- (id)iPadMultitaskingMode
{
  if ([(BYExpressSetupDataProvider *)self _isRestrictedForFeature:14])
  {
    iPadMultitaskingMode = 0;
  }

  else
  {
    dataSource = [(BYExpressSetupDataProvider *)self dataSource];
    iPadMultitaskingMode = [dataSource iPadMultitaskingMode];
  }

  return iPadMultitaskingMode;
}

- (void)prepare:(id)prepare
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prepare);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10019D728;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_fetchSiriVoiceProfileAvailability
{
  selfCopy = self;
  v17[1] = a2;
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_not_V2(v2);

  if ([(BYExpressSetupDataProvider *)selfCopy _supportsAlwaysOnHeySiri])
  {
    sharedPreferences = [sub_10019CAB8() sharedPreferences];
    v17[0] = [sharedPreferences languageCode];

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
      localeIdentifier = [(NSLocale *)v4 localeIdentifier];
      v6 = [NSLocale canonicalLanguageIdentifierFromString:localeIdentifier];
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

    location = [(BYExpressSetupDataProvider *)selfCopy siriVoiceProfileAvailabilityMetadata];
    v11 = [(BYExpressSetupDataProvider *)selfCopy _hasiCloudSiriTrainingDataForLanguage:v17[0] withMetadata:location];
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      hasVoiceProfileIniCloud = [(BYExpressSetupDataProvider *)selfCopy hasVoiceProfileIniCloud];
      sub_100097718(v20, hasVoiceProfileIniCloud & 1, v17[0]);
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
  selfCopy = self;
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
  expressSetupFeatures = [(BYExpressSetupDataProvider *)selfCopy expressSetupFeatures];
  v5 = [expressSetupFeatures countByEnumeratingWithState:__b objects:v15 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(expressSetupFeatures);
        }

        v10 = *(__b[1] + 8 * i);
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        [(BYExpressSetupDataProvider *)selfCopy applyDataSourceSetting:1 forFeature:unsignedIntegerValue, unsignedIntegerValue];
      }

      v5 = [expressSetupFeatures countByEnumeratingWithState:__b objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)revertExpressSettings
{
  selfCopy = self;
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
    v4 = selfCopy->_appliedFeatures;
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
          unsignedIntegerValue = [v10 unsignedIntegerValue];
          [(BYExpressSetupDataProvider *)selfCopy _applyDataSourceSetting:0 forFeature:unsignedIntegerValue, unsignedIntegerValue];
        }

        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:__b objects:v15 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)selfCopy->_appliedFeatures removeAllObjects];
  }
}

- (id)_stringForFeature:(unint64_t)feature
{
  switch(feature)
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

- (void)applyDataSourceSetting:(BOOL)setting forFeature:(unint64_t)feature
{
  selfCopy = self;
  v11 = a2;
  settingCopy = setting;
  featureCopy = feature;
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = [(BYExpressSetupDataProvider *)selfCopy _stringForFeature:featureCopy];
    sub_100071CBC(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v7, "Applying value from data source for %{public}@...", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(BYExpressSetupDataProvider *)selfCopy _applyDataSourceSetting:settingCopy forFeature:featureCopy];
  if (settingCopy)
  {
    appliedFeatures = selfCopy->_appliedFeatures;
    v5 = [NSNumber numberWithUnsignedInteger:featureCopy];
    [(NSMutableArray *)appliedFeatures addObject:v5];
  }
}

- (id)_descriptionForDataSource:(id)source
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v23 = objc_alloc_init(NSMutableString);
  [v23 appendFormat:@"<%@: %p {\n", objc_opt_class(), location[0]];
  locationServicesOptIn = [location[0] locationServicesOptIn];
  locationServicesSettings = [location[0] locationServicesSettings];
  [v23 appendFormat:@"\tLocation Services: (opt-in: %@, data: %@)\n", locationServicesOptIn, locationServicesSettings];

  deviceAnalyticsOptIn = [location[0] deviceAnalyticsOptIn];
  [v23 appendFormat:@"\tDevice Analytics: %@\n", deviceAnalyticsOptIn];

  appAnalyticsOptIn = [location[0] appAnalyticsOptIn];
  [v23 appendFormat:@"\tApp Analytics: %@\n", appAnalyticsOptIn];

  siriOptIn = [location[0] siriOptIn];
  siriVoiceProfileAvailabilityMetadata = [location[0] siriVoiceProfileAvailabilityMetadata];
  siriDataSharingOptIn = [location[0] siriDataSharingOptIn];
  siriVoiceTriggerEnabled = [location[0] siriVoiceTriggerEnabled];
  [v23 appendFormat:@"\tSiri: (opt-in: %@, metadata: %@, data sharing: %@, voice trigger enabled: %@)\n", siriOptIn, siriVoiceProfileAvailabilityMetadata, siriDataSharingOptIn, siriVoiceTriggerEnabled];

  screenTimeEnabled = [location[0] screenTimeEnabled];
  [v23 appendFormat:@"\tScreen Time: %@\n", screenTimeEnabled];

  softwareUpdateAutoUpdateEnabled = [location[0] softwareUpdateAutoUpdateEnabled];
  softwareUpdateAutoDownloadEnabled = [location[0] softwareUpdateAutoDownloadEnabled];
  [v23 appendFormat:@"\tAuto Update: (update: %@, download: %@)\n", softwareUpdateAutoUpdateEnabled, softwareUpdateAutoDownloadEnabled];

  stolenDeviceProtectionEnabled = [location[0] stolenDeviceProtectionEnabled];
  [v23 appendFormat:@"\tStolen Device Protection: %@\n", stolenDeviceProtectionEnabled];

  stolenDeviceProtectionStrictModeEnabled = [location[0] stolenDeviceProtectionStrictModeEnabled];
  [v23 appendFormat:@"\tStolen Device Protection Strict Mode: %@\n", stolenDeviceProtectionStrictModeEnabled];

  [v23 appendFormat:@"\tAppearance: %ld\n", objc_msgSend(location[0], "userInterfaceStyleModeValue")];
  watchMigrationData = [location[0] watchMigrationData];
  [v23 appendFormat:@"\tWatch: %@\n", watchMigrationData];

  walletProvisioningContext = [location[0] walletProvisioningContext];
  setupAssistantCredentials = [walletProvisioningContext setupAssistantCredentials];
  [v23 appendFormat:@"\tApple Wallet: %lu credentials\n", objc_msgSend(setupAssistantCredentials, "count")];

  actionButtonData = [location[0] actionButtonData];
  [v23 appendFormat:@"\tAction Button: %@\n", actionButtonData];

  iPadMultitaskingMode = [location[0] iPadMultitaskingMode];
  [v23 appendFormat:@"\tMultiTasking: %@\n", iPadMultitaskingMode];

  [v23 appendString:@"}>"];
  v21 = v23;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (void)_applyDataSourceSetting:(BOOL)setting forFeature:(unint64_t)feature
{
  selfCopy = self;
  v121 = a2;
  settingCopy = setting;
  location[1] = feature;
  switch(feature)
  {
    case 1uLL:
      dataSource = [(BYExpressSetupDataProvider *)selfCopy dataSource];
      locationServicesSettings = [dataSource locationServicesSettings];

      if (locationServicesSettings)
      {
        location[0] = 0;
        if (settingCopy)
        {
          dataSource2 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
          locationServicesSettings2 = [dataSource2 locationServicesSettings];
          v8 = location[0];
          location[0] = locationServicesSettings2;
        }

        settingsManager = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        [BuddyLocationServicesController setSettingsFromArchivedPreferences:location[0] settingsManager:settingsManager];

        objc_storeStrong(location, 0);
      }

      else
      {
        v116 = 0;
        v114 = 0;
        bOOLValue = 0;
        if (settingCopy)
        {
          dataSource3 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
          v116 = 1;
          locationServicesOptIn = [dataSource3 locationServicesOptIn];
          v114 = 1;
          bOOLValue = [locationServicesOptIn BOOLValue];
        }

        if (v114)
        {
        }

        if (v116)
        {
        }

        v118 = bOOLValue & 1;
        settingsManager2 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        [BuddyLocationServicesController setSettingEnabled:bOOLValue & 1 presented:settingCopy settingsManager:settingsManager2];
      }

      break;
    case 2uLL:
      if (settingCopy)
      {
        dataSource4 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        deviceAnalyticsOptIn = [dataSource4 deviceAnalyticsOptIn];
        bOOLValue2 = [deviceAnalyticsOptIn BOOLValue];
        chronicle = [(BYExpressSetupDataProvider *)selfCopy chronicle];
        settingsManager3 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyDiagnosticsController setDeviceAnalyticsSubmissionEnabled:bOOLValue2 & 1 presented:1 chronicle:chronicle settingsManager:settingsManager3 buddyPreferences:buddyPreferences];
      }

      else
      {
        settingsManager4 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences2 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyDiagnosticsController clearDeviceAnalyticsSettingWithSettingsManager:settingsManager4 buddyPreferences:buddyPreferences2];
      }

      break;
    case 3uLL:
      if (settingCopy)
      {
        dataSource5 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        appAnalyticsOptIn = [dataSource5 appAnalyticsOptIn];
        bOOLValue3 = [appAnalyticsOptIn BOOLValue];
        settingsManager5 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences3 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyAppActivityController setAppActivityEnabled:bOOLValue3 & 1 presented:1 settingsManager:settingsManager5 buddyPreferences:buddyPreferences3];
      }

      else
      {
        settingsManager6 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences4 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyAppActivityController clearAppActivitySettingWithSettingsManager:settingsManager6 buddyPreferences:buddyPreferences4];
      }

      break;
    case 4uLL:
      if (settingCopy)
      {
        dataSource6 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        deviceAnalyticsOptIn2 = [dataSource6 deviceAnalyticsOptIn];
        bOOLValue4 = [deviceAnalyticsOptIn2 BOOLValue];

        v113 = bOOLValue4 & 1;
        v30 = bOOLValue4 & 1;
        chronicle2 = [(BYExpressSetupDataProvider *)selfCopy chronicle];
        settingsManager7 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences5 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyDiagnosticsController setDeviceAnalyticsSubmissionEnabled:v30 & 1 presented:1 chronicle:chronicle2 settingsManager:settingsManager7 buddyPreferences:buddyPreferences5];

        settingsManager8 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences6 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyAppActivityController setAppActivityEnabled:v113 & 1 presented:1 settingsManager:settingsManager8 buddyPreferences:buddyPreferences6];
      }

      else
      {
        settingsManager9 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences7 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyDiagnosticsController clearDeviceAnalyticsSettingWithSettingsManager:settingsManager9 buddyPreferences:buddyPreferences7];

        settingsManager8 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferences6 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyAppActivityController clearAppActivitySettingWithSettingsManager:settingsManager8 buddyPreferences:buddyPreferences6];
      }

      break;
    case 5uLL:
      v110 = 0;
      v108 = 0;
      bOOLValue5 = 0;
      if (settingCopy)
      {
        dataSource7 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        v110 = 1;
        siriOptIn = [dataSource7 siriOptIn];
        v108 = 1;
        bOOLValue5 = [siriOptIn BOOLValue];
      }

      if (v108)
      {
      }

      if (v110)
      {
      }

      v112 = bOOLValue5 & 1;
      oslog = _BYLoggingFacility();
      v106 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(buf, v112 & 1);
        _os_log_impl(&_mh_execute_header, oslog, v106, "Setting Siri enabled to %d", buf, 8u);
      }

      objc_storeStrong(&oslog, 0);
      v39 = v112;
      settingsManager10 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
      [AssistantOptInController setAssistantEnabled:v39 & 1 settingsManager:settingsManager10];

      v103 = 0;
      v101 = 0;
      bOOLValue6 = 0;
      if (v112)
      {
        dataSource8 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        v103 = 1;
        siriVoiceTriggerEnabled = [dataSource8 siriVoiceTriggerEnabled];
        v101 = 1;
        bOOLValue6 = [siriVoiceTriggerEnabled BOOLValue];
      }

      if (v101)
      {
      }

      if (v103)
      {
      }

      v105 = bOOLValue6 & 1;
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
        sharedPreferences = [sub_10019CAB8() sharedPreferences];
        languageCode = [sharedPreferences languageCode];

        v97 = _BYLoggingFacility();
        v96 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          sub_10006AE18(v124, languageCode);
          _os_log_impl(&_mh_execute_header, v97, v96, "Will enable Voice Trigger upon sync for language: %@", v124, 0xCu);
        }

        objc_storeStrong(&v97, 0);
        sharedInstance = [sub_10019FB28() sharedInstance];
        [sharedInstance enableVoiceTriggerUponVoiceProfileSyncForLanguage:languageCode];

        objc_storeStrong(&languageCode, 0);
      }

      settingsManager11 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
      [(BFFSettingsManager *)settingsManager11 setAssistantVoiceTriggerEnabled:v105 & 1];

      buddyPreferences8 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
      v46 = [NSNumber numberWithBool:settingCopy];
      [(BYPreferencesController *)buddyPreferences8 setObject:v46 forKey:BYBuddyAssistantPresentedKey];

      if ([(BYExpressSetupDataProvider *)selfCopy _supportsAlwaysOnHeySiri])
      {
        buddyPreferences9 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        v48 = [NSNumber numberWithBool:settingCopy];
        [(BYPreferencesController *)buddyPreferences9 setObject:v48 forKey:BYBuddyAssistantPHSOfferedKey];
      }

      break;
    case 6uLL:
      v95 = objc_alloc_init(sub_10019FC3C());
      v94 = 0;
      v92 = 0;
      v90 = 0;
      v49 = 0;
      if (settingCopy)
      {
        dataSource9 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        v92 = 1;
        siriDataSharingOptIn = [dataSource9 siriDataSharingOptIn];
        v90 = 1;
        v49 = siriDataSharingOptIn != 0;
      }

      if (v90)
      {
      }

      if (v92)
      {
      }

      if (v49)
      {
        dataSource10 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        siriDataSharingOptIn2 = [dataSource10 siriDataSharingOptIn];
        bOOLValue7 = [siriDataSharingOptIn2 BOOLValue];

        if (bOOLValue7)
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
      v53 = [BYExpressSetupDataProvider stringForDataSourceType:[(BYExpressSetupDataProvider *)selfCopy dataSourceType]];
      v87 = [NSString stringWithFormat:@"express setup (%@)", v53];

      [v95 setSiriDataSharingOptInStatus:v94 propagateToHomeAccessories:0 source:1 reason:v87 completion:&stru_10032E1E8];
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v95, 0);
      break;
    case 7uLL:
      if (settingCopy)
      {
        dataSource11 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        screenTimeEnabled = [(BYPreferencesController *)dataSource11 screenTimeEnabled];
        bOOLValue8 = [screenTimeEnabled BOOLValue];
        buddyPreferences10 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyScreenTimeController setScreenTimeEnabled:bOOLValue8 & 1 presented:1 buddyPreferences:buddyPreferences10];
      }

      else
      {
        dataSource11 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyScreenTimeController clearScreenTimeSetting:dataSource11];
      }

      goto LABEL_61;
    case 8uLL:
      if (settingCopy)
      {
        dataSource11 = [(BYExpressSetupDataProvider *)selfCopy dataSource];
        softwareUpdateAutoUpdateEnabled = [(BYPreferencesController *)dataSource11 softwareUpdateAutoUpdateEnabled];
        bOOLValue9 = [softwareUpdateAutoUpdateEnabled BOOLValue];
        buddyPreferences11 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyAutoUpdateController setAutoDownloadWithUpdateEnabled:bOOLValue9 & 1 presented:1 buddyPreferences:buddyPreferences11];
      }

      else
      {
        dataSource11 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyAutoUpdateController clearAutoDownloadWithUpdateSetting:dataSource11];
      }

LABEL_61:

      break;
    case 9uLL:
      if (settingCopy)
      {
        userInterfaceStyleModeValue = [(BYExpressSetupDataProvider *)selfCopy userInterfaceStyleModeValue];
        buddyPreferences12 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyUserInterfaceStyleSelector setUserInterfaceStyleModeValue:userInterfaceStyleModeValue presented:1 buddyPreferences:buddyPreferences12];
      }

      else
      {
        buddyPreferences13 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
        [BuddyUserInterfaceStyleSelector clearUserInterfaceStyleMode:buddyPreferences13];
      }

      break;
    case 0xAuLL:
      if (settingCopy)
      {
        pairedWatches = [(BYExpressSetupDataProvider *)selfCopy pairedWatches];
        v86 = [NRMigrator migrationDataPreRestoreForConsentedDevices:pairedWatches];

        settingsManager12 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferencesExcludedFromBackup = [(BYExpressSetupDataProvider *)selfCopy buddyPreferencesExcludedFromBackup];
        [BuddyWatchMigrationController setWatchDataForMigration:v86 presented:1 settingsManager:settingsManager12 buddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup];

        objc_storeStrong(&v86, 0);
      }

      else
      {
        settingsManager13 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        buddyPreferencesExcludedFromBackup2 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferencesExcludedFromBackup];
        [BuddyWatchMigrationController clearWatchDataForMigrationWithSettingsManager:settingsManager13 buddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup2];
      }

      break;
    case 0xBuLL:
      if (settingCopy)
      {
        walletProvisioningContext = [(BYExpressSetupDataProvider *)selfCopy walletProvisioningContext];
        miscState = [(BYExpressSetupDataProvider *)selfCopy miscState];
        [(BuddyMiscState *)miscState setWalletProvisioningContext:walletProvisioningContext];
      }

      else
      {
        walletProvisioningContext = [(BYExpressSetupDataProvider *)selfCopy miscState];
        [(PKPaymentSetupAssistantProvisioningContext *)walletProvisioningContext setWalletProvisioningContext:0];
      }

      goto LABEL_74;
    case 0xCuLL:
      if (settingCopy)
      {
        actionButtonData = [(BYExpressSetupDataProvider *)selfCopy actionButtonData];
        [BYActionButtonStore setCurrentData:actionButtonData];

        settingsManager14 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        actionButtonData2 = [(BYExpressSetupDataProvider *)selfCopy actionButtonData];
        [(BFFSettingsManager *)settingsManager14 stashActionButtonData:actionButtonData2];
      }

      else
      {
        [BYActionButtonStore setCurrentData:0];
        settingsManager14 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
        [(BFFSettingsManager *)settingsManager14 stashActionButtonData:0];
      }

      buddyPreferences14 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferences];
      v75 = [NSNumber numberWithBool:settingCopy];
      [(BYPreferencesController *)buddyPreferences14 setObject:v75 forKey:@"ButtonConfigurationPresented"];

      break;
    case 0xDuLL:
      buddyPreferencesExcludedFromBackup3 = [(BYExpressSetupDataProvider *)selfCopy buddyPreferencesExcludedFromBackup];
      v77 = [NSNumber numberWithBool:settingCopy];
      [(BYPreferencesController *)buddyPreferencesExcludedFromBackup3 setObject:v77 forKey:@"StolenDeviceProtectionPresented"];

      walletProvisioningContext = [(BYExpressSetupDataProvider *)selfCopy expressSettingsCache];
      if (settingCopy)
      {
        [(PKPaymentSetupAssistantProvisioningContext *)walletProvisioningContext setApplyHandlerFor:13];
      }

      else
      {
        [(PKPaymentSetupAssistantProvisioningContext *)walletProvisioningContext removeApplyHandlerFor:13];
      }

LABEL_74:

      break;
    case 0xEuLL:
      iPadMultitaskingMode = [(BYExpressSetupDataProvider *)selfCopy iPadMultitaskingMode];

      if (iPadMultitaskingMode)
      {
        iPadMultitaskingManager = [(BYExpressSetupDataProvider *)selfCopy iPadMultitaskingManager];
        [(BuddyMultitaskingSelectionManagerType *)iPadMultitaskingManager updatePanePresented:settingCopy];

        if (settingCopy)
        {
          iPadMultitaskingMode2 = [(BYExpressSetupDataProvider *)selfCopy iPadMultitaskingMode];
          unsignedIntValue = [iPadMultitaskingMode2 unsignedIntValue];
          iPadMultitaskingManager2 = [(BYExpressSetupDataProvider *)selfCopy iPadMultitaskingManager];
          [(BuddyMultitaskingSelectionManagerType *)iPadMultitaskingManager2 setCurrentMode:unsignedIntValue];

          iPadMultitaskingManager3 = [(BYExpressSetupDataProvider *)selfCopy iPadMultitaskingManager];
          settingsManager15 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
          [(BuddyMultitaskingSelectionManagerType *)iPadMultitaskingManager3 stashSettingUsing:settingsManager15];
        }

        else
        {
          iPadMultitaskingManager3 = [(BYExpressSetupDataProvider *)selfCopy iPadMultitaskingManager];
          settingsManager15 = [(BYExpressSetupDataProvider *)selfCopy settingsManager];
          [(BuddyMultitaskingSelectionManagerType *)iPadMultitaskingManager3 resetSettingsUsing:settingsManager15];
        }
      }

      break;
    default:
      break;
  }

  if (settingCopy)
  {
    expressSettingsCache = [(BYExpressSetupDataProvider *)selfCopy expressSettingsCache];
    [(BYExpressSettingsSetupCache *)expressSettingsCache setExpressDataSource:selfCopy];
  }

  else
  {
    expressSettingsCache = [(BYExpressSetupDataProvider *)selfCopy expressSettingsCache];
    [(BYExpressSettingsSetupCache *)expressSettingsCache setExpressDataSource:0];
  }
}

- (BOOL)_isControllerSkippedForFeature:(unint64_t)feature
{
  v7 = 0;
  switch(feature)
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

- (BOOL)_isRestrictedForFeature:(unint64_t)feature
{
  switch(feature)
  {
    case 1uLL:
      goto LABEL_20;
    case 2uLL:
      capabilities = [(BYExpressSetupDataProvider *)self capabilities];
      _isStolenDeviceProtectionRestricted = [(BYCapabilities *)capabilities isDeviceAnalyticsRestricted]& 1;

      return _isStolenDeviceProtectionRestricted & 1;
    case 3uLL:
      capabilities2 = [(BYExpressSetupDataProvider *)self capabilities];
      _isStolenDeviceProtectionRestricted = [(BYCapabilities *)capabilities2 isAppAnalyticsRestricted]& 1;

      return _isStolenDeviceProtectionRestricted & 1;
  }

  if (feature != 4)
  {
    if (feature - 5 < 2)
    {
      capabilities3 = [(BYExpressSetupDataProvider *)self capabilities];
      _isStolenDeviceProtectionRestricted = [(BYCapabilities *)capabilities3 isSiriRestricted]& 1;

      return _isStolenDeviceProtectionRestricted & 1;
    }

    if (feature == 7)
    {
      capabilities4 = [(BYExpressSetupDataProvider *)self capabilities];
      _isStolenDeviceProtectionRestricted = [(BYCapabilities *)capabilities4 isScreenTimeRestricted]& 1;

      return _isStolenDeviceProtectionRestricted & 1;
    }

    if (feature - 8 >= 5)
    {
      if (feature == 13)
      {
        _isStolenDeviceProtectionRestricted = [(BYExpressSetupDataProvider *)self _isStolenDeviceProtectionRestricted];
      }

      else if (feature == 14)
      {
        iPadMultitaskingManager = [(BYExpressSetupDataProvider *)self iPadMultitaskingManager];
        _isStolenDeviceProtectionRestricted = ([(BuddyMultitaskingSelectionManagerType *)iPadMultitaskingManager isFeatureApplicableToSetup]^ 1) & 1;
      }

      return _isStolenDeviceProtectionRestricted & 1;
    }

LABEL_20:
    _isStolenDeviceProtectionRestricted = 0;
    return _isStolenDeviceProtectionRestricted & 1;
  }

  capabilities5 = [(BYExpressSetupDataProvider *)self capabilities];
  isDeviceAnalyticsRestricted = [(BYCapabilities *)capabilities5 isDeviceAnalyticsRestricted];
  v12 = 0;
  isAppAnalyticsRestricted = 1;
  if ((isDeviceAnalyticsRestricted & 1) == 0)
  {
    capabilities6 = [(BYExpressSetupDataProvider *)self capabilities];
    v12 = 1;
    isAppAnalyticsRestricted = [(BYCapabilities *)capabilities6 isAppAnalyticsRestricted];
  }

  _isStolenDeviceProtectionRestricted = isAppAnalyticsRestricted & 1;
  if (v12)
  {
  }

  return _isStolenDeviceProtectionRestricted & 1;
}

- (BOOL)_isExcludedByApplicableDispositionsOfFlowItemClass:(Class)class
{
  flowItemDispositionProvider = [(BYExpressSetupDataProvider *)self flowItemDispositionProvider];
  dispositions = [(BYFlowItemDispositionProvider *)flowItemDispositionProvider dispositions];
  v5 = dispositions & [(objc_class *)class applicableDispositions];

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
  countryCode = [(NSLocale *)v2 countryCode];

  return countryCode;
}

- (BOOL)_siriWantsToRun
{
  selfCopy = self;
  v15 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 0;
  siriStateCacheQueue = [(BYExpressSetupDataProvider *)self siriStateCacheQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001A0648;
  v8 = &unk_10032C290;
  v9[1] = &v10;
  v9[0] = selfCopy;
  dispatch_sync(siriStateCacheQueue, &v4);

  LOBYTE(siriStateCacheQueue) = *(v11 + 24);
  objc_storeStrong(v9, 0);
  _Block_object_dispose(&v10, 8);
  return siriStateCacheQueue & 1;
}

- (BOOL)_hasiCloudSiriTrainingDataForLanguage:(id)language withMetadata:(id)metadata
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v10 = 0;
  objc_storeStrong(&v10, metadata);
  sharedInstance = [sub_10019FB28() sharedInstance];
  v6 = [sharedInstance hasVoiceProfileIniCloudForLanguageCode:location[0] withBackupMetaBlob:v10];

  v9 = v6 & 1;
  if ((v6 & 1) == 0)
  {
    sharedInstance2 = [sub_10019FB28() sharedInstance];
    v9 = [sharedInstance2 hasVoiceProfileIniCloudForLanguageCode:location[0]] & 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BOOL)_isStolenDeviceProtectionRestricted
{
  selfCopy = self;
  v16 = a2;
  capabilities = [(BYExpressSetupDataProvider *)self capabilities];
  isPearlEnrolled = [(BYCapabilities *)capabilities isPearlEnrolled];
  v14 = 0;
  isTouchIDEnrolled = 1;
  if ((isPearlEnrolled & 1) == 0)
  {
    capabilities2 = [(BYExpressSetupDataProvider *)selfCopy capabilities];
    v14 = 1;
    isTouchIDEnrolled = [capabilities2 isTouchIDEnrolled];
  }

  v5 = isTouchIDEnrolled ^ 1;
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

- (void)_verifyAppliedSettings:(BOOL)settings
{
  if (settings)
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

+ (BOOL)_shouldAddFeatureDeviceAndAppAnalyticsForDataSource:(id)source
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  deviceAnalyticsOptIn = [location[0] deviceAnalyticsOptIn];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (deviceAnalyticsOptIn)
  {
    appAnalyticsOptIn = [location[0] appAnalyticsOptIn];
    v10 = 1;
    v4 = 0;
    if (appAnalyticsOptIn)
    {
      deviceAnalyticsOptIn2 = [location[0] deviceAnalyticsOptIn];
      v8 = 1;
      appAnalyticsOptIn2 = [location[0] appAnalyticsOptIn];
      v6 = 1;
      v4 = [deviceAnalyticsOptIn2 isEqualToNumber:?];
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
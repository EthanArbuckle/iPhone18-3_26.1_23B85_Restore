@interface COSSystemAppSettingsBundleRow
- (BOOL)_removeRowForSpecialCriteriaOverride:(id)a3;
- (BOOL)_requiredAppsInstalled:(id)a3;
- (COSSystemAppSettingsBundleRow)initWithBundle:(id)a3 name:(id)a4;
- (id)description;
- (id)settingsBundleDict;
- (void)_setRequiredInstalledWatchAppsForLegacy:(id)a3;
- (void)setAreRequiredWatchAppsInstalled:(id)a3;
@end

@implementation COSSystemAppSettingsBundleRow

- (id)settingsBundleDict
{
  v19[0] = PSTitleKey;
  v3 = [(COSSystemAppSettingsBundleRow *)self displayName];
  v20[0] = v3;
  v19[1] = PSIDKey;
  v4 = [(COSSystemAppSettingsBundleRow *)self bundle];
  v5 = [v4 bundleIdentifier];
  v20[1] = v5;
  v20[2] = @"PSLinkCell";
  v19[2] = PSTableCellClassKey;
  v19[3] = PSBundleHasIconKey;
  v20[3] = kCFBooleanTrue;
  v20[4] = kCFBooleanTrue;
  v19[4] = PSSearchNanoApplicationsBundlePath;
  v19[5] = PSBundlePathKey;
  v6 = [(COSSystemAppSettingsBundleRow *)self name];
  v19[6] = @"isController";
  v20[5] = v6;
  v20[6] = kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  v9 = [(COSSystemAppSettingsBundleRow *)self requiredCapabilities];
  [v8 setObject:v9 forKeyedSubscript:BPSRequiredWatchCapabilitiesKey];

  v10 = [(COSSystemAppSettingsBundleRow *)self forbiddenCapabilities];
  [v8 setObject:v10 forKeyedSubscript:BPSForbiddenWatchCapabilitiesKey];

  v11 = [(COSSystemAppSettingsBundleRow *)self requiredFeatureFlags];
  [v8 setObject:v11 forKeyedSubscript:BPSRequiredFeatureFlagsKey];

  v12 = [(COSSystemAppSettingsBundleRow *)self bundle];
  v13 = BPSWatchAppBundleIdKey;
  v14 = [v12 objectForInfoDictionaryKey:BPSWatchAppBundleIdKey];
  [v8 setObject:v14 forKeyedSubscript:v13];

  v15 = [(COSSystemAppSettingsBundleRow *)self bundle];
  v16 = PSDataSourceClassKey;
  v17 = [v15 objectForInfoDictionaryKey:PSDataSourceClassKey];

  [v8 setObject:v17 forKeyedSubscript:v16];

  return v8;
}

- (COSSystemAppSettingsBundleRow)initWithBundle:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = COSSystemAppSettingsBundleRow;
  v9 = [(COSSystemAppSettingsBundleRow *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundle, a3);
    v11 = [v7 bundleIdentifier];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_name, a4);
    v13 = [v7 objectForInfoDictionaryKey:BPSRequiredWatchCapabilitiesKey];
    requiredCapabilities = v10->_requiredCapabilities;
    v10->_requiredCapabilities = v13;

    v15 = [v7 objectForInfoDictionaryKey:BPSForbiddenWatchCapabilitiesKey];
    forbiddenCapabilities = v10->_forbiddenCapabilities;
    v10->_forbiddenCapabilities = v15;

    v17 = [v7 objectForInfoDictionaryKey:BPSRequiredFeatureFlagsKey];
    requiredFeatureFlags = v10->_requiredFeatureFlags;
    v10->_requiredFeatureFlags = v17;

    v19 = [v7 objectForInfoDictionaryKey:BPSRequiredInstalledWatchApps];
    requiredInstalledWatchApps = v10->_requiredInstalledWatchApps;
    v10->_requiredInstalledWatchApps = v19;

    v21 = [v7 objectForInfoDictionaryKey:BPSShowOnAnyRequiredWatchAppsInstalled];
    v10->_showOnAnyRequiredWatchAppsInstalled = [v21 BOOLValue];

    v22 = [v7 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    displayName = v10->_displayName;
    v10->_displayName = v22;

    v24 = [v7 bundleIdentifier];
    v25 = [@"com.apple.NanoBedtimeBridgeSettings" isEqualToString:v24];

    if (v25)
    {
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:v8 value:&stru_10026E598 table:@"Localizable-burrito"];
      v28 = v10->_displayName;
      v10->_displayName = v27;
    }

    if (![(NSString *)v10->_displayName length])
    {
      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:v8 value:&stru_10026E598 table:@"Settings"];
      v31 = v10->_displayName;
      v10->_displayName = v30;
    }

    v32 = [(NSBundle *)v10->_bundle bundleIdentifier];
    if (BPSSystemAppIsRemovable())
    {
      v33 = v10->_requiredInstalledWatchApps;

      if (!v33)
      {
        [(COSSystemAppSettingsBundleRow *)v10 _setRequiredInstalledWatchAppsForLegacy:v7];
      }
    }

    else
    {
    }
  }

  return v10;
}

- (void)_setRequiredInstalledWatchAppsForLegacy:(id)a3
{
  v4 = BPSWatchAppBundleIDForSettingsBundle();
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  requiredInstalledWatchApps = self->_requiredInstalledWatchApps;
  self->_requiredInstalledWatchApps = v5;
}

- (void)setAreRequiredWatchAppsInstalled:(id)a3
{
  v10 = a3;
  v4 = [v10 valueForProperty:NRDevicePropertyIsAltAccount];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0 && ([(COSSystemAppSettingsBundleRow *)self requiredInstalledWatchApps], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, HasStandaloneAppsCapability = BPSDeviceHasStandaloneAppsCapability(), v7, HasStandaloneAppsCapability))
  {
    v9 = [(COSSystemAppSettingsBundleRow *)self _requiredAppsInstalled:v10];
  }

  else
  {
    v9 = 1;
  }

  [(COSSystemAppSettingsBundleRow *)self setRequiredAppsInstalled:![(COSSystemAppSettingsBundleRow *)self _removeRowForSpecialCriteriaOverride:v10]& v9];
}

- (BOOL)_removeRowForSpecialCriteriaOverride:(id)a3
{
  HasStandaloneAppsCapability = BPSDeviceHasStandaloneAppsCapability();
  if ([@"com.apple.OxygenSaturationSettings" isEqualToString:self->_identifier])
  {
    if (HKRPShouldSkipHardwareCheck())
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = [UIApp displayDevice];
      v5 = BPSDeviceHasCapabilityForString() ^ 1;
    }
  }

  else
  {
    return [@"com.apple.BridgeAppStoreDaemonSettings" isEqualToString:self->_identifier] & (HasStandaloneAppsCapability ^ 1);
  }

  return v5;
}

- (BOOL)_requiredAppsInstalled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = [(COSSystemAppSettingsBundleRow *)self showOnAnyRequiredWatchAppsInstalled];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(COSSystemAppSettingsBundleRow *)self requiredInstalledWatchApps];
    v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = 0;
      v9 = *v23;
      *&v6 = 138412546;
      v17 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          v12 = +[ACXDeviceConnection sharedDeviceConnection];
          v20 = 0;
          v13 = [v12 getApplicationIsInstalled:&v21 withBundleID:v11 onPairedDevice:v4 error:&v20];
          v14 = v20;

          if (v13)
          {
            v8 = v21;
            if (v18 == v21)
            {

              goto LABEL_19;
            }
          }

          else
          {
            v15 = pbb_bridge_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v27 = v11;
              v28 = 2112;
              v29 = v14;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to check install status of %@ with error: %@", buf, 0x16u);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

LABEL_19:
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)description
{
  v3 = [(COSSystemAppSettingsBundleRow *)self name];
  v4 = [(COSSystemAppSettingsBundleRow *)self displayName];
  v5 = [(COSSystemAppSettingsBundleRow *)self identifier];
  v6 = [NSString stringWithFormat:@"row name: %@ - display name: %@ - identifier: %@", v3, v4, v5];

  return v6;
}

@end
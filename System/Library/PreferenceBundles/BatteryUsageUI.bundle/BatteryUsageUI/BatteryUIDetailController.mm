@interface BatteryUIDetailController
- (id)getSortValueForKey:(id)key;
- (id)getValueForSpecifier:(id)specifier;
- (id)specifiers;
@end

@implementation BatteryUIDetailController

- (id)getValueForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:PSIDKey];
  if ([v4 isEqualToString:@"PLBatteryUIAppEnergyUsedKey"])
  {
    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    [v5 floatValue];
    v7 = PSFormattedEnergyString(v6);
    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"PLBatteryUIAppCellDataUsageKey"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppWifiDataUsageKey"))
  {
    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    [v5 floatValue];
    v7 = CPFSSizeStrings();
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"PLBatteryUIAppTypeKey"])
  {
    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    v7 = BatteryUIAppTypeToString([v5 intValue]);
    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"PLBatteryUIAppCPUEnergyKey"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppVENCEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppVDECEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppISPEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppRestOfSOCEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppSOCEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppGPUEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppDRAMEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppDisplayEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppWIFIEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppAUDIOEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppBBEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"BLMEnergyGPS") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppWifiLocationEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppWifiPipelineEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppBluetoothEnergyKey") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppAccessoryEnergyKey") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppNfcEnergyKey"))
  {
    v10 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    v5 = v10;
LABEL_30:
    [v10 floatValue];
    [NSString stringWithFormat:@"%.2f mWh", v11];
    v7 = LABEL_31:;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"PLBatteryUIAppEnergyValueKey"])
  {
    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    [v5 floatValue];
    [NSString stringWithFormat:@"%.2f%%", v12];
    goto LABEL_31;
  }

  if ([v4 isEqualToString:@"PLBatteryUIAppQualifiersKey"])
  {
    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    v7 = BatteryUIPrintQualifierString(v5);
  }

  else if ([v4 isEqualToString:@"PLBatteryUIAppForegroundRuntimeKey"] || objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppBackgroundRuntimeKey"))
  {
    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    [v5 floatValue];
    v7 = PSAbbreviatedFormattedTimeString();
  }

  else
  {
    if (![v4 isEqualToString:@"PLBatteryUIAppAudioTime"] && !objc_msgSend(v4, "isEqualToString:", @"PLBatteryUIAppLocationTime"))
    {
      if ([v4 isEqualToString:@"PLBatteryUIAppCellularDataUsage"])
      {
        v10 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
        v5 = v10;
      }

      else
      {
        v13 = [v4 isEqualToString:@"PLBatteryUIAppWiFiDataUsage"];
        v10 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
        v5 = v10;
        if (!v13)
        {
          goto LABEL_30;
        }
      }

      [v10 doubleValue];
      [NSString stringWithFormat:@"%.1f MB", v14];
      goto LABEL_31;
    }

    v5 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:v4];
    [v5 doubleValue];
    v7 = PSFormattedTimeString();
  }

LABEL_6:
  v8 = v7;

  return v8;
}

- (id)getSortValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"PLBatteryUIAppNameKey"])
  {
    v4 = &off_1732E0;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppBundleIDKey"])
  {
    v4 = &off_1732F8;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppEnergyValueKey"])
  {
    v4 = &off_173310;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppEnergyUsedKey"])
  {
    v4 = &off_173328;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppCPUEnergyKey"])
  {
    v4 = &off_173340;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppVENCEnergyKey"])
  {
    v4 = &off_173358;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppVDECEnergyKey"])
  {
    v4 = &off_173370;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppISPEnergyKey"])
  {
    v4 = &off_173388;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppRestOfSOCEnergyKey"])
  {
    v4 = &off_1733A0;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppSOCEnergyKey"])
  {
    v4 = &off_1733B8;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppGPUEnergyKey"])
  {
    v4 = &off_1733D0;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppDRAMEnergyKey"])
  {
    v4 = &off_1733E8;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppDisplayEnergyKey"])
  {
    v4 = &off_173400;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppAUDIOEnergyKey"])
  {
    v4 = &off_173418;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppBBEnergyKey"])
  {
    v4 = &off_173430;
  }

  else if ([keyCopy isEqualToString:@"BLMEnergyGPS"])
  {
    v4 = &off_173448;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppWIFIEnergyKey"])
  {
    v4 = &off_173460;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppWifiLocationEnergyKey"])
  {
    v4 = &off_173478;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppWifiPipelineEnergyKey"])
  {
    v4 = &off_173490;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppBluetoothEnergyKey"])
  {
    v4 = &off_1734A8;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppAccessoryEnergyKey"])
  {
    v4 = &off_1734C0;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppNfcEnergyKey"])
  {
    v4 = &off_1734D8;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppQualifiersKey"])
  {
    v4 = &off_1734F0;
  }

  else if ([keyCopy isEqualToString:@"PLBatteryUIAppTypeKey"])
  {
    v4 = &off_173508;
  }

  else
  {
    v4 = &off_173520;
  }

  return v4;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
LABEL_18:
    v45 = v3;
    goto LABEL_19;
  }

  v55 = +[NSMutableArray array];
  if (self->_appEntry)
  {
    goto LABEL_4;
  }

  specifier = [(BatteryUIDetailController *)self specifier];
  v6 = [specifier propertyForKey:@"APP_ENERGY_ENTRY"];
  appEntry = self->_appEntry;
  self->_appEntry = v6;

  if (self->_appEntry)
  {
LABEL_4:
    v53 = v2;
    specifier2 = [(BatteryUIDetailController *)self specifier];
    name = [specifier2 name];
    v10 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];

    v11 = [(NSDictionary *)self->_appEntry objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
    v54 = PSIDKey;
    [v10 setProperty:v11 forKey:?];

    specifier3 = [(BatteryUIDetailController *)self specifier];
    v13 = PSLazyIconAppID;
    v14 = [specifier3 propertyForKey:PSLazyIconAppID];

    if (v14)
    {
      specifier4 = [(BatteryUIDetailController *)self specifier];
      v16 = [specifier4 propertyForKey:v13];
      [v10 setProperty:v16 forKey:v13];
    }

    specifier5 = [(BatteryUIDetailController *)self specifier];
    v18 = PSLazyIconLoading;
    v19 = [specifier5 propertyForKey:PSLazyIconLoading];

    if (v19)
    {
      specifier6 = [(BatteryUIDetailController *)self specifier];
      v21 = [specifier6 propertyForKey:v18];
      [v10 setProperty:v21 forKey:v18];
    }

    v22 = [PSSpecifier groupSpecifierWithName:0];
    [v55 addObject:v22];

    v52 = v10;
    [v55 addObject:v10];
    specifier7 = [(BatteryUIDetailController *)self specifier];
    v24 = [specifier7 propertyForKey:@"usageString"];

    v51 = v24;
    v25 = [PSSpecifier groupSpecifierWithName:v24];
    [v55 addObject:v25];

    v26 = BatteryUILocalization(@"PLBatteryUIAppForegroundRuntimeKey");
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:"getValueForSpecifier:" detail:0 cell:4 edit:0];

    [v27 setProperty:@"PLBatteryUIAppForegroundRuntimeKey" forKey:v54];
    v50 = v27;
    [v55 addObject:v27];
    v28 = BatteryUILocalization(@"PLBatteryUIAppBackgroundRuntimeKey");
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:"getValueForSpecifier:" detail:0 cell:4 edit:0];

    [v29 setProperty:@"PLBatteryUIAppBackgroundRuntimeKey" forKey:v54];
    v49 = v29;
    [v55 addObject:v29];
    v30 = BatteryUILocalization(@"APP_DETAIL");
    v31 = [PSSpecifier groupSpecifierWithName:v30];
    [v55 addObject:v31];

    allKeys = [(NSDictionary *)self->_appEntry allKeys];
    v33 = [allKeys mutableCopy];

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_3D54;
    v60[3] = &unk_163800;
    v60[4] = self;
    [v33 sortUsingComparator:v60];
    v34 = [NSMutableArray arrayWithObjects:@"PLBatteryUIAppNameKey", @"PLBatteryUIAppBundleIDKey", @"PLBatteryUIAppForegroundRuntimeKey", @"PLBatteryUIAppBackgroundRuntimeKey", @"CPU", @"VENC", @"VDEC", @"ISP", @"RestOfSOC", @"SOC", @"GPU", @"DRAM", @"Display", @"WIFI", @"AUDIO", @"BB", @"GPS", @"WiFiData", @"WiFiLocation", @"WiFiPipeline", @"Bluetooth", @"Accessory", @"Nfc", 0];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v35 = v33;
    v36 = [v35 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v57;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v56 + 1) + 8 * i);
          if (([v34 containsObject:v40] & 1) == 0)
          {
            v41 = BatteryUILocalization(v40);
            v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:"getValueForSpecifier:" detail:0 cell:4 edit:0];

            [v42 setProperty:v40 forKey:v54];
            [v55 addObject:v42];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v37);
    }

    v43 = *&self->PSListController_opaque[v53];
    *&self->PSListController_opaque[v53] = v55;
    v44 = v55;

    v3 = *&self->PSListController_opaque[v53];
    goto LABEL_18;
  }

  v47 = *&self->PSListController_opaque[v2];
  *&self->PSListController_opaque[v2] = v55;
  v48 = v55;

  v45 = *&self->PSListController_opaque[v2];
LABEL_19:

  return v45;
}

@end
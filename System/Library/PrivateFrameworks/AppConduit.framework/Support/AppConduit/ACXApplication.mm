@interface ACXApplication
- (id)externalApplicationDictionaryRepresentationForDeviceState:(id)state;
- (id)externalComplicationDictionaryRepresentationForDeviceState:(id)state;
- (int64_t)exportedAppStateForDeviceState:(id)state;
@end

@implementation ACXApplication

- (id)externalApplicationDictionaryRepresentationForDeviceState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_new();
  bundleIdentifier = [(ACXApplication *)self bundleIdentifier];
  [v5 setObject:bundleIdentifier forKeyedSubscript:@"i"];

  applicationName = [(ACXApplication *)self applicationName];
  [v5 setObject:applicationName forKeyedSubscript:@"n"];

  teamID = [(ACXApplication *)self teamID];
  [v5 setObject:teamID forKeyedSubscript:@"SPApplicationTeamID"];

  companionAppBundleID = [(ACXApplication *)self companionAppBundleID];
  [v5 setObject:companionAppBundleID forKeyedSubscript:@"SPContainerAppBundleId"];

  watchKitAppExtensionBundleID = [(ACXApplication *)self watchKitAppExtensionBundleID];
  [v5 setObject:watchKitAppExtensionBundleID forKeyedSubscript:@"SPPluginBundleIdKey"];

  v11 = [NSNumber numberWithBool:[(ACXApplication *)self isBetaApp]];
  [v5 setObject:v11 forKeyedSubscript:@"WKBetaAppKey"];

  v12 = [NSNumber numberWithBool:[(ACXApplication *)self isSystemApp]];
  [v5 setObject:v12 forKeyedSubscript:@"AppShipsWithOS"];

  watchKitVersion = [(ACXApplication *)self watchKitVersion];
  [v5 setObject:watchKitVersion forKeyedSubscript:@"WKWatchKitVersion"];

  intentsRestrictedWhileLocked = [(ACXApplication *)self intentsRestrictedWhileLocked];
  [v5 setObject:intentsRestrictedWhileLocked forKeyedSubscript:@"IntentsRestrictedWhileLockedAgg"];

  intentsSupported = [(ACXApplication *)self intentsSupported];
  [v5 setObject:intentsSupported forKeyedSubscript:@"IntentsSupportedAgg"];

  clockFaceExtensionPaths = [(ACXApplication *)self clockFaceExtensionPaths];
  [v5 setObject:clockFaceExtensionPaths forKeyedSubscript:@"ACXClockfaceExtensionPaths"];

  if (stateCopy)
  {
    v17 = [(ACXApplication *)self exportedAppStateForDeviceState:stateCopy];
    v18 = [NSNumber numberWithInteger:v17];
    [v5 setObject:v18 forKeyedSubscript:@"s"];

    v19 = [NSNumber numberWithInt:(v17 - 1) < 2];
    [v5 setObject:v19 forKeyedSubscript:@"saw"];

    bundleIdentifier2 = [(ACXApplication *)self bundleIdentifier];
    v21 = [stateCopy uniqueInstallIDForApp:bundleIdentifier2];
    [v5 setObject:v21 forKeyedSubscript:@"SPApplicationUniqueID"];
  }

  device = [stateCopy device];
  osVersion = [device osVersion];

  if ([(ACXApplication *)self isRuntimeCompatibleWithOSVersion:osVersion])
  {
    v24 = &off_100097878;
  }

  else
  {
    v24 = &off_100097890;
  }

  [v5 setObject:v24 forKeyedSubscript:@"WKCompatibility"];
  device2 = [stateCopy device];
  v26 = [(ACXApplication *)self isCompatibleWithDevice:device2];

  if (v26)
  {
    v27 = &off_1000978A8;
  }

  else
  {
    v27 = &off_1000978C0;
  }

  [v5 setObject:v27 forKeyedSubscript:@"ACXArchitectureCompatibility"];
  userActivityTypes = [(ACXApplication *)self userActivityTypes];
  [v5 setObject:userActivityTypes forKeyedSubscript:@"ACXUserActivityTypesKey"];

  v29 = [v5 copy];

  return v29;
}

- (id)externalComplicationDictionaryRepresentationForDeviceState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_new();
  bundleIdentifier = [(ACXApplication *)self bundleIdentifier];
  [v5 setObject:bundleIdentifier forKeyedSubscript:@"CFBundleIdentifier"];

  companionAppName = [(ACXApplication *)self companionAppName];
  [v5 setObject:companionAppName forKeyedSubscript:@"CFBundleName"];

  if (stateCopy)
  {
    v8 = [NSNumber numberWithInteger:[(ACXApplication *)self exportedAppStateForDeviceState:stateCopy]];
    [v5 setObject:v8 forKeyedSubscript:@"s"];
  }

  complicationPrincipalClass = [(ACXApplication *)self complicationPrincipalClass];

  if (complicationPrincipalClass)
  {
    complicationPrincipalClass2 = [(ACXApplication *)self complicationPrincipalClass];
    [v5 setObject:complicationPrincipalClass2 forKeyedSubscript:@"CLKComplicationPrincipalClass"];
  }

  supportedComplicationFamilies = [(ACXApplication *)self supportedComplicationFamilies];

  if (supportedComplicationFamilies)
  {
    supportedComplicationFamilies2 = [(ACXApplication *)self supportedComplicationFamilies];
    [v5 setObject:supportedComplicationFamilies2 forKeyedSubscript:@"CLKComplicationSupportedFamilies"];
  }

  v13 = [v5 copy];

  return v13;
}

- (int64_t)exportedAppStateForDeviceState:(id)state
{
  stateCopy = state;
  companionAppBundleID = [(ACXApplication *)self companionAppBundleID];
  v6 = [stateCopy updatePendingForCompanionApp:companionAppBundleID];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    bundleIdentifier = [(ACXApplication *)self bundleIdentifier];
    v7 = [stateCopy exportedAppStateForDeviceState:{objc_msgSend(stateCopy, "installStatusForApp:", bundleIdentifier)}];
  }

  return v7;
}

@end
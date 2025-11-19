@interface ACXRemoteApplication
+ (id)localizedInfoPlistKeysLoadAnywhere;
+ (id)localizedInfoPlistKeysLoadAppOnly;
- (ACXRemoteApplication)init;
- (ACXRemoteApplication)initWithApplicationRecord:(id)a3 databaseUUID:(id)a4 sequenceNumber:(unint64_t)a5;
- (ACXRemoteApplication)initWithBundleID:(id)a3 databaseUUID:(id)a4 sequenceNumber:(unint64_t)a5;
- (ACXRemoteApplication)initWithCoder:(id)a3;
- (ACXRemoteApplication)initWithSerializedDictionary:(id)a3;
- (BOOL)hasComplication;
- (BOOL)isCompatibleWithDevice:(id)a3;
- (BOOL)isCompatibleWithOSVersion:(id)a3;
- (BOOL)isTheSameAppAs:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)counterpartIdentifiers;
- (id)description;
- (id)initForTesting;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACXRemoteApplication

+ (id)localizedInfoPlistKeysLoadAppOnly
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___ACXRemoteApplication;
  v2 = objc_msgSendSuper2(&v6, sel_localizedInfoPlistKeysLoadAppOnly);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED50], *MEMORY[0x277CBEC40], *MEMORY[0x277CBEC50], 0}];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

+ (id)localizedInfoPlistKeysLoadAnywhere
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___ACXRemoteApplication;
  v2 = objc_msgSendSuper2(&v6, sel_localizedInfoPlistKeysLoadAnywhere);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"NSLocationAlwaysUsageDescription", @"NSLocationWhenInUseUsageDescription", @"NSLocationAlwaysAndWhenInUseUsageDescription", @"NSHealthUpdateUsageDescription", @"NSHealthShareUsageDescription", @"NSHealthClinicalHealthRecordsShareUsageDescription", @"NSHealthResearchStudyUsageDescription", @"NSHealthCDARequestUsageDescription", 0}];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

- (ACXRemoteApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v75.receiver = self;
  v75.super_class = ACXRemoteApplication;
  v5 = [(ACXSyncedApplication *)&v75 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v74.receiver = v5;
  v74.super_class = ACXRemoteApplication;
  v7 = [(ACXSyncedApplication *)&v74 _rawApplicationName];

  if (!v7)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_15;
    }

LABEL_14:
    MOLogWrite();
LABEL_15:
    v72 = 0;
    goto LABEL_16;
  }

  v6->_isBetaApp = [v4 decodeBoolForKey:@"isBetaApp"];
  v6->_isProfileValidated = [v4 decodeBoolForKey:@"isProfileValidated"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationMode"];
  v6->_applicationMode = [v8 unsignedIntegerValue];

  if (![v4 containsValueForKey:@"companionAppBundleID"])
  {
    goto LABEL_10;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionAppBundleID"];
  companionAppBundleID = v6->_companionAppBundleID;
  v6->_companionAppBundleID = v9;

  if (([v4 containsValueForKey:@"watchKitVersion"] & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchKitVersion"];
  watchKitVersion = v6->_watchKitVersion;
  v6->_watchKitVersion = v11;

  if (([v4 containsValueForKey:@"teamID"] & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
  teamID = v6->_teamID;
  v6->_teamID = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"complicationPrincipalClass"];
  complicationPrincipalClass = v6->_complicationPrincipalClass;
  v6->_complicationPrincipalClass = v15;

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"supportedComplicationFamilies"];
  supportedComplicationFamilies = v6->_supportedComplicationFamilies;
  v6->_supportedComplicationFamilies = v20;

  if (([v4 containsValueForKey:@"watchKitAppExtensionBundleID"] & 1) == 0)
  {
LABEL_10:
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExtensionBundleID"];
  watchKitAppExtensionBundleID = v6->_watchKitAppExtensionBundleID;
  v6->_watchKitAppExtensionBundleID = v22;

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
  bundleVersion = v6->_bundleVersion;
  v6->_bundleVersion = v24;

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
  bundleShortVersion = v6->_bundleShortVersion;
  v6->_bundleShortVersion = v26;

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
  minimumOSVersion = v6->_minimumOSVersion;
  v6->_minimumOSVersion = v28;

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v33 = [v4 decodeObjectOfClasses:v32 forKey:@"intentsRestrictedWhileLocked"];
  intentsRestrictedWhileLocked = v6->_intentsRestrictedWhileLocked;
  v6->_intentsRestrictedWhileLocked = v33;

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [v4 decodeObjectOfClasses:v37 forKey:@"intentsSupported"];
  intentsSupported = v6->_intentsSupported;
  v6->_intentsSupported = v38;

  v40 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = [v40 setWithObjects:{v41, v42, objc_opt_class(), 0}];
  v44 = [v4 decodeObjectOfClasses:v43 forKey:@"requiredCapabilities"];
  requiredCapabilities = v6->_requiredCapabilities;
  v6->_requiredCapabilities = v44;

  v46 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  v49 = [v4 decodeObjectOfClasses:v48 forKey:@"architectureSlices"];
  architectureSlices = v6->_architectureSlices;
  v6->_architectureSlices = v49;

  v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExecutableHash"];
  watchKitAppExecutableHash = v6->_watchKitAppExecutableHash;
  v6->_watchKitAppExecutableHash = v51;

  v53 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
  v56 = [v4 decodeObjectOfClasses:v55 forKey:@"userActivityTypes"];
  userActivityTypes = v6->_userActivityTypes;
  v6->_userActivityTypes = v56;

  v6->_isLocallyAvailable = [v4 decodeBoolForKey:@"isLocallyAvailable"];
  v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeMetadata"];
  storeMetadata = v6->_storeMetadata;
  v6->_storeMetadata = v58;

  v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sdkVersion"];
  sdkVersion = v6->_sdkVersion;
  v6->_sdkVersion = v60;

  v62 = MEMORY[0x277CBEB98];
  v63 = objc_opt_class();
  v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
  v65 = [v4 decodeObjectOfClasses:v64 forKey:@"backgroundModes"];
  backgroundModes = v6->_backgroundModes;
  v6->_backgroundModes = v65;

  v67 = MEMORY[0x277CBEB98];
  v68 = objc_opt_class();
  v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
  v70 = [v4 decodeObjectOfClasses:v69 forKey:@"uiBackgroundModes"];
  uiBackgroundModes = v6->_uiBackgroundModes;
  v6->_uiBackgroundModes = v70;

LABEL_8:
  v72 = v6;
LABEL_16:

  return v72;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = ACXRemoteApplication;
  return [(ACXSyncedApplication *)&v3 initForTesting];
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACXRemoteApplication;
  v4 = a3;
  [(ACXSyncedApplication *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:self->_isBetaApp forKey:{@"isBetaApp", v6.receiver, v6.super_class}];
  [v4 encodeBool:self->_isProfileValidated forKey:@"isProfileValidated"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_applicationMode];
  [v4 encodeObject:v5 forKey:@"applicationMode"];

  [v4 encodeObject:self->_companionAppBundleID forKey:@"companionAppBundleID"];
  [v4 encodeObject:self->_watchKitVersion forKey:@"watchKitVersion"];
  [v4 encodeObject:self->_teamID forKey:@"teamID"];
  [v4 encodeObject:self->_complicationPrincipalClass forKey:@"complicationPrincipalClass"];
  [v4 encodeObject:self->_supportedComplicationFamilies forKey:@"supportedComplicationFamilies"];
  [v4 encodeObject:self->_watchKitAppExtensionBundleID forKey:@"watchKitAppExtensionBundleID"];
  [v4 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [v4 encodeObject:self->_bundleShortVersion forKey:@"bundleShortVersion"];
  [v4 encodeObject:self->_minimumOSVersion forKey:@"minimumOSVersion"];
  [v4 encodeObject:self->_intentsRestrictedWhileLocked forKey:@"intentsRestrictedWhileLocked"];
  [v4 encodeObject:self->_intentsSupported forKey:@"intentsSupported"];
  [v4 encodeObject:self->_requiredCapabilities forKey:@"requiredCapabilities"];
  [v4 encodeObject:self->_architectureSlices forKey:@"architectureSlices"];
  [v4 encodeObject:self->_watchKitAppExecutableHash forKey:@"watchKitAppExecutableHash"];
  [v4 encodeObject:self->_userActivityTypes forKey:@"userActivityTypes"];
  [v4 encodeBool:self->_isLocallyAvailable forKey:@"isLocallyAvailable"];
  [v4 encodeObject:self->_storeMetadata forKey:@"storeMetadata"];
  [v4 encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  [v4 encodeObject:self->_backgroundModes forKey:@"backgroundModes"];
  [v4 encodeObject:self->_uiBackgroundModes forKey:@"uiBackgroundModes"];
}

- (ACXRemoteApplication)init
{
  v3.receiver = self;
  v3.super_class = ACXRemoteApplication;
  return [(ACXSyncedApplication *)&v3 init];
}

- (ACXRemoteApplication)initWithApplicationRecord:(id)a3 databaseUUID:(id)a4 sequenceNumber:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ACXRemoteApplication;
  v10 = [(ACXSyncedApplication *)&v13 initWithApplicationRecord:v8 databaseUUID:v9 sequenceNumber:a5];
  if (v10)
  {
    v11 = [v8 bundleIdentifier];
    [(ACXSyncedApplication *)v10 setBundleIdentifier:v11];

    [(ACXSyncedApplication *)v10 setDatabaseUUID:v9];
    [(ACXSyncedApplication *)v10 setSequenceNumber:a5];
    -[ACXSyncedApplication setSupportsAlwaysOnDisplay:](v10, "setSupportsAlwaysOnDisplay:", [v8 supportsAlwaysOnDisplay]);
    -[ACXSyncedApplication setDefaultsToPrivateAlwaysOnDisplayTreatment:](v10, "setDefaultsToPrivateAlwaysOnDisplayTreatment:", [v8 defaultsToPrivateAlwaysOnDisplayTreatment]);
    -[ACXSyncedApplication setIsEligibleForWatchAppInstall:](v10, "setIsEligibleForWatchAppInstall:", [v8 isEligibleForWatchAppInstall]);
  }

  return v10;
}

- (ACXRemoteApplication)initWithBundleID:(id)a3 databaseUUID:(id)a4 sequenceNumber:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = ACXRemoteApplication;
  return [(ACXSyncedApplication *)&v6 initWithBundleID:a3 databaseUUID:a4 sequenceNumber:a5];
}

- (ACXRemoteApplication)initWithSerializedDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v80.receiver = self;
    v80.super_class = ACXRemoteApplication;
    self = [(ACXSyncedApplication *)&v80 initWithSerializedDictionary:v4];

    if (!self)
    {
LABEL_124:
      self = self;
      v9 = self;
      goto LABEL_125;
    }

    v79.receiver = self;
    v79.super_class = ACXRemoteApplication;
    v5 = [(ACXSyncedApplication *)&v79 _rawApplicationName];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"WKBetaAppKey"];
      objc_opt_class();
      v7 = v6;
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        self->_isBetaApp = [v8 BOOLValue];
      }

      v10 = [v4 objectForKeyedSubscript:@"applicationMode"];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        self->_applicationMode = [v12 unsignedIntegerValue];
      }

      v13 = [v4 objectForKeyedSubscript:@"validatedByProfile"];
      objc_opt_class();
      v14 = v13;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        self->_isProfileValidated = [v15 BOOLValue];
      }

      v16 = [v4 objectForKeyedSubscript:@"SPContainerAppBundleId"];
      objc_opt_class();
      v17 = v16;
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        objc_storeStrong(&self->_companionAppBundleID, v18);
      }

      v19 = [v4 objectForKeyedSubscript:@"WKWatchKitVersion"];
      objc_opt_class();
      v20 = v19;
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        objc_storeStrong(&self->_watchKitVersion, v21);
      }

      v22 = [v4 objectForKeyedSubscript:@"SPApplicationTeamID"];
      objc_opt_class();
      v23 = v22;
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        objc_storeStrong(&self->_teamID, v24);
      }

      v25 = [v4 objectForKeyedSubscript:@"CLKComplicationPrincipalClass"];
      objc_opt_class();
      v26 = v25;
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        objc_storeStrong(&self->_complicationPrincipalClass, v27);
      }

      v28 = [v4 objectForKeyedSubscript:@"CLKComplicationSupportedFamilies"];
      objc_opt_class();
      v29 = v28;
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        objc_storeStrong(&self->_supportedComplicationFamilies, v30);
      }

      v31 = [v4 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
      objc_opt_class();
      v32 = v31;
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        objc_storeStrong(&self->_watchKitAppExtensionBundleID, v33);
      }

      v34 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBED58]];
      objc_opt_class();
      v35 = v34;
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if (v36)
      {
        objc_storeStrong(&self->_bundleVersion, v36);
      }

      v37 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBEC50]];
      objc_opt_class();
      v38 = v37;
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        objc_storeStrong(&self->_bundleShortVersion, v39);
      }

      v40 = [v4 objectForKeyedSubscript:@"watchKitAppSlices"];
      objc_opt_class();
      v41 = v40;
      if (objc_opt_isKindOfClass())
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      if (v42)
      {
        objc_storeStrong(&self->_architectureSlices, v42);
      }

      v43 = [v4 objectForKeyedSubscript:@"MinimumOSVersion"];
      objc_opt_class();
      v44 = v43;
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      if (v45)
      {
        objc_storeStrong(&self->_minimumOSVersion, v45);
      }

      v46 = [v4 objectForKeyedSubscript:@"IntentsRestrictedWhileLockedAgg"];
      objc_opt_class();
      v47 = v46;
      if (objc_opt_isKindOfClass())
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      if (v48)
      {
        objc_storeStrong(&self->_intentsRestrictedWhileLocked, v48);
      }

      v49 = [v4 objectForKeyedSubscript:@"IntentsSupportedAgg"];
      objc_opt_class();
      v50 = v49;
      if (objc_opt_isKindOfClass())
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      if (v51)
      {
        objc_storeStrong(&self->_intentsSupported, v51);
      }

      v52 = [v4 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
      objc_opt_class();
      v53 = v52;
      if (objc_opt_isKindOfClass())
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      if (v54)
      {
        objc_storeStrong(&self->_requiredCapabilities, v54);
      }

      v55 = [v4 objectForKeyedSubscript:@"watchKitAppExecutableHash"];
      objc_opt_class();
      v56 = v55;
      if (objc_opt_isKindOfClass())
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      if (v57)
      {
        objc_storeStrong(&self->_watchKitAppExecutableHash, v57);
      }

      v58 = [v4 objectForKeyedSubscript:@"NSUserActivityTypes"];
      objc_opt_class();
      v59 = v58;
      if (objc_opt_isKindOfClass())
      {
        v60 = v59;
      }

      else
      {
        v60 = 0;
      }

      if (v60)
      {
        objc_storeStrong(&self->_userActivityTypes, v60);
      }

      v61 = [v4 objectForKeyedSubscript:@"isLocallyAvailable"];
      objc_opt_class();
      v62 = v61;
      if (objc_opt_isKindOfClass())
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }

      if (v63)
      {
        self->_isLocallyAvailable = [v63 BOOLValue];
      }

      v64 = [v4 objectForKeyedSubscript:@"storeMetadata"];
      objc_opt_class();
      v65 = v64;
      if (objc_opt_isKindOfClass())
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      if (v66)
      {
        v67 = [MEMORY[0x277D1C208] metadataFromDictionary:v66];
        storeMetadata = self->_storeMetadata;
        self->_storeMetadata = v67;
      }

      v69 = [v4 objectForKeyedSubscript:@"ACXSDKVersionKey"];
      objc_opt_class();
      v70 = v69;
      if (objc_opt_isKindOfClass())
      {
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        objc_storeStrong(&self->_sdkVersion, v71);
      }

      v72 = [v4 objectForKeyedSubscript:@"ACXBackgroundModesKey"];
      objc_opt_class();
      v73 = v72;
      if (objc_opt_isKindOfClass())
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }

      if (v74)
      {
        objc_storeStrong(&self->_backgroundModes, v74);
      }

      v75 = [v4 objectForKeyedSubscript:@"ACXUIBackgroundModesKey"];
      objc_opt_class();
      v76 = v75;
      if (objc_opt_isKindOfClass())
      {
        v77 = v76;
      }

      else
      {
        v77 = 0;
      }

      if (v77)
      {
        objc_storeStrong(&self->_uiBackgroundModes, v77);
      }

      goto LABEL_124;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v9 = 0;
LABEL_125:

  return v9;
}

- (id)serialize
{
  v37.receiver = self;
  v37.super_class = ACXRemoteApplication;
  v3 = [(ACXSyncedApplication *)&v37 serialize];
  v4 = [v3 mutableCopy];

  v5 = [(ACXSyncedApplication *)self bundleIdentifier];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBED38]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXRemoteApplication isBetaApp](self, "isBetaApp")}];
  [v4 setObject:v6 forKeyedSubscript:@"WKBetaAppKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ACXRemoteApplication applicationMode](self, "applicationMode")}];
  [v4 setObject:v7 forKeyedSubscript:@"applicationMode"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXRemoteApplication isProfileValidated](self, "isProfileValidated")}];
  [v4 setObject:v8 forKeyedSubscript:@"validatedByProfile"];

  v9 = [(ACXRemoteApplication *)self companionAppBundleID];
  [v4 setObject:v9 forKeyedSubscript:@"SPContainerAppBundleId"];

  v10 = [(ACXRemoteApplication *)self watchKitVersion];
  [v4 setObject:v10 forKeyedSubscript:@"WKWatchKitVersion"];

  v11 = [(ACXRemoteApplication *)self teamID];
  [v4 setObject:v11 forKeyedSubscript:@"SPApplicationTeamID"];

  v12 = [(ACXRemoteApplication *)self complicationPrincipalClass];
  [v4 setObject:v12 forKeyedSubscript:@"CLKComplicationPrincipalClass"];

  v13 = [(ACXRemoteApplication *)self supportedComplicationFamilies];
  [v4 setObject:v13 forKeyedSubscript:@"CLKComplicationSupportedFamilies"];

  v14 = [(ACXRemoteApplication *)self watchKitAppExtensionBundleID];

  if (v14)
  {
    v15 = [(ACXRemoteApplication *)self watchKitAppExtensionBundleID];
    [v4 setObject:v15 forKeyedSubscript:@"SPPluginBundleIdKey"];
  }

  v16 = [(ACXRemoteApplication *)self bundleVersion];

  if (v16)
  {
    v17 = [(ACXRemoteApplication *)self bundleVersion];
    [v4 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBED58]];
  }

  v18 = [(ACXRemoteApplication *)self bundleShortVersion];

  if (v18)
  {
    v19 = [(ACXRemoteApplication *)self bundleShortVersion];
    [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBEC50]];
  }

  v20 = [(ACXRemoteApplication *)self minimumOSVersion];
  [v4 setObject:v20 forKeyedSubscript:@"MinimumOSVersion"];

  v21 = [(ACXRemoteApplication *)self intentsRestrictedWhileLocked];
  [v4 setObject:v21 forKeyedSubscript:@"IntentsRestrictedWhileLockedAgg"];

  v22 = [(ACXRemoteApplication *)self intentsSupported];
  [v4 setObject:v22 forKeyedSubscript:@"IntentsSupportedAgg"];

  v23 = [(ACXRemoteApplication *)self requiredCapabilities];
  [v4 setObject:v23 forKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  v24 = [(ACXRemoteApplication *)self architectureSlices];
  [v4 setObject:v24 forKeyedSubscript:@"watchKitAppSlices"];

  v25 = [(ACXRemoteApplication *)self watchKitAppExecutableHash];
  [v4 setObject:v25 forKeyedSubscript:@"watchKitAppExecutableHash"];

  v26 = [(ACXRemoteApplication *)self userActivityTypes];
  [v4 setObject:v26 forKeyedSubscript:@"NSUserActivityTypes"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXRemoteApplication isLocallyAvailable](self, "isLocallyAvailable")}];
  [v4 setObject:v27 forKeyedSubscript:@"isLocallyAvailable"];

  v28 = [(ACXRemoteApplication *)self storeMetadata];
  v29 = [v28 dictionaryRepresentation];
  [v4 setObject:v29 forKeyedSubscript:@"storeMetadata"];

  v30 = [(ACXRemoteApplication *)self sdkVersion];
  [v4 setObject:v30 forKeyedSubscript:@"ACXSDKVersionKey"];

  v31 = [(ACXRemoteApplication *)self backgroundModes];

  if (v31)
  {
    v32 = [(ACXRemoteApplication *)self backgroundModes];
    [v4 setObject:v32 forKeyedSubscript:@"ACXBackgroundModesKey"];
  }

  v33 = [(ACXRemoteApplication *)self uiBackgroundModes];

  if (v33)
  {
    v34 = [(ACXRemoteApplication *)self uiBackgroundModes];
    [v4 setObject:v34 forKeyedSubscript:@"ACXUIBackgroundModesKey"];
  }

  v35 = [v4 copy];

  return v35;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v64.receiver = self;
  v64.super_class = ACXRemoteApplication;
  v4 = [(ACXSyncedApplication *)&v64 copyWithZone:a3];
  if (v4)
  {
    v4[88] = [(ACXRemoteApplication *)self isBetaApp];
    v4[89] = [(ACXRemoteApplication *)self isProfileValidated];
    *(v4 + 12) = [(ACXRemoteApplication *)self applicationMode];
    v5 = [(ACXRemoteApplication *)self companionAppBundleID];
    v6 = [v5 copy];
    v7 = *(v4 + 18);
    *(v4 + 18) = v6;

    v8 = [(ACXRemoteApplication *)self watchKitVersion];
    v9 = [v8 copy];
    v10 = *(v4 + 17);
    *(v4 + 17) = v9;

    v11 = [(ACXRemoteApplication *)self teamID];
    v12 = [v11 copy];
    v13 = *(v4 + 21);
    *(v4 + 21) = v12;

    v14 = [(ACXRemoteApplication *)self complicationPrincipalClass];
    v15 = [v14 copy];
    v16 = *(v4 + 22);
    *(v4 + 22) = v15;

    v17 = [(ACXRemoteApplication *)self supportedComplicationFamilies];
    v18 = [v17 copy];
    v19 = *(v4 + 23);
    *(v4 + 23) = v18;

    v20 = [(ACXRemoteApplication *)self watchKitAppExtensionBundleID];
    v21 = [v20 copy];
    v22 = *(v4 + 20);
    *(v4 + 20) = v21;

    v23 = [(ACXRemoteApplication *)self bundleVersion];
    v24 = [v23 copy];
    v25 = *(v4 + 13);
    *(v4 + 13) = v24;

    v26 = [(ACXRemoteApplication *)self bundleShortVersion];
    v27 = [v26 copy];
    v28 = *(v4 + 14);
    *(v4 + 14) = v27;

    v29 = [(ACXRemoteApplication *)self minimumOSVersion];
    v30 = [v29 copy];
    v31 = *(v4 + 15);
    *(v4 + 15) = v30;

    v32 = [(ACXRemoteApplication *)self intentsRestrictedWhileLocked];
    v33 = [v32 copy];
    v34 = *(v4 + 24);
    *(v4 + 24) = v33;

    v35 = [(ACXRemoteApplication *)self intentsSupported];
    v36 = [v35 copy];
    v37 = *(v4 + 25);
    *(v4 + 25) = v36;

    v38 = [(ACXRemoteApplication *)self requiredCapabilities];
    v39 = [v38 copy];
    v40 = *(v4 + 16);
    *(v4 + 16) = v39;

    v41 = [(ACXRemoteApplication *)self architectureSlices];
    v42 = [v41 copy];
    v43 = *(v4 + 27);
    *(v4 + 27) = v42;

    v44 = [(ACXRemoteApplication *)self watchKitAppExecutableHash];
    v45 = [v44 copy];
    v46 = *(v4 + 19);
    *(v4 + 19) = v45;

    v47 = [(ACXRemoteApplication *)self userActivityTypes];
    v48 = [v47 copy];
    v49 = *(v4 + 26);
    *(v4 + 26) = v48;

    v4[91] = [(ACXRemoteApplication *)self isLocallyAvailable];
    v50 = [(ACXRemoteApplication *)self storeMetadata];
    v51 = [v50 copy];
    v52 = *(v4 + 28);
    *(v4 + 28) = v51;

    v53 = [(ACXRemoteApplication *)self sdkVersion];
    v54 = [v53 copy];
    v55 = *(v4 + 29);
    *(v4 + 29) = v54;

    v56 = [(ACXRemoteApplication *)self backgroundModes];
    v57 = [v56 copy];
    v58 = *(v4 + 30);
    *(v4 + 30) = v57;

    v59 = [(ACXRemoteApplication *)self uiBackgroundModes];
    v60 = [v59 copy];
    v61 = *(v4 + 31);
    *(v4 + 31) = v60;

    v62 = v4;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACXSyncedApplication *)self bundleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@<%p> bundleID=%@>", v5, self, v6];

  return v7;
}

- (BOOL)hasComplication
{
  v2 = [(ACXRemoteApplication *)self complicationPrincipalClass];
  v3 = v2 != 0;

  return v3;
}

- (id)counterpartIdentifiers
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(ACXRemoteApplication *)self companionAppBundleID];
  v13.receiver = self;
  v13.super_class = ACXRemoteApplication;
  v4 = [(ACXSyncedApplication *)&v13 counterpartIdentifiers];
  v5 = v4;
  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3 == 0;
    }

    if (!v7)
    {
      v14[0] = v3;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v9 = [v4 containsObject:v3];
  if (v9)
  {
LABEL_12:
    v8 = v5;
    goto LABEL_14;
  }

  v8 = [v5 arrayByAddingObject:v3];
LABEL_14:
  v10 = v8;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isCompatibleWithOSVersion:(id)a3
{
  v4 = a3;
  v5 = [(ACXRemoteApplication *)self minimumOSVersion];

  if (v5)
  {
    v6 = [(ACXRemoteApplication *)self minimumOSVersion];
    v7 = [v4 compare:v6 options:64] != -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isCompatibleWithDevice:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACXRemoteApplication *)self architectureSlices];
  v6 = 1;
  if ([(ACXSyncedApplication *)self applicationType]== 2 && v5)
  {
    v7 = [v4 cpuType];
    v8 = [v4 cpuSubtype];
    v9 = [v4 runnableArchNames];
    v10 = objc_opt_new();
    v11 = v10;
    if (v9)
    {
      v36 = v4;
      [v10 addObjectsFromArray:v9];
    }

    else
    {
      v12 = macho_arch_name_for_cpu_type(v7, v8);
      if (!v12)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          MOLogWrite();
        }

        v6 = 1;
        goto LABEL_24;
      }

      v36 = v4;
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [v11 addObject:v13];
    }

    v34 = v11;
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      [(ACXSyncedApplication *)self bundleIdentifier];
      v32 = v8;
      v30 = v33 = v9;
      v31 = v7;
      MOLogWrite();
    }

    v14 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v5;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          v21 = [v20 objectAtIndexedSubscript:{0, v30, v31, v32, v33}];
          v22 = [v21 intValue];

          v23 = [v20 objectAtIndexedSubscript:1];
          v24 = [v23 unsignedIntValue];

          v25 = macho_arch_name_for_cpu_type(v22, v24);
          if (v25)
          {
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
            [v14 addObject:v26];
          }

          else if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v30 = v22;
            v31 = v24;
            MOLogWrite();
          }

          ++v19;
        }

        while (v17 != v19);
        v27 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
        v17 = v27;
      }

      while (v27);
    }

    v11 = v34;
    v6 = [v34 intersectsSet:v14];

    v5 = v35;
    v4 = v36;
LABEL_24:
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isTheSameAppAs:(id)a3
{
  v4 = a3;
  if (!-[ACXRemoteApplication isProfileValidated](self, "isProfileValidated") && ([v4 isProfileValidated] & 1) == 0)
  {
    v6 = [(ACXSyncedApplication *)self externalVersionIdentifier];
    v10 = [v4 externalVersionIdentifier];
    v7 = v10;
    if (!v6 || !v10)
    {
      v12 = [(ACXRemoteApplication *)self bundleVersion];
      v13 = [(ACXRemoteApplication *)self bundleShortVersion];
      v14 = [v4 bundleVersion];
      v15 = [v4 bundleShortVersion];
      if (ACXObjectsAreTheSameOrSameNullness(v12, v14) && ACXObjectsAreTheSameOrSameNullness(v13, v15))
      {

        v9 = 1;
      }

      else
      {

        v9 = 0;
      }

      goto LABEL_10;
    }

    v8 = [v6 isEqualToNumber:v10];
LABEL_9:
    v9 = v8;
LABEL_10:

    goto LABEL_11;
  }

  v5 = [(ACXRemoteApplication *)self watchKitAppExecutableHash];

  if (v5)
  {
    v6 = [(ACXRemoteApplication *)self watchKitAppExecutableHash];
    v7 = [v4 watchKitAppExecutableHash];
    v8 = ACXObjectsAreTheSameOrSameNullness(v6, v7);
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end
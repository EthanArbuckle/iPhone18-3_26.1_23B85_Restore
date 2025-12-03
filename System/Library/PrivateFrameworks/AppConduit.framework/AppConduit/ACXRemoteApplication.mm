@interface ACXRemoteApplication
+ (id)localizedInfoPlistKeysLoadAnywhere;
+ (id)localizedInfoPlistKeysLoadAppOnly;
- (ACXRemoteApplication)init;
- (ACXRemoteApplication)initWithApplicationRecord:(id)record databaseUUID:(id)d sequenceNumber:(unint64_t)number;
- (ACXRemoteApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number;
- (ACXRemoteApplication)initWithCoder:(id)coder;
- (ACXRemoteApplication)initWithSerializedDictionary:(id)dictionary;
- (BOOL)hasComplication;
- (BOOL)isCompatibleWithDevice:(id)device;
- (BOOL)isCompatibleWithOSVersion:(id)version;
- (BOOL)isTheSameAppAs:(id)as;
- (id)copyWithZone:(_NSZone *)zone;
- (id)counterpartIdentifiers;
- (id)description;
- (id)initForTesting;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXRemoteApplication

+ (id)localizedInfoPlistKeysLoadAppOnly
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ACXRemoteApplication;
  v2 = objc_msgSendSuper2(&v6, sel_localizedInfoPlistKeysLoadAppOnly);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED50], *MEMORY[0x277CBEC40], *MEMORY[0x277CBEC50], 0}];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

+ (id)localizedInfoPlistKeysLoadAnywhere
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___ACXRemoteApplication;
  v2 = objc_msgSendSuper2(&v6, sel_localizedInfoPlistKeysLoadAnywhere);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"NSLocationAlwaysUsageDescription", @"NSLocationWhenInUseUsageDescription", @"NSLocationAlwaysAndWhenInUseUsageDescription", @"NSHealthUpdateUsageDescription", @"NSHealthShareUsageDescription", @"NSHealthClinicalHealthRecordsShareUsageDescription", @"NSHealthResearchStudyUsageDescription", @"NSHealthCDARequestUsageDescription", 0}];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

- (ACXRemoteApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v75.receiver = self;
  v75.super_class = ACXRemoteApplication;
  v5 = [(ACXSyncedApplication *)&v75 initWithCoder:coderCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v74.receiver = v5;
  v74.super_class = ACXRemoteApplication;
  _rawApplicationName = [(ACXSyncedApplication *)&v74 _rawApplicationName];

  if (!_rawApplicationName)
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

  v6->_isBetaApp = [coderCopy decodeBoolForKey:@"isBetaApp"];
  v6->_isProfileValidated = [coderCopy decodeBoolForKey:@"isProfileValidated"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationMode"];
  v6->_applicationMode = [v8 unsignedIntegerValue];

  if (![coderCopy containsValueForKey:@"companionAppBundleID"])
  {
    goto LABEL_10;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppBundleID"];
  companionAppBundleID = v6->_companionAppBundleID;
  v6->_companionAppBundleID = v9;

  if (([coderCopy containsValueForKey:@"watchKitVersion"] & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchKitVersion"];
  watchKitVersion = v6->_watchKitVersion;
  v6->_watchKitVersion = v11;

  if (([coderCopy containsValueForKey:@"teamID"] & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
  teamID = v6->_teamID;
  v6->_teamID = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"complicationPrincipalClass"];
  complicationPrincipalClass = v6->_complicationPrincipalClass;
  v6->_complicationPrincipalClass = v15;

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"supportedComplicationFamilies"];
  supportedComplicationFamilies = v6->_supportedComplicationFamilies;
  v6->_supportedComplicationFamilies = v20;

  if (([coderCopy containsValueForKey:@"watchKitAppExtensionBundleID"] & 1) == 0)
  {
LABEL_10:
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExtensionBundleID"];
  watchKitAppExtensionBundleID = v6->_watchKitAppExtensionBundleID;
  v6->_watchKitAppExtensionBundleID = v22;

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
  bundleVersion = v6->_bundleVersion;
  v6->_bundleVersion = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
  bundleShortVersion = v6->_bundleShortVersion;
  v6->_bundleShortVersion = v26;

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
  minimumOSVersion = v6->_minimumOSVersion;
  v6->_minimumOSVersion = v28;

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"intentsRestrictedWhileLocked"];
  intentsRestrictedWhileLocked = v6->_intentsRestrictedWhileLocked;
  v6->_intentsRestrictedWhileLocked = v33;

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"intentsSupported"];
  intentsSupported = v6->_intentsSupported;
  v6->_intentsSupported = v38;

  v40 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = [v40 setWithObjects:{v41, v42, objc_opt_class(), 0}];
  v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"requiredCapabilities"];
  requiredCapabilities = v6->_requiredCapabilities;
  v6->_requiredCapabilities = v44;

  v46 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
  v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"architectureSlices"];
  architectureSlices = v6->_architectureSlices;
  v6->_architectureSlices = v49;

  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExecutableHash"];
  watchKitAppExecutableHash = v6->_watchKitAppExecutableHash;
  v6->_watchKitAppExecutableHash = v51;

  v53 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
  v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"userActivityTypes"];
  userActivityTypes = v6->_userActivityTypes;
  v6->_userActivityTypes = v56;

  v6->_isLocallyAvailable = [coderCopy decodeBoolForKey:@"isLocallyAvailable"];
  v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeMetadata"];
  storeMetadata = v6->_storeMetadata;
  v6->_storeMetadata = v58;

  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sdkVersion"];
  sdkVersion = v6->_sdkVersion;
  v6->_sdkVersion = v60;

  v62 = MEMORY[0x277CBEB98];
  v63 = objc_opt_class();
  v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
  v65 = [coderCopy decodeObjectOfClasses:v64 forKey:@"backgroundModes"];
  backgroundModes = v6->_backgroundModes;
  v6->_backgroundModes = v65;

  v67 = MEMORY[0x277CBEB98];
  v68 = objc_opt_class();
  v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
  v70 = [coderCopy decodeObjectOfClasses:v69 forKey:@"uiBackgroundModes"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ACXRemoteApplication;
  coderCopy = coder;
  [(ACXSyncedApplication *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isBetaApp forKey:{@"isBetaApp", v6.receiver, v6.super_class}];
  [coderCopy encodeBool:self->_isProfileValidated forKey:@"isProfileValidated"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_applicationMode];
  [coderCopy encodeObject:v5 forKey:@"applicationMode"];

  [coderCopy encodeObject:self->_companionAppBundleID forKey:@"companionAppBundleID"];
  [coderCopy encodeObject:self->_watchKitVersion forKey:@"watchKitVersion"];
  [coderCopy encodeObject:self->_teamID forKey:@"teamID"];
  [coderCopy encodeObject:self->_complicationPrincipalClass forKey:@"complicationPrincipalClass"];
  [coderCopy encodeObject:self->_supportedComplicationFamilies forKey:@"supportedComplicationFamilies"];
  [coderCopy encodeObject:self->_watchKitAppExtensionBundleID forKey:@"watchKitAppExtensionBundleID"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeObject:self->_bundleShortVersion forKey:@"bundleShortVersion"];
  [coderCopy encodeObject:self->_minimumOSVersion forKey:@"minimumOSVersion"];
  [coderCopy encodeObject:self->_intentsRestrictedWhileLocked forKey:@"intentsRestrictedWhileLocked"];
  [coderCopy encodeObject:self->_intentsSupported forKey:@"intentsSupported"];
  [coderCopy encodeObject:self->_requiredCapabilities forKey:@"requiredCapabilities"];
  [coderCopy encodeObject:self->_architectureSlices forKey:@"architectureSlices"];
  [coderCopy encodeObject:self->_watchKitAppExecutableHash forKey:@"watchKitAppExecutableHash"];
  [coderCopy encodeObject:self->_userActivityTypes forKey:@"userActivityTypes"];
  [coderCopy encodeBool:self->_isLocallyAvailable forKey:@"isLocallyAvailable"];
  [coderCopy encodeObject:self->_storeMetadata forKey:@"storeMetadata"];
  [coderCopy encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  [coderCopy encodeObject:self->_backgroundModes forKey:@"backgroundModes"];
  [coderCopy encodeObject:self->_uiBackgroundModes forKey:@"uiBackgroundModes"];
}

- (ACXRemoteApplication)init
{
  v3.receiver = self;
  v3.super_class = ACXRemoteApplication;
  return [(ACXSyncedApplication *)&v3 init];
}

- (ACXRemoteApplication)initWithApplicationRecord:(id)record databaseUUID:(id)d sequenceNumber:(unint64_t)number
{
  recordCopy = record;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ACXRemoteApplication;
  v10 = [(ACXSyncedApplication *)&v13 initWithApplicationRecord:recordCopy databaseUUID:dCopy sequenceNumber:number];
  if (v10)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    [(ACXSyncedApplication *)v10 setBundleIdentifier:bundleIdentifier];

    [(ACXSyncedApplication *)v10 setDatabaseUUID:dCopy];
    [(ACXSyncedApplication *)v10 setSequenceNumber:number];
    -[ACXSyncedApplication setSupportsAlwaysOnDisplay:](v10, "setSupportsAlwaysOnDisplay:", [recordCopy supportsAlwaysOnDisplay]);
    -[ACXSyncedApplication setDefaultsToPrivateAlwaysOnDisplayTreatment:](v10, "setDefaultsToPrivateAlwaysOnDisplayTreatment:", [recordCopy defaultsToPrivateAlwaysOnDisplayTreatment]);
    -[ACXSyncedApplication setIsEligibleForWatchAppInstall:](v10, "setIsEligibleForWatchAppInstall:", [recordCopy isEligibleForWatchAppInstall]);
  }

  return v10;
}

- (ACXRemoteApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = ACXRemoteApplication;
  return [(ACXSyncedApplication *)&v6 initWithBundleID:d databaseUUID:iD sequenceNumber:number];
}

- (ACXRemoteApplication)initWithSerializedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v80.receiver = self;
    v80.super_class = ACXRemoteApplication;
    self = [(ACXSyncedApplication *)&v80 initWithSerializedDictionary:dictionaryCopy];

    if (!self)
    {
LABEL_124:
      self = self;
      selfCopy = self;
      goto LABEL_125;
    }

    v79.receiver = self;
    v79.super_class = ACXRemoteApplication;
    _rawApplicationName = [(ACXSyncedApplication *)&v79 _rawApplicationName];

    if (_rawApplicationName)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"WKBetaAppKey"];
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

      v10 = [dictionaryCopy objectForKeyedSubscript:@"applicationMode"];
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

      v13 = [dictionaryCopy objectForKeyedSubscript:@"validatedByProfile"];
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

      v16 = [dictionaryCopy objectForKeyedSubscript:@"SPContainerAppBundleId"];
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

      v19 = [dictionaryCopy objectForKeyedSubscript:@"WKWatchKitVersion"];
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

      v22 = [dictionaryCopy objectForKeyedSubscript:@"SPApplicationTeamID"];
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

      v25 = [dictionaryCopy objectForKeyedSubscript:@"CLKComplicationPrincipalClass"];
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

      v28 = [dictionaryCopy objectForKeyedSubscript:@"CLKComplicationSupportedFamilies"];
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

      v31 = [dictionaryCopy objectForKeyedSubscript:@"SPPluginBundleIdKey"];
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

      v34 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CBED58]];
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

      v37 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CBEC50]];
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

      v40 = [dictionaryCopy objectForKeyedSubscript:@"watchKitAppSlices"];
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

      v43 = [dictionaryCopy objectForKeyedSubscript:@"MinimumOSVersion"];
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

      v46 = [dictionaryCopy objectForKeyedSubscript:@"IntentsRestrictedWhileLockedAgg"];
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

      v49 = [dictionaryCopy objectForKeyedSubscript:@"IntentsSupportedAgg"];
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

      v52 = [dictionaryCopy objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
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

      v55 = [dictionaryCopy objectForKeyedSubscript:@"watchKitAppExecutableHash"];
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

      v58 = [dictionaryCopy objectForKeyedSubscript:@"NSUserActivityTypes"];
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

      v61 = [dictionaryCopy objectForKeyedSubscript:@"isLocallyAvailable"];
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

      v64 = [dictionaryCopy objectForKeyedSubscript:@"storeMetadata"];
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

      v69 = [dictionaryCopy objectForKeyedSubscript:@"ACXSDKVersionKey"];
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

      v72 = [dictionaryCopy objectForKeyedSubscript:@"ACXBackgroundModesKey"];
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

      v75 = [dictionaryCopy objectForKeyedSubscript:@"ACXUIBackgroundModesKey"];
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

  selfCopy = 0;
LABEL_125:

  return selfCopy;
}

- (id)serialize
{
  v37.receiver = self;
  v37.super_class = ACXRemoteApplication;
  serialize = [(ACXSyncedApplication *)&v37 serialize];
  v4 = [serialize mutableCopy];

  bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
  [v4 setObject:bundleIdentifier forKeyedSubscript:*MEMORY[0x277CBED38]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXRemoteApplication isBetaApp](self, "isBetaApp")}];
  [v4 setObject:v6 forKeyedSubscript:@"WKBetaAppKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ACXRemoteApplication applicationMode](self, "applicationMode")}];
  [v4 setObject:v7 forKeyedSubscript:@"applicationMode"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXRemoteApplication isProfileValidated](self, "isProfileValidated")}];
  [v4 setObject:v8 forKeyedSubscript:@"validatedByProfile"];

  companionAppBundleID = [(ACXRemoteApplication *)self companionAppBundleID];
  [v4 setObject:companionAppBundleID forKeyedSubscript:@"SPContainerAppBundleId"];

  watchKitVersion = [(ACXRemoteApplication *)self watchKitVersion];
  [v4 setObject:watchKitVersion forKeyedSubscript:@"WKWatchKitVersion"];

  teamID = [(ACXRemoteApplication *)self teamID];
  [v4 setObject:teamID forKeyedSubscript:@"SPApplicationTeamID"];

  complicationPrincipalClass = [(ACXRemoteApplication *)self complicationPrincipalClass];
  [v4 setObject:complicationPrincipalClass forKeyedSubscript:@"CLKComplicationPrincipalClass"];

  supportedComplicationFamilies = [(ACXRemoteApplication *)self supportedComplicationFamilies];
  [v4 setObject:supportedComplicationFamilies forKeyedSubscript:@"CLKComplicationSupportedFamilies"];

  watchKitAppExtensionBundleID = [(ACXRemoteApplication *)self watchKitAppExtensionBundleID];

  if (watchKitAppExtensionBundleID)
  {
    watchKitAppExtensionBundleID2 = [(ACXRemoteApplication *)self watchKitAppExtensionBundleID];
    [v4 setObject:watchKitAppExtensionBundleID2 forKeyedSubscript:@"SPPluginBundleIdKey"];
  }

  bundleVersion = [(ACXRemoteApplication *)self bundleVersion];

  if (bundleVersion)
  {
    bundleVersion2 = [(ACXRemoteApplication *)self bundleVersion];
    [v4 setObject:bundleVersion2 forKeyedSubscript:*MEMORY[0x277CBED58]];
  }

  bundleShortVersion = [(ACXRemoteApplication *)self bundleShortVersion];

  if (bundleShortVersion)
  {
    bundleShortVersion2 = [(ACXRemoteApplication *)self bundleShortVersion];
    [v4 setObject:bundleShortVersion2 forKeyedSubscript:*MEMORY[0x277CBEC50]];
  }

  minimumOSVersion = [(ACXRemoteApplication *)self minimumOSVersion];
  [v4 setObject:minimumOSVersion forKeyedSubscript:@"MinimumOSVersion"];

  intentsRestrictedWhileLocked = [(ACXRemoteApplication *)self intentsRestrictedWhileLocked];
  [v4 setObject:intentsRestrictedWhileLocked forKeyedSubscript:@"IntentsRestrictedWhileLockedAgg"];

  intentsSupported = [(ACXRemoteApplication *)self intentsSupported];
  [v4 setObject:intentsSupported forKeyedSubscript:@"IntentsSupportedAgg"];

  requiredCapabilities = [(ACXRemoteApplication *)self requiredCapabilities];
  [v4 setObject:requiredCapabilities forKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  architectureSlices = [(ACXRemoteApplication *)self architectureSlices];
  [v4 setObject:architectureSlices forKeyedSubscript:@"watchKitAppSlices"];

  watchKitAppExecutableHash = [(ACXRemoteApplication *)self watchKitAppExecutableHash];
  [v4 setObject:watchKitAppExecutableHash forKeyedSubscript:@"watchKitAppExecutableHash"];

  userActivityTypes = [(ACXRemoteApplication *)self userActivityTypes];
  [v4 setObject:userActivityTypes forKeyedSubscript:@"NSUserActivityTypes"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXRemoteApplication isLocallyAvailable](self, "isLocallyAvailable")}];
  [v4 setObject:v27 forKeyedSubscript:@"isLocallyAvailable"];

  storeMetadata = [(ACXRemoteApplication *)self storeMetadata];
  dictionaryRepresentation = [storeMetadata dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"storeMetadata"];

  sdkVersion = [(ACXRemoteApplication *)self sdkVersion];
  [v4 setObject:sdkVersion forKeyedSubscript:@"ACXSDKVersionKey"];

  backgroundModes = [(ACXRemoteApplication *)self backgroundModes];

  if (backgroundModes)
  {
    backgroundModes2 = [(ACXRemoteApplication *)self backgroundModes];
    [v4 setObject:backgroundModes2 forKeyedSubscript:@"ACXBackgroundModesKey"];
  }

  uiBackgroundModes = [(ACXRemoteApplication *)self uiBackgroundModes];

  if (uiBackgroundModes)
  {
    uiBackgroundModes2 = [(ACXRemoteApplication *)self uiBackgroundModes];
    [v4 setObject:uiBackgroundModes2 forKeyedSubscript:@"ACXUIBackgroundModesKey"];
  }

  v35 = [v4 copy];

  return v35;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v64.receiver = self;
  v64.super_class = ACXRemoteApplication;
  v4 = [(ACXSyncedApplication *)&v64 copyWithZone:zone];
  if (v4)
  {
    v4[88] = [(ACXRemoteApplication *)self isBetaApp];
    v4[89] = [(ACXRemoteApplication *)self isProfileValidated];
    *(v4 + 12) = [(ACXRemoteApplication *)self applicationMode];
    companionAppBundleID = [(ACXRemoteApplication *)self companionAppBundleID];
    v6 = [companionAppBundleID copy];
    v7 = *(v4 + 18);
    *(v4 + 18) = v6;

    watchKitVersion = [(ACXRemoteApplication *)self watchKitVersion];
    v9 = [watchKitVersion copy];
    v10 = *(v4 + 17);
    *(v4 + 17) = v9;

    teamID = [(ACXRemoteApplication *)self teamID];
    v12 = [teamID copy];
    v13 = *(v4 + 21);
    *(v4 + 21) = v12;

    complicationPrincipalClass = [(ACXRemoteApplication *)self complicationPrincipalClass];
    v15 = [complicationPrincipalClass copy];
    v16 = *(v4 + 22);
    *(v4 + 22) = v15;

    supportedComplicationFamilies = [(ACXRemoteApplication *)self supportedComplicationFamilies];
    v18 = [supportedComplicationFamilies copy];
    v19 = *(v4 + 23);
    *(v4 + 23) = v18;

    watchKitAppExtensionBundleID = [(ACXRemoteApplication *)self watchKitAppExtensionBundleID];
    v21 = [watchKitAppExtensionBundleID copy];
    v22 = *(v4 + 20);
    *(v4 + 20) = v21;

    bundleVersion = [(ACXRemoteApplication *)self bundleVersion];
    v24 = [bundleVersion copy];
    v25 = *(v4 + 13);
    *(v4 + 13) = v24;

    bundleShortVersion = [(ACXRemoteApplication *)self bundleShortVersion];
    v27 = [bundleShortVersion copy];
    v28 = *(v4 + 14);
    *(v4 + 14) = v27;

    minimumOSVersion = [(ACXRemoteApplication *)self minimumOSVersion];
    v30 = [minimumOSVersion copy];
    v31 = *(v4 + 15);
    *(v4 + 15) = v30;

    intentsRestrictedWhileLocked = [(ACXRemoteApplication *)self intentsRestrictedWhileLocked];
    v33 = [intentsRestrictedWhileLocked copy];
    v34 = *(v4 + 24);
    *(v4 + 24) = v33;

    intentsSupported = [(ACXRemoteApplication *)self intentsSupported];
    v36 = [intentsSupported copy];
    v37 = *(v4 + 25);
    *(v4 + 25) = v36;

    requiredCapabilities = [(ACXRemoteApplication *)self requiredCapabilities];
    v39 = [requiredCapabilities copy];
    v40 = *(v4 + 16);
    *(v4 + 16) = v39;

    architectureSlices = [(ACXRemoteApplication *)self architectureSlices];
    v42 = [architectureSlices copy];
    v43 = *(v4 + 27);
    *(v4 + 27) = v42;

    watchKitAppExecutableHash = [(ACXRemoteApplication *)self watchKitAppExecutableHash];
    v45 = [watchKitAppExecutableHash copy];
    v46 = *(v4 + 19);
    *(v4 + 19) = v45;

    userActivityTypes = [(ACXRemoteApplication *)self userActivityTypes];
    v48 = [userActivityTypes copy];
    v49 = *(v4 + 26);
    *(v4 + 26) = v48;

    v4[91] = [(ACXRemoteApplication *)self isLocallyAvailable];
    storeMetadata = [(ACXRemoteApplication *)self storeMetadata];
    v51 = [storeMetadata copy];
    v52 = *(v4 + 28);
    *(v4 + 28) = v51;

    sdkVersion = [(ACXRemoteApplication *)self sdkVersion];
    v54 = [sdkVersion copy];
    v55 = *(v4 + 29);
    *(v4 + 29) = v54;

    backgroundModes = [(ACXRemoteApplication *)self backgroundModes];
    v57 = [backgroundModes copy];
    v58 = *(v4 + 30);
    *(v4 + 30) = v57;

    uiBackgroundModes = [(ACXRemoteApplication *)self uiBackgroundModes];
    v60 = [uiBackgroundModes copy];
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
  bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@<%p> bundleID=%@>", v5, self, bundleIdentifier];

  return v7;
}

- (BOOL)hasComplication
{
  complicationPrincipalClass = [(ACXRemoteApplication *)self complicationPrincipalClass];
  v3 = complicationPrincipalClass != 0;

  return v3;
}

- (id)counterpartIdentifiers
{
  v14[1] = *MEMORY[0x277D85DE8];
  companionAppBundleID = [(ACXRemoteApplication *)self companionAppBundleID];
  v13.receiver = self;
  v13.super_class = ACXRemoteApplication;
  counterpartIdentifiers = [(ACXSyncedApplication *)&v13 counterpartIdentifiers];
  v5 = counterpartIdentifiers;
  if (counterpartIdentifiers)
  {
    v6 = companionAppBundleID == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (counterpartIdentifiers)
    {
      v7 = 1;
    }

    else
    {
      v7 = companionAppBundleID == 0;
    }

    if (!v7)
    {
      v14[0] = companionAppBundleID;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v9 = [counterpartIdentifiers containsObject:companionAppBundleID];
  if (v9)
  {
LABEL_12:
    v8 = v5;
    goto LABEL_14;
  }

  v8 = [v5 arrayByAddingObject:companionAppBundleID];
LABEL_14:
  v10 = v8;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isCompatibleWithOSVersion:(id)version
{
  versionCopy = version;
  minimumOSVersion = [(ACXRemoteApplication *)self minimumOSVersion];

  if (minimumOSVersion)
  {
    minimumOSVersion2 = [(ACXRemoteApplication *)self minimumOSVersion];
    v7 = [versionCopy compare:minimumOSVersion2 options:64] != -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isCompatibleWithDevice:(id)device
{
  v42 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  architectureSlices = [(ACXRemoteApplication *)self architectureSlices];
  v6 = 1;
  if ([(ACXSyncedApplication *)self applicationType]== 2 && architectureSlices)
  {
    cpuType = [deviceCopy cpuType];
    cpuSubtype = [deviceCopy cpuSubtype];
    runnableArchNames = [deviceCopy runnableArchNames];
    v10 = objc_opt_new();
    v11 = v10;
    if (runnableArchNames)
    {
      v36 = deviceCopy;
      [v10 addObjectsFromArray:runnableArchNames];
    }

    else
    {
      v12 = macho_arch_name_for_cpu_type(cpuType, cpuSubtype);
      if (!v12)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          MOLogWrite();
        }

        v6 = 1;
        goto LABEL_24;
      }

      v36 = deviceCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [v11 addObject:v13];
    }

    v34 = v11;
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      [(ACXSyncedApplication *)self bundleIdentifier];
      v32 = cpuSubtype;
      v30 = v33 = runnableArchNames;
      v31 = cpuType;
      MOLogWrite();
    }

    v14 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = architectureSlices;
    v15 = architectureSlices;
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
          intValue = [v21 intValue];

          v23 = [v20 objectAtIndexedSubscript:1];
          unsignedIntValue = [v23 unsignedIntValue];

          v25 = macho_arch_name_for_cpu_type(intValue, unsignedIntValue);
          if (v25)
          {
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
            [v14 addObject:v26];
          }

          else if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v30 = intValue;
            v31 = unsignedIntValue;
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

    architectureSlices = v35;
    deviceCopy = v36;
LABEL_24:
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isTheSameAppAs:(id)as
{
  asCopy = as;
  if (!-[ACXRemoteApplication isProfileValidated](self, "isProfileValidated") && ([asCopy isProfileValidated] & 1) == 0)
  {
    externalVersionIdentifier = [(ACXSyncedApplication *)self externalVersionIdentifier];
    externalVersionIdentifier2 = [asCopy externalVersionIdentifier];
    watchKitAppExecutableHash2 = externalVersionIdentifier2;
    if (!externalVersionIdentifier || !externalVersionIdentifier2)
    {
      bundleVersion = [(ACXRemoteApplication *)self bundleVersion];
      bundleShortVersion = [(ACXRemoteApplication *)self bundleShortVersion];
      bundleVersion2 = [asCopy bundleVersion];
      bundleShortVersion2 = [asCopy bundleShortVersion];
      if (ACXObjectsAreTheSameOrSameNullness(bundleVersion, bundleVersion2) && ACXObjectsAreTheSameOrSameNullness(bundleShortVersion, bundleShortVersion2))
      {

        v9 = 1;
      }

      else
      {

        v9 = 0;
      }

      goto LABEL_10;
    }

    v8 = [externalVersionIdentifier isEqualToNumber:externalVersionIdentifier2];
LABEL_9:
    v9 = v8;
LABEL_10:

    goto LABEL_11;
  }

  watchKitAppExecutableHash = [(ACXRemoteApplication *)self watchKitAppExecutableHash];

  if (watchKitAppExecutableHash)
  {
    externalVersionIdentifier = [(ACXRemoteApplication *)self watchKitAppExecutableHash];
    watchKitAppExecutableHash2 = [asCopy watchKitAppExecutableHash];
    v8 = ACXObjectsAreTheSameOrSameNullness(externalVersionIdentifier, watchKitAppExecutableHash2);
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end
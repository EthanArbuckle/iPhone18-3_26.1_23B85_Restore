@interface ACXSyncedApplication
+ (id)buildLocalizedInfoPlistStringsDictForAppBundleURL:(id)l watchKitExtensionURL:(id)rL;
+ (id)localizedAppNameFromRecord:(id)record;
- (ACXSyncedApplication)init;
- (ACXSyncedApplication)initWithApplicationRecord:(id)record databaseUUID:(id)d sequenceNumber:(unint64_t)number;
- (ACXSyncedApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number;
- (ACXSyncedApplication)initWithCoder:(id)coder;
- (ACXSyncedApplication)initWithSerializedDictionary:(id)dictionary;
- (NSString)applicationName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForTesting;
- (id)localizedInfoPlistStringsForKeys:(id)keys fetchingFirstMatchingLocalizationInList:(id)list;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXSyncedApplication

+ (id)localizedAppNameFromRecord:(id)record
{
  recordCopy = record;
  localizedName = [recordCopy localizedName];
  if (localizedName || ([recordCopy localizedShortName], (localizedName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = localizedName;
  }

  else
  {
    v7 = [recordCopy URL];
    uRLByDeletingPathExtension = [v7 URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

    if (lastPathComponent)
    {
      v5 = lastPathComponent;
    }

    else
    {
      v5 = @"Unknown Name";
    }
  }

  return v5;
}

- (ACXSyncedApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = ACXSyncedApplication;
  v5 = [(ACXSyncedApplication *)&v34 init];
  if (!v5)
  {
LABEL_15:
    v27 = v5;
    goto LABEL_16;
  }

  if (![coderCopy containsValueForKey:@"bundleIdentifier"])
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"databaseUUID"];
  if (v8)
  {
    v9 = v8;
    objc_storeStrong(&v5->_databaseUUID, v8);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sequenceNumber"];
    v5->_sequenceNumber = [v10 unsignedIntegerValue];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"counterpartIdentifiers"];
    counterpartIdentifiers = v5->_counterpartIdentifiers;
    v5->_counterpartIdentifiers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationType"];
    v5->_applicationType = [v16 unsignedIntegerValue];

    v5->_isDeletable = [coderCopy decodeBoolForKey:@"isDeletable"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"localizedInfoPlistStrings"];
    localizedInfoPlistStrings = v5->_localizedInfoPlistStrings;
    v5->_localizedInfoPlistStrings = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalVersionIdentifier"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v24;

    v5->_supportsAlwaysOnDisplay = [coderCopy decodeBoolForKey:@"supportsAlwaysOnDisplay"];
    v5->_defaultsToPrivateAlwaysOnDisplayTreatment = [coderCopy decodeBoolForKey:@"defaultsToPrivateAlwaysOnDisplayTreatment"];
    if ([coderCopy containsValueForKey:@"isEligibleForWatchAppInstall"])
    {
      v26 = [coderCopy decodeBoolForKey:@"isEligibleForWatchAppInstall"];
    }

    else
    {
      v26 = 1;
    }

    v5->_isEligibleForWatchAppInstall = v26;
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"accessorySetupKitSupports"];
    accessorySetupKitSupports = v5->_accessorySetupKitSupports;
    v5->_accessorySetupKitSupports = v31;

    goto LABEL_15;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
LABEL_11:
    MOLogWrite();
  }

LABEL_12:
  v27 = 0;
LABEL_16:

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_databaseUUID forKey:@"databaseUUID"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sequenceNumber];
  [coderCopy encodeObject:v5 forKey:@"sequenceNumber"];

  [coderCopy encodeObject:self->_counterpartIdentifiers forKey:@"counterpartIdentifiers"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_applicationType];
  [coderCopy encodeObject:v6 forKey:@"applicationType"];

  [coderCopy encodeBool:self->_isDeletable forKey:@"isDeletable"];
  [coderCopy encodeObject:self->_applicationName forKey:@"applicationName"];
  [coderCopy encodeObject:self->_localizedInfoPlistStrings forKey:@"localizedInfoPlistStrings"];
  [coderCopy encodeObject:self->_externalVersionIdentifier forKey:@"externalVersionIdentifier"];
  [coderCopy encodeBool:self->_supportsAlwaysOnDisplay forKey:@"supportsAlwaysOnDisplay"];
  [coderCopy encodeBool:self->_defaultsToPrivateAlwaysOnDisplayTreatment forKey:@"defaultsToPrivateAlwaysOnDisplayTreatment"];
  [coderCopy encodeBool:self->_isEligibleForWatchAppInstall forKey:@"isEligibleForWatchAppInstall"];
  [coderCopy encodeObject:self->_accessorySetupKitSupports forKey:@"accessorySetupKitSupports"];
}

- (ACXSyncedApplication)init
{
  v3.receiver = self;
  v3.super_class = ACXSyncedApplication;
  return [(ACXSyncedApplication *)&v3 init];
}

- (ACXSyncedApplication)initWithApplicationRecord:(id)record databaseUUID:(id)d sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = ACXSyncedApplication;
  return [(ACXSyncedApplication *)&v6 init:record];
}

- (ACXSyncedApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number
{
  dCopy = d;
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = ACXSyncedApplication;
  v10 = [(ACXSyncedApplication *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ACXSyncedApplication *)v10 setBundleIdentifier:dCopy];
    [(ACXSyncedApplication *)v11 setDatabaseUUID:iDCopy];
    [(ACXSyncedApplication *)v11 setSequenceNumber:number];
  }

  return v11;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = ACXSyncedApplication;
  return [(ACXSyncedApplication *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
    v6 = [bundleIdentifier copy];
    v7 = *(v4 + 16);
    *(v4 + 16) = v6;

    databaseUUID = [(ACXSyncedApplication *)self databaseUUID];
    v9 = [databaseUUID copy];
    v10 = *(v4 + 32);
    *(v4 + 32) = v9;

    *(v4 + 40) = [(ACXSyncedApplication *)self sequenceNumber];
    counterpartIdentifiers = [(ACXSyncedApplication *)self counterpartIdentifiers];
    v12 = [counterpartIdentifiers copy];
    v13 = *(v4 + 48);
    *(v4 + 48) = v12;

    *(v4 + 56) = [(ACXSyncedApplication *)self applicationType];
    *(v4 + 8) = [(ACXSyncedApplication *)self isDeletable];
    applicationName = [(ACXSyncedApplication *)self applicationName];
    v15 = [applicationName copy];
    v16 = *(v4 + 24);
    *(v4 + 24) = v15;

    localizedInfoPlistStrings = [(ACXSyncedApplication *)self localizedInfoPlistStrings];
    v18 = [localizedInfoPlistStrings copy];
    v19 = *(v4 + 72);
    *(v4 + 72) = v18;

    externalVersionIdentifier = [(ACXSyncedApplication *)self externalVersionIdentifier];
    v21 = [externalVersionIdentifier copy];
    v22 = *(v4 + 80);
    *(v4 + 80) = v21;

    *(v4 + 9) = [(ACXSyncedApplication *)self supportsAlwaysOnDisplay];
    *(v4 + 10) = [(ACXSyncedApplication *)self defaultsToPrivateAlwaysOnDisplayTreatment];
    *(v4 + 11) = [(ACXSyncedApplication *)self isEligibleForWatchAppInstall];
    accessorySetupKitSupports = [(ACXSyncedApplication *)self accessorySetupKitSupports];
    v24 = [accessorySetupKitSupports copy];
    v25 = *(v4 + 64);
    *(v4 + 64) = v24;

    v26 = v4;
  }

  return v4;
}

- (ACXSyncedApplication)initWithSerializedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = ACXSyncedApplication;
  v5 = [(ACXSyncedApplication *)&v50 init];
  if (!v5)
  {
LABEL_74:
    v21 = v5;
    goto LABEL_75;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CBED38]];
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
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"DBUUID"];
    objc_opt_class();
    v11 = v10;
    v12 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
      if (!v13)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          MOLogWrite();
        }

        goto LABEL_24;
      }

      databaseUUID = v5->_databaseUUID;
      v5->_databaseUUID = v13;

      v15 = [dictionaryCopy objectForKeyedSubscript:@"sequenceNumber"];
      objc_opt_class();
      v16 = v15;
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v5->_sequenceNumber = [v17 unsignedIntegerValue];

        v18 = [dictionaryCopy objectForKeyedSubscript:@"counterpartIdentifiers"];
        objc_opt_class();
        v19 = v18;
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          objc_storeStrong(&v5->_counterpartIdentifiers, v20);
        }

        v22 = [dictionaryCopy objectForKeyedSubscript:@"applicationType"];
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
          v5->_applicationType = [v24 unsignedIntegerValue];
        }

        v25 = [dictionaryCopy objectForKeyedSubscript:@"isDeletable"];
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
          v5->_isDeletable = [v27 BOOLValue];
        }

        v28 = [dictionaryCopy objectForKeyedSubscript:@"n"];
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
          objc_storeStrong(&v5->_applicationName, v30);
        }

        v31 = [dictionaryCopy objectForKeyedSubscript:@"localizedInfoPlistStrings"];
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
          objc_storeStrong(&v5->_localizedInfoPlistStrings, v33);
        }

        v34 = [dictionaryCopy objectForKeyedSubscript:@"ExternalVersionIdentifier"];
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
          objc_storeStrong(&v5->_externalVersionIdentifier, v36);
        }

        v5->_supportsAlwaysOnDisplay = 1;
        v37 = [dictionaryCopy objectForKeyedSubscript:@"ACXSupportsAlwaysOnDisplayKey"];
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
          v5->_supportsAlwaysOnDisplay = [v39 BOOLValue];
        }

        v40 = [dictionaryCopy objectForKeyedSubscript:@"ACXAppDefaultsToPrivateAlwaysOnDisplayTreatmentKey"];
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
          v5->_defaultsToPrivateAlwaysOnDisplayTreatment = [v42 BOOLValue];
        }

        v5->_isEligibleForWatchAppInstall = 1;
        v43 = [dictionaryCopy objectForKeyedSubscript:@"ACXIsEligibleForWatchAppInstallKey"];
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
          v5->_isEligibleForWatchAppInstall = [v45 BOOLValue];
        }

        v46 = [dictionaryCopy objectForKeyedSubscript:@"ACXAccessorySetupKitSupportsKey"];
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
          objc_storeStrong(&v5->_accessorySetupKitSupports, v48);
        }

        goto LABEL_74;
      }
    }
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_24:
  v21 = 0;
LABEL_75:

  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [v3 setObject:self->_bundleIdentifier forKeyedSubscript:*MEMORY[0x277CBED38]];
  uUIDString = [(NSUUID *)self->_databaseUUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"DBUUID"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sequenceNumber];
  [v3 setObject:v5 forKeyedSubscript:@"sequenceNumber"];

  [v3 setObject:self->_counterpartIdentifiers forKeyedSubscript:@"counterpartIdentifiers"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_applicationType];
  [v3 setObject:v6 forKeyedSubscript:@"applicationType"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDeletable];
  [v3 setObject:v7 forKeyedSubscript:@"isDeletable"];

  [v3 setObject:self->_applicationName forKeyedSubscript:@"n"];
  [v3 setObject:self->_localizedInfoPlistStrings forKeyedSubscript:@"localizedInfoPlistStrings"];
  [v3 setObject:self->_externalVersionIdentifier forKeyedSubscript:@"ExternalVersionIdentifier"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXSyncedApplication supportsAlwaysOnDisplay](self, "supportsAlwaysOnDisplay")}];
  [v3 setObject:v8 forKeyedSubscript:@"ACXSupportsAlwaysOnDisplayKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXSyncedApplication defaultsToPrivateAlwaysOnDisplayTreatment](self, "defaultsToPrivateAlwaysOnDisplayTreatment")}];
  [v3 setObject:v9 forKeyedSubscript:@"ACXAppDefaultsToPrivateAlwaysOnDisplayTreatmentKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXSyncedApplication isEligibleForWatchAppInstall](self, "isEligibleForWatchAppInstall")}];
  [v3 setObject:v10 forKeyedSubscript:@"ACXIsEligibleForWatchAppInstallKey"];

  accessorySetupKitSupports = [(ACXSyncedApplication *)self accessorySetupKitSupports];
  [v3 setObject:accessorySetupKitSupports forKeyedSubscript:@"ACXAccessorySetupKitSupportsKey"];

  v12 = [v3 copy];

  return v12;
}

+ (id)buildLocalizedInfoPlistStringsDictForAppBundleURL:(id)l watchKitExtensionURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v7 = objc_opt_new();
  localizedInfoPlistKeysLoadAppOnly = [objc_opt_class() localizedInfoPlistKeysLoadAppOnly];
  localizedInfoPlistKeysLoadAnywhere = [objc_opt_class() localizedInfoPlistKeysLoadAnywhere];
  if (rLCopy)
  {
    _FetchLocalizedKeys(rLCopy, v7, localizedInfoPlistKeysLoadAnywhere);
  }

  v10 = objc_opt_new();
  [v10 unionSet:localizedInfoPlistKeysLoadAnywhere];
  if (rLCopy)
  {
    v11 = MEMORY[0x277CBEB98];
    allKeys = [v7 allKeys];
    v13 = [v11 setWithArray:allKeys];
    [v10 minusSet:v13];
  }

  [v10 unionSet:localizedInfoPlistKeysLoadAppOnly];
  _FetchLocalizedKeys(lCopy, v7, v10);

  v14 = [v7 copy];

  return v14;
}

- (id)localizedInfoPlistStringsForKeys:(id)keys fetchingFirstMatchingLocalizationInList:(id)list
{
  v46 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  prefArray = list;
  v32 = objc_opt_new();
  selfCopy = self;
  localizedInfoPlistStrings = [(ACXSyncedApplication *)self localizedInfoPlistStrings];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = keysCopy;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v34 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [localizedInfoPlistStrings objectForKeyedSubscript:{v10, v26, v27}];
        v12 = v11;
        if (v11)
        {
          allKeys = [v11 allKeys];
          v14 = CFBundleCopyLocalizationsForPreferences(allKeys, prefArray);
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            [(ACXSyncedApplication *)selfCopy bundleIdentifier];
            v28 = prefArray;
            v26 = v29 = v14;
            v27 = allKeys;
            MOLogWrite();
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = v14;
          v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [v12 objectForKeyedSubscript:{*(*(&v36 + 1) + 8 * j), v26, v27, v28, v29}];
                if (v20)
                {
                  v22 = v20;
                  [v32 setObject:v20 forKeyedSubscript:v10];

                  v21 = v15;
                  goto LABEL_21;
                }
              }

              v17 = [(__CFArray *)v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v21 = [v12 objectForKeyedSubscript:&stru_2851ED680];
          if (v21)
          {
            [v32 setObject:v21 forKeyedSubscript:v10];
          }

LABEL_21:

          goto LABEL_25;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          allKeys = [(ACXSyncedApplication *)selfCopy bundleIdentifier];
          v26 = v10;
          v27 = allKeys;
          MOLogWrite();
LABEL_25:
        }
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v8);
  }

  v23 = [v32 copy];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (NSString)applicationName
{
  v3 = *MEMORY[0x277CBEC40];
  v4 = *MEMORY[0x277CBED50];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED50], *MEMORY[0x277CBEC40], 0}];
  v6 = [(ACXSyncedApplication *)self localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:0];
  v7 = [v6 objectForKeyedSubscript:v3];
  v8 = [v6 objectForKeyedSubscript:v4];
  v9 = v8;
  applicationName = v7;
  if (!v7)
  {
    applicationName = v8;
    if (!v8)
    {
      applicationName = self->_applicationName;
    }
  }

  v11 = applicationName;
  v12 = v11;

  return v11;
}

@end
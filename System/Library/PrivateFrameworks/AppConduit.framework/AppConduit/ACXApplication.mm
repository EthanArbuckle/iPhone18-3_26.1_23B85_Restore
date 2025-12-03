@interface ACXApplication
+ (BOOL)_isIndeterminateMISError:(int)error;
+ (id)gizmoApplicationsFromCompanionAppRecord:(id)record databaseUUID:(id)d startingSequenceNumber:(unint64_t)number;
+ (int)_systemTrustsApplicationWithBundleURL:(id)l;
- (ACXApplication)init;
- (ACXApplication)initWithApplicationRecord:(id)record gizmoBundleIdentifier:(id)identifier databaseUUID:(id)d sequenceNumber:(unint64_t)number;
- (ACXApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number;
- (ACXApplication)initWithCoder:(id)coder;
- (ACXApplication)initWithSerializedDictionary:(id)dictionary reevaluatingTrust:(BOOL)trust;
- (id)_URLOfFirstItemWithExtension:(id)extension inDirectory:(id)directory;
- (id)_URLsOfExtensionsInBundleURL:(id)l mayNotExist:(BOOL)exist;
- (id)_infoPlistForPluginBundle:(id)bundle;
- (id)_mostCurrentWKAppURLInCompanionAppRecord:(id)record isPlaceholder:(BOOL *)placeholder;
- (id)_parseArchitectureSlicesForWatchKitAppExecutableURL:(id)l;
- (id)_storeMetadataWithError:(id *)error;
- (id)_watchKitApplicationNameFromWKAppInfoPlist:(id)plist containerRecord:(id)record;
- (id)appWithReevaluatedTrust;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForTesting;
- (id)serialize;
- (id)serializeAsRemoteApplication;
- (void)_evaluateTrustInfoForReevaluation:(BOOL)reevaluation;
- (void)_populateStoreMetadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXApplication

- (ACXApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = ACXApplication;
  v5 = [(ACXRemoteApplication *)&v27 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (![coderCopy containsValueForKey:@"watchAppURL"])
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchAppURL"];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  watchAppURL = v5->_watchAppURL;
  v5->_watchAppURL = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsSequenceNumber"];
  v5->_lsSequenceNumber = [v9 unsignedIntegerValue];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"clockFaceExtensionPaths"];
  clockFaceExtensionPaths = v5->_clockFaceExtensionPaths;
  v5->_clockFaceExtensionPaths = v13;

  v5->_isTrusted = [coderCopy decodeBoolForKey:@"isTrusted"];
  if (([coderCopy containsValueForKey:@"companionAppURL"] & 1) == 0)
  {
LABEL_8:
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_10;
    }

LABEL_9:
    MOLogWrite();
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppURL"];
  v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
  companionAppURL = v5->_companionAppURL;
  v5->_companionAppURL = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppIdentifier"];
  sourceAppIdentifier = v5->_sourceAppIdentifier;
  v5->_sourceAppIdentifier = v18;

  if (([coderCopy containsValueForKey:@"companionAppName"] & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppName"];
  companionAppName = v5->_companionAppName;
  v5->_companionAppName = v20;

  v5->_isPurchasedReDownload = [coderCopy decodeBoolForKey:@"isPurchasedReDownload"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoInstallOverride"];
  v5->_autoInstallOverride = [v22 unsignedIntegerValue];

  v5->_isEmbeddedPlaceholder = [coderCopy decodeBoolForKey:@"isEmbeddedPlaceholder"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceStatus"];
  deviceStatus = v5->_deviceStatus;
  v5->_deviceStatus = v23;

LABEL_6:
  v25 = v5;
LABEL_11:

  return v25;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = ACXApplication;
  return [(ACXRemoteApplication *)&v3 initForTesting];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = ACXApplication;
  coderCopy = coder;
  [(ACXRemoteApplication *)&v9 encodeWithCoder:coderCopy];
  v5 = [(NSURL *)self->_watchAppURL absoluteString:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"watchAppURL"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lsSequenceNumber];
  [coderCopy encodeObject:v6 forKey:@"lsSequenceNumber"];

  [coderCopy encodeObject:self->_clockFaceExtensionPaths forKey:@"clockFaceExtensionPaths"];
  [coderCopy encodeBool:self->_isTrusted forKey:@"isTrusted"];
  absoluteString = [(NSURL *)self->_companionAppURL absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"companionAppURL"];

  [coderCopy encodeObject:self->_sourceAppIdentifier forKey:@"sourceAppIdentifier"];
  [coderCopy encodeObject:self->_companionAppName forKey:@"companionAppName"];
  [coderCopy encodeBool:self->_isPurchasedReDownload forKey:@"isPurchasedReDownload"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autoInstallOverride];
  [coderCopy encodeObject:v8 forKey:@"autoInstallOverride"];

  [coderCopy encodeBool:self->_isEmbeddedPlaceholder forKey:@"isEmbeddedPlaceholder"];
  [coderCopy encodeObject:self->_deviceStatus forKey:@"deviceStatus"];
}

- (ACXApplication)init
{
  v3.receiver = self;
  v3.super_class = ACXApplication;
  return [(ACXRemoteApplication *)&v3 init];
}

- (ACXApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = ACXApplication;
  return [(ACXRemoteApplication *)&v6 initWithBundleID:d databaseUUID:iD sequenceNumber:number];
}

- (ACXApplication)initWithSerializedDictionary:(id)dictionary reevaluatingTrust:(BOOL)trust
{
  trustCopy = trust;
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = ACXApplication;
  v7 = [(ACXRemoteApplication *)&v42 initWithSerializedDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"LSSequenceNumber"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_60;
    }

    v7->_lsSequenceNumber = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"watchAppURLString"];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else if (![(ACXRemoteApplication *)v7 isSystemApp])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_37;
      }

LABEL_36:
      MOLogWrite();
LABEL_37:

LABEL_63:
      v40 = 0;
      goto LABEL_64;
    }

    if (![(ACXRemoteApplication *)v7 isSystemApp])
    {
      goto LABEL_31;
    }

    v14 = 0;
LABEL_15:
    watchAppURL = v7->_watchAppURL;
    v7->_watchAppURL = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"ACXClockfaceExtensionPaths"];
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
      objc_storeStrong(&v7->_clockFaceExtensionPaths, v18);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isTrusted"];
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

    if (!v21)
    {
      goto LABEL_60;
    }

    v7->_isTrusted = [v21 BOOLValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"companionAppURLString"];
    objc_opt_class();
    v23 = v22;
    if (objc_opt_isKindOfClass())
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_63;
      }

LABEL_62:
      MOLogWrite();
      goto LABEL_63;
    }

    v24 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    if (v24)
    {
      companionAppURL = v7->_companionAppURL;
      v7->_companionAppURL = v24;

      v26 = [dictionaryCopy objectForKeyedSubscript:@"sourceAppIdentifier"];
      objc_opt_class();
      v27 = v26;
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        objc_storeStrong(&v7->_sourceAppIdentifier, v28);
      }

      v29 = [dictionaryCopy objectForKeyedSubscript:@"companionAppName"];
      objc_opt_class();
      v30 = v29;
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        companionAppName = v7->_companionAppName;
        v7->_companionAppName = v31;

        v33 = [dictionaryCopy objectForKeyedSubscript:@"isPurchaseReDownload"];
        objc_opt_class();
        v34 = v33;
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        if (v35)
        {
          v7->_isPurchasedReDownload = [v35 BOOLValue];
        }

        else if (![(ACXRemoteApplication *)v7 isSystemApp])
        {
          goto LABEL_60;
        }

        v36 = [dictionaryCopy objectForKeyedSubscript:@"autoInstallOverride"];
        objc_opt_class();
        v37 = _ACXValidateObject(v36);

        if (v37)
        {
          v7->_autoInstallOverride = [v37 unsignedIntegerValue];
        }

        v38 = [dictionaryCopy objectForKeyedSubscript:@"isPlaceholder"];
        objc_opt_class();
        v39 = _ACXValidateObject(v38);

        if (v39)
        {
          v7->_isEmbeddedPlaceholder = [v39 BOOLValue];

          if (trustCopy)
          {
            [(ACXApplication *)v7 _evaluateTrustInfoForReevaluation:1];
          }

          goto LABEL_59;
        }
      }

LABEL_60:
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

LABEL_31:
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_59:
  v40 = v7;
LABEL_64:

  return v40;
}

- (id)serialize
{
  v19.receiver = self;
  v19.super_class = ACXApplication;
  serialize = [(ACXRemoteApplication *)&v19 serialize];
  v4 = [serialize mutableCopy];

  watchAppURL = [(ACXApplication *)self watchAppURL];
  absoluteString = [watchAppURL absoluteString];
  [v4 setObject:absoluteString forKeyedSubscript:@"watchAppURLString"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ACXApplication lsSequenceNumber](self, "lsSequenceNumber")}];
  [v4 setObject:v7 forKeyedSubscript:@"LSSequenceNumber"];

  clockFaceExtensionPaths = [(ACXApplication *)self clockFaceExtensionPaths];
  [v4 setObject:clockFaceExtensionPaths forKeyedSubscript:@"ACXClockfaceExtensionPaths"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXApplication isTrusted](self, "isTrusted")}];
  [v4 setObject:v9 forKeyedSubscript:@"isTrusted"];

  companionAppURL = [(ACXApplication *)self companionAppURL];
  absoluteString2 = [companionAppURL absoluteString];
  [v4 setObject:absoluteString2 forKeyedSubscript:@"companionAppURLString"];

  sourceAppIdentifier = [(ACXApplication *)self sourceAppIdentifier];
  [v4 setObject:sourceAppIdentifier forKeyedSubscript:@"sourceAppIdentifier"];

  companionAppName = [(ACXApplication *)self companionAppName];
  [v4 setObject:companionAppName forKeyedSubscript:@"companionAppName"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXApplication isPurchasedReDownload](self, "isPurchasedReDownload")}];
  [v4 setObject:v14 forKeyedSubscript:@"isPurchaseReDownload"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ACXApplication autoInstallOverride](self, "autoInstallOverride")}];
  [v4 setObject:v15 forKeyedSubscript:@"autoInstallOverride"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACXApplication isEmbeddedPlaceholder](self, "isEmbeddedPlaceholder")}];
  [v4 setObject:v16 forKeyedSubscript:@"isPlaceholder"];

  v17 = [v4 copy];

  return v17;
}

- (id)serializeAsRemoteApplication
{
  v4.receiver = self;
  v4.super_class = ACXApplication;
  serialize = [(ACXRemoteApplication *)&v4 serialize];

  return serialize;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25.receiver = self;
  v25.super_class = ACXApplication;
  v4 = [(ACXRemoteApplication *)&v25 copyWithZone:zone];
  if (v4)
  {
    watchAppURL = [(ACXApplication *)self watchAppURL];
    v6 = [watchAppURL copy];
    v7 = v4[33];
    v4[33] = v6;

    v4[34] = [(ACXApplication *)self lsSequenceNumber];
    clockFaceExtensionPaths = [(ACXApplication *)self clockFaceExtensionPaths];
    v9 = [clockFaceExtensionPaths copy];
    v10 = v4[35];
    v4[35] = v9;

    *(v4 + 256) = [(ACXApplication *)self isTrusted];
    companionAppURL = [(ACXApplication *)self companionAppURL];
    v12 = [companionAppURL copy];
    v13 = v4[36];
    v4[36] = v12;

    sourceAppIdentifier = [(ACXApplication *)self sourceAppIdentifier];
    v15 = [sourceAppIdentifier copy];
    v16 = v4[38];
    v4[38] = v15;

    companionAppName = [(ACXApplication *)self companionAppName];
    v18 = [companionAppName copy];
    v19 = v4[37];
    v4[37] = v18;

    *(v4 + 257) = [(ACXApplication *)self isPurchasedReDownload];
    v4[40] = [(ACXApplication *)self autoInstallOverride];
    *(v4 + 258) = [(ACXApplication *)self isEmbeddedPlaceholder];
    deviceStatus = [(ACXApplication *)self deviceStatus];
    v21 = [deviceStatus copy];
    v22 = v4[39];
    v4[39] = v21;

    v23 = v4;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
  watchAppURL = [(ACXApplication *)self watchAppURL];
  path = [watchAppURL path];
  v9 = [v3 stringWithFormat:@"<%@<%p> bundleID=%@ path=%@>", v5, self, bundleIdentifier, path];

  return v9;
}

- (id)_parseArchitectureSlicesForWatchKitAppExecutableURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = objc_opt_new();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __70__ACXApplication__parseArchitectureSlicesForWatchKitAppExecutableURL___block_invoke;
    v13 = &unk_278C8D078;
    v6 = v4;
    v14 = v6;
    if ((parse_macho_iterate_slices(fileSystemRepresentation, &v10) & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v9 = lCopy;
      MOLogWrite();
    }

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __70__ACXApplication__parseArchitectureSlicesForWatchKitAppExecutableURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 4);
  v4 = *(a3 + 8);
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v12 = *(a3 + 4);
    v13 = *(a3 + 8);
    MOLogWrite();
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{v5, v12, v13}];
  v14[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v6 addObject:v9];

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_populateStoreMetadata
{
  if ([(ACXSyncedApplication *)self isDeletable]|| [(ACXSyncedApplication *)self applicationType]== 2)
  {
    v11 = 0;
    v3 = [(ACXApplication *)self _storeMetadataWithError:&v11];
    v4 = v11;
    v5 = v4;
    if (v3)
    {
      [(ACXRemoteApplication *)self setStoreMetadata:v3];
LABEL_13:

      return;
    }

    userInfo = [v4 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v7 code];

      if (code == 260)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
      MOLogWrite();
    }

    goto LABEL_12;
  }
}

+ (id)gizmoApplicationsFromCompanionAppRecord:(id)record databaseUUID:(id)d startingSequenceNumber:(unint64_t)number
{
  v28 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  if (recordCopy)
  {
    v9 = objc_opt_new();
    counterpartIdentifiers = [recordCopy counterpartIdentifiers];
    v11 = counterpartIdentifiers;
    if (counterpartIdentifiers && [counterpartIdentifiers count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v11;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [objc_alloc(objc_opt_class()) initWithApplicationRecord:recordCopy gizmoBundleIdentifier:*(*(&v23 + 1) + 8 * i) databaseUUID:dCopy sequenceNumber:number];
            if (!v17)
            {

              v19 = 0;
              v11 = v22;
              goto LABEL_21;
            }

            v18 = v17;
            ++number;
            [v9 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v11 = v22;
    }

    else
    {
      v19 = [objc_alloc(objc_opt_class()) initWithApplicationRecord:recordCopy gizmoBundleIdentifier:0 databaseUUID:dCopy sequenceNumber:number];
      if (!v19)
      {
LABEL_21:

        goto LABEL_22;
      }

      [v9 addObject:v19];
    }

    v19 = [v9 copy];
    goto LABEL_21;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v19 = 0;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (ACXApplication)initWithApplicationRecord:(id)record gizmoBundleIdentifier:(id)identifier databaseUUID:(id)d sequenceNumber:(unint64_t)number
{
  v215 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  identifierCopy = identifier;
  v208.receiver = self;
  v208.super_class = ACXApplication;
  v176 = recordCopy;
  dCopy = d;
  v10 = [ACXRemoteApplication initWithApplicationRecord:sel_initWithApplicationRecord_databaseUUID_sequenceNumber_ databaseUUID:recordCopy sequenceNumber:?];
  if (!v10)
  {
    goto LABEL_43;
  }

  if (recordCopy)
  {
    if ([recordCopy isPlaceholder])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_30;
      }

      goto LABEL_6;
    }

    bundleIdentifier = [recordCopy bundleIdentifier];
    applicationState = [recordCopy applicationState];
    isInstalled = [applicationState isInstalled];

    if ((isInstalled & 1) == 0)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      goto LABEL_30;
    }

    compatibilityObject = [recordCopy compatibilityObject];
    if ([compatibilityObject compatibilityState])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ([recordCopy ACX_shouldBeTrackedByAppConduit])
    {
      if (bundleIdentifier)
      {
        typeForInstallMachinery = [recordCopy typeForInstallMachinery];
        if ([typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E40]])
        {
          v13 = 2;
        }

        else
        {
          if (([typeForInstallMachinery isEqualToString:*MEMORY[0x277CC1E30]] & 1) == 0)
          {
            if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_112;
            }

            goto LABEL_50;
          }

          v13 = 1;
        }

        [(ACXSyncedApplication *)v10 setApplicationType:v13];
        -[ACXRemoteApplication setIsProfileValidated:](v10, "setIsProfileValidated:", [recordCopy isProfileValidated]);
        [(ACXRemoteApplication *)v10 setCompanionAppBundleID:bundleIdentifier];
        -[ACXRemoteApplication setIsBetaApp:](v10, "setIsBetaApp:", [recordCopy isBeta]);
        -[ACXSyncedApplication setIsDeletable:](v10, "setIsDeletable:", [recordCopy isDeletable]);
        iTunesMetadata = [recordCopy iTunesMetadata];
        sourceApp = [iTunesMetadata sourceApp];
        sourceAppIdentifier = v10->_sourceAppIdentifier;
        v10->_sourceAppIdentifier = sourceApp;

        v18 = [recordCopy URL];
        companionAppURL = v10->_companionAppURL;
        v10->_companionAppURL = v18;

        if (v10->_companionAppURL)
        {
          v20 = [objc_opt_class() localizedAppNameFromRecord:recordCopy];
          companionAppName = v10->_companionAppName;
          v10->_companionAppName = v20;

          if (v10->_companionAppName)
          {
            v10->_lsSequenceNumber = [recordCopy sequenceNumber];
            if ([(ACXRemoteApplication *)v10 isSystemApp])
            {
              if (identifierCopy && [identifierCopy length])
              {
                [(ACXSyncedApplication *)v10 setBundleIdentifier:identifierCopy];
                counterpartIdentifiers = [recordCopy counterpartIdentifiers];
                if ([counterpartIdentifiers containsObject:identifierCopy])
                {
                  [(ACXApplication *)v10 setIsTrusted:1];
                  v23 = [objc_opt_class() localizedAppNameFromRecord:recordCopy];
                  [(ACXSyncedApplication *)v10 setApplicationName:v23];

                  aCX_watchKitAppExtensionBundleID = [recordCopy ACX_watchKitAppExtensionBundleID];
                  if (aCX_watchKitAppExtensionBundleID)
                  {
                    [(ACXRemoteApplication *)v10 setWatchKitAppExtensionBundleID:aCX_watchKitAppExtensionBundleID];
                    [(ACXRemoteApplication *)v10 setWatchKitVersion:@"2.0"];
                    [(ACXRemoteApplication *)v10 setTeamID:&stru_2851ED680];
                  }

                  [(ACXRemoteApplication *)v10 setApplicationMode:0];

LABEL_42:
LABEL_43:
                  v14 = v10;
                  goto LABEL_44;
                }

                v56 = [counterpartIdentifiers componentsJoinedByString:{@", "}];
                if (!gLogHandle || *(gLogHandle + 44) >= 3)
                {
                  v137 = v10->_companionAppName;
                  MOLogWrite();
                }
              }

              else if (!gLogHandle || *(gLogHandle + 44) >= 3)
              {
                v135 = v10->_companionAppName;
                MOLogWrite();
              }

LABEL_112:

              goto LABEL_30;
            }

            v207 = 0;
            v159 = [(ACXApplication *)v10 _mostCurrentWKAppURLInCompanionAppRecord:recordCopy isPlaceholder:&v207];
            if (!v159)
            {
              if (gLogHandle && *(gLogHandle + 44) >= 7)
              {
                MOLogWrite();
              }

              goto LABEL_112;
            }

            v10->_isEmbeddedPlaceholder = v207;
            v27 = [(ACXApplication *)v10 _URLsOfExtensionsInBundleURL:v159 mayNotExist:0];
            v28 = objc_opt_new();
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            obj = v27;
            v170 = [obj countByEnumeratingWithState:&v203 objects:v214 count:16];
            if (v170)
            {
              v29 = 0;
              v166 = *v204;
              do
              {
                for (i = 0; i != v170; i = i + 1)
                {
                  if (*v204 != v166)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v31 = *(*(&v203 + 1) + 8 * i);
                  v32 = [(ACXApplication *)v10 _infoPlistForPluginBundle:v31];
                  if (v32)
                  {
                    [v28 setObject:v32 forKeyedSubscript:v31];
                    v33 = [v32 objectForKeyedSubscript:@"NSExtension"];
                    v172 = [v33 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];

                    if ([v172 isEqualToString:@"com.apple.watchkit"])
                    {
                      v34 = [(ACXApplication *)v10 _URLsOfExtensionsInBundleURL:v31 mayNotExist:1];
                      v164 = v34;
                      v35 = v34;
                      if (v34)
                      {
                        v36 = [v34 count];
                        v35 = v164;
                        if (v36)
                        {
                          v201 = 0u;
                          v202 = 0u;
                          v199 = 0u;
                          v200 = 0u;
                          v37 = v164;
                          v38 = [v37 countByEnumeratingWithState:&v199 objects:v213 count:16];
                          if (v38)
                          {
                            v39 = *v200;
                            do
                            {
                              for (j = 0; j != v38; ++j)
                              {
                                if (*v200 != v39)
                                {
                                  objc_enumerationMutation(v37);
                                }

                                v41 = *(*(&v199 + 1) + 8 * j);
                                v42 = [(ACXApplication *)v10 _infoPlistForPluginBundle:v41];
                                if (v42)
                                {
                                  [v28 setObject:v42 forKeyedSubscript:v41];
                                }
                              }

                              v38 = [v37 countByEnumeratingWithState:&v199 objects:v213 count:16];
                            }

                            while (v38);
                          }

                          v35 = v164;
                        }
                      }

                      v29 = 1;
                    }
                  }
                }

                v170 = [obj countByEnumeratingWithState:&v203 objects:v214 count:16];
              }

              while (v170);
            }

            else
            {
              v29 = 0;
            }

            v43 = *MEMORY[0x277CBED58];
            v44 = *MEMORY[0x277CBEC50];
            v45 = *MEMORY[0x277CBEC40];
            v152 = *MEMORY[0x277D1C1E8];
            v154 = *MEMORY[0x277CBED38];
            v167 = *MEMORY[0x277CBED30];
            v153 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED58], *MEMORY[0x277CBEC50], *MEMORY[0x277CBEC40], *MEMORY[0x277CBED50], *MEMORY[0x277CBED30], @"MinimumOSVersion", @"UIRequiredDeviceCapabilities", @"NSUserActivityTypes", @"WKRunsIndependentlyOfCompanionApp", @"WKApplication", *MEMORY[0x277D1C1E8], 0}];
            v46 = ACXLoadInfoPlist(v159, v153);
            v156 = v46;
            if (v46)
            {
              if ([v46 count])
              {
                v47 = [v156 objectForKeyedSubscript:v154];
                objc_opt_class();
                v150 = _ACXValidateObject(v47);

                if (v150)
                {
                  v48 = [v156 objectForKeyedSubscript:@"WKApplication"];
                  v49 = ACXBooleanValue(v48, 0);

                  if ((v49 | v29))
                  {
                    [(ACXSyncedApplication *)v10 setBundleIdentifier:v150];
                    v50 = [v156 objectForKeyedSubscript:v43];
                    objc_opt_class();
                    v51 = _ACXValidateObject(v50);
                    [(ACXRemoteApplication *)v10 setBundleVersion:v51];

                    v52 = [v156 objectForKeyedSubscript:v44];
                    objc_opt_class();
                    v53 = _ACXValidateObject(v52);
                    [(ACXRemoteApplication *)v10 setBundleShortVersion:v53];

                    v54 = [(ACXApplication *)v10 _watchKitApplicationNameFromWKAppInfoPlist:v156 containerRecord:v176];
                    [(ACXSyncedApplication *)v10 setApplicationName:v54];

                    [(ACXApplication *)v10 _evaluateTrustInfoForReevaluation:0];
                    v198 = 0;
                    v148 = MobileInstallationCopyAppMetadata();
                    v144 = 0;
                    if (v148)
                    {
                      if (!v207)
                      {
                        watchKitAppExecutableHash = [v148 watchKitAppExecutableHash];
                        [(ACXRemoteApplication *)v10 setWatchKitAppExecutableHash:watchKitAppExecutableHash];
                      }

                      v10->_autoInstallOverride = [v148 autoInstallOverride];
                    }

                    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
                    {
                      v136 = bundleIdentifier;
                      v142 = v144;
                      MOLogWrite();
                    }

                    v59 = [v156 objectForKeyedSubscript:{@"MinimumOSVersion", v136, v142}];
                    objc_opt_class();
                    v60 = _ACXValidateObject(v59);
                    [(ACXRemoteApplication *)v10 setMinimumOSVersion:v60];

                    iTunesMetadata2 = [v176 iTunesMetadata];
                    v10->_isPurchasedReDownload = [iTunesMetadata2 isPurchasedRedownload];

                    v146 = [v156 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
                    if (!v146)
                    {
LABEL_133:
                      [(ACXRemoteApplication *)v10 setWatchKitVersion:@"2.0"];
                      teamIdentifier = [v176 teamIdentifier];
                      [(ACXRemoteApplication *)v10 setTeamID:teamIdentifier];

                      teamID = [(ACXRemoteApplication *)v10 teamID];
                      if (!teamID || (-[ACXRemoteApplication teamID](v10, "teamID"), v72 = objc_claimAutoreleasedReturnValue(), v73 = [v72 isEqualToString:@"0000000000"], v72, teamID, v73))
                      {
                        [(ACXRemoteApplication *)v10 setTeamID:&stru_2851ED680];
                      }

                      objc_storeStrong(&v10->_watchAppURL, v159);
                      if (v207)
                      {
                        v74 = [v156 objectForKeyedSubscript:v152];
                        objc_opt_class();
                        path = _ACXValidateObject(v74);
                        v76 = _ValidateSupportedArchitecturesListForPlaceholder(path, v159);
                        [(ACXRemoteApplication *)v10 setArchitectureSlices:v76];
                      }

                      else
                      {
                        v77 = [v156 objectForKeyedSubscript:v167];
                        objc_opt_class();
                        v74 = _ACXValidateObject(v77);

                        if (v74)
                        {
                          path = [v159 URLByAppendingPathComponent:v74 isDirectory:0];
                          v78 = [(ACXApplication *)v10 _parseArchitectureSlicesForWatchKitAppExecutableURL:path];
                          [(ACXRemoteApplication *)v10 setArchitectureSlices:v78];
                        }

                        else
                        {
                          if (gLogHandle && *(gLogHandle + 44) < 3)
                          {
                            goto LABEL_144;
                          }

                          path = [v159 path];
                          path2 = path;
                          MOLogWrite();
                        }
                      }

LABEL_144:
                      v79 = [v156 objectForKeyedSubscript:@"NSUserActivityTypes"];
                      objc_opt_class();
                      v147 = _ACXValidateObject(v79);

                      if (v147)
                      {
                        objc_opt_class();
                        if (ACXArrayContainsOnlyClass(v147))
                        {
                          [(ACXRemoteApplication *)v10 setUserActivityTypes:v147];
                        }

                        else if (!gLogHandle || *(gLogHandle + 44) >= 3)
                        {
                          path2 = [v159 path];
                          MOLogWrite();
                        }
                      }

                      v80 = [v156 objectForKeyedSubscript:{@"WKRunsIndependentlyOfCompanionApp", path2}];
                      objc_opt_class();
                      v145 = _ACXValidateObject(v80);

                      if (v145 && ([v145 BOOLValue] & 1) != 0)
                      {
                        v81 = 2;
                      }

                      else
                      {
                        v81 = 1;
                      }

                      [(ACXRemoteApplication *)v10 setApplicationMode:v81];
                      v149 = objc_opt_new();
                      v187 = 0u;
                      v188 = 0u;
                      v185 = 0u;
                      v186 = 0u;
                      v168 = v28;
                      v165 = [v168 countByEnumeratingWithState:&v185 objects:v211 count:16];
                      if (!v165)
                      {
                        v155 = 0;
LABEL_254:

                        v129 = [v149 copy];
                        clockFaceExtensionPaths = v10->_clockFaceExtensionPaths;
                        v10->_clockFaceExtensionPaths = v129;

                        clockFaceExtensionPaths = [(ACXApplication *)v10 clockFaceExtensionPaths];
                        v132 = [clockFaceExtensionPaths count] == 0;

                        if (!v132)
                        {
                          [(ACXRemoteApplication *)v10 setHasClockfaces:1];
                        }

                        v133 = [objc_opt_class() buildLocalizedInfoPlistStringsDictForAppBundleURL:v10->_watchAppURL watchKitExtensionURL:v155];
                        [(ACXSyncedApplication *)v10 setLocalizedInfoPlistStrings:v133];

                        aCX_externalVersionIdentifier = [v176 ACX_externalVersionIdentifier];
                        [(ACXSyncedApplication *)v10 setExternalVersionIdentifier:aCX_externalVersionIdentifier];

                        [(ACXApplication *)v10 _populateStoreMetadata];
                        v128 = 1;
                        v157 = v155;
LABEL_257:

                        if (v128)
                        {
                          goto LABEL_42;
                        }

                        goto LABEL_112;
                      }

                      v155 = 0;
                      v160 = *v186;
LABEL_156:
                      v82 = 0;
                      while (1)
                      {
                        if (*v186 != v160)
                        {
                          objc_enumerationMutation(v168);
                        }

                        v83 = *(*(&v185 + 1) + 8 * v82);
                        v173 = [v168 objectForKeyedSubscript:{v83, path6}];
                        v84 = [v173 objectForKeyedSubscript:@"NSExtension"];
                        objc_opt_class();
                        path3 = _ACXValidateObject(v84);

                        if (path3)
                        {
                          break;
                        }

                        if (gLogHandle && *(gLogHandle + 44) < 3)
                        {
                          goto LABEL_200;
                        }

                        path3 = [v83 path];
                        path6 = path3;
                        MOLogWrite();
LABEL_199:

LABEL_200:
                        if (++v82 == v165)
                        {
                          v127 = [v168 countByEnumeratingWithState:&v185 objects:v211 count:16];
                          v165 = v127;
                          if (v127)
                          {
                            goto LABEL_156;
                          }

                          goto LABEL_254;
                        }
                      }

                      v86 = [path3 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
                      objc_opt_class();
                      v171 = _ACXValidateObject(v86);

                      v87 = v171;
                      if (v171)
                      {
                        if ([v171 isEqualToString:@"com.apple.watchkit"])
                        {
                          v157 = v83;

                          path7 = [v173 objectForKeyedSubscript:@"CLKComplicationPrincipalClass"];
                          if (path7)
                          {
                            objc_opt_class();
                            v89 = _ACXValidateObject(path7);
                            v90 = v89 == 0;

                            if (v90)
                            {
                              if (!gLogHandle || *(gLogHandle + 44) >= 3)
                              {
                                path6 = bundleIdentifier;
                                v143 = path7;
                                MOLogWrite();
                              }

                              path7 = 0;
                            }
                          }

                          v91 = [v173 objectForKeyedSubscript:{@"CLKComplicationSupportedFamilies", path6, v143}];
                          if (v91)
                          {
                            objc_opt_class();
                            v92 = _ACXValidateObject(v91);
                            if (!v92 || (objc_opt_class(), v93 = ACXArrayContainsOnlyClass(v91), v92, (v93 & 1) == 0))
                            {
                              if (!gLogHandle || *(gLogHandle + 44) >= 3)
                              {
                                v140 = bundleIdentifier;
                                v143 = v91;
                                MOLogWrite();
                              }

                              v91 = 0;
                            }
                          }

                          if (path7)
                          {
                            [(ACXRemoteApplication *)v10 setComplicationPrincipalClass:path7];
                          }

                          if (v91)
                          {
                            [(ACXRemoteApplication *)v10 setSupportedComplicationFamilies:v91];
                          }

                          v94 = [v173 objectForKeyedSubscript:{v154, v140}];
                          objc_opt_class();
                          v95 = _ACXValidateObject(v94);

                          if (!v95)
                          {
                            if (!gLogHandle || *(gLogHandle + 44) >= 3)
                            {
                              path4 = [v157 path];
                              MOLogWrite();
                            }

                            v128 = 0;
                            goto LABEL_257;
                          }

                          [(ACXRemoteApplication *)v10 setWatchKitAppExtensionBundleID:v95];
                          v96 = [v173 objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
                          objc_opt_class();
                          v97 = _ACXValidateObject(v96);

                          if (v97 && ([v97 BOOLValue] & 1) != 0)
                          {
                            v98 = 2;
                          }

                          else
                          {
                            v98 = 1;
                          }

                          [(ACXRemoteApplication *)v10 setApplicationMode:v98];
                          if (v207)
                          {
                            v100 = [v173 objectForKeyedSubscript:v152];
                            objc_opt_class();
                            v101 = _ACXValidateObject(v100);
                            v102 = _ValidateSupportedArchitecturesListForPlaceholder(v101, v157);
                            [(ACXRemoteApplication *)v10 setArchitectureSlices:v102];
                          }

                          v155 = v157;
                          goto LABEL_196;
                        }

                        if ([v171 isEqualToString:@"com.apple.clockface"])
                        {
                          path5 = [v83 path];
                          path7 = path5;
                          if (path5)
                          {
                            [v149 addObject:path5];
                            path7 = path5;
                          }

                          goto LABEL_196;
                        }

                        if (![v171 isEqualToString:@"com.apple.intents-service"])
                        {
                          goto LABEL_197;
                        }

                        v103 = [path3 objectForKeyedSubscript:@"NSExtensionAttributes"];
                        objc_opt_class();
                        v158 = _ACXValidateObject(v103);

                        if (v158)
                        {
                          v104 = [v158 objectForKeyedSubscript:@"IntentsSupported"];
                          objc_opt_class();
                          v151 = _ACXValidateObject(v104);

                          if (v151)
                          {
                            objc_opt_class();
                            if ((ACXArrayContainsOnlyClass(v151) & 1) == 0)
                            {
                              if (!gLogHandle || *(gLogHandle + 44) >= 3)
                              {
                                path6 = [v83 path];
                                MOLogWrite();
                              }

LABEL_246:
                              path7 = v158;
                              goto LABEL_196;
                            }

                            if ([v151 count])
                            {
                              intentsSupported = [(ACXRemoteApplication *)v10 intentsSupported];
                              v106 = intentsSupported == 0;

                              if (v106)
                              {
                                [(ACXRemoteApplication *)v10 setIntentsSupported:v151];
                              }

                              else
                              {
                                intentsSupported2 = [(ACXRemoteApplication *)v10 intentsSupported];
                                v108 = [intentsSupported2 mutableCopy];

                                v183 = 0u;
                                v184 = 0u;
                                v181 = 0u;
                                v182 = 0u;
                                v109 = v151;
                                v110 = [v109 countByEnumeratingWithState:&v181 objects:v210 count:16];
                                if (v110)
                                {
                                  v111 = *v182;
                                  do
                                  {
                                    for (k = 0; k != v110; ++k)
                                    {
                                      if (*v182 != v111)
                                      {
                                        objc_enumerationMutation(v109);
                                      }

                                      v113 = *(*(&v181 + 1) + 8 * k);
                                      if (([v108 containsObject:v113] & 1) == 0)
                                      {
                                        [v108 addObject:v113];
                                      }
                                    }

                                    v110 = [v109 countByEnumeratingWithState:&v181 objects:v210 count:16];
                                  }

                                  while (v110);
                                }

                                v114 = [v108 copy];
                                [(ACXRemoteApplication *)v10 setIntentsSupported:v114];
                              }
                            }
                          }

                          v115 = [v158 objectForKeyedSubscript:@"IntentsRestrictedWhileLocked"];
                          objc_opt_class();
                          v116 = _ACXValidateObject(v115);

                          if (v116)
                          {
                            objc_opt_class();
                            if ((ACXArrayContainsOnlyClass(v116) & 1) == 0)
                            {
                              if (!gLogHandle || *(gLogHandle + 44) >= 3)
                              {
                                path6 = [v83 path];
                                MOLogWrite();
                              }

                              goto LABEL_199;
                            }

                            if ([v116 count])
                            {
                              intentsRestrictedWhileLocked = [(ACXRemoteApplication *)v10 intentsRestrictedWhileLocked];
                              v118 = intentsRestrictedWhileLocked == 0;

                              if (v118)
                              {
                                [(ACXRemoteApplication *)v10 setIntentsRestrictedWhileLocked:v116];
                              }

                              else
                              {
                                intentsRestrictedWhileLocked2 = [(ACXRemoteApplication *)v10 intentsRestrictedWhileLocked];
                                v120 = [intentsRestrictedWhileLocked2 mutableCopy];

                                v179 = 0u;
                                v180 = 0u;
                                v177 = 0u;
                                v178 = 0u;
                                v121 = v116;
                                v122 = [v121 countByEnumeratingWithState:&v177 objects:v209 count:16];
                                if (v122)
                                {
                                  v123 = *v178;
                                  do
                                  {
                                    for (m = 0; m != v122; ++m)
                                    {
                                      if (*v178 != v123)
                                      {
                                        objc_enumerationMutation(v121);
                                      }

                                      v125 = *(*(&v177 + 1) + 8 * m);
                                      if (([v120 containsObject:v125] & 1) == 0)
                                      {
                                        [v120 addObject:v125];
                                      }
                                    }

                                    v122 = [v121 countByEnumeratingWithState:&v177 objects:v209 count:16];
                                  }

                                  while (v122);
                                }

                                v126 = [v120 copy];
                                [(ACXRemoteApplication *)v10 setIntentsRestrictedWhileLocked:v126];
                              }
                            }
                          }

                          goto LABEL_246;
                        }

                        if (gLogHandle && *(gLogHandle + 44) < 3)
                        {
                          goto LABEL_197;
                        }
                      }

                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                      {
                        goto LABEL_198;
                      }

                      path7 = [v83 path];
                      path6 = path7;
                      MOLogWrite();
LABEL_196:

LABEL_197:
                      v87 = v171;
LABEL_198:

                      goto LABEL_199;
                    }

                    objc_opt_class();
                    v62 = _ACXValidateObject(v146);
                    if (v62)
                    {
                      objc_opt_class();
                      if (!ACXArrayContainsOnlyClass(v62))
                      {
LABEL_132:

                        goto LABEL_133;
                      }

                      v63 = objc_opt_new();
                      v196 = 0u;
                      v197 = 0u;
                      v194 = 0u;
                      v195 = 0u;
                      v64 = v62;
                      v65 = [v64 countByEnumeratingWithState:&v194 objects:v212 count:16];
                      if (v65)
                      {
                        v66 = *v195;
                        v67 = MEMORY[0x277CBEC38];
                        do
                        {
                          for (n = 0; n != v65; ++n)
                          {
                            if (*v195 != v66)
                            {
                              objc_enumerationMutation(v64);
                            }

                            [v63 setObject:v67 forKeyedSubscript:*(*(&v194 + 1) + 8 * n)];
                          }

                          v65 = [v64 countByEnumeratingWithState:&v194 objects:v212 count:16];
                        }

                        while (v65);
                      }

                      [(ACXRemoteApplication *)v10 setRequiredCapabilities:v63];
                    }

                    else
                    {
                      objc_opt_class();
                      v69 = _ACXValidateObject(v146);
                      v63 = v69;
                      if (v69)
                      {
                        v190 = 0;
                        v191 = &v190;
                        v192 = 0x2020000000;
                        v193 = 1;
                        v189[0] = MEMORY[0x277D85DD0];
                        v189[1] = 3221225472;
                        v189[2] = __94__ACXApplication_initWithApplicationRecord_gizmoBundleIdentifier_databaseUUID_sequenceNumber___block_invoke;
                        v189[3] = &unk_278C8D0A0;
                        v189[4] = &v190;
                        [v69 enumerateKeysAndObjectsUsingBlock:v189];
                        if (*(v191 + 24) == 1)
                        {
                          [(ACXRemoteApplication *)v10 setRequiredCapabilities:v63];
                        }

                        _Block_object_dispose(&v190, 8);
                      }
                    }

                    goto LABEL_132;
                  }

                  if (gLogHandle && *(gLogHandle + 44) < 3)
                  {
LABEL_111:

                    goto LABEL_112;
                  }
                }

                else if (gLogHandle && *(gLogHandle + 44) < 3)
                {
                  goto LABEL_111;
                }

                path8 = [v159 path];
                MOLogWrite();

                goto LABEL_111;
              }

              v46 = v156;
              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
LABEL_104:

                goto LABEL_112;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_104;
            }

            path9 = [v159 path];
            MOLogWrite();

            v46 = v156;
            goto LABEL_104;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_112;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_112;
        }

LABEL_50:
        MOLogWrite();
        goto LABEL_112;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_29;
      }
    }

    else if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_29;
    }

LABEL_28:
    MOLogWrite();
LABEL_29:

    goto LABEL_30;
  }

  if (gLogHandle && *(gLogHandle + 44) < 3)
  {
    goto LABEL_30;
  }

LABEL_6:
  MOLogWrite();
LABEL_30:
  v14 = 0;
LABEL_44:

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

void __94__ACXApplication_initWithApplicationRecord_gizmoBundleIdentifier_databaseUUID_sequenceNumber___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v11 = v7;
  if (objc_opt_isKindOfClass())
  {
    if (v11)
    {
      objc_opt_class();
      v9 = v8;
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;

      if (v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  *a4 = 1;
LABEL_7:
}

- (void)_evaluateTrustInfoForReevaluation:(BOOL)reevaluation
{
  reevaluationCopy = reevaluation;
  if ([(ACXRemoteApplication *)self isProfileValidated])
  {
    v5 = objc_opt_class();
    companionAppURL = [(ACXApplication *)self companionAppURL];
    v7 = [v5 _systemTrustsApplicationWithBundleURL:companionAppURL];

    if (reevaluationCopy && v7 == 2)
    {
      return;
    }

    v8 = v7 == 1;
  }

  else
  {
    v8 = 1;
  }

  [(ACXApplication *)self setIsTrusted:v8];
}

- (id)appWithReevaluatedTrust
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  companionAppBundleID = [(ACXRemoteApplication *)self companionAppBundleID];
  v12 = 0;
  v5 = [v3 initWithBundleIdentifier:companionAppBundleID allowPlaceholder:0 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = objc_alloc(objc_opt_class());
    bundleIdentifier = [(ACXSyncedApplication *)self bundleIdentifier];
    databaseUUID = [(ACXSyncedApplication *)self databaseUUID];
    v10 = [v7 initWithApplicationRecord:v5 gizmoBundleIdentifier:bundleIdentifier databaseUUID:databaseUUID sequenceNumber:{-[ACXSyncedApplication sequenceNumber](self, "sequenceNumber")}];

LABEL_6:
    goto LABEL_7;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    bundleIdentifier = [(ACXRemoteApplication *)self companionAppBundleID];
    MOLogWrite();
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (BOOL)_isIndeterminateMISError:(int)error
{
  if (error)
  {
    v3 = error == -402620405;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && (error + 402620377) < 0xFFFFFFFE;
}

+ (int)_systemTrustsApplicationWithBundleURL:(id)l
{
  v17[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = *MEMORY[0x277D82AC0];
  v16[0] = *MEMORY[0x277D82AD0];
  v16[1] = v5;
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  path = [lCopy path];
  v8 = MISValidateSignature();

  if (v8)
  {
    v9 = MISCopyErrorStringForErrorCode();
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      [lCopy path];
      v14 = v8;
      v13 = v15 = v9;
      MOLogWrite();
    }

    if ([self _isIndeterminateMISError:{v8, v13, v14, v15}])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_infoPlistForPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  if (_infoPlistForPluginBundle__onceToken != -1)
  {
    [ACXApplication _infoPlistForPluginBundle:];
  }

  v4 = ACXLoadInfoPlist(bundleCopy, _infoPlistForPluginBundle__keysToLoad);
  v5 = v4;
  if (!v4)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  if (![v4 count])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
LABEL_12:
      path = [bundleCopy path];
      MOLogWrite();
      goto LABEL_13;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_31;
  }

  v6 = [v5 objectForKeyedSubscript:@"NSExtension"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    path = v7;
  }

  else
  {
    path = 0;
  }

  if (path)
  {
    v10 = [path objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      path3 = v11;
    }

    else
    {
      path3 = 0;
    }

    if (path3)
    {
      v9 = v5;
LABEL_29:

      goto LABEL_30;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      path2 = [bundleCopy path];
      MOLogWrite();
    }

LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    path3 = [bundleCopy path];
    MOLogWrite();
    goto LABEL_28;
  }

LABEL_13:
  v9 = 0;
LABEL_30:

LABEL_31:

  return v9;
}

uint64_t __44__ACXApplication__infoPlistForPluginBundle___block_invoke()
{
  _infoPlistForPluginBundle__keysToLoad = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED38], @"CLKComplicationPrincipalClass", @"CLKComplicationSupportedFamilies", @"NSExtension", @"WKRunsIndependentlyOfCompanionApp", *MEMORY[0x277D1C1E8], 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)_URLOfFirstItemWithExtension:(id)extension inDirectory:(id)directory
{
  v26 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v8 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:5 error:&v24];
  v9 = v24;

  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v19 = v9;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          pathExtension = [v14 pathExtension];
          v16 = [pathExtension isEqualToString:extensionCopy];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v9 = v19;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_mostCurrentWKAppURLInCompanionAppRecord:(id)record isPlaceholder:(BOOL *)placeholder
{
  recordCopy = record;
  v7 = [recordCopy URL];
  v8 = v7;
  if (v7)
  {
    bundleIdentifier = [v7 URLByAppendingPathComponent:@"Watch" isDirectory:1];
    v10 = [(ACXApplication *)self _URLOfFirstItemWithExtension:@"app" inDirectory:bundleIdentifier];
    if (v10)
    {
      v11 = v10;
      if (placeholder)
      {
        *placeholder = 0;
      }
    }

    else
    {
      v12 = [v8 URLByAppendingPathComponent:@"com.apple.WatchPlaceholder" isDirectory:1];
      v13 = [(ACXApplication *)self _URLOfFirstItemWithExtension:@"app" inDirectory:v12];
      v11 = v13;
      if (placeholder && v13)
      {
        *placeholder = 1;
      }
    }

    goto LABEL_12;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    MOLogWrite();
    v11 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_URLsOfExtensionsInBundleURL:(id)l mayNotExist:(BOOL)exist
{
  existCopy = exist;
  v5 = [l URLByAppendingPathComponent:@"PlugIns" isDirectory:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v7 = [defaultManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:5 error:&v14];
  v8 = v14;

  if (v7)
  {
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if (!existCopy)
  {
    goto LABEL_7;
  }

  domain = [v8 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_7;
  }

  code = [v8 code];

  if (code != 260)
  {
LABEL_7:
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      path = [v5 path];
      MOLogWrite();
    }

    goto LABEL_10;
  }

LABEL_11:

  return v7;
}

- (id)_watchKitApplicationNameFromWKAppInfoPlist:(id)plist containerRecord:(id)record
{
  plistCopy = plist;
  recordCopy = record;
  v7 = [plistCopy objectForKeyedSubscript:*MEMORY[0x277CBEC40]];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = [plistCopy objectForKeyedSubscript:*MEMORY[0x277CBED50]];
    objc_opt_class();
    v11 = v10;
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;

    if (!v9)
    {
      localizedShortName = [recordCopy localizedShortName];
      if (localizedShortName)
      {
        v9 = localizedShortName;
      }

      else
      {
        v9 = @"Unknown Name";
      }
    }
  }

  return v9;
}

- (id)_storeMetadataWithError:(id *)error
{
  companionAppURL = [(ACXApplication *)self companionAppURL];
  uRLByDeletingLastPathComponent = [companionAppURL URLByDeletingLastPathComponent];
  v6 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];

  v12 = 0;
  v7 = [MEMORY[0x277D1C208] metadataFromPlistAtURL:v6 error:&v12];
  v8 = v12;
  v9 = v8;
  if (error && !v7)
  {
    v10 = v8;
    *error = v9;
  }

  return v7;
}

@end
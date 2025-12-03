@interface ACXCompanionApplication
- (ACXCompanionApplication)init;
- (ACXCompanionApplication)initWithApplicationRecord:(id)record databaseUUID:(id)d sequenceNumber:(unint64_t)number;
- (ACXCompanionApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number;
- (ACXCompanionApplication)initWithCoder:(id)coder;
- (ACXCompanionApplication)initWithSerializedDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForTesting;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXCompanionApplication

- (ACXCompanionApplication)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ACXCompanionApplication;
  return [(ACXCompanionApplication *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = ACXCompanionApplication;
  [(ACXCompanionApplication *)&v3 encodeWithCoder:coder];
}

- (ACXCompanionApplication)init
{
  v3.receiver = self;
  v3.super_class = ACXCompanionApplication;
  return [(ACXCompanionApplication *)&v3 init];
}

- (ACXCompanionApplication)initWithApplicationRecord:(id)record databaseUUID:(id)d sequenceNumber:(unint64_t)number
{
  recordCopy = record;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = ACXCompanionApplication;
  v10 = [(ACXCompanionApplication *)&v26 initWithApplicationRecord:recordCopy databaseUUID:dCopy sequenceNumber:number];
  if (!v10)
  {
LABEL_9:
    v23 = v10;
    goto LABEL_10;
  }

  bundleIdentifier = [recordCopy bundleIdentifier];
  [(ACXCompanionApplication *)v10 setBundleIdentifier:bundleIdentifier];

  [(ACXCompanionApplication *)v10 setDatabaseUUID:dCopy];
  [(ACXCompanionApplication *)v10 setSequenceNumber:number];
  counterpartIdentifiers = [recordCopy counterpartIdentifiers];
  [(ACXCompanionApplication *)v10 setCounterpartIdentifiers:counterpartIdentifiers];

  typeForInstallMachinery = [recordCopy typeForInstallMachinery];
  if ([typeForInstallMachinery isEqualToString:LSUserApplicationType])
  {
    v14 = 2;
LABEL_6:
    [(ACXCompanionApplication *)v10 setApplicationType:v14];
    -[ACXCompanionApplication setIsDeletable:](v10, "setIsDeletable:", [recordCopy isDeletable]);
    v15 = [objc_opt_class() localizedAppNameFromRecord:recordCopy];
    [(ACXCompanionApplication *)v10 setApplicationName:v15];

    v16 = objc_opt_class();
    v17 = [recordCopy URL];
    v18 = [v16 buildLocalizedInfoPlistStringsDictForAppBundleURL:v17 watchKitExtensionURL:0];
    [(ACXCompanionApplication *)v10 setLocalizedInfoPlistStrings:v18];

    aCX_externalVersionIdentifier = [recordCopy ACX_externalVersionIdentifier];
    [(ACXCompanionApplication *)v10 setExternalVersionIdentifier:aCX_externalVersionIdentifier];

    -[ACXCompanionApplication setSupportsAlwaysOnDisplay:](v10, "setSupportsAlwaysOnDisplay:", [recordCopy supportsAlwaysOnDisplay]);
    -[ACXCompanionApplication setDefaultsToPrivateAlwaysOnDisplayTreatment:](v10, "setDefaultsToPrivateAlwaysOnDisplayTreatment:", [recordCopy defaultsToPrivateAlwaysOnDisplayTreatment]);
    -[ACXCompanionApplication setIsEligibleForWatchAppInstall:](v10, "setIsEligibleForWatchAppInstall:", [recordCopy isEligibleForWatchAppInstall]);
    infoDictionary = [recordCopy infoDictionary];
    v21 = objc_opt_class();
    v22 = [infoDictionary objectForKey:@"NSAccessorySetupKitSupports" ofClass:v21 valuesOfClass:objc_opt_class()];

    if (v22)
    {
      [(ACXCompanionApplication *)v10 setAccessorySetupKitSupports:v22];
    }

    goto LABEL_9;
  }

  if ([typeForInstallMachinery isEqualToString:LSSystemApplicationType])
  {
    v14 = 1;
    goto LABEL_6;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    bundleIdentifier2 = [(ACXCompanionApplication *)v10 bundleIdentifier];
    MOLogWrite();
  }

  v23 = 0;
LABEL_10:

  return v23;
}

- (ACXCompanionApplication)initWithBundleID:(id)d databaseUUID:(id)iD sequenceNumber:(unint64_t)number
{
  v6.receiver = self;
  v6.super_class = ACXCompanionApplication;
  return [(ACXCompanionApplication *)&v6 initWithBundleID:d databaseUUID:iD sequenceNumber:number];
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = ACXCompanionApplication;
  return [(ACXCompanionApplication *)&v3 initForTesting];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = ACXCompanionApplication;
  v3 = [(ACXCompanionApplication *)&v7 copyWithZone:zone];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (ACXCompanionApplication)initWithSerializedDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = ACXCompanionApplication;
  return [(ACXCompanionApplication *)&v4 initWithSerializedDictionary:dictionary];
}

- (id)serialize
{
  v4.receiver = self;
  v4.super_class = ACXCompanionApplication;
  serialize = [(ACXCompanionApplication *)&v4 serialize];

  return serialize;
}

@end
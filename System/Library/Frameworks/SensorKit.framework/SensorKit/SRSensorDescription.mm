@interface SRSensorDescription
+ (id)allDescriptions;
+ (id)sensorDescriptionForDeletionRecordFromDescription:(id)description;
+ (id)sensorDescriptionForSensor:(id)sensor;
+ (id)sensorDescriptionsForAuthorizationService:(id)service;
+ (void)initialize;
- (BOOL)supportsPlatform:(id)platform;
- (NSSet)eligibleDaemons;
- (NSString)localizedAdditionalSampleDataNote;
- (NSString)sampleClass;
- (SRSensorDescription)initWithDictionary:(id)dictionary;
- (id)description;
- (void)dealloc;
@end

@implementation SRSensorDescription

- (void)dealloc
{
  self->_publicEntitlementValue = 0;

  self->_sampleClass = 0;
  self->_exportingSampleClass = 0;

  self->_localizedAdditionalSampleDataNote = 0;
  self->_onDemandWriterService = 0;

  self->_additionalSampleDataNoteKey = 0;
  v3.receiver = self;
  v3.super_class = SRSensorDescription;
  [(SRSensorDescription *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogDataStream = os_log_create("com.apple.SensorKit", "SRLogDataStream");
  }
}

+ (id)sensorDescriptionForSensor:(id)sensor
{
  v4 = +[SRSensorsCache defaultCache];

  return [(SRSensorsCache *)v4 descriptionForSensor:sensor];
}

- (SRSensorDescription)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SRSensorDescription;
  v4 = [(SRSensorDescription *)&v18 init];
  if (v4)
  {
    v5 = [dictionary objectForKeyedSubscript:@"Name"];
    v4->_name = v5;
    if (!v5)
    {
      v6 = SRLogDataStream;
      if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        dictionaryCopy3 = dictionary;
        _os_log_fault_impl(&dword_1C914D000, v6, OS_LOG_TYPE_FAULT, "Data stream defined without a name: %{public}@", buf, 0xCu);
      }
    }

    v7 = [dictionary objectForKeyedSubscript:@"AuthService"];
    v4->_authorizationService = v7;
    if (!v7)
    {
      v8 = SRLogDataStream;
      if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        dictionaryCopy3 = dictionary;
        _os_log_fault_impl(&dword_1C914D000, v8, OS_LOG_TYPE_FAULT, "Data stream defined without an authorization service: %{public}@", buf, 0xCu);
      }
    }

    v9 = [dictionary objectForKeyedSubscript:@"RelatedSettingsCategories"];
    v10 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v10 = v9;
    }

    v4->_relatedSettingsCategories = v10;
    v4->_publicEntitlementValue = [dictionary objectForKeyedSubscript:@"PublicEntitlementValue"];
    v4->_sampleClass = [dictionary objectForKeyedSubscript:@"SampleClass"];
    v4->_exportingSampleClass = [dictionary objectForKeyedSubscript:@"ExportingSampleClass"];
    v4->_legacySampleClass = [dictionary objectForKeyedSubscript:@"LegacySampleClass"];
    v4->_legacySampleClassLinkedBefore = [objc_msgSend(dictionary objectForKeyedSubscript:{@"LegacySampleClassLinkedBefore", "unsignedIntValue"}];
    v11 = [dictionary objectForKeyedSubscript:@"SRInfoPlistAuthCategory"];
    v4->_infoPlistAuthorizationCategory = v11;
    if (!v11)
    {
      v12 = SRLogDataStream;
      if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        dictionaryCopy3 = dictionary;
        _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Data stream defined without an Info.plist authorization category: %{public}@", buf, 0xCu);
      }
    }

    v4->_authorizationVersion = [objc_msgSend(dictionary objectForKeyedSubscript:{@"AuthorizationVersion", "integerValue"}];
    v4->_onDemandWriterService = [dictionary objectForKeyedSubscript:@"OnDemandWriterService"];
    v4->_supportedPlatforms = [dictionary objectForKeyedSubscript:@"SupportedPlatforms"];
    v4->_writerAuthorizationService = [dictionary objectForKeyedSubscript:@"WriterAuthorizationService"];
    v4->_authorizationStoreCohort = [dictionary objectForKeyedSubscript:@"AuthorizationStoreCohort"];
    v4->_legacyName = [dictionary objectForKeyedSubscript:@"LegacyName"];
    v4->_filters = [dictionary objectForKeyedSubscript:@"Filters"];
    [objc_msgSend(dictionary objectForKeyedSubscript:{@"RoundingIntervalSecs", "doubleValue"}];
    v4->_roundingInterval = v13;
    v14 = [dictionary objectForKeyedSubscript:@"EligibleDaemons"];
    if (v14)
    {
      v4->_eligibleDaemons = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v14];
    }

    v15 = [dictionary objectForKeyedSubscript:@"Additions"];
    if (v15)
    {
      v4->_additions = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v15];
    }

    v4->_additionalSampleDataNoteKey = [dictionary objectForKeyedSubscript:@"AdditionalDataNote"];
    v4->_datastoreBackend = [objc_msgSend(dictionary objectForKeyedSubscript:{@"StorageBackend", "integerValue"}];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)sensorDescriptionForDeletionRecordFromDescription:(id)description
{
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v9[0] = @"Name";
  v10[0] = [objc_msgSend(description "name")];
  v9[1] = @"AuthService";
  v10[1] = [description authorizationService];
  v10[2] = @"SRDeletionRecord";
  v9[2] = @"SampleClass";
  v9[3] = @"StorageBackend";
  v10[3] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(description, "datastoreBackend")}];
  v9[4] = @"SRInfoPlistAuthCategory";
  v10[4] = [description infoPlistAuthorizationCategory];
  v5 = [v4 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 5)}];
  if ([description legacyName])
  {
    [v5 setObject:objc_msgSend(objc_msgSend(description forKeyedSubscript:{"legacyName"), "sr_sensorForDeletionRecordsFromSensor"), @"LegacyName"}];
  }

  v6 = [[SRSensorDescription alloc] initWithDictionary:v5];

  result = v6;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)localizedAdditionalSampleDataNote
{
  result = self->_localizedAdditionalSampleDataNote;
  if (!result)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(&cfstr_Srsensorreader.isa)];
    if (v4)
    {
      result = [v4 localizedStringForKey:self->_additionalSampleDataNoteKey value:&stru_1F48BB5C0 table:0];
      self->_localizedAdditionalSampleDataNote = result;
    }

    else
    {
      return self->_localizedAdditionalSampleDataNote;
    }
  }

  return result;
}

- (NSString)sampleClass
{
  if (!self->_legacySampleClassLinkedBefore)
  {
    return self->_sampleClass;
  }

  if (self->_legacySampleClass)
  {
    v3 = dyld_program_sdk_at_least();
    v4 = 160;
    if (v3)
    {
      v4 = 64;
    }

    return *(&self->super.isa + v4);
  }

  else
  {
    v6 = SRLogDataStream;
    if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1C914D000, v6, OS_LOG_TYPE_FAULT, "Found a linked before version but no legacy sample class", v7, 2u);
    }

    return 0;
  }
}

- (BOOL)supportsPlatform:(id)platform
{
  if (!platform)
  {
    return 0;
  }

  supportedPlatforms = self->_supportedPlatforms;
  if (!supportedPlatforms)
  {
    return 1;
  }

  v4 = [-[NSDictionary objectForKeyedSubscript:](supportedPlatforms "objectForKeyedSubscript:{"objectForKeyedSubscript:", @"Enabled"}")];

  return [v4 BOOLValue];
}

- (NSSet)eligibleDaemons
{
  result = self->_eligibleDaemons;
  if (!result)
  {
    return [MEMORY[0x1E695DFD8] set];
  }

  return result;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  return [v5 stringWithFormat:@"%@ (%p): name: %@, authService: %@, relatedSettings: %@, publicEntitlement: %@, sampleClass: %@, exportingSampleClass: %@, additions: %@, onDemandWriterId: %@, writerAuthService: %@, supportedPlatforms: %@, auth store cohort: %@, legacyName: %@, filters: %@, legacySampleClass: %@, legacySampleClassLinkedBefore: %u, roundingInterval: %f, eligibleDaemons: %@, storageBackend: %ld", NSStringFromClass(v3), self, self->_name, self->_authorizationService, self->_relatedSettingsCategories, self->_publicEntitlementValue, self->_sampleClass, self->_exportingSampleClass, self->_additions, self->_onDemandWriterService, self->_writerAuthorizationService, self->_supportedPlatforms, self->_authorizationStoreCohort, self->_legacyName, self->_filters, self->_legacySampleClass, self->_legacySampleClassLinkedBefore, *&self->_roundingInterval, -[SRSensorDescription eligibleDaemons](self, "eligibleDaemons"), self->_datastoreBackend];
}

+ (id)sensorDescriptionsForAuthorizationService:(id)service
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[SRSensorsCache defaultCache];
  allSensorDescriptions = [(SRSensorsCache *)v5 allSensorDescriptions];
  v7 = [allSensorDescriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allSensorDescriptions);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v11 authorizationService])
        {
          [array addObject:v11];
        }
      }

      v8 = [allSensorDescriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:{array, v14}];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)allDescriptions
{
  v2 = +[SRSensorsCache defaultCache];

  return [(SRSensorsCache *)v2 allSensorDescriptions];
}

@end
@interface SRSensorDescription
+ (id)allDescriptions;
+ (id)sensorDescriptionForDeletionRecordFromDescription:(id)a3;
+ (id)sensorDescriptionForSensor:(id)a3;
+ (id)sensorDescriptionsForAuthorizationService:(id)a3;
+ (void)initialize;
- (BOOL)supportsPlatform:(id)a3;
- (NSSet)eligibleDaemons;
- (NSString)localizedAdditionalSampleDataNote;
- (NSString)sampleClass;
- (SRSensorDescription)initWithDictionary:(id)a3;
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
  if (objc_opt_class() == a1)
  {
    SRLogDataStream = os_log_create("com.apple.SensorKit", "SRLogDataStream");
  }
}

+ (id)sensorDescriptionForSensor:(id)a3
{
  v4 = +[SRSensorsCache defaultCache];

  return [(SRSensorsCache *)v4 descriptionForSensor:a3];
}

- (SRSensorDescription)initWithDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SRSensorDescription;
  v4 = [(SRSensorDescription *)&v18 init];
  if (v4)
  {
    v5 = [a3 objectForKeyedSubscript:@"Name"];
    v4->_name = v5;
    if (!v5)
    {
      v6 = SRLogDataStream;
      if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v20 = a3;
        _os_log_fault_impl(&dword_1C914D000, v6, OS_LOG_TYPE_FAULT, "Data stream defined without a name: %{public}@", buf, 0xCu);
      }
    }

    v7 = [a3 objectForKeyedSubscript:@"AuthService"];
    v4->_authorizationService = v7;
    if (!v7)
    {
      v8 = SRLogDataStream;
      if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v20 = a3;
        _os_log_fault_impl(&dword_1C914D000, v8, OS_LOG_TYPE_FAULT, "Data stream defined without an authorization service: %{public}@", buf, 0xCu);
      }
    }

    v9 = [a3 objectForKeyedSubscript:@"RelatedSettingsCategories"];
    v10 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v10 = v9;
    }

    v4->_relatedSettingsCategories = v10;
    v4->_publicEntitlementValue = [a3 objectForKeyedSubscript:@"PublicEntitlementValue"];
    v4->_sampleClass = [a3 objectForKeyedSubscript:@"SampleClass"];
    v4->_exportingSampleClass = [a3 objectForKeyedSubscript:@"ExportingSampleClass"];
    v4->_legacySampleClass = [a3 objectForKeyedSubscript:@"LegacySampleClass"];
    v4->_legacySampleClassLinkedBefore = [objc_msgSend(a3 objectForKeyedSubscript:{@"LegacySampleClassLinkedBefore", "unsignedIntValue"}];
    v11 = [a3 objectForKeyedSubscript:@"SRInfoPlistAuthCategory"];
    v4->_infoPlistAuthorizationCategory = v11;
    if (!v11)
    {
      v12 = SRLogDataStream;
      if (os_log_type_enabled(SRLogDataStream, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v20 = a3;
        _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Data stream defined without an Info.plist authorization category: %{public}@", buf, 0xCu);
      }
    }

    v4->_authorizationVersion = [objc_msgSend(a3 objectForKeyedSubscript:{@"AuthorizationVersion", "integerValue"}];
    v4->_onDemandWriterService = [a3 objectForKeyedSubscript:@"OnDemandWriterService"];
    v4->_supportedPlatforms = [a3 objectForKeyedSubscript:@"SupportedPlatforms"];
    v4->_writerAuthorizationService = [a3 objectForKeyedSubscript:@"WriterAuthorizationService"];
    v4->_authorizationStoreCohort = [a3 objectForKeyedSubscript:@"AuthorizationStoreCohort"];
    v4->_legacyName = [a3 objectForKeyedSubscript:@"LegacyName"];
    v4->_filters = [a3 objectForKeyedSubscript:@"Filters"];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"RoundingIntervalSecs", "doubleValue"}];
    v4->_roundingInterval = v13;
    v14 = [a3 objectForKeyedSubscript:@"EligibleDaemons"];
    if (v14)
    {
      v4->_eligibleDaemons = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v14];
    }

    v15 = [a3 objectForKeyedSubscript:@"Additions"];
    if (v15)
    {
      v4->_additions = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v15];
    }

    v4->_additionalSampleDataNoteKey = [a3 objectForKeyedSubscript:@"AdditionalDataNote"];
    v4->_datastoreBackend = [objc_msgSend(a3 objectForKeyedSubscript:{@"StorageBackend", "integerValue"}];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)sensorDescriptionForDeletionRecordFromDescription:(id)a3
{
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v9[0] = @"Name";
  v10[0] = [objc_msgSend(a3 "name")];
  v9[1] = @"AuthService";
  v10[1] = [a3 authorizationService];
  v10[2] = @"SRDeletionRecord";
  v9[2] = @"SampleClass";
  v9[3] = @"StorageBackend";
  v10[3] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "datastoreBackend")}];
  v9[4] = @"SRInfoPlistAuthCategory";
  v10[4] = [a3 infoPlistAuthorizationCategory];
  v5 = [v4 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 5)}];
  if ([a3 legacyName])
  {
    [v5 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"legacyName"), "sr_sensorForDeletionRecordsFromSensor"), @"LegacyName"}];
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

- (BOOL)supportsPlatform:(id)a3
{
  if (!a3)
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

+ (id)sensorDescriptionsForAuthorizationService:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[SRSensorsCache defaultCache];
  v6 = [(SRSensorsCache *)v5 allSensorDescriptions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v11 authorizationService])
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:{v4, v14}];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)allDescriptions
{
  v2 = +[SRSensorsCache defaultCache];

  return [(SRSensorsCache *)v2 allSensorDescriptions];
}

@end
@interface CKRecord
+ (id)safari_recordNameForFolderType:(int64_t)type;
- (BOOL)safari_isCloudExtensionDeviceRecord;
- (BOOL)safari_isCloudExtensionStateRecord;
- (BOOL)safari_isCloudTabCloseRequestRecord;
- (BOOL)safari_isCloudTabDeviceRecord;
- (BOOL)safari_isCloudTabRecord;
- (BOOL)safari_isEncryptionInfoRecord;
- (BOOL)safari_isMetadataDevice;
- (BOOL)safari_isMigrationStateRecord;
- (BOOL)safari_isSyncRequirementsRecord;
- (NSString)safari_recordName;
- (id)safari_defaultPositionUsingValueTransformer:(id)transformer;
- (id)safari_generationForKey:(id)key;
- (id)safari_positionDictionaryRepresentationUsingValueTransformer:(id)transformer;
- (int64_t)safari_deviceOSKind;
- (int64_t)safari_migrationState;
- (int64_t)safari_minimumAPIVersion;
- (int64_t)safari_minimumSyncAPIVersion;
- (int64_t)safari_state;
- (void)safari_incrementGenerationWithDeviceIdentifier:(id)identifier forKey:(id)key;
- (void)safari_setDefaultPosition:(id)position usingValueTransformer:(id)transformer;
- (void)safari_setGeneration:(id)generation forKey:(id)key;
- (void)safari_setMigrationState:(int64_t)state;
- (void)safari_setMigratorDeviceIdentifier:(id)identifier;
- (void)safari_setMinimumAPIVersion:(int64_t)version;
- (void)safari_setMinimumSyncAPIVersion:(int64_t)version;
- (void)safari_setPositionDictionaryRepresentation:(id)representation usingValueTransformer:(id)transformer;
- (void)safari_setState:(int64_t)state;
@end

@implementation CKRecord

- (BOOL)safari_isCloudExtensionDeviceRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"CloudExtensionDevice"];

  return v3;
}

- (BOOL)safari_isCloudExtensionStateRecord
{
  recordType = [(CKRecord *)self recordType];
  if ([recordType isEqualToString:@"CloudExtensionState"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [recordType isEqualToString:@"CloudExtensionStateV2"];
  }

  return v3;
}

+ (id)safari_recordNameForFolderType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100133140 + type - 1);
  }

  return v4;
}

- (NSString)safari_recordName
{
  recordID = [(CKRecord *)self recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (BOOL)safari_isSyncRequirementsRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"SyncRequirements"];

  return v3;
}

- (int64_t)safari_minimumSyncAPIVersion
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"MinimumSyncAPIVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)safari_setMinimumSyncAPIVersion:(int64_t)version
{
  if ([(CKRecord *)self safari_minimumSyncAPIVersion]!= version)
  {
    v5 = [NSNumber numberWithInteger:version];
    [(CKRecord *)self setObject:v5 forKeyedSubscript:@"MinimumSyncAPIVersion"];
  }
}

- (BOOL)safari_isEncryptionInfoRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"EncryptionInfo"];

  return v3;
}

- (BOOL)safari_isMigrationStateRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"MigrationState"];

  return v3;
}

- (int64_t)safari_migrationState
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"MigrationState"];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_100040A90(v5);
      }

      goto LABEL_9;
    }

    integerValue = [v2 integerValue];
    if (integerValue >= 3)
    {
      v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100040B38(v2, v4);
      }

LABEL_9:
      integerValue = -1;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)safari_setMigrationState:(int64_t)state
{
  if ([(CKRecord *)self safari_migrationState]!= state)
  {
    v5 = [NSNumber numberWithInteger:state];
    [(CKRecord *)self setObject:v5 forKeyedSubscript:@"MigrationState"];
  }
}

- (void)safari_setMigratorDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  safari_migratorDeviceIdentifier = [(CKRecord *)self safari_migratorDeviceIdentifier];
  if (safari_migratorDeviceIdentifier != identifierCopy && ([identifierCopy isEqualToString:safari_migratorDeviceIdentifier] & 1) == 0)
  {
    v5 = [identifierCopy copy];
    [(CKRecord *)self setObject:v5 forKeyedSubscript:@"MigratorDeviceIdentifier"];
  }
}

- (int64_t)safari_state
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"Deleted"];
  integerValue = [v2 integerValue];

  if (integerValue == 2)
  {
    return 2;
  }

  else
  {
    return integerValue == 1;
  }
}

- (void)safari_setState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  [(CKRecord *)self setObject:v4 forKeyedSubscript:@"Deleted"];
}

- (int64_t)safari_minimumAPIVersion
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"MinimumAPIVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)safari_setMinimumAPIVersion:(int64_t)version
{
  v4 = [NSNumber numberWithInteger:version];
  [(CKRecord *)self setObject:v4 forKeyedSubscript:@"MinimumAPIVersion"];
}

- (id)safari_positionDictionaryRepresentationUsingValueTransformer:(id)transformer
{
  transformerCopy = transformer;
  if ([transformerCopy attributeRequiresEncryption])
  {
    safari_encryptedValues = [(CKRecord *)self safari_encryptedValues];
    v6 = [safari_encryptedValues objectForKeyedSubscript:@"Position"];
    v7 = [transformerCopy reverseTransformedValue:v6];

    transformerCopy = v6;
  }

  else
  {
    safari_encryptedValues = [(CKRecord *)self objectForKeyedSubscript:@"Position"];
    v7 = [transformerCopy reverseTransformedValue:safari_encryptedValues];
  }

  return v7;
}

- (void)safari_setPositionDictionaryRepresentation:(id)representation usingValueTransformer:(id)transformer
{
  transformerCopy = transformer;
  representationCopy = representation;
  attributeRequiresEncryption = [transformerCopy attributeRequiresEncryption];
  v10 = [transformerCopy transformedValue:representationCopy];

  if (attributeRequiresEncryption)
  {
    safari_encryptedValues = [(CKRecord *)self safari_encryptedValues];
    [safari_encryptedValues setObject:v10 forKeyedSubscript:@"Position"];
  }

  else
  {
    [(CKRecord *)self setObject:v10 forKeyedSubscript:@"Position"];
  }
}

- (id)safari_defaultPositionUsingValueTransformer:(id)transformer
{
  v3 = [(CKRecord *)self safari_positionDictionaryRepresentationUsingValueTransformer:transformer];
  v4 = [WBSCRDTPosition alloc];
  v5 = [v3 objectForKeyedSubscript:WBDefaultPositionKey];
  v6 = [v4 initWithDictionaryRepresentation:v5];

  return v6;
}

- (void)safari_setDefaultPosition:(id)position usingValueTransformer:(id)transformer
{
  positionCopy = position;
  transformerCopy = transformer;
  v7 = [(CKRecord *)self safari_positionDictionaryRepresentationUsingValueTransformer:transformerCopy];
  v8 = v7;
  if (!v7)
  {
    v7 = &__NSDictionary0__struct;
  }

  v9 = [v7 mutableCopy];

  if (positionCopy)
  {
    dictionaryRepresentation = [positionCopy dictionaryRepresentation];
    [v9 setObject:dictionaryRepresentation forKeyedSubscript:WBDefaultPositionKey];
  }

  if ([v9 count])
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [(CKRecord *)self safari_setPositionDictionaryRepresentation:v11 usingValueTransformer:transformerCopy];
}

- (id)safari_generationForKey:(id)key
{
  keyCopy = key;
  v5 = [(CKRecord *)self _safari_generationKeyForKey:keyCopy];
  v6 = [(CKRecord *)self objectForKeyedSubscript:v5];

  v7 = [(CKRecord *)self _safari_deviceIdentifierKeyForKey:keyCopy];

  v8 = [(CKRecord *)self objectForKeyedSubscript:v7];

  if (v6 && v8)
  {
    v9 = [[WBSCRDTGeneration alloc] initWithDeviceIdentifier:v8 generation:{objc_msgSend(v6, "integerValue")}];
  }

  else
  {
    v9 = objc_alloc_init(WBSCRDTGeneration);
  }

  v10 = v9;

  return v10;
}

- (void)safari_setGeneration:(id)generation forKey:(id)key
{
  generationCopy = generation;
  keyCopy = key;
  if (generationCopy)
  {
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [generationCopy generation]);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CKRecord *)self _safari_generationKeyForKey:keyCopy];
  [(CKRecord *)self setObject:v7 forKeyedSubscript:v8];

  v9 = generationCopy;
  if (generationCopy)
  {

    v9 = generationCopy;
  }

  deviceIdentifier = [v9 deviceIdentifier];
  v11 = [(CKRecord *)self _safari_deviceIdentifierKeyForKey:keyCopy];
  [(CKRecord *)self setObject:deviceIdentifier forKeyedSubscript:v11];
}

- (void)safari_incrementGenerationWithDeviceIdentifier:(id)identifier forKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v9 = [(CKRecord *)self safari_generationForKey:keyCopy];
  v8 = [v9 incrementedGenerationWithDeviceIdentifier:identifierCopy];

  [(CKRecord *)self safari_setGeneration:v8 forKey:keyCopy];
}

- (BOOL)safari_isMetadataDevice
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"metadata_device_type"];

  return v3;
}

- (int64_t)safari_deviceOSKind
{
  safari_deviceOSName = [(CKRecord *)self safari_deviceOSName];
  v3 = sub_10003FE40(safari_deviceOSName);

  return v3;
}

- (BOOL)safari_isCloudTabDeviceRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"CloudTabDevice"];

  return v3;
}

- (BOOL)safari_isCloudTabRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"CloudTab"];

  return v3;
}

- (BOOL)safari_isCloudTabCloseRequestRecord
{
  recordType = [(CKRecord *)self recordType];
  v3 = [recordType isEqualToString:@"CloudTabCloseRequest"];

  return v3;
}

@end
@interface CKRecord
+ (id)safari_recordNameForFolderType:(int64_t)a3;
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
- (id)safari_defaultPositionUsingValueTransformer:(id)a3;
- (id)safari_generationForKey:(id)a3;
- (id)safari_positionDictionaryRepresentationUsingValueTransformer:(id)a3;
- (int64_t)safari_deviceOSKind;
- (int64_t)safari_migrationState;
- (int64_t)safari_minimumAPIVersion;
- (int64_t)safari_minimumSyncAPIVersion;
- (int64_t)safari_state;
- (void)safari_incrementGenerationWithDeviceIdentifier:(id)a3 forKey:(id)a4;
- (void)safari_setDefaultPosition:(id)a3 usingValueTransformer:(id)a4;
- (void)safari_setGeneration:(id)a3 forKey:(id)a4;
- (void)safari_setMigrationState:(int64_t)a3;
- (void)safari_setMigratorDeviceIdentifier:(id)a3;
- (void)safari_setMinimumAPIVersion:(int64_t)a3;
- (void)safari_setMinimumSyncAPIVersion:(int64_t)a3;
- (void)safari_setPositionDictionaryRepresentation:(id)a3 usingValueTransformer:(id)a4;
- (void)safari_setState:(int64_t)a3;
@end

@implementation CKRecord

- (BOOL)safari_isCloudExtensionDeviceRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"CloudExtensionDevice"];

  return v3;
}

- (BOOL)safari_isCloudExtensionStateRecord
{
  v2 = [(CKRecord *)self recordType];
  if ([v2 isEqualToString:@"CloudExtensionState"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"CloudExtensionStateV2"];
  }

  return v3;
}

+ (id)safari_recordNameForFolderType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100133140 + a3 - 1);
  }

  return v4;
}

- (NSString)safari_recordName
{
  v2 = [(CKRecord *)self recordID];
  v3 = [v2 recordName];

  return v3;
}

- (BOOL)safari_isSyncRequirementsRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"SyncRequirements"];

  return v3;
}

- (int64_t)safari_minimumSyncAPIVersion
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"MinimumSyncAPIVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)safari_setMinimumSyncAPIVersion:(int64_t)a3
{
  if ([(CKRecord *)self safari_minimumSyncAPIVersion]!= a3)
  {
    v5 = [NSNumber numberWithInteger:a3];
    [(CKRecord *)self setObject:v5 forKeyedSubscript:@"MinimumSyncAPIVersion"];
  }
}

- (BOOL)safari_isEncryptionInfoRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"EncryptionInfo"];

  return v3;
}

- (BOOL)safari_isMigrationStateRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"MigrationState"];

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

    v3 = [v2 integerValue];
    if (v3 >= 3)
    {
      v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100040B38(v2, v4);
      }

LABEL_9:
      v3 = -1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)safari_setMigrationState:(int64_t)a3
{
  if ([(CKRecord *)self safari_migrationState]!= a3)
  {
    v5 = [NSNumber numberWithInteger:a3];
    [(CKRecord *)self setObject:v5 forKeyedSubscript:@"MigrationState"];
  }
}

- (void)safari_setMigratorDeviceIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(CKRecord *)self safari_migratorDeviceIdentifier];
  if (v4 != v6 && ([v6 isEqualToString:v4] & 1) == 0)
  {
    v5 = [v6 copy];
    [(CKRecord *)self setObject:v5 forKeyedSubscript:@"MigratorDeviceIdentifier"];
  }
}

- (int64_t)safari_state
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"Deleted"];
  v3 = [v2 integerValue];

  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return v3 == 1;
  }
}

- (void)safari_setState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(CKRecord *)self setObject:v4 forKeyedSubscript:@"Deleted"];
}

- (int64_t)safari_minimumAPIVersion
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"MinimumAPIVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)safari_setMinimumAPIVersion:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(CKRecord *)self setObject:v4 forKeyedSubscript:@"MinimumAPIVersion"];
}

- (id)safari_positionDictionaryRepresentationUsingValueTransformer:(id)a3
{
  v4 = a3;
  if ([v4 attributeRequiresEncryption])
  {
    v5 = [(CKRecord *)self safari_encryptedValues];
    v6 = [v5 objectForKeyedSubscript:@"Position"];
    v7 = [v4 reverseTransformedValue:v6];

    v4 = v6;
  }

  else
  {
    v5 = [(CKRecord *)self objectForKeyedSubscript:@"Position"];
    v7 = [v4 reverseTransformedValue:v5];
  }

  return v7;
}

- (void)safari_setPositionDictionaryRepresentation:(id)a3 usingValueTransformer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 attributeRequiresEncryption];
  v10 = [v6 transformedValue:v7];

  if (v8)
  {
    v9 = [(CKRecord *)self safari_encryptedValues];
    [v9 setObject:v10 forKeyedSubscript:@"Position"];
  }

  else
  {
    [(CKRecord *)self setObject:v10 forKeyedSubscript:@"Position"];
  }
}

- (id)safari_defaultPositionUsingValueTransformer:(id)a3
{
  v3 = [(CKRecord *)self safari_positionDictionaryRepresentationUsingValueTransformer:a3];
  v4 = [WBSCRDTPosition alloc];
  v5 = [v3 objectForKeyedSubscript:WBDefaultPositionKey];
  v6 = [v4 initWithDictionaryRepresentation:v5];

  return v6;
}

- (void)safari_setDefaultPosition:(id)a3 usingValueTransformer:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CKRecord *)self safari_positionDictionaryRepresentationUsingValueTransformer:v6];
  v8 = v7;
  if (!v7)
  {
    v7 = &__NSDictionary0__struct;
  }

  v9 = [v7 mutableCopy];

  if (v12)
  {
    v10 = [v12 dictionaryRepresentation];
    [v9 setObject:v10 forKeyedSubscript:WBDefaultPositionKey];
  }

  if ([v9 count])
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [(CKRecord *)self safari_setPositionDictionaryRepresentation:v11 usingValueTransformer:v6];
}

- (id)safari_generationForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self _safari_generationKeyForKey:v4];
  v6 = [(CKRecord *)self objectForKeyedSubscript:v5];

  v7 = [(CKRecord *)self _safari_deviceIdentifierKeyForKey:v4];

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

- (void)safari_setGeneration:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 generation]);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CKRecord *)self _safari_generationKeyForKey:v6];
  [(CKRecord *)self setObject:v7 forKeyedSubscript:v8];

  v9 = v12;
  if (v12)
  {

    v9 = v12;
  }

  v10 = [v9 deviceIdentifier];
  v11 = [(CKRecord *)self _safari_deviceIdentifierKeyForKey:v6];
  [(CKRecord *)self setObject:v10 forKeyedSubscript:v11];
}

- (void)safari_incrementGenerationWithDeviceIdentifier:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CKRecord *)self safari_generationForKey:v6];
  v8 = [v9 incrementedGenerationWithDeviceIdentifier:v7];

  [(CKRecord *)self safari_setGeneration:v8 forKey:v6];
}

- (BOOL)safari_isMetadataDevice
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"metadata_device_type"];

  return v3;
}

- (int64_t)safari_deviceOSKind
{
  v2 = [(CKRecord *)self safari_deviceOSName];
  v3 = sub_10003FE40(v2);

  return v3;
}

- (BOOL)safari_isCloudTabDeviceRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"CloudTabDevice"];

  return v3;
}

- (BOOL)safari_isCloudTabRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"CloudTab"];

  return v3;
}

- (BOOL)safari_isCloudTabCloseRequestRecord
{
  v2 = [(CKRecord *)self recordType];
  v3 = [v2 isEqualToString:@"CloudTabCloseRequest"];

  return v3;
}

@end
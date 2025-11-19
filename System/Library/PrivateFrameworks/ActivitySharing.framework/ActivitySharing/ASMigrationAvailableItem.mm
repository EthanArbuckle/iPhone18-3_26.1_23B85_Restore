@interface ASMigrationAvailableItem
+ (id)migrationAvailableItemWithCodableContainer:(id)a3;
+ (id)migrationAvailableItemWithCodableItem:(id)a3;
+ (id)migrationAvailableItemWithRecord:(id)a3;
- (ASCodableCloudKitMigrationAvailableItem)codableMigrationAvailableItem;
- (ASCodableMigrationAvailableItemContainer)codableMigrationAvailableItemContainer;
- (ASMigrationAvailableItem)initWithIdentifier:(id)a3 relationshipIdentifier:(id)a4;
- (ASMigrationAvailableItem)initWithRelationshipIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation ASMigrationAvailableItem

- (ASCodableCloudKitMigrationAvailableItem)codableMigrationAvailableItem
{
  v3 = objc_alloc_init(ASCodableCloudKitMigrationAvailableItem);
  v4 = [(ASMigrationAvailableItem *)self identifier];
  [(ASCodableCloudKitMigrationAvailableItem *)v3 setIdentifier:v4];

  v5 = [(ASMigrationAvailableItem *)self relationshipIdentifier];
  [(ASCodableCloudKitMigrationAvailableItem *)v3 setRelationshipIdentifier:v5];

  return v3;
}

+ (id)migrationAvailableItemWithCodableItem:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if (v4)
  {
    v5 = [v3 relationshipIdentifier];
    if (v5)
    {
      v6 = [[ASMigrationAvailableItem alloc] initWithIdentifier:v4 relationshipIdentifier:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __86__ASMigrationAvailableItem_CloudKitCodingSupport__migrationAvailableItemsWithRecords___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  v4 = [v3 isEqualToString:@"ActivitySharingMigrationAvailableRecord"];

  if (v4)
  {
    v5 = [ASMigrationAvailableItem migrationAvailableItemWithRecord:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)migrationAvailableItemWithRecord:(id)a3
{
  v3 = a3;
  if (_ASCloudKitSchemaVersionForRecord(v3) == 1)
  {
    v4 = [v3 encryptedValues];
    v5 = [v4 objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v8 = [[ASCodableCloudKitMigrationAvailableItem alloc] initWithData:v6];
      v9 = [ASMigrationAvailableItem migrationAvailableItemWithCodableItem:v8];
      v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v3 encodeSystemFieldsWithCoder:v10];
      [v10 finishEncoding];
      v11 = objc_alloc(MEMORY[0x277CCAAC8]);
      v12 = [v10 encodedData];
      v17 = 0;
      v13 = [v11 initForReadingFromData:v12 error:&v17];
      v14 = v17;

      if (v14)
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
        {
          +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
        }
      }

      v15 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v13];
      [v9 setSystemFieldsOnlyRecord:v15];

      v7 = v9;
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASMigrationAvailableItem(CloudKitCodingSupport) migrationAvailableItemWithRecord:];
      }

      v7 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASMigrationAvailableItem(CloudKitCodingSupport) migrationAvailableItemWithRecord:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(ASMigrationAvailableItem *)self systemFieldsOnlyRecord];
  v8 = v7;
  if (!v7 || ([v7 recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v6), v10, v9, (v11 & 1) == 0))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(ASMigrationAvailableItem *)self relationshipIdentifier];
    v14 = [v12 stringWithFormat:@"%@-%@", @"ActivitySharingMigrationAvailableRecord", v13];

    v15 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v14 zoneID:v6];
    v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingMigrationAvailableRecord" recordID:v15];

    v8 = v16;
  }

  _ASUpdateSchemaVersionOnRecord(1, v8, a4);
  v17 = [(ASMigrationAvailableItem *)self codableMigrationAvailableItem];
  v18 = [v17 data];
  v19 = [v8 encryptedValues];
  [v19 setObject:v18 forKeyedSubscript:@"EncryptedData"];

  return v8;
}

- (ASMigrationAvailableItem)initWithRelationshipIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [(ASMigrationAvailableItem *)self initWithIdentifier:v7 relationshipIdentifier:v5];

  return v8;
}

- (ASMigrationAvailableItem)initWithIdentifier:(id)a3 relationshipIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASMigrationAvailableItem;
  v9 = [(ASMigrationAvailableItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_relationshipIdentifier, a4);
  }

  return v10;
}

- (NSString)description
{
  if (self->_systemFieldsOnlyRecord)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"ASMigrationAvailableItem (%@), systemFieldsOnlyRecord exists: %@", self->_relationshipIdentifier, v2];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(ASMigrationAvailableItem *)self relationshipIdentifier];
  v6 = [v4 relationshipIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(ASMigrationAvailableItem *)self relationshipIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (ASCodableMigrationAvailableItemContainer)codableMigrationAvailableItemContainer
{
  v3 = objc_alloc_init(ASCodableMigrationAvailableItemContainer);
  v4 = [(ASMigrationAvailableItem *)self codableMigrationAvailableItem];
  [(ASCodableMigrationAvailableItemContainer *)v3 setMigrationAvailableItem:v4];

  v5 = [(ASMigrationAvailableItem *)self systemFieldsOnlyRecord];

  if (v5)
  {
    v6 = MEMORY[0x277CCAAB0];
    v7 = [(ASMigrationAvailableItem *)self systemFieldsOnlyRecord];
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    [(ASCodableMigrationAvailableItemContainer *)v3 setSystemFieldsOnlyRecord:v8];
  }

  return v3;
}

+ (id)migrationAvailableItemWithCodableContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 migrationAvailableItem];
  v5 = [ASMigrationAvailableItem migrationAvailableItemWithCodableItem:v4];

  v6 = objc_opt_class();
  v7 = [v3 systemFieldsOnlyRecord];

  v8 = ASSecureUnarchiveClassWithDataAndStrictness(v6, v7, 0);
  [v5 setSystemFieldsOnlyRecord:v8];

  return v5;
}

@end
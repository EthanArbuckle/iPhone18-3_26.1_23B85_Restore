@interface ASMigrationAvailableItem
+ (id)migrationAvailableItemWithCodableContainer:(id)container;
+ (id)migrationAvailableItemWithCodableItem:(id)item;
+ (id)migrationAvailableItemWithRecord:(id)record;
- (ASCodableCloudKitMigrationAvailableItem)codableMigrationAvailableItem;
- (ASCodableMigrationAvailableItemContainer)codableMigrationAvailableItemContainer;
- (ASMigrationAvailableItem)initWithIdentifier:(id)identifier relationshipIdentifier:(id)relationshipIdentifier;
- (ASMigrationAvailableItem)initWithRelationshipIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type;
- (unint64_t)hash;
@end

@implementation ASMigrationAvailableItem

- (ASCodableCloudKitMigrationAvailableItem)codableMigrationAvailableItem
{
  v3 = objc_alloc_init(ASCodableCloudKitMigrationAvailableItem);
  identifier = [(ASMigrationAvailableItem *)self identifier];
  [(ASCodableCloudKitMigrationAvailableItem *)v3 setIdentifier:identifier];

  relationshipIdentifier = [(ASMigrationAvailableItem *)self relationshipIdentifier];
  [(ASCodableCloudKitMigrationAvailableItem *)v3 setRelationshipIdentifier:relationshipIdentifier];

  return v3;
}

+ (id)migrationAvailableItemWithCodableItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  if (identifier)
  {
    relationshipIdentifier = [itemCopy relationshipIdentifier];
    if (relationshipIdentifier)
    {
      v6 = [[ASMigrationAvailableItem alloc] initWithIdentifier:identifier relationshipIdentifier:relationshipIdentifier];
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

+ (id)migrationAvailableItemWithRecord:(id)record
{
  recordCopy = record;
  if (_ASCloudKitSchemaVersionForRecord(recordCopy) == 1)
  {
    encryptedValues = [recordCopy encryptedValues];
    v5 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
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
      [recordCopy encodeSystemFieldsWithCoder:v10];
      [v10 finishEncoding];
      v11 = objc_alloc(MEMORY[0x277CCAAC8]);
      encodedData = [v10 encodedData];
      v17 = 0;
      v13 = [v11 initForReadingFromData:encodedData error:&v17];
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

- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type
{
  dCopy = d;
  systemFieldsOnlyRecord = [(ASMigrationAvailableItem *)self systemFieldsOnlyRecord];
  v8 = systemFieldsOnlyRecord;
  if (!systemFieldsOnlyRecord || ([systemFieldsOnlyRecord recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", dCopy), v10, v9, (v11 & 1) == 0))
  {
    v12 = MEMORY[0x277CCACA8];
    relationshipIdentifier = [(ASMigrationAvailableItem *)self relationshipIdentifier];
    v14 = [v12 stringWithFormat:@"%@-%@", @"ActivitySharingMigrationAvailableRecord", relationshipIdentifier];

    v15 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v14 zoneID:dCopy];
    v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingMigrationAvailableRecord" recordID:v15];

    v8 = v16;
  }

  _ASUpdateSchemaVersionOnRecord(1, v8, type);
  codableMigrationAvailableItem = [(ASMigrationAvailableItem *)self codableMigrationAvailableItem];
  data = [codableMigrationAvailableItem data];
  encryptedValues = [v8 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return v8;
}

- (ASMigrationAvailableItem)initWithRelationshipIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [(ASMigrationAvailableItem *)self initWithIdentifier:uUIDString relationshipIdentifier:identifierCopy];

  return v8;
}

- (ASMigrationAvailableItem)initWithIdentifier:(id)identifier relationshipIdentifier:(id)relationshipIdentifier
{
  identifierCopy = identifier;
  relationshipIdentifierCopy = relationshipIdentifier;
  v12.receiver = self;
  v12.super_class = ASMigrationAvailableItem;
  v9 = [(ASMigrationAvailableItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_relationshipIdentifier, relationshipIdentifier);
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  relationshipIdentifier = [(ASMigrationAvailableItem *)self relationshipIdentifier];
  relationshipIdentifier2 = [equalCopy relationshipIdentifier];

  LOBYTE(equalCopy) = [relationshipIdentifier isEqualToString:relationshipIdentifier2];
  return equalCopy;
}

- (unint64_t)hash
{
  relationshipIdentifier = [(ASMigrationAvailableItem *)self relationshipIdentifier];
  v3 = [relationshipIdentifier hash];

  return v3;
}

- (ASCodableMigrationAvailableItemContainer)codableMigrationAvailableItemContainer
{
  v3 = objc_alloc_init(ASCodableMigrationAvailableItemContainer);
  codableMigrationAvailableItem = [(ASMigrationAvailableItem *)self codableMigrationAvailableItem];
  [(ASCodableMigrationAvailableItemContainer *)v3 setMigrationAvailableItem:codableMigrationAvailableItem];

  systemFieldsOnlyRecord = [(ASMigrationAvailableItem *)self systemFieldsOnlyRecord];

  if (systemFieldsOnlyRecord)
  {
    v6 = MEMORY[0x277CCAAB0];
    systemFieldsOnlyRecord2 = [(ASMigrationAvailableItem *)self systemFieldsOnlyRecord];
    v8 = [v6 archivedDataWithRootObject:systemFieldsOnlyRecord2 requiringSecureCoding:1 error:0];
    [(ASCodableMigrationAvailableItemContainer *)v3 setSystemFieldsOnlyRecord:v8];
  }

  return v3;
}

+ (id)migrationAvailableItemWithCodableContainer:(id)container
{
  containerCopy = container;
  migrationAvailableItem = [containerCopy migrationAvailableItem];
  v5 = [ASMigrationAvailableItem migrationAvailableItemWithCodableItem:migrationAvailableItem];

  v6 = objc_opt_class();
  systemFieldsOnlyRecord = [containerCopy systemFieldsOnlyRecord];

  v8 = ASSecureUnarchiveClassWithDataAndStrictness(v6, systemFieldsOnlyRecord, 0);
  [v5 setSystemFieldsOnlyRecord:v8];

  return v5;
}

@end
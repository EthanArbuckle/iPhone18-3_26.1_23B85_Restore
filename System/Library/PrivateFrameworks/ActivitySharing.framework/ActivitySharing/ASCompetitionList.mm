@interface ASCompetitionList
+ (id)competitionListFromCodableDatabaseCompetitionList:(id)list codableCompetitions:(id)competitions withType:(int64_t)type;
+ (id)competitionListWithCodableCompetitionList:(id)list;
+ (id)competitionListWithRecord:(id)record;
- (ASCodableCloudKitCompetitionList)codableCompetitionList;
- (ASCompetition)currentCompetition;
- (ASCompetitionList)init;
- (ASCompetitionList)initWithFriendUUID:(id)d type:(int64_t)type;
- (id)codableDatabaseCompetitionListEntryForOwner:(int64_t)owner;
- (id)copyWithZone:(_NSZone *)zone;
- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type;
- (void)currentCompetition;
@end

@implementation ASCompetitionList

- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type
{
  dCopy = d;
  systemFieldsOnlyRecord = [(ASCompetitionList *)self systemFieldsOnlyRecord];
  v8 = systemFieldsOnlyRecord;
  if (!systemFieldsOnlyRecord || ([systemFieldsOnlyRecord recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", dCopy), v10, v9, (v11 & 1) == 0))
  {
    v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingCompetitionList" zoneID:dCopy];

    v8 = v12;
  }

  _ASUpdateSchemaVersionOnRecord(1, v8, type);
  codableCompetitionList = [(ASCompetitionList *)self codableCompetitionList];
  data = [codableCompetitionList data];
  encryptedValues = [v8 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return v8;
}

+ (id)competitionListWithRecord:(id)record
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
      v8 = [[ASCodableCloudKitCompetitionList alloc] initWithData:v6];
      v7 = [ASCompetitionList competitionListWithCodableCompetitionList:v8];
      v9 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [recordCopy encodeSystemFieldsWithCoder:v9];
      [v9 finishEncoding];
      v10 = objc_alloc(MEMORY[0x277CCAAC8]);
      encodedData = [v9 encodedData];
      v16 = 0;
      v12 = [v10 initForReadingFromData:encodedData error:&v16];
      v13 = v16;

      if (v13)
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
        {
          +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
        }
      }

      v14 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v12];
      [v7 setSystemFieldsOnlyRecord:v14];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASCompetitionList(CloudKitCodingSupport) competitionListWithRecord:];
      }

      v7 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASCompetitionList(CloudKitCodingSupport) competitionListWithRecord:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)competitionListWithCodableCompetitionList:(id)list
{
  listCopy = list;
  v4 = objc_alloc_init(ASCompetitionList);
  competitions = [listCopy competitions];
  v6 = [competitions hk_map:&__block_literal_global_484];
  [(ASCompetitionList *)v4 setCompetitions:v6];

  v7 = MEMORY[0x277CCAD78];
  friendUUID = [listCopy friendUUID];
  v9 = [v7 hk_UUIDWithData:friendUUID];
  [(ASCompetitionList *)v4 setFriendUUID:v9];

  type = [listCopy type];
  [(ASCompetitionList *)v4 setType:type];

  return v4;
}

- (ASCodableCloudKitCompetitionList)codableCompetitionList
{
  v3 = objc_alloc_init(ASCodableCloudKitCompetitionList);
  competitions = [(ASCompetitionList *)self competitions];
  v5 = [competitions hk_map:&__block_literal_global_488];
  v6 = [v5 mutableCopy];
  [(ASCodableCloudKitCompetitionList *)v3 setCompetitions:v6];

  friendUUID = [(ASCompetitionList *)self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(ASCodableCloudKitCompetitionList *)v3 setFriendUUID:hk_dataForUUIDBytes];

  [(ASCodableCloudKitCompetitionList *)v3 setType:[(ASCompetitionList *)self type]];

  return v3;
}

+ (id)competitionListFromCodableDatabaseCompetitionList:(id)list codableCompetitions:(id)competitions withType:(int64_t)type
{
  v33 = *MEMORY[0x277D85DE8];
  listCopy = list;
  competitionsCopy = competitions;
  v9 = objc_alloc_init(ASCompetitionList);
  v10 = MEMORY[0x277CCAD78];
  friendUUID = [listCopy friendUUID];
  v12 = [v10 hk_UUIDWithData:friendUUID];
  [(ASCompetitionList *)v9 setFriendUUID:v12];

  [(ASCompetitionList *)v9 setType:type];
  v13 = objc_opt_class();
  v27 = listCopy;
  systemFieldsOnlyRecord = [listCopy systemFieldsOnlyRecord];
  v15 = ASSecureUnarchiveClassWithData(v13, systemFieldsOnlyRecord);
  [(ASCompetitionList *)v9 setSystemFieldsOnlyRecord:v15];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = competitionsCopy;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    v20 = MEMORY[0x277CBEBF8];
    do
    {
      v21 = 0;
      v22 = v20;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        competition = [*(*(&v28 + 1) + 8 * v21) competition];
        v24 = [ASCompetition competitionWithCodableCompetition:competition];

        v20 = [v22 arrayByAddingObject:v24];

        ++v21;
        v22 = v20;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  [(ASCompetitionList *)v9 setCompetitions:v20];
  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)codableDatabaseCompetitionListEntryForOwner:(int64_t)owner
{
  v5 = objc_alloc_init(ASCodableDatabaseCompetitionListEntry);
  friendUUID = [(ASCompetitionList *)self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(ASCodableDatabaseCompetitionListEntry *)v5 setFriendUUID:hk_dataForUUIDBytes];

  [(ASCodableDatabaseCompetitionListEntry *)v5 setType:[(ASCompetitionList *)self type]];
  v8 = MEMORY[0x277CCAAB0];
  systemFieldsOnlyRecord = [(ASCompetitionList *)self systemFieldsOnlyRecord];
  v10 = [v8 archivedDataWithRootObject:systemFieldsOnlyRecord requiringSecureCoding:1 error:0];
  [(ASCodableDatabaseCompetitionListEntry *)v5 setSystemFieldsOnlyRecord:v10];

  [(ASCodableDatabaseCompetitionListEntry *)v5 setOwner:owner];

  return v5;
}

- (ASCompetitionList)init
{
  v6.receiver = self;
  v6.super_class = ASCompetitionList;
  v2 = [(ASCompetitionList *)&v6 init];
  v3 = v2;
  if (v2)
  {
    competitions = v2->_competitions;
    v2->_competitions = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (ASCompetitionList)initWithFriendUUID:(id)d type:(int64_t)type
{
  dCopy = d;
  v8 = [(ASCompetitionList *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_friendUUID, d);
    v9->_type = type;
  }

  return v9;
}

- (ASCompetition)currentCompetition
{
  if ([(NSArray *)self->_competitions count]>= 2)
  {
    ASLoggingInitialize();
    v3 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      [(ASCompetitionList *)self currentCompetition];
    }
  }

  lastObject = [(NSArray *)self->_competitions lastObject];

  return lastObject;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setFriendUUID:self->_friendUUID];
  [v5 setType:self->_type];
  v6 = [(NSArray *)self->_competitions copyWithZone:zone];
  [v5 setCompetitions:v6];

  v7 = [(CKRecord *)self->_systemFieldsOnlyRecord copyWithZone:zone];
  [v5 setSystemFieldsOnlyRecord:v7];

  return v5;
}

- (void)currentCompetition
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Competition list contained an unexpected number of competitions, list: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
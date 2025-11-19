@interface ASCompetitionList
+ (id)competitionListFromCodableDatabaseCompetitionList:(id)a3 codableCompetitions:(id)a4 withType:(int64_t)a5;
+ (id)competitionListWithCodableCompetitionList:(id)a3;
+ (id)competitionListWithRecord:(id)a3;
- (ASCodableCloudKitCompetitionList)codableCompetitionList;
- (ASCompetition)currentCompetition;
- (ASCompetitionList)init;
- (ASCompetitionList)initWithFriendUUID:(id)a3 type:(int64_t)a4;
- (id)codableDatabaseCompetitionListEntryForOwner:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4;
- (void)currentCompetition;
@end

@implementation ASCompetitionList

- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(ASCompetitionList *)self systemFieldsOnlyRecord];
  v8 = v7;
  if (!v7 || ([v7 recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v6), v10, v9, (v11 & 1) == 0))
  {
    v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingCompetitionList" zoneID:v6];

    v8 = v12;
  }

  _ASUpdateSchemaVersionOnRecord(1, v8, a4);
  v13 = [(ASCompetitionList *)self codableCompetitionList];
  v14 = [v13 data];
  v15 = [v8 encryptedValues];
  [v15 setObject:v14 forKeyedSubscript:@"EncryptedData"];

  return v8;
}

+ (id)competitionListWithRecord:(id)a3
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
      v8 = [[ASCodableCloudKitCompetitionList alloc] initWithData:v6];
      v7 = [ASCompetitionList competitionListWithCodableCompetitionList:v8];
      v9 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v3 encodeSystemFieldsWithCoder:v9];
      [v9 finishEncoding];
      v10 = objc_alloc(MEMORY[0x277CCAAC8]);
      v11 = [v9 encodedData];
      v16 = 0;
      v12 = [v10 initForReadingFromData:v11 error:&v16];
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

+ (id)competitionListWithCodableCompetitionList:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASCompetitionList);
  v5 = [v3 competitions];
  v6 = [v5 hk_map:&__block_literal_global_484];
  [(ASCompetitionList *)v4 setCompetitions:v6];

  v7 = MEMORY[0x277CCAD78];
  v8 = [v3 friendUUID];
  v9 = [v7 hk_UUIDWithData:v8];
  [(ASCompetitionList *)v4 setFriendUUID:v9];

  v10 = [v3 type];
  [(ASCompetitionList *)v4 setType:v10];

  return v4;
}

- (ASCodableCloudKitCompetitionList)codableCompetitionList
{
  v3 = objc_alloc_init(ASCodableCloudKitCompetitionList);
  v4 = [(ASCompetitionList *)self competitions];
  v5 = [v4 hk_map:&__block_literal_global_488];
  v6 = [v5 mutableCopy];
  [(ASCodableCloudKitCompetitionList *)v3 setCompetitions:v6];

  v7 = [(ASCompetitionList *)self friendUUID];
  v8 = [v7 hk_dataForUUIDBytes];
  [(ASCodableCloudKitCompetitionList *)v3 setFriendUUID:v8];

  [(ASCodableCloudKitCompetitionList *)v3 setType:[(ASCompetitionList *)self type]];

  return v3;
}

+ (id)competitionListFromCodableDatabaseCompetitionList:(id)a3 codableCompetitions:(id)a4 withType:(int64_t)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(ASCompetitionList);
  v10 = MEMORY[0x277CCAD78];
  v11 = [v7 friendUUID];
  v12 = [v10 hk_UUIDWithData:v11];
  [(ASCompetitionList *)v9 setFriendUUID:v12];

  [(ASCompetitionList *)v9 setType:a5];
  v13 = objc_opt_class();
  v27 = v7;
  v14 = [v7 systemFieldsOnlyRecord];
  v15 = ASSecureUnarchiveClassWithData(v13, v14);
  [(ASCompetitionList *)v9 setSystemFieldsOnlyRecord:v15];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v8;
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

        v23 = [*(*(&v28 + 1) + 8 * v21) competition];
        v24 = [ASCompetition competitionWithCodableCompetition:v23];

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

- (id)codableDatabaseCompetitionListEntryForOwner:(int64_t)a3
{
  v5 = objc_alloc_init(ASCodableDatabaseCompetitionListEntry);
  v6 = [(ASCompetitionList *)self friendUUID];
  v7 = [v6 hk_dataForUUIDBytes];
  [(ASCodableDatabaseCompetitionListEntry *)v5 setFriendUUID:v7];

  [(ASCodableDatabaseCompetitionListEntry *)v5 setType:[(ASCompetitionList *)self type]];
  v8 = MEMORY[0x277CCAAB0];
  v9 = [(ASCompetitionList *)self systemFieldsOnlyRecord];
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
  [(ASCodableDatabaseCompetitionListEntry *)v5 setSystemFieldsOnlyRecord:v10];

  [(ASCodableDatabaseCompetitionListEntry *)v5 setOwner:a3];

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

- (ASCompetitionList)initWithFriendUUID:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v8 = [(ASCompetitionList *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_friendUUID, a3);
    v9->_type = a4;
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

  v4 = [(NSArray *)self->_competitions lastObject];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setFriendUUID:self->_friendUUID];
  [v5 setType:self->_type];
  v6 = [(NSArray *)self->_competitions copyWithZone:a3];
  [v5 setCompetitions:v6];

  v7 = [(CKRecord *)self->_systemFieldsOnlyRecord copyWithZone:a3];
  [v5 setSystemFieldsOnlyRecord:v7];

  return v5;
}

- (void)currentCompetition
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Competition list contained an unexpected number of competitions, list: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
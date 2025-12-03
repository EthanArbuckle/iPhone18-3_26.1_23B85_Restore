@interface ATXStableContactRepresentationDatastore
- (ATXStableContactRepresentationDatastore)initWithContactStore:(id)store;
- (ATXStableContactRepresentationDatastore)initWithStableContactRepresentationDatabase:(id)database contactStore:(id)store;
- (id)cnContactForCnContactId:(id)id rawIdentifier:(id)identifier;
- (id)refreshCnContactIdsGivenContactEntities:(id)entities;
- (id)stableContactRepresentationForCnContactId:(id)id rawIdentifier:(id)identifier;
- (id)stableContactRepresentationForStableContactIdentifier:(id)identifier;
- (id)updateAndGetStableContactIdentifier:(id)identifier rawIdentifier:(id)rawIdentifier;
@end

@implementation ATXStableContactRepresentationDatastore

- (ATXStableContactRepresentationDatastore)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = objc_opt_new();
  v6 = [(ATXStableContactRepresentationDatastore *)self initWithStableContactRepresentationDatabase:v5 contactStore:storeCopy];

  return v6;
}

- (ATXStableContactRepresentationDatastore)initWithStableContactRepresentationDatabase:(id)database contactStore:(id)store
{
  databaseCopy = database;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ATXStableContactRepresentationDatastore;
  v9 = [(ATXStableContactRepresentationDatastore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stableContactRepresentationDatabase, database);
    objc_storeStrong(&v10->_contactStore, store);
  }

  return v10;
}

- (id)cnContactForCnContactId:(id)id rawIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = *MEMORY[0x277CBD098];
  v16 = *MEMORY[0x277CBD018];
  v17 = v7;
  v18 = *MEMORY[0x277CBCFC0];
  v8 = MEMORY[0x277CBEA60];
  idCopy = id;
  v10 = [v8 arrayWithObjects:&v16 count:3];
  v11 = objc_alloc(MEMORY[0x277D3A088]);
  v12 = [v11 initWithContactStore:self->_contactStore keysToFetch:{v10, v16, v17, v18, v19}];
  v13 = [v12 contactWithIdentifier:idCopy];

  if (identifierCopy && !v13)
  {
    v13 = [v12 resolveContactIfPossibleFromContactIdentifierString:identifierCopy pickFirstOfMultiple:1];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)updateAndGetStableContactIdentifier:(id)identifier rawIdentifier:(id)rawIdentifier
{
  identifierCopy = identifier;
  rawIdentifierCopy = rawIdentifier;
  v8 = [(ATXStableContactRepresentationDatastore *)self stableContactIdentifierWithCnContactId:identifierCopy];
  if (!v8)
  {
    v11 = [(ATXStableContactRepresentationDatastore *)self cnContactForCnContactId:identifierCopy rawIdentifier:rawIdentifierCopy];
    v12 = v11;
    if (!v11)
    {
      v9 = 0;
      goto LABEL_15;
    }

    phoneNumbers = [v11 phoneNumbers];
    v14 = [phoneNumbers _pas_mappedArrayWithTransform:&__block_literal_global_63];

    emailAddresses = [v12 emailAddresses];
    v16 = [emailAddresses _pas_mappedArrayWithTransform:&__block_literal_global_20_0];

    if (v14 && [v14 count])
    {
      v17 = &__block_literal_global_23_2;
      v18 = v14;
    }

    else
    {
      if (!v16 || ![v16 count])
      {
        goto LABEL_12;
      }

      v17 = &__block_literal_global_25_0;
      v18 = v16;
    }

    v19 = [v18 sortedArrayUsingComparator:v17];
    firstObject = [v19 firstObject];
    v21 = [firstObject hash];

    if (v21)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v21];
      [(ATXStableContactRepresentationDatastore *)self insertCnContactIdToStableContactIdentifierWithCnContactId:identifierCopy stableContactIdentifier:v9];
LABEL_13:

LABEL_15:
      if (v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = identifierCopy;
      }

      v10 = v22;

      goto LABEL_19;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = v9;
LABEL_19:

  return v10;
}

id __93__ATXStableContactRepresentationDatastore_updateAndGetStableContactIdentifier_rawIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v3 stringValue];
  if ([v4 length])
  {
    v5 = [v2 value];
    v6 = [v5 stringValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __93__ATXStableContactRepresentationDatastore_updateAndGetStableContactIdentifier_rawIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  if ([v3 length])
  {
    v4 = [v2 value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stableContactRepresentationForCnContactId:(id)id rawIdentifier:(id)identifier
{
  idCopy = id;
  identifierCopy = identifier;
  if (idCopy)
  {
    v8 = [(ATXStableContactRepresentationDatastore *)self updateAndGetStableContactIdentifier:idCopy rawIdentifier:identifierCopy];
    v9 = [[ATXStableContactRepresentation alloc] initWithStableContactIdentifier:v8 cnContactId:idCopy rawIdentifier:identifierCopy];
  }

  else
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "cnContactId provided is nil", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)stableContactRepresentationForStableContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(ATXStableContactRepresentationDatastore *)self cnContactIdWithStableContactIdentifier:identifierCopy];
    v6 = [[ATXStableContactRepresentation alloc] initWithStableContactIdentifier:identifierCopy cnContactId:v5 rawIdentifier:0];
  }

  else
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "stableContactIdentifier provided is nil", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)refreshCnContactIdsGivenContactEntities:(id)entities
{
  v36[3] = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v5 = objc_opt_new();
  contactStore = self->_contactStore;
  v7 = objc_alloc(MEMORY[0x277CBDA70]);
  v8 = *MEMORY[0x277CBD098];
  v36[0] = *MEMORY[0x277CBD018];
  v36[1] = v8;
  v36[2] = *MEMORY[0x277CBCFC0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v10 = [v7 initWithKeysToFetch:v9];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __83__ATXStableContactRepresentationDatastore_refreshCnContactIdsGivenContactEntities___block_invoke;
  v27[3] = &unk_278599BD8;
  v27[4] = self;
  v11 = entitiesCopy;
  v28 = v11;
  v12 = v5;
  v29 = v12;
  [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v27];

  v13 = [v11 count];
  v14 = [v12 count];
  v15 = __atxlog_handle_notification_management();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v13 == v14)
  {
    if (v16)
    {
      v17 = [v12 count];
      *buf = 136315394;
      v31 = "[ATXStableContactRepresentationDatastore refreshCnContactIdsGivenContactEntities:]";
      v32 = 2048;
      v33 = v17;
      v18 = "%s: returning number of contactEntitesSeen = %lu";
      v19 = v15;
      v20 = 22;
LABEL_6:
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  else if (v16)
  {
    v21 = [v11 count];
    v22 = [v12 count];
    *buf = 136315650;
    v31 = "[ATXStableContactRepresentationDatastore refreshCnContactIdsGivenContactEntities:]";
    v32 = 2048;
    v33 = v21;
    v34 = 2048;
    v35 = v22;
    v18 = "%s: received %ld contact entities, but only found %ld associated contacts";
    v19 = v15;
    v20 = 32;
    goto LABEL_6;
  }

  v23 = v29;
  v24 = v12;

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

void __83__ATXStableContactRepresentationDatastore_refreshCnContactIdsGivenContactEntities___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v20 identifier];
  v6 = [v4 stableContactIdentifierWithCnContactId:v5];

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 32);
  v8 = [v20 identifier];
  v9 = [v20 phoneNumbers];
  v10 = [v9 firstObject];
  v11 = [v10 label];
  if (v11)
  {
    v12 = [v7 stableContactRepresentationForCnContactId:v8 rawIdentifier:v11];
  }

  else
  {
    v13 = [v20 emailAddresses];
    v14 = [v13 firstObject];
    v15 = [v14 label];
    v12 = [v7 stableContactRepresentationForCnContactId:v8 rawIdentifier:v15];
  }

  v6 = [v12 stableContactIdentifier];

  if (v6)
  {
LABEL_13:
    v16 = [*(a1 + 40) objectForKeyedSubscript:v6];

    if (v16)
    {
      v17 = [*(a1 + 40) objectForKeyedSubscript:v6];
      v18 = [v20 identifier];
      [v17 setCnContactId:v18];

      v19 = [*(a1 + 40) objectForKeyedSubscript:v6];
      [*(a1 + 48) setObject:v19 forKeyedSubscript:v6];
    }
  }

  objc_autoreleasePoolPop(v3);
}

@end
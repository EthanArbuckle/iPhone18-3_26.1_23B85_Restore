@interface AVTArchiverBasedStoreBackend
+ (id)classifyRecordsByIdentifiers:(id)identifiers;
+ (id)rootByRemovingAvatarWithIdentifier:(id)identifier fromRoot:(id)root;
+ (id)rootBySavingAvatarRecord:(id)record afterAvatarRecord:(id)avatarRecord forDomainIdentifier:(id)identifier toRoot:(id)root;
- (AVTArchiverBasedStoreBackend)initWithStoreLocation:(id)location domainIdentifier:(id)identifier environment:(id)environment;
- (BOOL)canCreateAvatarWithError:(id *)error;
- (BOOL)deleteAvatarWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)loadContentFromDisk:(id *)disk;
- (BOOL)loadContentFromDiskIfNeeded:(id *)needed;
- (BOOL)saveAvatar:(id)avatar error:(id *)error;
- (BOOL)saveAvatars:(id)avatars error:(id *)error;
- (BOOL)saveModel:(id)model logger:(id)logger error:(id *)error;
- (id)allAvatars;
- (id)avatarsExcludingIdentifiers:(id)identifiers error:(id *)error;
- (id)avatarsForFetchRequest:(id)request error:(id *)error;
- (id)avatarsWithIdentifiers:(id)identifiers error:(id *)error;
- (id)duplicateAvatarRecord:(id)record error:(id *)error;
- (unint64_t)avatarCountWithError:(id *)error;
- (void)loadModel:(id)model;
@end

@implementation AVTArchiverBasedStoreBackend

- (AVTArchiverBasedStoreBackend)initWithStoreLocation:(id)location domainIdentifier:(id)identifier environment:(id)environment
{
  locationCopy = location;
  identifierCopy = identifier;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTArchiverBasedStoreBackend;
  v12 = [(AVTArchiverBasedStoreBackend *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeLocation, location);
    objc_storeStrong(&v13->_domainIdentifier, identifier);
    objc_storeStrong(&v13->_environment, environment);
  }

  return v13;
}

- (BOOL)loadContentFromDiskIfNeeded:(id *)needed
{
  model = [(AVTArchiverBasedStoreBackend *)self model];

  if (model)
  {
    return 1;
  }

  return [(AVTArchiverBasedStoreBackend *)self loadContentFromDisk:needed];
}

- (BOOL)loadContentFromDisk:(id *)disk
{
  environment = [(AVTArchiverBasedStoreBackend *)self environment];
  logger = [environment logger];

  storeLocation = [(AVTArchiverBasedStoreBackend *)self storeLocation];
  v8 = [AVTArchiverBasedStorePersistence readContentFromDiskAtLocation:storeLocation logger:logger error:disk];

  if (v8)
  {
    [(AVTArchiverBasedStoreBackend *)self loadModel:v8];
  }

  return v8 != 0;
}

- (void)loadModel:(id)model
{
  modelCopy = model;
  records = [modelCopy records];
  v5 = [objc_opt_class() classifyRecordsByIdentifiers:records];
  [(AVTArchiverBasedStoreBackend *)self setModel:modelCopy];

  [(AVTArchiverBasedStoreBackend *)self setSortedAvatars:records];
  [(AVTArchiverBasedStoreBackend *)self setAvatarsByIdentifiers:v5];
}

- (id)avatarsForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:error])
  {
LABEL_14:
    allAvatars = 0;
    goto LABEL_17;
  }

  criteria = [requestCopy criteria];
  allAvatars = MEMORY[0x277CBEBF8];
  if (criteria > 3)
  {
    if (criteria == 7)
    {
      goto LABEL_17;
    }

    if (criteria != 6)
    {
      if (criteria != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    excludingIdentifiers = [requestCopy excludingIdentifiers];
    v10 = [(AVTArchiverBasedStoreBackend *)self avatarsExcludingIdentifiers:excludingIdentifiers error:error];
  }

  else
  {
    if ((criteria - 1) >= 2)
    {
      if (criteria)
      {
        if (criteria == 3)
        {
          goto LABEL_17;
        }

LABEL_12:
        if (error)
        {
          [AVTError errorWithCode:999 userInfo:0];
          *error = allAvatars = 0;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_10:
      allAvatars = [(AVTArchiverBasedStoreBackend *)self allAvatars];
      goto LABEL_17;
    }

    excludingIdentifiers = [requestCopy identifiers];
    v10 = [(AVTArchiverBasedStoreBackend *)self avatarsWithIdentifiers:excludingIdentifiers error:error];
  }

  allAvatars = v10;

LABEL_17:

  return allAvatars;
}

- (id)allAvatars
{
  sortedAvatars = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v3 = [sortedAvatars copy];

  return v3;
}

- (id)avatarsWithIdentifiers:(id)identifiers error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        sortedAvatars = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
        v12 = [AVTAvatarRecord matchingIdentifierTest:v10];
        v13 = [sortedAvatars indexOfObjectPassingTest:v12];

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v19 addObject:v10];
        }

        else
        {
          sortedAvatars2 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
          v15 = [sortedAvatars2 objectAtIndexedSubscript:v13];
          [v20 addObject:v15];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v16 = [v20 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)avatarsExcludingIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  sortedAvatars = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__AVTArchiverBasedStoreBackend_avatarsExcludingIdentifiers_error___block_invoke;
  v13[3] = &unk_278CFAB28;
  v14 = identifiersCopy;
  v7 = identifiersCopy;
  v8 = [sortedAvatars indexesOfObjectsPassingTest:v13];

  sortedAvatars2 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v10 = [sortedAvatars2 objectsAtIndexes:v8];

  v11 = [v10 copy];

  return v11;
}

BOOL __66__AVTArchiverBasedStoreBackend_avatarsExcludingIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 indexOfObject:v3] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)saveAvatars:(id)avatars error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  avatarsCopy = avatars;
  v7 = [avatarsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(avatarsCopy);
        }

        if (![(AVTArchiverBasedStoreBackend *)self saveAvatar:*(*(&v14 + 1) + 8 * i) error:error, v14])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [avatarsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)saveAvatar:(id)avatar error:(id *)error
{
  avatarCopy = avatar;
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:error])
  {
    goto LABEL_7;
  }

  sortedAvatars = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  identifier = [avatarCopy identifier];
  v9 = [AVTAvatarRecord matchingIdentifierTest:identifier];
  v10 = [sortedAvatars indexOfObjectPassingTest:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL && ![(AVTArchiverBasedStoreBackend *)self canCreateAvatarWithError:0])
  {
    if (error)
    {
      [AVTError errorWithCode:578 userInfo:0];
      *error = v17 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  environment = [(AVTArchiverBasedStoreBackend *)self environment];
  logger = [environment logger];

  v13 = objc_opt_class();
  domainIdentifier = [(AVTArchiverBasedStoreBackend *)self domainIdentifier];
  model = [(AVTArchiverBasedStoreBackend *)self model];
  v16 = [v13 rootBySavingAvatarRecord:avatarCopy afterAvatarRecord:0 forDomainIdentifier:domainIdentifier toRoot:model];

  v17 = [(AVTArchiverBasedStoreBackend *)self saveModel:v16 logger:logger error:error];
LABEL_8:

  return v17;
}

- (BOOL)deleteAvatarWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:error])
  {
    environment = [(AVTArchiverBasedStoreBackend *)self environment];
    logger = [environment logger];

    [logger logDeletingRecordWithIdentifier:identifierCopy];
    v9 = objc_opt_class();
    model = [(AVTArchiverBasedStoreBackend *)self model];
    v11 = [v9 rootByRemovingAvatarWithIdentifier:identifierCopy fromRoot:model];

    v12 = [(AVTArchiverBasedStoreBackend *)self saveModel:v11 logger:logger error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)duplicateAvatarRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:error])
  {
    goto LABEL_9;
  }

  if ([(AVTArchiverBasedStoreBackend *)self canCreateAvatarWithError:0])
  {
    environment = [(AVTArchiverBasedStoreBackend *)self environment];
    logger = [environment logger];

    identifier = [recordCopy identifier];
    [logger logDuplicatingRecordWithIdentifier:identifier];

    v10 = [AVTAvatarRecord alloc];
    avatarData = [recordCopy avatarData];
    v12 = [avatarData copy];
    orderDate = [recordCopy orderDate];
    v14 = [orderDate dateByAddingTimeInterval:0.5];
    v15 = [(AVTAvatarRecord *)v10 initWithAvatarData:v12 orderDate:v14];

    v16 = objc_opt_class();
    domainIdentifier = [(AVTArchiverBasedStoreBackend *)self domainIdentifier];
    model = [(AVTArchiverBasedStoreBackend *)self model];
    v19 = [v16 rootBySavingAvatarRecord:v15 afterAvatarRecord:recordCopy forDomainIdentifier:domainIdentifier toRoot:model];

    if ([(AVTArchiverBasedStoreBackend *)self saveModel:v19 logger:logger error:error])
    {
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    goto LABEL_10;
  }

  if (error)
  {
    [AVTError errorWithCode:578 userInfo:0];
    *error = v21 = 0;
  }

  else
  {
LABEL_9:
    v21 = 0;
  }

LABEL_10:

  return v21;
}

- (BOOL)canCreateAvatarWithError:(id *)error
{
  if ([(AVTArchiverBasedStoreBackend *)self avatarCountWithError:error]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  sortedAvatars = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v6 = [sortedAvatars count];
  v4 = v6 < [objc_opt_class() maximumNumberOfSavableAvatars];

  return v4;
}

- (BOOL)saveModel:(id)model logger:(id)logger error:(id *)error
{
  modelCopy = model;
  loggerCopy = logger;
  storeLocation = [(AVTArchiverBasedStoreBackend *)self storeLocation];
  v11 = [AVTArchiverBasedStorePersistence writeContent:modelCopy toDiskAtLocation:storeLocation logger:loggerCopy error:error];

  if (v11)
  {
    [(AVTArchiverBasedStoreBackend *)self loadModel:modelCopy];
  }

  return v11;
}

- (unint64_t)avatarCountWithError:(id *)error
{
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:error])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sortedAvatars = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v5 = [sortedAvatars count];

  return v5;
}

+ (id)rootBySavingAvatarRecord:(id)record afterAvatarRecord:(id)avatarRecord forDomainIdentifier:(id)identifier toRoot:(id)root
{
  recordCopy = record;
  avatarRecordCopy = avatarRecord;
  identifierCopy = identifier;
  rootCopy = root;
  domains = [rootCopy domains];
  v14 = [domains mutableCopy];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __102__AVTArchiverBasedStoreBackend_rootBySavingAvatarRecord_afterAvatarRecord_forDomainIdentifier_toRoot___block_invoke;
  v39[3] = &unk_278CFAB78;
  v15 = identifierCopy;
  v40 = v15;
  v16 = [v14 indexOfObjectPassingTest:v39];
  v38 = v15;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [AVTArchiverBasedDomain alloc];
    identifier = [recordCopy identifier];
    v19 = [(AVTArchiverBasedDomain *)v17 initWithDomainIdentifier:v15 primaryAvatarIdentifier:identifier];

    v37 = v19;
    [v14 addObject:v19];
  }

  else
  {
    v20 = v16;
    v21 = [v14 objectAtIndexedSubscript:v16];
    identifier2 = [recordCopy identifier];
    v23 = [v21 domainBySettingPrimaryAvatarIdentifier:identifier2];

    v37 = v23;
    [v14 replaceObjectAtIndex:v20 withObject:v23];
  }

  records = [rootCopy records];

  v25 = [records mutableCopy];
  identifier3 = [recordCopy identifier];
  v27 = [AVTAvatarRecord matchingIdentifierTest:identifier3];
  v28 = [v25 indexOfObjectPassingTest:v27];

  v29 = [v25 count];
  if (avatarRecordCopy)
  {
    v30 = avatarRecordCopy;
    identifier4 = [avatarRecordCopy identifier];
    v32 = [AVTAvatarRecord matchingIdentifierTest:identifier4];
    v33 = [v25 indexOfObjectPassingTest:v32];
  }

  else
  {
    v30 = 0;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = v29;
    }

    else
    {
      v34 = v33 + 1;
    }

    [v25 insertObject:recordCopy atIndex:v34];
  }

  else
  {
    [v25 replaceObjectAtIndex:v28 withObject:recordCopy];
  }

  v35 = [[AVTArchiverBasedStoreRoot alloc] initWithDomains:v14 records:v25];

  return v35;
}

uint64_t __102__AVTArchiverBasedStoreBackend_rootBySavingAvatarRecord_afterAvatarRecord_forDomainIdentifier_toRoot___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 domainIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)rootByRemovingAvatarWithIdentifier:(id)identifier fromRoot:(id)root
{
  identifierCopy = identifier;
  rootCopy = root;
  records = [rootCopy records];
  v8 = [records mutableCopy];

  v9 = [AVTAvatarRecord matchingIdentifierTest:identifierCopy];
  v10 = [v8 indexOfObjectPassingTest:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = rootCopy;
  }

  else
  {
    [v8 removeObjectAtIndex:v10];
    domains = [rootCopy domains];
    v13 = [domains mutableCopy];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__AVTArchiverBasedStoreBackend_rootByRemovingAvatarWithIdentifier_fromRoot___block_invoke;
    v23[3] = &unk_278CFAB78;
    v24 = identifierCopy;
    v14 = [v13 indexesOfObjectsPassingTest:v23];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __76__AVTArchiverBasedStoreBackend_rootByRemovingAvatarWithIdentifier_fromRoot___block_invoke_2;
    v21 = &unk_278CFABA0;
    v22 = v13;
    v15 = v13;
    [v14 enumerateIndexesUsingBlock:&v18];
    v16 = [AVTArchiverBasedStoreRoot alloc];
    v11 = [(AVTArchiverBasedStoreRoot *)v16 initWithDomains:v15 records:v8, v18, v19, v20, v21];
  }

  return v11;
}

uint64_t __76__AVTArchiverBasedStoreBackend_rootByRemovingAvatarWithIdentifier_fromRoot___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 primaryAvatarIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __76__AVTArchiverBasedStoreBackend_rootByRemovingAvatarWithIdentifier_fromRoot___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndex:a2];
  v4 = [AVTArchiverBasedDomain alloc];
  v5 = [v7 domainIdentifier];
  v6 = [(AVTArchiverBasedDomain *)v4 initWithDomainIdentifier:v5 primaryAvatarIdentifier:0];

  [*(a1 + 32) replaceObjectAtIndex:a2 withObject:v6];
}

+ (id)classifyRecordsByIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end
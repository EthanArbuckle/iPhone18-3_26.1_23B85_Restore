@interface AVTArchiverBasedStoreBackend
+ (id)classifyRecordsByIdentifiers:(id)a3;
+ (id)rootByRemovingAvatarWithIdentifier:(id)a3 fromRoot:(id)a4;
+ (id)rootBySavingAvatarRecord:(id)a3 afterAvatarRecord:(id)a4 forDomainIdentifier:(id)a5 toRoot:(id)a6;
- (AVTArchiverBasedStoreBackend)initWithStoreLocation:(id)a3 domainIdentifier:(id)a4 environment:(id)a5;
- (BOOL)canCreateAvatarWithError:(id *)a3;
- (BOOL)deleteAvatarWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)loadContentFromDisk:(id *)a3;
- (BOOL)loadContentFromDiskIfNeeded:(id *)a3;
- (BOOL)saveAvatar:(id)a3 error:(id *)a4;
- (BOOL)saveAvatars:(id)a3 error:(id *)a4;
- (BOOL)saveModel:(id)a3 logger:(id)a4 error:(id *)a5;
- (id)allAvatars;
- (id)avatarsExcludingIdentifiers:(id)a3 error:(id *)a4;
- (id)avatarsForFetchRequest:(id)a3 error:(id *)a4;
- (id)avatarsWithIdentifiers:(id)a3 error:(id *)a4;
- (id)duplicateAvatarRecord:(id)a3 error:(id *)a4;
- (unint64_t)avatarCountWithError:(id *)a3;
- (void)loadModel:(id)a3;
@end

@implementation AVTArchiverBasedStoreBackend

- (AVTArchiverBasedStoreBackend)initWithStoreLocation:(id)a3 domainIdentifier:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTArchiverBasedStoreBackend;
  v12 = [(AVTArchiverBasedStoreBackend *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeLocation, a3);
    objc_storeStrong(&v13->_domainIdentifier, a4);
    objc_storeStrong(&v13->_environment, a5);
  }

  return v13;
}

- (BOOL)loadContentFromDiskIfNeeded:(id *)a3
{
  v5 = [(AVTArchiverBasedStoreBackend *)self model];

  if (v5)
  {
    return 1;
  }

  return [(AVTArchiverBasedStoreBackend *)self loadContentFromDisk:a3];
}

- (BOOL)loadContentFromDisk:(id *)a3
{
  v5 = [(AVTArchiverBasedStoreBackend *)self environment];
  v6 = [v5 logger];

  v7 = [(AVTArchiverBasedStoreBackend *)self storeLocation];
  v8 = [AVTArchiverBasedStorePersistence readContentFromDiskAtLocation:v7 logger:v6 error:a3];

  if (v8)
  {
    [(AVTArchiverBasedStoreBackend *)self loadModel:v8];
  }

  return v8 != 0;
}

- (void)loadModel:(id)a3
{
  v4 = a3;
  v6 = [v4 records];
  v5 = [objc_opt_class() classifyRecordsByIdentifiers:v6];
  [(AVTArchiverBasedStoreBackend *)self setModel:v4];

  [(AVTArchiverBasedStoreBackend *)self setSortedAvatars:v6];
  [(AVTArchiverBasedStoreBackend *)self setAvatarsByIdentifiers:v5];
}

- (id)avatarsForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:a4])
  {
LABEL_14:
    v8 = 0;
    goto LABEL_17;
  }

  v7 = [v6 criteria];
  v8 = MEMORY[0x277CBEBF8];
  if (v7 > 3)
  {
    if (v7 == 7)
    {
      goto LABEL_17;
    }

    if (v7 != 6)
    {
      if (v7 != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v9 = [v6 excludingIdentifiers];
    v10 = [(AVTArchiverBasedStoreBackend *)self avatarsExcludingIdentifiers:v9 error:a4];
  }

  else
  {
    if ((v7 - 1) >= 2)
    {
      if (v7)
      {
        if (v7 == 3)
        {
          goto LABEL_17;
        }

LABEL_12:
        if (a4)
        {
          [AVTError errorWithCode:999 userInfo:0];
          *a4 = v8 = 0;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_10:
      v8 = [(AVTArchiverBasedStoreBackend *)self allAvatars];
      goto LABEL_17;
    }

    v9 = [v6 identifiers];
    v10 = [(AVTArchiverBasedStoreBackend *)self avatarsWithIdentifiers:v9 error:a4];
  }

  v8 = v10;

LABEL_17:

  return v8;
}

- (id)allAvatars
{
  v2 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v3 = [v2 copy];

  return v3;
}

- (id)avatarsWithIdentifiers:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
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
        v11 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
        v12 = [AVTAvatarRecord matchingIdentifierTest:v10];
        v13 = [v11 indexOfObjectPassingTest:v12];

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v19 addObject:v10];
        }

        else
        {
          v14 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
          v15 = [v14 objectAtIndexedSubscript:v13];
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

- (id)avatarsExcludingIdentifiers:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__AVTArchiverBasedStoreBackend_avatarsExcludingIdentifiers_error___block_invoke;
  v13[3] = &unk_278CFAB28;
  v14 = v5;
  v7 = v5;
  v8 = [v6 indexesOfObjectsPassingTest:v13];

  v9 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v10 = [v9 objectsAtIndexes:v8];

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

- (BOOL)saveAvatars:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        if (![(AVTArchiverBasedStoreBackend *)self saveAvatar:*(*(&v14 + 1) + 8 * i) error:a4, v14])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)saveAvatar:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:a4])
  {
    goto LABEL_7;
  }

  v7 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v8 = [v6 identifier];
  v9 = [AVTAvatarRecord matchingIdentifierTest:v8];
  v10 = [v7 indexOfObjectPassingTest:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL && ![(AVTArchiverBasedStoreBackend *)self canCreateAvatarWithError:0])
  {
    if (a4)
    {
      [AVTError errorWithCode:578 userInfo:0];
      *a4 = v17 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v11 = [(AVTArchiverBasedStoreBackend *)self environment];
  v12 = [v11 logger];

  v13 = objc_opt_class();
  v14 = [(AVTArchiverBasedStoreBackend *)self domainIdentifier];
  v15 = [(AVTArchiverBasedStoreBackend *)self model];
  v16 = [v13 rootBySavingAvatarRecord:v6 afterAvatarRecord:0 forDomainIdentifier:v14 toRoot:v15];

  v17 = [(AVTArchiverBasedStoreBackend *)self saveModel:v16 logger:v12 error:a4];
LABEL_8:

  return v17;
}

- (BOOL)deleteAvatarWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:a4])
  {
    v7 = [(AVTArchiverBasedStoreBackend *)self environment];
    v8 = [v7 logger];

    [v8 logDeletingRecordWithIdentifier:v6];
    v9 = objc_opt_class();
    v10 = [(AVTArchiverBasedStoreBackend *)self model];
    v11 = [v9 rootByRemovingAvatarWithIdentifier:v6 fromRoot:v10];

    v12 = [(AVTArchiverBasedStoreBackend *)self saveModel:v11 logger:v8 error:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)duplicateAvatarRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:a4])
  {
    goto LABEL_9;
  }

  if ([(AVTArchiverBasedStoreBackend *)self canCreateAvatarWithError:0])
  {
    v7 = [(AVTArchiverBasedStoreBackend *)self environment];
    v8 = [v7 logger];

    v9 = [v6 identifier];
    [v8 logDuplicatingRecordWithIdentifier:v9];

    v10 = [AVTAvatarRecord alloc];
    v11 = [v6 avatarData];
    v12 = [v11 copy];
    v13 = [v6 orderDate];
    v14 = [v13 dateByAddingTimeInterval:0.5];
    v15 = [(AVTAvatarRecord *)v10 initWithAvatarData:v12 orderDate:v14];

    v16 = objc_opt_class();
    v17 = [(AVTArchiverBasedStoreBackend *)self domainIdentifier];
    v18 = [(AVTArchiverBasedStoreBackend *)self model];
    v19 = [v16 rootBySavingAvatarRecord:v15 afterAvatarRecord:v6 forDomainIdentifier:v17 toRoot:v18];

    if ([(AVTArchiverBasedStoreBackend *)self saveModel:v19 logger:v8 error:a4])
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

  if (a4)
  {
    [AVTError errorWithCode:578 userInfo:0];
    *a4 = v21 = 0;
  }

  else
  {
LABEL_9:
    v21 = 0;
  }

LABEL_10:

  return v21;
}

- (BOOL)canCreateAvatarWithError:(id *)a3
{
  if ([(AVTArchiverBasedStoreBackend *)self avatarCountWithError:a3]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v6 = [v5 count];
  v4 = v6 < [objc_opt_class() maximumNumberOfSavableAvatars];

  return v4;
}

- (BOOL)saveModel:(id)a3 logger:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(AVTArchiverBasedStoreBackend *)self storeLocation];
  v11 = [AVTArchiverBasedStorePersistence writeContent:v8 toDiskAtLocation:v10 logger:v9 error:a5];

  if (v11)
  {
    [(AVTArchiverBasedStoreBackend *)self loadModel:v8];
  }

  return v11;
}

- (unint64_t)avatarCountWithError:(id *)a3
{
  if (![(AVTArchiverBasedStoreBackend *)self loadContentFromDiskIfNeeded:a3])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(AVTArchiverBasedStoreBackend *)self sortedAvatars];
  v5 = [v4 count];

  return v5;
}

+ (id)rootBySavingAvatarRecord:(id)a3 afterAvatarRecord:(id)a4 forDomainIdentifier:(id)a5 toRoot:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 domains];
  v14 = [v13 mutableCopy];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __102__AVTArchiverBasedStoreBackend_rootBySavingAvatarRecord_afterAvatarRecord_forDomainIdentifier_toRoot___block_invoke;
  v39[3] = &unk_278CFAB78;
  v15 = v11;
  v40 = v15;
  v16 = [v14 indexOfObjectPassingTest:v39];
  v38 = v15;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [AVTArchiverBasedDomain alloc];
    v18 = [v9 identifier];
    v19 = [(AVTArchiverBasedDomain *)v17 initWithDomainIdentifier:v15 primaryAvatarIdentifier:v18];

    v37 = v19;
    [v14 addObject:v19];
  }

  else
  {
    v20 = v16;
    v21 = [v14 objectAtIndexedSubscript:v16];
    v22 = [v9 identifier];
    v23 = [v21 domainBySettingPrimaryAvatarIdentifier:v22];

    v37 = v23;
    [v14 replaceObjectAtIndex:v20 withObject:v23];
  }

  v24 = [v12 records];

  v25 = [v24 mutableCopy];
  v26 = [v9 identifier];
  v27 = [AVTAvatarRecord matchingIdentifierTest:v26];
  v28 = [v25 indexOfObjectPassingTest:v27];

  v29 = [v25 count];
  if (v10)
  {
    v30 = v10;
    v31 = [v10 identifier];
    v32 = [AVTAvatarRecord matchingIdentifierTest:v31];
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

    [v25 insertObject:v9 atIndex:v34];
  }

  else
  {
    [v25 replaceObjectAtIndex:v28 withObject:v9];
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

+ (id)rootByRemovingAvatarWithIdentifier:(id)a3 fromRoot:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 records];
  v8 = [v7 mutableCopy];

  v9 = [AVTAvatarRecord matchingIdentifierTest:v5];
  v10 = [v8 indexOfObjectPassingTest:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v6;
  }

  else
  {
    [v8 removeObjectAtIndex:v10];
    v12 = [v6 domains];
    v13 = [v12 mutableCopy];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__AVTArchiverBasedStoreBackend_rootByRemovingAvatarWithIdentifier_fromRoot___block_invoke;
    v23[3] = &unk_278CFAB78;
    v24 = v5;
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

+ (id)classifyRecordsByIdentifiers:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
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
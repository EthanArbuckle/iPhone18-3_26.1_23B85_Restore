@interface ABSAddressBookContextStorage
- (ABSAddressBookContextStorage)init;
- (BOOL)addMemberRecord:(id)a3 toRecord:(id)a4;
- (BOOL)addRecord:(id)a3;
- (BOOL)deleteRecord:(id)a3;
- (BOOL)recordUpdated:(id)a3;
- (BOOL)removeMemberRecord:(id)a3 fromRecord:(id)a4;
- (NSArray)recordsWithPendingMembershipAdditions;
- (NSArray)recordsWithPendingMembershipDeletions;
- (id)addedMembersForRecord:(id)a3;
- (id)cnImplFetched:(id)a3 creationBlock:(id)a4;
- (id)recordFetched:(id)a3;
- (id)removedMembersForRecord:(id)a3;
- (void)_resetIncludingLivingRecords:(BOOL)a3;
- (void)commitPendingChanges;
- (void)revert;
@end

@implementation ABSAddressBookContextStorage

- (ABSAddressBookContextStorage)init
{
  v19.receiver = self;
  v19.super_class = ABSAddressBookContextStorage;
  v2 = [(ABSAddressBookContextStorage *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    addedMemberships = v2->_addedMemberships;
    v2->_addedMemberships = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    records = v2->_records;
    v2->_records = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deletedRecords = v2->_deletedRecords;
    v2->_deletedRecords = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updatedRecords = v2->_updatedRecords;
    v2->_updatedRecords = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    insertedRecords = v2->_insertedRecords;
    v2->_insertedRecords = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deletedMemberships = v2->_deletedMemberships;
    v2->_deletedMemberships = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    revertedRecords = v2->_revertedRecords;
    v2->_revertedRecords = v15;

    v17 = v2;
  }

  return v2;
}

- (BOOL)addRecord:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(ABSAddressBookContextStorage *)self insertedRecords];
    [v6 addObject:v5];

    [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
  }

  return a3 != 0;
}

- (BOOL)recordUpdated:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "id")}];
  v7 = [(ABSAddressBookContextStorage *)self records];
  v8 = [v7 objectForKey:v6];

  v9 = v8 == v5;
  if (v8 == v5)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_5;
    }

    v10 = [(ABSAddressBookContextStorage *)self updatedRecords];
    [v10 setObject:v8 forKey:v6];

    [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
  }

LABEL_5:
  return v9;
}

- (id)cnImplFetched:(id)a3 creationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 iOSLegacyIdentifier] == -1)
  {
    v15 = +[ABSLog log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ABSAddressBookContextStorage cnImplFetched:v15 creationBlock:?];
    }

    v10 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "iOSLegacyIdentifier")}];
    v9 = [(ABSAddressBookContextStorage *)self records];
    v10 = [v9 objectForKey:v8];

    if (!v10)
    {
      v11 = [(ABSAddressBookContextStorage *)self revertedRecords];
      v12 = [v11 objectForKey:v8];

      if (v12)
      {
        v13 = [(ABSAddressBookContextStorage *)self revertedRecords];
        [v13 removeObjectForKey:v8];

        [v12 replaceRecordStorageWithCNObject:v6];
        v14 = v12;
      }

      else
      {
        v14 = v7[2](v7, v6);
      }

      v10 = v14;
      v16 = [(ABSAddressBookContextStorage *)self records];
      [v16 setObject:v10 forKey:v8];
    }
  }

  return v10;
}

- (id)recordFetched:(id)a3
{
  v4 = a3;
  if ([v4 id] == -1)
  {
    NSLog(&cfstr_RecordWithInva.isa);
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "id")}];
    if (v4)
    {
      v6 = [(ABSAddressBookContextStorage *)self records];
      v7 = [v6 objectForKey:v5];

      if (!v7)
      {
        v8 = [(ABSAddressBookContextStorage *)self revertedRecords];
        v9 = [v8 objectForKey:v5];

        if (v9)
        {
          v10 = [(ABSAddressBookContextStorage *)self revertedRecords];
          [v10 removeObjectForKey:v5];

          v11 = [v4 cnImpl];
          [v9 replaceRecordStorageWithCNObject:v11];

          v12 = v9;
          v4 = v12;
        }

        v13 = [(ABSAddressBookContextStorage *)self records];
        [v13 setObject:v4 forKey:v5];
      }
    }
  }

  return v4;
}

- (BOOL)deleteRecord:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "id")}];
  v6 = [(ABSAddressBookContextStorage *)self records];
  v7 = [v6 objectForKey:v5];

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v9 = [(ABSAddressBookContextStorage *)self insertedRecords];
    v10 = [v9 indexOfObject:v4];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v11 = [(ABSAddressBookContextStorage *)self insertedRecords];
      v7 = [v11 objectAtIndex:v10];

      v8 = v10;
    }
  }

  v12 = v7 == v4;
  if (v7 != v4)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [(ABSAddressBookContextStorage *)self records];
      [v13 removeObjectForKey:v5];

      v14 = [(ABSAddressBookContextStorage *)self deletedRecords];
      [v14 setObject:v7 forKey:v5];
    }

    else
    {
      v14 = [(ABSAddressBookContextStorage *)self insertedRecords];
      [v14 removeObjectAtIndex:v8];
    }

    [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (BOOL)addMemberRecord:(id)a3 toRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "id")}];
  v9 = [v6 CNIdentifierString];
  v10 = 0;
  if (v6 && v7)
  {
    v11 = [(ABSAddressBookContextStorage *)self records];
    v12 = [v11 objectForKey:v8];

    if (v12 == v7)
    {
      v13 = [(ABSAddressBookContextStorage *)self addedMemberships];
      v14 = [v13 objectForKey:v8];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v15 = [(ABSAddressBookContextStorage *)self addedMemberships];
        [v15 setObject:v14 forKey:v8];
      }

      v16 = [v14 objectForKey:v9];
      v10 = v16 == 0;

      [v14 setObject:v6 forKey:v9];
      v17 = [(ABSAddressBookContextStorage *)self deletedMemberships];
      v18 = [v17 objectForKey:v8];

      [v18 removeObjectForKey:v9];
      [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)removeMemberRecord:(id)a3 fromRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "id")}];
  v9 = [v6 CNIdentifierString];
  v10 = 0;
  if (v6 && v7)
  {
    v11 = [(ABSAddressBookContextStorage *)self records];
    v12 = [v11 objectForKey:v8];

    if (v12 == v7)
    {
      v13 = [(ABSAddressBookContextStorage *)self deletedMemberships];
      v14 = [v13 objectForKey:v8];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v15 = [(ABSAddressBookContextStorage *)self deletedMemberships];
        [v15 setObject:v14 forKey:v8];
      }

      v16 = [v14 objectForKey:v9];
      v10 = v16 == 0;

      [v14 setObject:v6 forKey:v9];
      v17 = [(ABSAddressBookContextStorage *)self addedMemberships];
      v18 = [v17 objectForKey:v8];

      [v18 removeObjectForKey:v9];
      [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSArray)recordsWithPendingMembershipAdditions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ABSAddressBookContextStorage *)self addedMemberships];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ABSAddressBookContextStorage_recordsWithPendingMembershipAdditions__block_invoke;
  v9[3] = &unk_278A04B00;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __69__ABSAddressBookContextStorage_recordsWithPendingMembershipAdditions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 records];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

- (NSArray)recordsWithPendingMembershipDeletions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ABSAddressBookContextStorage *)self deletedMemberships];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ABSAddressBookContextStorage_recordsWithPendingMembershipDeletions__block_invoke;
  v9[3] = &unk_278A04B00;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __69__ABSAddressBookContextStorage_recordsWithPendingMembershipDeletions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 records];
  v7 = [v5 objectForKey:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

- (id)addedMembersForRecord:(id)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a3, "id")}];
  v5 = [(ABSAddressBookContextStorage *)self addedMemberships];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 allValues];

  return v7;
}

- (id)removedMembersForRecord:(id)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a3, "id")}];
  v5 = [(ABSAddressBookContextStorage *)self deletedMemberships];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 allValues];

  return v7;
}

- (void)_resetIncludingLivingRecords:(BOOL)a3
{
  v3 = a3;
  v5 = [(ABSAddressBookContextStorage *)self deletedRecords];
  [v5 removeAllObjects];

  v6 = [(ABSAddressBookContextStorage *)self insertedRecords];
  [v6 removeAllObjects];

  v7 = [(ABSAddressBookContextStorage *)self updatedRecords];
  [v7 removeAllObjects];

  v8 = [(ABSAddressBookContextStorage *)self deletedMemberships];
  [v8 removeAllObjects];

  v9 = [(ABSAddressBookContextStorage *)self addedMemberships];
  [v9 removeAllObjects];

  if (v3)
  {
    v10 = [(ABSAddressBookContextStorage *)self records];
    [v10 removeAllObjects];
  }

  [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:0];
}

- (void)commitPendingChanges
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(ABSAddressBookContextStorage *)self insertedRecords];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 id] != -1)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "id")}];
          v10 = [(ABSAddressBookContextStorage *)self records];
          [v10 setObject:v8 forKey:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(ABSAddressBookContextStorage *)self deletedRecords];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if ([v16 intValue] != -1)
        {
          v17 = [(ABSAddressBookContextStorage *)self records];
          [v17 removeObjectForKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [(ABSAddressBookContextStorage *)self _resetIncludingLivingRecords:0];
}

- (void)revert
{
  v3 = [(ABSAddressBookContextStorage *)self records];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  v4 = [(ABSAddressBookContextStorage *)self revertedRecords];
  v5 = [(ABSAddressBookContextStorage *)self records];
  [v4 addEntriesFromDictionary:v5];

  v6 = [(ABSAddressBookContextStorage *)self deletedRecords];
  [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7_0];

  v7 = [(ABSAddressBookContextStorage *)self revertedRecords];
  v8 = [(ABSAddressBookContextStorage *)self deletedRecords];
  [v7 addEntriesFromDictionary:v8];

  [(ABSAddressBookContextStorage *)self _resetIncludingLivingRecords:1];
}

@end
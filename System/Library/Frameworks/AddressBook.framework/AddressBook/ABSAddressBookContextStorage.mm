@interface ABSAddressBookContextStorage
- (ABSAddressBookContextStorage)init;
- (BOOL)addMemberRecord:(id)record toRecord:(id)toRecord;
- (BOOL)addRecord:(id)record;
- (BOOL)deleteRecord:(id)record;
- (BOOL)recordUpdated:(id)updated;
- (BOOL)removeMemberRecord:(id)record fromRecord:(id)fromRecord;
- (NSArray)recordsWithPendingMembershipAdditions;
- (NSArray)recordsWithPendingMembershipDeletions;
- (id)addedMembersForRecord:(id)record;
- (id)cnImplFetched:(id)fetched creationBlock:(id)block;
- (id)recordFetched:(id)fetched;
- (id)removedMembersForRecord:(id)record;
- (void)_resetIncludingLivingRecords:(BOOL)records;
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

- (BOOL)addRecord:(id)record
{
  if (record)
  {
    recordCopy = record;
    insertedRecords = [(ABSAddressBookContextStorage *)self insertedRecords];
    [insertedRecords addObject:recordCopy];

    [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
  }

  return record != 0;
}

- (BOOL)recordUpdated:(id)updated
{
  v4 = MEMORY[0x277CCABB0];
  updatedCopy = updated;
  v6 = [v4 numberWithInt:{objc_msgSend(updatedCopy, "id")}];
  records = [(ABSAddressBookContextStorage *)self records];
  v8 = [records objectForKey:v6];

  v9 = v8 == updatedCopy;
  if (v8 == updatedCopy)
  {
    if (!updatedCopy)
    {
      v9 = 0;
      goto LABEL_5;
    }

    updatedRecords = [(ABSAddressBookContextStorage *)self updatedRecords];
    [updatedRecords setObject:v8 forKey:v6];

    [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
  }

LABEL_5:
  return v9;
}

- (id)cnImplFetched:(id)fetched creationBlock:(id)block
{
  fetchedCopy = fetched;
  blockCopy = block;
  if ([fetchedCopy iOSLegacyIdentifier] == -1)
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
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(fetchedCopy, "iOSLegacyIdentifier")}];
    records = [(ABSAddressBookContextStorage *)self records];
    v10 = [records objectForKey:v8];

    if (!v10)
    {
      revertedRecords = [(ABSAddressBookContextStorage *)self revertedRecords];
      v12 = [revertedRecords objectForKey:v8];

      if (v12)
      {
        revertedRecords2 = [(ABSAddressBookContextStorage *)self revertedRecords];
        [revertedRecords2 removeObjectForKey:v8];

        [v12 replaceRecordStorageWithCNObject:fetchedCopy];
        v14 = v12;
      }

      else
      {
        v14 = blockCopy[2](blockCopy, fetchedCopy);
      }

      v10 = v14;
      records2 = [(ABSAddressBookContextStorage *)self records];
      [records2 setObject:v10 forKey:v8];
    }
  }

  return v10;
}

- (id)recordFetched:(id)fetched
{
  fetchedCopy = fetched;
  if ([fetchedCopy id] == -1)
  {
    NSLog(&cfstr_RecordWithInva.isa);
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(fetchedCopy, "id")}];
    if (fetchedCopy)
    {
      records = [(ABSAddressBookContextStorage *)self records];
      v7 = [records objectForKey:v5];

      if (!v7)
      {
        revertedRecords = [(ABSAddressBookContextStorage *)self revertedRecords];
        v9 = [revertedRecords objectForKey:v5];

        if (v9)
        {
          revertedRecords2 = [(ABSAddressBookContextStorage *)self revertedRecords];
          [revertedRecords2 removeObjectForKey:v5];

          cnImpl = [fetchedCopy cnImpl];
          [v9 replaceRecordStorageWithCNObject:cnImpl];

          v12 = v9;
          fetchedCopy = v12;
        }

        records2 = [(ABSAddressBookContextStorage *)self records];
        [records2 setObject:fetchedCopy forKey:v5];
      }
    }
  }

  return fetchedCopy;
}

- (BOOL)deleteRecord:(id)record
{
  recordCopy = record;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(recordCopy, "id")}];
  records = [(ABSAddressBookContextStorage *)self records];
  v7 = [records objectForKey:v5];

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v7)
  {
    insertedRecords = [(ABSAddressBookContextStorage *)self insertedRecords];
    v10 = [insertedRecords indexOfObject:recordCopy];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      insertedRecords2 = [(ABSAddressBookContextStorage *)self insertedRecords];
      v7 = [insertedRecords2 objectAtIndex:v10];

      v8 = v10;
    }
  }

  v12 = v7 == recordCopy;
  if (v7 != recordCopy)
  {
    goto LABEL_12;
  }

  if (recordCopy)
  {
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      records2 = [(ABSAddressBookContextStorage *)self records];
      [records2 removeObjectForKey:v5];

      deletedRecords = [(ABSAddressBookContextStorage *)self deletedRecords];
      [deletedRecords setObject:v7 forKey:v5];
    }

    else
    {
      deletedRecords = [(ABSAddressBookContextStorage *)self insertedRecords];
      [deletedRecords removeObjectAtIndex:v8];
    }

    [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (BOOL)addMemberRecord:(id)record toRecord:(id)toRecord
{
  recordCopy = record;
  toRecordCopy = toRecord;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(toRecordCopy, "id")}];
  cNIdentifierString = [recordCopy CNIdentifierString];
  v10 = 0;
  if (recordCopy && toRecordCopy)
  {
    records = [(ABSAddressBookContextStorage *)self records];
    v12 = [records objectForKey:v8];

    if (v12 == toRecordCopy)
    {
      addedMemberships = [(ABSAddressBookContextStorage *)self addedMemberships];
      v14 = [addedMemberships objectForKey:v8];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        addedMemberships2 = [(ABSAddressBookContextStorage *)self addedMemberships];
        [addedMemberships2 setObject:v14 forKey:v8];
      }

      v16 = [v14 objectForKey:cNIdentifierString];
      v10 = v16 == 0;

      [v14 setObject:recordCopy forKey:cNIdentifierString];
      deletedMemberships = [(ABSAddressBookContextStorage *)self deletedMemberships];
      v18 = [deletedMemberships objectForKey:v8];

      [v18 removeObjectForKey:cNIdentifierString];
      [(ABSAddressBookContextStorage *)self setHasUnsavedChanges:1];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)removeMemberRecord:(id)record fromRecord:(id)fromRecord
{
  recordCopy = record;
  fromRecordCopy = fromRecord;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(fromRecordCopy, "id")}];
  cNIdentifierString = [recordCopy CNIdentifierString];
  v10 = 0;
  if (recordCopy && fromRecordCopy)
  {
    records = [(ABSAddressBookContextStorage *)self records];
    v12 = [records objectForKey:v8];

    if (v12 == fromRecordCopy)
    {
      deletedMemberships = [(ABSAddressBookContextStorage *)self deletedMemberships];
      v14 = [deletedMemberships objectForKey:v8];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        deletedMemberships2 = [(ABSAddressBookContextStorage *)self deletedMemberships];
        [deletedMemberships2 setObject:v14 forKey:v8];
      }

      v16 = [v14 objectForKey:cNIdentifierString];
      v10 = v16 == 0;

      [v14 setObject:recordCopy forKey:cNIdentifierString];
      addedMemberships = [(ABSAddressBookContextStorage *)self addedMemberships];
      v18 = [addedMemberships objectForKey:v8];

      [v18 removeObjectForKey:cNIdentifierString];
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
  array = [MEMORY[0x277CBEB18] array];
  addedMemberships = [(ABSAddressBookContextStorage *)self addedMemberships];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ABSAddressBookContextStorage_recordsWithPendingMembershipAdditions__block_invoke;
  v9[3] = &unk_278A04B00;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  [addedMemberships enumerateKeysAndObjectsUsingBlock:v9];

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
  array = [MEMORY[0x277CBEB18] array];
  deletedMemberships = [(ABSAddressBookContextStorage *)self deletedMemberships];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ABSAddressBookContextStorage_recordsWithPendingMembershipDeletions__block_invoke;
  v9[3] = &unk_278A04B00;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  [deletedMemberships enumerateKeysAndObjectsUsingBlock:v9];

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

- (id)addedMembersForRecord:(id)record
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(record, "id")}];
  addedMemberships = [(ABSAddressBookContextStorage *)self addedMemberships];
  v6 = [addedMemberships objectForKey:v4];
  allValues = [v6 allValues];

  return allValues;
}

- (id)removedMembersForRecord:(id)record
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(record, "id")}];
  deletedMemberships = [(ABSAddressBookContextStorage *)self deletedMemberships];
  v6 = [deletedMemberships objectForKey:v4];
  allValues = [v6 allValues];

  return allValues;
}

- (void)_resetIncludingLivingRecords:(BOOL)records
{
  recordsCopy = records;
  deletedRecords = [(ABSAddressBookContextStorage *)self deletedRecords];
  [deletedRecords removeAllObjects];

  insertedRecords = [(ABSAddressBookContextStorage *)self insertedRecords];
  [insertedRecords removeAllObjects];

  updatedRecords = [(ABSAddressBookContextStorage *)self updatedRecords];
  [updatedRecords removeAllObjects];

  deletedMemberships = [(ABSAddressBookContextStorage *)self deletedMemberships];
  [deletedMemberships removeAllObjects];

  addedMemberships = [(ABSAddressBookContextStorage *)self addedMemberships];
  [addedMemberships removeAllObjects];

  if (recordsCopy)
  {
    records = [(ABSAddressBookContextStorage *)self records];
    [records removeAllObjects];
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
  insertedRecords = [(ABSAddressBookContextStorage *)self insertedRecords];
  v4 = [insertedRecords countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(insertedRecords);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 id] != -1)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "id")}];
          records = [(ABSAddressBookContextStorage *)self records];
          [records setObject:v8 forKey:v9];
        }
      }

      v5 = [insertedRecords countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  deletedRecords = [(ABSAddressBookContextStorage *)self deletedRecords];
  v12 = [deletedRecords countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(deletedRecords);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if ([v16 intValue] != -1)
        {
          records2 = [(ABSAddressBookContextStorage *)self records];
          [records2 removeObjectForKey:v16];
        }
      }

      v13 = [deletedRecords countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [(ABSAddressBookContextStorage *)self _resetIncludingLivingRecords:0];
}

- (void)revert
{
  records = [(ABSAddressBookContextStorage *)self records];
  [records enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  revertedRecords = [(ABSAddressBookContextStorage *)self revertedRecords];
  records2 = [(ABSAddressBookContextStorage *)self records];
  [revertedRecords addEntriesFromDictionary:records2];

  deletedRecords = [(ABSAddressBookContextStorage *)self deletedRecords];
  [deletedRecords enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7_0];

  revertedRecords2 = [(ABSAddressBookContextStorage *)self revertedRecords];
  deletedRecords2 = [(ABSAddressBookContextStorage *)self deletedRecords];
  [revertedRecords2 addEntriesFromDictionary:deletedRecords2];

  [(ABSAddressBookContextStorage *)self _resetIncludingLivingRecords:1];
}

@end
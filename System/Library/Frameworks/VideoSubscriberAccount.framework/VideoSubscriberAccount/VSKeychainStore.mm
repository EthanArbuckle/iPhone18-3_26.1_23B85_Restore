@interface VSKeychainStore
- (BOOL)_fixUpdateConflictForItemWithAttributes:(id)attributes andAttributesToUpdate:(id)update;
- (BOOL)deleteItemsMatchingQuery:(id)query error:(id *)error;
- (BOOL)updateAttributes:(id)attributes ofItemsMatchingQuery:(id)query attemptCount:(int64_t)count error:(id *)error;
- (id)addItem:(id)item error:(id *)error;
- (id)findItemsMatchingQuery:(id)query error:(id *)error;
@end

@implementation VSKeychainStore

- (id)addItem:(id)item error:(id *)error
{
  itemCopy = item;
  result = 0;
  v7 = SecItemAdd(itemCopy, &result);
  if (v7 != -25299)
  {
    if (!v7)
    {
      v8 = result;
      if (result)
      {
        goto LABEL_19;
      }

      v9 = VSErrorLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VSKeychainStore addItem:v9 error:?];
      }

      goto LABEL_15;
    }

    if (error)
    {
      v14 = *MEMORY[0x277CCA590];
      v15 = v7;
      v13 = MEMORY[0x277CCA9B8];
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v10 = SecItemDelete(itemCopy);
  if (v10)
  {
    v11 = v10;
    v12 = VSErrorLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VSKeychainStore addItem:v11 error:v12];
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA590];
      v15 = -25299;
LABEL_14:
      [v13 errorWithDomain:v14 code:v15 userInfo:0];
      *error = v8 = 0;
      goto LABEL_19;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_19;
  }

  v16 = VSDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Successfully deleted conflicting item, re-attempting insertion.", v18, 2u);
  }

  v8 = [(VSKeychainStore *)self addItem:itemCopy error:error];
LABEL_19:

  return v8;
}

- (id)findItemsMatchingQuery:(id)query error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(query, &result);
  if (v5 == -25300)
  {
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_11;
  }

  if (v5)
  {
    if (error)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
      v9 = v8;
      v6 = 0;
      *error = v8;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = result;
    if (result)
    {
      goto LABEL_11;
    }

    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VSKeychainStore findItemsMatchingQuery:v7 error:?];
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (BOOL)updateAttributes:(id)attributes ofItemsMatchingQuery:(id)query attemptCount:(int64_t)count error:(id *)error
{
  attributesCopy = attributes;
  queryCopy = query;
  v12 = SecItemUpdate(queryCopy, attributesCopy);
  if (!v12)
  {
    v14 = 1;
    goto LABEL_17;
  }

  if (v12 != -25299)
  {
    if (error)
    {
      v15 = *MEMORY[0x277CCA590];
      v16 = v12;
      v17 = MEMORY[0x277CCA9B8];
LABEL_15:
      [v17 errorWithDomain:v15 code:v16 userInfo:0];
      *error = v14 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v13 = [(VSKeychainStore *)self _fixUpdateConflictForItemWithAttributes:queryCopy andAttributesToUpdate:attributesCopy];
  if (count > 4 || !v13)
  {
    if (count >= 5)
    {
      v18 = VSErrorLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [VSKeychainStore updateAttributes:v18 ofItemsMatchingQuery:? attemptCount:? error:?];
      }
    }

    if (error)
    {
      v17 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = -25299;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = [(VSKeychainStore *)self updateAttributes:attributesCopy ofItemsMatchingQuery:queryCopy attemptCount:count + 1 error:error];
LABEL_17:

  return v14;
}

- (BOOL)deleteItemsMatchingQuery:(id)query error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v6 = SecItemDelete(queryCopy);
  if (!v6)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_10;
  }

  if (v6 == -25300)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = queryCopy;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Failed to find item to delete with query %@", &v10, 0xCu);
    }

    goto LABEL_6;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (BOOL)_fixUpdateConflictForItemWithAttributes:(id)attributes andAttributesToUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v7 = [attributes mutableCopy];
  [v7 addEntriesFromDictionary:updateCopy];

  [v7 removeObjectForKey:*MEMORY[0x277CDBF90]];
  [v7 removeObjectForKey:*MEMORY[0x277CDC088]];
  [v7 removeObjectForKey:*MEMORY[0x277CDC5E8]];
  v16 = 0;
  v8 = [(VSKeychainStore *)self deleteItemsMatchingQuery:v7 error:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = VSDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Tried to fix an update conflict in Keychain and succeeded.";
LABEL_9:
      v13 = v10;
      v14 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = VSDefaultLogObject();
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *buf = 138412290;
        v18 = v9;
        v11 = "Tried to fix an update conflict in Keychain and failed with error: %@";
        v13 = v10;
        v14 = 12;
LABEL_10:
        _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, v11, buf, v14);
      }
    }

    else if (v12)
    {
      *buf = 0;
      v11 = "Tried to fix an update conflict in Keychain and failed.";
      goto LABEL_9;
    }
  }

  return v8;
}

- (void)addItem:(int)a1 error:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "SecItemDelete() returned %d attempting to delete conflicting duplicate item.", v2, 8u);
}

@end
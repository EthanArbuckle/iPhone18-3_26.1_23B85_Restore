@interface MTSKeychainStoreDataSource
- (BOOL)addItemWithAttributes:(id)a3 error:(id *)a4;
- (BOOL)removeItemsMatchingQuery:(id)a3 error:(id *)a4;
- (BOOL)updateItemMatchingQuery:(id)a3 withAttributes:(id)a4 error:(id *)a5;
- (id)resultMatchingQuery:(id)a3 error:(id *)a4;
@end

@implementation MTSKeychainStoreDataSource

- (BOOL)removeItemsMatchingQuery:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = SecItemDelete(a3);
  v6 = v5;
  if (v5)
  {
    v7 = SecCopyErrorMessageString(v5, 0);
    v12 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SecItemDelete() failed with %d: %@", v6, v7];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:v9];
    }
  }

  result = v6 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateItemMatchingQuery:(id)a3 withAttributes:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = SecItemUpdate(a3, a4);
  v7 = v6;
  if (v6)
  {
    v8 = SecCopyErrorMessageString(v6, 0);
    v13 = *MEMORY[0x277CCA470];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SecItemUpdate() failed with %d: %@", v7, v8];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:v10];
    }
  }

  result = v7 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)addItemWithAttributes:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = SecItemAdd(a3, 0);
  v6 = v5;
  if (v5)
  {
    v7 = SecCopyErrorMessageString(v5, 0);
    v12 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SecItemAdd() failed with %d: %@", v6, v7];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:v9];
    }
  }

  result = v6 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)resultMatchingQuery:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  result = 0;
  v5 = SecItemCopyMatching(a3, &result);
  if (v5)
  {
    v6 = v5;
    v7 = SecCopyErrorMessageString(v5, 0);
    v14 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SecItemCopyMatching() failed with %d: %@", v6, v7];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:v9];
    }

    v10 = 0;
  }

  else
  {
    v10 = result;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
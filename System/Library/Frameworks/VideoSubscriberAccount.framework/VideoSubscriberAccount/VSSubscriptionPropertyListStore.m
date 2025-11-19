@interface VSSubscriptionPropertyListStore
+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 error:(id *)a5;
+ (id)metadataForPersistentStoreWithURL:(id)a3 error:(id *)a4;
- (BOOL)load:(id *)a3;
- (BOOL)save:(id *)a3;
- (VSSubscriptionPropertyListStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6;
- (id)newCacheNodeForManagedObject:(id)a3;
- (id)newReferenceObjectForManagedObject:(id)a3;
- (void)updateCacheNode:(id)a3 fromManagedObject:(id)a4;
@end

@implementation VSSubscriptionPropertyListStore

- (VSSubscriptionPropertyListStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6
{
  v12.receiver = self;
  v12.super_class = VSSubscriptionPropertyListStore;
  v6 = [(NSAtomicStore *)&v12 initWithPersistentStoreCoordinator:a3 configurationName:a4 URL:a5 options:a6];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = [(NSAtomicStore *)v6 metadata];
    v9 = [v7 initWithDictionary:v8];

    v10 = VSSubscriptionPropertyListStoreType();
    [v9 setObject:v10 forKey:*MEMORY[0x277CBE2F8]];

    [(NSAtomicStore *)v6 setMetadata:v9];
  }

  return v6;
}

- (BOOL)load:(id *)a3
{
  v5 = [(VSSubscriptionPropertyListStore *)self URL];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v5 options:0 error:a3];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:a3];
      v8 = v7 != 0;
      if (v7)
      {
        v9 = [MEMORY[0x277CBE408] vs_subscriptionEntityForVersion:0];
        v10 = [(VSSubscriptionPropertyListStore *)self persistentStoreCoordinator];
        v11 = [v10 managedObjectModel];
        v12 = [v11 entitiesByName];
        v13 = [v9 name];
        v24 = v12;
        if (v13)
        {
          v14 = [v12 objectForKey:{v13, v12}];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
            v17 = v9;
            v18 = v11;
            v19 = v10;
            v20 = v16;

            v21 = v20;
            v10 = v19;
            v11 = v18;
            v9 = v21;
          }
        }

        v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = __40__VSSubscriptionPropertyListStore_load___block_invoke;
          v29 = &unk_278B751F8;
          v30 = self;
          v31 = v9;
          v32 = v22;
          [v7 enumerateKeysAndObjectsUsingBlock:&v26];
        }

        [(NSAtomicStore *)self addCacheNodes:v22, v24, v26, v27, v28, v29, v30];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:258 userInfo:0];
    *a3 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __40__VSSubscriptionPropertyListStore_load___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [v5 copy];
      v10 = [v7 objectIDForEntity:v8 referenceObject:v9];

      v11 = [objc_alloc(MEMORY[0x277CBE350]) initWithObjectID:v10];
      [*(a1 + 48) addObject:v11];
      v12 = [*(a1 + 40) attributesByName];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __40__VSSubscriptionPropertyListStore_load___block_invoke_2;
      v14[3] = &unk_278B73898;
      v15 = v6;
      v16 = v11;
      v13 = v11;
      [v12 enumerateKeysAndObjectsUsingBlock:v14];
    }
  }
}

void __40__VSSubscriptionPropertyListStore_load___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 vs_propertyListKey];
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKey:v6];
    v8 = [v5 vs_propertyListValueTransformer];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 reverseTransformedValue:v7];

      v7 = v10;
    }

    [*(a1 + 40) setValue:v7 forKey:v11];
  }
}

- (BOOL)save:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self;
  obj = [(NSAtomicStore *)self cacheNodes];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 objectID];
        v10 = [v9 entity];
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v12 = [v10 attributesByName];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __40__VSSubscriptionPropertyListStore_save___block_invoke;
        v27[3] = &unk_278B73898;
        v27[4] = v8;
        v13 = v11;
        v28 = v13;
        [v12 enumerateKeysAndObjectsUsingBlock:v27];

        v14 = [v10 vs_referenceValueAttribute];
        v15 = [v14 vs_propertyListKey];
        if (v15)
        {
          v16 = [v13 objectForKey:v15];
          if (v16)
          {
            [v25 setObject:v13 forKey:v16];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v25 format:200 options:0 error:a3];
  if (v17)
  {
    v18 = [(VSSubscriptionPropertyListStore *)v23 URL];
    v19 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v20 = [v18 URLByDeletingLastPathComponent];
    if (v20)
    {
      if (![v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:a3])
      {
        goto LABEL_20;
      }

      if (v18)
      {
        v21 = [v17 writeToURL:v18 options:1073741825 error:a3];
LABEL_21:

        goto LABEL_22;
      }
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:514 userInfo:0];
      *a3 = v21 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v21 = 0;
LABEL_22:

  return v21;
}

void __40__VSSubscriptionPropertyListStore_save___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(a1 + 32) valueForKey:a2];
  v6 = [v12 vs_propertyListValueTransformer];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 transformedValue:v5];

    v5 = v8;
  }

  v9 = [v12 vs_propertyListKey];
  v10 = v9;
  if (v5)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [*(a1 + 40) setObject:v5 forKey:v9];
  }
}

- (id)newCacheNodeForManagedObject:(id)a3
{
  v4 = MEMORY[0x277CBE350];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 objectID];
  v8 = [v6 initWithObjectID:v7];

  [(VSSubscriptionPropertyListStore *)self updateCacheNode:v8 fromManagedObject:v5];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [(NSAtomicStore *)self addCacheNodes:v9];

  return v8;
}

- (void)updateCacheNode:(id)a3 fromManagedObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 entity];
  v8 = [v7 attributesByName];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__VSSubscriptionPropertyListStore_updateCacheNode_fromManagedObject___block_invoke;
  v11[3] = &unk_278B73898;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void __69__VSSubscriptionPropertyListStore_updateCacheNode_fromManagedObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

- (id)newReferenceObjectForManagedObject:(id)a3
{
  v3 = a3;
  v4 = [v3 entity];
  v5 = [v4 vs_referenceValueAttribute];
  v6 = [v5 name];
  v7 = [v3 valueForKey:v6];

  v8 = [v5 vs_propertyListValueTransformer];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 transformedValue:v7];

    v7 = v10;
  }

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to construct reference object for managed object: %@", v3}];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The value parameter must not be nil."];
  }

  return v7;
}

+ (id)metadataForPersistentStoreWithURL:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:134000 userInfo:0];
  }

  return 0;
}

+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:134000 userInfo:0];
  }

  return 0;
}

@end
@interface VSSubscriptionPropertyListStore
+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l error:(id *)error;
+ (id)metadataForPersistentStoreWithURL:(id)l error:(id *)error;
- (BOOL)load:(id *)load;
- (BOOL)save:(id *)save;
- (VSSubscriptionPropertyListStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options;
- (id)newCacheNodeForManagedObject:(id)object;
- (id)newReferenceObjectForManagedObject:(id)object;
- (void)updateCacheNode:(id)node fromManagedObject:(id)object;
@end

@implementation VSSubscriptionPropertyListStore

- (VSSubscriptionPropertyListStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options
{
  v12.receiver = self;
  v12.super_class = VSSubscriptionPropertyListStore;
  v6 = [(NSAtomicStore *)&v12 initWithPersistentStoreCoordinator:coordinator configurationName:name URL:l options:options];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    metadata = [(NSAtomicStore *)v6 metadata];
    v9 = [v7 initWithDictionary:metadata];

    v10 = VSSubscriptionPropertyListStoreType();
    [v9 setObject:v10 forKey:*MEMORY[0x277CBE2F8]];

    [(NSAtomicStore *)v6 setMetadata:v9];
  }

  return v6;
}

- (BOOL)load:(id *)load
{
  v5 = [(VSSubscriptionPropertyListStore *)self URL];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v5 options:0 error:load];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:load];
      v8 = v7 != 0;
      if (v7)
      {
        v9 = [MEMORY[0x277CBE408] vs_subscriptionEntityForVersion:0];
        persistentStoreCoordinator = [(VSSubscriptionPropertyListStore *)self persistentStoreCoordinator];
        managedObjectModel = [persistentStoreCoordinator managedObjectModel];
        entitiesByName = [managedObjectModel entitiesByName];
        name = [v9 name];
        v24 = entitiesByName;
        if (name)
        {
          v14 = [entitiesByName objectForKey:{name, entitiesByName}];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
            v17 = v9;
            v18 = managedObjectModel;
            v19 = persistentStoreCoordinator;
            v20 = v16;

            v21 = v20;
            persistentStoreCoordinator = v19;
            managedObjectModel = v18;
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
          selfCopy = self;
          v31 = v9;
          v32 = v22;
          [v7 enumerateKeysAndObjectsUsingBlock:&v26];
        }

        [(NSAtomicStore *)self addCacheNodes:v22, v24, v26, v27, v28, v29, selfCopy];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else if (load)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:258 userInfo:0];
    *load = v8 = 0;
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

- (BOOL)save:(id *)save
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
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
        objectID = [v8 objectID];
        entity = [objectID entity];
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        attributesByName = [entity attributesByName];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __40__VSSubscriptionPropertyListStore_save___block_invoke;
        v27[3] = &unk_278B73898;
        v27[4] = v8;
        v13 = v11;
        v28 = v13;
        [attributesByName enumerateKeysAndObjectsUsingBlock:v27];

        vs_referenceValueAttribute = [entity vs_referenceValueAttribute];
        vs_propertyListKey = [vs_referenceValueAttribute vs_propertyListKey];
        if (vs_propertyListKey)
        {
          v16 = [v13 objectForKey:vs_propertyListKey];
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

  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v25 format:200 options:0 error:save];
  if (v17)
  {
    v18 = [(VSSubscriptionPropertyListStore *)selfCopy URL];
    v19 = objc_alloc_init(MEMORY[0x277CCAA00]);
    uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
    if (uRLByDeletingLastPathComponent)
    {
      if (![v19 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:save])
      {
        goto LABEL_20;
      }

      if (v18)
      {
        v21 = [v17 writeToURL:v18 options:1073741825 error:save];
LABEL_21:

        goto LABEL_22;
      }
    }

    if (save)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:514 userInfo:0];
      *save = v21 = 0;
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

- (id)newCacheNodeForManagedObject:(id)object
{
  v4 = MEMORY[0x277CBE350];
  objectCopy = object;
  v6 = [v4 alloc];
  objectID = [objectCopy objectID];
  v8 = [v6 initWithObjectID:objectID];

  [(VSSubscriptionPropertyListStore *)self updateCacheNode:v8 fromManagedObject:objectCopy];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [(NSAtomicStore *)self addCacheNodes:v9];

  return v8;
}

- (void)updateCacheNode:(id)node fromManagedObject:(id)object
{
  nodeCopy = node;
  objectCopy = object;
  entity = [objectCopy entity];
  attributesByName = [entity attributesByName];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__VSSubscriptionPropertyListStore_updateCacheNode_fromManagedObject___block_invoke;
  v11[3] = &unk_278B73898;
  v12 = objectCopy;
  v13 = nodeCopy;
  v9 = nodeCopy;
  v10 = objectCopy;
  [attributesByName enumerateKeysAndObjectsUsingBlock:v11];
}

void __69__VSSubscriptionPropertyListStore_updateCacheNode_fromManagedObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

- (id)newReferenceObjectForManagedObject:(id)object
{
  objectCopy = object;
  entity = [objectCopy entity];
  vs_referenceValueAttribute = [entity vs_referenceValueAttribute];
  name = [vs_referenceValueAttribute name];
  v7 = [objectCopy valueForKey:name];

  vs_propertyListValueTransformer = [vs_referenceValueAttribute vs_propertyListValueTransformer];
  v9 = vs_propertyListValueTransformer;
  if (vs_propertyListValueTransformer)
  {
    v10 = [vs_propertyListValueTransformer transformedValue:v7];

    v7 = v10;
  }

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to construct reference object for managed object: %@", objectCopy}];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The value parameter must not be nil."];
  }

  return v7;
}

+ (id)metadataForPersistentStoreWithURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:134000 userInfo:0];
  }

  return 0;
}

+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:134000 userInfo:0];
  }

  return 0;
}

@end
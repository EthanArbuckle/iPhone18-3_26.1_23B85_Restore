@interface NSPersistentStoreMap
- (NSPersistentStoreMap)initWithStore:(id)a3;
- (id)_updatedMetadataWithSeed:(int)a3 includeVersioning:;
- (id)dataForKey:(id)a3;
- (id)handleFetchRequest:(id)a3;
- (id)retainedObjectIDsForRelationship:(id)a3 forObjectID:(id)a4;
- (uint64_t)_setMetadata:(uint64_t)result;
- (uint64_t)databaseUUID;
- (unint64_t)nextPK64;
- (void)addObject:(id)a3 objectIDMap:(id)a4;
- (void)dealloc;
- (void)removeObject:(id)a3 objectIDMap:(id)a4;
- (void)setMetadata:(void *)result;
- (void)updateObject:(id)a3 objectIDMap:(id)a4;
@end

@implementation NSPersistentStoreMap

- (NSPersistentStoreMap)initWithStore:(id)a3
{
  v10.receiver = self;
  v10.super_class = NSPersistentStoreMap;
  v4 = [(NSPersistentStoreMap *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_store = a3;
    v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v7 = +[NSStoreMappingGenerator defaultMappingGenerator];
    if ([(NSPersistentStoreMap *)v5 configurationName])
    {
      v8 = [(NSPersistentStoreMap *)v5 configurationName];
    }

    else
    {
      v8 = @"PF_DEFAULT_CONFIGURATION_NAME";
    }

    v5->_mappings = -[NSStoreMappingGenerator mappingsDictForConfigurationWithName:inModel:](v7, v8, [objc_msgSend(a3 "_persistentStoreCoordinator")]);
    [v6 drain];
  }

  return v5;
}

- (void)dealloc
{
  self->_store = 0;

  self->_databaseUUID = 0;
  self->_storeMetadata = 0;

  self->_mappings = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentStoreMap;
  [(NSPersistentStoreMap *)&v3 dealloc];
}

- (id)dataForKey:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)addObject:(id)a3 objectIDMap:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)removeObject:(id)a3 objectIDMap:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)updateObject:(id)a3 objectIDMap:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)handleFetchRequest:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)retainedObjectIDsForRelationship:(id)a3 forObjectID:(id)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)nextPK64
{
  objc_sync_enter(self);
  v3 = self->_nextPK64 + 1;
  self->_nextPK64 = v3;
  objc_sync_exit(self);
  return v3;
}

- (uint64_t)databaseUUID
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    if (!result)
    {
      result = [(__CFString *)+[_PFRoutines _getUUID]copy];
      *(v1 + 16) = result;
    }
  }

  return result;
}

- (id)_updatedMetadataWithSeed:(int)a3 includeVersioning:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [a2 mutableCopy];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  }

  v7 = [*(v5 + 1) type];
  if (!v7)
  {
    v7 = [a2 objectForKey:@"NSStoreType"];
  }

  [v6 setObject:v7 forKey:@"NSStoreType"];
  v8 = [a2 objectForKey:@"NSStoreUUID"];
  if (v8)
  {
    goto LABEL_7;
  }

  v9 = *(v5 + 2);
  if (!v9)
  {
    v8 = [(__CFString *)+[_PFRoutines _getUUID]copy];
    *(v5 + 2) = v8;
    if (!v8)
    {
      v8 = +[_PFRoutines _getUUID];
    }

LABEL_7:
    v9 = v8;
  }

  [v6 setObject:v9 forKey:@"NSStoreUUID"];
  if (a3)
  {
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    [v6 setObject:PFBundleVersion forKey:0x1EF3FD408];
    v11 = [v6 objectForKey:0x1EF3FD428];
    if (!v11 || [PFBundleVersion compare:v11] == 1)
    {
      [v6 setObject:PFBundleVersion forKey:0x1EF3FD428];
    }

    v12 = [*(v5 + 1) _persistentStoreCoordinator];
    if (v12)
    {
      v13 = [v12 managedObjectModel];
      v14 = [v13 entityVersionHashesByName];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 3), 0x1EF3FD3E8}];
      [v6 setObject:v14 forKey:@"NSStoreModelVersionHashes"];
      if (v13)
      {
        v15 = [objc_msgSend(v13 "versionIdentifiers")];
      }

      else
      {
        v15 = 0;
      }

      [v6 setObject:v15 forKey:@"NSStoreModelVersionIdentifiers"];
      [v6 setObject:-[NSManagedObjectModel _entityVersionHashesDigestFrom:](v13 forKey:{v14), 0x1EF3FCE28}];
      v16 = [v13 versionChecksum];
      v17 = v6;
    }

    else
    {
      if (![v6 objectForKey:0x1EF3FD3E8])
      {
        [v6 setObject:objc_msgSend(*(v5 + 3) forKey:{"objectForKey:", 0x1EF3FD3E8), 0x1EF3FD3E8}];
      }

      if (![v6 objectForKey:@"NSStoreModelVersionHashes"])
      {
        [v6 setObject:objc_msgSend(*(v5 + 3) forKey:{"objectForKey:", @"NSStoreModelVersionHashes", @"NSStoreModelVersionHashes"}];
      }

      if (![v6 objectForKey:0x1EF3FCE28])
      {
        [v6 setObject:objc_msgSend(*(v5 + 3) forKey:{"objectForKey:", 0x1EF3FCE28), 0x1EF3FCE28}];
      }

      if (![v6 objectForKey:@"NSStoreModelVersionIdentifiers"])
      {
        [v6 setObject:objc_msgSend(*(v5 + 3) forKey:{"objectForKey:", @"NSStoreModelVersionIdentifiers", @"NSStoreModelVersionIdentifiers"}];
      }

      if ([v6 objectForKey:@"NSStoreModelVersionChecksumKey"])
      {
        goto LABEL_27;
      }

      v16 = [*(v5 + 3) objectForKey:@"NSStoreModelVersionChecksumKey"];
      v17 = v6;
    }

    [v17 setObject:v16 forKey:@"NSStoreModelVersionChecksumKey"];
  }

LABEL_27:

  return v6;
}

- (uint64_t)_setMetadata:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [a2 isEqual:*(result + 24)];
    if ((result & 1) == 0)
    {
      v4 = [a2 objectForKey:@"NSStoreUUID"];
      if (v4)
      {
        if (*(v3 + 16) != v4)
        {
          v5 = [v4 copy];

          *(v3 + 16) = v5;
        }
      }

      result = a2;
      *(v3 + 24) = result;
    }
  }

  return result;
}

- (void)setMetadata:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = [(NSPersistentStoreMap *)result _updatedMetadataWithSeed:a2 includeVersioning:1];

    return [(NSPersistentStoreMap *)v2 _setMetadata:v3];
  }

  return result;
}

@end
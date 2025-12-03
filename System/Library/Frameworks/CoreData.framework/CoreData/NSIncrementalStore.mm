@interface NSIncrementalStore
+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l error:(id *)error;
+ (id)metadataForPersistentStoreWithURL:(id)l error:(id *)error;
- (BOOL)_prepareForExecuteRequest:(id)request withContext:(id)context error:(id *)error;
- (BOOL)loadMetadata:(NSError *)error;
- (NSArray)obtainPermanentIDsForObjects:(NSArray *)array error:(NSError *)error;
- (NSIncrementalStoreNode)newValuesForObjectWithID:(NSManagedObjectID *)objectID withContext:(NSManagedObjectContext *)context error:(NSError *)error;
- (NSManagedObjectID)newObjectIDForEntity:(NSEntityDescription *)entity referenceObject:(id)data;
- (id)_newObjectIDForEntityDescription:(id)description pk:(int64_t)pk;
- (id)executeRequest:(NSPersistentStoreRequest *)request withContext:(NSManagedObjectContext *)context error:(NSError *)error;
- (id)metadata;
- (id)newValueForRelationship:(NSRelationshipDescription *)relationship forObjectWithID:(NSManagedObjectID *)objectID withContext:(NSManagedObjectContext *)context error:(NSError *)error;
- (id)referenceObjectForObjectID:(NSManagedObjectID *)objectID;
- (void)dealloc;
@end

@implementation NSIncrementalStore

+ (id)metadataForPersistentStoreWithURL:(id)l error:(id *)error
{
  v5 = [[self alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:l options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
  v6 = [v5 loadMetadata:error];
  metadata = 0;
  if (v6)
  {
    metadata = [v5 metadata];
  }

  return metadata;
}

+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l error:(id *)error
{
  v7 = [[self alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:l options:0];
  [v7 setMetadata:metadata];
  v8 = objc_alloc_init(NSSaveChangesRequest);
  v9 = [v7 executeRequest:v8 withContext:0 error:error];

  return v9 != 0;
}

- (void)dealloc
{
  self->_storeMetadata = 0;
  v3.receiver = self;
  v3.super_class = NSIncrementalStore;
  [(NSPersistentStore *)&v3 dealloc];
}

- (id)metadata
{
  storeMetadata = self->_storeMetadata;
  if (storeMetadata)
  {
    v4 = [(NSDictionary *)storeMetadata objectForKey:@"_NSMetadataLastIdentifier"];
    lastIdentifier = self->_lastIdentifier;
    if (lastIdentifier != [v4 unsignedLongValue])
    {
      v6 = [(NSDictionary *)self->_storeMetadata mutableCopy];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_lastIdentifier), @"_NSMetadataLastIdentifier"}];

      v7 = [v6 copy];
LABEL_7:
      self->_storeMetadata = v7;
    }
  }

  else
  {
    v12 = 0;
    if (![(NSIncrementalStore *)self loadMetadata:&v12])
    {
      v9 = v12;
      if (v12)
      {
        v10 = *MEMORY[0x1E696AA08];
      }

      else
      {
        v9 = @"Unknown failure";
        v10 = @"Reason";
      }

      v11 = [MEMORY[0x1E695DF20] dictionaryWithObject:v9 forKey:v10];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to load metadata" userInfo:v11]);
    }

    if (!self->_storeMetadata)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v6 setObject:objc_msgSend(objc_opt_class() forKey:{"identifierForNewStoreAtURL:", -[NSPersistentStore URL](self, "URL")), @"NSStoreUUID"}];
      self->_lastIdentifier = 0;
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", 0), @"_NSMetadataLastIdentifier"}];
      v7 = [(NSPersistentStore *)self _updatedMetadataWithSeed:v6 includeVersioning:1];
      goto LABEL_7;
    }
  }

  return self->_storeMetadata;
}

- (BOOL)loadMetadata:(NSError *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSArray)obtainPermanentIDsForObjects:(NSArray *)array error:(NSError *)error
{
  v7 = [(NSArray *)array count];
  if (__CFADD__(v7, self->_lastIdentifier))
  {
    array = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Keyspace exhausted", @"Problem"}];
    }
  }

  else
  {
    v9 = v7;
    array = [MEMORY[0x1E695DF70] array];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [-[NSArray objectAtIndex:](array objectAtIndex:{i), "entity"}];
        v12 = MEMORY[0x1E696AD98];
        ++self->_lastIdentifier;
        v13 = -[NSIncrementalStore newObjectIDForEntity:referenceObject:](self, "newObjectIDForEntity:referenceObject:", v11, [v12 numberWithUnsignedLongLong:?]);
        [(NSArray *)array addObject:v13];
      }
    }
  }

  return array;
}

- (BOOL)_prepareForExecuteRequest:(id)request withContext:(id)context error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(request "insertedObjects")])
  {
    v29 = 0;
    v24 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v9 = [objc_msgSend(request "insertedObjects")];
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          if ([objc_msgSend(v15 "objectID")])
          {
            [array addObject:v15];
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    v16 = [(NSIncrementalStore *)self obtainPermanentIDsForObjects:array error:&v29];
    v17 = v16 != 0;
    if (v16)
    {
      v18 = [(NSManagedObjectContext *)context _changeIDsForManagedObjects:array toIDs:v16];
      if (v18)
      {
        [(NSSaveChangesRequest *)request _addChangedObjectIDsNotification:v18];
      }
    }

    v19 = v29;
    [v24 drain];
    v20 = v29;
    if (v29)
    {
      if (error)
      {
        *error = v29;
      }

      v21 = v20;
    }
  }

  else
  {
    v17 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (NSIncrementalStoreNode)newValuesForObjectWithID:(NSManagedObjectID *)objectID withContext:(NSManagedObjectContext *)context error:(NSError *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)newValueForRelationship:(NSRelationshipDescription *)relationship forObjectWithID:(NSManagedObjectID *)objectID withContext:(NSManagedObjectContext *)context error:(NSError *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)executeRequest:(NSPersistentStoreRequest *)request withContext:(NSManagedObjectContext *)context error:(NSError *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSManagedObjectID)newObjectIDForEntity:(NSEntityDescription *)entity referenceObject:(id)data
{
  v5 = objc_alloc([(NSPersistentStore *)self objectIDFactoryForEntity:entity]);

  return [v5 initWithObject:data];
}

- (id)referenceObjectForObjectID:(NSManagedObjectID *)objectID
{
  if ([(NSManagedObjectID *)objectID persistentStore]!= self)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot retrieve referenceObject from an objectID that was not created by this store" userInfo:0]);
  }

  return [(NSManagedObjectID *)objectID _referenceData];
}

- (id)_newObjectIDForEntityDescription:(id)description pk:(int64_t)pk
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end
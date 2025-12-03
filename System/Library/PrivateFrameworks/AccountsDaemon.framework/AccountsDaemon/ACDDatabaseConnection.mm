@interface ACDDatabaseConnection
- (ACDDatabaseConnection)init;
- (ACDDatabaseConnection)initWithPersistentStoreCoordinator:(id)coordinator;
- (ACDDatabaseConnectionDelegate)delegate;
- (BOOL)saveWithError:(id *)error rollbackOnFailure:(BOOL)failure;
- (NSNumber)keychainVersion;
- (NSNumber)version;
- (id)_accountPropertyWithKey:(id)key owner:(id)owner;
- (id)_managedObjectContextModificationDescription;
- (id)_managedObjectModificationDescription:(id)description;
- (id)_persistentStore;
- (id)existingObjectWithURI:(id)i;
- (id)fetchObjectsForEntityNamed:(id)named withPredicate:(id)predicate sortDescriptor:(id)descriptor prefetchKeypaths:(id)keypaths;
- (id)insertNewObjectForEntityForName:(id)name;
- (id)managedObjectIDForURI:(id)i;
- (id)objectForObjectURI:(id)i;
- (unint64_t)countOfEntityNamed:(id)named withPredicate:(id)predicate;
- (void)_beginObservingManagedObjectContextDidSaveNotifications;
- (void)_delegate_databaseConnectionEncounteredUnrecoverableError:(id)error;
- (void)_endObservingManagedObjectContextDidSaveNotifications;
- (void)_handleManagedObjectContextError:(id)error;
- (void)_managedObjectContextDidSave:(id)save;
- (void)_persistentStore;
- (void)_setupManagedObjectContextWithPersistentStoreCoodinator:(id)coodinator;
- (void)_setupMemoryNotifications;
- (void)_teardownMemoryNotifications;
- (void)_traceDatabaseEvents;
- (void)dealloc;
- (void)deleteAccountPropertyWithKey:(id)key owner:(id)owner;
- (void)deleteObject:(id)object;
- (void)rollback;
- (void)setAccountPropertyWithKey:(id)key value:(id)value owner:(id)owner;
- (void)setKeychainVersion:(id)version;
- (void)setVersion:(id)version;
@end

@implementation ACDDatabaseConnection

- (void)_beginObservingManagedObjectContextDidSaveNotifications
{
  OUTLINED_FUNCTION_3_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupMemoryNotifications
{
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x36uLL, v3);
  memoryNotificationSource = self->_memoryNotificationSource;
  self->_memoryNotificationSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_memoryNotificationSource;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ACDDatabaseConnection__setupMemoryNotifications__block_invoke;
  v7[3] = &unk_27848BFC8;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_memoryNotificationSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(ACDDatabaseConnection *)self _endObservingManagedObjectContextDidSaveNotifications];
  [(ACDDatabaseConnection *)self _teardownMemoryNotifications];
  v3.receiver = self;
  v3.super_class = ACDDatabaseConnection;
  [(ACDDatabaseConnection *)&v3 dealloc];
}

- (void)_teardownMemoryNotifications
{
  dispatch_source_cancel(self->_memoryNotificationSource);
  memoryNotificationSource = self->_memoryNotificationSource;
  self->_memoryNotificationSource = 0;
}

- (void)_endObservingManagedObjectContextDidSaveNotifications
{
  OUTLINED_FUNCTION_3_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (ACDDatabaseConnection)init
{
  [(ACDDatabaseConnection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDDatabaseConnection)initWithPersistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = ACDDatabaseConnection;
  v6 = [(ACDDatabaseConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentStoreCoordinator, coordinator);
    v8 = objc_opt_new();
    cache = v7->_cache;
    v7->_cache = v8;

    [(NSCache *)v7->_cache setName:@"ACDDabaseConnectionCache"];
    [(ACDDatabaseConnection *)v7 _setupManagedObjectContextWithPersistentStoreCoodinator:coordinatorCopy];
    [(ACDDatabaseConnection *)v7 _beginObservingManagedObjectContextDidSaveNotifications];
    [(ACDDatabaseConnection *)v7 _setupMemoryNotifications];
  }

  return v7;
}

- (NSNumber)version
{
  _persistentStore = [(ACDDatabaseConnection *)self _persistentStore];
  metadata = [_persistentStore metadata];

  v4 = [metadata objectForKeyedSubscript:@"ACAccountTypeVersion"];

  return v4;
}

- (NSNumber)keychainVersion
{
  _persistentStore = [(ACDDatabaseConnection *)self _persistentStore];
  metadata = [_persistentStore metadata];

  v4 = [metadata objectForKeyedSubscript:@"ACKeychainVersion"];

  return v4;
}

- (id)_persistentStore
{
  persistentStores = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStores];
  if ([persistentStores count] != 1)
  {
    [(ACDDatabaseConnection *)persistentStores _persistentStore];
  }

  firstObject = [persistentStores firstObject];

  return firstObject;
}

- (void)setVersion:(id)version
{
  versionCopy = version;
  if (!versionCopy)
  {
    [ACDDatabaseConnection setVersion:];
  }

  _persistentStore = [(ACDDatabaseConnection *)self _persistentStore];
  metadata = [_persistentStore metadata];
  v6 = [metadata mutableCopy];

  [v6 setObject:versionCopy forKeyedSubscript:@"ACAccountTypeVersion"];
  _persistentStore2 = [(ACDDatabaseConnection *)self _persistentStore];
  [_persistentStore2 setMetadata:v6];
}

- (void)setKeychainVersion:(id)version
{
  versionCopy = version;
  _persistentStore = [(ACDDatabaseConnection *)self _persistentStore];
  metadata = [_persistentStore metadata];
  v8 = [metadata mutableCopy];

  [v8 setObject:versionCopy forKeyedSubscript:@"ACKeychainVersion"];
  _persistentStore2 = [(ACDDatabaseConnection *)self _persistentStore];
  [_persistentStore2 setMetadata:v8];
}

- (id)fetchObjectsForEntityNamed:(id)named withPredicate:(id)predicate sortDescriptor:(id)descriptor prefetchKeypaths:(id)keypaths
{
  v42 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  predicateCopy = predicate;
  descriptorCopy = descriptor;
  v12 = MEMORY[0x277CBE408];
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  v14 = [v12 entityForName:namedCopy inManagedObjectContext:managedObjectContext];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v15 setEntity:v14];
    [v15 setReturnsObjectsAsFaults:0];
    if (predicateCopy)
    {
      [v15 setPredicate:predicateCopy];
    }

    if (descriptorCopy)
    {
      v16 = [MEMORY[0x277CBEA60] arrayWithObject:descriptorCopy];
      [v15 setSortDescriptors:v16];
    }

    v17 = MEMORY[0x277CCACA8];
    predicateFormat = [predicateCopy predicateFormat];
    v19 = [descriptorCopy key];
    v20 = [v17 stringWithFormat:@"%@:%@:%@%d", namedCopy, predicateFormat, v19, objc_msgSend(descriptorCopy, "ascending")];

    v21 = [(NSCache *)self->_cache objectForKey:v20];
    if (!v21)
    {
      managedObjectContext2 = [(ACDDatabaseConnection *)self managedObjectContext];
      v40 = 0;
      v21 = [managedObjectContext2 executeFetchRequest:v15 error:&v40];
      v23 = v40;

      if (v21)
      {
        v32 = v23;
        v33 = v20;
        v34 = predicateCopy;
        v35 = namedCopy;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = v21;
        v24 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v37;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v37 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v36 + 1) + 8 * i);
              managedObjectContext3 = [(ACDDatabaseConnection *)self managedObjectContext];
              [managedObjectContext3 refreshObject:v28 mergeChanges:1];
            }

            v25 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v25);
        }

        v20 = v33;
        [(NSCache *)self->_cache setObject:v21 forKey:v33];
        predicateCopy = v34;
        namedCopy = v35;
        v23 = v32;
      }

      else
      {
        [(ACDDatabaseConnection *)self _handleManagedObjectContextError:v23];
      }
    }
  }

  else
  {
    v15 = _ACDLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseConnection fetchObjectsForEntityNamed:withPredicate:sortDescriptor:prefetchKeypaths:];
    }

    v21 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)objectForObjectURI:(id)i
{
  iCopy = i;
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v7 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];

  if (v7)
  {
    managedObjectContext2 = [(ACDDatabaseConnection *)self managedObjectContext];
    v9 = [managedObjectContext2 objectWithID:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)existingObjectWithURI:(id)i
{
  iCopy = i;
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v7 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];

  if (v7)
  {
    managedObjectContext2 = [(ACDDatabaseConnection *)self managedObjectContext];
    v16 = 0;
    v9 = [managedObjectContext2 existingObjectWithID:v7 error:&v16];
    v10 = v16;

    if (!v9)
    {
      [(ACDDatabaseConnection *)self _handleManagedObjectContextError:v10];
    }

    if (v10)
    {
      v11 = _ACDLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACDDatabaseConnection existingObjectWithURI:];
      }
    }

    managedObjectContext3 = [(ACDDatabaseConnection *)self managedObjectContext];
    deletedObjects = [managedObjectContext3 deletedObjects];
    v14 = [deletedObjects containsObject:v9];

    if (v14)
    {

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)countOfEntityNamed:(id)named withPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = MEMORY[0x277CBE408];
  namedCopy = named;
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  v10 = [v7 entityForName:namedCopy inManagedObjectContext:managedObjectContext];

  v11 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v11 setEntity:v10];
  if (predicateCopy)
  {
    [v11 setPredicate:predicateCopy];
  }

  managedObjectContext2 = [(ACDDatabaseConnection *)self managedObjectContext];
  v16 = 0;
  v13 = [managedObjectContext2 countForFetchRequest:v11 error:&v16];
  v14 = v16;

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ACDDatabaseConnection *)self _handleManagedObjectContextError:v14];
  }

  return v13;
}

- (id)_accountPropertyWithKey:(id)key owner:(id)owner
{
  keyCopy = key;
  ownerCopy = owner;
  ownerCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"key = %@ AND owner = %@", keyCopy, ownerCopy];
  v9 = [(ACDDatabaseConnection *)self fetchObjectsForEntityNamed:@"AccountProperty" withPredicate:ownerCopy];

  if ([v9 count])
  {
    if ([v9 count] >= 2)
    {
      v10 = _ACDLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ACDDatabaseConnection *)keyCopy _accountPropertyWithKey:ownerCopy owner:v10];
      }

      if ([v9 count] >= 2)
      {
        v11 = 1;
        do
        {
          v12 = [v9 objectAtIndexedSubscript:v11];
          [(ACDDatabaseConnection *)self deleteObject:v12];

          v13 = [v9 objectAtIndexedSubscript:v11];
          [ownerCopy removeCustomPropertiesObject:v13];

          ++v11;
        }

        while ([v9 count] > v11);
      }
    }

    v14 = [v9 objectAtIndexedSubscript:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)insertNewObjectForEntityForName:(id)name
{
  v4 = MEMORY[0x277CBE408];
  nameCopy = name;
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  v7 = [v4 insertNewObjectForEntityForName:nameCopy inManagedObjectContext:managedObjectContext];

  [(NSCache *)self->_cache removeAllObjects];

  return v7;
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  [managedObjectContext deleteObject:objectCopy];

  cache = self->_cache;

  [(NSCache *)cache removeAllObjects];
}

- (void)deleteAccountPropertyWithKey:(id)key owner:(id)owner
{
  ownerCopy = owner;
  v6 = [(ACDDatabaseConnection *)self _accountPropertyWithKey:key owner:?];
  if (v6)
  {
    [(ACDDatabaseConnection *)self deleteObject:v6];
    [ownerCopy removeCustomPropertiesObject:v6];
  }
}

- (void)setAccountPropertyWithKey:(id)key value:(id)value owner:(id)owner
{
  keyCopy = key;
  valueCopy = value;
  ownerCopy = owner;
  v10 = [(ACDDatabaseConnection *)self _accountPropertyWithKey:keyCopy owner:ownerCopy];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [(ACDDatabaseConnection *)self insertNewObjectForEntityForName:@"AccountProperty"];
    [v11 setValue:keyCopy forKey:@"key"];
    [v11 setValue:ownerCopy forKey:@"owner"];
    [ownerCopy addCustomPropertiesObject:v11];
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  [v11 setValue:valueCopy forKey:@"value"];

LABEL_5:
  [(NSCache *)self->_cache removeAllObjects];
}

- (id)managedObjectIDForURI:(id)i
{
  iCopy = i;
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v7 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];

  return v7;
}

- (BOOL)saveWithError:(id *)error rollbackOnFailure:(BOOL)failure
{
  failureCopy = failure;
  v14[3] = *MEMORY[0x277D85DE8];
  [(ACDDatabaseConnection *)self _traceDatabaseEvents];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = 0;
  v8 = [(NSManagedObjectContext *)managedObjectContext save:v14];
  v9 = v14[0];
  if (v9)
  {
    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseConnection saveWithError:v9 rollbackOnFailure:v10];
    }

    [(ACDDatabaseConnection *)self _handleManagedObjectContextError:v9];
    if (error)
    {
      v11 = v9;
      *error = v9;
    }

    if (failureCopy)
    {
      [(NSManagedObjectContext *)self->_managedObjectContext rollback];
    }
  }

  [(NSCache *)self->_cache removeAllObjects];

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)rollback
{
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];
  [managedObjectContext rollback];

  cache = self->_cache;

  [(NSCache *)cache removeAllObjects];
}

- (void)_setupManagedObjectContextWithPersistentStoreCoodinator:(id)coodinator
{
  coodinatorCopy = coodinator;
  v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v5;

  v7 = self->_managedObjectContext;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ACDDatabaseConnection__setupManagedObjectContextWithPersistentStoreCoodinator___block_invoke;
  v9[3] = &unk_27848BFF0;
  v9[4] = self;
  v10 = coodinatorCopy;
  v8 = coodinatorCopy;
  [(NSManagedObjectContext *)v7 performBlockAndWait:v9];
}

void __81__ACDDatabaseConnection__setupManagedObjectContextWithPersistentStoreCoodinator___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [objc_alloc(MEMORY[0x277CBE460]) initWithMergeType:2];
  [v2 setMergePolicy:v3];

  [*(*(a1 + 32) + 40) setPersistentStoreCoordinator:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 40) userInfo];
  [v4 setObject:MEMORY[0x277CBEC38] forKey:@"ACDManagedObjectContextIsAccountsContext"];
}

- (void)_handleManagedObjectContextError:(id)error
{
  errorCopy = error;
  if ([errorCopy ac_isUnrecoverableDatabaseError])
  {
    localizedDescription = [errorCopy localizedDescription];
    [ACDAutoBugCapture triggerAutoBugCaptureWithType:0x28353A2B8 subType:0x28353A2F8 subtypeContext:localizedDescription detectedProcess:0];

    [(ACDDatabaseConnection *)self _delegate_databaseConnectionEncounteredUnrecoverableError:errorCopy];
  }
}

- (void)_traceDatabaseEvents
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = +[ACDEventLedger sharedLedger];
  _managedObjectContextModificationDescription = [(ACDDatabaseConnection *)self _managedObjectContextModificationDescription];
  [v3 recordEvent:_managedObjectContextModificationDescription];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  deletedObjects = [(NSManagedObjectContext *)self->_managedObjectContext deletedObjects];
  v6 = [deletedObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(deletedObjects);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          allIdentifiers = [MEMORY[0x277CB8F58] allIdentifiers];
          identifier = [v11 identifier];
          v14 = [allIdentifiers containsObject:identifier];

          if (v14)
          {
            accounts = [v11 accounts];
            v16 = [accounts count];

            if (v16)
            {
              v17 = MEMORY[0x277CCACA8];
              identifier2 = [v11 identifier];
              v19 = [v17 stringWithFormat:@"Attempted to remove account type '%@' while an account with that type still exists", identifier2];

              v20 = +[ACDEventLedger sharedLedger];
              [v20 simulateCrashWithMessage:v19];
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [deletedObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_managedObjectContextModificationDescription
{
  v3 = objc_opt_new();
  insertedObjects = [(NSManagedObjectContext *)self->_managedObjectContext insertedObjects];
  allObjects = [insertedObjects allObjects];

  if ([allObjects count])
  {
    [v3 appendString:@"Inserted:\n"];
    if ([allObjects count])
    {
      v6 = 0;
      do
      {
        v7 = [allObjects objectAtIndexedSubscript:v6];
        v8 = [(ACDDatabaseConnection *)self _managedObjectModificationDescription:v7];
        [v3 appendString:v8];

        if ([allObjects count] - 1 > v6)
        {
          [v3 appendString:{@", \n"}];
        }

        ++v6;
      }

      while ([allObjects count] > v6);
    }
  }

  deletedObjects = [(NSManagedObjectContext *)self->_managedObjectContext deletedObjects];
  allObjects2 = [deletedObjects allObjects];

  if ([allObjects2 count])
  {
    if ([v3 length])
    {
      [v3 appendString:@"\n"];
    }

    [v3 appendString:@"Deleted:\n"];
    if ([allObjects2 count])
    {
      v11 = 0;
      do
      {
        v12 = [allObjects2 objectAtIndexedSubscript:v11];
        v13 = [(ACDDatabaseConnection *)self _managedObjectModificationDescription:v12];
        [v3 appendString:v13];

        if ([allObjects2 count] - 1 > v11)
        {
          [v3 appendString:{@", "}];
        }

        ++v11;
      }

      while ([allObjects2 count] > v11);
    }
  }

  updatedObjects = [(NSManagedObjectContext *)self->_managedObjectContext updatedObjects];
  allObjects3 = [updatedObjects allObjects];

  if ([allObjects3 count])
  {
    if ([v3 length])
    {
      [v3 appendString:@"\n"];
    }

    [v3 appendString:@"Updated:\n"];
    if ([allObjects3 count])
    {
      v16 = 0;
      do
      {
        v17 = [allObjects3 objectAtIndexedSubscript:v16];
        v18 = [(ACDDatabaseConnection *)self _managedObjectModificationDescription:v17];
        [v3 appendString:v18];

        if ([allObjects3 count] - 1 > v16)
        {
          [v3 appendString:{@", \n"}];
        }

        ++v16;
      }

      while ([allObjects3 count] > v16);
    }
  }

  return v3;
}

- (id)_managedObjectModificationDescription:(id)description
{
  v3 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  entity = [descriptionCopy entity];
  managedObjectClassName = [entity managedObjectClassName];
  objectID = [descriptionCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  v10 = ACIsInternal();
  changedValues = [descriptionCopy changedValues];

  if (v10)
  {
    v12 = [v3 stringWithFormat:@"<%@:%@> changes:(%@)", managedObjectClassName, absoluteString, changedValues];
  }

  else
  {
    allKeys = [changedValues allKeys];
    v14 = [allKeys componentsJoinedByString:{@", "}];
    v12 = [v3 stringWithFormat:@"<%@:%@> changes:(%@)", managedObjectClassName, absoluteString, v14];
  }

  return v12;
}

void __80__ACDDatabaseConnection__beginObservingManagedObjectContextDidSaveNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _managedObjectContextDidSave:v3];
}

- (void)_managedObjectContextDidSave:(id)save
{
  saveCopy = save;
  if (!saveCopy)
  {
    [ACDDatabaseConnection _managedObjectContextDidSave:];
  }

  object = [saveCopy object];
  managedObjectContext = [(ACDDatabaseConnection *)self managedObjectContext];

  if (object != managedObjectContext)
  {
    object2 = [saveCopy object];
    userInfo = [object2 userInfo];
    v9 = [userInfo objectForKey:@"ACDManagedObjectContextIsAccountsContext"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      userInfo2 = [saveCopy userInfo];
      v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBE188]];
      if ([v12 count])
      {
      }

      else
      {
        userInfo3 = [saveCopy userInfo];
        v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBE150]];
        v15 = [v14 count];

        if (!v15)
        {
          v16 = 0;
          goto LABEL_9;
        }
      }

      [(NSCache *)self->_cache removeAllObjects];
      v16 = 1;
LABEL_9:
      managedObjectContext2 = [(ACDDatabaseConnection *)self managedObjectContext];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __54__ACDDatabaseConnection__managedObjectContextDidSave___block_invoke;
      v18[3] = &unk_27848CEE8;
      v18[4] = self;
      v20 = v16;
      v19 = saveCopy;
      [managedObjectContext2 performBlock:v18];
    }
  }
}

void __54__ACDDatabaseConnection__managedObjectContextDidSave___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) managedObjectContext];
    [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
  }
}

void __50__ACDDatabaseConnection__setupMemoryNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] removeAllObjects];
    WeakRetained = v2;
  }
}

- (void)_delegate_databaseConnectionEncounteredUnrecoverableError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [ACDDatabaseConnection _delegate_databaseConnectionEncounteredUnrecoverableError:];
  }

  delegate = [(ACDDatabaseConnection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate databaseConnection:self encounteredUnrecoverableError:errorCopy];
  }
}

- (ACDDatabaseConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_persistentStore
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "count")}];
  OUTLINED_FUNCTION_2_0();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)setVersion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"version" object:? file:? lineNumber:? description:?];
}

- (void)fetchObjectsForEntityNamed:withPredicate:sortDescriptor:prefetchKeypaths:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Got nil entityDescription for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)existingObjectWithURI:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "[ACDDatabaseConnection existingObjectWithURI:] called with an invalid URI %@. ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)existingObjectWithURI:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "[ACDDatabaseConnection existingObjectWithURI:] failed to fetch managed object at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_accountPropertyWithKey:(NSObject *)a3 owner:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a2 objectID];
  v6 = [v5 URIRepresentation];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_221D2F000, a3, OS_LOG_TYPE_ERROR, "There are more than one account property with the key '%@' for object '%@'. Deleting duplicates...", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveWithError:(void *)a1 rollbackOnFailure:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Could not save context: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_managedObjectContextDidSave:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"notification" object:? file:? lineNumber:? description:?];
}

- (void)_delegate_databaseConnectionEncounteredUnrecoverableError:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

@end
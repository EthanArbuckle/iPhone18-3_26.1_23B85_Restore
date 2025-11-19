@interface ACDDatabaseConnection
- (ACDDatabaseConnection)init;
- (ACDDatabaseConnection)initWithPersistentStoreCoordinator:(id)a3;
- (ACDDatabaseConnectionDelegate)delegate;
- (BOOL)saveWithError:(id *)a3 rollbackOnFailure:(BOOL)a4;
- (NSNumber)keychainVersion;
- (NSNumber)version;
- (id)_accountPropertyWithKey:(id)a3 owner:(id)a4;
- (id)_managedObjectContextModificationDescription;
- (id)_managedObjectModificationDescription:(id)a3;
- (id)_persistentStore;
- (id)existingObjectWithURI:(id)a3;
- (id)fetchObjectsForEntityNamed:(id)a3 withPredicate:(id)a4 sortDescriptor:(id)a5 prefetchKeypaths:(id)a6;
- (id)insertNewObjectForEntityForName:(id)a3;
- (id)managedObjectIDForURI:(id)a3;
- (id)objectForObjectURI:(id)a3;
- (unint64_t)countOfEntityNamed:(id)a3 withPredicate:(id)a4;
- (void)_beginObservingManagedObjectContextDidSaveNotifications;
- (void)_delegate_databaseConnectionEncounteredUnrecoverableError:(id)a3;
- (void)_endObservingManagedObjectContextDidSaveNotifications;
- (void)_handleManagedObjectContextError:(id)a3;
- (void)_managedObjectContextDidSave:(id)a3;
- (void)_persistentStore;
- (void)_setupManagedObjectContextWithPersistentStoreCoodinator:(id)a3;
- (void)_setupMemoryNotifications;
- (void)_teardownMemoryNotifications;
- (void)_traceDatabaseEvents;
- (void)dealloc;
- (void)deleteAccountPropertyWithKey:(id)a3 owner:(id)a4;
- (void)deleteObject:(id)a3;
- (void)rollback;
- (void)setAccountPropertyWithKey:(id)a3 value:(id)a4 owner:(id)a5;
- (void)setKeychainVersion:(id)a3;
- (void)setVersion:(id)a3;
@end

@implementation ACDDatabaseConnection

- (void)_beginObservingManagedObjectContextDidSaveNotifications
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (ACDDatabaseConnection)init
{
  [(ACDDatabaseConnection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDDatabaseConnection)initWithPersistentStoreCoordinator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ACDDatabaseConnection;
  v6 = [(ACDDatabaseConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentStoreCoordinator, a3);
    v8 = objc_opt_new();
    cache = v7->_cache;
    v7->_cache = v8;

    [(NSCache *)v7->_cache setName:@"ACDDabaseConnectionCache"];
    [(ACDDatabaseConnection *)v7 _setupManagedObjectContextWithPersistentStoreCoodinator:v5];
    [(ACDDatabaseConnection *)v7 _beginObservingManagedObjectContextDidSaveNotifications];
    [(ACDDatabaseConnection *)v7 _setupMemoryNotifications];
  }

  return v7;
}

- (NSNumber)version
{
  v2 = [(ACDDatabaseConnection *)self _persistentStore];
  v3 = [v2 metadata];

  v4 = [v3 objectForKeyedSubscript:@"ACAccountTypeVersion"];

  return v4;
}

- (NSNumber)keychainVersion
{
  v2 = [(ACDDatabaseConnection *)self _persistentStore];
  v3 = [v2 metadata];

  v4 = [v3 objectForKeyedSubscript:@"ACKeychainVersion"];

  return v4;
}

- (id)_persistentStore
{
  v2 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator persistentStores];
  if ([v2 count] != 1)
  {
    [(ACDDatabaseConnection *)v2 _persistentStore];
  }

  v3 = [v2 firstObject];

  return v3;
}

- (void)setVersion:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [ACDDatabaseConnection setVersion:];
  }

  v4 = [(ACDDatabaseConnection *)self _persistentStore];
  v5 = [v4 metadata];
  v6 = [v5 mutableCopy];

  [v6 setObject:v8 forKeyedSubscript:@"ACAccountTypeVersion"];
  v7 = [(ACDDatabaseConnection *)self _persistentStore];
  [v7 setMetadata:v6];
}

- (void)setKeychainVersion:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseConnection *)self _persistentStore];
  v6 = [v5 metadata];
  v8 = [v6 mutableCopy];

  [v8 setObject:v4 forKeyedSubscript:@"ACKeychainVersion"];
  v7 = [(ACDDatabaseConnection *)self _persistentStore];
  [v7 setMetadata:v8];
}

- (id)fetchObjectsForEntityNamed:(id)a3 withPredicate:(id)a4 sortDescriptor:(id)a5 prefetchKeypaths:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CBE408];
  v13 = [(ACDDatabaseConnection *)self managedObjectContext];
  v14 = [v12 entityForName:v9 inManagedObjectContext:v13];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v15 setEntity:v14];
    [v15 setReturnsObjectsAsFaults:0];
    if (v10)
    {
      [v15 setPredicate:v10];
    }

    if (v11)
    {
      v16 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
      [v15 setSortDescriptors:v16];
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [v10 predicateFormat];
    v19 = [v11 key];
    v20 = [v17 stringWithFormat:@"%@:%@:%@%d", v9, v18, v19, objc_msgSend(v11, "ascending")];

    v21 = [(NSCache *)self->_cache objectForKey:v20];
    if (!v21)
    {
      v22 = [(ACDDatabaseConnection *)self managedObjectContext];
      v40 = 0;
      v21 = [v22 executeFetchRequest:v15 error:&v40];
      v23 = v40;

      if (v21)
      {
        v32 = v23;
        v33 = v20;
        v34 = v10;
        v35 = v9;
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
              v29 = [(ACDDatabaseConnection *)self managedObjectContext];
              [v29 refreshObject:v28 mergeChanges:1];
            }

            v25 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v25);
        }

        v20 = v33;
        [(NSCache *)self->_cache setObject:v21 forKey:v33];
        v10 = v34;
        v9 = v35;
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

- (id)objectForObjectURI:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseConnection *)self managedObjectContext];
  v6 = [v5 persistentStoreCoordinator];
  v7 = [v6 managedObjectIDForURIRepresentation:v4];

  if (v7)
  {
    v8 = [(ACDDatabaseConnection *)self managedObjectContext];
    v9 = [v8 objectWithID:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)existingObjectWithURI:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseConnection *)self managedObjectContext];
  v6 = [v5 persistentStoreCoordinator];
  v7 = [v6 managedObjectIDForURIRepresentation:v4];

  if (v7)
  {
    v8 = [(ACDDatabaseConnection *)self managedObjectContext];
    v16 = 0;
    v9 = [v8 existingObjectWithID:v7 error:&v16];
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

    v12 = [(ACDDatabaseConnection *)self managedObjectContext];
    v13 = [v12 deletedObjects];
    v14 = [v13 containsObject:v9];

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

- (unint64_t)countOfEntityNamed:(id)a3 withPredicate:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBE408];
  v8 = a3;
  v9 = [(ACDDatabaseConnection *)self managedObjectContext];
  v10 = [v7 entityForName:v8 inManagedObjectContext:v9];

  v11 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v11 setEntity:v10];
  if (v6)
  {
    [v11 setPredicate:v6];
  }

  v12 = [(ACDDatabaseConnection *)self managedObjectContext];
  v16 = 0;
  v13 = [v12 countForFetchRequest:v11 error:&v16];
  v14 = v16;

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ACDDatabaseConnection *)self _handleManagedObjectContextError:v14];
  }

  return v13;
}

- (id)_accountPropertyWithKey:(id)a3 owner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key = %@ AND owner = %@", v6, v7];
  v9 = [(ACDDatabaseConnection *)self fetchObjectsForEntityNamed:@"AccountProperty" withPredicate:v8];

  if ([v9 count])
  {
    if ([v9 count] >= 2)
    {
      v10 = _ACDLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ACDDatabaseConnection *)v6 _accountPropertyWithKey:v7 owner:v10];
      }

      if ([v9 count] >= 2)
      {
        v11 = 1;
        do
        {
          v12 = [v9 objectAtIndexedSubscript:v11];
          [(ACDDatabaseConnection *)self deleteObject:v12];

          v13 = [v9 objectAtIndexedSubscript:v11];
          [v7 removeCustomPropertiesObject:v13];

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

- (id)insertNewObjectForEntityForName:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [(ACDDatabaseConnection *)self managedObjectContext];
  v7 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:v6];

  [(NSCache *)self->_cache removeAllObjects];

  return v7;
}

- (void)deleteObject:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseConnection *)self managedObjectContext];
  [v5 deleteObject:v4];

  cache = self->_cache;

  [(NSCache *)cache removeAllObjects];
}

- (void)deleteAccountPropertyWithKey:(id)a3 owner:(id)a4
{
  v7 = a4;
  v6 = [(ACDDatabaseConnection *)self _accountPropertyWithKey:a3 owner:?];
  if (v6)
  {
    [(ACDDatabaseConnection *)self deleteObject:v6];
    [v7 removeCustomPropertiesObject:v6];
  }
}

- (void)setAccountPropertyWithKey:(id)a3 value:(id)a4 owner:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ACDDatabaseConnection *)self _accountPropertyWithKey:v12 owner:v9];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [(ACDDatabaseConnection *)self insertNewObjectForEntityForName:@"AccountProperty"];
    [v11 setValue:v12 forKey:@"key"];
    [v11 setValue:v9 forKey:@"owner"];
    [v9 addCustomPropertiesObject:v11];
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  [v11 setValue:v8 forKey:@"value"];

LABEL_5:
  [(NSCache *)self->_cache removeAllObjects];
}

- (id)managedObjectIDForURI:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseConnection *)self managedObjectContext];
  v6 = [v5 persistentStoreCoordinator];
  v7 = [v6 managedObjectIDForURIRepresentation:v4];

  return v7;
}

- (BOOL)saveWithError:(id *)a3 rollbackOnFailure:(BOOL)a4
{
  v4 = a4;
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
    if (a3)
    {
      v11 = v9;
      *a3 = v9;
    }

    if (v4)
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
  v3 = [(ACDDatabaseConnection *)self managedObjectContext];
  [v3 rollback];

  cache = self->_cache;

  [(NSCache *)cache removeAllObjects];
}

- (void)_setupManagedObjectContextWithPersistentStoreCoodinator:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v5;

  v7 = self->_managedObjectContext;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ACDDatabaseConnection__setupManagedObjectContextWithPersistentStoreCoodinator___block_invoke;
  v9[3] = &unk_27848BFF0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
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

- (void)_handleManagedObjectContextError:(id)a3
{
  v5 = a3;
  if ([v5 ac_isUnrecoverableDatabaseError])
  {
    v4 = [v5 localizedDescription];
    [ACDAutoBugCapture triggerAutoBugCaptureWithType:0x28353A2B8 subType:0x28353A2F8 subtypeContext:v4 detectedProcess:0];

    [(ACDDatabaseConnection *)self _delegate_databaseConnectionEncounteredUnrecoverableError:v5];
  }
}

- (void)_traceDatabaseEvents
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = +[ACDEventLedger sharedLedger];
  v4 = [(ACDDatabaseConnection *)self _managedObjectContextModificationDescription];
  [v3 recordEvent:v4];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSManagedObjectContext *)self->_managedObjectContext deletedObjects];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [MEMORY[0x277CB8F58] allIdentifiers];
          v13 = [v11 identifier];
          v14 = [v12 containsObject:v13];

          if (v14)
          {
            v15 = [v11 accounts];
            v16 = [v15 count];

            if (v16)
            {
              v17 = MEMORY[0x277CCACA8];
              v18 = [v11 identifier];
              v19 = [v17 stringWithFormat:@"Attempted to remove account type '%@' while an account with that type still exists", v18];

              v20 = +[ACDEventLedger sharedLedger];
              [v20 simulateCrashWithMessage:v19];
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_managedObjectContextModificationDescription
{
  v3 = objc_opt_new();
  v4 = [(NSManagedObjectContext *)self->_managedObjectContext insertedObjects];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    [v3 appendString:@"Inserted:\n"];
    if ([v5 count])
    {
      v6 = 0;
      do
      {
        v7 = [v5 objectAtIndexedSubscript:v6];
        v8 = [(ACDDatabaseConnection *)self _managedObjectModificationDescription:v7];
        [v3 appendString:v8];

        if ([v5 count] - 1 > v6)
        {
          [v3 appendString:{@", \n"}];
        }

        ++v6;
      }

      while ([v5 count] > v6);
    }
  }

  v9 = [(NSManagedObjectContext *)self->_managedObjectContext deletedObjects];
  v10 = [v9 allObjects];

  if ([v10 count])
  {
    if ([v3 length])
    {
      [v3 appendString:@"\n"];
    }

    [v3 appendString:@"Deleted:\n"];
    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        v13 = [(ACDDatabaseConnection *)self _managedObjectModificationDescription:v12];
        [v3 appendString:v13];

        if ([v10 count] - 1 > v11)
        {
          [v3 appendString:{@", "}];
        }

        ++v11;
      }

      while ([v10 count] > v11);
    }
  }

  v14 = [(NSManagedObjectContext *)self->_managedObjectContext updatedObjects];
  v15 = [v14 allObjects];

  if ([v15 count])
  {
    if ([v3 length])
    {
      [v3 appendString:@"\n"];
    }

    [v3 appendString:@"Updated:\n"];
    if ([v15 count])
    {
      v16 = 0;
      do
      {
        v17 = [v15 objectAtIndexedSubscript:v16];
        v18 = [(ACDDatabaseConnection *)self _managedObjectModificationDescription:v17];
        [v3 appendString:v18];

        if ([v15 count] - 1 > v16)
        {
          [v3 appendString:{@", \n"}];
        }

        ++v16;
      }

      while ([v15 count] > v16);
    }
  }

  return v3;
}

- (id)_managedObjectModificationDescription:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 entity];
  v6 = [v5 managedObjectClassName];
  v7 = [v4 objectID];
  v8 = [v7 URIRepresentation];
  v9 = [v8 absoluteString];
  v10 = ACIsInternal();
  v11 = [v4 changedValues];

  if (v10)
  {
    v12 = [v3 stringWithFormat:@"<%@:%@> changes:(%@)", v6, v9, v11];
  }

  else
  {
    v13 = [v11 allKeys];
    v14 = [v13 componentsJoinedByString:{@", "}];
    v12 = [v3 stringWithFormat:@"<%@:%@> changes:(%@)", v6, v9, v14];
  }

  return v12;
}

void __80__ACDDatabaseConnection__beginObservingManagedObjectContextDidSaveNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _managedObjectContextDidSave:v3];
}

- (void)_managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [ACDDatabaseConnection _managedObjectContextDidSave:];
  }

  v5 = [v4 object];
  v6 = [(ACDDatabaseConnection *)self managedObjectContext];

  if (v5 != v6)
  {
    v7 = [v4 object];
    v8 = [v7 userInfo];
    v9 = [v8 objectForKey:@"ACDManagedObjectContextIsAccountsContext"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [v4 userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBE188]];
      if ([v12 count])
      {
      }

      else
      {
        v13 = [v4 userInfo];
        v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBE150]];
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
      v17 = [(ACDDatabaseConnection *)self managedObjectContext];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __54__ACDDatabaseConnection__managedObjectContextDidSave___block_invoke;
      v18[3] = &unk_27848CEE8;
      v18[4] = self;
      v20 = v16;
      v19 = v4;
      [v17 performBlock:v18];
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

- (void)_delegate_databaseConnectionEncounteredUnrecoverableError:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [ACDDatabaseConnection _delegate_databaseConnectionEncounteredUnrecoverableError:];
  }

  v4 = [(ACDDatabaseConnection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 databaseConnection:self encounteredUnrecoverableError:v5];
  }
}

- (ACDDatabaseConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_persistentStore
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
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
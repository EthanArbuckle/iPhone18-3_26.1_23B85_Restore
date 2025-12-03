@interface VSSubscriptionPersistentContainer
- (BOOL)_setupPersistenceIfNeeded:(id *)needed;
- (NSString)persistentStoreType;
- (NSURL)persistentStoreURL;
- (NSURL)subscriptionsPropertyListURL;
- (VSSubscriptionPersistentContainer)init;
- (void)_performBlock:(id)block andWait:(BOOL)wait;
- (void)_removePersistentStore;
@end

@implementation VSSubscriptionPersistentContainer

- (VSSubscriptionPersistentContainer)init
{
  v8.receiver = self;
  v8.super_class = VSSubscriptionPersistentContainer;
  v2 = [(VSSubscriptionPersistentContainer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    migrationQueue = v2->_migrationQueue;
    v2->_migrationQueue = v3;

    [(NSOperationQueue *)v2->_migrationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_migrationQueue setName:@"com.apple.VideoSubscriberAccount.SubscriptionMigration"];
    v5 = objc_alloc_init(VSOptional);
    viewContext = v2->_viewContext;
    v2->_viewContext = v5;
  }

  return v2;
}

- (NSString)persistentStoreType
{
  v2 = self->_persistentStoreType;
  if (!v2)
  {
    v2 = *MEMORY[0x277CBE2E8];
  }

  return v2;
}

- (NSURL)persistentStoreURL
{
  v2 = self->_persistentStoreURL;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v5 = [v4 URLsForDirectory:14 inDomains:1];
    firstObject = [v5 firstObject];

    v7 = [firstObject URLByAppendingPathComponent:@"videosubscriptionsd" isDirectory:1];
    v3 = [v7 URLByAppendingPathComponent:@"VSSubscriptions.sqlite" isDirectory:0];

    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine persistent store URL."];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The persistentStoreURL parameter must not be nil."];
      v3 = 0;
    }
  }

  return v3;
}

- (NSURL)subscriptionsPropertyListURL
{
  v2 = self->_subscriptionsPropertyListURL;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v5 = [v4 URLsForDirectory:14 inDomains:1];
    firstObject = [v5 firstObject];

    v7 = [firstObject URLByAppendingPathComponent:@"com.apple.spotlight" isDirectory:1];
    v3 = [v7 URLByAppendingPathComponent:@"subscriptions.plist" isDirectory:0];

    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine subscription plist URL."];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The subscriptionsPropertyListURL parameter must not be nil."];
      v3 = 0;
    }
  }

  return v3;
}

- (void)_removePersistentStore
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke;
  v2[3] = &unk_278B73308;
  v2[4] = self;
  [(VSSubscriptionPersistentContainer *)self performBlockAndWait:v2];
}

void __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) didSetupPersistence])
  {
    [v3 unwrapObject:&__block_literal_global_41 error:&__block_literal_global_35];
  }
}

void __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__VSSubscriptionPersistentContainer__removePersistentStore__block_invoke_3_cold_1();
  }
}

- (BOOL)_setupPersistenceIfNeeded:(id *)needed
{
  v66[1] = *MEMORY[0x277D85DE8];
  if (![(VSSubscriptionPersistentContainer *)self didSetupPersistence])
  {
    neededCopy = needed;
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will setup persistence.", buf, 2u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
    subscriptionsPropertyListURL = [(VSSubscriptionPersistentContainer *)self subscriptionsPropertyListURL];
    persistentStoreURL = [(VSSubscriptionPersistentContainer *)self persistentStoreURL];
    v10 = [MEMORY[0x277CBE450] vs_subscriptionModelForVersion:3];
    persistentStoreType = [(VSSubscriptionPersistentContainer *)self persistentStoreType];
    path = [persistentStoreURL path];
    v56 = subscriptionsPropertyListURL;
    path2 = [subscriptionsPropertyListURL path];
    v13 = path2;
    if (path && path2)
    {
      v14 = path;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to obtain path for sqlite or plist stores."];
      if (!path)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The sqlitePathOrNil parameter must not be nil."];
      }

      v15 = path;
      if (!v13)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The plistPathOrNil parameter must not be nil."];
      }
    }

    v58 = v13;
    uRLByDeletingLastPathComponent = [persistentStoreURL URLByDeletingLastPathComponent];
    if (!uRLByDeletingLastPathComponent)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine container for SQL store."];
    }

    v17 = 0x278B72000uLL;
    v54 = uRLByDeletingLastPathComponent;
    path3 = [uRLByDeletingLastPathComponent path];
    v19 = [VSOptional optionalWithObject:path3];
    forceUnwrapObject = [v19 forceUnwrapObject];

    v63 = 0;
    v53 = forceUnwrapObject;
    if ([v7 fileExistsAtPath:forceUnwrapObject isDirectory:&v63])
    {
      if (v63)
      {
        v21 = 0;
        goto LABEL_26;
      }

      v24 = VSErrorLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:v24];
      }

      v21 = 0;
    }

    else
    {
      v22 = VSDefaultLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v22, OS_LOG_TYPE_DEFAULT, "Will create container directory.", buf, 2u);
      }

      v62 = 0;
      v23 = [v7 createDirectoryAtPath:forceUnwrapObject withIntermediateDirectories:1 attributes:0 error:&v62];
      v21 = v62;
      if (v23)
      {
LABEL_26:
        v55 = v10;
        if (![v7 fileExistsAtPath:v58] || (objc_msgSend(v7, "fileExistsAtPath:", path) & 1) != 0 || -[VSSubscriptionPersistentContainer skipMigration](self, "skipMigration"))
        {
          v25 = VSDefaultLogObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v25, OS_LOG_TYPE_DEFAULT, "Did NOT migrate plist data.", buf, 2u);
          }
        }

        else
        {
          v38 = VSDefaultLogObject();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v38, OS_LOG_TYPE_DEFAULT, "Will migrate plist data.", buf, 2u);
          }

          v25 = [MEMORY[0x277CBE450] vs_subscriptionModelForVersion:0];
          v61 = v21;
          v31 = [MEMORY[0x277CBE458] inferredMappingModelForSourceModel:v25 destinationModel:v10 error:&v61];
          v39 = v61;

          if (!v31)
          {
            v46 = VSErrorLogObject();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
            }

            if (neededCopy)
            {
              v47 = v39;
              v5 = 0;
              *neededCopy = v39;
            }

            else
            {
              v5 = 0;
            }

            v21 = v39;
            goto LABEL_39;
          }

          v40 = v39;
          v50 = v39;
          v41 = [objc_alloc(MEMORY[0x277CBE468]) initWithSourceModel:v25 destinationModel:v10];
          v42 = VSSubscriptionPropertyListStoreType();
          v65 = *MEMORY[0x277CBE2B0];
          v66[0] = MEMORY[0x277CBEC38];
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
          v60 = v40;
          v51 = v41;
          v44 = v42;
          LODWORD(v41) = [v41 migrateStoreFromURL:v56 type:v42 options:v43 withMappingModel:v31 toDestinationURL:persistentStoreURL destinationType:persistentStoreType destinationOptions:0 error:&v60];
          v21 = v60;

          if (!v41)
          {
            v48 = VSErrorLogObject();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
            }

            if (neededCopy)
            {
              v49 = v21;
              *neededCopy = v21;
            }

            v5 = 0;
            goto LABEL_39;
          }

          v45 = VSDefaultLogObject();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v45, OS_LOG_TYPE_DEFAULT, "Migration of plist data completed successfully.", buf, 2u);
          }

          v10 = v55;
          v17 = 0x278B72000;
        }

        v26 = v21;

        v27 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v10];
        persistentStoreCoordinator = self->_persistentStoreCoordinator;
        self->_persistentStoreCoordinator = v27;

        v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v29 = MEMORY[0x277CBEC38];
        [v25 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE178]];
        [v25 setObject:v29 forKey:*MEMORY[0x277CBE1D8]];
        v30 = self->_persistentStoreCoordinator;
        v59 = v21;
        v31 = [(NSPersistentStoreCoordinator *)v30 addPersistentStoreWithType:persistentStoreType configuration:0 URL:persistentStoreURL options:v25 error:&v59];
        v21 = v59;

        v5 = v31 != 0;
        if (v31)
        {
          v32 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
          [v32 setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
          v33 = [*(v17 + 2272) optionalWithObject:v32];
          [(VSSubscriptionPersistentContainer *)self setViewContext:v33];

          [(VSSubscriptionPersistentContainer *)self setDidSetupPersistence:1];
          v34 = VSDefaultLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v34, OS_LOG_TYPE_DEFAULT, "Did setup persistence.", buf, 2u);
          }
        }

        else
        {
          v35 = VSErrorLogObject();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
          }

          if (neededCopy)
          {
            v36 = v21;
            *neededCopy = v21;
          }
        }

LABEL_39:

        return v5;
      }

      v24 = VSErrorLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VSSubscriptionPersistentContainer _setupPersistenceIfNeeded:];
      }
    }

    goto LABEL_26;
  }

  return 1;
}

- (void)_performBlock:(id)block andWait:(BOOL)wait
{
  waitCopy = wait;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  migrationQueue = [(VSSubscriptionPersistentContainer *)self migrationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke;
  v10[3] = &unk_278B74EF8;
  v10[4] = self;
  v12 = waitCopy;
  v9 = blockCopy;
  v11 = v9;
  [migrationQueue addOperationWithBlock:v10];
  if (waitCopy)
  {
    [migrationQueue waitUntilAllOperationsAreFinished];
  }

  objc_autoreleasePoolPop(v7);
}

void __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = [v3 _setupPersistenceIfNeeded:&v21];
  v5 = v21;
  v6 = v5;
  if (v4)
  {
    v7 = [*(a1 + 32) viewContext];
    v8 = [v7 forceUnwrapObject];

    if (*(a1 + 48) == 1)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_2;
      v18[3] = &unk_278B737F8;
      v9 = &v20;
      v10 = *(a1 + 40);
      v11 = &v19;
      v19 = v8;
      v20 = v10;
      [v8 performBlockAndWait:v18];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_3;
      v15[3] = &unk_278B737F8;
      v9 = &v17;
      v14 = *(a1 + 40);
      v11 = &v16;
      v16 = v8;
      v17 = v14;
      [v8 performBlock:v15];
    }

    v13 = *v9;
  }

  else
  {
    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v12 = *(a1 + 40);
    v13 = v6;
    v8 = [VSFailable failableWithError:v13];
    (*(v12 + 16))(v12, v8);
  }

  objc_autoreleasePoolPop(v2);
}

void __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSFailable failableWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __59__VSSubscriptionPersistentContainer__performBlock_andWait___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSFailable failableWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

@end
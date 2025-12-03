@interface AVTCoreDataStoreBackend
+ (id)cdFetchRequestForAvatarFetchRequest:(id)request recordTransformer:(id)transformer;
- (AVTCoreDataStoreBackend)initWithConfiguration:(id)configuration environment:(id)environment;
- (AVTCoreDataStoreBackend)initWithConfiguration:(id)configuration recordTransformer:(id)transformer remoteChangesObserver:(id)observer localProcessName:(id)name recordChangeTracker:(id)tracker environment:(id)environment;
- (AVTStoreBackendDelegate)backendDelegate;
- (BOOL)canCreateAvatarWithError:(id *)error;
- (BOOL)deleteAvatarWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)saveAvatar:(id)avatar error:(id *)error;
- (BOOL)saveAvatars:(id)avatars error:(id *)error;
- (BOOL)setupStoreIfNeeded:(id *)needed;
- (id)avatarsForFetchRequest:(id)request error:(id *)error;
- (id)duplicateAvatarRecord:(id)record error:(id *)error;
- (id)newManagedObjectContext;
- (id)recordIdentifiersForManagedObjectIDs:(id)ds managedObjectContext:(id)context error:(id *)error;
- (unint64_t)nts_avatarCountWithManagedObjectContext:(id)context error:(id *)error;
- (void)contentDidChangeWithIdentifiers:(id)identifiers;
- (void)getChangedObjectIDsOfInterest:(id *)interest deletedIdentifiers:(id *)identifiers forTransactions:(id)transactions;
- (void)performWorkWithManagedObjectContext:(id)context;
- (void)startObservingChangesIfNeeded;
@end

@implementation AVTCoreDataStoreBackend

- (AVTCoreDataStoreBackend)initWithConfiguration:(id)configuration environment:(id)environment
{
  environmentCopy = environment;
  configurationCopy = configuration;
  v8 = objc_alloc_init(AVTAvatarManagedRecordTransformer);
  serialQueueProvider = [environmentCopy serialQueueProvider];
  v10 = (serialQueueProvider)[2](serialQueueProvider, "com.apple.AvatarUI.AVTCoreDataStoreBackend.changesObserverQueue");

  v11 = [AVTEventCoalescer alloc];
  logger = [environmentCopy logger];
  v13 = [(AVTEventCoalescer *)v11 initWithDelay:v10 queue:logger logger:1.0];

  v14 = [[AVTCoreDataRemoteChangesObserver alloc] initWithConfiguration:configurationCopy workQueue:v10 coalescer:v13 environment:environmentCopy];
  v15 = [[AVTCoreDataChangeTracker alloc] initWithConfiguration:configurationCopy recordTransformer:v8 environment:environmentCopy];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v18 = [(AVTCoreDataStoreBackend *)self initWithConfiguration:configurationCopy recordTransformer:v8 remoteChangesObserver:v14 localProcessName:processName recordChangeTracker:v15 environment:environmentCopy];
  return v18;
}

- (AVTCoreDataStoreBackend)initWithConfiguration:(id)configuration recordTransformer:(id)transformer remoteChangesObserver:(id)observer localProcessName:(id)name recordChangeTracker:(id)tracker environment:(id)environment
{
  configurationCopy = configuration;
  transformerCopy = transformer;
  observerCopy = observer;
  nameCopy = name;
  trackerCopy = tracker;
  environmentCopy = environment;
  v26.receiver = self;
  v26.super_class = AVTCoreDataStoreBackend;
  v19 = [(AVTCoreDataStoreBackend *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_recordTransformer, transformer);
    logger = [environmentCopy logger];
    logger = v20->_logger;
    v20->_logger = logger;

    objc_storeStrong(&v20->_configuration, configuration);
    objc_storeStrong(&v20->_remoteChangesObserver, observer);
    objc_storeStrong(&v20->_recordChangeTracker, tracker);
    objc_storeStrong(&v20->_localProcessName, name);
  }

  return v20;
}

- (id)newManagedObjectContext
{
  configuration = [(AVTCoreDataStoreBackend *)self configuration];
  createManagedObjectContext = [configuration createManagedObjectContext];

  return createManagedObjectContext;
}

- (void)performWorkWithManagedObjectContext:(id)context
{
  contextCopy = context;
  newManagedObjectContext = [(AVTCoreDataStoreBackend *)self newManagedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__AVTCoreDataStoreBackend_performWorkWithManagedObjectContext___block_invoke;
  v8[3] = &unk_278CF9F78;
  v9 = newManagedObjectContext;
  v10 = contextCopy;
  v6 = newManagedObjectContext;
  v7 = contextCopy;
  [v6 performBlockAndWait:v8];
}

- (BOOL)setupStoreIfNeeded:(id *)needed
{
  configuration = [(AVTCoreDataStoreBackend *)self configuration];
  v6 = [configuration setupIfNeeded:needed];

  if (v6)
  {
    [(AVTCoreDataStoreBackend *)self startObservingChangesIfNeeded];
  }

  return v6;
}

- (id)recordIdentifiersForManagedObjectIDs:(id)ds managedObjectContext:(id)context error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  contextCopy = context;
  v9 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Avatar"];
  [v9 setResultType:2];
  v35[0] = @"identifier";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v9 setPropertiesToFetch:v10];

  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"self in %@", dsCopy];
  [v9 setPredicate:dsCopy];

  v12 = [contextCopy executeFetchRequest:v9 error:error];
  if (v12)
  {
    v25 = v9;
    v26 = contextCopy;
    v27 = dsCopy;
    array = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v12;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:@"identifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
          {
            v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v18, "bytes")}];

            v18 = v19;
          }

          recordTransformer = [(AVTCoreDataStoreBackend *)self recordTransformer];
          v21 = [recordTransformer identifierForManagedRecordIdentifier:v18];
          [array addObject:v21];
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    contextCopy = v26;
    dsCopy = v27;
    v12 = v24;
    v9 = v25;
  }

  else
  {
    array = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)getChangedObjectIDsOfInterest:(id *)interest deletedIdentifiers:(id *)identifiers forTransactions:(id)transactions
{
  v46 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  localProcessName = [(AVTCoreDataStoreBackend *)self localProcessName];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = transactionsCopy;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v29 = *v41;
    v30 = localProcessName;
    do
    {
      v11 = 0;
      v31 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        processID = [v12 processID];
        v14 = [processID isEqual:localProcessName];

        if ((v14 & 1) == 0)
        {
          v33 = v11;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          changes = [v12 changes];
          v16 = [changes countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (!v16)
          {
            goto LABEL_23;
          }

          v17 = v16;
          v18 = *v37;
          while (1)
          {
            v19 = 0;
            do
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(changes);
              }

              v20 = *(*(&v36 + 1) + 8 * v19);
              if (!(*(AVTIsPersistentChangeOfInterest + 2))(AVTIsPersistentChangeOfInterest, v20))
              {
                logger = [(AVTCoreDataStoreBackend *)self logger];
                recordTransformer = [v20 description];
                [logger logPersistentChangeNotOfInterest:recordTransformer];
LABEL_17:

                goto LABEL_19;
              }

              if ([v20 changeType] == 2)
              {
                tombstone = [v20 tombstone];
                logger = [tombstone objectForKeyedSubscript:@"identifier"];

                if (logger)
                {
                  recordTransformer = [(AVTCoreDataStoreBackend *)self recordTransformer];
                  v24 = [recordTransformer identifierForManagedRecordIdentifier:logger];
                  [array2 addObject:v24];
                }

                else
                {
                  recordTransformer = [(AVTCoreDataStoreBackend *)self logger];
                  [recordTransformer logMissingTombstonedIdentifier];
                }

                goto LABEL_17;
              }

              logger = [v20 changedObjectID];
              [array addObject:logger];
LABEL_19:

              ++v19;
            }

            while (v17 != v19);
            v25 = [changes countByEnumeratingWithState:&v36 objects:v44 count:16];
            v17 = v25;
            if (!v25)
            {
LABEL_23:

              v10 = v29;
              localProcessName = v30;
              v9 = v31;
              v11 = v33;
              break;
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  *interest = [array copy];
  *identifiers = [array2 copy];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)startObservingChangesIfNeeded
{
  remoteChangesObserver = [(AVTCoreDataStoreBackend *)self remoteChangesObserver];
  isObservingChanges = [remoteChangesObserver isObservingChanges];

  if ((isObservingChanges & 1) == 0)
  {
    objc_initWeak(&location, self);
    remoteChangesObserver2 = [(AVTCoreDataStoreBackend *)self remoteChangesObserver];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __56__AVTCoreDataStoreBackend_startObservingChangesIfNeeded__block_invoke;
    v10 = &unk_278CF9FA0;
    objc_copyWeak(&v11, &location);
    [remoteChangesObserver2 addChangesHandler:&v7];

    v6 = [(AVTCoreDataStoreBackend *)self remoteChangesObserver:v7];
    [v6 startObservingChanges];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __56__AVTCoreDataStoreBackend_startObservingChangesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = 0;
  v18 = 0;
  [WeakRetained getChangedObjectIDsOfInterest:&v18 deletedIdentifiers:&v17 forTransactions:v6];

  v8 = v18;
  v9 = v17;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v16 = 0;
    v10 = [WeakRetained recordIdentifiersForManagedObjectIDs:v8 managedObjectContext:v5 error:&v16];
    v11 = v16;
    if (!v10)
    {
      v12 = [WeakRetained logger];
      v13 = [v8 description];
      v14 = [v11 description];
      [v12 logErrorGettingChangedRecordsContentForIdentifiers:v13 error:v14];

      v10 = MEMORY[0x277CBEBF8];
    }

    v15 = [v10 arrayByAddingObjectsFromArray:v9];
    [WeakRetained contentDidChangeWithIdentifiers:v15];
  }
}

- (id)avatarsForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (![objc_opt_class() fetchRequestCriteriaSupported:{objc_msgSend(requestCopy, "criteria")}])
  {
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_17;
  }

  if (![(AVTCoreDataStoreBackend *)self setupStoreIfNeeded:error])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __56__AVTCoreDataStoreBackend_avatarsForFetchRequest_error___block_invoke;
  v14 = &unk_278CF9FC8;
  selfCopy = self;
  v7 = requestCopy;
  v16 = v7;
  v17 = &v19;
  v18 = &v25;
  [(AVTCoreDataStoreBackend *)self performWorkWithManagedObjectContext:&v11];
  if (!v26[5])
  {
    if (error)
    {
      v9 = v20[5];
LABEL_14:
      v8 = 0;
      *error = v9;
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (([v7 criteria] == 1 || objc_msgSend(v7, "criteria") == 2) && !objc_msgSend(v26[5], "count"))
  {
    if (error)
    {
      v9 = [AVTError errorWithCode:404 userInfo:0];
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = v26[5];
LABEL_16:

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

LABEL_17:

  return v8;
}

void __56__AVTCoreDataStoreBackend_avatarsForFetchRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) recordTransformer];
  v8 = [v5 cdFetchRequestForAvatarFetchRequest:v6 recordTransformer:v7];

  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v3 executeFetchRequest:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    v11 = +[AVTPAvatarStore maximumNumberOfFetchableAvatars];
    v39 = v8;
    v40 = v3;
    if ([v10 count] > v11)
    {
      v12 = [*(a1 + 32) logger];
      [v12 logTooManyAvatars:objc_msgSend(v10 limit:{"count"), v11}];

      v13 = [v10 subarrayWithRange:{objc_msgSend(v10, "count") - v11, v11}];

      v10 = v13;
    }

    v14 = [*(a1 + 40) criteria];
    v15 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = v10;
    v43 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v43)
    {
      v17 = *v46;
      v41 = a1;
      v42 = v14;
      do
      {
        v18 = 0;
        do
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v16);
          }

          v19 = *(*(&v45 + 1) + 8 * v18);
          v20 = [*(a1 + 32) recordTransformer];
          v44 = 0;
          v21 = [v20 recordWithManagedRecord:v19 error:&v44];
          v22 = v44;

          if (v21)
          {
            [v15 addObject:v21];
            if (v14 == 5)
            {

              goto LABEL_18;
            }
          }

          else
          {
            if ([v22 code] == 703)
            {
              v23 = MEMORY[0x277CCACA8];
              v24 = [v22 description];
              [v22 userInfo];
              v26 = v25 = v15;
              [v26 objectForKeyedSubscript:0];
              v27 = v17;
              v29 = v28 = v16;
              v30 = [v23 stringWithFormat:@"%@ : unexpected class is %@", v24, v29];

              v16 = v28;
              v17 = v27;

              v15 = v25;
              a1 = v41;
              v14 = v42;

              v31 = [*(v41 + 32) logger];
              v32 = v31;
              v33 = v30;
              v34 = 1;
            }

            else
            {
              v30 = [*(a1 + 32) logger];
              v32 = [v22 description];
              v31 = v30;
              v33 = v32;
              v34 = 0;
            }

            [v31 logUnableToReadRemoteRecord:v33 isCritical:v34];
          }

          ++v18;
        }

        while (v43 != v18);
        v43 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v43);
    }

LABEL_18:

    v35 = [v15 copy];
    v36 = *(*(a1 + 56) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    v8 = v39;
    v3 = v40;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveAvatar:(id)avatar error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  avatarCopy = avatar;
  v6 = MEMORY[0x277CBEA60];
  avatarCopy2 = avatar;
  v8 = [v6 arrayWithObjects:&avatarCopy count:1];

  LOBYTE(error) = [(AVTCoreDataStoreBackend *)self saveAvatars:v8 error:error, avatarCopy, v12];
  v9 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)saveAvatars:(id)avatars error:(id *)error
{
  avatarsCopy = avatars;
  if ([avatarsCopy count])
  {
    if ([(AVTCoreDataStoreBackend *)self setupStoreIfNeeded:error])
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 1;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy_;
      v18 = __Block_byref_object_dispose_;
      v19 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__AVTCoreDataStoreBackend_saveAvatars_error___block_invoke;
      v9[3] = &unk_278CF9FC8;
      v10 = avatarsCopy;
      selfCopy = self;
      v12 = &v14;
      v13 = &v20;
      [(AVTCoreDataStoreBackend *)self performWorkWithManagedObjectContext:v9];
      v7 = *(v21 + 24);
      if (error && (v21[3] & 1) == 0)
      {
        *error = v15[5];
      }

      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __45__AVTCoreDataStoreBackend_saveAvatars_error___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __45__AVTCoreDataStoreBackend_saveAvatars_error___block_invoke_2;
  v47[3] = &unk_278CF9FF0;
  v4 = *(a1 + 32);
  v47[4] = *(a1 + 40);
  v5 = [v4 avt_map:v47];
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v5];
  v9 = [v7 cdFetchRequestWithPredicate:v8 fetchLimit:0];

  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeFetchRequest:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = [MEMORY[0x277CBEAC0] _avtui_dictionaryByIndexingObjectsInArray:v11 by:&__block_literal_global];
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 48) + 8);
    v45 = *(v14 + 40);
    v15 = [v13 nts_avatarCountWithManagedObjectContext:v3 error:&v45];
    objc_storeStrong((v14 + 40), v45);
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [*(a1 + 32) count];
      v17 = [v11 count];
      if (v16 == v17 || v16 + v15 - v17 <= +[AVTPAvatarStore maximumNumberOfSavableAvatars])
      {
        v36 = v11;
        v37 = v9;
        v38 = v5;
        v39 = v3;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v21 = *(a1 + 32);
        v22 = [v21 countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v42;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v42 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v41 + 1) + 8 * i);
              v27 = [*(a1 + 40) recordTransformer];
              v28 = [v26 identifier];
              v29 = [v27 managedRecordIdentifierForIdentifier:v28];

              v30 = [v12 objectForKeyedSubscript:v29];
              if (!v30)
              {
                v30 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"Avatar" inManagedObjectContext:v39];
              }

              v31 = [*(a1 + 40) recordTransformer];
              [v31 updateManagedRecord:v30 withRecord:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v41 objects:v48 count:16];
          }

          while (v23);
        }

        v32 = *(a1 + 40);
        v33 = *(*(a1 + 48) + 8);
        v40 = *(v33 + 40);
        v3 = v39;
        v34 = [v32 nts_saveManagedObjectContext:v39 error:&v40];
        objc_storeStrong((v33 + 40), v40);
        *(*(*(a1 + 56) + 8) + 24) = v34;
        v9 = v37;
        v5 = v38;
        v11 = v36;
        goto LABEL_18;
      }

      v18 = [AVTError errorWithCode:578 userInfo:0];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_18:

    goto LABEL_19;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_19:

  v35 = *MEMORY[0x277D85DE8];
}

id __45__AVTCoreDataStoreBackend_saveAvatars_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordTransformer];
  v5 = [v3 identifier];

  v6 = [v4 managedRecordIdentifierForIdentifier:v5];

  return v6;
}

- (BOOL)deleteAvatarWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(AVTCoreDataStoreBackend *)self setupStoreIfNeeded:error])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__AVTCoreDataStoreBackend_deleteAvatarWithIdentifier_error___block_invoke;
    v9[3] = &unk_278CF9FC8;
    v9[4] = self;
    v10 = identifierCopy;
    v11 = &v19;
    v12 = &v13;
    [(AVTCoreDataStoreBackend *)self performWorkWithManagedObjectContext:v9];
    v7 = *(v20 + 24);
    if (error && (v20[3] & 1) == 0)
    {
      *error = v14[5];
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __60__AVTCoreDataStoreBackend_deleteAvatarWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [v3 fetchRequestWithEntityName:@"Avatar"];
  v6 = [*(a1 + 32) recordTransformer];
  v7 = [v6 managedRecordIdentifierForIdentifier:*(a1 + 40)];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", v7];
  [v5 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v4 executeRequest:v9 error:&obj];

  objc_storeStrong((v10 + 40), obj);
  v12 = [v11 result];
  *(*(*(a1 + 48) + 8) + 24) = [v12 BOOLValue];
}

- (id)duplicateAvatarRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if ([(AVTCoreDataStoreBackend *)self setupStoreIfNeeded:error])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__AVTCoreDataStoreBackend_duplicateAvatarRecord_error___block_invoke;
    v10[3] = &unk_278CFA038;
    v10[4] = self;
    v12 = &v14;
    v11 = recordCopy;
    v13 = &v20;
    [(AVTCoreDataStoreBackend *)self performWorkWithManagedObjectContext:v10];
    v7 = v21[5];
    if (v7)
    {
      v8 = v7;
    }

    else if (error)
    {
      *error = v15[5];
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__AVTCoreDataStoreBackend_duplicateAvatarRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 nts_avatarCountWithManagedObjectContext:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 >= +[AVTPAvatarStore maximumNumberOfSavableAvatars])
    {
      v24 = [AVTError errorWithCode:578 userInfo:0];
      v25 = *(*(a1 + 48) + 8);
      v14 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = MEMORY[0x277CCAC30];
      v10 = [*(a1 + 40) orderDate];
      v11 = [*(a1 + 40) orderDate];
      v12 = [v11 dateByAddingTimeInterval:1.0];
      v13 = [v9 predicateWithFormat:@"%K > %@ AND %K < %@", @"orderDate", v10, @"orderDate", v12];
      v14 = [v8 cdFetchRequestWithPredicate:v13 fetchLimit:1];

      [v14 setResultType:2];
      v42[0] = @"orderDate";
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      [v14 setPropertiesToFetch:v15];

      v16 = *(*(a1 + 48) + 8);
      v40 = *(v16 + 40);
      v17 = [v3 executeFetchRequest:v14 error:&v40];
      objc_storeStrong((v16 + 40), v40);
      if (v17)
      {
        if ([v17 count])
        {
          v18 = [v17 firstObject];
          v19 = [v18 objectForKeyedSubscript:@"orderDate"];
          v20 = [*(a1 + 40) orderDate];
          [v19 timeIntervalSinceDate:v20];
          v22 = v21;

          v23 = v22 * 0.5;
        }

        else
        {
          v23 = 0.5;
        }

        v28 = [*(a1 + 40) orderDate];
        v27 = [v28 dateByAddingTimeInterval:v23];

        v29 = [AVTAvatarRecord alloc];
        v30 = [*(a1 + 40) avatarData];
        v31 = [v30 copy];
        v32 = [(AVTAvatarRecord *)v29 initWithAvatarData:v31 orderDate:v27];

        v33 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"Avatar" inManagedObjectContext:v3];
        v34 = [*(a1 + 32) recordTransformer];
        [v34 updateManagedRecord:v33 withRecord:v32];

        v35 = *(a1 + 32);
        v36 = *(*(a1 + 48) + 8);
        v39 = *(v36 + 40);
        v37 = [v35 nts_saveManagedObjectContext:v3 error:&v39];
        objc_storeStrong((v36 + 40), v39);
        if (v37)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v32);
        }
      }

      else
      {
        v26 = *(*(a1 + 56) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = 0;
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (unint64_t)nts_avatarCountWithManagedObjectContext:(id)context error:(id *)error
{
  v5 = MEMORY[0x277CBE428];
  contextCopy = context;
  v7 = [v5 fetchRequestWithEntityName:@"Avatar"];
  v8 = [contextCopy countForFetchRequest:v7 error:error];

  return v8;
}

- (BOOL)canCreateAvatarWithError:(id *)error
{
  if (![(AVTCoreDataStoreBackend *)self setupStoreIfNeeded:?])
  {
    return 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__AVTCoreDataStoreBackend_canCreateAvatarWithError___block_invoke;
  v8[3] = &unk_278CFA060;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  [(AVTCoreDataStoreBackend *)self performWorkWithManagedObjectContext:v8];
  v5 = v16[3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
    if (error)
    {
      *error = v10[5];
    }
  }

  else
  {
    v6 = v5 < +[AVTPAvatarStore maximumNumberOfSavableAvatars];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __52__AVTCoreDataStoreBackend_canCreateAvatarWithError___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 nts_avatarCountWithManagedObjectContext:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
  if (*(*(a1[5] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && !*(*(a1[6] + 8) + 40))
  {
    v6 = [AVTError errorWithCode:1 userInfo:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)contentDidChangeWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  backendDelegate = [(AVTCoreDataStoreBackend *)self backendDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    backendDelegate2 = [(AVTCoreDataStoreBackend *)self backendDelegate];
    [backendDelegate2 backend:self didChangeRecordsWithIdentifiers:identifiersCopy];
  }
}

+ (id)cdFetchRequestForAvatarFetchRequest:(id)request recordTransformer:(id)transformer
{
  v46 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  transformerCopy = transformer;
  criteria = [requestCopy criteria];
  if (criteria <= 3)
  {
    if (criteria == 1)
    {
      identifiers = [requestCopy identifiers];
      v31 = [identifiers objectAtIndexedSubscript:0];
      v32 = [transformerCopy managedRecordIdentifierForIdentifier:v31];

      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", v32];
    }

    else
    {
      if (criteria != 2)
      {
        goto LABEL_32;
      }

      v19 = MEMORY[0x277CBEB18];
      identifiers2 = [requestCopy identifiers];
      v21 = [v19 arrayWithCapacity:{objc_msgSend(identifiers2, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      identifiers3 = [requestCopy identifiers];
      v23 = [identifiers3 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(identifiers3);
            }

            v27 = [transformerCopy managedRecordIdentifierForIdentifier:*(*(&v40 + 1) + 8 * i)];
            if (v27)
            {
              [v21 addObject:v27];
            }
          }

          v24 = [identifiers3 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v24);
      }

      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"identifier", v21];
    }

    fetchLimit = 0;
    goto LABEL_33;
  }

  if (criteria != 4)
  {
    if (criteria == 5)
    {
      v29 = 0;
      fetchLimit = 0;
      v18 = 0;
      goto LABEL_34;
    }

    if (criteria == 6)
    {
      v9 = MEMORY[0x277CBEB18];
      identifiers4 = [requestCopy identifiers];
      v11 = [v9 arrayWithCapacity:{objc_msgSend(identifiers4, "count")}];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      excludingIdentifiers = [requestCopy excludingIdentifiers];
      v13 = [excludingIdentifiers countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(excludingIdentifiers);
            }

            v17 = [transformerCopy managedRecordIdentifierForIdentifier:*(*(&v36 + 1) + 8 * j)];
            if (v17)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [excludingIdentifiers countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v14);
      }

      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K in %@)", @"identifier", v11];

      goto LABEL_28;
    }

LABEL_32:
    fetchLimit = 0;
    v18 = 0;
    goto LABEL_33;
  }

  v18 = 0;
LABEL_28:
  fetchLimit = [requestCopy fetchLimit];
LABEL_33:
  v29 = 1;
LABEL_34:
  v33 = [self cdFetchRequestWithPredicate:v18 fetchLimit:fetchLimit ascending:v29];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (AVTStoreBackendDelegate)backendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->backendDelegate);

  return WeakRetained;
}

@end
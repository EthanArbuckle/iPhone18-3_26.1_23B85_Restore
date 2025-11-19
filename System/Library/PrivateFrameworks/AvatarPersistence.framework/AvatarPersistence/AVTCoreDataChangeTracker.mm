@interface AVTCoreDataChangeTracker
- (AVTCoreDataChangeTracker)initWithConfiguration:(id)a3 environment:(id)a4;
- (AVTCoreDataChangeTracker)initWithConfiguration:(id)a3 recordTransformer:(id)a4 environment:(id)a5;
- (BOOL)processChangeTransactionsWithChangeTokenLocation:(id)a3 handler:(id)a4 error:(id *)a5;
- (BOOL)saveToken:(id)a3 location:(id)a4 error:(id *)a5;
- (id)currentHistoryTokenForLocation:(id)a3;
- (id)enumerateChangesAfterToken:(id)a3 managedObjectContext:(id)a4 changesHandler:(id)a5 error:(id *)a6;
- (id)recordIdentifierForChange:(id)a3 managedObjectContext:(id)a4;
- (id)trackerChangesFromPersistentChanges:(id)a3 managedObjectContext:(id)a4;
@end

@implementation AVTCoreDataChangeTracker

- (AVTCoreDataChangeTracker)initWithConfiguration:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AVTAvatarManagedRecordTransformer);
  v9 = [(AVTCoreDataChangeTracker *)self initWithConfiguration:v7 recordTransformer:v8 environment:v6];

  return v9;
}

- (AVTCoreDataChangeTracker)initWithConfiguration:(id)a3 recordTransformer:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AVTCoreDataChangeTracker;
  v12 = [(AVTCoreDataChangeTracker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, a5);
    v14 = [v11 logger];
    logger = v13->_logger;
    v13->_logger = v14;

    objc_storeStrong(&v13->_recordTransformer, a4);
    objc_storeStrong(&v13->_configuration, a3);
  }

  return v13;
}

- (BOOL)processChangeTransactionsWithChangeTokenLocation:(id)a3 handler:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5;
  v37 = __Block_byref_object_dispose__5;
  v38 = 0;
  v10 = [(AVTCoreDataChangeTracker *)self currentHistoryTokenForLocation:v8];
  v11 = [(AVTCoreDataChangeTracker *)self configuration];
  v12 = [v11 createManagedObjectContext];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__AVTCoreDataChangeTracker_processChangeTransactionsWithChangeTokenLocation_handler_error___block_invoke;
  v25[3] = &unk_278CFADF8;
  v30 = &v45;
  v13 = v12;
  v31 = &v33;
  v32 = &v39;
  v26 = v13;
  v27 = self;
  v14 = v10;
  v28 = v14;
  v15 = v9;
  v29 = v15;
  [v13 performBlockAndWait:v25];
  if ((v46[3] & 1) == 0)
  {
    if (a5)
    {
      v19 = 0;
      *a5 = v34[5];
      goto LABEL_11;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v16 = v40[5];
  if (v16 != v14)
  {
    v17 = (v34 + 5);
    obj = v34[5];
    v18 = [(AVTCoreDataChangeTracker *)self saveToken:v16 location:v8 error:&obj];
    objc_storeStrong(v17, obj);
    *(v46 + 24) = v18;
    if (!v18)
    {
      if (a5)
      {
        *a5 = v34[5];
      }

      v20 = [(AVTCoreDataChangeTracker *)self logger];
      v21 = [v34[5] description];
      v22 = [v8 path];
      [v20 logErrorSavingChangeToken:v21 location:v22];

      goto LABEL_10;
    }
  }

  v19 = 1;
LABEL_11:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  return v19;
}

void __91__AVTCoreDataChangeTracker_processChangeTransactionsWithChangeTokenLocation_handler_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v4 = *(*(a1 + 72) + 8);
  v16 = *(v4 + 40);
  LOBYTE(v2) = [v2 setQueryGenerationFromToken:v3 error:&v16];
  objc_storeStrong((v4 + 40), v16);
  *(*(*(a1 + 64) + 8) + 24) = v2;

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__AVTCoreDataChangeTracker_processChangeTransactionsWithChangeTokenLocation_handler_error___block_invoke_2;
    v13[3] = &unk_278CFADD0;
    v13[4] = v6;
    v14 = v7;
    v15 = *(a1 + 56);
    v8 = *(*(a1 + 72) + 8);
    obj = *(v8 + 40);
    v9 = [v6 enumerateChangesAfterToken:v5 managedObjectContext:v14 changesHandler:v13 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 72) + 8) + 40) == 0;
  }
}

uint64_t __91__AVTCoreDataChangeTracker_processChangeTransactionsWithChangeTokenLocation_handler_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) trackerChangesFromPersistentChanges:a2 managedObjectContext:*(a1 + 40)];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) logger];
    v5 = [v3 description];
    v6 = [v3 count];
    v7 = [*(a1 + 32) description];
    [v4 logTrackerProcessingChanges:v5 count:v6 from:v7];

    v8 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)trackerChangesFromPersistentChanges:(id)a3 managedObjectContext:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = a4;
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ((*(AVTIsPersistentChangeOfInterest + 2))(AVTIsPersistentChangeOfInterest, v12))
        {
          v13 = [(AVTCoreDataChangeTracker *)self recordIdentifierForChange:v12 managedObjectContext:v19];
          if (v13)
          {
            v14 = -[AVTCoreDataChangeTrackerChange initWithRecordIdentifier:changeType:]([AVTCoreDataChangeTrackerChange alloc], "initWithRecordIdentifier:changeType:", v13, +[AVTCoreDataChangeTrackerChange trackerChangeTypeFromPersistentChangeType:](AVTCoreDataChangeTrackerChange, "trackerChangeTypeFromPersistentChangeType:", [v12 changeType]));
            [v18 addObject:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [v18 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)currentHistoryTokenForLocation:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() tokenFileURLForLocation:v4];

  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v24 = 0;
    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:&v24];
    v10 = v24;
    if (v9)
    {
      v23 = v10;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v23];
      v12 = v23;

      if (v11)
      {
        v11 = v11;
        v10 = v12;
        v13 = v11;
      }

      else
      {
        v19 = [(AVTCoreDataChangeTracker *)self environment];
        v20 = [v19 logger];
        v21 = [v12 description];
        [v20 logErrorReadingCurrentHistoryToken:v21];

        v10 = v12;
        v13 = 0;
      }
    }

    else
    {
      v11 = [(AVTCoreDataChangeTracker *)self environment];
      v17 = [v11 logger];
      v18 = [v10 description];
      [v17 logErrorReadingCurrentHistoryToken:v18];

      v13 = 0;
    }
  }

  else
  {
    v14 = [(AVTCoreDataChangeTracker *)self environment];
    v15 = [v14 logger];
    v16 = [v5 path];
    [v15 logCurrentHistoryTokenFileDoesntExist:v16];

    v13 = 0;
  }

  return v13;
}

- (BOOL)saveToken:(id)a3 location:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__5;
    v23 = __Block_byref_object_dispose__5;
    v24 = 0;
    v10 = [(AVTCoreDataChangeTracker *)self logger];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__AVTCoreDataChangeTracker_saveToken_location_error___block_invoke;
    v13[3] = &unk_278CFAE20;
    v14 = v9;
    v17 = &v25;
    v18 = &v19;
    v15 = v8;
    v16 = self;
    [v10 savingChangeTrackerToken:v13];

    v11 = *(v26 + 24);
    if (a5 && (v26[3] & 1) == 0)
    {
      *a5 = v20[5];
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else if (a5)
  {
    [AVTError errorWithCode:730 userInfo:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __53__AVTCoreDataChangeTracker_saveToken_location_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 fileExistsAtPath:v3];

  if ((v4 & 1) != 0 || (v5 = *(a1 + 32), v6 = *(*(a1 + 64) + 8), obj = *(v6 + 40), v7 = [v2 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&obj], objc_storeStrong((v6 + 40), obj), *(*(*(a1 + 56) + 8) + 24) = v7, *(*(*(a1 + 56) + 8) + 24) == 1))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 64) + 8);
    v16 = *(v9 + 40);
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v16];
    objc_storeStrong((v9 + 40), v16);
    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = [objc_opt_class() tokenFileURLForLocation:*(a1 + 32)];
      v13 = *(*(a1 + 64) + 8);
      v15 = *(v13 + 40);
      v14 = [v10 writeToURL:v12 options:1 error:&v15];
      objc_storeStrong((v13 + 40), v15);
      *(*(*(a1 + 56) + 8) + 24) = v14;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }
}

- (id)enumerateChangesAfterToken:(id)a3 managedObjectContext:(id)a4 changesHandler:(id)a5 error:(id *)a6
{
  v46[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v9];
  [v12 setResultType:5];
  v43 = 0;
  v13 = [v10 executeRequest:v12 error:&v43];
  v14 = v43;
  v15 = v14;
  if (v13)
  {
    v34 = v14;
    v35 = v13;
    v36 = v12;
    v37 = v10;
    v16 = [v13 result];
    v17 = v9;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = v19;
    v21 = *v40;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * i);
        v24 = [v23 token];

        v25 = [v23 changes];
        v26 = v25;
        if (v24)
        {
          v27 = v11[2](v11, v25);

          if (!v27)
          {
            goto LABEL_15;
          }

          [v23 token];
          v17 = v28 = v17;
        }

        else
        {
          v29 = [v25 count];

          if (!v29)
          {
            continue;
          }

          v28 = [(AVTCoreDataChangeTracker *)self logger];
          [v28 logTransactionHasChangesButNoToken];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v20)
      {
LABEL_15:

        v10 = v37;
        v13 = v35;
        v12 = v36;
        v15 = v34;
        goto LABEL_21;
      }
    }
  }

  if (v14)
  {
    if (a6)
    {
LABEL_18:
      v30 = v15;
      v17 = 0;
      *a6 = v15;
      goto LABEL_21;
    }
  }

  else
  {
    v45 = *MEMORY[0x277CCA470];
    v46[0] = @"Got a nil NSPersistentHistoryResult, but no error filled in";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v15 = [AVTError errorWithCode:1 userInfo:v31];

    if (a6)
    {
      goto LABEL_18;
    }
  }

  v17 = 0;
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)recordIdentifierForChange:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 changeType] == 2)
  {
    v8 = [v6 tombstone];
    [v8 objectForKeyedSubscript:@"identifier"];
  }

  else
  {
    v9 = [v6 changedObjectID];
    v8 = [v7 objectWithID:v9];

    [v8 identifier];
  }
  v10 = ;

  v11 = [(AVTCoreDataChangeTracker *)self logger];
  if (v10)
  {
    v12 = [v10 UUIDString];
    v13 = [v6 changeType];
    v14 = [v6 changedObjectID];
    v15 = [v14 URIRepresentation];
    v16 = [v15 description];
    [v11 logFoundRecordIdentifier:v12 changeType:v13 managedObjectID:v16];

    v11 = [(AVTCoreDataChangeTracker *)self recordTransformer];
    v17 = [v11 identifierForManagedRecordIdentifier:v10];
  }

  else
  {
    v18 = [v6 changeType];
    v19 = [v6 changedObjectID];
    v20 = [v19 URIRepresentation];
    v21 = [v20 description];
    [v11 logCouldntFindRecordIdentifierForChangeType:v18 managedObjectID:v21];

    v17 = 0;
  }

  return v17;
}

@end
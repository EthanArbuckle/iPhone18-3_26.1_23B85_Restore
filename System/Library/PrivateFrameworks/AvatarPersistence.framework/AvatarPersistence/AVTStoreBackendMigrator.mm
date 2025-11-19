@interface AVTStoreBackendMigrator
- (AVTStoreBackendMigrator)initWithEnvironment:(id)a3;
- (BOOL)migrateContentFromSource:(id)a3 toDestination:(id)a4 error:(id *)a5;
- (id)updatedRecordsForMigratingRecords:(id)a3 source:(id)a4 destinationBackend:(id)a5 error:(id *)a6;
@end

@implementation AVTStoreBackendMigrator

- (AVTStoreBackendMigrator)initWithEnvironment:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AVTStoreBackendMigrator;
  v6 = [(AVTStoreBackendMigrator *)&v10 init];
  if (v6)
  {
    v7 = [v5 logger];
    logger = v6->_logger;
    v6->_logger = v7;

    objc_storeStrong(&v6->_environment, a3);
  }

  return v6;
}

- (BOOL)migrateContentFromSource:(id)a3 toDestination:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v10 = [(AVTStoreBackendMigrator *)self logger];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__AVTStoreBackendMigrator_migrateContentFromSource_toDestination_error___block_invoke;
  v15[3] = &unk_278CFAE48;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v18 = &v20;
  v19 = &v26;
  v12 = v9;
  v17 = v12;
  [v10 migratingPersistedContent:v15];

  v13 = *(v27 + 24);
  if (a5 && (v27[3] & 1) == 0)
  {
    *a5 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __72__AVTStoreBackendMigrator_migrateContentFromSource_toDestination_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [*(a1 + 40) description];
  [v2 logMigratingSource:v3];

  v4 = [*(a1 + 40) createSourceBackend];
  v5 = +[AVTAvatarFetchRequest requestForAllAvatars];
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 avatarsForFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  *(*(*(a1 + 64) + 8) + 24) = v7 != 0;
  v8 = *(a1 + 32);
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v12 = [v8 logger];
    v19 = [*(*(*(a1 + 56) + 8) + 40) description];
    [v12 logReadingError:v19];
LABEL_10:

    goto LABEL_11;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(*(a1 + 56) + 8);
  v23 = *(v11 + 40);
  v12 = [v8 updatedRecordsForMigratingRecords:v7 source:v9 destinationBackend:v10 error:&v23];
  objc_storeStrong((v11 + 40), v23);
  *(*(*(a1 + 64) + 8) + 24) = v12 != 0;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v19 = [*(a1 + 32) logger];
    v20 = [*(*(*(a1 + 56) + 8) + 40) description];
    [v19 logErrorUpdatingRecordsForMigration:v20];
    goto LABEL_9;
  }

  v13 = *(a1 + 48);
  v14 = *(*(a1 + 56) + 8);
  v22 = *(v14 + 40);
  v15 = [v13 saveAvatars:v12 error:&v22];
  objc_storeStrong((v14 + 40), v22);
  *(*(*(a1 + 64) + 8) + 24) = v15;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v19 = [*(a1 + 32) logger];
    v20 = [*(*(*(a1 + 56) + 8) + 40) description];
    [v19 logSavingError:v20];
    goto LABEL_9;
  }

  v16 = *(a1 + 40);
  v17 = *(*(a1 + 56) + 8);
  v21 = *(v17 + 40);
  v18 = [v16 finalizeMigration:&v21];
  objc_storeStrong((v17 + 40), v21);
  *(*(*(a1 + 64) + 8) + 24) = v18;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v19 = [*(a1 + 32) logger];
    v20 = [*(*(*(a1 + 56) + 8) + 40) description];
    [v19 logErrorDeletingMigratedContent:v20];
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
}

- (id)updatedRecordsForMigratingRecords:(id)a3 source:(id)a4 destinationBackend:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[AVTAvatarFetchRequest requestForAllAvatars];
  v14 = [v12 avatarsForFetchRequest:v13 error:a6];
  v15 = [v14 avt_map:&__block_literal_global_8];

  if (v15)
  {
    v16 = [MEMORY[0x277CBEB18] array];
    if ([v10 count])
    {
      v17 = 0;
      do
      {
        v18 = [v10 objectAtIndexedSubscript:v17];
        v19 = [v18 identifier];
        v20 = [v15 containsObject:v19];

        if (v20)
        {
          v21 = [(AVTStoreBackendMigrator *)self logger];
          [v21 logFoundExistingRecordDuringMigration];
        }

        else
        {
          v21 = [v11 migratedRecordFromRecord:v18 index:v17 totalCount:{objc_msgSend(v10, "count")}];
          [v16 addObject:v21];
        }

        ++v17;
      }

      while (v17 < [v10 count]);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
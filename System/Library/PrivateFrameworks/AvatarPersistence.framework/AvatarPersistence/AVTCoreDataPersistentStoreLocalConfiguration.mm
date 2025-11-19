@interface AVTCoreDataPersistentStoreLocalConfiguration
@end

@implementation AVTCoreDataPersistentStoreLocalConfiguration

void __63___AVTCoreDataPersistentStoreLocalConfiguration_setupIfNeeded___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    *(*(a1[5] + 8) + 24) = 0;
    v8 = v5;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    v6 = a1[4];
    v7 = [v8 description];
    [v6 logErrorAddingPersistentStore:v7];

    v5 = v8;
  }
}

void __66___AVTCoreDataPersistentStoreLocalConfiguration_copyStorageAside___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) storeLocation];
  v6 = [v4 sideDatabaseFolderForStoreLocation:v5];

  v7 = [v6 path];
  v8 = [v2 fileExistsAtPath:v7];

  if (!v8 || (v9 = *(*(a1 + 48) + 8), obj = *(v9 + 40), v10 = [v2 removeItemAtURL:v6 error:&obj], objc_storeStrong((v9 + 40), obj), *(*(*(a1 + 40) + 8) + 24) = v10, *(*(*(a1 + 40) + 8) + 24) == 1))
  {
    v11 = [*(a1 + 32) folderLocation];
    v12 = *(*(a1 + 48) + 8);
    v14 = *(v12 + 40);
    v13 = [v2 copyItemAtURL:v11 toURL:v6 error:&v14];
    objc_storeStrong((v12 + 40), v14);
    *(*(*(a1 + 40) + 8) + 24) = v13;
  }
}

void __102___AVTCoreDataPersistentStoreLocalConfiguration_updateBackupInclusionStatusOnQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102___AVTCoreDataPersistentStoreLocalConfiguration_updateBackupInclusionStatusOnQueue_completionHandler___block_invoke_2;
  v12[3] = &unk_278CFAF58;
  v13 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v16 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __102___AVTCoreDataPersistentStoreLocalConfiguration_updateBackupInclusionStatusOnQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 48) logger];
    [v2 logUpdatingBackupExclusionStatus:{objc_msgSend(*(a1 + 32), "BOOLValue")}];

    v3 = [*(a1 + 48) folderLocation];
    v39 = 0;
    v4 = *MEMORY[0x277CBE878];
    v38 = 0;
    v5 = [v3 getResourceValue:&v39 forKey:v4 error:&v38];
    v6 = v39;
    v7 = v38;
    if (!v5 || [v6 BOOLValue] && (v37 = v7, v8 = objc_msgSend(v3, "setResourceValue:forKey:error:", MEMORY[0x277CBEC28], v4, &v37), v9 = v37, v7, v7 = v9, (v8 & 1) == 0))
    {
      v10 = [*(a1 + 48) logger];
      v11 = [v7 description];
      [v10 logErrorMigratingBackupInclusionStatus:v11];
    }

    v12 = [*(a1 + 32) BOOLValue];
    v13 = MEMORY[0x277CBED28];
    if (!v12)
    {
      v13 = MEMORY[0x277CBED10];
    }

    v14 = *v13;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __102___AVTCoreDataPersistentStoreLocalConfiguration_updateBackupInclusionStatusOnQueue_completionHandler___block_invoke_3;
    v32[3] = &unk_278CFAF30;
    v15 = v3;
    v36 = v14;
    v16 = *(a1 + 48);
    v33 = v15;
    v34 = v16;
    v17 = v7;
    v35 = v17;
    v18 = MEMORY[0x245CF3540](v32);
    v19 = *MEMORY[0x277CBECB0];
    v31 = 0;
    v20 = (v18)[2](v18, v19, &v31);
    v21 = v31;
    v22 = *MEMORY[0x277CBECB8];
    v30 = 0;
    v23 = (v18)[2](v18, v22, &v30);
    v24 = v30;
    v25 = *(a1 + 56);
    if (v25)
    {
      if (v20)
      {
        v26 = v24;
      }

      else
      {
        v26 = v21;
      }

      (*(v25 + 16))(v25, v20 & v23, v26);
    }
  }

  else
  {
    v27 = *(a1 + 56);
    v28 = *(a1 + 40);
    v29 = *(*(a1 + 56) + 16);

    v29();
  }
}

BOOL __102___AVTCoreDataPersistentStoreLocalConfiguration_updateBackupInclusionStatusOnQueue_completionHandler___block_invoke_3(uint64_t a1, const __CFString *a2, void *a3)
{
  error = 0;
  v5 = CFURLSetResourcePropertyForKey(*(a1 + 32), a2, *(a1 + 56), &error);
  if (!v5)
  {
    if (a3 && error)
    {
      *a3 = error;
    }

    error = 0;
    v6 = [*(a1 + 40) logger];
    v7 = [*(a1 + 48) description];
    [v6 logErrorUpdatingBackupInclusionStatus:v7];
  }

  return v5 != 0;
}

@end
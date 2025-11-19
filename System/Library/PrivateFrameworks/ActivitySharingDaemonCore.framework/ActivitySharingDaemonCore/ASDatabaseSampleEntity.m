@interface ASDatabaseSampleEntity
+ (BOOL)deleteSamplesOfType:(id)a3 predicate:(id)a4 healthStore:(id)a5 deletedSampleCount:(unint64_t *)a6 error:(id *)a7;
+ (BOOL)enumerateSamplesOfType:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7 handler:(id)a8;
+ (BOOL)enumerateSamplesOfTypes:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7 handler:(id)a8;
+ (id)samplesOfType:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7;
+ (id)samplesOfTypes:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7;
@end

@implementation ASDatabaseSampleEntity

+ (id)samplesOfType:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v12 = MEMORY[0x277CBEA60];
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 arrayWithObjects:&v20 count:1];

  v17 = [a1 samplesOfTypes:v16 predicate:v14 healthStore:v13 anchor:a6 error:{a7, v20, v21}];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)samplesOfTypes:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a6)
  {
    v14 = [MEMORY[0x277CCD840] anchorFromValue:{objc_msgSend(*a6, "integerValue")}];
  }

  else
  {
    v14 = 0;
  }

  v15 = dispatch_semaphore_create(0);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __76__ASDatabaseSampleEntity_samplesOfTypes_predicate_healthStore_anchor_error___block_invoke;
  v37[3] = &unk_278C4B8C0;
  v16 = v12;
  v38 = v16;
  v17 = [v11 hk_map:v37];
  v18 = objc_alloc(MEMORY[0x277CCCFF0]);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __76__ASDatabaseSampleEntity_samplesOfTypes_predicate_healthStore_anchor_error___block_invoke_2;
  v32 = &unk_278C4B8E8;
  v34 = &v51;
  v35 = &v45;
  v36 = &v39;
  v19 = v15;
  v33 = v19;
  v20 = [v18 initWithQueryDescriptors:v17 anchor:v14 limit:0 resultsHandler:&v29];
  [v20 setIgnoreDeletedObjects:{1, v29, v30, v31, v32}];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v20 setDebugIdentifier:v22];

  [v13 executeQuery:v20];
  v23 = dispatch_time(0, 15000000000);
  v24 = dispatch_semaphore_wait(v19, v23);
  [v13 stopQuery:v20];
  if (v24)
  {
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.DatabaseSampleEntity" code:0 userInfo:0];
    v26 = v40[5];
    v40[5] = v25;
  }

  if (a6)
  {
    *a6 = v46[5];
  }

  *a7 = v40[5];
  v27 = v52[5];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);

  return v27;
}

id __76__ASDatabaseSampleEntity_samplesOfTypes_predicate_healthStore_anchor_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD848];
  v4 = a2;
  v5 = [[v3 alloc] initWithSampleType:v4 predicate:*(a1 + 32)];

  return v5;
}

void __76__ASDatabaseSampleEntity_samplesOfTypes_predicate_healthStore_anchor_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v22 = v9;
  v13 = a5;

  v14 = MEMORY[0x277CCABB0];
  v15 = [v13 _rowid];

  v16 = [v14 numberWithLongLong:v15];
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v10;
  v21 = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)enumerateSamplesOfType:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7 handler:(id)a8
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v14 = MEMORY[0x277CBEA60];
  v15 = a8;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v14 arrayWithObjects:&v22 count:1];

  LOBYTE(a7) = [a1 enumerateSamplesOfTypes:v19 predicate:v17 healthStore:v16 anchor:a6 error:a7 handler:{v15, v22, v23}];
  v20 = *MEMORY[0x277D85DE8];
  return a7;
}

+ (BOOL)enumerateSamplesOfTypes:(id)a3 predicate:(id)a4 healthStore:(id)a5 anchor:(id *)a6 error:(id *)a7 handler:(id)a8
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = [a1 samplesOfTypes:a3 predicate:a4 healthStore:a5 anchor:a6 error:a7];
  v16 = v15;
  v17 = *a7;
  if (!*a7)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v14[2](v14, *(*(&v24 + 1) + 8 * i));
        }

        v19 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17 == 0;
}

+ (BOOL)deleteSamplesOfType:(id)a3 predicate:(id)a4 healthStore:(id)a5 deletedSampleCount:(unint64_t *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = dispatch_semaphore_create(0);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __93__ASDatabaseSampleEntity_deleteSamplesOfType_predicate_healthStore_deletedSampleCount_error___block_invoke;
  v24 = &unk_278C4B910;
  v26 = &v39;
  v27 = &v35;
  v28 = &v29;
  v15 = v14;
  v25 = v15;
  [v13 deleteObjectsOfType:v11 predicate:v12 withCompletion:&v21];
  v16 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.DatabaseSampleEntity" code:0 userInfo:{0, v21, v22, v23, v24}];
    v18 = v30[5];
    v30[5] = v17;
  }

  *a6 = v36[3];
  *a7 = v30[5];
  v19 = *(v40 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v19;
}

void __93__ASDatabaseSampleEntity_deleteSamplesOfType_predicate_healthStore_deletedSampleCount_error___block_invoke(uint64_t a1, char a2, uint64_t a3, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v6 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end
@interface AMDStorage
+ (id)fetchCoreDataRecordsFrom:(id)a3 error:(id *)a4;
+ (id)fetchRecordsFrom:(id)a3 error:(id *)a4;
+ (id)persistFitnessData:(id)a3;
+ (unsigned)deleteCoreDataRecordsFrom:(id)a3 usingPredicates:(id)a4 error:(id *)a5;
+ (unsigned)deleteRecordsFrom:(id)a3 usingPredicates:(id)a4 error:(id *)a5;
+ (unsigned)saveRecords:(id)a3 inTable:(id)a4 error:(id *)a5;
+ (unsigned)saveRecordsToCoreData:(id)a3 inTable:(id)a4 error:(id *)a5;
@end

@implementation AMDStorage

+ (unsigned)saveRecords:(id)a3 inTable:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v10 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v5 = [location[0] count];
    __os_log_helper_16_2_2_8_0_8_64(v15, v5, v12);
    _os_log_debug_impl(&dword_240CB9000, v10, OS_LOG_TYPE_DEBUG, "Saving %lu events to table %@", v15, 0x16u);
  }

  objc_storeStrong(&v10, 0);
  v7 = [v14 saveRecordsToCoreData:location[0] inTable:v12 error:v11];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)fetchRecordsFrom:(id)a3 error:(id *)a4
{
  v8 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [v8 fetchCoreDataRecordsFrom:location[0] error:a4];
  objc_storeStrong(location, 0);

  return v6;
}

+ (unsigned)deleteRecordsFrom:(id)a3 usingPredicates:(id)a4 error:(id *)a5
{
  v11 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [v11 deleteCoreDataRecordsFrom:location[0] usingPredicates:v9 error:a5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

+ (unsigned)saveRecordsToCoreData:(id)a3 inTable:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = a5;
  v31 = +[AMDCoreDataPersistentContainer sharedContainer];
  v30 = [v31 getManagedObjectContext];
  v29 = NSSelectorFromString(&cfstr_Populaterecord.isa);
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v9 = v30;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __50__AMDStorage_saveRecordsToCoreData_inTable_error___block_invoke;
  v17 = &unk_278CB5D48;
  v18 = MEMORY[0x277D82BE0](location[0]);
  v19 = MEMORY[0x277D82BE0](v33);
  v20 = MEMORY[0x277D82BE0](v30);
  v21[2] = v29;
  v21[1] = &v22;
  v21[0] = MEMORY[0x277D82BE0](v31);
  [v9 performBlockAndWait:&v13];
  if (v23[5])
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v8 = [location[0] count];
      __os_log_helper_16_2_2_8_0_8_64(v36, v8, v33);
      _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "Failed to save %lu events to table %@", v36, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = v23[5];
    v5 = v7;
    *v32 = v7;
    v35 = 0;
  }

  else
  {
    v35 = [location[0] count];
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v35;
}

void __50__AMDStorage_saveRecordsToCoreData_inTable_error___block_invoke(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v25 = a1;
  v24 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](a1[4]);
  v14 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v14)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v14;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(__b[1] + 8 * v10);
      v21 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:a1[5] inManagedObjectContext:a1[6]];
      if (v24 & 1) != 0 || (v1 = a1[9], (objc_opt_respondsToSelector()))
      {
        v24 = 1;
        v16 = [v21 methodForSelector:a1[9]];
        v15[1] = v16;
        (v16)(v21, a1[9], v23);
        v17 = 0;
      }

      else
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MO for table '%@' missing selector 'populateRecord'", a1[5]];
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v27, v20);
          _os_log_error_impl(&dword_240CB9000, log, type, "%@", v27, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v2 = [AMDError allocError:15 withMessage:v20];
        v3 = *(a1[8] + 8);
        v4 = *(v3 + 40);
        *(v3 + 40) = v2;
        MEMORY[0x277D82BD8](v4);
        v17 = 2;
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&v21, 0);
      if (v17)
      {
        break;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v11)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!*(*(a1[8] + 8) + 40))
  {
    v5 = a1[7];
    v6 = (*(a1[8] + 8) + 40);
    v15[0] = *v6;
    [v5 save:v15];
    objc_storeStrong(v6, v15[0]);
  }

  *MEMORY[0x277D85DE8];
}

+ (id)fetchCoreDataRecordsFrom:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v33 = +[AMDCoreDataPersistentContainer sharedContainer];
  v32 = [v33 getManagedObjectContext];
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v10 = v32;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __45__AMDStorage_fetchCoreDataRecordsFrom_error___block_invoke;
  v15 = &unk_278CB5AA8;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[1] = &v18;
  v17[0] = MEMORY[0x277D82BE0](v32);
  v17[2] = &v25;
  [v10 performBlockAndWait:&v11];
  if (v26[5])
  {
    v8 = v26[5];
    v4 = v8;
    *v34 = v8;
    v36 = 0;
  }

  else
  {
    if (v19[5])
    {
      v5 = MEMORY[0x277D82BE0](v19[5]);
    }

    else
    {
      v5 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
    }

    v36 = v5;
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  v6 = v36;

  return v6;
}

void __45__AMDStorage_fetchCoreDataRecordsFrom_error___block_invoke(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = [MEMORY[0x277CBE428] fetchRequestWithEntityName:a1[4]];
  [v8[0] setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v7 = *location;
  v6 = [v1 executeFetchRequest:v8[0] error:&v7];
  objc_storeStrong(location, v7);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v6;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v8, 0);
}

+ (unsigned)deleteCoreDataRecordsFrom:(id)a3 usingPredicates:(id)a4 error:(id *)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = a5;
  v33 = +[AMDCoreDataPersistentContainer sharedContainer];
  v32 = [v33 getManagedObjectContext];
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  v10 = v32;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __62__AMDStorage_deleteCoreDataRecordsFrom_usingPredicates_error___block_invoke;
  v15 = &unk_278CB5D70;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v35);
  v18 = MEMORY[0x277D82BE0](v32);
  v19[1] = &v25;
  v19[0] = MEMORY[0x277D82BE0](v33);
  v19[2] = &v20;
  [v10 performBlockAndWait:&v11];
  if (v26[5])
  {
    v7 = v26[5];
    v5 = v7;
    *v34 = v7;
    v37 = 0;
  }

  else
  {
    v37 = *(v21 + 6);
  }

  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  return v37;
}

void __62__AMDStorage_deleteCoreDataRecordsFrom_usingPredicates_error___block_invoke(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v27[2] = a1;
  v27[1] = a1;
  v27[0] = [MEMORY[0x277CBE428] fetchRequestWithEntityName:a1[4]];
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1[5])
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](a1[5]);
    v17 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
    if (v17)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v17;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(__b[1] + 8 * v14);
        v10 = v26;
        v11 = [MEMORY[0x277CCAC30] predicateWithFormat:v25];
        [v10 addObject:?];
        MEMORY[0x277D82BD8](v11);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  v6 = v27[0];
  v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v26];
  [v6 setPredicate:?];
  MEMORY[0x277D82BD8](v7);
  v1 = objc_alloc(MEMORY[0x277CBE360]);
  v23 = [v1 initWithFetchRequest:v27[0]];
  [v23 setResultType:2];
  v2 = a1[6];
  location = (*(a1[8] + 8) + 40);
  v21 = *location;
  v9 = [v2 executeRequest:v23 error:&v21];
  objc_storeStrong(location, v21);
  v22 = v9;
  if (*(*(a1[8] + 8) + 40))
  {
    v20 = 1;
  }

  else
  {
    v3 = a1[7];
    v4 = (*(a1[8] + 8) + 40);
    v19 = *v4;
    [v3 save:&v19];
    objc_storeStrong(v4, v19);
    v5 = [v22 result];
    *(*(a1[9] + 8) + 24) = [v5 unsignedIntValue];
    MEMORY[0x277D82BD8](v5);
    v20 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v27, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)persistFitnessData:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [location[0] allKeys];
  v3 = [AMDSQLite deleteEventsWithPredicate:0 forStreams:?];
  MEMORY[0x277D82BD8](v14);
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v16 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
  if (v16)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v16;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v12);
      v20 = 0;
      v25[0] = 0x2852A9148;
      v26[0] = v22;
      v25[1] = 0x2852A9128;
      v8 = [location[0] objectForKey:v22];
      v26[1] = v8;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
      MEMORY[0x277D82BD8](v8);
      v17 = v20;
      v9 = [AMDSQLite saveEvents:v19 error:&v17];
      objc_storeStrong(&v20, v17);
      v18 = v9;
      if (v20)
      {
        v6 = v23;
        v7 = [v20 localizedDescription];
        [v6 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v7);
      }

      if (v18)
      {
        [v23 setObject:v18 forKey:v22];
      }

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v5 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

@end
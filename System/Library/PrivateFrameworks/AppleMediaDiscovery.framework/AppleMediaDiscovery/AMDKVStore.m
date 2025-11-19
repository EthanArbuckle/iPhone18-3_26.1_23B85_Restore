@interface AMDKVStore
+ (id)deleteWithPredicate:(id)a3 error:(id *)a4;
+ (id)fetchAllKeyValues:(id *)a3;
+ (id)fetchEntryForKey:(id)a3 error:(id *)a4;
+ (id)fetchValueForKey:(id)a3 error:(id *)a4;
+ (void)setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
@end

@implementation AMDKVStore

+ (id)fetchValueForKey:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = [v21 fetchEntryForKey:location[0] error:a4];
  if (*a4)
  {
    v22 = 0;
    v17 = 1;
  }

  else if ([v18 count])
  {
    v10 = [v18 firstObject];
    v16 = [v10 objectForKey:@"value"];
    MEMORY[0x277D82BD8](v10);
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v16 options:4 error:v19];
    if (*v19)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v8 = type;
        v6 = location[0];
        v9 = [*v19 localizedDescription];
        v12 = MEMORY[0x277D82BE0](v9);
        __os_log_helper_16_2_2_8_64_8_64(v23, v6, v12);
        _os_log_error_impl(&dword_240CB9000, log, v8, "Error deserializing value for key %@: %@", v23, 0x16u);
        MEMORY[0x277D82BD8](v9);
        objc_storeStrong(&v12, 0);
      }

      objc_storeStrong(&oslog, 0);
      v22 = 0;
      v17 = 1;
    }

    else
    {
      v22 = [v15 mutableCopy];
      v17 = 1;
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v22 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v22;

  return v4;
}

+ (void)setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = a5;
  v34 = [MEMORY[0x277CCAAA0] dataWithJSONObject:location[0] options:4 error:a5];
  if (*a5)
  {
    v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v32 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v9 = v36;
      v8 = [*v35 localizedDescription];
      v31 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_64_8_64(v38, v9, v31);
      _os_log_error_impl(&dword_240CB9000, v33, v32, "Data could not be serialized for key: %@, with error: %@", v38, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 838860800;
    v26 = 48;
    v27 = __Block_byref_object_copy__4;
    v28 = __Block_byref_object_dispose__4;
    v29 = 0;
    v22 = +[AMDCoreDataPersistentContainer sharedContainer];
    v21 = [v22 getManagedObjectContext];
    v7 = v21;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __36__AMDKVStore_setValue_forKey_error___block_invoke;
    v16 = &unk_278CB5A30;
    v17 = MEMORY[0x277D82BE0](v21);
    v18 = MEMORY[0x277D82BE0](v36);
    v19 = MEMORY[0x277D82BE0](v34);
    v20[0] = MEMORY[0x277D82BE0](v22);
    v20[1] = &v23;
    [v7 performBlockAndWait:&v12];
    if (v24[5])
    {
      v6 = v24[5];
      v5 = v6;
      *v35 = v6;
    }

    objc_storeStrong(v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    _Block_object_dispose(&v23, 8);
    objc_storeStrong(&v29, 0);
    v30 = 0;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __36__AMDKVStore_setValue_forKey_error___block_invoke(void *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v3 = MEMORY[0x277CBE408];
  v5 = +[AMDKVStore entity];
  v4 = [v5 name];
  v1 = a1[4];
  v9[0] = [v3 insertNewObjectForEntityForName:? inManagedObjectContext:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  [v9[0] setKey:a1[5]];
  [v9[0] setValue:a1[6]];
  v2 = a1[7];
  location = (*(a1[8] + 8) + 40);
  v8 = *location;
  [v2 save:&v8];
  objc_storeStrong(location, v8);
  objc_storeStrong(v9, 0);
}

+ (id)deleteWithPredicate:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v19 getManagedObjectContext];
  v8 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __40__AMDKVStore_deleteWithPredicate_error___block_invoke;
  v14 = &unk_278CB5A58;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v18);
  v17[1] = &v27;
  v17[0] = MEMORY[0x277D82BE0](v19);
  v17[2] = &v20;
  [v8 performBlockAndWait:&v10];
  if (v28[5])
  {
    v7 = v28[5];
    v4 = v7;
    *v34 = v7;
    v36 = 0;
  }

  else
  {
    v36 = MEMORY[0x277D82BE0](v21[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  v5 = v36;

  return v5;
}

void __40__AMDKVStore_deleteWithPredicate_error___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v9 = MEMORY[0x277CBE428];
  v11 = +[AMDKVStore entity];
  v10 = [v11 name];
  v18[0] = [v9 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  if (a1[4])
  {
    [v18[0] setPredicate:a1[4]];
  }

  v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v18[0]];
  [v17 setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v15 = *location;
  v8 = [v1 executeRequest:v17 error:&v15];
  objc_storeStrong(location, v15);
  v16 = v8;
  if (*(*(a1[7] + 8) + 40))
  {
    v14 = 1;
  }

  else
  {
    v2 = a1[6];
    v6 = (*(a1[7] + 8) + 40);
    v13 = *v6;
    [v2 save:&v13];
    objc_storeStrong(v6, v13);
    v3 = [v16 result];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v14 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (id)fetchEntryForKey:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v8 = v18;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __37__AMDKVStore_fetchEntryForKey_error___block_invoke;
  v15 = &unk_278CB5AA8;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[1] = &v19;
  v17[0] = MEMORY[0x277D82BE0](v18);
  v17[2] = &v26;
  [v8 performBlockAndWait:&v11];
  if (v27[5])
  {
    v7 = v27[5];
    v4 = v7;
    *v33 = v7;
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](v20[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

void __37__AMDKVStore_fetchEntryForKey_error___block_invoke(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v6 = MEMORY[0x277CBE428];
  v8 = +[AMDKVStore entity];
  v7 = [v8 name];
  v12[0] = [v6 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  if (a1[4])
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key == %@", a1[4]];
    [v12[0] setPredicate:v11];
    objc_storeStrong(&v11, 0);
  }

  [v12[0] setResultType:2];
  v1 = a1[5];
  v4 = (*(a1[7] + 8) + 40);
  v10 = *v4;
  v5 = [v1 executeFetchRequest:v12[0] error:&v10];
  objc_storeStrong(v4, v10);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v5;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v12, 0);
}

+ (id)fetchAllKeyValues:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = [v22 fetchEntryForKey:0 error:v20];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v18);
  v13 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v10);
      v15 = [v17 objectForKey:@"value"];
      v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v15 options:4 error:v20];
      v6 = v19;
      v5 = v14;
      v7 = [v17 objectForKey:@"key"];
      [v6 setObject:v5 forKey:?];
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end
@interface AMDDescriptor
+ (id)deleteAll:(id *)a3;
+ (id)getDescriptorsForDomain:(int64_t)a3 error:(id *)a4;
+ (id)refreshDescriptors:(id)a3 forDomain:(int64_t)a4 error:(id *)a5;
@end

@implementation AMDDescriptor

+ (id)deleteAll:(id *)a3
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v16 = +[AMDCoreDataPersistentContainer sharedContainer];
  v15 = [v16 getManagedObjectContext];
  v7 = v15;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __27__AMDDescriptor_deleteAll___block_invoke;
  v12 = &unk_278CB5AA8;
  v13 = MEMORY[0x277D82BE0](v15);
  v14[1] = &v24;
  v14[0] = MEMORY[0x277D82BE0](v16);
  v14[2] = &v17;
  [v7 performBlockAndWait:&v8];
  if (v25[5])
  {
    v6 = v25[5];
    v3 = v6;
    *v31 = v6;
    v34 = 0;
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](v18[5]);
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  v4 = v34;

  return v4;
}

void __27__AMDDescriptor_deleteAll___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDDescriptor entity];
  v8 = [v9 name];
  v18[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v18[0]];
  [v17 setResultType:2];
  v1 = a1[4];
  location = (*(a1[6] + 8) + 40);
  v15 = *location;
  v11 = [v1 executeRequest:v17 error:&v15];
  objc_storeStrong(location, v15);
  v16 = v11;
  if (*(*(a1[6] + 8) + 40))
  {
    v14 = 1;
  }

  else
  {
    v2 = a1[5];
    v6 = (*(a1[6] + 8) + 40);
    v13 = *v6;
    [v2 save:&v13];
    objc_storeStrong(v6, v13);
    v3 = [v16 result];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v14 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (id)refreshDescriptors:(id)a3 forDomain:(int64_t)a4 error:(id *)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = a4;
  v43 = a5;
  v42 = [v46 deleteAll:a5];
  v35 = 0;
  v36 = &v35;
  v37 = 838860800;
  v38 = 48;
  v39 = __Block_byref_object_copy__11;
  v40 = __Block_byref_object_dispose__11;
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*v43)
  {
    v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v10 = [*v43 localizedDescription];
      v32 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_1_8_64(v48, v32);
      _os_log_error_impl(&dword_240CB9000, v34, v33, "Error deleting descriptors: %@", v48, 0xCu);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v34, 0);
    *v43 = 0;
  }

  else
  {
    if (v42)
    {
      objc_storeStrong(&v42, v42);
    }

    else
    {
      objc_storeStrong(&v42, &unk_2852BB010);
    }

    v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v30 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v47, [v42 unsignedIntValue]);
      _os_log_impl(&dword_240CB9000, v31, v30, "Deleted %u descriptors", v47, 8u);
    }

    objc_storeStrong(&v31, 0);
    [v36[5] setObject:v42 forKey:@"deletedForRefresh"];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__11;
  v29 = 0;
  v22 = +[AMDCoreDataPersistentContainer sharedContainer];
  v21 = [v22 getManagedObjectContext];
  v9 = v21;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __52__AMDDescriptor_refreshDescriptors_forDomain_error___block_invoke;
  v17 = &unk_278CB6500;
  v18 = MEMORY[0x277D82BE0](location[0]);
  v20[1] = &v23;
  v19 = MEMORY[0x277D82BE0](v21);
  v20[3] = v44;
  v20[2] = &v35;
  v20[0] = MEMORY[0x277D82BE0](v22);
  [v9 performBlockAndWait:&v13];
  if (v24[5])
  {
    v8 = v24[5];
    v5 = v8;
    *v43 = v8;
  }

  v7 = MEMORY[0x277D82BE0](v36[5]);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  _Block_object_dispose(&v35, 8);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

void __52__AMDDescriptor_refreshDescriptors_forDomain_error___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v45[2] = a1;
  v45[1] = a1;
  v45[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v32 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
  if (v32)
  {
    v27 = *__b[2];
    v28 = 0;
    v29 = v32;
    while (1)
    {
      v26 = v28;
      if (*__b[2] != v27)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(__b[1] + 8 * v28);
      v22 = MEMORY[0x277CCAAA0];
      v25 = [*(a1 + 32) objectForKey:v43];
      location = (*(*(a1 + 56) + 8) + 40);
      v40 = *location;
      v24 = [v22 dataWithJSONObject:? options:? error:?];
      objc_storeStrong(location, v40);
      v41 = v24;
      MEMORY[0x277D82BD8](v25);
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        goto LABEL_29;
      }

      if (v41)
      {
        v19 = MEMORY[0x277CBE408];
        v21 = +[AMDDescriptor entity];
        v20 = [v21 name];
        v4 = *(a1 + 40);
        v38 = [v19 insertNewObjectForEntityForName:? inManagedObjectContext:?];
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
        [v38 setFeatureName:v43];
        [v38 setDescriptor:v41];
        [v38 setDomain:*(a1 + 72)];
        [v45[0] addObject:v38];
        objc_storeStrong(&v38, 0);
        v39 = 0;
      }

      else
      {
LABEL_29:
        if (!*(*(*(a1 + 56) + 8) + 40))
        {
          v1 = [AMDError allocError:11 withMessage:@"could not serialize descriptor data"];
          v2 = *(*(a1 + 56) + 8);
          v3 = *(v2 + 40);
          *(v2 + 40) = v1;
          MEMORY[0x277D82BD8](v3);
        }

        v44 = 1;
        v39 = 2;
      }

      objc_storeStrong(&v41, 0);
      if (v39)
      {
        break;
      }

      ++v28;
      if (v26 + 1 >= v29)
      {
        v28 = 0;
        v29 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
        if (!v29)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_14:
    v39 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (v44)
  {
    memset(v36, 0, sizeof(v36));
    v17 = MEMORY[0x277D82BE0](v45[0]);
    v18 = [v17 countByEnumeratingWithState:v36 objects:v47 count:16];
    if (v18)
    {
      v14 = *v36[2];
      v15 = 0;
      v16 = v18;
      while (1)
      {
        v13 = v15;
        if (*v36[2] != v14)
        {
          objc_enumerationMutation(v17);
        }

        v37 = *(v36[1] + 8 * v15);
        [*(a1 + 40) deleteObject:v37];
        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [v17 countByEnumeratingWithState:v36 objects:v47 count:16];
          if (!v16)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v17);
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v9 = MEMORY[0x277CCACA8];
    v12 = [*(*(*(a1 + 56) + 8) + 40) localizedDescription];
    v11 = [v9 stringWithFormat:@"error: %@", v12];
    [v10 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v45[0], "count")}];
    [v7 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v8);
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v46, [v45[0] count]);
      _os_log_impl(&dword_240CB9000, oslog, type, "Added %lu descriptors", v46, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = *(a1 + 48);
  v6 = (*(*(a1 + 56) + 8) + 40);
  v33 = *v6;
  [v5 save:&v33];
  objc_storeStrong(v6, v33);
  objc_storeStrong(v45, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)getDescriptorsForDomain:(int64_t)a3 error:(id *)a4
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  v16 = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __47__AMDDescriptor_getDescriptorsForDomain_error___block_invoke;
  v14 = &unk_278CB6528;
  v15[3] = v32;
  v15[0] = MEMORY[0x277D82BE0](v16);
  v15[1] = &v24;
  v15[2] = &v17;
  [v8 performBlockAndWait:&v10];
  if (v25[5])
  {
    v7 = v25[5];
    v4 = v7;
    *v31 = v7;
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](v18[5]);
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  v5 = v35;

  return v5;
}

void __47__AMDDescriptor_getDescriptorsForDomain_error___block_invoke(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v33[2] = a1;
  v33[1] = a1;
  v19 = MEMORY[0x277CBE428];
  v21 = +[AMDDescriptor entity];
  v20 = [v21 name];
  v33[0] = [v19 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d", a1[7]];
  [v33[0] setPredicate:v32];
  v1 = a1[4];
  location = (*(a1[5] + 8) + 40);
  v30 = *location;
  v23 = [v1 executeFetchRequest:v33[0] error:&v30];
  objc_storeStrong(location, v30);
  v31 = v23;
  if (*(*(a1[5] + 8) + 40))
  {
    v29 = 1;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v2 = [v16 initWithCapacity:{objc_msgSend(v31, "count")}];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
    MEMORY[0x277D82BD8](v4);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v31);
    v18 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
    if (v18)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v18;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(__b[1] + 8 * v14);
        v8 = MEMORY[0x277CCAAA0];
        v11 = [v28 descriptor];
        v9 = (*(a1[5] + 8) + 40);
        v25 = *v9;
        v10 = [v8 JSONObjectWithData:? options:? error:?];
        objc_storeStrong(v9, v25);
        v26 = v10;
        MEMORY[0x277D82BD8](v11);
        if (*(*(a1[5] + 8) + 40))
        {
          v29 = 1;
        }

        else
        {
          v6 = *(*(a1[6] + 8) + 40);
          v5 = v26;
          v7 = [v28 featureName];
          [v6 setValue:v5 forKey:?];
          MEMORY[0x277D82BD8](v7);
          v29 = 0;
        }

        objc_storeStrong(&v26, 0);
        if (v29)
        {
          break;
        }

        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v15)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
LABEL_13:
      v29 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v29)
    {
      v29 = 0;
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
  *MEMORY[0x277D85DE8];
}

@end
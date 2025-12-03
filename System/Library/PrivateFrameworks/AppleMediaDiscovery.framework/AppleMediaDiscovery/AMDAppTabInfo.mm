@interface AMDAppTabInfo
+ (id)deleteAllTabs:(id *)tabs;
+ (id)deleteTabsForUseCase:(id)case error:(id *)error;
+ (id)fetchAllTabInfo:(id *)info;
+ (id)getInfoForTab:(id)tab error:(id *)error;
+ (id)refreshTabsForUseCase:(id)case tabs:(id)tabs error:(id *)error;
+ (void)saveTabInfo:(id)info error:(id *)error;
@end

@implementation AMDAppTabInfo

+ (void)saveTabInfo:(id)info error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  errorCopy = error;
  v24 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v24 getManagedObjectContext];
  v16 = 0;
  v17 = &v16;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v7 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __35__AMDAppTabInfo_saveTabInfo_error___block_invoke;
  v12 = &unk_278CB5A08;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v15[0] = MEMORY[0x277D82BE0](v24);
  v15[1] = &v16;
  [v7 performBlockAndWait:&v8];
  if (v17[5])
  {
    v5 = v17[5];
    v4 = v5;
    *errorCopy = v5;
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v16, 8);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __35__AMDAppTabInfo_saveTabInfo_error___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v28 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v19 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v19)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v19;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(__b[1] + 8 * v15);
      v25 = [*(a1 + 32) objectForKey:v27];
      if (v25)
      {
        memset(v22, 0, sizeof(v22));
        v11 = MEMORY[0x277D82BE0](v25);
        v12 = [v11 countByEnumeratingWithState:v22 objects:v30 count:16];
        if (v12)
        {
          v8 = *v22[2];
          v9 = 0;
          v10 = v12;
          while (1)
          {
            v7 = v9;
            if (*v22[2] != v8)
            {
              objc_enumerationMutation(v11);
            }

            v23 = *(v22[1] + 8 * v9);
            v4 = MEMORY[0x277CBE408];
            v6 = +[AMDAppTabInfo entity];
            v5 = [v6 name];
            v1 = *(a1 + 40);
            v21 = [v4 insertNewObjectForEntityForName:? inManagedObjectContext:?];
            MEMORY[0x277D82BD8](v5);
            MEMORY[0x277D82BD8](v6);
            [v21 setTabName:v27];
            [v21 setUseCaseId:v23];
            objc_storeStrong(&v21, 0);
            ++v9;
            if (v7 + 1 >= v10)
            {
              v9 = 0;
              v10 = [v11 countByEnumeratingWithState:v22 objects:v30 count:16];
              if (!v10)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v11);
        v24 = 0;
      }

      else
      {
        v24 = 3;
      }

      objc_storeStrong(&v25, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v2 = *(a1 + 48);
  v3 = (*(*(a1 + 56) + 8) + 40);
  v20 = *v3;
  [v2 save:&v20];
  objc_storeStrong(v3, v20);
  *MEMORY[0x277D85DE8];
}

+ (id)refreshTabsForUseCase:(id)case tabs:(id)tabs error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, case);
  v38 = 0;
  objc_storeStrong(&v38, tabs);
  errorCopy = error;
  v36 = [selfCopy deleteTabsForUseCase:location[0] error:error];
  if (*error)
  {
    v41 = 0;
    v35 = 1;
  }

  else
  {
    if (v36)
    {
      objc_storeStrong(&v36, v36);
    }

    else
    {
      objc_storeStrong(&v36, &unk_2852BA5D8);
    }

    v13 = MEMORY[0x277CBEB38];
    v42 = @"deletedForRefresh";
    v43[0] = v36;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v34 = [v13 dictionaryWithDictionary:?];
    MEMORY[0x277D82BD8](v12);
    v33 = +[AMDCoreDataPersistentContainer sharedContainer];
    getManagedObjectContext = [v33 getManagedObjectContext];
    v25 = 0;
    v26 = &v25;
    v27 = 838860800;
    v28 = 48;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v11 = getManagedObjectContext;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __50__AMDAppTabInfo_refreshTabsForUseCase_tabs_error___block_invoke;
    v20 = &unk_278CB5A30;
    v21 = MEMORY[0x277D82BE0](v38);
    v22 = MEMORY[0x277D82BE0](getManagedObjectContext);
    v23 = MEMORY[0x277D82BE0](location[0]);
    v24[0] = MEMORY[0x277D82BE0](v33);
    v24[1] = &v25;
    [v11 performBlockAndWait:&v16];
    if (v26[5])
    {
      v10 = v26[5];
      v5 = v10;
      *errorCopy = v10;
      v41 = 0;
    }

    else
    {
      v9 = v34;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
      [v9 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v8);
      v41 = MEMORY[0x277D82BE0](v34);
    }

    v35 = 1;
    objc_storeStrong(v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    _Block_object_dispose(&v25, 8);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&getManagedObjectContext, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v41;

  return v6;
}

void __50__AMDAppTabInfo_refreshTabsForUseCase_tabs_error___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v18 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](a1[4]);
  v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v9);
      v4 = MEMORY[0x277CBE408];
      v6 = +[AMDAppTabInfo entity];
      v5 = [v6 name];
      v1 = a1[5];
      v15 = [v4 insertNewObjectForEntityForName:? inManagedObjectContext:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      [v15 setTabName:v17];
      [v15 setUseCaseId:a1[6]];
      objc_storeStrong(&v15, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v2 = a1[7];
  v3 = (*(a1[8] + 8) + 40);
  v14 = *v3;
  [v2 save:&v14];
  objc_storeStrong(v3, v14);
  *MEMORY[0x277D85DE8];
}

+ (id)deleteTabsForUseCase:(id)case error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, case);
  errorCopy = error;
  v33 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v33 getManagedObjectContext];
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v9 = getManagedObjectContext;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __44__AMDAppTabInfo_deleteTabsForUseCase_error___block_invoke;
  v14 = &unk_278CB5A58;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v17[1] = &v25;
  v17[0] = MEMORY[0x277D82BE0](v33);
  v17[2] = &v18;
  [v9 performBlockAndWait:&v10];
  if (v26[5])
  {
    v7 = v26[5];
    v4 = v7;
    *errorCopy = v7;
    v36 = 0;
  }

  else
  {
    v36 = MEMORY[0x277D82BE0](v19[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  v5 = v36;

  return v5;
}

void __44__AMDAppTabInfo_deleteTabsForUseCase_error___block_invoke(void *a1)
{
  v19[2] = a1;
  v19[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDAppTabInfo entity];
  v8 = [v9 name];
  v19[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"useCaseId == %@", a1[4]];
  [v19[0] setPredicate:v18];
  v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v19[0]];
  [v17 setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v15 = *location;
  v11 = [v1 executeRequest:v17 error:&v15];
  objc_storeStrong(location, v15);
  v16 = v11;
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
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
}

+ (id)getInfoForTab:(id)tab error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tab);
  errorCopy = error;
  if (location[0])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 838860800;
    v31 = 48;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 838860800;
    v24 = 48;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v10 = +[AMDCoreDataPersistentContainer sharedContainer];
    getManagedObjectContext = [v10 getManagedObjectContext];
    MEMORY[0x277D82BD8](v10);
    v9 = getManagedObjectContext;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __37__AMDAppTabInfo_getInfoForTab_error___block_invoke;
    v17 = &unk_278CB5A80;
    v18 = MEMORY[0x277D82BE0](location[0]);
    v19[0] = MEMORY[0x277D82BE0](getManagedObjectContext);
    v19[1] = &v28;
    v19[2] = &v21;
    [v9 performBlockAndWait:&v13];
    if (v29[5])
    {
      v8 = v29[5];
      v5 = v8;
      *errorCopy = v8;
      v38 = 0;
    }

    else
    {
      v38 = MEMORY[0x277D82BE0](v22[5]);
    }

    v35 = 1;
    objc_storeStrong(v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&getManagedObjectContext, 0);
    _Block_object_dispose(&v21, 8);
    objc_storeStrong(&v27, 0);
    _Block_object_dispose(&v28, 8);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v11 = [AMDError allocError:15 withMessage:@"no tab name"];
    v4 = v11;
    *errorCopy = v11;
    v38 = 0;
    v35 = 1;
  }

  objc_storeStrong(location, 0);
  v6 = v38;

  return v6;
}

void __37__AMDAppTabInfo_getInfoForTab_error___block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v25[2] = a1;
  v25[1] = a1;
  v11 = MEMORY[0x277CBE428];
  v13 = +[AMDAppTabInfo entity];
  v12 = [v13 name];
  v25[0] = [v11 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"tabName == %@", a1[4]];
  [v25[0] setPredicate:v24];
  v1 = a1[5];
  location = (*(a1[6] + 8) + 40);
  v22 = *location;
  v15 = [v1 executeFetchRequest:v25[0] error:&v22];
  objc_storeStrong(location, v22);
  v23 = v15;
  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v2 = [v16 initWithCapacity:{objc_msgSend(v23, "count")}];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  MEMORY[0x277D82BD8](v4);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v23);
  v19 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v19)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v19;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v9);
      v5 = *(*(a1[7] + 8) + 40);
      v6 = [v21 useCaseId];
      [v5 addObject:?];
      MEMORY[0x277D82BD8](v6);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)deleteAllTabs:(id *)tabs
{
  selfCopy = self;
  v32 = a2;
  tabsCopy = tabs;
  v30 = +[AMDCoreDataPersistentContainer sharedContainer];
  location = [v30 getManagedObjectContext];
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v7 = location;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __31__AMDAppTabInfo_deleteAllTabs___block_invoke;
  v12 = &unk_278CB5AA8;
  v13 = MEMORY[0x277D82BE0](location);
  v14[1] = &v22;
  v14[0] = MEMORY[0x277D82BE0](v30);
  v14[2] = &v15;
  [v7 performBlockAndWait:&v8];
  if (v23[5])
  {
    v6 = v23[5];
    v3 = v6;
    *tabsCopy = v6;
    v34 = 0;
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](v16[5]);
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(&v21, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v30, 0);
  v4 = v34;

  return v4;
}

void __31__AMDAppTabInfo_deleteAllTabs___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDAppTabInfo entity];
  v8 = [v9 name];
  v18[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v1 = objc_alloc(MEMORY[0x277CBE360]);
  v17 = [v1 initWithFetchRequest:v18[0]];
  [v17 setResultType:2];
  v2 = a1[4];
  location = (*(a1[6] + 8) + 40);
  v15 = *location;
  v11 = [v2 executeRequest:v17 error:&v15];
  objc_storeStrong(location, v15);
  v16 = v11;
  v3 = a1[5];
  v12 = (*(a1[6] + 8) + 40);
  v14 = *v12;
  [v3 save:&v14];
  objc_storeStrong(v12, v14);
  v4 = [v16 result];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (id)fetchAllTabInfo:(id *)info
{
  selfCopy = self;
  v31 = a2;
  infoCopy = info;
  v7 = +[AMDCoreDataPersistentContainer sharedContainer];
  location = [v7 getManagedObjectContext];
  MEMORY[0x277D82BD8](v7);
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v8 = location;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __33__AMDAppTabInfo_fetchAllTabInfo___block_invoke;
  v13 = &unk_278CB5AD0;
  v14[1] = &v15;
  v14[0] = MEMORY[0x277D82BE0](location);
  v14[2] = &v22;
  [v8 performBlockAndWait:&v9];
  if (v23[5])
  {
    v6 = v23[5];
    v3 = v6;
    *infoCopy = v6;
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v16[5]);
  }

  objc_storeStrong(v14, 0);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(&v21, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  v4 = v33;

  return v4;
}

void __33__AMDAppTabInfo_fetchAllTabInfo___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDAppTabInfo entity];
  v5 = [v6 name];
  v11[0] = [v4 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [v11[0] setResultType:2];
  v1 = a1[4];
  location = (*(a1[6] + 8) + 40);
  v10 = *location;
  v9 = [v1 executeFetchRequest:v11[0] error:&v10];
  objc_storeStrong(location, v10);
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v9;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v11, 0);
}

@end
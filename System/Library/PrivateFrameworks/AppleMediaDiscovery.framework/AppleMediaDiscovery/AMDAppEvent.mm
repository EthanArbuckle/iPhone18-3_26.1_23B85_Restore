@interface AMDAppEvent
+ (BOOL)validateInput:(id)a3;
+ (id)deleteAllEventsForUser:(id)a3 error:(id *)a4;
+ (id)deleteAppEventsOlderThan:(unint64_t)a3 forEventType:(id)a4 withPlatform:(id)a5 error:(id *)a6;
+ (id)deleteUsingPredicates:(id)a3 error:(id *)a4;
+ (id)fetchEvents:(id *)a3;
+ (id)fetchEventsWithPredicate:(id)a3 error:(id *)a4;
+ (id)getEventPlatform:(id)a3;
+ (id)getEventSubType:(id)a3;
+ (id)getEventType:(id)a3;
+ (id)getSegmentsWithLookBack:(id)a3 andRecencyThreshold:(id)a4 andFrequencyThreshold:(id)a5 andDurationThreshold:(id)a6 withUserId:(id)a7 error:(id *)a8;
+ (unsigned)saveEvent:(id)a3 error:(id *)a4;
- (void)populateRecord:(id)a3;
@end

@implementation AMDAppEvent

+ (id)getEventType:(id)a3
{
  v16[6] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!getEventType__eventTypeMap)
  {
    v15[0] = @"installs";
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:1];
    v16[0] = v13;
    v15[1] = @"uninstalls";
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:2];
    v16[1] = v12;
    v15[2] = @"launches";
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:3];
    v16[2] = v11;
    v15[3] = @"crashes";
    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:4];
    v16[3] = v10;
    v15[4] = @"subscribe";
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:5];
    v16[4] = v9;
    v15[5] = @"inAppPurchase";
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:6];
    v16[5] = v8;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];
    v4 = getEventType__eventTypeMap;
    getEventType__eventTypeMap = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  v7 = [getEventType__eventTypeMap objectForKey:{location[0], location}];
  objc_storeStrong(v6, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getEventSubType:(id)a3
{
  v16[6] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!getEventSubType__eventSubTypeMap)
  {
    v15[0] = @"unknown";
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:0];
    v16[0] = v13;
    v15[1] = @"autodownload";
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:1];
    v16[1] = v12;
    v15[2] = @"buy";
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:2];
    v16[2] = v11;
    v15[3] = @"redownload";
    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:3];
    v16[3] = v10;
    v15[4] = @"restore";
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:4];
    v16[4] = v9;
    v15[5] = @"update";
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:5];
    v16[5] = v8;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];
    v4 = getEventSubType__eventSubTypeMap;
    getEventSubType__eventSubTypeMap = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  v7 = [getEventSubType__eventSubTypeMap objectForKey:{location[0], location}];
  objc_storeStrong(v6, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getEventPlatform:(id)a3
{
  v14[5] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!getEventPlatform__platformMap)
  {
    v13[0] = @"iPhone";
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:1];
    v14[0] = v11;
    v13[1] = @"iPad";
    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:2];
    v14[1] = v10;
    v13[2] = @"iPodTouch";
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:3];
    v14[2] = v9;
    v13[3] = @"AppleTV";
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:4];
    v14[3] = v8;
    v13[4] = @"watchOS";
    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:5];
    v14[4] = v7;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
    v4 = getEventPlatform__platformMap;
    getEventPlatform__platformMap = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = [getEventPlatform__platformMap objectForKey:location[0]];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)fetchEvents:(id *)a3
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v7 = +[AMDCoreDataPersistentContainer sharedContainer];
  location = [v7 getManagedObjectContext];
  MEMORY[0x277D82BD8](v7);
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v8 = location;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __27__AMDAppEvent_fetchEvents___block_invoke;
  v13 = &unk_278CB5AD0;
  v14[1] = &v15;
  v14[0] = MEMORY[0x277D82BE0](location);
  v14[2] = &v22;
  [v8 performBlockAndWait:&v9];
  if (v23[5])
  {
    v6 = v23[5];
    v3 = v6;
    *v30 = v6;
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

void __27__AMDAppEvent_fetchEvents___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDAppEvent entity];
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

+ (BOOL)validateInput:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
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

      v42 = *(__b[1] + 8 * v10);
      v7 = [v42 objectForKey:@"itemId"];
      v39 = 0;
      v37 = 0;
      v35 = 0;
      v33 = 0;
      v31 = 0;
      v29 = 0;
      v27 = 0;
      v25 = 0;
      v23 = 0;
      v21 = 0;
      v19 = 0;
      v17 = 0;
      v15 = 0;
      if (v7 || (v40 = [v42 objectForKey:@"adamId"], v39 = 1, v6 = 1, v40))
      {
        v38 = [v42 objectForKey:@"shortAppVersion"];
        v37 = 1;
        if (v38 || (v36 = [v42 objectForKey:@"appVersion"], v35 = 1, v6 = 1, v36))
        {
          v34 = [v42 valueForKey:@"eventTime"];
          v33 = 1;
          if (v34 || (v32 = [v42 objectForKey:@"time"], v31 = 1, v6 = 1, v32))
          {
            v5 = v44;
            v30 = [v42 objectForKey:@"eventType"];
            v29 = 1;
            v28 = [v5 getEventType:?];
            v27 = 1;
            if (v28 || (v26 = [v42 objectForKey:@"type"], v25 = 1, v6 = 1, v26))
            {
              v4 = v44;
              v24 = [v42 valueForKey:@"platform"];
              v23 = 1;
              v22 = [v4 getEventPlatform:?];
              v21 = 1;
              if (v22 || (v20 = [v42 objectForKey:@"platform"], v19 = 1, objc_opt_class(), v6 = 1, (objc_opt_isKindOfClass() & 1) != 0))
              {
                v18 = [v42 valueForKey:@"userId"];
                v17 = 1;
                v6 = 1;
                if (v18)
                {
                  v16 = [v42 valueForKey:@"userId"];
                  v15 = 1;
                  v6 = [v16 isEqualToString:&stru_2852A6E28];
                }
              }
            }
          }
        }
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](v16);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](v18);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](v22);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](v26);
      }

      if (v27)
      {
        MEMORY[0x277D82BD8](v28);
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](v30);
      }

      if (v31)
      {
        MEMORY[0x277D82BD8](v32);
      }

      if (v33)
      {
        MEMORY[0x277D82BD8](v34);
      }

      if (v35)
      {
        MEMORY[0x277D82BD8](v36);
      }

      if (v37)
      {
        MEMORY[0x277D82BD8](v38);
      }

      if (v39)
      {
        MEMORY[0x277D82BD8](v40);
      }

      MEMORY[0x277D82BD8](v7);
      if (v6)
      {
        break;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
        if (!v11)
        {
          goto LABEL_47;
        }
      }
    }

    v45 = 0;
    v14 = 1;
  }

  else
  {
LABEL_47:
    v14 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v14)
  {
    v45 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v45 & 1;
}

+ (unsigned)saveEvent:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v12 = v24;
  v29[0] = location[0];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v14 = [v12 validateInput:?];
  MEMORY[0x277D82BD8](v13);
  if (v14)
  {
    v9 = +[AMDAppEvent entity];
    v17 = [v9 name];
    MEMORY[0x277D82BD8](v9);
    if (v17)
    {
      v26 = location[0];
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v25 = [AMDStorage saveRecords:"saveRecords:inTable:error:" inTable:? error:?];
      MEMORY[0x277D82BD8](v7);
      v18 = 1;
    }

    else
    {
      v16 = MEMORY[0x277D82BE0](@"AMDAppEvent: Internal error: Table name is nil! MOC not loaded?");
      v15 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v27, v16);
        _os_log_error_impl(&dword_240CB9000, v15, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
      }

      objc_storeStrong(&v15, 0);
      v8 = [AMDError allocError:29 withMessage:v16];
      v5 = v8;
      *v22 = v8;
      v25 = 0;
      v18 = 1;
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    v21 = MEMORY[0x277D82BE0](@"One or more app events is invalid");
    v20 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v28, v21);
      _os_log_error_impl(&dword_240CB9000, v20, v19, "%@", v28, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v10 = [AMDError allocError:15 withMessage:v21];
    v4 = v10;
    *v22 = v10;
    v25 = 0;
    v18 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)deleteAllEventsForUser:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10[1] = a4;
  v10[0] = [MEMORY[0x277CCAC30] predicateWithFormat:@"userId == %@", location[0]];
  v6 = v12;
  v13[0] = v10[0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = [v6 deleteUsingPredicates:? error:?];
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)deleteAppEventsOlderThan:(unint64_t)a3 forEventType:(id)a4 withPlatform:(id)a5 error:(id *)a6
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = a6;
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v17 = [MEMORY[0x277CBEAA8] date];
  [v17 timeIntervalSince1970];
  v18 = ((v6 - (86400 * v24)) * 1000.0);
  MEMORY[0x277D82BD8](v17);
  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"time < %llu", v18];
  [v20 addObject:?];
  MEMORY[0x277D82BD8](v19);
  if (location)
  {
    v12 = MEMORY[0x277CCAC30];
    v14 = [v26 getEventType:location];
    v13 = [v12 predicateWithFormat:@"type == %d", objc_msgSend(v14, "shortValue")];
    [v20 addObject:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  if (v22)
  {
    v9 = MEMORY[0x277CCAC30];
    v11 = [v26 getEventType:location];
    v10 = [v9 predicateWithFormat:@"platform == %d", objc_msgSend(v11, "shortValue")];
    [v20 addObject:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
  }

  v8 = [v26 deleteUsingPredicates:v20 error:v21];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);

  return v8;
}

+ (id)deleteUsingPredicates:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  [AMDPerf startMonitoringEvent:@"DeleteEvents"];
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v19 getManagedObjectContext];
  v8 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __43__AMDAppEvent_deleteUsingPredicates_error___block_invoke;
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
    [AMDPerf endMonitoringEvent:@"DeleteEvents"];
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

void __43__AMDAppEvent_deleteUsingPredicates_error___block_invoke(void *a1)
{
  v19[2] = a1;
  v19[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDAppEvent entity];
  v8 = [v9 name];
  v19[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[4]];
  [v19[0] setPredicate:?];
  MEMORY[0x277D82BD8](v10);
  v18 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v19[0]];
  [v18 setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v16 = *location;
  v12 = [v1 executeRequest:v18 error:&v16];
  objc_storeStrong(location, v16);
  v17 = v12;
  if (*(*(a1[7] + 8) + 40))
  {
    v15 = 1;
  }

  else
  {
    v2 = a1[6];
    v6 = (*(a1[7] + 8) + 40);
    v14 = *v6;
    [v2 save:&v14];
    objc_storeStrong(v6, v14);
    v3 = [v17 result];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
}

+ (id)getSegmentsWithLookBack:(id)a3 andRecencyThreshold:(id)a4 andFrequencyThreshold:(id)a5 andDurationThreshold:(id)a6 withUserId:(id)a7 error:(id *)a8
{
  v88 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  *(&v82 + 1) = 0;
  objc_storeStrong(&v82 + 1, a4);
  *&v82 = 0;
  objc_storeStrong(&v82, a5);
  v81 = 0;
  objc_storeStrong(&v81, a6);
  v80 = 0;
  objc_storeStrong(&v80, a7);
  v79 = a8;
  if (v82 != 0 || v81)
  {
    v71 = 0;
    v72 = &v71;
    v73 = 838860800;
    v74 = 48;
    v75 = __Block_byref_object_copy__5;
    v76 = __Block_byref_object_dispose__5;
    v77 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 838860800;
    v67 = 48;
    v68 = __Block_byref_object_copy__5;
    v69 = __Block_byref_object_dispose__5;
    v70 = 0;
    v34 = +[AMDCoreDataPersistentContainer sharedContainer];
    v63 = [v34 getManagedObjectContext];
    MEMORY[0x277D82BD8](v34);
    v33 = v63;
    v55 = MEMORY[0x277D85DD0];
    v56 = -1073741824;
    v57 = 0;
    v58 = __119__AMDAppEvent_getSegmentsWithLookBack_andRecencyThreshold_andFrequencyThreshold_andDurationThreshold_withUserId_error___block_invoke;
    v59 = &unk_278CB5A58;
    v60 = MEMORY[0x277D82BE0](location[0]);
    v61 = MEMORY[0x277D82BE0](v80);
    v62[1] = &v64;
    v62[0] = MEMORY[0x277D82BE0](v63);
    v62[2] = &v71;
    [v33 performBlockAndWait:&v55];
    if (v72[5])
    {
      v32 = v72[5];
      v9 = v32;
      *v79 = v32;
      v84 = 0;
      v78 = 1;
    }

    else if (v65[5])
    {
      v30 = [MEMORY[0x277CBEAA8] date];
      [v30 timeIntervalSince1970];
      v29 = v11;
      MEMORY[0x277D82BD8](v30);
      v51 = v29;
      v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
      memset(__b, 0, sizeof(__b));
      v27 = MEMORY[0x277D82BE0](v65[5]);
      v28 = [v27 countByEnumeratingWithState:__b objects:v86 count:16];
      if (v28)
      {
        v24 = *__b[2];
        v25 = 0;
        v26 = v28;
        while (1)
        {
          v23 = v25;
          if (*__b[2] != v24)
          {
            objc_enumerationMutation(v27);
          }

          v49 = *(__b[1] + 8 * v25);
          v47 = MEMORY[0x277D82BE0](@"1");
          v45 = 0;
          v43 = 0;
          v41 = 0;
          if (!*(&v82 + 1) || (v46 = [v49 objectForKey:@"mostRecentLaunchTimeMillis"], v45 = 1, v21 = objc_msgSend(v46, "unsignedLongLongValue") / 0x3E8uLL, v22 = v51, v20 = 1, v21 >= v22 - objc_msgSend(*(&v82 + 1), "unsignedLongLongValue")))
          {
            if (!v82 || (v44 = [v49 objectForKey:@"launchCount"], v43 = 1, v19 = objc_msgSend(v44, "unsignedIntValue"), v20 = 1, v19 >= objc_msgSend(v82, "unsignedIntValue")))
            {
              v18 = 0;
              if (v81)
              {
                v42 = [v49 objectForKey:@"totalForegroundDuration"];
                v41 = 1;
                v17 = [v42 unsignedIntValue];
                v18 = v17 < [v81 unsignedIntValue];
              }

              v20 = v18;
            }
          }

          if (v41)
          {
            MEMORY[0x277D82BD8](v42);
          }

          if (v43)
          {
            MEMORY[0x277D82BD8](v44);
          }

          if (v45)
          {
            MEMORY[0x277D82BD8](v46);
          }

          if (v20)
          {
            objc_storeStrong(&v47, @"2");
          }

          v16 = v50;
          v85 = v47;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
          v14 = [v49 objectForKey:@"adamId"];
          [v16 setObject:v15 forKey:?];
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v15);
          objc_storeStrong(&v47, 0);
          ++v25;
          if (v23 + 1 >= v26)
          {
            v25 = 0;
            v26 = [v27 countByEnumeratingWithState:__b objects:v86 count:16];
            if (!v26)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v27);
      v84 = MEMORY[0x277D82BE0](v50);
      v78 = 1;
      objc_storeStrong(&v50, 0);
    }

    else
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nil Response from CoreData request during segment computation."];
      v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v87, v54);
        _os_log_error_impl(&dword_240CB9000, v53, type, "%@", v87, 0xCu);
      }

      objc_storeStrong(&v53, 0);
      v31 = [AMDError allocError:15 withMessage:v54];
      v10 = v31;
      *v79 = v31;
      v84 = 0;
      v78 = 1;
      objc_storeStrong(&v54, 0);
    }

    objc_storeStrong(v62, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v63, 0);
    _Block_object_dispose(&v64, 8);
    objc_storeStrong(&v70, 0);
    _Block_object_dispose(&v71, 8);
    objc_storeStrong(&v77, 0);
  }

  else
  {
    v35 = [AMDError allocError:16 withMessage:@"programmer error!"];
    v8 = v35;
    *v79 = v35;
    v84 = 0;
    v78 = 1;
  }

  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v82 + 1, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v12 = v84;

  return v12;
}

void __119__AMDAppEvent_getSegmentsWithLookBack_andRecencyThreshold_andFrequencyThreshold_andDurationThreshold_withUserId_error___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v33[2] = a1;
  v33[1] = a1;
  v5 = MEMORY[0x277CBE428];
  v7 = +[AMDAppEvent entity];
  v6 = [v7 name];
  v33[0] = [v5 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  [v33[0] setResultType:2];
  v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  [v32 addObject:@"adamId"];
  v8 = MEMORY[0x277CCA9C0];
  v10 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"time"];
  v36[0] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:?];
  v31 = [v8 expressionForFunction:@"max:" arguments:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v30 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v30 setName:@"mostRecentLaunchTimeMillis"];
  [v30 setExpression:v31];
  [v30 setExpressionResultType:?];
  [v32 addObject:v30];
  v11 = MEMORY[0x277CCA9C0];
  v13 = [MEMORY[0x277CCA9C0] expressionForKeyPath:?];
  v35 = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v29 = [v11 expressionForFunction:@"count:" arguments:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v28 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v28 setName:@"launchCount"];
  [v28 setExpression:v29];
  [v28 setExpressionResultType:200];
  [v32 addObject:v28];
  v14 = MEMORY[0x277CCA9C0];
  v16 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"foregroundDuration"];
  v34 = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v27 = [v14 expressionForFunction:@"sum:" arguments:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v26 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v26 setName:@"totalForegroundDuration"];
  [v26 setExpression:v27];
  [v26 setExpressionResultType:300];
  [v32 addObject:v26];
  [v33[0] setPropertiesToFetch:v32];
  v17 = [MEMORY[0x277CBEAA8] date];
  [v17 timeIntervalSince1970];
  v18 = v1;
  MEMORY[0x277D82BD8](v17);
  v25 = v18;
  v24 = 1000 * (v18 - 86400 * [*(a1 + 32) unsignedIntValue]);
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"time >= %ull && type == %d && userId == %@", v24, 3, *(a1 + 40)];
  [v33[0] setPredicate:v23];
  [v33[0] setPropertiesToGroupBy:&unk_2852BC348];
  v2 = *(a1 + 48);
  location = (*(*(a1 + 64) + 8) + 40);
  v22 = *location;
  v21 = [v2 executeFetchRequest:v33[0] error:&v22];
  objc_storeStrong(location, v22);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v21;
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
  *MEMORY[0x277D85DE8];
}

- (void)populateRecord:(id)a3
{
  v72 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = [location[0] objectForKey:@"itemId"];
  v68 = 0;
  v66 = 0;
  if (v55)
  {
    v69 = [location[0] objectForKey:@"itemId"];
    v68 = 1;
    v3 = MEMORY[0x277D82BE0](v69);
  }

  else
  {
    v67 = [location[0] objectForKey:@"adamId"];
    v66 = 1;
    v3 = MEMORY[0x277D82BE0](v67);
  }

  v70 = v3;
  if (v66)
  {
    MEMORY[0x277D82BD8](v67);
  }

  if (v68)
  {
    MEMORY[0x277D82BD8](v69);
  }

  MEMORY[0x277D82BD8](v55);
  v54 = [location[0] objectForKey:@"shortAppVersion"];
  v63 = 0;
  v61 = 0;
  if (v54)
  {
    v64 = [location[0] objectForKey:@"shortAppVersion"];
    v63 = 1;
    v4 = MEMORY[0x277D82BE0](v64);
  }

  else
  {
    v62 = [location[0] objectForKey:@"appVersion"];
    v61 = 1;
    v4 = MEMORY[0x277D82BE0](v62);
  }

  v65 = v4;
  if (v61)
  {
    MEMORY[0x277D82BD8](v62);
  }

  if (v63)
  {
    MEMORY[0x277D82BD8](v64);
  }

  MEMORY[0x277D82BD8](v54);
  v53 = [location[0] valueForKey:@"eventTime"];
  v58 = 0;
  v56 = 0;
  if (v53)
  {
    v59 = [location[0] valueForKey:@"eventTime"];
    v58 = 1;
    v5 = MEMORY[0x277D82BE0](v59);
  }

  else
  {
    v57 = [location[0] valueForKey:@"time"];
    v56 = 1;
    v5 = MEMORY[0x277D82BE0](v57);
  }

  v60 = v5;
  if (v56)
  {
    MEMORY[0x277D82BD8](v57);
  }

  if (v58)
  {
    MEMORY[0x277D82BD8](v59);
  }

  MEMORY[0x277D82BD8](v53);
  -[AMDAppEvent setAdamId:](v72, "setAdamId:", [v70 unsignedLongLongValue]);
  [(AMDAppEvent *)v72 setAppVersion:v65];
  -[AMDAppEvent setTime:](v72, "setTime:", [v60 unsignedLongLongValue]);
  v52 = [location[0] objectForKey:@"eventType"];
  MEMORY[0x277D82BD8](v52);
  if (v52)
  {
    v49 = v72;
    v51 = [location[0] objectForKey:@"eventType"];
    v50 = [AMDAppEvent getEventType:?];
    -[AMDAppEvent setType:](v49, "setType:", [v50 unsignedShortValue]);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
  }

  else
  {
    v47 = v72;
    v48 = [location[0] objectForKey:@"type"];
    -[AMDAppEvent setType:](v47, "setType:", [v48 unsignedShortValue]);
    MEMORY[0x277D82BD8](v48);
  }

  v45 = [location[0] valueForKey:@"platform"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v45);
  if (isKindOfClass)
  {
    v43 = v72;
    v44 = [location[0] valueForKey:@"platform"];
    -[AMDAppEvent setPlatform:](v43, "setPlatform:", [v44 unsignedShortValue]);
    MEMORY[0x277D82BD8](v44);
  }

  else
  {
    v40 = v72;
    v42 = [location[0] valueForKey:@"platform"];
    v41 = [AMDAppEvent getEventPlatform:?];
    -[AMDAppEvent setPlatform:](v40, "setPlatform:", [v41 unsignedShortValue]);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
  }

  v39 = [location[0] valueForKey:@"eventSubtype"];
  MEMORY[0x277D82BD8](v39);
  if (v39)
  {
    v37 = [location[0] valueForKey:@"eventSubtype"];
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();
    MEMORY[0x277D82BD8](v37);
    if (v38)
    {
      v34 = v72;
      v36 = [location[0] valueForKey:@"eventSubtype"];
      v35 = [AMDAppEvent getEventSubType:?];
      -[AMDAppEvent setEventSubType:](v34, "setEventSubType:", [v35 intValue]);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
    }

    else
    {
      v32 = v72;
      v33 = [location[0] valueForKey:@"eventSubtype"];
      -[AMDAppEvent setEventSubType:](v32, "setEventSubType:", [v33 intValue]);
      MEMORY[0x277D82BD8](v33);
    }
  }

  v29 = v72;
  v30 = [location[0] valueForKey:@"userId"];
  [(AMDAppEvent *)v29 setUserId:?];
  MEMORY[0x277D82BD8](v30);
  v31 = [location[0] objectForKey:@"batteryUsage"];
  MEMORY[0x277D82BD8](v31);
  if (v31)
  {
    v27 = v72;
    v28 = [location[0] objectForKey:@"batteryUsage"];
    [v28 floatValue];
    [(AMDAppEvent *)v27 setBatteryUsage:?];
    MEMORY[0x277D82BD8](v28);
  }

  v26 = [location[0] valueForKey:@"foregroundDuration"];
  MEMORY[0x277D82BD8](v26);
  if (v26)
  {
    v24 = v72;
    v25 = [location[0] valueForKey:@"foregroundDuration"];
    -[AMDAppEvent setForegroundDuration:](v24, "setForegroundDuration:", [v25 unsignedLongLongValue]);
    MEMORY[0x277D82BD8](v25);
  }

  v23 = [location[0] valueForKey:@"latitude"];
  MEMORY[0x277D82BD8](v23);
  if (v23)
  {
    v21 = v72;
    v22 = [location[0] valueForKey:@"latitude"];
    [v22 floatValue];
    [(AMDAppEvent *)v21 setLatitude:?];
    MEMORY[0x277D82BD8](v22);
  }

  v20 = [location[0] valueForKey:@"locationAccuracy"];
  MEMORY[0x277D82BD8](v20);
  if (v20)
  {
    v18 = v72;
    v19 = [location[0] valueForKey:@"locationAccuracy"];
    [v19 floatValue];
    [(AMDAppEvent *)v18 setLocationAccuracy:?];
    MEMORY[0x277D82BD8](v19);
  }

  v17 = [location[0] valueForKey:@"longitude"];
  MEMORY[0x277D82BD8](v17);
  if (v17)
  {
    v15 = v72;
    v16 = [location[0] valueForKey:@"longitude"];
    [v16 floatValue];
    [(AMDAppEvent *)v15 setLongitude:?];
    MEMORY[0x277D82BD8](v16);
  }

  v14 = [location[0] valueForKey:@"storageUsed"];
  MEMORY[0x277D82BD8](v14);
  if (v14)
  {
    v12 = v72;
    v13 = [location[0] valueForKey:@"storageUsed"];
    -[AMDAppEvent setStorageUsed:](v12, "setStorageUsed:", [v13 intValue]);
    MEMORY[0x277D82BD8](v13);
  }

  v11 = [location[0] valueForKey:@"timezoneOffset"];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v9 = v72;
    v10 = [location[0] valueForKey:@"timezoneOffset"];
    -[AMDAppEvent setTimeZoneOffset:](v9, "setTimeZoneOffset:", [v10 unsignedLongLongValue]);
    MEMORY[0x277D82BD8](v10);
  }

  v8 = [location[0] valueForKey:@"deviceId"];
  MEMORY[0x277D82BD8](v8);
  if (v8)
  {
    v6 = v72;
    v7 = [location[0] objectForKey:@"deviceId"];
    [(AMDAppEvent *)v6 setDeviceId:?];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
}

+ (id)fetchEventsWithPredicate:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  v32 = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v10 = v32;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __46__AMDAppEvent_fetchEventsWithPredicate_error___block_invoke;
  v15 = &unk_278CB5AA8;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[1] = &v18;
  v17[0] = MEMORY[0x277D82BE0](v32);
  v17[2] = &v25;
  [v10 performBlockAndWait:&v11];
  if (v26[5])
  {
    v7 = v26[5];
    v4 = v7;
    *v33 = v7;
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](v19[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

void __46__AMDAppEvent_fetchEventsWithPredicate_error___block_invoke(void *a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDAppEvent entity];
  v5 = [v6 name];
  v13[0] = [v4 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = v13[0];
  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[4]];
  [v7 setPredicate:?];
  MEMORY[0x277D82BD8](v8);
  [v13[0] setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v12 = *location;
  v11 = [v1 executeFetchRequest:v13[0] error:&v12];
  objc_storeStrong(location, v12);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v11;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v13, 0);
}

@end
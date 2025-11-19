@interface AMDAppStoreEvent
+ (id)deleteAllEvents:(id *)a3;
+ (id)deleteEventsForPredicate:(id)a3 error:(id *)a4;
+ (id)deleteEventsForUser:(id)a3 error:(id *)a4;
+ (id)deleteEventsOlderThan:(unint64_t)a3 error:(id *)a4;
+ (id)fetchEvents:(id *)a3;
+ (id)retrieveEventsOfType:(id)a3 inPeriod:(id)a4 forUser:(id)a5 error:(id *)a6;
+ (signed)getEventType:(id)a3;
+ (unsigned)saveEvent:(id)a3 forUser:(id)a4 error:(id *)a5;
@end

@implementation AMDAppStoreEvent

+ (signed)getEventType:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!getEventType__eventTypeMap_0)
  {
    objc_storeStrong(&getEventType__eventTypeMap_0, &unk_2852BB6A0);
  }

  v5 = [getEventType__eventTypeMap_0 objectForKey:location[0]];
  if (v5)
  {
    v4 = [v5 unsignedIntValue];
  }

  else
  {
    v4 = 2;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

+ (unsigned)saveEvent:(id)a3 forUser:(id)a4 error:(id *)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v58 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v56 = 0;
  objc_storeStrong(&v56, a4);
  v55 = a5;
  v54 = [location[0] objectForKey:@"adamId"];
  v53 = [location[0] objectForKey:@"time"];
  v52 = [location[0] objectForKey:@"type"];
  v51 = [location[0] objectForKey:@"source"];
  v50 = [location[0] objectForKey:@"usecase"];
  if (v54 && v53 && v52 && v51 && v50 && v56)
  {
    v45 = [v58 getEventType:v52];
    if (v45 == 2)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid appstore event type."];
      v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v61, v44);
        _os_log_error_impl(&dword_240CB9000, v43, v42, "%@", v61, 0xCu);
      }

      objc_storeStrong(&v43, 0);
      v12 = [AMDError allocError:15 withMessage:v44];
      v6 = v12;
      *v55 = v12;
      v59 = 0;
      v46 = 1;
      objc_storeStrong(&v44, 0);
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 838860800;
      v38 = 48;
      v39 = __Block_byref_object_copy__7;
      v40 = __Block_byref_object_dispose__7;
      v41 = 0;
      v34 = +[AMDCoreDataPersistentContainer sharedContainer];
      v33 = [v34 getManagedObjectContext];
      v11 = v33;
      v19 = MEMORY[0x277D85DD0];
      v20 = -1073741824;
      v21 = 0;
      v22 = __44__AMDAppStoreEvent_saveEvent_forUser_error___block_invoke;
      v23 = &unk_278CB60C8;
      v24 = MEMORY[0x277D82BE0](v33);
      v25 = MEMORY[0x277D82BE0](v53);
      v26 = MEMORY[0x277D82BE0](v54);
      v32 = v45;
      v27 = MEMORY[0x277D82BE0](v51);
      v28 = MEMORY[0x277D82BE0](v50);
      v29 = MEMORY[0x277D82BE0](v56);
      v30 = MEMORY[0x277D82BE0](v34);
      v31[1] = &v35;
      v31[0] = MEMORY[0x277D82BE0](v52);
      [v11 performBlockAndWait:&v19];
      if (v36[5])
      {
        v10 = v36[5];
        v7 = v10;
        *v55 = v10;
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v17 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v9 = [*v55 localizedDescription];
          v16 = MEMORY[0x277D82BE0](v9);
          __os_log_helper_16_2_1_8_64(v60, v16);
          _os_log_error_impl(&dword_240CB9000, oslog, v17, "Error saving appstore event: %@", v60, 0xCu);
          MEMORY[0x277D82BD8](v9);
          objc_storeStrong(&v16, 0);
        }

        objc_storeStrong(&oslog, 0);
        v59 = 0;
        v46 = 1;
      }

      else
      {
        v59 = 1;
        v46 = 1;
      }

      objc_storeStrong(v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      _Block_object_dispose(&v35, 8);
      objc_storeStrong(&v41, 0);
    }
  }

  else
  {
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incomplete AppStore event."];
    v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v47 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v62, v49);
      _os_log_error_impl(&dword_240CB9000, v48, v47, "%@", v62, 0xCu);
    }

    objc_storeStrong(&v48, 0);
    v13 = [AMDError allocError:15 withMessage:v49];
    v5 = v13;
    *v55 = v13;
    v59 = 0;
    v46 = 1;
    objc_storeStrong(&v49, 0);
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v59;
}

void __44__AMDAppStoreEvent_saveEvent_forUser_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v3 = MEMORY[0x277CBE408];
  v5 = +[AMDAppStoreEvent entity];
  v4 = [v5 name];
  v1 = *(a1 + 32);
  v11[0] = [v3 insertNewObjectForEntityForName:? inManagedObjectContext:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  [v11[0] setEventTimeMillis:{objc_msgSend(*(a1 + 40), "unsignedLongLongValue")}];
  [v11[0] setAdamId:*(a1 + 48)];
  [v11[0] setEventType:*(a1 + 104)];
  [v11[0] setSourceSwoosh:*(a1 + 56)];
  [v11[0] setUsecase:*(a1 + 64)];
  [v11[0] setUserId:*(a1 + 72)];
  v2 = *(a1 + 80);
  location = (*(*(a1 + 96) + 8) + 40);
  v10 = *location;
  [v2 save:&v10];
  objc_storeStrong(location, v10);
  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v9 = 1;
  }

  else
  {
    v8 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v12, *(a1 + 88));
      _os_log_debug_impl(&dword_240CB9000, v8, OS_LOG_TYPE_DEBUG, "Saved event of type %@", v12, 0xCu);
    }

    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)retrieveEventsOfType:(id)a3 inPeriod:(id)a4 forUser:(id)a5 error:(id *)a6
{
  v43 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v39 = a6;
  [AMDPerf startMonitoringEvent:@"ImpressionEventsRetrieval"];
  v32 = 0;
  v33 = &v32;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  v38 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v11 = +[AMDCoreDataPersistentContainer sharedContainer];
  v24 = [v11 getManagedObjectContext];
  MEMORY[0x277D82BD8](v11);
  v10 = v24;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __64__AMDAppStoreEvent_retrieveEventsOfType_inPeriod_forUser_error___block_invoke;
  v19 = &unk_278CB60F0;
  v20 = MEMORY[0x277D82BE0](v41);
  v21 = MEMORY[0x277D82BE0](location[0]);
  v23[3] = v43;
  v23[1] = &v32;
  v22 = MEMORY[0x277D82BE0](v40);
  v23[2] = &v25;
  v23[0] = MEMORY[0x277D82BE0](v24);
  [v10 performBlockAndWait:&v15];
  if (v33[5])
  {
    v9 = v33[5];
    v6 = v9;
    *v39 = v9;
    v44 = 0;
  }

  else
  {
    [AMDPerf endMonitoringEvent:@"ImpressionEventsRetrieval"];
    v44 = MEMORY[0x277D82BE0](v26[5]);
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  _Block_object_dispose(&v32, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  v7 = v44;

  return v7;
}

void __64__AMDAppStoreEvent_retrieveEventsOfType_inPeriod_forUser_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v34[2] = a1;
  v34[1] = a1;
  v16 = MEMORY[0x277CBE428];
  v18 = +[AMDAppStoreEvent entity];
  v17 = [v18 name];
  v34[0] = [v16 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v19 = [MEMORY[0x277CBEAA8] date];
  [v19 timeIntervalSince1970];
  v20 = v1;
  MEMORY[0x277D82BD8](v19);
  v33 = v20;
  v32 = 1000 * (v20 - (86400 * [*(a1 + 32) shortValue]));
  v31 = 0;
  if (!*(a1 + 40))
  {
    v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v24 = 1;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v14 = v25;
      v15 = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_impl(&dword_240CB9000, v14, v15, "No appstore event type provided in request", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventTimeMillis >= %ull && userId == %@", v32, *(a1 + 48)];
    v8 = v31;
    v31 = v7;
    MEMORY[0x277D82BD8](v8);
    goto LABEL_10;
  }

  v30 = [*(a1 + 80) getEventType:*(a1 + 40)];
  if (v30 != 2)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventTimeMillis >= %ull && eventType == %d && userId == %@", v32, v30, *(a1 + 48)];
    v6 = v31;
    v31 = v5;
    MEMORY[0x277D82BD8](v6);
LABEL_10:
    [v34[0] setResultType:2];
    [v34[0] setPredicate:v31];
    v9 = *(a1 + 56);
    v12 = (*(*(a1 + 64) + 8) + 40);
    v22 = *v12;
    v13 = [v9 executeFetchRequest:v34[0] error:&v22];
    objc_storeStrong(v12, v22);
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v13;
    MEMORY[0x277D82BD8](v11);
    v26 = 0;
    goto LABEL_11;
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AppStore event type provided"];
  location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v27 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v35, v29);
    _os_log_error_impl(&dword_240CB9000, location, v27, "%@", v35, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v2 = [AMDError allocError:15 withMessage:v29];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  MEMORY[0x277D82BD8](v4);
  v26 = 1;
  objc_storeStrong(&v29, 0);
LABEL_11:
  objc_storeStrong(&v31, 0);
  objc_storeStrong(v34, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)deleteEventsOlderThan:(unint64_t)a3 error:(id *)a4
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  [AMDPerf startMonitoringEvent:@"ImpressionEventsScrub"];
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v8 = ((v4 - (86400 * v12)) * 1000.0);
  MEMORY[0x277D82BD8](v7);
  v10[1] = v8;
  v10[0] = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventTimeMillis < %llu", v8];
  location = [v14 deleteEventsForPredicate:v10[0] error:v11];
  if (*v11)
  {
    v15 = 0;
  }

  else
  {
    [AMDPerf endMonitoringEvent:@"ImpressionEventsScrub"];
    v15 = MEMORY[0x277D82BE0](location);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  v5 = v15;

  return v5;
}

+ (id)deleteEventsForPredicate:(id)a3 error:(id *)a4
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
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v19 getManagedObjectContext];
  v8 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __51__AMDAppStoreEvent_deleteEventsForPredicate_error___block_invoke;
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

void __51__AMDAppStoreEvent_deleteEventsForPredicate_error___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v9 = MEMORY[0x277CBE428];
  v11 = +[AMDAppStoreEvent entity];
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
    if (*(*(a1[7] + 8) + 40))
    {
      v14 = 1;
    }

    else
    {
      v3 = [v16 result];
      v4 = *(a1[8] + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
      MEMORY[0x277D82BD8](v5);
      v14 = 0;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (id)deleteEventsForUser:(id)a3 error:(id *)a4
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8[1] = a4;
  v8[0] = [MEMORY[0x277CCAC30] predicateWithFormat:@"userId == %@", location[0]];
  v7 = [v10 deleteEventsForPredicate:v8[0] error:a4];
  if (*a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = MEMORY[0x277D82BE0](v7);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

+ (id)fetchEvents:(id *)a3
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v8 = +[AMDCoreDataPersistentContainer sharedContainer];
  v15 = [v8 getManagedObjectContext];
  MEMORY[0x277D82BD8](v8);
  v7 = v15;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __32__AMDAppStoreEvent_fetchEvents___block_invoke;
  v13 = &unk_278CB5AD0;
  v14[1] = &v16;
  v14[0] = MEMORY[0x277D82BE0](v15);
  v14[2] = &v23;
  [v7 performBlockAndWait:&v9];
  if (v24[5])
  {
    v6 = v24[5];
    v3 = v6;
    *v30 = v6;
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v17[5]);
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(&v16, 8);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  v4 = v33;

  return v4;
}

void __32__AMDAppStoreEvent_fetchEvents___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDAppStoreEvent entity];
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

+ (id)deleteAllEvents:(id *)a3
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  location = [a1 deleteEventsForPredicate:0 error:a3];
  if (*v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = MEMORY[0x277D82BE0](location);
  }

  objc_storeStrong(&location, 0);
  v3 = v9;

  return v3;
}

@end
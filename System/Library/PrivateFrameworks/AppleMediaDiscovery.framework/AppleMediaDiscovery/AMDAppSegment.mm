@interface AMDAppSegment
+ (BOOL)evaluatePredicate:(id)predicate withOperands:(id)operands;
+ (id)assignSegmentsToApps:(id)apps withFeatureDictionary:(id)dictionary predicate:(id)predicate;
+ (id)assignSegmentsWithParameters:(id)parameters error:(id *)error;
+ (id)computeSegmentsForApps:(id)apps withRules:(id)rules error:(id *)error;
+ (id)deleteAllSegments:(id *)segments;
+ (id)getSegmentsDictForAllTreatments:(id *)treatments;
+ (id)getSegmentsForTreatmentId:(id)id error:(id *)error;
+ (id)getSegmentsInfoForTreatment:(id)treatment error:(id *)error;
+ (id)refreshSegments:(id)segments error:(id *)error;
+ (id)refreshSegmentsForAllTreatmentsForUser:(id)user error:(id *)error;
+ (void)saveSegments:(id)segments withTreatmentId:(id)id andAlgoId:(id)algoId error:(id *)error;
+ (void)validatePredicate:(id)predicate withFeatureList:(id)list error:(id *)error;
@end

@implementation AMDAppSegment

+ (id)deleteAllSegments:(id *)segments
{
  selfCopy = self;
  v32 = a2;
  segmentsCopy = segments;
  v30 = +[AMDCoreDataPersistentContainer sharedContainer];
  location = [v30 getManagedObjectContext];
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v7 = location;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __35__AMDAppSegment_deleteAllSegments___block_invoke;
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
    *segmentsCopy = v6;
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

void __35__AMDAppSegment_deleteAllSegments___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDAppSegment entity];
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

+ (id)refreshSegmentsForAllTreatmentsForUser:(id)user error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, user);
  errorCopy = error;
  [AMDPerf startMonitoringEvent:@"RefreshSegments"];
  v46 = [AMDWorkflow getAllActiveWorkflowsForDomain:[AMDDomains getCodeForDomain:@"apps"] andUseCaseId:0x2852AAC08 error:error];
  if (*error)
  {
    v50 = 0;
    v45 = 1;
  }

  else if (v46)
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memset(__b, 0, sizeof(__b));
    v24 = MEMORY[0x277D82BE0](v46);
    v25 = [v24 countByEnumeratingWithState:__b objects:v52 count:16];
    if (v25)
    {
      v21 = *__b[2];
      v22 = 0;
      v23 = v25;
      while (1)
      {
        v20 = v22;
        if (*__b[2] != v21)
        {
          objc_enumerationMutation(v24);
        }

        v40 = *(__b[1] + 8 * v22);
        v38 = [v40 objectForKey:@"rule_params"];
        if (v38)
        {
          v37 = [v40 objectForKey:0x2852AAB08];
          if (!v37)
          {
            objc_storeStrong(&v37, @"__defaultTreatment");
          }

          v36 = [v38 objectForKey:0x2852AABC8];
          v35 = [v38 objectForKey:0x2852AABE8];
          v34 = [v38 objectForKey:0x2852AABA8];
          v33 = [v38 objectForKey:0x2852AAB88];
          v32 = 0;
          if (v36 && (v35 || v34 || v33))
          {
            v18 = [v38 objectForKey:0x2852AABC8];
            v17 = [v38 objectForKey:0x2852AABE8];
            v16 = [v38 objectForKey:0x2852AABA8];
            v15 = [v38 objectForKey:0x2852AAB88];
            v5 = [AMDAppEvent getSegmentsWithLookBack:"getSegmentsWithLookBack:andRecencyThreshold:andFrequencyThreshold:andDurationThreshold:withUserId:error:" andRecencyThreshold:v18 andFrequencyThreshold:v17 andDurationThreshold:v16 withUserId:? error:?];
            v6 = v32;
            v32 = v5;
            MEMORY[0x277D82BD8](v6);
            MEMORY[0x277D82BD8](v15);
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v17);
            MEMORY[0x277D82BD8](v18);
          }

          else
          {
            v7 = [selfCopy assignSegmentsWithParameters:v38 error:errorCopy];
            v8 = v32;
            v32 = v7;
            MEMORY[0x277D82BD8](v8);
          }

          if (*errorCopy)
          {
            v50 = 0;
            v45 = 1;
          }

          else if (v32)
          {
            v29 = [v38 objectForKey:0x2852AAB68];
            v12 = [AMDPair alloc];
            v11 = v29 ? v29 : @"undefined";
            v28 = [(AMDPair *)v12 initWith:v32 and:v11];
            [v41 setObject:v28 forKey:v37];
            objc_storeStrong(&v28, 0);
            objc_storeStrong(&v29, 0);
            v45 = 0;
          }

          else
          {
            v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v30 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v13 = v31;
              v14 = v30;
              __os_log_helper_16_2_1_8_64(v51, v37);
              _os_log_error_impl(&dword_240CB9000, v13, v14, "Programmer error! Nil segment data for treatment '%@'", v51, 0xCu);
            }

            objc_storeStrong(&v31, 0);
            v45 = 3;
          }

          objc_storeStrong(&v32, 0);
          objc_storeStrong(&v33, 0);
          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v36, 0);
          objc_storeStrong(&v37, 0);
        }

        else
        {
          v19 = [AMDError allocError:16 withMessage:@"no segment aggregation params"];
          v4 = v19;
          *errorCopy = v19;
          v50 = 0;
          v45 = 1;
        }

        objc_storeStrong(&v38, 0);
        if (v45)
        {
          if (v45 != 3)
          {
            break;
          }
        }

        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [v24 countByEnumeratingWithState:__b objects:v52 count:16];
          if (!v23)
          {
            goto LABEL_36;
          }
        }
      }
    }

    else
    {
LABEL_36:
      v45 = 0;
    }

    MEMORY[0x277D82BD8](v24);
    if (!v45)
    {
      v27 = [AMDAppSegment refreshSegments:v41 error:errorCopy];
      if (*errorCopy)
      {
        v50 = 0;
      }

      else
      {
        [AMDPerf endMonitoringEvent:@"RefreshSegments"];
        v50 = MEMORY[0x277D82BE0](v27);
      }

      v45 = 1;
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v41, 0);
  }

  else
  {
    v44 = MEMORY[0x277D82BE0](@"Could not refresh segments: no workflow");
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v55, v44);
      _os_log_impl(&dword_240CB9000, oslog, type, "%@", v55, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v53 = @"error";
    v54 = v44;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v45 = 1;
    objc_storeStrong(&v44, 0);
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v50;

  return v9;
}

+ (id)refreshSegments:(id)segments error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, segments);
  errorCopy = error;
  v29 = [selfCopy deleteAllSegments:error];
  if (*error)
  {
    v33 = 0;
    v28 = 1;
  }

  else
  {
    v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v26 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v35, v29);
      _os_log_debug_impl(&dword_240CB9000, v27, v26, "RefreshSegments: deleted %@ segment entries", v35, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v25 setObject:v29 forKey:@"segmentsDeletedForRefresh"];
    v24 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v18 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
    if (v18)
    {
      v14 = *__b[2];
      v15 = 0;
      v16 = v18;
      while (1)
      {
        v13 = v15;
        if (*__b[2] != v14)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(__b[1] + 8 * v15);
        v21 = [location[0] objectForKey:v23];
        first = [v21 first];
        v4 = [first count];
        v24 += v4;
        v11 = selfCopy;
        v9 = first;
        v10 = v23;
        second = [v21 second];
        [v11 saveSegments:v9 withTreatmentId:v10 andAlgoId:? error:?];
        MEMORY[0x277D82BD8](second);
        if (*errorCopy)
        {
          v33 = 0;
          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

        objc_storeStrong(&first, 0);
        objc_storeStrong(&v21, 0);
        if (v28)
        {
          break;
        }

        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v16)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
LABEL_15:
      v28 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v28)
    {
      v7 = v25;
      v8 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      [v7 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v8);
      v33 = MEMORY[0x277D82BE0](v25);
      v28 = 1;
    }

    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v33;

  return v5;
}

+ (void)saveSegments:(id)segments withTreatmentId:(id)id andAlgoId:(id)algoId error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, segments);
  v33 = 0;
  objc_storeStrong(&v33, id);
  v32 = 0;
  objc_storeStrong(&v32, algoId);
  errorCopy = error;
  v30 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v30 getManagedObjectContext];
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v11 = getManagedObjectContext;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __62__AMDAppSegment_saveSegments_withTreatmentId_andAlgoId_error___block_invoke;
  v16 = &unk_278CB65F0;
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v19 = MEMORY[0x277D82BE0](v33);
  v20 = MEMORY[0x277D82BE0](v32);
  v21[0] = MEMORY[0x277D82BE0](v30);
  v21[1] = &v22;
  [v11 performBlockAndWait:&v12];
  if (v23[5])
  {
    v7 = v23[5];
    v6 = v7;
    *errorCopy = v7;
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void __62__AMDAppSegment_saveSegments_withTreatmentId_andAlgoId_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v27 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v19 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
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

      v26 = *(__b[1] + 8 * v15);
      v24 = [*(a1 + 32) objectForKey:v26];
      memset(v22, 0, sizeof(v22));
      v11 = MEMORY[0x277D82BE0](v24);
      v12 = [v11 countByEnumeratingWithState:v22 objects:v29 count:16];
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
          v6 = +[AMDAppSegment entity];
          v5 = [v6 name];
          v1 = *(a1 + 40);
          v21 = [v4 insertNewObjectForEntityForName:? inManagedObjectContext:?];
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](v6);
          [v21 setAdamId:{objc_msgSend(v26, "longLongValue")}];
          [v21 setSegment:v23];
          [v21 setTreatmentId:*(a1 + 48)];
          [v21 setAlgoId:*(a1 + 56)];
          objc_storeStrong(&v21, 0);
          ++v9;
          if (v7 + 1 >= v10)
          {
            v9 = 0;
            v10 = [v11 countByEnumeratingWithState:v22 objects:v29 count:16];
            if (!v10)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v24, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v2 = *(a1 + 64);
  v3 = (*(*(a1 + 72) + 8) + 40);
  v20 = *v3;
  [v2 save:&v20];
  objc_storeStrong(v3, v20);
  *MEMORY[0x277D85DE8];
}

+ (id)getSegmentsForTreatmentId:(id)id error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  errorCopy = error;
  v32 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v32 getManagedObjectContext];
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__13;
  v29 = __Block_byref_object_dispose__13;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = 0;
  v9 = getManagedObjectContext;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __49__AMDAppSegment_getSegmentsForTreatmentId_error___block_invoke;
  v14 = &unk_278CB5AA8;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16[1] = &v17;
  v16[0] = MEMORY[0x277D82BE0](getManagedObjectContext);
  v16[2] = &v24;
  [v9 performBlockAndWait:&v10];
  if (v25[5])
  {
    v7 = v25[5];
    v4 = v7;
    *errorCopy = v7;
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](v18[5]);
  }

  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

void __49__AMDAppSegment_getSegmentsForTreatmentId_error___block_invoke(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDAppSegment entity];
  v8 = [v9 name];
  v12[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  if (a1[4])
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"treatmentId == %@", a1[4]];
    [v12[0] setPredicate:?];
    MEMORY[0x277D82BD8](v6);
  }

  [v12[0] setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v11 = *location;
  v5 = [v1 executeFetchRequest:v12[0] error:&v11];
  objc_storeStrong(location, v11);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v5;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v12, 0);
}

+ (id)getSegmentsInfoForTreatment:(id)treatment error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, treatment);
  v28[1] = error;
  v28[0] = [selfCopy getSegmentsForTreatmentId:location[0] error:error];
  if (*error)
  {
    v31 = 0;
    v27 = 1;
  }

  else if ([v28[0] count])
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v28[0]);
    v17 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
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
        v23 = [v25 objectForKey:@"adamId"];
        v22 = [v25 objectForKey:@"segment"];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v23];
        v20 = [v26 objectForKey:v21];
        if (v20)
        {
          [v20 addObject:v22];
        }

        else
        {
          v10 = v26;
          v5 = objc_alloc(MEMORY[0x277CBEB18]);
          v11 = [v5 initWithObjects:{v22, 0}];
          [v10 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v11);
        }

        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v23, 0);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    firstObject = [v28[0] firstObject];
    v19 = [firstObject objectForKey:@"algoId"];
    MEMORY[0x277D82BD8](firstObject);
    v6 = [AMDPair alloc];
    v31 = [(AMDPair *)v6 initWith:v26 and:v19];
    v27 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v4 = [AMDPair alloc];
    v31 = [(AMDPair *)v4 initWith:MEMORY[0x277CBEC10] and:@"noApplicable"];
    v27 = 1;
  }

  objc_storeStrong(v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v31;

  return v7;
}

+ (id)getSegmentsDictForAllTreatments:(id *)treatments
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  treatmentsCopy = treatments;
  v30 = [self getSegmentsForTreatmentId:0 error:treatments];
  if (*treatmentsCopy)
  {
    v34 = 0;
    v29 = 1;
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v30);
    v17 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
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

        v27 = *(__b[1] + 8 * v14);
        v25 = [v27 objectForKey:@"treatmentId"];
        v24 = [v27 objectForKey:@"algoId"];
        v23 = [v27 objectForKey:@"adamId"];
        v22 = [v27 objectForKey:@"segment"];
        v21 = [v28 objectForKey:v25];
        if (!v21)
        {
          v10 = [AMDPair alloc];
          v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v3 = [AMDPair initWith:v10 and:"initWith:and:"];
          v4 = v21;
          v21 = v3;
          MEMORY[0x277D82BD8](v4);
          MEMORY[0x277D82BD8](v11);
        }

        [v28 setObject:v21 forKey:v25];
        first = [v21 first];
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v23];
        location = [first objectForKey:v19];
        if (location)
        {
          [location addObject:v22];
        }

        else
        {
          v8 = first;
          v5 = objc_alloc(MEMORY[0x277CBEB18]);
          v9 = [v5 initWithObjects:{v22, 0}];
          [v8 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v9);
        }

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&first, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v34 = MEMORY[0x277D82BE0](v28);
    v29 = 1;
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  *MEMORY[0x277D85DE8];
  v6 = v34;

  return v6;
}

+ (void)validatePredicate:(id)predicate withFeatureList:(id)list error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, predicate);
  v18 = 0;
  objc_storeStrong(&v18, list);
  v17[1] = error;
  v17[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  v10 = MEMORY[0x277D82BE0](v18);
  v11 = [v10 countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(__b[1] + 8 * v8);
      [v17[0] setObject:MEMORY[0x277CBEC38] forKey:v16];
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v10 countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v10);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:location[0]];
  v14 = [v5 predicateWithSubstitutionVariables:v17[0]];
  MEMORY[0x277D82BD8](v5);
  [v14 evaluateWithObject:0];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (BOOL)evaluatePredicate:(id)predicate withOperands:(id)operands
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, predicate);
  v9 = 0;
  objc_storeStrong(&v9, operands);
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:location[0]];
  v8 = [v6 predicateWithSubstitutionVariables:v9];
  MEMORY[0x277D82BD8](v6);
  v7 = [v8 evaluateWithObject:0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (id)assignSegmentsToApps:(id)apps withFeatureDictionary:(id)dictionary predicate:(id)predicate
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, apps);
  v36 = 0;
  objc_storeStrong(&v36, dictionary);
  v35 = 0;
  objc_storeStrong(&v35, predicate);
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  v26 = MEMORY[0x277D82BE0](location[0]);
  v27 = [v26 countByEnumeratingWithState:__b objects:v42 count:16];
  if (v27)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v27;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(v26);
      }

      v33 = *(__b[1] + 8 * v22);
      v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
      memset(v29, 0, sizeof(v29));
      v18 = MEMORY[0x277D82BE0](v36);
      v19 = [v18 countByEnumeratingWithState:v29 objects:v41 count:16];
      if (v19)
      {
        v15 = *v29[2];
        v16 = 0;
        v17 = v19;
        while (1)
        {
          v14 = v16;
          if (*v29[2] != v15)
          {
            objc_enumerationMutation(v18);
          }

          v30 = *(v29[1] + 8 * v16);
          v28 = [v36 objectForKey:v30];
          v13 = [v28 objectForKey:v33];
          MEMORY[0x277D82BD8](v13);
          if (v13)
          {
            [v31 setObject:MEMORY[0x277CBEC38] forKey:v30];
          }

          else
          {
            [v31 setObject:MEMORY[0x277CBEC28] forKey:v30];
          }

          objc_storeStrong(&v28, 0);
          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [v18 countByEnumeratingWithState:v29 objects:v41 count:16];
            if (!v17)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v18);
      if ([selfCopy evaluatePredicate:v35 withOperands:v31])
      {
        v10 = v34;
        v40 = @"1";
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v33, "longLongValue")}];
        [v10 setObject:v12 forKey:?];
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
      }

      else
      {
        v7 = v34;
        v39 = @"2";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v33, "longLongValue")}];
        [v7 setObject:v9 forKey:?];
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
      }

      objc_storeStrong(&v31, 0);
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v26 countByEnumeratingWithState:__b objects:v42 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v26);
  v6 = MEMORY[0x277D82BE0](v34);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)computeSegmentsForApps:(id)apps withRules:(id)rules error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, apps);
  v34 = 0;
  objc_storeStrong(&v34, rules);
  errorCopy = error;
  v32 = [v34 objectForKey:@"features"];
  v31 = [v34 objectForKey:@"predicate"];
  if (v32 && v31)
  {
    [selfCopy validatePredicate:v31 withFeatureList:v32 error:errorCopy];
    if (*errorCopy)
    {
      v37 = 0;
      v27 = 1;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      memset(__b, 0, sizeof(__b));
      v15 = MEMORY[0x277D82BE0](v32);
      v16 = [v15 countByEnumeratingWithState:__b objects:v38 count:16];
      if (v16)
      {
        v12 = *__b[2];
        v13 = 0;
        v14 = v16;
        while (1)
        {
          v11 = v13;
          if (*__b[2] != v12)
          {
            objc_enumerationMutation(v15);
          }

          v24 = *(__b[1] + 8 * v13);
          v22 = [AMDTasteProfile getFeatureValueWithName:v24 inDomain:@"apps" error:errorCopy];
          if (*errorCopy)
          {
            v27 = 2;
          }

          else if (v22)
          {
            [v26 setObject:v22 forKey:v24];
            v27 = 0;
          }

          else
          {
            [v25 addObject:v24];
            v27 = 3;
          }

          objc_storeStrong(&v22, 0);
          if (v27)
          {
            if (v27 != 3)
            {
              break;
            }
          }

          ++v13;
          if (v11 + 1 >= v14)
          {
            v13 = 0;
            v14 = [v15 countByEnumeratingWithState:__b objects:v38 count:16];
            if (!v14)
            {
              goto LABEL_21;
            }
          }
        }
      }

      else
      {
LABEL_21:
        v27 = 0;
      }

      MEMORY[0x277D82BD8](v15);
      if (*errorCopy)
      {
        v37 = 0;
        v27 = 1;
      }

      else
      {
        v10 = [v32 count];
        if (v10 == [v26 count])
        {
          v20 = [selfCopy assignSegmentsToApps:location[0] withFeatureDictionary:v26 predicate:v31];
          v37 = MEMORY[0x277D82BE0](v20);
          v27 = 1;
          objc_storeStrong(&v20, 0);
        }

        else
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requested features are absent: %@", v25];
          v9 = [AMDError allocError:21 withMessage:v21];
          v6 = v9;
          *errorCopy = v9;
          v37 = 0;
          v27 = 1;
          objc_storeStrong(&v21, 0);
        }
      }

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }
  }

  else
  {
    v30 = MEMORY[0x277D82BE0](@"Segmentation Error: Feature List or Predicate absent");
    v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v39, v30);
      _os_log_error_impl(&dword_240CB9000, v29, type, "%@", v39, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v17 = [AMDError allocError:21 withMessage:v30];
    v5 = v17;
    *errorCopy = v17;
    v37 = 0;
    v27 = 1;
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v37;

  return v7;
}

+ (id)assignSegmentsWithParameters:(id)parameters error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  errorCopy = error;
  v45 = [AMDTasteProfile getFeatureValueWithName:0x2852B1168 inDomain:@"apps" error:error];
  if (*error)
  {
    v49 = 0;
    v44 = 1;
  }

  else if (v45)
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v37 = 0;
    memset(__b, 0, sizeof(__b));
    v22 = MEMORY[0x277D82BE0](v45);
    v23 = [v22 countByEnumeratingWithState:__b objects:v50 count:16];
    if (v23)
    {
      v19 = *__b[2];
      v20 = 0;
      v21 = v23;
      while (1)
      {
        v18 = v20;
        if (*__b[2] != v19)
        {
          objc_enumerationMutation(v22);
        }

        v36 = *(__b[1] + 8 * v20);
        v34 = [location[0] objectForKey:v36];
        v33 = [v45 objectForKey:v36];
        if (v34)
        {
          v32 = 0;
          v30 = 0;
          v17 = [selfCopy computeSegmentsForApps:v33 withRules:v34 error:&v30];
          objc_storeStrong(&v32, v30);
          v31 = v17;
          if (v32)
          {
            v15 = v38;
            localizedDescription = [v32 localizedDescription];
            [v15 setObject:? forKey:?];
            MEMORY[0x277D82BD8](localizedDescription);
            [v40 addObject:v33];
            v44 = 3;
          }

          else
          {
            v5 = [v31 count];
            v37 += v5;
            [v39 addEntriesFromDictionary:v31];
            v44 = 0;
          }

          objc_storeStrong(&v31, 0);
          objc_storeStrong(&v32, 0);
        }

        else
        {
          [v40 addObjectsFromArray:v33];
          v44 = 3;
        }

        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [v22 countByEnumeratingWithState:__b objects:v50 count:16];
          if (!v21)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v22);
    v13 = v38;
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v37];
    [v13 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v14);
    v29 = 0;
    v28 = [location[0] objectForKey:@"default"];
    if (v28)
    {
      v26 = v29;
      v12 = [selfCopy computeSegmentsForApps:v40 withRules:v28 error:&v26];
      objc_storeStrong(&v29, v26);
      v27 = v12;
      if (v29)
      {
        v10 = v38;
        localizedDescription2 = [v29 localizedDescription];
        [v10 setObject:? forKey:?];
        MEMORY[0x277D82BD8](localizedDescription2);
      }

      else
      {
        [v39 addEntriesFromDictionary:v27];
        v8 = v38;
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
        [v8 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v9);
      }

      [AMDFrameworkMetrics log:v38 withKey:@"segmentationSummary" atVerbosity:0];
      v49 = MEMORY[0x277D82BE0](v39);
      v44 = 1;
      objc_storeStrong(&v27, 0);
    }

    else
    {
      [v38 setObject:@"Default segmentation rules absent" forKey:@"default"];
      [AMDFrameworkMetrics log:v38 withKey:@"segmentationSummary" atVerbosity:0];
      v49 = MEMORY[0x277D82BE0](v39);
      v44 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v43 = MEMORY[0x277D82BE0](@"AMD_TP_APP_LIST_BY_GENRE feature unavailable on the device");
    v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v41 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v51, v43);
      _os_log_error_impl(&dword_240CB9000, v42, v41, "%@", v51, 0xCu);
    }

    objc_storeStrong(&v42, 0);
    [AMDFrameworkMetrics log:v43 withKey:@"SegmentComputationFailed" atVerbosity:0];
    v24 = [AMDError allocError:21 withMessage:v43];
    v4 = v24;
    *errorCopy = v24;
    v49 = 0;
    v44 = 1;
    objc_storeStrong(&v43, 0);
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v49;

  return v6;
}

@end
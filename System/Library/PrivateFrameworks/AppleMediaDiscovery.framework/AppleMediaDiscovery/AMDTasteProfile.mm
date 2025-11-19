@interface AMDTasteProfile
+ (BOOL)hasArcade:(id *)a3;
+ (id)deleteAppInfoEntries:(id *)a3;
+ (id)deleteEntriesOfFeature:(id)a3 withDomain:(int64_t)a4 error:(id *)a5;
+ (id)deleteWithPredicates:(id)a3 error:(id *)a4;
+ (id)fetchTasteProfile:(id *)a3;
+ (id)getEntries:(id)a3 error:(id *)a4;
+ (id)getFeatureValueWithName:(id)a3 inDomain:(id)a4 error:(id *)a5;
+ (id)getFeatureWithName:(id)a3 inDomain:(id)a4 withColumnName:(id)a5 error:(id *)a6;
+ (id)getPurchasedAppsSet:(id *)a3;
+ (id)getPurchasedArcadeGamesSet:(id *)a3;
+ (id)getStorefrontIdForDomain:(id)a3;
+ (id)getUserIdForDomain:(id)a3;
+ (id)refreshAggregationTasteProfileForDomain:(id)a3 forUser:(id)a4 andStoreFrontId:(unsigned int)a5 error:(id *)a6;
+ (id)refreshAppInformationTasteProfile:(id *)a3;
+ (id)refreshServerTasteProfile:(id)a3 error:(id *)a4;
+ (id)saveTasteProfileEntriesFromDict:(id)a3 inDomain:(id)a4 forSource:(id)a5 error:(id *)a6;
+ (void)refreshCToLMaps;
+ (void)saveMinimalCToLMapForModelId:(id)a3 usingMapData:(id)a4 andPurchases:(id)a5;
@end

@implementation AMDTasteProfile

+ (id)fetchTasteProfile:(id *)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v44 = 0;
  v45 = &v44;
  v46 = 838860800;
  v47 = 48;
  v48 = __Block_byref_object_copy__8;
  v49 = __Block_byref_object_dispose__8;
  v50 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 838860800;
  v40 = 48;
  v41 = __Block_byref_object_copy__8;
  v42 = __Block_byref_object_dispose__8;
  v43 = 0;
  v21 = +[AMDCoreDataPersistentContainer sharedContainer];
  v36 = [v21 getManagedObjectContext];
  MEMORY[0x277D82BD8](v21);
  v20 = v36;
  v30 = MEMORY[0x277D85DD0];
  v31 = -1073741824;
  v32 = 0;
  v33 = __37__AMDTasteProfile_fetchTasteProfile___block_invoke;
  v34 = &unk_278CB5AD0;
  v35[1] = &v37;
  v35[0] = MEMORY[0x277D82BE0](v36);
  v35[2] = &v44;
  [v20 performBlockAndWait:&v30];
  if (v45[5])
  {
    v19 = v45[5];
    v3 = v19;
    *v51 = v19;
    v54 = 0;
    v29 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v38[5]);
    v18 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
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

        v28 = *(__b[1] + 8 * v15);
        v12 = MEMORY[0x277CCAAA0];
        v11 = [v28 objectForKey:@"value"];
        v26 = [v12 JSONObjectWithData:? options:? error:?];
        MEMORY[0x277D82BD8](v11);
        if (*v51)
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          type = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            log = oslog;
            v10 = type;
            v7 = [v28 objectForKey:@"feeatureName"];
            v8 = MEMORY[0x277D82BE0](v7);
            v23 = v8;
            v6 = [*v51 localizedDescription];
            location = MEMORY[0x277D82BE0](v6);
            __os_log_helper_16_2_2_8_64_8_64(v55, v8, location);
            _os_log_error_impl(&dword_240CB9000, log, v10, "error deserializing value for feature %@: %@", v55, 0x16u);
            MEMORY[0x277D82BD8](v6);
            MEMORY[0x277D82BD8](v7);
            objc_storeStrong(&location, 0);
            objc_storeStrong(&v23, 0);
          }

          objc_storeStrong(&oslog, 0);
          v54 = 0;
          v29 = 1;
        }

        else
        {
          [v28 setValue:v26 forKey:@"value"];
          v29 = 0;
        }

        objc_storeStrong(&v26, 0);
        if (v29)
        {
          break;
        }

        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
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
      v29 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v29)
    {
      v54 = MEMORY[0x277D82BE0](v38[5]);
      v29 = 1;
    }
  }

  objc_storeStrong(v35, 0);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(&v37, 8);
  objc_storeStrong(&v43, 0);
  _Block_object_dispose(&v44, 8);
  objc_storeStrong(&v50, 0);
  *MEMORY[0x277D85DE8];
  v4 = v54;

  return v4;
}

void __37__AMDTasteProfile_fetchTasteProfile___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDTasteProfile entity];
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

+ (id)getUserIdForDomain:(id)a3
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  v9 = 0;
  v6 = [v13 getFeatureWithName:@"OD_DSID" inDomain:location[0] withColumnName:0 error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v6;
  v7 = 0;
  if (v6)
  {
    v8 = [v10 getValue];
    v7 = 1;
    v3 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v14 = v3;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v4 = v14;

  return v4;
}

+ (id)getStorefrontIdForDomain:(id)a3
{
  v16 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  v12 = 0;
  v9 = [v16 getFeatureWithName:@"OD_STOREFRONT_ID" inDomain:location[0] withColumnName:0 error:&v12];
  objc_storeStrong(&v14, v12);
  v13 = v9;
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v10 setNumberStyle:1];
    v5 = v10;
    v8 = [v13 getValue];
    v7 = [v8 allKeys];
    v6 = [v7 firstObject];
    v17 = [v5 numberFromString:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v17 = 0;
    v11 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v3 = v17;

  return v3;
}

+ (id)getEntries:(id)a3 error:(id *)a4
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
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v8 = v18;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __36__AMDTasteProfile_getEntries_error___block_invoke;
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

void __36__AMDTasteProfile_getEntries_error___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDTasteProfile entity];
  v5 = [v6 name];
  v11[0] = [v4 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [v11[0] setPredicate:a1[4]];
  [v11[0] setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v10 = *location;
  v9 = [v1 executeFetchRequest:v11[0] error:&v10];
  objc_storeStrong(location, v10);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v9;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v11, 0);
}

+ (id)getFeatureValueWithName:(id)a3 inDomain:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = a5;
  *a5 = 0;
  v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"featureName == %@", location[0]];
  if (v35 && ([v35 isEqualToString:@"all"] & 1) == 0)
  {
    v32 = [AMDDomains getCodeForDomain:v35];
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d AND featureName == %@", v32, location[0]];
    v6 = v33;
    v33 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v31 = [AMDTasteProfile getEntries:v33 error:v34];
  if (*v34)
  {
    v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v29 = 16;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      log = v30;
      type = v29;
      v14 = location[0];
      v17 = [*v34 localizedDescription];
      v28 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_2_8_64_8_64(v40, v14, v28);
      _os_log_error_impl(&dword_240CB9000, log, type, "Error fetching feature %@: %@", v40, 0x16u);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v30, 0);
    v37 = 0;
    v27 = 1;
  }

  else if (v31 && [v31 count])
  {
    v13 = [v31 firstObject];
    v24 = [v13 objectForKey:@"value"];
    MEMORY[0x277D82BD8](v13);
    v23 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v24 options:4 error:v34];
    if (*v34)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v21 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v10 = oslog;
        v11 = v21;
        v9 = location[0];
        v12 = [*v34 localizedDescription];
        v20 = MEMORY[0x277D82BE0](v12);
        __os_log_helper_16_2_2_8_64_8_64(v38, v9, v20);
        _os_log_error_impl(&dword_240CB9000, v10, v11, "Error deserializing value for feature %@: %@", v38, 0x16u);
        MEMORY[0x277D82BD8](v12);
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&oslog, 0);
      v37 = 0;
      v27 = 1;
    }

    else
    {
      v37 = MEMORY[0x277D82BE0](v23);
      v27 = 1;
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v26 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v25 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_64_8_64(v39, location[0], v35);
      _os_log_impl(&dword_240CB9000, v26, v25, "Feature '%@' not found, domain: %@", v39, 0x16u);
    }

    objc_storeStrong(&v26, 0);
    v37 = 0;
    v27 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v37;

  return v7;
}

+ (id)getFeatureWithName:(id)a3 inDomain:(id)a4 withColumnName:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = a6;
  v18 = [v23 getFeatureValueWithName:location[0] inDomain:v21 error:a6];
  if (*a6 || !v18)
  {
    *v19 = 0;
    v6 = [AMDSQLite getFeatureValueWithName:location[0] inDomain:v21 withColumnName:v20 skipRowset:1 error:v19];
    v7 = v18;
    v18 = v6;
    MEMORY[0x277D82BD8](v7);
  }

  if (*v19)
  {
    v24 = 0;
    v17 = 1;
  }

  else if (v18)
  {
    v24 = [AMDFeature featureFromValue:v18];
    v17 = 1;
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"No feature '%@' in domain '%@'", location[0], v21];
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v25, v16);
      _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "%@", v25, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v11 = [AMDError allocError:16 withMessage:v16];
    v8 = v11;
    *v19 = v11;
    v24 = 0;
    v17 = 1;
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v24;

  return v9;
}

+ (id)refreshAggregationTasteProfileForDomain:(id)a3 forUser:(id)a4 andStoreFrontId:(unsigned int)a5 error:(id *)a6
{
  v77 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v67 = 0;
  objc_storeStrong(&v67, a4);
  v66 = a5;
  v65 = a6;
  v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [AMDPerf startMonitoringEvent:@"RefreshODTP"];
  if ([AMDMiscHelpers isValidDSID:v67])
  {
    v62 = [AMDDomains getCodeForDomain:location[0]];
    if (v62)
    {
      v61 = [AMDDescriptor getDescriptorsForDomain:v62 error:v65];
      if (*v65)
      {
        v69 = 0;
        v63 = 1;
      }

      else
      {
        v60 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v61, "count")}];
        v59 = 0;
        v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(__b, 0, sizeof(__b));
        v35 = MEMORY[0x277D82BE0](v61);
        v36 = [v35 countByEnumeratingWithState:__b objects:v76 count:16];
        if (v36)
        {
          v32 = *__b[2];
          v33 = 0;
          v34 = v36;
          while (1)
          {
            v31 = v33;
            if (*__b[2] != v32)
            {
              objc_enumerationMutation(v35);
            }

            v56 = *(__b[1] + 8 * v33);
            v54 = [v61 objectForKey:v56];
            v8 = [v54 objectForKey:@"required"];
            v29 = v8 != 0;
            MEMORY[0x277D82BD8](v8);
            v53 = v29;
            v52 = 0;
            v30 = [v54 objectForKey:@"version"];
            MEMORY[0x277D82BD8](v30);
            v9 = [AMDFeatureDescriptor alloc];
            if (v30)
            {
              v10 = [(AMDFeatureDescriptor *)v9 initWithDictionaryV2:v54 withUserId:v67 featureName:v56 withDomain:location[0]];
            }

            else
            {
              v10 = [(AMDFeatureDescriptor *)v9 initWithDictionary:v54 withUserId:v67 featureName:v56];
            }

            v11 = v52;
            v52 = v10;
            MEMORY[0x277D82BD8](v11);
            if (v52)
            {
              v48 = [v52 getFeatureData:v65];
              if (*v65)
              {
                [v57 addObject:v56];
                v59 = v59 || v53;
                v63 = 3;
              }

              else
              {
                if (v48)
                {
                  [v58 addObject:v56];
                  [v60 setObject:v48 forKey:v56];
                }

                else
                {
                  [v57 addObject:v56];
                  v47 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v46 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    v25 = v47;
                    __os_log_helper_16_2_1_8_64(v74, v56);
                    _os_log_error_impl(&dword_240CB9000, v25, v46, "Nil response obtained after running descriptor for feature: %@", v74, 0xCu);
                  }

                  objc_storeStrong(&v47, 0);
                }

                v63 = 0;
              }

              objc_storeStrong(&v48, 0);
            }

            else
            {
              v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not build descriptor for feature '%@'", v56];
              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              type = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                log = oslog;
                v28 = type;
                __os_log_helper_16_2_1_8_64(v75, v51);
                _os_log_error_impl(&dword_240CB9000, log, v28, "%@", v75, 0xCu);
              }

              objc_storeStrong(&oslog, 0);
              v26 = [AMDError allocError:16 withMessage:v51];
              v12 = v26;
              *v65 = v26;
              v59 = v59 || v53;
              [v57 addObject:v56];
              v63 = 3;
              objc_storeStrong(&v51, 0);
            }

            objc_storeStrong(&v52, 0);
            objc_storeStrong(&v54, 0);
            ++v33;
            if (v31 + 1 >= v34)
            {
              v33 = 0;
              v34 = [v35 countByEnumeratingWithState:__b objects:v76 count:16];
              if (!v34)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v35);
        [v64 setObject:v58 forKey:@"computedFeatures"];
        [v64 setObject:v57 forKey:@"aggregationFailures"];
        v45 = 0;
        if (v59)
        {
          [v64 setObject:@"Required descriptor failed. TP Save skipped" forKey:@"tpSaveSummary"];
          v44 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v43 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v17 = v44;
            v18 = v43;
            __os_log_helper_16_0_0(v42);
            _os_log_error_impl(&dword_240CB9000, v17, v18, "at least one required descriptor failed, not updating OD-TP", v42, 2u);
          }

          objc_storeStrong(&v44, 0);
        }

        else
        {
          v19 = v60;
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:v66];
          v72 = v21;
          v73 = &unk_2852BA998;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:?];
          [v19 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v20);
          MEMORY[0x277D82BD8](v21);
          v22 = v60;
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v66 - 143440];
          v70 = v24;
          v71 = &unk_2852BA998;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          [v22 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v23);
          MEMORY[0x277D82BD8](v24);
          [v60 setObject:v67 forKey:@"OD_DSID"];
          v13 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v60 inDomain:location[0] forSource:@"device" error:v65];
          v14 = v45;
          v45 = v13;
          MEMORY[0x277D82BD8](v14);
          if (!*v65)
          {
            [v64 setObject:v45 forKey:@"tpSaveSummary"];
          }
        }

        [AMDPerf endMonitoringEvent:@"RefreshODTP"];
        v69 = MEMORY[0x277D82BE0](v64);
        v63 = 1;
        objc_storeStrong(&v45, 0);
        objc_storeStrong(&v57, 0);
        objc_storeStrong(&v58, 0);
        objc_storeStrong(&v60, 0);
      }

      objc_storeStrong(&v61, 0);
    }

    else
    {
      v37 = [AMDError allocError:15 withMessage:@"unknown domain"];
      v7 = v37;
      *v65 = v37;
      v69 = 0;
      v63 = 1;
    }
  }

  else
  {
    v38 = [AMDError allocError:15 withMessage:@"Invalid dsid"];
    v6 = v38;
    *v65 = v38;
    v69 = 0;
    v63 = 1;
  }

  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v15 = v69;

  return v15;
}

+ (id)saveTasteProfileEntriesFromDict:(id)a3 inDomain:(id)a4 forSource:(id)a5 error:(id *)a6
{
  v85 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v71 = 0;
  objc_storeStrong(&v71, a4);
  v70 = 0;
  objc_storeStrong(&v70, a5);
  v69 = a6;
  if ([location[0] count])
  {
    v64 = [AMDDomains getCodeForDomain:v71];
    v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v61 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(location[0], "count")}];
    memset(__b, 0, sizeof(__b));
    v24 = MEMORY[0x277D82BE0](location[0]);
    v25 = [v24 countByEnumeratingWithState:__b objects:v81 count:16];
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

        v60 = *(__b[1] + 8 * v22);
        v19 = MEMORY[0x277CCAAA0];
        v18 = [location[0] valueForKey:v60];
        v58 = [v19 dataWithJSONObject:? options:? error:?];
        MEMORY[0x277D82BD8](v18);
        if (*v69 || !v58)
        {
          v16 = MEMORY[0x277CCACA8];
          v17 = v60;
          v6 = *v69;
          v55 = 0;
          if (v6)
          {
            v56 = [*v69 localizedDescription];
            v55 = 1;
            v15 = v56;
          }

          else
          {
            v15 = @"No data";
          }

          v57 = [v16 stringWithFormat:@"Could not retrieve TP data for feature '%@': %@", v17, v15];
          if (v55)
          {
            MEMORY[0x277D82BD8](v56);
          }

          v54 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v53 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v14 = v54;
            __os_log_helper_16_2_1_8_64(v80, v57);
            _os_log_error_impl(&dword_240CB9000, v14, v53, "%@", v80, 0xCu);
          }

          objc_storeStrong(&v54, 0);
          [v62 addObject:v60];
          *v69 = 0;
          objc_storeStrong(&v57, 0);
        }

        [v61 setObject:v58 forKey:v60];
        objc_storeStrong(&v58, 0);
        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [v24 countByEnumeratingWithState:__b objects:v81 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v24);
    if ([v62 count])
    {
      [v63 setObject:v62 forKey:@"badFeatures"];
    }

    v46 = 0;
    v47 = &v46;
    v48 = 838860800;
    v49 = 48;
    v50 = __Block_byref_object_copy__8;
    v51 = __Block_byref_object_dispose__8;
    v52 = 0;
    v45 = +[AMDCoreDataPersistentContainer sharedContainer];
    v44 = [v45 getManagedObjectContext];
    v13 = v44;
    v35 = MEMORY[0x277D85DD0];
    v36 = -1073741824;
    v37 = 0;
    v38 = __76__AMDTasteProfile_saveTasteProfileEntriesFromDict_inDomain_forSource_error___block_invoke;
    v39 = &unk_278CB6290;
    v40 = MEMORY[0x277D82BE0](v61);
    v41 = MEMORY[0x277D82BE0](v44);
    v42 = MEMORY[0x277D82BE0](v70);
    v43[2] = v64;
    v43[0] = MEMORY[0x277D82BE0](v45);
    v43[1] = &v46;
    [v13 performBlockAndWait:&v35];
    if (v47[5])
    {
      v12 = v47[5];
      v7 = v12;
      *v69 = v12;
      v11 = MEMORY[0x277CCACA8];
      v10 = [v47[5] localizedDescription];
      v34 = [v11 stringWithFormat:@"Error saving TP entries: %@", v10];
      MEMORY[0x277D82BD8](v10);
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v32 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v79, v34);
        _os_log_error_impl(&dword_240CB9000, oslog, v32, "%@", v79, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v77 = @"error";
      v78 = v34;
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v65 = 1;
      objc_storeStrong(&v34, 0);
    }

    else
    {
      v31 = [v61 allKeys];
      v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v76, v70, [v31 count], v31);
        _os_log_debug_impl(&dword_240CB9000, v30, OS_LOG_TYPE_DEBUG, "Saved %@ TP features (%lu): %@", v76, 0x20u);
      }

      objc_storeStrong(&v30, 0);
      v74 = @"savedFeatures";
      v75 = v31;
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v65 = 1;
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(v43, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
    _Block_object_dispose(&v46, 8);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v63, 0);
  }

  else
  {
    v68 = MEMORY[0x277D82BE0](@"Empty taste profile");
    v67 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v84, v68);
      _os_log_error_impl(&dword_240CB9000, v67, type, "%@", v84, 0xCu);
    }

    objc_storeStrong(&v67, 0);
    v26 = [AMDError allocError:23 withMessage:v68];
    MEMORY[0x277D82BD8](v26);
    v82 = @"error";
    v83 = v68;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v65 = 1;
    objc_storeStrong(&v68, 0);
  }

  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v73;

  return v8;
}

void __76__AMDTasteProfile_saveTasteProfileEntriesFromDict_inDomain_forSource_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a1;
  v14 = [MEMORY[0x277CBEAA8] date];
  [v14 timeIntervalSince1970];
  v15 = v1;
  MEMORY[0x277D82BD8](v14);
  v23 = v15;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v18 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v18)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v18;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v12);
      v5 = MEMORY[0x277CBE408];
      v7 = +[AMDTasteProfile entity];
      v6 = [v7 name];
      v2 = *(a1 + 40);
      v20 = [v5 insertNewObjectForEntityForName:? inManagedObjectContext:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      [v20 setSource:*(a1 + 48)];
      [v20 setDomain:*(a1 + 72)];
      [v20 setFeatureName:v22];
      v8 = v20;
      v9 = [*(a1 + 32) objectForKey:v22];
      [v8 setValue:?];
      MEMORY[0x277D82BD8](v9);
      [v20 setLastUpdated:v23];
      objc_storeStrong(&v20, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v3 = *(a1 + 56);
  v4 = (*(*(a1 + 64) + 8) + 40);
  v19 = *v4;
  [v3 save:&v19];
  objc_storeStrong(v4, v19);
  *MEMORY[0x277D85DE8];
}

+ (id)deleteWithPredicates:(id)a3 error:(id *)a4
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
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v19 getManagedObjectContext];
  v8 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __46__AMDTasteProfile_deleteWithPredicates_error___block_invoke;
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

void __46__AMDTasteProfile_deleteWithPredicates_error___block_invoke(uint64_t a1)
{
  v19[2] = a1;
  v19[1] = a1;
  v10 = MEMORY[0x277CBE428];
  v12 = +[AMDTasteProfile entity];
  v11 = [v12 name];
  v19[0] = [v10 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (*(a1 + 32) && [*(a1 + 32) count])
  {
    v9 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:*(a1 + 32)];
    [v19[0] setPredicate:?];
    MEMORY[0x277D82BD8](v9);
  }

  v18 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v19[0]];
  [v18 setResultType:2];
  v1 = *(a1 + 40);
  location = (*(*(a1 + 56) + 8) + 40);
  v16 = *location;
  v8 = [v1 executeRequest:v18 error:&v16];
  objc_storeStrong(location, v16);
  v17 = v8;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v15 = 1;
  }

  else
  {
    v2 = *(a1 + 48);
    v6 = (*(*(a1 + 56) + 8) + 40);
    v14 = *v6;
    [v2 save:&v14];
    objc_storeStrong(v6, v14);
    v3 = [v17 result];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
}

+ (id)deleteAppInfoEntries:(id *)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = [MEMORY[0x277CCAC30] predicateWithFormat:@"featureName == %@ || featureName == %@ || featureName == %@ || featureName == %@", @"APPS_IS_ARCADE", @"APPS_PURCHASED", @"APPS_GENRE", @"APPS_RATINGS_RANK"];
  v4 = v8;
  v9[0] = v7[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v4 deleteWithPredicates:? error:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v7, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)deleteEntriesOfFeature:(id)a3 withDomain:(int64_t)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11[2] = a4;
  v11[1] = a5;
  v11[0] = [MEMORY[0x277CCAC30] predicateWithFormat:@"featureName == %@ && domain == %d", location[0], a4];
  v8 = v13;
  v14[0] = v11[0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = [v8 deleteWithPredicates:? error:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)refreshAppInformationTasteProfile:(id *)a3
{
  v117 = *MEMORY[0x277D85DE8];
  v94 = a1;
  v93 = a2;
  v92 = a3;
  [AMDPerf startMonitoringEvent:@"RefreshAppInfo"];
  v91 = [v94 deleteAppInfoEntries:v92];
  if (*v92)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v43 = type;
      v44 = [*v92 localizedDescription];
      v88 = MEMORY[0x277D82BE0](v44);
      __os_log_helper_16_2_1_8_64(v116, v88);
      _os_log_error_impl(&dword_240CB9000, log, v43, "Previous App Information Taste Profiles could not be deleted. %@", v116, 0xCu);
      MEMORY[0x277D82BD8](v44);
      objc_storeStrong(&v88, 0);
    }

    objc_storeStrong(&oslog, 0);
    v95 = 0;
    v87 = 1;
  }

  else
  {
    if (v91)
    {
      objc_storeStrong(&v91, v91);
    }

    else
    {
      objc_storeStrong(&v91, &unk_2852BA9B0);
    }

    v86 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v85 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v115, v91);
      _os_log_impl(&dword_240CB9000, v86, v85, "Number of App Information Taste Profiles Deleted: %@", v115, 0xCu);
    }

    objc_storeStrong(&v86, 0);
    v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v79 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    [v79 setFilter:&__block_literal_global_5];
    v78 = 0;
    v77 = 0;
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    v40 = MEMORY[0x277D82BE0](v79);
    v41 = [v40 countByEnumeratingWithState:__b objects:v114 count:16];
    if (v41)
    {
      v37 = *__b[2];
      v38 = 0;
      v39 = v41;
      while (1)
      {
        v36 = v38;
        if (*__b[2] != v37)
        {
          objc_enumerationMutation(v40);
        }

        v70 = *(__b[1] + 8 * v38);
        ++v78;
        v68 = [v70 iTunesMetadata];
        v67 = [v68 storeItemIdentifier];
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:v67];
        v65 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v70, "isArcadeApp")}];
        v64 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v68, "isPurchasedRedownload")}];
        v63 = [v68 genreIdentifier];
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v63];
        v61 = [v68 ratingRank];
        [v84 setObject:v65 forKey:v66];
        [v83 setObject:v64 forKey:v66];
        v25 = v82;
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
        [v25 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v26);
        v27 = v81;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v61];
        [v27 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v28);
        v29 = v75;
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v67];
        [v29 addObject:?];
        MEMORY[0x277D82BD8](v30);
        [v74 addObject:v65];
        [v73 addObject:v64];
        v31 = v72;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
        [v31 addObject:?];
        MEMORY[0x277D82BD8](v32);
        v33 = v71;
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v61];
        [v33 addObject:?];
        MEMORY[0x277D82BD8](v34);
        v35 = [v80 objectForKey:v62];
        MEMORY[0x277D82BD8](v35);
        if (v35)
        {
          v60 = [v80 objectForKey:v62];
          [v60 addObject:v66];
          objc_storeStrong(&v60, 0);
        }

        else
        {
          v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v59 addObject:v66];
          [v80 setObject:v59 forKey:v62];
          objc_storeStrong(&v59, 0);
        }

        v3 = ([v70 isArcadeApp] & 1) != 0;
        v77 += v3;
        objc_storeStrong(&v62, 0);
        objc_storeStrong(&v64, 0);
        objc_storeStrong(&v65, 0);
        objc_storeStrong(&v66, 0);
        objc_storeStrong(&v68, 0);
        ++v38;
        if (v36 + 1 >= v39)
        {
          v38 = 0;
          v39 = [v40 countByEnumeratingWithState:__b objects:v114 count:16];
          if (!v39)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v40);
    v12 = v76;
    v112[0] = 0x2852A8428;
    v113[0] = v75;
    v112[1] = 0x2852ABEE8;
    v113[1] = 0x2852B3928;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:?];
    [v12 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v13);
    v14 = v76;
    v110[0] = 0x2852A8428;
    v111[0] = v74;
    v110[1] = 0x2852ABEE8;
    v111[1] = 0x2852B3908;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
    [v14 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v15);
    v16 = v76;
    v108[0] = 0x2852A8428;
    v109[0] = v72;
    v108[1] = 0x2852ABEE8;
    v109[1] = 0x2852B3928;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
    [v16 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v17);
    v18 = v76;
    v106[0] = 0x2852A8428;
    v107[0] = v73;
    v106[1] = 0x2852ABEE8;
    v107[1] = 0x2852B3908;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
    [v18 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v19);
    v20 = v76;
    v104[0] = 0x2852A8428;
    v105[0] = v71;
    v104[1] = 0x2852ABEE8;
    v105[1] = 0x2852B3928;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
    [v20 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v21);
    v102[0] = @"data";
    v103[0] = v76;
    v102[1] = @"tpContentType";
    v103[1] = @"v2FeatureDescriptor";
    v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
    v22 = MEMORY[0x277CBEB58];
    v23 = [v83 allKeys];
    v57 = [v22 setWithArray:?];
    MEMORY[0x277D82BD8](v23);
    v56 = 0;
    v54 = 0;
    v24 = [AMDTasteProfile getFeatureValueWithName:@"PURCHASED_ITEM_AFFINITY" inDomain:@"apps" error:&v54];
    objc_storeStrong(&v56, v54);
    v55 = v24;
    if (!v56 && v55)
    {
      v10 = v57;
      v11 = [v55 allKeys];
      [v10 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v11);
      v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v52 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_8_0(v101, [v55 count]);
        _os_log_impl(&dword_240CB9000, v53, v52, "Found %lu apps from server TP", v101, 0xCu);
      }

      objc_storeStrong(&v53, 0);
    }

    v99[0] = @"APPS_TP";
    v100[0] = v58;
    v99[1] = @"APPS_GENRE";
    v100[1] = v82;
    v99[2] = @"APPS_HAS_ARCADE";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v77];
    v100[2] = v9;
    v99[3] = @"APPS_IS_ARCADE";
    v100[3] = v84;
    v99[4] = @"APPS_PURCHASED";
    v100[4] = v83;
    v99[5] = @"APPS_PURCHASED_ALL";
    v8 = [v57 allObjects];
    v100[5] = v8;
    v99[6] = @"APPS_RATINGS_RANK";
    v100[6] = v81;
    v99[7] = @"APPS_LIST_BY_GENRE";
    v100[7] = v80;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:8];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    if (v78)
    {
      v50 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v49 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_0_8_64(v98, [v51 count], v51);
        _os_log_debug_impl(&dword_240CB9000, v50, v49, "App info TP (%lu): %@", v98, 0x16u);
      }

      objc_storeStrong(&v50, 0);
    }

    else
    {
      v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v47 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v6 = v48;
        v7 = v47;
        __os_log_helper_16_0_0(v46);
        _os_log_impl(&dword_240CB9000, v6, v7, "No third party apps found", v46, 2u);
      }

      objc_storeStrong(&v48, 0);
    }

    v45 = [v94 saveTasteProfileEntriesFromDict:v51 inDomain:@"apps" forSource:@"device" error:v92];
    [AMDPerf endMonitoringEvent:@"RefreshAppInfo"];
    v96[0] = @"deletedForRefresh";
    v97[0] = v91;
    v96[1] = @"saved";
    v97[1] = v45;
    v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
    v87 = 1;
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v79, 0);
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v81, 0);
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v84, 0);
  }

  objc_storeStrong(&v91, 0);
  *MEMORY[0x277D85DE8];
  v4 = v95;

  return v4;
}

BOOL __53__AMDTasteProfile_refreshAppInformationTasteProfile___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] iTunesMetadata];
  v4 = [v3 storeItemIdentifier] != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v4;
}

+ (BOOL)hasArcade:(id *)a3
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  location = [a1 getFeatureWithName:@"APPS_HAS_ARCADE" inDomain:@"apps" withColumnName:0 error:a3];
  v5 = 0;
  v4 = 0;
  if (!*v8)
  {
    v4 = 0;
    if (location)
    {
      v6 = [location getValue];
      v5 = 1;
      v4 = [v6 longValue] != 0;
    }
  }

  v11 = v4;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&location, 0);
  return v11;
}

+ (id)refreshServerTasteProfile:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v19 = [location[0] objectForKey:0x2852A86A8];
  if (v19)
  {
    v16 = [location[0] objectForKey:0x2852A8208];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = MEMORY[0x277D82BE0](v16);
        *v20 = 0;
        v22 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v13 inDomain:v19 forSource:@"server" error:v20];
        v17 = 1;
        objc_storeStrong(&v13, 0);
      }

      else
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Server TP data not a dictionary for domain: %@", v19];
        v9 = [AMDError allocError:23 withMessage:v14];
        v6 = v9;
        *v20 = v9;
        v23 = @"error";
        v24 = v14;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v17 = 1;
        objc_storeStrong(&v14, 0);
      }
    }

    else
    {
      v15 = MEMORY[0x277D82BE0](@"Missing TP data");
      v10 = [AMDError allocError:23 withMessage:v15];
      v5 = v10;
      *v20 = v10;
      v25 = @"error";
      v26 = v15;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = 1;
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  else
  {
    v18 = MEMORY[0x277D82BE0](@"Missing domian");
    v11 = [AMDError allocError:23 withMessage:v18];
    v4 = v11;
    *v20 = v11;
    v27 = @"error";
    v28[0] = v18;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v17 = 1;
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v22;

  return v7;
}

+ (id)getPurchasedAppsSet:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = [AMDTasteProfile getFeatureValueWithName:@"APPS_PURCHASED_ALL" inDomain:@"apps" error:a3];
  if (!*v23 && v22)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v22, "count")}];
    memset(__b, 0, sizeof(__b));
    v11 = MEMORY[0x277D82BE0](v22);
    v12 = [v11 countByEnumeratingWithState:__b objects:v27 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(__b[1] + 8 * v9);
        v5 = v17;
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v16, "longLongValue")}];
        [v5 addObject:?];
        MEMORY[0x277D82BD8](v6);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v27 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v11);
    v26 = MEMORY[0x277D82BE0](v17);
    v18 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [*v23 localizedDescription];
    v21 = [v13 stringWithFormat:@"Error fetching all purchases: %@", v14];
    MEMORY[0x277D82BD8](v14);
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v19 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v28, v21);
      _os_log_impl(&dword_240CB9000, location, v19, "%@", v28, 0xCu);
    }

    objc_storeStrong(&location, 0);
    [AMDFrameworkMetrics log:v21 withKey:@"fetchAppPurchasesFailure" atVerbosity:0];
    v26 = 0;
    v18 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v22, 0);
  *MEMORY[0x277D85DE8];
  v3 = v26;

  return v3;
}

+ (id)getPurchasedArcadeGamesSet:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = [AMDTasteProfile getFeatureValueWithName:@"APPS_IS_ARCADE" inDomain:@"apps" error:a3];
  if (!*v24 && v23)
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v23, "count")}];
    memset(__b, 0, sizeof(__b));
    v11 = MEMORY[0x277D82BE0](v23);
    v12 = [v11 countByEnumeratingWithState:__b objects:v28 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(__b[1] + 8 * v9);
        v15 = [v23 objectForKey:v17];
        if ([v15 BOOLValue])
        {
          v5 = v18;
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "longLongValue")}];
          [v5 addObject:?];
          MEMORY[0x277D82BD8](v6);
        }

        objc_storeStrong(&v15, 0);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v11);
    v27 = MEMORY[0x277D82BE0](v18);
    v19 = 1;
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [*v24 localizedDescription];
    v22 = [v13 stringWithFormat:@"Error fetching arcade purchases: %@", v14];
    MEMORY[0x277D82BD8](v14);
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v20 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v29, v22);
      _os_log_impl(&dword_240CB9000, location, v20, "%@", v29, 0xCu);
    }

    objc_storeStrong(&location, 0);
    [AMDFrameworkMetrics log:v22 withKey:@"fetchArcadePurchasesFailure" atVerbosity:0];
    v27 = 0;
    v19 = 1;
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v23, 0);
  *MEMORY[0x277D85DE8];
  v3 = v27;

  return v3;
}

+ (void)saveMinimalCToLMapForModelId:(id)a3 usingMapData:(id)a4 andPurchases:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v21 = objc_alloc(MEMORY[0x277CBEB38]);
  v43 = [v21 initWithCapacity:{objc_msgSend(v44, "count")}];
  v22 = [AMDSimpleHash alloc];
  v42 = -[AMDSimpleHash initWithCapacity:](v22, "initWithCapacity:", [v44 count]);
  memset(__b, 0, sizeof(__b));
  v23 = MEMORY[0x277D82BE0](v44);
  v24 = [v23 countByEnumeratingWithState:__b objects:v52 count:16];
  if (v24)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v24;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(v23);
      }

      v41 = *(__b[1] + 8 * v17);
      if (([v42 addForKey:objc_msgSend(v41 theValue:{"longLongValue"), 1}] & 1) == 0)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v51, v41);
          _os_log_error_impl(&dword_240CB9000, log, type, "FastHash: could not save addamId %@", v51, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [v23 countByEnumeratingWithState:__b objects:v52 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v23);
  v13 = v45;
  v5 = v45;
  v37 = [v13 bytes];
  v36 = 0;
  v35 = *v37;
  v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_4_0(v50, [v44 count], v35);
    _os_log_debug_impl(&dword_240CB9000, v34, v33, "SaveMinimalMap: mapping %lu values, remap from binary data (%d entries)", v50, 0x12u);
  }

  objc_storeStrong(&v34, 0);
  ++v37;
  v32 = 0;
  v31 = 0;
  for (i = 0; i < v35; ++i)
  {
    v36 = v37++;
    v31 = *v37;
    v37 += 2;
    if ([v42 getValueForKey:v31 into:&v32])
    {
      v9 = v43;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v36];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
      v10 = [v11 stringValue];
      [v9 setObject:v12 forKey:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
    }
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"__AAPS_CONTENT_TOLOGICAL_ID_MAP_", location[0]];
  v28 = 0;
  v48 = v29;
  v49 = v43;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v27 = v28;
  v6 = [AMDTasteProfile saveTasteProfileEntriesFromDict:"saveTasteProfileEntriesFromDict:inDomain:forSource:error:" inDomain:? forSource:? error:?];
  objc_storeStrong(&v28, v27);
  MEMORY[0x277D82BD8](v8);
  if (v28)
  {
    v7 = [v28 localizedDescription];
    [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved minimal map for modelId '%@': %lu of %lu values", location[0], objc_msgSend(v43, "count"), objc_msgSend(v44, "count")];
    v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v47, v26);
      _os_log_impl(&dword_240CB9000, v25, OS_LOG_TYPE_INFO, "%@", v47, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    [AMDFrameworkMetrics log:v26 withKey:@"logicalMapSave" atVerbosity:0];
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)refreshCToLMaps
{
  v65 = *MEMORY[0x277D85DE8];
  v60 = a1;
  v59[1] = a2;
  v59[0] = 0;
  v57 = 0;
  v30 = [AMDTasteProfile getPurchasedAppsSet:&v57];
  objc_storeStrong(v59, v57);
  v58 = v30;
  if ([v30 count])
  {
    v51 = v59[0];
    v27 = [AMDModel fetchAll:&v51];
    objc_storeStrong(v59, v51);
    v52 = v27;
    if (v59[0])
    {
      v50 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v49 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v26 = [v59[0] localizedDescription];
        __os_log_helper_16_2_1_8_64(v64, v26);
        _os_log_error_impl(&dword_240CB9000, v50, v49, "Error fetching models' info: '%@'", v64, 0xCu);
        MEMORY[0x277D82BD8](v26);
      }

      objc_storeStrong(&v50, 0);
      v53 = 1;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v52);
      v25 = [obj countByEnumeratingWithState:__b objects:v63 count:16];
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
            objc_enumerationMutation(obj);
          }

          v48 = *(__b[1] + 8 * v22);
          v46 = [v48 objectForKey:0x2852A8E08];
          v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"RefreshCToL__%@", v46];
          [AMDPerf startMonitoringEvent:v45];
          v44 = [v48 objectForKey:0x2852AAF08];
          v19 = [v44 stringByAppendingPathComponent:@"model_metadata"];
          v43 = [v19 stringByAppendingPathExtension:@"json"];
          MEMORY[0x277D82BD8](v19);
          v42 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v43];
          if (v42)
          {
            v2 = [AMDModelMetadata alloc];
            v37 = v59[0];
            v16 = [(AMDModelMetadata *)v2 initWithMetadataJSON:v42 error:&v37];
            objc_storeStrong(v59, v37);
            v38 = v16;
            if (!v59[0] && v38)
            {
              v11 = [AMDModelAssets alloc];
              v10 = v44;
              v13 = [v38 getAssetsMetadata];
              v32 = v59[0];
              v12 = [AMDModelAssets initFromDir:v11 andMetadata:"initFromDir:andMetadata:useBinaryInputMap:useBinaryOutputMap:withModelId:isInference:error:" useBinaryInputMap:v10 useBinaryOutputMap:&v32 withModelId:? isInference:? error:?];
              objc_storeStrong(v59, v32);
              v33 = v12;
              MEMORY[0x277D82BD8](v13);
              if (v59[0])
              {
                v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v8 = v31;
                  v7 = v44;
                  v9 = [v59[0] localizedDescription];
                  __os_log_helper_16_2_2_8_64_8_64(v61, v7, v9);
                  _os_log_error_impl(&dword_240CB9000, v8, OS_LOG_TYPE_ERROR, "Error loading assets from %@: %@", v61, 0x16u);
                  MEMORY[0x277D82BD8](v9);
                }

                objc_storeStrong(&v31, 0);
                objc_storeStrong(v59, 0);
                v53 = 3;
              }

              else
              {
                v6 = [v33 getContentToLogicalMap];
                MEMORY[0x277D82BD8](v6);
                if (v6)
                {
                  v4 = v60;
                  v3 = v46;
                  v5 = [v33 getContentToLogicalMap];
                  [v4 saveMinimalCToLMapForModelId:v3 usingMapData:? andPurchases:?];
                  MEMORY[0x277D82BD8](v5);
                  [AMDPerf endMonitoringEvent:v45];
                  v53 = 0;
                }

                else
                {
                  v53 = 3;
                }
              }

              objc_storeStrong(&v33, 0);
            }

            else
            {
              v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v35 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v14 = v36;
                v15 = v35;
                __os_log_helper_16_0_0(v34);
                _os_log_error_impl(&dword_240CB9000, v14, v15, "Error initializing modelMetadata", v34, 2u);
              }

              objc_storeStrong(&v36, 0);
              objc_storeStrong(v59, 0);
              v53 = 3;
            }

            objc_storeStrong(&v38, 0);
          }

          else
          {
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"No metadata for modelId '%@'!", v46];
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v39 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v17 = oslog;
              v18 = v39;
              __os_log_helper_16_2_1_8_64(v62, v41);
              _os_log_error_impl(&dword_240CB9000, v17, v18, "%@", v62, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v53 = 3;
            objc_storeStrong(&v41, 0);
          }

          objc_storeStrong(&v42, 0);
          objc_storeStrong(&v43, 0);
          objc_storeStrong(&v44, 0);
          objc_storeStrong(&v45, 0);
          objc_storeStrong(&v46, 0);
          ++v22;
          if (v20 + 1 >= v23)
          {
            v22 = 0;
            v23 = [obj countByEnumeratingWithState:__b objects:v63 count:16];
            if (!v23)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](obj);
      v53 = 0;
    }

    objc_storeStrong(&v52, 0);
  }

  else
  {
    v56 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      log = v56;
      v29 = type;
      __os_log_helper_16_0_0(v54);
      _os_log_impl(&dword_240CB9000, log, v29, "No purchases to map to logicalIds", v54, 2u);
    }

    objc_storeStrong(&v56, 0);
    v53 = 1;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(v59, 0);
  *MEMORY[0x277D85DE8];
}

@end
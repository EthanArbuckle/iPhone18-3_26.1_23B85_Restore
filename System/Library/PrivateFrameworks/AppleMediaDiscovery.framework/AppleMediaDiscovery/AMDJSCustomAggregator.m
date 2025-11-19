@interface AMDJSCustomAggregator
+ (id)aggregateUsing:(id)a3 forUserId:(id)a4 andDomain:(id)a5 error:(id *)a6;
+ (id)runBatchedSQLDescriptorsUsing:(id)a3 error:(id *)a4;
+ (id)runCustomAggregation:(id)a3 error:(id *)a4;
@end

@implementation AMDJSCustomAggregator

+ (id)runCustomAggregation:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v26 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  *a4 = 0;
  [AMDPerf startMonitoringEvent:@"runCustomAggregator"];
  v23 = [location[0] objectForKey:0x2852A86A8];
  v22 = [location[0] objectForKey:0x2852AB2A8];
  if (v23 && v22)
  {
    v20 = [location[0] objectForKey:0x2852A8408];
    v19 = [location[0] objectForKey:0x2852B1988];
    if (v20 || v19)
    {
      v18 = 0;
      if (v19)
      {
        v6 = [v26 aggregateUsing:v19 forUserId:v22 andDomain:v23 error:v24];
        v7 = v18;
        v18 = v6;
        MEMORY[0x277D82BD8](v7);
      }

      else
      {
        v8 = [AMDTasteProfile getFeatureValueWithName:v20 inDomain:v23 error:v24];
        v9 = v18;
        v18 = v8;
        MEMORY[0x277D82BD8](v9);
        if (*v24 || !v18)
        {
          v10 = [AMDSQLite getFeatureValueWithName:v20 inDomain:v23 withColumnName:0 skipRowset:0 error:v24];
          v11 = v18;
          v18 = v10;
          MEMORY[0x277D82BD8](v11);
        }
      }

      if (*v24)
      {
        v27 = 0;
        v21 = 1;
      }

      else
      {
        [AMDPerf endMonitoringEvent:@"runCustomAggregator"];
        v28 = @"featureData";
        if (v18)
        {
          v14 = v18;
        }

        else
        {
          v14 = MEMORY[0x277CBEBF8];
        }

        v29[0] = v14;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v21 = 1;
      }

      objc_storeStrong(&v18, 0);
    }

    else
    {
      v15 = [AMDError allocError:15 withMessage:@"missing feature name and feature descriptor"];
      v5 = v15;
      *v24 = v15;
      v27 = 0;
      v21 = 1;
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v16 = [AMDError allocError:15 withMessage:@"domain or userId missing"];
    v4 = v16;
    *v24 = v16;
    v27 = 0;
    v21 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v12 = v27;

  return v12;
}

+ (id)aggregateUsing:(id)a3 forUserId:(id)a4 andDomain:(id)a5 error:(id *)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v35 = a6;
  v34 = [location[0] objectForKey:@"version"];
  v33 = 0;
  if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v34 isEqualToString:AMD_CUSTOM_AGG_VERSION_1] & 1) == 0)
  {
    if ([v34 isEqualToString:AMD_CUSTOM_AGG_VERSION_2])
    {
      v33 = 2;
    }

    else if ([v34 isEqualToString:AMD_CUSTOM_AGG_VERSION_SQLITE_0])
    {
      v33 = 3;
    }
  }

  else
  {
    v33 = 1;
  }

  switch(v33)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v6 = [AMDFeatureDescriptor alloc];
      v32 = [(AMDFeatureDescriptor *)v6 initWithDictionary:location[0] withUserId:v37 featureName:@"dummy"];
      if (v32)
      {
        v39 = [v32 getFeatureData:v35];
      }

      else
      {
        v23 = [AMDError allocError:16 withMessage:@"Invalid V1 descriptor"];
        v7 = v23;
        *v35 = v23;
        v39 = 0;
      }

      v31 = 1;
      objc_storeStrong(&v32, 0);
      break;
    case 2:
      v8 = [AMDFeatureDescriptor alloc];
      v30 = [(AMDFeatureDescriptor *)v8 initWithDictionaryV2:location[0] withUserId:v37 featureName:@"dummy" withDomain:v36];
      if (v30)
      {
        v29 = [v30 getFeatureData:v35];
        if (v29)
        {
          v39 = [v29 objectForKey:0x2852ABCA8];
        }

        else
        {
          v39 = 0;
        }

        v31 = 1;
        objc_storeStrong(&v29, 0);
      }

      else
      {
        v22 = [AMDError allocError:16 withMessage:@"Invalid V2 descriptor"];
        v9 = v22;
        *v35 = v22;
        v39 = 0;
        v31 = 1;
      }

      objc_storeStrong(&v30, 0);
      break;
    case 3:
      v28 = +[AMDSQLite getSharedInstance];
      if ([v28 getDb])
      {
        v20 = [v28 getDataSchema];
        MEMORY[0x277D82BD8](v20);
        if (v20)
        {
          v17 = [AMDFetchDescriptor alloc];
          v16 = location[0];
          v18 = [v28 getDataSchema];
          v27 = [AMDFetchDescriptor initWithDict:v17 usingSchema:"initWithDict:usingSchema:error:" error:v16];
          MEMORY[0x277D82BD8](v18);
          if (*v35)
          {
            v39 = 0;
          }

          else
          {
            v39 = [v28 fetchRows:v27 andPersist:0 error:v35];
          }

          v31 = 1;
          objc_storeStrong(&v27, 0);
        }

        else
        {
          v19 = [AMDError allocError:22 withMessage:@"SQL database does not have a schema available"];
          v11 = v19;
          *v35 = v19;
          v39 = 0;
          v31 = 1;
        }
      }

      else
      {
        v21 = [AMDError allocError:22 withMessage:@"SQL database pointer is nil"];
        v10 = v21;
        *v35 = v21;
        v39 = 0;
        v31 = 1;
      }

      objc_storeStrong(&v28, 0);
      break;
    default:
LABEL_34:
      v15 = [AMDError allocError:15 withMessage:@"Invalid version"];
      v12 = v15;
      *v35 = v15;
      v39 = 0;
      v31 = 1;
      break;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  v13 = v39;

  return v13;
}

+ (id)runBatchedSQLDescriptorsUsing:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = a4;
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = [location[0] objectForKey:AMD_BATCHED_CUSTOM_AGG_DICT];
  if (v45)
  {
    v43 = +[AMDSQLite getSharedInstance];
    if ([v43 getDb])
    {
      v29 = [v43 getDataSchema];
      MEMORY[0x277D82BD8](v29);
      if (v29)
      {
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x277D82BE0](v45);
        v27 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
        if (v27)
        {
          v23 = *__b[2];
          v24 = 0;
          v25 = v27;
          while (1)
          {
            v22 = v24;
            if (*__b[2] != v23)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(__b[1] + 8 * v24);
            v40 = 0;
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            type = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              log = oslog;
              v21 = type;
              __os_log_helper_16_2_1_8_64(v54, v42);
              _os_log_debug_impl(&dword_240CB9000, log, v21, "Running aggregation: %@", v54, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v37 = [v45 objectForKey:v42];
            v17 = [AMDFetchDescriptor alloc];
            v16 = v37;
            v19 = [v43 getDataSchema];
            v35 = v40;
            v18 = [AMDFetchDescriptor initWithDict:v17 usingSchema:"initWithDict:usingSchema:error:" error:v16];
            objc_storeStrong(&v40, v35);
            v36 = v18;
            MEMORY[0x277D82BD8](v19);
            if (v40)
            {
              v13 = v46;
              v52 = @"error";
              v15 = [v40 localizedDescription];
              v53 = v15;
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              [v13 setValue:? forKey:?];
              MEMORY[0x277D82BD8](v14);
              MEMORY[0x277D82BD8](v15);
              v44 = 3;
            }

            else
            {
              v33 = 0;
              v12 = [v43 fetchRows:v36 andPersist:0 error:&v33];
              objc_storeStrong(&v40, v33);
              v34 = v12;
              if (v40)
              {
                v9 = v46;
                v50 = @"error";
                v11 = [v40 localizedDescription];
                v51 = v11;
                v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
                [v9 setValue:? forKey:?];
                MEMORY[0x277D82BD8](v10);
                MEMORY[0x277D82BD8](v11);
                v44 = 3;
              }

              else
              {
                [v46 setObject:v34 forKey:v42];
                v44 = 0;
              }

              objc_storeStrong(&v34, 0);
            }

            objc_storeStrong(&v36, 0);
            objc_storeStrong(&v37, 0);
            objc_storeStrong(&v40, 0);
            ++v24;
            if (v22 + 1 >= v25)
            {
              v24 = 0;
              v25 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
              if (!v25)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](obj);
        v49 = MEMORY[0x277D82BE0](v46);
        v44 = 1;
      }

      else
      {
        v28 = [AMDError allocError:22 withMessage:@"SQL database does not have a schema available"];
        v6 = v28;
        *v47 = v28;
        v49 = 0;
        v44 = 1;
      }
    }

    else
    {
      v30 = [AMDError allocError:22 withMessage:@"SQL database pointer is nil"];
      v5 = v30;
      *v47 = v30;
      v49 = 0;
      v44 = 1;
    }

    objc_storeStrong(&v43, 0);
  }

  else
  {
    v31 = [AMDError allocError:22 withMessage:@"batchedAggregatorDict not passed in payload"];
    v4 = v31;
    *v47 = v31;
    v49 = 0;
    v44 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v49;

  return v7;
}

@end
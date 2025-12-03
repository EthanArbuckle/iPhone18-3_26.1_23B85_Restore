@interface AMDSplunkLogger
+ (BOOL)checkSchemaValidity:(id)validity;
+ (id)logEvents:(id)events toTopic:(id)topic withSchema:(id)schema;
+ (id)logPayload:(id)payload error:(id *)error;
+ (void)flushEvents:(id)events;
@end

@implementation AMDSplunkLogger

+ (void)flushEvents:(id)events
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  v3 = [objc_alloc(MEMORY[0x277CEE598]) initWithContainerID:@"com.apple.AppleMediaServices" bag:0];
  [v3 enqueueEvents:location[0]];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

+ (BOOL)checkSchemaValidity:(id)validity
{
  v17 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validity);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [location[0] objectForKey:v13];
      if ([v11 isEqualToString:@"string"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"number") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"dictionary") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"array"))
      {
        v10 = 0;
      }

      else
      {
        v15 = 0;
        v10 = 1;
      }

      objc_storeStrong(&v11, 0);
      if (v10)
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v10)
  {
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

+ (id)logEvents:(id)events toTopic:(id)topic withSchema:(id)schema
{
  v64 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  v56 = 0;
  objc_storeStrong(&v56, topic);
  v55 = 0;
  objc_storeStrong(&v55, schema);
  v54 = [location[0] count];
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0;
  v51 = 0;
  memset(__b, 0, sizeof(__b));
  v37 = MEMORY[0x277D82BE0](location[0]);
  v38 = [v37 countByEnumeratingWithState:__b objects:v63 count:16];
  if (v38)
  {
    v32 = *__b[2];
    v33 = 0;
    v34 = v38;
    while (1)
    {
      v31 = v33;
      if (*__b[2] != v32)
      {
        objc_enumerationMutation(v37);
      }

      v50 = *(__b[1] + 8 * v33);
      v48 = 0;
      memset(v46, 0, sizeof(v46));
      v29 = MEMORY[0x277D82BE0](v55);
      v30 = [v29 countByEnumeratingWithState:v46 objects:v62 count:16];
      if (v30)
      {
        v26 = *v46[2];
        v27 = 0;
        v28 = v30;
        while (1)
        {
          v25 = v27;
          if (*v46[2] != v26)
          {
            objc_enumerationMutation(v29);
          }

          v47 = *(v46[1] + 8 * v27);
          v45 = [v55 objectForKey:v47];
          v44 = [v50 objectForKey:v47];
          if (v44)
          {
            if ([v45 isEqualToString:@"string"] & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              if ([v45 isEqualToString:@"number"] & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                if ([v45 isEqualToString:@"dictionary"] & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  if ([v45 isEqualToString:@"array"] & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    v22 = MEMORY[0x277CCAAA0];
                    v60 = v47;
                    v61 = v44;
                    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                    v24 = [v22 isValidJSONObject:?];
                    MEMORY[0x277D82BD8](v23);
                    if (v24)
                    {
                      v43 = 0;
                    }

                    else
                    {
                      v48 = 1;
                      v43 = 4;
                    }
                  }

                  else
                  {
                    v48 = 1;
                    v43 = 4;
                  }
                }

                else
                {
                  v48 = 1;
                  v43 = 4;
                }
              }

              else
              {
                v48 = 1;
                v43 = 4;
              }
            }

            else
            {
              v48 = 1;
              v43 = 4;
            }
          }

          else
          {
            v48 = 1;
            v43 = 4;
          }

          objc_storeStrong(&v44, 0);
          objc_storeStrong(&v45, 0);
          if (v43)
          {
            break;
          }

          ++v27;
          if (v25 + 1 >= v28)
          {
            v27 = 0;
            v28 = [v29 countByEnumeratingWithState:v46 objects:v62 count:16];
            if (!v28)
            {
              goto LABEL_29;
            }
          }
        }
      }

      else
      {
LABEL_29:
        v43 = 0;
      }

      MEMORY[0x277D82BD8](v29);
      if (v48)
      {
        ++v52;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277CEE5A8]);
        v42 = [v5 initWithTopic:v56];
        memset(v40, 0, sizeof(v40));
        v20 = MEMORY[0x277D82BE0](v55);
        v21 = [v20 countByEnumeratingWithState:v40 objects:v59 count:16];
        if (v21)
        {
          v17 = *v40[2];
          v18 = 0;
          v19 = v21;
          while (1)
          {
            v16 = v18;
            if (*v40[2] != v17)
            {
              objc_enumerationMutation(v20);
            }

            v41 = *(v40[1] + 8 * v18);
            v14 = v42;
            v15 = [v50 objectForKey:v41];
            [v14 setProperty:? forBodyKey:?];
            MEMORY[0x277D82BD8](v15);
            ++v18;
            if (v16 + 1 >= v19)
            {
              v18 = 0;
              v19 = [v20 countByEnumeratingWithState:v40 objects:v59 count:16];
              if (!v19)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v20);
        ++v51;
        [v53 addObject:v42];
        objc_storeStrong(&v42, 0);
      }

      ++v33;
      if (v31 + 1 >= v34)
      {
        v33 = 0;
        v34 = [v37 countByEnumeratingWithState:__b objects:v63 count:16];
        if (!v34)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v37);
  if ([v53 count])
  {
    [selfCopy flushEvents:v53];
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = v39;
  v8 = [MEMORY[0x277CCABB0] numberWithLong:v54];
  [v7 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v8);
  v9 = v39;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v51];
  [v9 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v10);
  v11 = v39;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v52];
  [v11 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v12);
  v13 = MEMORY[0x277D82BE0](v39);
  v43 = 1;
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)logPayload:(id)payload error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  errorCopy = error;
  v31 = [location[0] objectForKey:@"topic"];
  if (v31)
  {
    v26 = [location[0] objectForKey:@"events"];
    if (v26)
    {
      v22 = [location[0] objectForKey:@"schema"];
      if (v22)
      {
        if ([selfCopy checkSchemaValidity:v22])
        {
          v15 = [selfCopy logEvents:v26 toTopic:v31 withSchema:v22];
          [AMDFrameworkMetrics log:v15 withKey:@"AMDSplunkLoggerSummary" atVerbosity:0];
          v35 = MEMORY[0x277D82BE0](v15);
          v27 = 1;
          objc_storeStrong(&v15, 0);
        }

        else
        {
          v18 = MEMORY[0x277D82BE0](@"Invalid Schema provided. Type can only be number, string, dictionary or an array.");
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v16 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v36, v18);
            _os_log_error_impl(&dword_240CB9000, oslog, v16, "%@", v36, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v10 = [AMDError allocError:15 withMessage:v18];
          v7 = v10;
          *errorCopy = v10;
          [AMDFrameworkMetrics log:v18 withKey:@"AMDSplunkLoggerError" atVerbosity:0];
          v35 = 0;
          v27 = 1;
          objc_storeStrong(&v18, 0);
        }
      }

      else
      {
        v21 = MEMORY[0x277D82BE0](@"Missing schema dictionary in splunk logging payload");
        v20 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v19 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v37, v21);
          _os_log_error_impl(&dword_240CB9000, v20, v19, "%@", v37, 0xCu);
        }

        objc_storeStrong(&v20, 0);
        v11 = [AMDError allocError:15 withMessage:v21];
        v6 = v11;
        *errorCopy = v11;
        [AMDFrameworkMetrics log:v21 withKey:@"AMDSplunkLoggerError" atVerbosity:0];
        v35 = 0;
        v27 = 1;
        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v22, 0);
    }

    else
    {
      v25 = MEMORY[0x277D82BE0](@"Missing events array in splunk logging payload");
      v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v38, v25);
        _os_log_error_impl(&dword_240CB9000, v24, v23, "%@", v38, 0xCu);
      }

      objc_storeStrong(&v24, 0);
      v12 = [AMDError allocError:15 withMessage:v25];
      v5 = v12;
      *errorCopy = v12;
      [AMDFrameworkMetrics log:v25 withKey:@"AMDSplunkLoggerError" atVerbosity:0];
      v35 = 0;
      v27 = 1;
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    v30 = MEMORY[0x277D82BE0](@"Missing topic in splunk logging payload");
    v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v39, v30);
      _os_log_error_impl(&dword_240CB9000, v29, v28, "%@", v39, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v13 = [AMDError allocError:15 withMessage:v30];
    v4 = v13;
    *errorCopy = v13;
    [AMDFrameworkMetrics log:v30 withKey:@"AMDSplunkLoggerError" atVerbosity:0];
    v35 = 0;
    v27 = 1;
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v35;

  return v8;
}

@end
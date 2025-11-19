@interface AMDJSAppStoreEventHandler
+ (id)handleAggregatedAppStoreEvent:(id)a3 error:(id *)a4;
@end

@implementation AMDJSAppStoreEventHandler

+ (id)handleAggregatedAppStoreEvent:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = a4;
  v47 = 0;
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = [location[0] objectForKey:@"events"];
  if (v45)
  {
    v43 = [location[0] objectForKey:0x2852AB2A8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = MEMORY[0x277D82BE0](v45);
      v41 = 0;
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v42);
      v29 = [obj countByEnumeratingWithState:__b objects:v53 count:16];
      if (v29)
      {
        v25 = *__b[2];
        v26 = 0;
        v27 = v29;
        while (1)
        {
          v24 = v26;
          if (*__b[2] != v25)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(__b[1] + 8 * v26);
          v38 = [v40 mutableCopy];
          v37 = [v38 objectForKey:0x2852AB308];
          if (v37)
          {
            [v38 removeObjectForKey:0x2852AB308];
            memset(v35, 0, sizeof(v35));
            v22 = MEMORY[0x277D82BE0](v37);
            v23 = [v22 countByEnumeratingWithState:v35 objects:v52 count:16];
            if (v23)
            {
              v19 = *v35[2];
              v20 = 0;
              v21 = v23;
              while (1)
              {
                v18 = v20;
                if (*v35[2] != v19)
                {
                  objc_enumerationMutation(v22);
                }

                v36 = *(v35[1] + 8 * v20);
                v34 = [v38 mutableCopy];
                [v34 setObject:v36 forKey:0x2852AB308];
                v47 += [AMDAppStoreEvent saveEvent:v34 forUser:v43 error:v48];
                if (*v48 && !v41)
                {
                  v16 = MEMORY[0x277CCACA8];
                  v17 = [*v48 localizedDescription];
                  v8 = [v16 stringWithFormat:@"Error saving an event: %@", v17];
                  v9 = v41;
                  v41 = v8;
                  MEMORY[0x277D82BD8](v9);
                  MEMORY[0x277D82BD8](v17);
                }

                *v48 = 0;
                objc_storeStrong(&v34, 0);
                ++v20;
                if (v18 + 1 >= v21)
                {
                  v20 = 0;
                  v21 = [v22 countByEnumeratingWithState:v35 objects:v52 count:16];
                  if (!v21)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](v22);
            v44 = 0;
          }

          else
          {
            if (!v41)
            {
              v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incomplete AppStore event. Timestamps are unavailable"];
              v7 = v41;
              v41 = v6;
              MEMORY[0x277D82BD8](v7);
            }

            v44 = 3;
          }

          objc_storeStrong(&v37, 0);
          objc_storeStrong(&v38, 0);
          ++v26;
          if (v24 + 1 >= v27)
          {
            v26 = 0;
            v27 = [obj countByEnumeratingWithState:__b objects:v53 count:16];
            if (!v27)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](obj);
      if (v41)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v51, v41);
          _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "%@", v51, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v15 = [AMDError allocError:15 withMessage:v41];
        v10 = v15;
        *v48 = v15;
        v50 = 0;
        v44 = 1;
      }

      else
      {
        v13 = v46;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v47];
        [v13 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v14);
        v50 = MEMORY[0x277D82BE0](v46);
        v44 = 1;
      }

      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
    }

    else
    {
      v30 = [AMDError allocError:0 withMessage:@"Not a list of AppStore events"];
      v5 = v30;
      *v48 = v30;
      v50 = 0;
      v44 = 1;
    }

    objc_storeStrong(&v43, 0);
  }

  else
  {
    v31 = [AMDError allocError:0 withMessage:@"Array of appstore events is not present."];
    v4 = v31;
    *v48 = v31;
    v50 = 0;
    v44 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v11 = v50;

  return v11;
}

@end
@interface AMDBiomeTest
+ (id)test:(id)test;
@end

@implementation AMDBiomeTest

+ (id)test:(id)test
{
  v65 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, test);
  v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v29 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
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

      v56 = *(__b[1] + 8 * v26);
      ++v57;
      v54 = 0;
      v53 = [v56 objectForKey:@"action"];
      v52 = [v56 objectForKey:@"table"];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v23 = type;
        __os_log_helper_16_2_2_8_64_8_64(v63, v53, v52);
        _os_log_debug_impl(&dword_240CB9000, log, v23, "=== Action : %@, table: %@", v63, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u: %@(%@)", v57, v53, v52];
      if ([v53 isEqualToString:@"fetchRecords"])
      {
        v47 = v54;
        v21 = [AMDStorage fetchRecordsFrom:v52 error:&v47];
        objc_storeStrong(&v54, v47);
        v48 = v21;
        if (v54)
        {
          v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v45 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v18 = v46;
            v19 = v45;
            localizedDescription = [v54 localizedDescription];
            __os_log_helper_16_2_1_8_64(v62, localizedDescription);
            _os_log_error_impl(&dword_240CB9000, v18, v19, "Fetch error: %@", v62, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription);
          }

          objc_storeStrong(&v46, 0);
          v44 = 3;
        }

        else
        {
          [v58 setObject:v48 forKey:v49];
          v44 = 0;
        }

        objc_storeStrong(&v48, 0);
        if (v44)
        {
          goto LABEL_34;
        }
      }

      else if ([v53 isEqualToString:@"insertRecords"])
      {
        v43 = [v56 objectForKey:@"records"];
        v41 = v54;
        v17 = [AMDStorage saveRecords:v43 inTable:v52 error:&v41];
        objc_storeStrong(&v54, v41);
        v42 = v17;
        if (v54)
        {
          v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v39 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v14 = v40;
            v15 = v39;
            localizedDescription2 = [v54 localizedDescription];
            __os_log_helper_16_2_1_8_64(v61, localizedDescription2);
            _os_log_error_impl(&dword_240CB9000, v14, v15, "Insert error: %@", v61, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription2);
          }

          objc_storeStrong(&v40, 0);
          v44 = 3;
        }

        else
        {
          v12 = v58;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v42];
          [v12 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v13);
          v44 = 0;
        }

        objc_storeStrong(&v43, 0);
        if (v44)
        {
          goto LABEL_34;
        }
      }

      else if ([v53 isEqualToString:@"deleteRecords"])
      {
        v38 = [v56 objectForKey:@"predicates"];
        v36 = v54;
        v11 = [AMDStorage deleteRecordsFrom:v52 usingPredicates:v38 error:&v36];
        objc_storeStrong(&v54, v36);
        v37 = v11;
        if (v54)
        {
          v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v34 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v8 = v35;
            v9 = v34;
            localizedDescription3 = [v54 localizedDescription];
            __os_log_helper_16_2_1_8_64(v60, localizedDescription3);
            _os_log_error_impl(&dword_240CB9000, v8, v9, "Delete error: %@", v60, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription3);
          }

          objc_storeStrong(&v35, 0);
          v44 = 3;
        }

        else
        {
          v6 = v58;
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
          [v6 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v7);
          v44 = 0;
        }

        objc_storeStrong(&v38, 0);
        if (v44)
        {
          goto LABEL_34;
        }
      }

      else if ([v53 isEqualToString:@"updateTables"])
      {
        v33 = [v56 objectForKey:@"streamNames"];
        v32 = 0;
        v30 = 0;
        v5 = [AMDBiomeIntegration queryBiomeFor:v33 withError:&v30];
        objc_storeStrong(&v32, v30);
        v31 = v5;
        [v58 setObject:v5 forKey:v49];
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
      }

      v44 = 0;
LABEL_34:
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v53, 0);
      objc_storeStrong(&v54, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](v58);
  v44 = 1;
  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end
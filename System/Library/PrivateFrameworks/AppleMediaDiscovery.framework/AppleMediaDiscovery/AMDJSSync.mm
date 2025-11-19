@interface AMDJSSync
+ (id)dailyDataUpdate:(id)a3 forStoreFrontId:(unsigned int)a4 error:(id *)a5;
+ (id)runSync:(id)a3 withCallUUID:(id)a4 error:(id *)a5;
+ (id)runSyncForUnsignedUser:(id)a3 withCallUUID:(id)a4 error:(id *)a5;
+ (id)updateAMDSQLSchema:(id)a3 error:(id *)a4;
+ (void)updateArcadeUsageFeature:(id *)a3;
@end

@implementation AMDJSSync

+ (id)dailyDataUpdate:(id)a3 forStoreFrontId:(unsigned int)a4 error:(id *)a5
{
  v85[1] = *MEMORY[0x277D85DE8];
  v74 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v72 = a4;
  v71 = a5;
  *a5 = 0;
  v70 = [location[0] objectForKey:0x2852A86A8];
  v69 = [location[0] objectForKey:@"supportedDomains"];
  if (!v69)
  {
    v85[0] = v70;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
    MEMORY[0x277D82BD8](0);
  }

  v68 = [location[0] objectForKey:0x2852AB2A8];
  if (v70 && v68)
  {
    v66 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_4_0_8_64(v84, v72, v68);
      _os_log_impl(&dword_240CB9000, v66, type, "Running daily data update for store: %u, dsId:%@", v84, 0x12u);
    }

    objc_storeStrong(&v66, 0);
    [AMDPerf startMonitoringEvent:@"dailyDataUpdate"];
    v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v63 = 365;
    v41 = [location[0] objectForKey:0x2852B1968];
    MEMORY[0x277D82BD8](v41);
    if (v41)
    {
      v40 = [location[0] objectForKey:0x2852B1968];
      v63 = [v40 unsignedLongLongValue];
      MEMORY[0x277D82BD8](v40);
    }

    v62 = [AMDAppEvent deleteAppEventsOlderThan:v63 forEventType:0 withPlatform:0 error:v71];
    if (*v71)
    {
      v61 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v60 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v83, *v71);
        _os_log_error_impl(&dword_240CB9000, v61, v60, "error deletig events: %@", v83, 0xCu);
      }

      objc_storeStrong(&v61, 0);
      v37 = v64;
      v36 = MEMORY[0x277CCACA8];
      v39 = [*v71 localizedDescription];
      v38 = [v36 stringWithFormat:@"error: %@", v39];
      [v37 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      *v71 = 0;
    }

    else
    {
      [v64 setObject:v62 forKey:@"deletedOldEvents"];
    }

    v63 = 30;
    v35 = [location[0] objectForKey:0x2852B1C48];
    MEMORY[0x277D82BD8](v35);
    if (v35)
    {
      v34 = [location[0] objectForKey:0x2852B1C48];
      v63 = [v34 unsignedLongLongValue];
      MEMORY[0x277D82BD8](v34);
    }

    v59 = [AMDAppStoreEvent deleteEventsOlderThan:v63 error:v71];
    if (*v71)
    {
      v58 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v57 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v82, *v71);
        _os_log_error_impl(&dword_240CB9000, v58, v57, "error deleting appstore events: %@", v82, 0xCu);
      }

      objc_storeStrong(&v58, 0);
      v31 = v64;
      v30 = MEMORY[0x277CCACA8];
      v33 = [*v71 localizedDescription];
      v32 = [v30 stringWithFormat:@"error: %@", v33];
      [v31 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      *v71 = 0;
    }

    else
    {
      [v64 setObject:v59 forKey:@"deletedOldAppStoreEvents"];
    }

    v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v69);
    v29 = [obj countByEnumeratingWithState:__b objects:v81 count:16];
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

        v55 = *(__b[1] + 8 * v26);
        if ([v55 isEqualToString:@"apps"])
        {
          v53 = [AMDTasteProfile refreshAppInformationTasteProfile:v71];
          if (*v71)
          {
            v21 = v56;
            v20 = MEMORY[0x277CCACA8];
            v23 = [*v71 localizedDescription];
            v22 = [v20 stringWithFormat:@"error: %@", v23];
            [v21 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v22);
            MEMORY[0x277D82BD8](v23);
            *v71 = 0;
          }

          else
          {
            [v56 setObject:v53 forKey:@"appInformationTPRefresh"];
          }

          objc_storeStrong(&v53, 0);
        }

        v52 = [AMDTasteProfile refreshAggregationTasteProfileForDomain:v55 forUser:v68 andStoreFrontId:v72 error:v71];
        if (*v71)
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v50 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v19 = oslog;
            __os_log_helper_16_2_2_8_64_8_64(v80, *v71, v55);
            _os_log_error_impl(&dword_240CB9000, v19, v50, "error refreshing on-device taste profile: %@ for domain: %@", v80, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          v16 = v56;
          v15 = MEMORY[0x277CCACA8];
          v18 = [*v71 localizedDescription];
          v17 = [v15 stringWithFormat:@"error: %@", v18];
          [v16 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](v18);
          *v71 = 0;
        }

        else
        {
          [v56 setObject:v52 forKey:v55];
        }

        objc_storeStrong(&v52, 0);
        ++v26;
        if (v24 + 1 >= v27)
        {
          v26 = 0;
          v27 = [obj countByEnumeratingWithState:__b objects:v81 count:16];
          if (!v27)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    [v64 setObject:v56 forKey:@"savedAggregatedTPFeatures"];
    v49 = [AMDAppSegment refreshSegmentsForAllTreatmentsForUser:v68 error:v71];
    if (*v71)
    {
      v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v47 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v14 = [*v71 localizedDescription];
        __os_log_helper_16_2_1_8_64(v79, v14);
        _os_log_error_impl(&dword_240CB9000, v48, v47, "error updating in-app segment data: %@", v79, 0xCu);
        MEMORY[0x277D82BD8](v14);
      }

      objc_storeStrong(&v48, 0);
      v11 = v64;
      v10 = MEMORY[0x277CCACA8];
      v13 = [*v71 localizedDescription];
      v12 = [v10 stringWithFormat:@"error: %@", v13];
      [v11 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      *v71 = 0;
    }

    else
    {
      if (v49)
      {
        objc_storeStrong(&v49, v49);
      }

      else
      {
        objc_storeStrong(&v49, MEMORY[0x277CBEC10]);
      }

      [v64 setObject:v49 forKey:@"refreshSegments"];
    }

    [v74 updateArcadeUsageFeature:v71];
    if (*v71)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [*v71 localizedDescription];
      v46 = [v8 stringWithFormat:@"Arcade Usage feature could not be updated. Error: %@", v9];
      MEMORY[0x277D82BD8](v9);
      v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v78, v46);
        _os_log_error_impl(&dword_240CB9000, v45, OS_LOG_TYPE_ERROR, "%@", v78, 0xCu);
      }

      objc_storeStrong(&v45, 0);
      [v64 setObject:v46 forKey:@"arcadeUsageUpdateError"];
      objc_storeStrong(&v46, 0);
    }

    [AMDPerf endMonitoringEvent:@"dailyDataUpdate"];
    *v71 = 0;
    v76 = @"summary";
    v77 = v64;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v67 = 1;
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v64, 0);
  }

  else
  {
    v42 = [AMDError allocError:15 withMessage:@"domain or userId missing"];
    v5 = v42;
    *v71 = v42;
    v75 = 0;
    v67 = 1;
  }

  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v75;

  return v6;
}

+ (id)runSyncForUnsignedUser:(id)a3 withCallUUID:(id)a4 error:(id *)a5
{
  v16 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  +[AMDMiscHelpers setAppStoreDirAttributes];
  v11 = [location[0] objectForKey:0x2852B20E8];
  if (v11)
  {
    v10 = [v16 updateAMDSQLSchema:v11 error:v13];
    if (*v13)
    {
      v17 = 0;
      v9 = 1;
    }

    else
    {
      [v12 setObject:v10 forKey:@"sqlSchemaUpdateSummary"];
      v9 = 0;
    }

    objc_storeStrong(&v10, 0);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [v12 setObject:@"Missing schema" forKey:@"applySchema"];
  }

  v17 = MEMORY[0x277D82BE0](v12);
LABEL_8:
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v5 = v17;

  return v5;
}

+ (id)runSync:(id)a3 withCallUUID:(id)a4 error:(id *)a5
{
  v114 = *MEMORY[0x277D85DE8];
  v92 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v90 = 0;
  objc_storeStrong(&v90, a4);
  v89 = a5;
  v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
  +[AMDMiscHelpers setAppStoreDirAttributes];
  v87 = [location[0] objectForKey:0x2852B20E8];
  if (v87)
  {
    v86 = 0;
    v84 = 0;
    v43 = [v92 updateAMDSQLSchema:v87 error:&v84];
    objc_storeStrong(&v86, v84);
    v85 = v43;
    if (v86)
    {
      v41 = v88;
      v42 = [v86 localizedDescription];
      [v41 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v42);
    }

    else if (v85)
    {
      [v88 setObject:v85 forKey:@"sqlSchemaUpdateSummary"];
    }

    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
  }

  else
  {
    [v88 setObject:@"No schema" forKey:@"dailyDataUpdate"];
  }

  v40 = [location[0] objectForKey:0x2852B2088];
  v83 = [v40 mutableCopy];
  MEMORY[0x277D82BD8](v40);
  if (v83)
  {
    v81 = [AMDJSConfigProcessor processConfig:v83 withCallUUID:v90 error:v89];
    if (*v89)
    {
      v38 = MEMORY[0x277CCACA8];
      v39 = [*v89 localizedDescription];
      v80 = [v38 stringWithFormat:@"Error processing config: %@", v39];
      MEMORY[0x277D82BD8](v39);
      v79 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v113, v80);
        _os_log_impl(&dword_240CB9000, v79, type, "%@", v113, 0xCu);
      }

      objc_storeStrong(&v79, 0);
      v36 = v88;
      v111 = @"error";
      v112 = v80;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      [v36 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v37);
      *v89 = 0;
      objc_storeStrong(&v80, 0);
    }

    else
    {
      [v88 setObject:v81 forKey:@"processConfig"];
    }

    v77 = [location[0] objectForKey:0x2852B20C8];
    v76 = [location[0] objectForKey:0x2852B20A8];
    if (v76)
    {
      v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v74 = MEMORY[0x277D82BE0](v76);
        memset(__b, 0, sizeof(__b));
        v34 = MEMORY[0x277D82BE0](v74);
        v35 = [v34 countByEnumeratingWithState:__b objects:v110 count:16];
        if (v35)
        {
          v31 = *__b[2];
          v32 = 0;
          v33 = v35;
          while (1)
          {
            v30 = v32;
            if (*__b[2] != v31)
            {
              objc_enumerationMutation(v34);
            }

            v73 = *(__b[1] + 8 * v32);
            v71 = [v73 objectForKey:0x2852A86A8];
            if (v71)
            {
              v67 = [AMDTasteProfile refreshServerTasteProfile:v73 error:v89];
              if (*v89)
              {
                v26 = MEMORY[0x277CCACA8];
                v27 = [*v89 localizedDescription];
                v66 = [v26 stringWithFormat:@"Error refreshing server TP: %@", v27];
                MEMORY[0x277D82BD8](v27);
                v65 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v64 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                {
                  v25 = v65;
                  __os_log_helper_16_2_1_8_64(v109, v66);
                  _os_log_impl(&dword_240CB9000, v25, v64, "%@", v109, 0xCu);
                }

                objc_storeStrong(&v65, 0);
                v23 = v75;
                v107 = @"error";
                v108 = v66;
                v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                [v23 setObject:? forKey:?];
                MEMORY[0x277D82BD8](v24);
                *v89 = 0;
                objc_storeStrong(&v66, 0);
              }

              else
              {
                [v75 setObject:v67 forKey:v71];
              }

              objc_storeStrong(&v67, 0);
              v82 = 0;
            }

            else
            {
              v70 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v69 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v28 = v70;
                v29 = v69;
                __os_log_helper_16_0_0(v68);
                _os_log_error_impl(&dword_240CB9000, v28, v29, "Domain missing in Server TP payload", v68, 2u);
              }

              objc_storeStrong(&v70, 0);
              v82 = 3;
            }

            objc_storeStrong(&v71, 0);
            ++v32;
            if (v30 + 1 >= v33)
            {
              v32 = 0;
              v33 = [v34 countByEnumeratingWithState:__b objects:v110 count:16];
              if (!v33)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v34);
        [v88 setObject:v75 forKey:@"refreshServerTP"];
        objc_storeStrong(&v74, 0);
      }

      else
      {
        v63 = MEMORY[0x277D82BE0](@"Server TP payload data is not an array");
        v62 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v61 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v106, v63);
          _os_log_impl(&dword_240CB9000, v62, v61, "%@", v106, 0xCu);
        }

        objc_storeStrong(&v62, 0);
        v21 = v88;
        v104 = @"error";
        v105 = v63;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        [v21 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v22);
        objc_storeStrong(&v63, 0);
      }

      objc_storeStrong(&v75, 0);
    }

    else if (v77)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = MEMORY[0x277D82BE0](v77);
        v59 = [AMDTasteProfile refreshServerTasteProfile:v60 error:v89];
        if (*v89)
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = [*v89 localizedDescription];
          v58 = [v19 stringWithFormat:@"Error refreshing server TP: %@", v20];
          MEMORY[0x277D82BD8](v20);
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v56 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_64(v103, v58);
            _os_log_impl(&dword_240CB9000, oslog, v56, "%@", v103, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v17 = v88;
          v101 = @"error";
          v102 = v58;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
          [v17 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v18);
          *v89 = 0;
          objc_storeStrong(&v58, 0);
        }

        else
        {
          [v88 setObject:v59 forKey:@"refreshServerTP"];
        }

        objc_storeStrong(&v59, 0);
        objc_storeStrong(&v60, 0);
      }

      else
      {
        v55 = MEMORY[0x277D82BE0](@"Server TP payload is not a dictionary");
        v54 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v53 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v100, v55);
          _os_log_impl(&dword_240CB9000, v54, v53, "%@", v100, 0xCu);
        }

        objc_storeStrong(&v54, 0);
        v15 = v88;
        v98 = @"error";
        v99 = v55;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        [v15 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v16);
        objc_storeStrong(&v55, 0);
      }
    }

    else
    {
      v52 = MEMORY[0x277D82BE0](@"Server taste profile absent in Sync payload");
      v51 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v97, v52);
        _os_log_error_impl(&dword_240CB9000, v51, v50, "%@", v97, 0xCu);
      }

      objc_storeStrong(&v51, 0);
      [AMDFrameworkMetrics log:v52 withKey:@"ServerTasteProfileStatus" atVerbosity:0];
      objc_storeStrong(&v52, 0);
    }

    v49 = [location[0] objectForKey:0x2852B1B48];
    if (v49)
    {
      v13 = v92;
      v14 = [location[0] objectForKey:0x2852AB2C8];
      v48 = [v13 dailyDataUpdate:v49 forStoreFrontId:objc_msgSend(v14 error:{"intValue"), v89}];
      MEMORY[0x277D82BD8](v14);
      if (*v89)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [*v89 localizedDescription];
        v47 = [v11 stringWithFormat:@"Error performing daily data update: %@", v12];
        MEMORY[0x277D82BD8](v12);
        v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v96, v47);
          _os_log_impl(&dword_240CB9000, v46, OS_LOG_TYPE_INFO, "%@", v96, 0xCu);
        }

        objc_storeStrong(&v46, 0);
        v9 = v88;
        v94 = @"error";
        v95 = v47;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        [v9 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v10);
        *v89 = 0;
        objc_storeStrong(&v47, 0);
      }

      else
      {
        [v88 setObject:v48 forKey:@"dailyDataUpdate"];
      }

      v7 = v88;
      v8 = [AMDSQLite updateData:location[0]];
      [v7 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v48, 0);
    }

    else
    {
      [v88 setObject:&unk_2852BC190 forKey:@"dailyDataUpdate"];
    }

    [AMDFrameworkMetrics log:v88 withKey:@"syncSummary" atVerbosity:0];
    v93 = MEMORY[0x277D82BE0](v88);
    v82 = 1;
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v81, 0);
  }

  else
  {
    [v88 setObject:@"Missing config" forKey:@"processConfig"];
    [AMDFrameworkMetrics log:v88 withKey:@"syncSummary" atVerbosity:0];
    v93 = MEMORY[0x277D82BE0](v88);
    v82 = 1;
  }

  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v93;

  return v5;
}

+ (void)updateArcadeUsageFeature:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0;
  v21 = 0;
  v20 = [AMDTasteProfile getPurchasedArcadeGamesSet:a3];
  if (!*v23)
  {
    v3 = [AMDAppEvent fetchEvents:v23];
    v4 = v21;
    v21 = v3;
    MEMORY[0x277D82BD8](v4);
  }

  if (!*v23 && v20 && [v20 count] && v21 && objc_msgSend(v21, "count"))
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v21);
    v12 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
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
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v9);
        v17 = [v19 objectForKey:@"type"];
        location = [v19 objectForKey:0x2852A8B68];
        if ([v17 intValue] == 3 && (objc_msgSend(v20, "containsObject:", location) & 1) != 0)
        {
          v22 = 1;
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v17, 0);
        if (v15)
        {
          break;
        }

        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v10)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
LABEL_19:
      v15 = 0;
    }

    MEMORY[0x277D82BD8](obj);
  }

  if (v22)
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v14 = MEMORY[0x277D82BE0](v5);
  v26 = @"contains_arcade_plays";
  v27 = v14;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v6 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v13 inDomain:@"apps" forSource:0x2852B1228 error:v23];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)updateAMDSQLSchema:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = +[AMDSQLite getSharedInstance];
  if ([v11 getDb])
  {
    v9 = [v11 updateSchema:location[0] error:v12];
    if (*v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = MEMORY[0x277D82BE0](v9);
    }

    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v7 = [AMDMiscHelpers logAndCreateError:22 errorMessage:@"SQL Database is not usable"];
    v4 = v7;
    *v12 = v7;
    v14 = 0;
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v5 = v14;

  return v5;
}

@end
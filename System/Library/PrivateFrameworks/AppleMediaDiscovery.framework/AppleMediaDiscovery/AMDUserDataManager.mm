@interface AMDUserDataManager
+ (id)clearDataForUser:(id)user error:(id *)error;
+ (id)deleteAllUserData:(id *)data;
@end

@implementation AMDUserDataManager

+ (id)deleteAllUserData:(id *)data
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v43 = a2;
  dataCopy = data;
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = [AMDAppEvent deleteAllEvents:dataCopy];
  if (*dataCopy)
  {
    v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v38 = 16;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      log = v39;
      type = v38;
      localizedDescription = [*dataCopy localizedDescription];
      v37 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v52, v37);
      _os_log_error_impl(&dword_240CB9000, log, type, "Error deleting previous user's events: %@", v52, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v37, 0);
    }

    objc_storeStrong(&v39, 0);
  }

  else
  {
    v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v35 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v51, v40);
      _os_log_impl(&dword_240CB9000, v36, v35, "Deleted %@ events", v51, 0xCu);
    }

    objc_storeStrong(&v36, 0);
    [v41 setObject:v40 forKey:@"eventsDeleted"];
  }

  v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v33 = 1;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v13 = v34;
    v14 = v33;
    __os_log_helper_16_0_0(v32);
    _os_log_impl(&dword_240CB9000, v13, v14, "Deleting in-app segments data", v32, 2u);
  }

  objc_storeStrong(&v34, 0);
  v31 = [AMDAppSegment deleteAllSegments:dataCopy];
  if (*dataCopy)
  {
    v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v10 = v30;
      v11 = v29;
      localizedDescription2 = [*dataCopy localizedDescription];
      v28 = MEMORY[0x277D82BE0](localizedDescription2);
      __os_log_helper_16_2_1_8_64(v50, v28);
      _os_log_error_impl(&dword_240CB9000, v10, v11, "Error deleting previous user's in-app segments: %@", v50, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription2);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v30, 0);
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v26 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v49, v31);
      _os_log_impl(&dword_240CB9000, oslog, v26, "Deleted %@ in-app segments", v49, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v41 setObject:v31 forKey:@"segmentsDeleted"];
  }

  v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v24 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v8 = v25;
    v9 = v24;
    __os_log_helper_16_0_0(v23);
    _os_log_impl(&dword_240CB9000, v8, v9, "Deleting taste profile", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  v22 = [AMDTasteProfile deleteAll:dataCopy];
  if (*dataCopy)
  {
    v21 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v5 = v21;
      v6 = v20;
      localizedDescription3 = [*dataCopy localizedDescription];
      v19 = MEMORY[0x277D82BE0](localizedDescription3);
      __os_log_helper_16_2_1_8_64(v48, v19);
      _os_log_error_impl(&dword_240CB9000, v5, v6, "Error deleting previous user's taste profile: %@", v48, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription3);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
  }

  else
  {
    v18 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v47, v22);
      _os_log_impl(&dword_240CB9000, v18, OS_LOG_TYPE_INFO, "Deleted %@ TP entries", v47, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    [v41 setObject:v22 forKey:@"tpFeaturesDeleted"];
  }

  *dataCopy = 0;
  v45 = @"userDataDeletionSummary";
  v46 = v41;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)clearDataForUser:(id)user error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, user);
  errorCopy = error;
  v62 = [location[0] objectForKey:@"dsid"];
  v61 = [location[0] objectForKey:@"domain"];
  v60 = [location[0] objectForKey:@"storefrontId"];
  if (v62 && v61 && v60)
  {
    v55 = 0;
    v54 = +[AMDMiscHelpers getCurrentEpochSeconds];
    v53 = 1000 * [v54 longLongValue];
    v72 = @"time";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v53];
    v73 = v27;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v52 = v55;
    [AMDKVStore setValue:"setValue:forKey:error:" forKey:? error:?];
    objc_storeStrong(&v55, v52);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    if (v55)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v23 = oslog;
        v24 = v50;
        localizedDescription = [v55 localizedDescription];
        v49 = MEMORY[0x277D82BE0](localizedDescription);
        __os_log_helper_16_2_1_8_64(v71, v49);
        _os_log_error_impl(&dword_240CB9000, v23, v24, "KV store update with clear data timestamp failed: %@", v71, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription);
        objc_storeStrong(&v49, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v47 = [AMDAppEvent deleteAllEventsForUser:v62 error:errorCopy];
    if (*errorCopy)
    {
      v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v20 = v46;
        v21 = v45;
        localizedDescription2 = [*errorCopy localizedDescription];
        v44 = MEMORY[0x277D82BE0](localizedDescription2);
        __os_log_helper_16_2_1_8_64(v70, v44);
        _os_log_error_impl(&dword_240CB9000, v20, v21, "Clearing user data failed: Engagement events could not be deleted: %@", v70, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription2);
        objc_storeStrong(&v44, 0);
      }

      objc_storeStrong(&v46, 0);
      v65 = 0;
      v56 = 1;
    }

    else
    {
      v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v42 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v69, v47);
        _os_log_debug_impl(&dword_240CB9000, v43, v42, "Deleted %@ events", v69, 0xCu);
      }

      objc_storeStrong(&v43, 0);
      [v48 setObject:v47 forKey:@"engagmentEventsDeleted"];
      v41 = [AMDAppStoreEvent deleteEventsForUser:v62 error:errorCopy];
      if (*errorCopy)
      {
        v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v39 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v17 = v40;
          v18 = v39;
          localizedDescription3 = [*errorCopy localizedDescription];
          v38 = MEMORY[0x277D82BE0](localizedDescription3);
          __os_log_helper_16_2_1_8_64(v68, v38);
          _os_log_error_impl(&dword_240CB9000, v17, v18, "Clearing user data failed: Impression events could not be deleted: %@", v68, 0xCu);
          MEMORY[0x277D82BD8](localizedDescription3);
          objc_storeStrong(&v38, 0);
        }

        objc_storeStrong(&v40, 0);
        v65 = 0;
        v56 = 1;
      }

      else
      {
        [v48 setObject:v41 forKey:@"impressionEventsDeleted"];
        v15 = v61;
        v16 = v62;
        intValue = [v60 intValue];
        v37 = [AMDTasteProfile refreshAggregationTasteProfileForDomain:v15 forUser:v16 andStoreFrontId:intValue error:errorCopy];
        if (*errorCopy)
        {
          v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v12 = v36;
            v13 = v35;
            localizedDescription4 = [*errorCopy localizedDescription];
            v34 = MEMORY[0x277D82BE0](localizedDescription4);
            __os_log_helper_16_2_1_8_64(v67, v34);
            _os_log_error_impl(&dword_240CB9000, v12, v13, "Clearing user data failed: Taste profiles could not be refreshed: %@", v67, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription4);
            objc_storeStrong(&v34, 0);
          }

          objc_storeStrong(&v36, 0);
          v65 = 0;
          v56 = 1;
        }

        else
        {
          [v48 setObject:v37 forKey:@"tasteProfilesRefreshed"];
          v33 = [AMDAppSegment refreshSegmentsForAllTreatmentsForUser:v62 error:errorCopy];
          if (*errorCopy)
          {
            v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v31 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v9 = v32;
              v10 = v31;
              localizedDescription5 = [*errorCopy localizedDescription];
              v30 = MEMORY[0x277D82BE0](localizedDescription5);
              __os_log_helper_16_2_1_8_64(v66, v30);
              _os_log_error_impl(&dword_240CB9000, v9, v10, "Clearing user data failed: Segments could not be refreshed: %@", v66, 0xCu);
              MEMORY[0x277D82BD8](localizedDescription5);
              objc_storeStrong(&v30, 0);
            }

            objc_storeStrong(&v32, 0);
          }

          if (v33)
          {
            v8 = v33;
          }

          else
          {
            v8 = MEMORY[0x277CBEC10];
          }

          objc_storeStrong(&v33, v8);
          [v48 setObject:v33 forKey:@"segmentsRefreshed"];
          [AMDFrameworkMetrics log:v48 withKey:@"clearUserDataSummary" atVerbosity:0];
          v65 = MEMORY[0x277D82BE0](v48);
          v56 = 1;
          objc_storeStrong(&v33, 0);
        }

        objc_storeStrong(&v37, 0);
      }

      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
  }

  else
  {
    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incomplete parameters provided for clear user data request."];
    v58 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v57 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v74, v59);
      _os_log_error_impl(&dword_240CB9000, v58, v57, "%@", v74, 0xCu);
    }

    objc_storeStrong(&v58, 0);
    v28 = [AMDError allocError:15 withMessage:v59];
    v4 = v28;
    *errorCopy = v28;
    v65 = 0;
    v56 = 1;
    objc_storeStrong(&v59, 0);
  }

  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v65;

  return v6;
}

@end
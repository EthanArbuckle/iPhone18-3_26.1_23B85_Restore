@interface AMDJSEngagementEventHandler
+ (id)handleAggregatedEngagementEvent:(id)event forEventType:(int64_t)type forUserId:(id)id andStoreFrontId:(unsigned int)frontId error:(id *)error;
+ (id)handleSingleEngagementEvent:(id)event forEventType:(int64_t)type forUserId:(id)id andStoreFrontId:(unsigned int)frontId error:(id *)error;
+ (unsigned)saveLaunchEvents:(id)events error:(id *)error;
@end

@implementation AMDJSEngagementEventHandler

+ (id)handleAggregatedEngagementEvent:(id)event forEventType:(int64_t)type forUserId:(id)id andStoreFrontId:(unsigned int)frontId error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  typeCopy = type;
  v67 = 0;
  objc_storeStrong(&v67, id);
  frontIdCopy = frontId;
  errorCopy = error;
  v64 = 0;
  v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:typeCopy];
  [v63 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v38);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = 0;
    v59 = 0;
    v32 = [AMDDataSync fetchDeviceID:&v59];
    objc_storeStrong(&v61, v59);
    v60 = v32;
    if (v61)
    {
      v58 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        log = v58;
        typeCopy2 = type;
        __os_log_helper_16_0_0(v56);
        _os_log_error_impl(&dword_240CB9000, log, typeCopy2, "DeviceID fetch failed", v56, 2u);
      }

      objc_storeStrong(&v58, 0);
    }

    v55 = 0;
    v54 = MEMORY[0x277D82BE0](location[0]);
    memset(__b, 0, sizeof(__b));
    v28 = MEMORY[0x277D82BE0](v54);
    v29 = [v28 countByEnumeratingWithState:__b objects:v75 count:16];
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
          objc_enumerationMutation(v28);
        }

        v53 = *(__b[1] + 8 * v26);
        v51 = [v53 mutableCopy];
        [v51 setObject:v67 forKey:0x2852A91A8];
        if (v60)
        {
          [v51 setObject:v60 forKey:0x2852ACD28];
        }

        if (typeCopy == 27 || typeCopy == 23)
        {
          v55 += [selfCopy saveLaunchEvents:v51 error:errorCopy];
        }

        else if (typeCopy == 26 || typeCopy == 22)
        {
          v22 = v51;
          v23 = [v53 objectForKey:@"installType"];
          [v22 setValue:? forKey:?];
          MEMORY[0x277D82BD8](v23);
          v55 += [AMDAppEvent saveEvent:v51 error:errorCopy];
        }

        else
        {
          v55 += [AMDAppEvent saveEvent:v51 error:errorCopy];
        }

        if (*errorCopy && !v64)
        {
          v20 = MEMORY[0x277CCACA8];
          localizedDescription = [*errorCopy localizedDescription];
          v8 = [v20 stringWithFormat:@"Error saving an event: %@", localizedDescription];
          v9 = v64;
          v64 = v8;
          MEMORY[0x277D82BD8](v9);
          MEMORY[0x277D82BD8](localizedDescription);
        }

        *errorCopy = 0;
        objc_storeStrong(&v51, 0);
        ++v26;
        if (v24 + 1 >= v27)
        {
          v26 = 0;
          v27 = [v28 countByEnumeratingWithState:__b objects:v75 count:16];
          if (!v27)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v28);
    v18 = v63;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v55];
    [v18 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v19);
    if (v64)
    {
      [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:v64 atVerbosity:?];
      [v63 setObject:v64 forKey:@"eventSaveError"];
    }

    [AMDFrameworkMetrics log:v63 withKey:@"saveEvents" atVerbosity:0];
    if (typeCopy == 25 || typeCopy == 21)
    {
      v71 = MEMORY[0x277D82BE0](v63);
      v62 = 1;
    }

    else
    {
      v50 = MEMORY[0x277D82BE0](@"AppInfomationTPRefresh");
      if (typeCopy == 26 || typeCopy == 22 || typeCopy == 34)
      {
        v49 = [AMDTasteProfile refreshAppInformationTasteProfile:errorCopy];
        if (*errorCopy)
        {
          v16 = MEMORY[0x277CCACA8];
          localizedDescription2 = [*errorCopy localizedDescription];
          v48 = [v16 stringWithFormat:@"Error generating app-information taste profile: %@", localizedDescription2];
          MEMORY[0x277D82BD8](localizedDescription2);
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v46 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v74, v48);
            _os_log_error_impl(&dword_240CB9000, oslog, v46, "%@", v74, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          [v63 setObject:v48 forKey:v50];
          [AMDFrameworkMetrics log:v48 withKey:v50 atVerbosity:0];
          *errorCopy = 0;
          objc_storeStrong(&v48, 0);
        }

        else
        {
          [v63 setObject:v49 forKey:v50];
          [AMDFrameworkMetrics log:v49 withKey:v50 atVerbosity:0];
          if (typeCopy == 26 || typeCopy == 22)
          {
            +[AMDTasteProfile refreshCToLMaps];
          }
        }

        objc_storeStrong(&v49, 0);
      }

      objc_storeStrong(&v50, @"refreshedODTPs");
      v45 = [AMDTasteProfile refreshAggregationTasteProfileForDomain:@"apps" forUser:v67 andStoreFrontId:frontIdCopy error:errorCopy];
      if (*errorCopy)
      {
        v14 = MEMORY[0x277CCACA8];
        localizedDescription3 = [*errorCopy localizedDescription];
        v44 = [v14 stringWithFormat:@"error refreshing od-tp: %@", localizedDescription3];
        MEMORY[0x277D82BD8](localizedDescription3);
        v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v42 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v73, v44);
          _os_log_error_impl(&dword_240CB9000, v43, v42, "%@", v73, 0xCu);
        }

        objc_storeStrong(&v43, 0);
        [v63 setObject:v44 forKey:v50];
        [AMDFrameworkMetrics log:v44 withKey:v50 atVerbosity:0];
        *errorCopy = 0;
        objc_storeStrong(&v44, 0);
      }

      else
      {
        if (v45)
        {
          objc_storeStrong(&v45, v45);
        }

        else
        {
          objc_storeStrong(&v45, MEMORY[0x277CBEC10]);
        }

        [v63 setObject:v45 forKey:v50];
        [AMDFrameworkMetrics log:v45 withKey:v50 atVerbosity:0];
      }

      v41 = [AMDAppSegment refreshSegmentsForAllTreatmentsForUser:v67 error:errorCopy];
      objc_storeStrong(&v50, @"refreshSegments");
      if (*errorCopy)
      {
        v12 = MEMORY[0x277CCACA8];
        localizedDescription4 = [*errorCopy localizedDescription];
        v40 = [v12 stringWithFormat:@"error updating in-app segment data: %@", localizedDescription4];
        MEMORY[0x277D82BD8](localizedDescription4);
        v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v72, v40);
          _os_log_error_impl(&dword_240CB9000, v39, OS_LOG_TYPE_ERROR, "%@", v72, 0xCu);
        }

        objc_storeStrong(&v39, 0);
        [v63 setObject:v40 forKey:v50];
        [AMDFrameworkMetrics log:v40 withKey:v50 atVerbosity:0];
        *errorCopy = 0;
        objc_storeStrong(&v40, 0);
      }

      else
      {
        if (v41)
        {
          objc_storeStrong(&v41, v41);
        }

        else
        {
          objc_storeStrong(&v41, MEMORY[0x277CBEC10]);
        }

        [v63 setObject:v41 forKey:v50];
        [AMDFrameworkMetrics log:v41 withKey:v50 atVerbosity:0];
      }

      v71 = MEMORY[0x277D82BE0](v63);
      v62 = 1;
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v50, 0);
    }

    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v61, 0);
  }

  else
  {
    objc_storeStrong(&v64, @"Not a list of events");
    v33 = [AMDError allocError:0 withMessage:v64];
    v7 = v33;
    *errorCopy = v33;
    [v63 setObject:v64 forKey:@"eventSaveError"];
    [AMDFrameworkMetrics log:v63 withKey:@"saveEvents" atVerbosity:0];
    v71 = 0;
    v62 = 1;
  }

  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v71;

  return v10;
}

+ (id)handleSingleEngagementEvent:(id)event forEventType:(int64_t)type forUserId:(id)id andStoreFrontId:(unsigned int)frontId error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v13[1] = type;
  v13[0] = 0;
  objc_storeStrong(v13, id);
  v10 = selfCopy;
  v16[0] = location[0];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v12 = [v10 handleAggregatedEngagementEvent:? forEventType:? forUserId:? andStoreFrontId:? error:?];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v12;
}

+ (unsigned)saveLaunchEvents:(id)events error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  errorCopy = error;
  *error = 0;
  v55 = 0;
  v54 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [location[0] objectForKey:0x2852B19A8];
  v41 = [obj countByEnumeratingWithState:__b objects:v62 count:16];
  if (v41)
  {
    v36 = *__b[2];
    v37 = 0;
    v38 = v41;
    while (1)
    {
      v35 = v37;
      if (*__b[2] != v36)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(__b[1] + 8 * v37);
      memset(v50, 0, sizeof(v50));
      allValues = [v53 allValues];
      v34 = [allValues countByEnumeratingWithState:v50 objects:v61 count:16];
      if (v34)
      {
        v30 = *v50[2];
        v31 = 0;
        v32 = v34;
        while (1)
        {
          v29 = v31;
          if (*v50[2] != v30)
          {
            objc_enumerationMutation(allValues);
          }

          v51 = *(v50[1] + 8 * v31);
          unsignedIntValue = [v51 unsignedIntValue];
          v54 += unsignedIntValue;
          ++v31;
          if (v29 + 1 >= v32)
          {
            v31 = 0;
            v32 = [allValues countByEnumeratingWithState:v50 objects:v61 count:16];
            if (!v32)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](allValues);
      ++v37;
      if (v35 + 1 >= v38)
      {
        v37 = 0;
        v38 = [obj countByEnumeratingWithState:__b objects:v62 count:16];
        if (!v38)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if (v54)
  {
    v48 = [location[0] objectForKey:0x2852ACD08];
    v47 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v47 setNumberStyle:1];
    *errorCopy = 0;
    memset(v45, 0, sizeof(v45));
    v26 = [location[0] objectForKey:0x2852B19A8];
    v27 = [v26 countByEnumeratingWithState:v45 objects:v60 count:16];
    if (v27)
    {
      v23 = *v45[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*v45[2] != v23)
        {
          objc_enumerationMutation(v26);
        }

        v46 = *(v45[1] + 8 * v24);
        memset(v43, 0, sizeof(v43));
        v20 = MEMORY[0x277D82BE0](v46);
        v21 = [v20 countByEnumeratingWithState:v43 objects:v59 count:16];
        if (v21)
        {
          v17 = *v43[2];
          v18 = 0;
          v19 = v21;
          while (1)
          {
            v16 = v18;
            if (*v43[2] != v17)
            {
              objc_enumerationMutation(v20);
            }

            v44 = *(v43[1] + 8 * v18);
            v14 = location[0];
            v15 = [v47 numberFromString:v44];
            [v14 setValue:? forKey:?];
            MEMORY[0x277D82BD8](v15);
            v42 = [v46 valueForKey:v44];
            [location[0] setValue:v42 forKey:0x2852ACD48];
            if (v48)
            {
              v12 = location[0];
              v10 = MEMORY[0x277CCABB0];
              [v48 floatValue];
              v11 = v6;
              [v42 floatValue];
              *&v8 = v11 * (v7 / v54);
              v13 = [v10 numberWithFloat:v8];
              [v12 setValue:? forKey:?];
              MEMORY[0x277D82BD8](v13);
            }

            [AMDAppEvent saveEvent:location[0] error:errorCopy];
            if (*errorCopy)
            {
              v49 = 9;
            }

            else
            {
              ++v55;
              v49 = 0;
            }

            objc_storeStrong(&v42, 0);
            ++v18;
            if (v16 + 1 >= v19)
            {
              v18 = 0;
              v19 = [v20 countByEnumeratingWithState:v43 objects:v59 count:16];
              if (!v19)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v20);
        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [v26 countByEnumeratingWithState:v45 objects:v60 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v26);
    v58 = v55;
    v49 = 1;
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
  }

  else
  {
    v28 = [AMDError allocError:0 withMessage:@"total launch duration is zero"];
    v5 = v28;
    *errorCopy = v28;
    v58 = 0;
    v49 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v58;
}

@end
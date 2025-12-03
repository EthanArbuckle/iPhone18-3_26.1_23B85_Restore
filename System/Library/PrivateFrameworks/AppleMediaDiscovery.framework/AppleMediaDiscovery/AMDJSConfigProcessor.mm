@interface AMDJSConfigProcessor
+ (id)getBinariesToFetch:(id)fetch withCurrentColdstartInfo:(id)info andAMDColdstartBinariesToDelete:(id)delete andSummaryContainer:(id)container;
+ (id)getModelsToFetch:(id)fetch withCurrentModelInfo:(id)info andAMDModlsToDelete:(id)delete andSummaryContainer:(id)container;
+ (id)getUrlsWithVersion:(id)version;
+ (id)processConfig:(id)config withCallUUID:(id)d error:(id *)error;
+ (id)refreshDescriptors:(id)descriptors forDomain:(id)domain;
+ (id)saveInAppSegmentsWorkflow:(id)workflow inDomain:(id)domain withCallUUID:(id)d andSummaryContainer:(id)container;
+ (id)saveInFlightWorkflows:(id)workflows forModels:(id)models inDomain:(id)domain withCallUUID:(id)d error:(id *)error;
+ (id)validateConfig:(id)config forDomain:(id)domain;
@end

@implementation AMDJSConfigProcessor

+ (id)processConfig:(id)config withCallUUID:(id)d error:(id *)error
{
  v133 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  v117 = 0;
  objc_storeStrong(&v117, d);
  errorCopy = error;
  v115 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v114 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v113 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v112 = [location[0] objectForKey:@"version"];
  if (v112)
  {
    v48 = v112;
  }

  else
  {
    v48 = @"-1";
  }

  [AMDFrameworkMetrics log:v48 withKey:@"configVersion" atVerbosity:?];
  memset(__b, 0, sizeof(__b));
  v46 = MEMORY[0x277D82BE0](location[0]);
  v47 = [v46 countByEnumeratingWithState:__b objects:v132 count:16];
  if (v47)
  {
    v43 = *__b[2];
    v44 = 0;
    v45 = v47;
    while (1)
    {
      v42 = v44;
      if (*__b[2] != v43)
      {
        objc_enumerationMutation(v46);
      }

      v111 = *(__b[1] + 8 * v44);
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v41 = type;
        __os_log_helper_16_2_1_8_64(v131, v111);
        _os_log_impl(&dword_240CB9000, log, v41, "Processing config for domain '%@'", v131, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v107 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v106 = MEMORY[0x277D82BE0](@"error");
      v105 = [AMDDomains getCodeForDomain:v111];
      if (v105)
      {
        v100 = [location[0] objectForKey:v111];
        if (v100)
        {
          v96 = [selfCopy validateConfig:v100 forDomain:v111];
          if (v96)
          {
            v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad config: %@", v96];
            v94 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v93 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              v34 = v94;
              v35 = v93;
              __os_log_helper_16_2_2_8_64_8_64(v128, v111, v95);
              _os_log_error_impl(&dword_240CB9000, v34, v35, "%@: %@", v128, 0x16u);
            }

            objc_storeStrong(&v94, 0);
            [v107 setObject:v95 forKey:v106];
            v101 = 3;
            objc_storeStrong(&v95, 0);
          }

          else
          {
            v92 = [v100 objectForKey:0x2852B1A48];
            if (!v92 || ![v92 count])
            {
              v91 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v90 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                v32 = v91;
                v33 = v90;
                __os_log_helper_16_0_0(v89);
                _os_log_impl(&dword_240CB9000, v32, v33, "V3 model url bag not present or is empty", v89, 2u);
              }

              objc_storeStrong(&v91, 0);
              v5 = [v100 objectForKey:0x2852B1A28];
              v6 = v92;
              v92 = v5;
              MEMORY[0x277D82BD8](v6);
              if (!v92 || ![v92 count])
              {
                v88 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v87 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                {
                  v30 = v88;
                  v31 = v87;
                  __os_log_helper_16_0_0(v86);
                  _os_log_impl(&dword_240CB9000, v30, v31, "V2 model url bag not present or is empty", v86, 2u);
                }

                objc_storeStrong(&v88, 0);
                v7 = [v100 objectForKey:0x2852B1A08];
                v8 = v92;
                v92 = v7;
                MEMORY[0x277D82BD8](v8);
              }
            }

            if (v92)
            {
              v82 = [v100 objectForKey:0x2852B1908];
              if (!v82)
              {
                v81 = MEMORY[0x277D82BE0](@"No coldstart urls");
                v80 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v79 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  v26 = v80;
                  v27 = v79;
                  __os_log_helper_16_2_2_8_64_8_64(v126, v111, v81);
                  _os_log_error_impl(&dword_240CB9000, v26, v27, "%@: %@", v126, 0x16u);
                }

                objc_storeStrong(&v80, 0);
                objc_storeStrong(&v81, 0);
              }

              v78 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v77 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
              {
                v23 = v78;
                v24 = v77;
                v22 = [v92 count];
                allKeys = [v92 allKeys];
                v76 = MEMORY[0x277D82BE0](allKeys);
                __os_log_helper_16_2_2_8_0_8_64(v125, v22, v76);
                _os_log_debug_impl(&dword_240CB9000, v23, v24, "ModelIds in config (%lu): %@", v125, 0x16u);
                MEMORY[0x277D82BD8](allKeys);
                objc_storeStrong(&v76, 0);
              }

              objc_storeStrong(&v78, 0);
              v75 = 0;
              v73 = 0;
              v21 = [AMDWorkflow performWorkflowCleanupForDomain:v105 error:&v73];
              objc_storeStrong(&v75, v73);
              v74 = v21;
              if (v75)
              {
                v72 = MEMORY[0x277D82BE0](@"Error performing treatment workflow cleanup");
                v71 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v70 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  v19 = v71;
                  v20 = v70;
                  __os_log_helper_16_2_2_8_64_8_64(v124, v111, v72);
                  _os_log_error_impl(&dword_240CB9000, v19, v20, "%@: %@", v124, 0x16u);
                }

                objc_storeStrong(&v71, 0);
                [v107 setObject:v72 forKey:@"treatmentWorkflowCleanupError"];
                objc_storeStrong(&v72, 0);
              }

              if (v74)
              {
                [v107 setObject:v74 forKey:@"treatmentWorkflowsDeleted"];
              }

              else
              {
                [v107 setObject:MEMORY[0x277CBEBF8] forKey:@"treatmentWorkflowsDeleted"];
              }

              v17 = v107;
              v18 = [selfCopy refreshDescriptors:v100 forDomain:v111];
              [v17 setObject:? forKey:?];
              MEMORY[0x277D82BD8](v18);
              v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v68 = [selfCopy saveInAppSegmentsWorkflow:v100 inDomain:v111 withCallUUID:v117 andSummaryContainer:v69];
              [v107 setObject:v69 forKey:0x2852B23A8];
              if ([v68 count])
              {
                v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v62 = +[AMDModel getCurrentModelInfoByModelId];
                v61 = [selfCopy getModelsToFetch:v92 withCurrentModelInfo:v62 andAMDModlsToDelete:v63 andSummaryContainer:v64];
                v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v58 = +[AMDColdstartURL getCurrentURLInfoByModelId];
                v57 = [selfCopy getBinariesToFetch:v82 withCurrentColdstartInfo:v58 andAMDColdstartBinariesToDelete:v59 andSummaryContainer:v60];
                v56 = [selfCopy saveInFlightWorkflows:v68 forModels:v61 inDomain:v111 withCallUUID:v117 error:errorCopy];
                if (*errorCopy)
                {
                  v13 = MEMORY[0x277CCACA8];
                  localizedDescription = [*errorCopy localizedDescription];
                  v55 = [v13 stringWithFormat:@"Error saving in-flight workflows: %@", localizedDescription];
                  MEMORY[0x277D82BD8](localizedDescription);
                  v54 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v53 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v11 = v54;
                    v12 = v53;
                    __os_log_helper_16_2_2_8_64_8_64(v122, v111, v55);
                    _os_log_error_impl(&dword_240CB9000, v11, v12, "%@: %@", v122, 0x16u);
                  }

                  objc_storeStrong(&v54, 0);
                  [v107 setObject:v55 forKey:v106];
                  *errorCopy = 0;
                  v101 = 3;
                  objc_storeStrong(&v55, 0);
                }

                else
                {
                  v52 = [AMDModelDownloader removeOldModels:v63];
                  v51 = [AMDModelDownloader removeOldColdstartBinaries:v59];
                  [v107 setObject:v52 forKey:0x2852AE508];
                  [v107 setObject:v51 forKey:0x2852B2308];
                  [v107 setObject:v56 forKey:0x2852B2348];
                  [v107 setObject:v64 forKey:0x2852B2388];
                  [v115 setObject:v107 forKey:0x2852B2368];
                  [v114 setObject:v61 forKey:v111];
                  [v113 setObject:v57 forKey:v111];
                  objc_storeStrong(&v51, 0);
                  objc_storeStrong(&v52, 0);
                  v101 = 0;
                }

                objc_storeStrong(&v56, 0);
                objc_storeStrong(&v57, 0);
                objc_storeStrong(&v58, 0);
                objc_storeStrong(&v59, 0);
                objc_storeStrong(&v60, 0);
                objc_storeStrong(&v61, 0);
                objc_storeStrong(&v62, 0);
                objc_storeStrong(&v63, 0);
                objc_storeStrong(&v64, 0);
              }

              else
              {
                v67 = MEMORY[0x277D82BE0](@"No inference workflows");
                v66 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v65 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  v15 = v66;
                  v16 = v65;
                  __os_log_helper_16_2_2_8_64_8_64(v123, v111, v67);
                  _os_log_error_impl(&dword_240CB9000, v15, v16, "%@: %@", v123, 0x16u);
                }

                objc_storeStrong(&v66, 0);
                [v107 setObject:v67 forKey:v106];
                v101 = 3;
                objc_storeStrong(&v67, 0);
              }

              objc_storeStrong(&v68, 0);
              objc_storeStrong(&v69, 0);
              objc_storeStrong(&v74, 0);
              objc_storeStrong(&v75, 0);
              objc_storeStrong(&v82, 0);
            }

            else
            {
              v85 = MEMORY[0x277D82BE0](@"No model urls");
              v84 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v83 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v28 = v84;
                v29 = v83;
                __os_log_helper_16_2_2_8_64_8_64(v127, v111, v85);
                _os_log_error_impl(&dword_240CB9000, v28, v29, "%@: %@", v127, 0x16u);
              }

              objc_storeStrong(&v84, 0);
              [v107 setObject:v85 forKey:v106];
              v101 = 3;
              objc_storeStrong(&v85, 0);
            }

            objc_storeStrong(&v92, 0);
          }

          objc_storeStrong(&v96, 0);
        }

        else
        {
          v99 = MEMORY[0x277D82BE0](@"No config");
          v98 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v97 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            v36 = v98;
            v37 = v97;
            __os_log_helper_16_2_2_8_64_8_64(v129, v111, v99);
            _os_log_error_impl(&dword_240CB9000, v36, v37, "%@: %@", v129, 0x16u);
          }

          objc_storeStrong(&v98, 0);
          [v107 setObject:v99 forKey:v106];
          v101 = 3;
          objc_storeStrong(&v99, 0);
        }

        objc_storeStrong(&v100, 0);
      }

      else
      {
        v104 = MEMORY[0x277D82BE0](@"Invalid domain");
        v103 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v102 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v38 = v103;
          v39 = v102;
          __os_log_helper_16_2_2_8_64_8_64(v130, v111, v104);
          _os_log_error_impl(&dword_240CB9000, v38, v39, "%@: %@", v130, 0x16u);
        }

        objc_storeStrong(&v103, 0);
        [v107 setObject:v104 forKey:v106];
        v101 = 3;
        objc_storeStrong(&v104, 0);
      }

      objc_storeStrong(&v106, 0);
      objc_storeStrong(&v107, 0);
      ++v44;
      if (v42 + 1 >= v45)
      {
        v44 = 0;
        v45 = [v46 countByEnumeratingWithState:__b objects:v132 count:16];
        if (!v45)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v46);
  v120[0] = @"summary";
  v121[0] = v115;
  v120[1] = @"modelDownloadInfo";
  v121[1] = v114;
  v120[2] = @"coldstartBinaryDownloadInfo";
  v121[2] = v113;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:3];
  v101 = 1;
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(&v114, 0);
  objc_storeStrong(&v115, 0);
  objc_storeStrong(&v117, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)refreshDescriptors:(id)descriptors forDomain:(id)domain
{
  v34 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptors);
  v25 = 0;
  objc_storeStrong(&v25, domain);
  v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v23 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v33, v25);
    _os_log_impl(&dword_240CB9000, v24, v23, "Refreshing aggregation descriptors for domain '%@'", v33, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  v22 = 0;
  v21 = [location[0] objectForKey:0x2852B18A8];
  v20 = 0;
  if (v21)
  {
    v19 = v20;
    v10 = [AMDDescriptor refreshDescriptors:v21 forDomain:[AMDDomains getCodeForDomain:v25] error:&v19];
    objc_storeStrong(&v20, v19);
    v4 = v22;
    v22 = v10;
    MEMORY[0x277D82BD8](v4);
    if (v20)
    {
      localizedDescription = [v20 localizedDescription];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v16 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v32, v25, localizedDescription);
        _os_log_impl(&dword_240CB9000, oslog, v16, "Error saving descriptors for domain '%@': %@", v32, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v30 = @"error";
      v31 = localizedDescription;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v6 = v22;
      v22 = v5;
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&localizedDescription, 0);
    }
  }

  else
  {
    v15 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v14 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v29, v25);
      _os_log_impl(&dword_240CB9000, v15, v14, "No descriptors for domain '%@'", v29, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v22, &unk_2852BB678);
  }

  v12 = v20;
  v8 = [AMDFetchDescriptor refreshAggregationDescriptors:location[0] forDomain:v25 error:&v12];
  objc_storeStrong(&v20, v12);
  v13 = v8;
  v27[0] = @"coreData";
  v28[0] = v22;
  v27[1] = @"SQLite";
  v28[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)validateConfig:(id)config forDomain:(id)domain
{
  v10 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  v7 = 0;
  objc_storeStrong(&v7, domain);
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v9, v7);
    _os_log_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_INFO, "Validating config for domain '%@'", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)saveInAppSegmentsWorkflow:(id)workflow inDomain:(id)domain withCallUUID:(id)d andSummaryContainer:(id)container
{
  v72 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workflow);
  v65 = 0;
  objc_storeStrong(&v65, domain);
  v64 = 0;
  objc_storeStrong(&v64, d);
  v63 = 0;
  objc_storeStrong(&v63, container);
  v62 = [location[0] objectForKey:0x2852B1BA8];
  if (v62 && [v62 count])
  {
    v58 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v62, "count")}];
    memset(__b, 0, sizeof(__b));
    v32 = MEMORY[0x277D82BE0](v62);
    v33 = [v32 countByEnumeratingWithState:__b objects:v70 count:16];
    if (v33)
    {
      v29 = *__b[2];
      v30 = 0;
      v31 = v33;
      while (1)
      {
        v28 = v30;
        if (*__b[2] != v29)
        {
          objc_enumerationMutation(v32);
        }

        v57 = *(__b[1] + 8 * v30);
        v55 = [v57 mutableCopy];
        v26 = [v55 objectForKey:@"use_case_id"];
        v27 = [@"__segmentAggregator" isEqualToString:?];
        MEMORY[0x277D82BD8](v26);
        if (v27)
        {
          [v55 setObject:0x2852AAC08 forKey:@"model_id"];
          v54 = 0;
          v25 = v55;
          v6 = [AMDDomains getCodeForDomain:v65];
          v53 = v54;
          [AMDWorkflow saveWorkflow:v25 forDomain:v6 withCallUUID:v64 error:&v53];
          objc_storeStrong(&v54, v53);
          if (v54)
          {
            v52 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v51 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v22 = v52;
              v23 = v51;
              localizedDescription = [v54 localizedDescription];
              v50 = MEMORY[0x277D82BE0](localizedDescription);
              __os_log_helper_16_2_1_8_64(v69, v50);
              _os_log_error_impl(&dword_240CB9000, v22, v23, "Error saving workflow: %@", v69, 0xCu);
              MEMORY[0x277D82BD8](localizedDescription);
              objc_storeStrong(&v50, 0);
            }

            objc_storeStrong(&v52, 0);
            v59 = 3;
          }

          else
          {
            v49 = [v55 objectForKey:@"treatment_id"];
            if (v49)
            {
              v21 = v49;
            }

            else
            {
              v21 = @"__defaultTreatment";
            }

            objc_storeStrong(&v49, v21);
            [v63 addObject:v49];
            v59 = 3;
            objc_storeStrong(&v49, 0);
          }

          objc_storeStrong(&v54, 0);
        }

        else
        {
          v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v47 = [v55 objectForKey:@"model_id"];
          if (v47)
          {
            [v48 addObject:v47];
            v43 = [v55 objectForKey:@"secondary_model_id"];
            if (v43)
            {
              v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v41 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v17 = v42;
                v18 = v41;
                __os_log_helper_16_0_0(v40);
                _os_log_impl(&dword_240CB9000, v17, v18, "Secondary model Id available for current workflow", v40, 2u);
              }

              objc_storeStrong(&v42, 0);
              [v48 addObject:v43];
            }

            memset(v38, 0, sizeof(v38));
            v15 = MEMORY[0x277D82BE0](v48);
            v16 = [v15 countByEnumeratingWithState:v38 objects:v68 count:16];
            if (v16)
            {
              v12 = *v38[2];
              v13 = 0;
              v14 = v16;
              while (1)
              {
                v11 = v13;
                if (*v38[2] != v12)
                {
                  objc_enumerationMutation(v15);
                }

                v39 = *(v38[1] + 8 * v13);
                v37 = [v58 objectForKey:v39];
                if (!v37)
                {
                  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v8 = v37;
                  v37 = v7;
                  MEMORY[0x277D82BD8](v8);
                }

                [v37 addObject:v55];
                [v58 setObject:v37 forKey:v39];
                objc_storeStrong(&v37, 0);
                ++v13;
                if (v11 + 1 >= v14)
                {
                  v13 = 0;
                  v14 = [v15 countByEnumeratingWithState:v38 objects:v68 count:16];
                  if (!v14)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](v15);
            objc_storeStrong(&v43, 0);
            v59 = 0;
          }

          else
          {
            v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v45 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v19 = v46;
              v20 = v45;
              __os_log_helper_16_0_0(v44);
              _os_log_error_impl(&dword_240CB9000, v19, v20, "Programmer error: no modelId for workflow", v44, 2u);
            }

            objc_storeStrong(&v46, 0);
            v59 = 3;
          }

          objc_storeStrong(&v47, 0);
          objc_storeStrong(&v48, 0);
        }

        objc_storeStrong(&v55, 0);
        ++v30;
        if (v28 + 1 >= v31)
        {
          v30 = 0;
          v31 = [v32 countByEnumeratingWithState:__b objects:v70 count:16];
          if (!v31)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v32);
    v67 = MEMORY[0x277D82BE0](v58);
    v59 = 1;
    objc_storeStrong(&v58, 0);
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v71, v65);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "No workflows for domain '%@'", v71, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v67 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
    v59 = 1;
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v67;

  return v9;
}

+ (id)getModelsToFetch:(id)fetch withCurrentModelInfo:(id)info andAMDModlsToDelete:(id)delete andSummaryContainer:(id)container
{
  v100 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fetch);
  v82 = 0;
  objc_storeStrong(&v82, info);
  v81 = 0;
  objc_storeStrong(&v81, delete);
  v80 = 0;
  objc_storeStrong(&v80, container);
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v78 = [selfCopy getUrlsWithVersion:location[0]];
  v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  v47 = MEMORY[0x277D82BE0](v78);
  v48 = [v47 countByEnumeratingWithState:__b objects:v99 count:16];
  if (v48)
  {
    v41 = *__b[2];
    v42 = 0;
    v43 = v48;
    while (1)
    {
      v40 = v42;
      if (*__b[2] != v41)
      {
        objc_enumerationMutation(v47);
      }

      v76 = *(__b[1] + 8 * v42);
      v74 = [v78 objectForKey:v76];
      v73 = [v74 objectAtIndexedSubscript:0];
      v72 = [v74 objectAtIndexedSubscript:1];
      v71 = [v82 objectForKey:v76];
      if (v71)
      {
        v68 = [v71 objectForKey:0x2852A7108];
        if ([v68 isEqualToString:v72])
        {
          v65 = [v71 objectForKey:0x2852AAF08];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v31 = [defaultManager fileExistsAtPath:v65];
          MEMORY[0x277D82BD8](defaultManager);
          if (v31)
          {
            [v77 addObject:v76];
            v62 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v61 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v25 = v62;
              __os_log_helper_16_2_2_8_64_8_64(v89, v76, v72);
              _os_log_debug_impl(&dword_240CB9000, v25, v61, "Existing model found:%@, version:%@", v89, 0x16u);
            }

            objc_storeStrong(&v62, 0);
          }

          else
          {
            v64 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v63 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              v28 = v64;
              v29 = v63;
              __os_log_helper_16_2_2_8_64_8_64(v92, v76, v65);
              _os_log_debug_impl(&dword_240CB9000, v28, v29, "No model found:%@, at location:%@, downloading the model again", v92, 0x16u);
            }

            objc_storeStrong(&v64, 0);
            v26 = v79;
            v90[0] = 0x2852AAF08;
            v91[0] = v73;
            v90[1] = 0x2852A7108;
            v91[1] = v72;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
            [v26 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v27);
            [v81 addObject:v71];
          }

          objc_storeStrong(&v65, 0);
        }

        else
        {
          v34 = v79;
          v94[0] = 0x2852AAF08;
          v95[0] = v73;
          v94[1] = 0x2852A7108;
          v95[1] = v72;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
          [v34 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v35);
          v67 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v66 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v32 = v67;
            v33 = v66;
            __os_log_helper_16_2_2_8_64_8_64(v93, v76, v72);
            _os_log_debug_impl(&dword_240CB9000, v32, v33, "New model version to fetch:%@, version:%@", v93, 0x16u);
          }

          objc_storeStrong(&v67, 0);
        }

        objc_storeStrong(&v68, 0);
      }

      else
      {
        v38 = v79;
        v97[0] = 0x2852AAF08;
        v98[0] = v73;
        v97[1] = 0x2852A7108;
        v98[1] = v72;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
        [v38 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v39);
        v70 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          log = v70;
          v37 = type;
          __os_log_helper_16_2_2_8_64_8_64(v96, v76, v72);
          _os_log_debug_impl(&dword_240CB9000, log, v37, "New model to fetch:%@, version:%@", v96, 0x16u);
        }

        objc_storeStrong(&v70, 0);
      }

      objc_storeStrong(&v71, 0);
      objc_storeStrong(&v72, 0);
      objc_storeStrong(&v73, 0);
      objc_storeStrong(&v74, 0);
      ++v42;
      if (v40 + 1 >= v43)
      {
        v42 = 0;
        v43 = [v47 countByEnumeratingWithState:__b objects:v99 count:16];
        if (!v43)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v47);
  memset(v59, 0, sizeof(v59));
  v23 = MEMORY[0x277D82BE0](v82);
  v24 = [v23 countByEnumeratingWithState:v59 objects:v88 count:16];
  if (v24)
  {
    v20 = *v59[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*v59[2] != v20)
      {
        objc_enumerationMutation(v23);
      }

      v60 = *(v59[1] + 8 * v21);
      v18 = [v78 objectForKey:v60];
      MEMORY[0x277D82BD8](v18);
      if (!v18)
      {
        v58 = 0;
        v56 = 0;
        v17 = [AMDWorkflow getWorkflowsForModelId:v60 error:&v56];
        objc_storeStrong(&v58, v56);
        v57 = v17;
        if (v58)
        {
          v55 = 5;
        }

        else
        {
          if (!v57 || ![v57 count])
          {
            v15 = v81;
            v16 = [v82 objectForKey:v60];
            [v15 addObject:?];
            MEMORY[0x277D82BD8](v16);
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v53 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v14 = oslog;
              __os_log_helper_16_2_1_8_64(v87, v60);
              _os_log_debug_impl(&dword_240CB9000, v14, v53, "Model to delete :%@", v87, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
          }

          v55 = 0;
        }

        objc_storeStrong(&v57, 0);
        objc_storeStrong(&v58, 0);
      }

      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [v23 countByEnumeratingWithState:v59 objects:v88 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v23);
  v52 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v51 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v11 = v52;
    v12 = v51;
    v10 = [v79 count];
    allKeys = [v79 allKeys];
    v50 = MEMORY[0x277D82BE0](allKeys);
    __os_log_helper_16_2_2_8_0_8_64(v86, v10, v50);
    _os_log_impl(&dword_240CB9000, v11, v12, "Models to fetch (%lu): %@", v86, 0x16u);
    MEMORY[0x277D82BD8](allKeys);
    objc_storeStrong(&v50, 0);
  }

  objc_storeStrong(&v52, 0);
  v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_0_8_64(v85, [v81 count], v81);
    _os_log_impl(&dword_240CB9000, v49, OS_LOG_TYPE_INFO, "Models to delete (%lu): %@", v85, 0x16u);
  }

  objc_storeStrong(&v49, 0);
  [v80 setObject:v77 forKey:@"modelsExisting"];
  v7 = v80;
  allKeys2 = [v79 allKeys];
  [v7 setObject:? forKey:?];
  MEMORY[0x277D82BD8](allKeys2);
  [v80 setObject:v81 forKey:@"modelsToDelete"];
  v9 = MEMORY[0x277D82BE0](v79);
  v55 = 1;
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)getBinariesToFetch:(id)fetch withCurrentColdstartInfo:(id)info andAMDColdstartBinariesToDelete:(id)delete andSummaryContainer:(id)container
{
  v85 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fetch);
  v69 = 0;
  objc_storeStrong(&v69, info);
  v68 = 0;
  objc_storeStrong(&v68, delete);
  v67 = 0;
  objc_storeStrong(&v67, container);
  v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (location[0])
  {
    v64 = [selfCopy getUrlsWithVersion:location[0]];
    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    v37 = MEMORY[0x277D82BE0](v64);
    v38 = [v37 countByEnumeratingWithState:__b objects:v84 count:16];
    if (v38)
    {
      v34 = *__b[2];
      v35 = 0;
      v36 = v38;
      while (1)
      {
        v33 = v35;
        if (*__b[2] != v34)
        {
          objc_enumerationMutation(v37);
        }

        v62 = *(__b[1] + 8 * v35);
        v60 = [v64 objectForKey:v62];
        v59 = [v60 objectAtIndexedSubscript:0];
        v58 = [v60 objectAtIndexedSubscript:1];
        v57 = [v69 objectForKey:v62];
        v56 = [v57 objectForKey:0x2852A7108];
        if (v57)
        {
          if ([v56 isEqualToString:v58])
          {
            [v63 addObject:v62];
            v51 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v50 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v24 = v51;
              __os_log_helper_16_2_2_8_64_8_64(v77, v62, v58);
              _os_log_debug_impl(&dword_240CB9000, v24, v50, "Existing Coldstart Binary found:%@, version:%@", v77, 0x16u);
            }

            objc_storeStrong(&v51, 0);
          }

          else
          {
            v27 = v66;
            v79[0] = 0x2852AAF08;
            v80[0] = v59;
            v79[1] = 0x2852A7108;
            v80[1] = v58;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
            [v27 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v28);
            v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v52 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v25 = v53;
              v26 = v52;
              __os_log_helper_16_2_2_8_64_8_64(v78, v62, v58);
              _os_log_debug_impl(&dword_240CB9000, v25, v26, "New Coldstart Binary version to fetch:%@, version:%@", v78, 0x16u);
            }

            objc_storeStrong(&v53, 0);
          }
        }

        else
        {
          v31 = v66;
          v82[0] = 0x2852AAF08;
          v83[0] = v59;
          v82[1] = 0x2852A7108;
          v83[1] = v58;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
          [v31 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v32);
          v55 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          type = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            log = v55;
            v30 = type;
            __os_log_helper_16_2_2_8_64_8_64(v81, v62, v58);
            _os_log_debug_impl(&dword_240CB9000, log, v30, "New Coldstart Binary to fetch:%@, version:%@", v81, 0x16u);
          }

          objc_storeStrong(&v55, 0);
        }

        objc_storeStrong(&v56, 0);
        objc_storeStrong(&v57, 0);
        objc_storeStrong(&v58, 0);
        objc_storeStrong(&v59, 0);
        objc_storeStrong(&v60, 0);
        ++v35;
        if (v33 + 1 >= v36)
        {
          v35 = 0;
          v36 = [v37 countByEnumeratingWithState:__b objects:v84 count:16];
          if (!v36)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v37);
    memset(v48, 0, sizeof(v48));
    v22 = MEMORY[0x277D82BE0](v69);
    v23 = [v22 countByEnumeratingWithState:v48 objects:v76 count:16];
    if (v23)
    {
      v19 = *v48[2];
      v20 = 0;
      v21 = v23;
      while (1)
      {
        v18 = v20;
        if (*v48[2] != v19)
        {
          objc_enumerationMutation(v22);
        }

        v49 = *(v48[1] + 8 * v20);
        v17 = [v64 objectForKey:v49];
        MEMORY[0x277D82BD8](v17);
        if (!v17)
        {
          v15 = v68;
          v16 = [v69 objectForKey:v49];
          [v15 addObject:?];
          MEMORY[0x277D82BD8](v16);
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v46 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v14 = oslog;
            __os_log_helper_16_2_1_8_64(v75, v49);
            _os_log_debug_impl(&dword_240CB9000, v14, v46, "Coldstart binary to delete for model :%@", v75, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [v22 countByEnumeratingWithState:v48 objects:v76 count:16];
          if (!v21)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v22);
    v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v44 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v11 = v45;
      v12 = v44;
      v10 = [v66 count];
      allKeys = [v66 allKeys];
      v43 = MEMORY[0x277D82BE0](allKeys);
      __os_log_helper_16_2_2_8_0_8_64(v74, v10, v43);
      _os_log_impl(&dword_240CB9000, v11, v12, "Coldstart binaries to fetch (%lu): %@", v74, 0x16u);
      MEMORY[0x277D82BD8](allKeys);
      objc_storeStrong(&v43, 0);
    }

    objc_storeStrong(&v45, 0);
    v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_0_8_64(v73, [v68 count], v68);
      _os_log_impl(&dword_240CB9000, v42, OS_LOG_TYPE_INFO, "Coldstart binaries to delete (%lu): %@", v73, 0x16u);
    }

    objc_storeStrong(&v42, 0);
    [v67 setObject:v63 forKey:@"binariesExisting"];
    v8 = v67;
    allKeys2 = [v66 allKeys];
    [v8 setObject:? forKey:?];
    MEMORY[0x277D82BD8](allKeys2);
    [v67 setObject:v68 forKey:@"binariesToDelete"];
    v72 = MEMORY[0x277D82BE0](v66);
    v65 = 1;
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v64, 0);
  }

  else
  {
    v72 = MEMORY[0x277D82BE0](v66);
    v65 = 1;
  }

  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v72;

  return v6;
}

+ (id)getUrlsWithVersion:(id)version
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v13 = objc_alloc(MEMORY[0x277CBEB38]);
  v21 = [v13 initWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v15 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v15)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v15;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v11);
      v18 = [location[0] objectForKey:v20];
      v17 = [v18 componentsSeparatedByString:@"="];
      if ([v17 count] >= 2)
      {
        v5 = v21;
        v23[0] = v18;
        lastObject = [v17 lastObject];
        v23[1] = lastObject;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        [v5 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](lastObject);
      }

      else
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          __os_log_helper_16_2_1_8_64(v24, v18);
          _os_log_error_impl(&dword_240CB9000, log, OS_LOG_TYPE_ERROR, "No version in url: '%@'", v24, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)saveInFlightWorkflows:(id)workflows forModels:(id)models inDomain:(id)domain withCallUUID:(id)d error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workflows);
  v60 = 0;
  objc_storeStrong(&v60, models);
  v59 = 0;
  objc_storeStrong(&v59, domain);
  v58 = 0;
  objc_storeStrong(&v58, d);
  errorCopy = error;
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  v38 = MEMORY[0x277D82BE0](location[0]);
  v39 = [v38 countByEnumeratingWithState:__b objects:v67 count:16];
  if (v39)
  {
    v31 = *__b[2];
    v32 = 0;
    v33 = v39;
    while (1)
    {
      v30 = v32;
      if (*__b[2] != v31)
      {
        objc_enumerationMutation(v38);
      }

      v55 = *(__b[1] + 8 * v32);
      v53 = 0;
      v52 = 0;
      v51 = [AMDModel getModelInfo:v55 error:errorCopy];
      if (*errorCopy)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v29 = type;
          __os_log_helper_16_2_1_8_64(v66, v55);
          _os_log_error_impl(&dword_240CB9000, log, v29, "Fetch error for modelId: %@", v66, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v62 = 0;
        v48 = 1;
      }

      else
      {
        if (v51)
        {
          v53 = 1;
        }

        v27 = [v60 objectForKey:v55];
        MEMORY[0x277D82BD8](v27);
        if (v27)
        {
          v52 = 1;
        }

        memset(v46, 0, sizeof(v46));
        v25 = [location[0] objectForKey:v55];
        v26 = [v25 countByEnumeratingWithState:v46 objects:v65 count:16];
        if (v26)
        {
          v22 = *v46[2];
          v23 = 0;
          v24 = v26;
          while (1)
          {
            v21 = v23;
            if (*v46[2] != v22)
            {
              objc_enumerationMutation(v25);
            }

            v47 = *(v46[1] + 8 * v23);
            if (v53)
            {
              v20 = v47;
              v7 = [AMDDomains getCodeForDomain:v59];
              [AMDWorkflow saveWorkflow:v20 forDomain:v7 withCallUUID:v58 error:errorCopy];
            }

            if (*errorCopy)
            {
              v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v44 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v17 = v45;
                v18 = v44;
                localizedDescription = [*errorCopy localizedDescription];
                v43 = MEMORY[0x277D82BE0](localizedDescription);
                __os_log_helper_16_2_1_8_64(v64, v43);
                _os_log_error_impl(&dword_240CB9000, v17, v18, "Workflow save failed with error: %@", v64, 0xCu);
                MEMORY[0x277D82BD8](localizedDescription);
                objc_storeStrong(&v43, 0);
              }

              objc_storeStrong(&v45, 0);
              v62 = 0;
              v48 = 1;
              goto LABEL_32;
            }

            if (v52)
            {
              v16 = v47;
              v8 = [AMDDomains getCodeForDomain:v59];
              [AMDWorkflowInFlight saveWorkflow:v16 forDomain:v8 withCallUUID:v58 error:errorCopy];
            }

            if (*errorCopy)
            {
              break;
            }

            v11 = v56;
            v12 = [v47 objectForKey:0x2852B1BC8];
            [v11 addObject:?];
            MEMORY[0x277D82BD8](v12);
            ++v23;
            if (v21 + 1 >= v24)
            {
              v23 = 0;
              v24 = [v25 countByEnumeratingWithState:v46 objects:v65 count:16];
              if (!v24)
              {
                goto LABEL_31;
              }
            }
          }

          v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v41 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v13 = v42;
            v14 = v41;
            localizedDescription2 = [*errorCopy localizedDescription];
            v40 = MEMORY[0x277D82BE0](localizedDescription2);
            __os_log_helper_16_2_1_8_64(v63, v40);
            _os_log_error_impl(&dword_240CB9000, v13, v14, "Inflight workflow save failed with error: %@", v63, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription2);
            objc_storeStrong(&v40, 0);
          }

          objc_storeStrong(&v42, 0);
          v62 = 0;
          v48 = 1;
        }

        else
        {
LABEL_31:
          v48 = 0;
        }

LABEL_32:
        MEMORY[0x277D82BD8](v25);
        if (!v48)
        {
          v48 = 0;
        }
      }

      objc_storeStrong(&v51, 0);
      if (v48)
      {
        break;
      }

      ++v32;
      if (v30 + 1 >= v33)
      {
        v32 = 0;
        v33 = [v38 countByEnumeratingWithState:__b objects:v67 count:16];
        if (!v33)
        {
          goto LABEL_37;
        }
      }
    }
  }

  else
  {
LABEL_37:
    v48 = 0;
  }

  MEMORY[0x277D82BD8](v38);
  if (!v48)
  {
    v62 = MEMORY[0x277D82BE0](v56);
    v48 = 1;
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v62;

  return v9;
}

@end
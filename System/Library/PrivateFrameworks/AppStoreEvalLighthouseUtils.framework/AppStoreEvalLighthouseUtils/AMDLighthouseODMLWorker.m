@interface AMDLighthouseODMLWorker
- (AMDLighthouseODMLWorker)init;
- (id)checkIfModelShouldBeDownloaded:(id)a3 outError:(id *)a4;
- (id)checkIfTaskShouldBeStopped:(id *)a3;
- (id)createMLRTaskAttachmentsObject:(id)a3 modelDirURL:(id)a4 error:(id *)a5;
- (id)gatherGaussianResults:(id)a3 withPartitions:(id)a4 outError:(id *)a5;
- (id)gatherMetricsToReturn:(id)a3 withRecipe:(id)a4 withAttachments:(id)a5 outError:(id *)a6;
- (id)logAllResultsToCoreAnalyticsOrDeDisco:(id)a3 withLoggingStrategies:(id)a4 outError:(id *)a5;
- (id)logDeDiscoResults:(id)a3 outError:(id *)a4;
- (id)logMultipleDeDiscoResults:(id)a3 outError:(id *)a4;
- (id)logResultToCoreAnalytics:(id)a3 withMetric:(id)a4 withValue:(id)a5;
- (id)performGenericTaskWithDataProcessingCarryover:(id)a3 outError:(id *)a4;
- (id)targetingKeyValuePairsForKeys:(id)a3 error:(id *)a4;
- (void)stop;
@end

@implementation AMDLighthouseODMLWorker

- (AMDLighthouseODMLWorker)init
{
  location = self;
  v7 = a2;
  v2 = os_log_create("com.apple.aiml.AMDLighthouseODMLPlugin", "AMDLighthouseODMLWorker");
  v3 = sLog;
  sLog = v2;
  MEMORY[0x277D82BD8](v3);
  v4 = location;
  location = 0;
  v6.receiver = v4;
  v6.super_class = AMDLighthouseODMLWorker;
  location = [(AMDLighthouseODMLWorker *)&v6 init];
  if (location)
  {
    v9 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&location, 0);
  return v9;
}

- (id)createMLRTaskAttachmentsObject:(id)a3 modelDirURL:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21[1] = a5;
  v21[0] = [location[0] objectForKey:AttachmentKeys];
  v20 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v14 = MEMORY[0x277D82BE0](v21[0]);
  v15 = [v14 countByEnumeratingWithState:__b objects:v24 count:16];
  if (v15)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v15;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(__b[1] + 8 * v10);
      v17 = [v22 URLByAppendingPathComponent:v19];
      [v20 addObject:v17];
      objc_storeStrong(&v17, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v14 countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v14);
  v5 = objc_alloc(MEMORY[0x277D253F8]);
  v16 = [v5 initWithURLs:v20];
  v7 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (id)logResultToCoreAnalytics:(id)a3 withMetric:(id)a4 withValue:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = MEMORY[0x277D82BE0](v14);
  v11 = MEMORY[0x277D82BE0](v13);
  v12 = MEMORY[0x277D82BE0](v16);
  AnalyticsSendEventLazy();
  v8 = [MEMORY[0x277CCABB0] numberWithLong:1];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v8;
}

id __73__AMDLighthouseODMLWorker_logResultToCoreAnalytics_withMetric_withValue___block_invoke(uint64_t a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16[0] setObject:*(a1 + 32) forKeyedSubscript:ModelNameKeyForLogging];
  [v16[0] setObject:*(a1 + 40) forKeyedSubscript:MetricNameKeyForLogging];
  [v16[0] setObject:*(a1 + 48) forKeyedSubscript:MetricValKeyForLogging];
  v12 = [*(a1 + 56) triExperimentIdentifiers];
  MEMORY[0x277D82BD8](v12);
  if (v12)
  {
    v5 = [*(a1 + 56) triExperimentIdentifiers];
    v15 = [v5 experimentId];
    MEMORY[0x277D82BD8](v5);
    v6 = [*(a1 + 56) triExperimentIdentifiers];
    v7 = [v6 deploymentId];
    MEMORY[0x277D82BD8](v6);
    v14 = v7;
    v8 = [*(a1 + 56) triExperimentIdentifiers];
    v13 = [v8 treatmentId];
    MEMORY[0x277D82BD8](v8);
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    v9 = [v10 stringValue];
    [v16[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    [v16[0] setObject:v15 forKeyedSubscript:ExperimentIdKey];
    [v16[0] setObject:v13 forKeyedSubscript:TreatmentIdKey];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    v3 = [v4 stringValue];
    [v16[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    [v16[0] setObject:FailureKey forKeyedSubscript:ExperimentIdKey];
    [v16[0] setObject:FailureKey forKeyedSubscript:TreatmentIdKey];
  }

  v2 = MEMORY[0x277D82BE0](v16[0]);
  objc_storeStrong(v16, 0);

  return v2;
}

- (id)logMultipleDeDiscoResults:(id)a3 outError:(id *)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v115 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v113 = a4;
  v112 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v77 = [obj countByEnumeratingWithState:__b objects:v122 count:16];
  if (v77)
  {
    v72 = *__b[2];
    v73 = 0;
    v74 = v77;
    while (1)
    {
      v71 = v73;
      if (*__b[2] != v72)
      {
        objc_enumerationMutation(obj);
      }

      v111 = *(__b[1] + 8 * v73);
      v109 = [v111 objectForKey:ModelMetrics];
      v108 = [v111 objectForKey:ModelName];
      memset(v106, 0, sizeof(v106));
      v69 = MEMORY[0x277D82BE0](v109);
      v70 = [v69 countByEnumeratingWithState:v106 objects:v121 count:16];
      if (v70)
      {
        v66 = *v106[2];
        v67 = 0;
        v68 = v70;
        while (1)
        {
          v65 = v67;
          if (*v106[2] != v66)
          {
            objc_enumerationMutation(v69);
          }

          v107 = *(v106[1] + 8 * v67);
          v64 = [(AMDLighthouseODMLWorker *)v115 checkIfTaskShouldBeStopped:v113];
          MEMORY[0x277D82BD8](v64);
          if (!v64)
          {
            break;
          }

          v104 = [v109 objectForKey:v107];
          v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v108, v107];
          v62 = MEMORY[0x277CCABB0];
          [v104 floatValue];
          v63 = [v62 numberWithFloat:?];
          [v112 setObject:? forKeyedSubscript:?];
          MEMORY[0x277D82BD8](v63);
          objc_storeStrong(&v103, 0);
          objc_storeStrong(&v104, 0);
          ++v67;
          if (v65 + 1 >= v68)
          {
            v67 = 0;
            v68 = [v69 countByEnumeratingWithState:v106 objects:v121 count:16];
            if (!v68)
            {
              goto LABEL_13;
            }
          }
        }

        v116 = 0;
        v105 = 1;
      }

      else
      {
LABEL_13:
        v105 = 0;
      }

      MEMORY[0x277D82BD8](v69);
      if (!v105)
      {
        v105 = 0;
      }

      objc_storeStrong(&v108, 0);
      objc_storeStrong(&v109, 0);
      if (v105)
      {
        break;
      }

      ++v73;
      if (v71 + 1 >= v74)
      {
        v73 = 0;
        v74 = [obj countByEnumeratingWithState:__b objects:v122 count:16];
        if (!v74)
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
LABEL_19:
    v105 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v105)
  {
    v102 = 0;
    v61 = [(AMDLighthouseODMLWorker *)v115 recipe];
    v101 = [(NSDictionary *)v61 objectForKey:@"multipleDediscoEncodingSchema"];
    MEMORY[0x277D82BD8](v61);
    if (v101)
    {
      goto LABEL_30;
    }

    v100 = [(AMDLighthouseODMLWorker *)v115 modelsURL];
    if (v100)
    {
      v99 = [v100 URLByAppendingPathComponent:EncodingPath];
      v97 = 0;
      v60 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v99 options:0 error:&v97];
      objc_storeStrong(&v102, v97);
      v98 = v60;
      if (v102)
      {
        v5 = objc_alloc(MEMORY[0x277CCA9B8]);
        v59 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:150 userInfo:0];
        v6 = v59;
        *v113 = v59;
      }

      v96 = v102;
      v58 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v98 options:0 error:&v96];
      objc_storeStrong(&v102, v96);
      v7 = v101;
      v101 = v58;
      MEMORY[0x277D82BD8](v7);
      if (v102)
      {
        v8 = objc_alloc(MEMORY[0x277CCA9B8]);
        v57 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:151 userInfo:0];
        v9 = v57;
        *v113 = v57;
      }

      objc_storeStrong(&v98, 0);
      objc_storeStrong(&v99, 0);
      v105 = 0;
    }

    else
    {
      v4 = v102;
      *v113 = v102;
      v116 = 0;
      v105 = 1;
    }

    objc_storeStrong(&v100, 0);
    if (!v105)
    {
LABEL_30:
      memset(v94, 0, sizeof(v94));
      v55 = MEMORY[0x277D82BE0](v101);
      v56 = [v55 countByEnumeratingWithState:v94 objects:v120 count:16];
      if (v56)
      {
        v52 = *v94[2];
        v53 = 0;
        v54 = v56;
        while (1)
        {
          v51 = v53;
          if (*v94[2] != v52)
          {
            objc_enumerationMutation(v55);
          }

          v95 = *(v94[1] + 8 * v53);
          v93 = [v95 objectForKey:PopulationSection];
          v92 = [(AMDLighthouseODMLWorker *)v115 triExperimentIdentifiers];
          if (v92)
          {
            v91 = [v92 experimentId];
            v90 = [v92 deploymentId];
            v89 = [v92 treatmentId];
            v88 = 0;
            if (v93)
            {
              v87 = [v112 objectForKey:v93];
              v86 = [v87 stringValue];
              v43 = MEMORY[0x277CCACA8];
              v41 = v86;
              v42 = v91;
              v45 = [MEMORY[0x277CCABB0] numberWithInt:v90];
              v44 = [v45 stringValue];
              v14 = [v43 stringWithFormat:@"com.apple.ampaiml.AppleMediaDiscoveryFrameworkLighthousePlugin:%@:%@:%@:%@", v41, v42, v44, v89];
              v15 = v88;
              v88 = v14;
              MEMORY[0x277D82BD8](v15);
              MEMORY[0x277D82BD8](v44);
              MEMORY[0x277D82BD8](v45);
              objc_storeStrong(&v86, 0);
              objc_storeStrong(&v87, 0);
            }

            else
            {
              v47 = MEMORY[0x277CCACA8];
              v46 = v91;
              v49 = [MEMORY[0x277CCABB0] numberWithInt:v90];
              v48 = [v49 stringValue];
              v12 = [v47 stringWithFormat:@"com.apple.ampaiml.AppleMediaDiscoveryFrameworkLighthousePlugin:%@:%@:%@", v46, v48, v89];
              v13 = v88;
              v88 = v12;
              MEMORY[0x277D82BD8](v13);
              MEMORY[0x277D82BD8](v48);
              MEMORY[0x277D82BD8](v49);
            }

            oslog = MEMORY[0x277D82BE0](sLog);
            type = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              log = oslog;
              v40 = type;
              __os_log_helper_16_2_1_8_64(v119, v112);
              _os_log_debug_impl(&dword_2400B3000, log, v40, "dataToUpload: %@", v119, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v83 = MEMORY[0x277D82BE0](sLog);
            v82 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              v37 = v83;
              v38 = v82;
              __os_log_helper_16_2_1_8_64(v118, v88);
              _os_log_debug_impl(&dword_2400B3000, v37, v38, "baseKeyWithTrialInfo: %@", v118, 0xCu);
            }

            objc_storeStrong(&v83, 0);
            v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
            memset(v79, 0, sizeof(v79));
            v35 = [v95 objectForKeyedSubscript:DataToUpload];
            v36 = [v35 countByEnumeratingWithState:v79 objects:v117 count:16];
            if (v36)
            {
              v32 = *v79[2];
              v33 = 0;
              v34 = v36;
              while (1)
              {
                v31 = v33;
                if (*v79[2] != v32)
                {
                  objc_enumerationMutation(v35);
                }

                v80 = *(v79[1] + 8 * v33);
                v30 = [v112 objectForKey:v80];
                MEMORY[0x277D82BD8](v30);
                if (!v30)
                {
                  v16 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v29 = [v16 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:182 userInfo:0];
                  v17 = v29;
                  *v113 = v29;
                }

                v27 = v81;
                v28 = [v112 objectForKey:v80];
                [v27 setObject:? forKey:?];
                MEMORY[0x277D82BD8](v28);
                ++v33;
                if (v31 + 1 >= v34)
                {
                  v33 = 0;
                  v34 = [v35 countByEnumeratingWithState:v79 objects:v117 count:16];
                  if (!v34)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](v35);
            v24 = MEMORY[0x277D41430];
            v23 = v81;
            v25 = [v95 objectForKeyedSubscript:DataContentTypes];
            v78 = v102;
            v26 = [v24 encodeDataAndRecord:v23 dataTypeContent:? baseKey:? errorOut:?];
            objc_storeStrong(&v102, v78);
            MEMORY[0x277D82BD8](v25);
            if ((v26 & 1) != 1)
            {
              goto LABEL_53;
            }

            if (!v102)
            {
              v105 = 0;
            }

            else
            {
LABEL_53:
              NSLog(&cfstr_FailedToSubmit.isa, v102);
              v18 = objc_alloc(MEMORY[0x277CCA9B8]);
              v22 = [v18 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:144 userInfo:0];
              v19 = v22;
              *v113 = v22;
              v116 = 0;
              v105 = 1;
            }

            objc_storeStrong(&v81, 0);
            objc_storeStrong(&v88, 0);
            objc_storeStrong(&v89, 0);
            objc_storeStrong(&v91, 0);
          }

          else
          {
            v10 = objc_alloc(MEMORY[0x277CCA9B8]);
            v50 = [v10 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:145 userInfo:0];
            v11 = v50;
            *v113 = v50;
            v116 = 0;
            v105 = 1;
          }

          objc_storeStrong(&v92, 0);
          objc_storeStrong(&v93, 0);
          if (v105)
          {
            break;
          }

          ++v53;
          if (v51 + 1 >= v54)
          {
            v53 = 0;
            v54 = [v55 countByEnumeratingWithState:v94 objects:v120 count:16];
            if (!v54)
            {
              goto LABEL_59;
            }
          }
        }
      }

      else
      {
LABEL_59:
        v105 = 0;
      }

      MEMORY[0x277D82BD8](v55);
      if (!v105)
      {
        v116 = [MEMORY[0x277CCABB0] numberWithLong:1];
        v105 = 1;
      }
    }

    objc_storeStrong(&v101, 0);
    objc_storeStrong(&v102, 0);
  }

  objc_storeStrong(&v112, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v20 = v116;

  return v20;
}

- (id)gatherGaussianResults:(id)a3 withPartitions:(id)a4 outError:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = a5;
  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  v26 = MEMORY[0x277D82BE0](location[0]);
  v27 = [v26 countByEnumeratingWithState:__b objects:v45 count:16];
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

      v36 = *(__b[1] + 8 * v22);
      v34 = [v36 objectForKey:ModelMetrics];
      v33 = [v36 objectForKey:ModelName];
      memset(v31, 0, sizeof(v31));
      v18 = MEMORY[0x277D82BE0](v34);
      v19 = [v18 countByEnumeratingWithState:v31 objects:v44 count:16];
      if (v19)
      {
        v15 = *v31[2];
        v16 = 0;
        v17 = v19;
        while (1)
        {
          v14 = v16;
          if (*v31[2] != v15)
          {
            objc_enumerationMutation(v18);
          }

          v32 = *(v31[1] + 8 * v16);
          v13 = [(AMDLighthouseODMLWorker *)v42 checkIfTaskShouldBeStopped:v39];
          MEMORY[0x277D82BD8](v13);
          if (!v13)
          {
            break;
          }

          v29 = [v34 objectForKey:v32];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v33, v32];
          if ([v40 containsObject:v28])
          {
            v9 = v37;
            v8 = MEMORY[0x277CCABB0];
            [v29 floatValue];
            v10 = [v8 numberWithFloat:?];
            [v9 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v10);
          }

          else
          {
            v11 = MEMORY[0x277CCABB0];
            [v29 floatValue];
            v12 = [v11 numberWithFloat:?];
            [v38 setObject:? forKeyedSubscript:?];
            MEMORY[0x277D82BD8](v12);
          }

          objc_storeStrong(&v28, 0);
          objc_storeStrong(&v29, 0);
          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [v18 countByEnumeratingWithState:v31 objects:v44 count:16];
            if (!v17)
            {
              goto LABEL_16;
            }
          }
        }

        v43 = 0;
        v30 = 1;
      }

      else
      {
LABEL_16:
        v30 = 0;
      }

      MEMORY[0x277D82BD8](v18);
      if (!v30)
      {
        v30 = 0;
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      if (v30)
      {
        break;
      }

      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v26 countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v23)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
LABEL_22:
    v30 = 0;
  }

  MEMORY[0x277D82BD8](v26);
  if (!v30)
  {
    v5 = objc_alloc(MEMORY[0x277D25410]);
    v43 = [v5 initWithJSONResult:v38 namespaceName:TrialNamespace factorName:@"recipe" additionalKeyVariables:v37];
    v30 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v43;

  return v6;
}

- (id)logDeDiscoResults:(id)a3 outError:(id *)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v75 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v73 = a4;
  v72 = [(AMDLighthouseODMLWorker *)v75 triExperimentIdentifiers];
  if (v72)
  {
    v70 = [v72 experimentId];
    v69 = [v72 deploymentId];
    v68 = [v72 treatmentId];
    v39 = MEMORY[0x277CCACA8];
    v41 = [MEMORY[0x277CCABB0] numberWithInt:v69];
    v40 = [v41 stringValue];
    v67 = [v39 stringWithFormat:@"com.apple.ampaiml.AppleMediaDiscoveryFrameworkLighthousePlugin:%@:%@:%@", v70, v40, v68];
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v43 = [obj countByEnumeratingWithState:__b objects:v80 count:16];
    if (v43)
    {
      v36 = *__b[2];
      v37 = 0;
      v38 = v43;
      while (1)
      {
        v35 = v37;
        if (*__b[2] != v36)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(__b[1] + 8 * v37);
        v63 = [v65 objectForKey:ModelMetrics];
        v62 = [v65 objectForKey:ModelName];
        memset(v60, 0, sizeof(v60));
        v33 = MEMORY[0x277D82BE0](v63);
        v34 = [v33 countByEnumeratingWithState:v60 objects:v79 count:16];
        if (v34)
        {
          v30 = *v60[2];
          v31 = 0;
          v32 = v34;
          while (1)
          {
            v29 = v31;
            if (*v60[2] != v30)
            {
              objc_enumerationMutation(v33);
            }

            v61 = *(v60[1] + 8 * v31);
            v28 = [(AMDLighthouseODMLWorker *)v75 checkIfTaskShouldBeStopped:v73];
            MEMORY[0x277D82BD8](v28);
            if (!v28)
            {
              break;
            }

            v59 = [v63 objectForKey:v61];
            v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v62, v61];
            v26 = MEMORY[0x277CCABB0];
            [v59 floatValue];
            v27 = [v26 numberWithFloat:?];
            [v66 setObject:? forKeyedSubscript:?];
            MEMORY[0x277D82BD8](v27);
            objc_storeStrong(&v58, 0);
            objc_storeStrong(&v59, 0);
            ++v31;
            if (v29 + 1 >= v32)
            {
              v31 = 0;
              v32 = [v33 countByEnumeratingWithState:v60 objects:v79 count:16];
              if (!v32)
              {
                goto LABEL_15;
              }
            }
          }

          v76 = 0;
          v71 = 1;
        }

        else
        {
LABEL_15:
          v71 = 0;
        }

        MEMORY[0x277D82BD8](v33);
        if (!v71)
        {
          v71 = 0;
        }

        objc_storeStrong(&v62, 0);
        objc_storeStrong(&v63, 0);
        if (v71)
        {
          break;
        }

        ++v37;
        if (v35 + 1 >= v38)
        {
          v37 = 0;
          v38 = [obj countByEnumeratingWithState:__b objects:v80 count:16];
          if (!v38)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
LABEL_21:
      v71 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v71)
    {
      oslog = MEMORY[0x277D82BE0](sLog);
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v78, v66);
        _os_log_debug_impl(&dword_2400B3000, oslog, type, "dataToUpload: %@", v78, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v55 = MEMORY[0x277D82BE0](sLog);
      v54 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v77, v67);
        _os_log_debug_impl(&dword_2400B3000, v55, v54, "baseKeyWithTrialInfo: %@", v77, 0xCu);
      }

      objc_storeStrong(&v55, 0);
      v53 = 0;
      v25 = [(AMDLighthouseODMLWorker *)v75 recipe];
      v52 = [(NSDictionary *)v25 objectForKey:@"dediscoEncodingSchema"];
      MEMORY[0x277D82BD8](v25);
      if (v52)
      {
        goto LABEL_36;
      }

      v51 = [(AMDLighthouseODMLWorker *)v75 modelsURL];
      if (v51)
      {
        v50 = [v51 URLByAppendingPathComponent:EncodingPath];
        v48 = 0;
        v24 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v50 options:0 error:&v48];
        objc_storeStrong(&v53, v48);
        v49 = v24;
        if (v53)
        {
          v7 = objc_alloc(MEMORY[0x277CCA9B8]);
          v23 = [v7 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:150 userInfo:0];
          v8 = v23;
          *v73 = v23;
        }

        v47 = v53;
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v49 options:0 error:&v47];
        objc_storeStrong(&v53, v47);
        v9 = v52;
        v52 = v22;
        MEMORY[0x277D82BD8](v9);
        if (v53)
        {
          v10 = objc_alloc(MEMORY[0x277CCA9B8]);
          v21 = [v10 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:151 userInfo:0];
          v11 = v21;
          *v73 = v21;
        }

        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v50, 0);
        v71 = 0;
      }

      else
      {
        v6 = v53;
        *v73 = v53;
        v76 = 0;
        v71 = 1;
      }

      objc_storeStrong(&v51, 0);
      if (!v71)
      {
LABEL_36:
        v18 = MEMORY[0x277D41430];
        v17 = v66;
        v19 = [v52 objectForKeyedSubscript:DataContentTypes];
        v46 = v53;
        v20 = [v18 encodeDataAndRecord:v17 dataTypeContent:? baseKey:? errorOut:?];
        objc_storeStrong(&v53, v46);
        MEMORY[0x277D82BD8](v19);
        if ((v20 & 1) == 1 && !v53)
        {
          v76 = [MEMORY[0x277CCABB0] numberWithLong:1];
          v71 = 1;
        }

        else
        {
          NSLog(&cfstr_FailedToSubmit.isa, v53);
          v12 = objc_alloc(MEMORY[0x277CCA9B8]);
          v16 = [v12 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:144 userInfo:0];
          v13 = v16;
          *v73 = v16;
          v76 = 0;
          v71 = 1;
        }
      }

      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v53, 0);
    }

    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v68, 0);
    objc_storeStrong(&v70, 0);
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v44 = [v4 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:145 userInfo:0];
    v5 = v44;
    *v73 = v44;
    v76 = 0;
    v71 = 1;
  }

  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v14 = v76;

  return v14;
}

- (id)logAllResultsToCoreAnalyticsOrDeDisco:(id)a3 withLoggingStrategies:(id)a4 outError:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = a5;
  v36 = 0;
  if (([v38 containsObject:DeDisco] & 1) == 0 || ((v35 = -[AMDLighthouseODMLWorker logDeDiscoResults:outError:](v40, "logDeDiscoResults:outError:", location[0], v37)) != 0 ? (v36 = 1, v34 = 0) : (v41 = 0, v34 = 1), objc_storeStrong(&v35, 0), !v34))
  {
    if (([v38 containsObject:MultipleDeDisco] & 1) == 0 || ((v33 = -[AMDLighthouseODMLWorker logMultipleDeDiscoResults:outError:](v40, "logMultipleDeDiscoResults:outError:", location[0], v37)) != 0 ? (v36 = 1, v34 = 0) : (v41 = 0, v34 = 1), objc_storeStrong(&v33, 0), !v34))
    {
      if (([v38 containsObject:CoreAnalytics] & 1) == 0)
      {
        goto LABEL_36;
      }

      memset(__b, 0, sizeof(__b));
      v21 = MEMORY[0x277D82BE0](location[0]);
      v22 = [v21 countByEnumeratingWithState:__b objects:v43 count:16];
      if (v22)
      {
        v18 = *__b[2];
        v19 = 0;
        v20 = v22;
        while (1)
        {
          v17 = v19;
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(v21);
          }

          v32 = *(__b[1] + 8 * v19);
          v30 = [v32 objectForKey:ModelMetrics];
          v29 = [v32 objectForKey:ModelName];
          memset(v27, 0, sizeof(v27));
          v15 = MEMORY[0x277D82BE0](v30);
          v16 = [v15 countByEnumeratingWithState:v27 objects:v42 count:16];
          if (v16)
          {
            v12 = *v27[2];
            v13 = 0;
            v14 = v16;
            while (1)
            {
              v11 = v13;
              if (*v27[2] != v12)
              {
                objc_enumerationMutation(v15);
              }

              v28 = *(v27[1] + 8 * v13);
              v10 = [(AMDLighthouseODMLWorker *)v40 checkIfTaskShouldBeStopped:v37];
              MEMORY[0x277D82BD8](v10);
              if (!v10)
              {
                break;
              }

              v26 = [v30 objectForKey:v28];
              v25 = [(AMDLighthouseODMLWorker *)v40 logResultToCoreAnalytics:v29 withMetric:v28 withValue:v26];
              if (v25)
              {
                v36 = 1;
                v34 = 0;
              }

              else
              {
                v41 = 0;
                v34 = 1;
              }

              objc_storeStrong(&v25, 0);
              objc_storeStrong(&v26, 0);
              if (v34)
              {
                goto LABEL_29;
              }

              ++v13;
              if (v11 + 1 >= v14)
              {
                v13 = 0;
                v14 = [v15 countByEnumeratingWithState:v27 objects:v42 count:16];
                if (!v14)
                {
                  goto LABEL_28;
                }
              }
            }

            v41 = 0;
            v34 = 1;
          }

          else
          {
LABEL_28:
            v34 = 0;
          }

LABEL_29:
          MEMORY[0x277D82BD8](v15);
          if (!v34)
          {
            v34 = 0;
          }

          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v30, 0);
          if (v34)
          {
            break;
          }

          ++v19;
          if (v17 + 1 >= v20)
          {
            v19 = 0;
            v20 = [v21 countByEnumeratingWithState:__b objects:v43 count:16];
            if (!v20)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else
      {
LABEL_34:
        v34 = 0;
      }

      MEMORY[0x277D82BD8](v21);
      if (!v34)
      {
LABEL_36:
        if (v36)
        {
          v41 = [MEMORY[0x277CCABB0] numberWithLong:1];
        }

        else
        {
          v5 = objc_alloc(MEMORY[0x277CCA9B8]);
          v9 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:143 userInfo:0];
          v6 = v9;
          *v37 = v9;
          v41 = 0;
        }

        v34 = 1;
      }
    }
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v41;

  return v7;
}

- (id)targetingKeyValuePairsForKeys:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = objc_alloc_init(AMDDODMLCustomTargetingHelper);
  v6 = [v7[0] mainTargetingResolver:location[0] error:a4];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)gatherMetricsToReturn:(id)a3 withRecipe:(id)a4 withAttachments:(id)a5 outError:(id *)a6
{
  v127 = *MEMORY[0x277D85DE8];
  v122 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v120 = 0;
  objc_storeStrong(&v120, a4);
  v119 = 0;
  objc_storeStrong(&v119, a5);
  v118 = a6;
  v117 = [v120 objectForKeyedSubscript:DataProcessingAndModelTraining];
  if (v117)
  {
    v77 = [(AMDLighthouseODMLWorker *)v122 checkIfTaskShouldBeStopped:v118];
    MEMORY[0x277D82BD8](v77);
    if (v77)
    {
      v115 = [v120 objectForKeyedSubscript:AttachmentInstructions];
      v75 = [AMDDODMLAttachmentProcessor alloc];
      v76 = [(AMDLighthouseODMLWorker *)v122 attachments];
      v114 = [AMDDODMLAttachmentProcessor initWithAttachmentURLs:v75 withInstructions:"initWithAttachmentURLs:withInstructions:error:errorDomain:" error:? errorDomain:?];
      MEMORY[0x277D82BD8](v76);
      if (v114)
      {
        v8 = [AMDDODMLDataProcessor alloc];
        v113 = [(AMDDODMLDataProcessor *)v8 initWithActionArray:MEMORY[0x277CBEBF8] withAttachmentProcessor:v114];
        if (v113)
        {
          [v113 setElementsInCoreDictionary:location[0]];
          v112 = objc_alloc_init(MEMORY[0x277CBEB18]);
          memset(__b, 0, sizeof(__b));
          v72 = MEMORY[0x277D82BE0](v117);
          v73 = [v72 countByEnumeratingWithState:__b objects:v126 count:16];
          if (v73)
          {
            v69 = *__b[2];
            v70 = 0;
            v71 = v73;
            while (1)
            {
              v68 = v70;
              if (*__b[2] != v69)
              {
                objc_enumerationMutation(v72);
              }

              v111 = *(__b[1] + 8 * v70);
              v109 = [v111 objectForKey:ModelName];
              if (v109)
              {
                v66 = [(AMDLighthouseODMLWorker *)v122 checkIfTaskShouldBeStopped:v118];
                MEMORY[0x277D82BD8](v66);
                if (v66)
                {
                  v108 = [v111 objectForKey:DataProcessing];
                  if (!v108 || (([v113 resetDataProcessorWithRecipe:v108], (v107 = objc_msgSend(v113, "processRecipe:errorDomain:", v118, AMDLighthouseODMLPluginErrorDomain)) != 0) ? (v116 = 0) : (v123 = 0, v116 = 1), objc_storeStrong(&v107, 0), !v116))
                  {
                    v106 = [v111 objectForKey:TaskParameters];
                    if (!v106)
                    {
                      goto LABEL_48;
                    }

                    v13 = objc_alloc(MEMORY[0x277D25400]);
                    v105 = [v13 initWithParametersDict:v106];
                    v14 = objc_alloc(MEMORY[0x277D253F0]);
                    v104 = [v14 initWithParameters:v105 attachments:v119];
                    v103 = [v105 objectForKeyedSubscript:UseCoreMLTrainer];
                    if (!v103)
                    {
                      v15 = [MEMORY[0x277CCABB0] numberWithLong:0];
                      v16 = v103;
                      v103 = v15;
                      MEMORY[0x277D82BD8](v16);
                    }

                    v102 = [v105 objectForKeyedSubscript:IsHeuristicModel];
                    if (!v102)
                    {
                      v17 = [MEMORY[0x277CCABB0] numberWithLong:0];
                      v18 = v102;
                      v102 = v17;
                      MEMORY[0x277D82BD8](v18);
                    }

                    if ([v102 longValue] == 1 && objc_msgSend(v103, "longValue") == 1)
                    {
                      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
                      v65 = [v19 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:143 userInfo:0];
                      v20 = v65;
                      *v118 = v65;
                      v123 = 0;
                      v116 = 1;
                    }

                    else
                    {
                      v64 = [(AMDLighthouseODMLWorker *)v122 checkIfTaskShouldBeStopped:v118];
                      MEMORY[0x277D82BD8](v64);
                      if (v64)
                      {
                        v101 = 0;
                        if ([v103 longValue] == 1)
                        {
                          v61 = [AMDCoreMLDataProvider alloc];
                          v60 = [v113 getInputSize];
                          v63 = [v113 getElementsInSampleDictionary];
                          v62 = [v113 getInputDictionary];
                          v100 = [(AMDCoreMLDataProvider *)v61 initWithInputs:v60 featureSizeMap:v63 inputDictionary:?];
                          MEMORY[0x277D82BD8](v62);
                          MEMORY[0x277D82BD8](v63);
                          v99 = objc_alloc_init(AMDCoreMLTrainer);
                          v21 = [(AMDCoreMLTrainer *)v99 runTask:v104 error:v118 errorDomain:AMDLighthouseODMLPluginErrorDomain dataProvider:v100];
                          v22 = v101;
                          v101 = v21;
                          MEMORY[0x277D82BD8](v22);
                          objc_storeStrong(&v99, 0);
                          objc_storeStrong(&v100, 0);
                        }

                        else if ([v102 longValue] == 1)
                        {
                          v57 = [AMDCoreMLDataProvider alloc];
                          v56 = [v113 getInputSize];
                          v59 = [v113 getElementsInSampleDictionary];
                          v58 = [v113 getInputDictionary];
                          v98 = [(AMDCoreMLDataProvider *)v57 initWithInputs:v56 featureSizeMap:v59 inputDictionary:?];
                          MEMORY[0x277D82BD8](v58);
                          MEMORY[0x277D82BD8](v59);
                          v97 = objc_alloc_init(AMDHeuristicModelEvaluator);
                          v23 = [(AMDHeuristicModelEvaluator *)v97 runTask:v104 error:v118 errorDomain:AMDLighthouseODMLPluginErrorDomain dataProvider:v98];
                          v24 = v101;
                          v101 = v23;
                          MEMORY[0x277D82BD8](v24);
                          objc_storeStrong(&v97, 0);
                          objc_storeStrong(&v98, 0);
                        }

                        else
                        {
                          v53 = [AMDDODMLEspressoDataProvider alloc];
                          v52 = [v113 getInputSize];
                          v55 = [v113 getElementsInSampleDictionary];
                          v54 = [v113 getInputDictionary];
                          v96 = [(AMDDODMLEspressoDataProvider *)v53 initWithInputs:v52 featureSizeMap:v55 inputDictionary:?];
                          MEMORY[0x277D82BD8](v54);
                          MEMORY[0x277D82BD8](v55);
                          v95 = objc_alloc_init(AMDDODMLTrainer);
                          v25 = [(AMDDODMLTrainer *)v95 runTask:v104 error:v118 errorDomain:AMDLighthouseODMLPluginErrorDomain dataProvider:v96 attachmentProcessor:v114];
                          v26 = v101;
                          v101 = v25;
                          MEMORY[0x277D82BD8](v26);
                          objc_storeStrong(&v95, 0);
                          objc_storeStrong(&v96, 0);
                        }

                        if (v101)
                        {
                          v49 = [v101 JSONResult];
                          v94 = [v49 objectForKey:ModelMetrics];
                          MEMORY[0x277D82BD8](v49);
                          memset(v92, 0, sizeof(v92));
                          v50 = [v94 allKeys];
                          v51 = [v50 countByEnumeratingWithState:v92 objects:v125 count:16];
                          if (v51)
                          {
                            v46 = *v92[2];
                            v47 = 0;
                            v48 = v51;
                            while (1)
                            {
                              v45 = v47;
                              if (*v92[2] != v46)
                              {
                                objc_enumerationMutation(v50);
                              }

                              v93 = *(v92[1] + 8 * v47);
                              v91 = [v94 objectForKey:v93];
                              [v113 setElementInCoreDictionary:v91 withKey:v93];
                              objc_storeStrong(&v91, 0);
                              ++v47;
                              if (v45 + 1 >= v48)
                              {
                                v47 = 0;
                                v48 = [v50 countByEnumeratingWithState:v92 objects:v125 count:16];
                                if (!v48)
                                {
                                  break;
                                }
                              }
                            }
                          }

                          MEMORY[0x277D82BD8](v50);
                          objc_storeStrong(&v94, 0);
                          v116 = 0;
                        }

                        else
                        {
                          v123 = 0;
                          v116 = 1;
                        }

                        objc_storeStrong(&v101, 0);
                      }

                      else
                      {
                        v123 = 0;
                        v116 = 1;
                      }
                    }

                    objc_storeStrong(&v102, 0);
                    objc_storeStrong(&v103, 0);
                    objc_storeStrong(&v104, 0);
                    objc_storeStrong(&v105, 0);
                    if (!v116)
                    {
LABEL_48:
                      v44 = [(AMDLighthouseODMLWorker *)v122 checkIfTaskShouldBeStopped:v118];
                      MEMORY[0x277D82BD8](v44);
                      if (v44)
                      {
                        v90 = [v111 objectForKey:DataPostProcessing];
                        if (!v90 || (([v113 resetDataProcessorWithRecipe:v90], (v89 = objc_msgSend(v113, "processRecipe:errorDomain:", v118, AMDLighthouseODMLPluginErrorDomain)) != 0) ? (v116 = 0) : (v123 = 0, v116 = 1), objc_storeStrong(&v89, 0), !v116))
                        {
                          v43 = [(AMDLighthouseODMLWorker *)v122 checkIfTaskShouldBeStopped:v118];
                          MEMORY[0x277D82BD8](v43);
                          if (v43)
                          {
                            v88 = [v111 objectForKeyedSubscript:FinalMetricsToCollect];
                            v87 = [v120 objectForKeyedSubscript:LoggingStrategies];
                            if (!v88)
                            {
                              goto LABEL_74;
                            }

                            v86 = objc_opt_new();
                            v85 = objc_opt_new();
                            [v86 setObject:v109 forKey:ModelName];
                            memset(v83, 0, sizeof(v83));
                            v41 = MEMORY[0x277D82BE0](v88);
                            v42 = [v41 countByEnumeratingWithState:v83 objects:v124 count:16];
                            if (v42)
                            {
                              v38 = *v83[2];
                              v39 = 0;
                              v40 = v42;
                              while (1)
                              {
                                v37 = v39;
                                if (*v83[2] != v38)
                                {
                                  objc_enumerationMutation(v41);
                                }

                                v84 = *(v83[1] + 8 * v39);
                                v82 = [v113 getElementInCoreDictionary:v84];
                                if (v82)
                                {
                                  if ([v82 count] == 1)
                                  {
                                    v35 = [v82 firstObject];
                                    v34 = [v35 stringValue];
                                    [v85 setObject:? forKeyedSubscript:?];
                                    MEMORY[0x277D82BD8](v34);
                                    MEMORY[0x277D82BD8](v35);
                                    v116 = 0;
                                  }

                                  else
                                  {
                                    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
                                    v33 = [v29 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:139 userInfo:0];
                                    v30 = v33;
                                    *v118 = v33;
                                    v123 = 0;
                                    v116 = 1;
                                  }
                                }

                                else
                                {
                                  v27 = objc_alloc(MEMORY[0x277CCA9B8]);
                                  v36 = [v27 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:138 userInfo:0];
                                  v28 = v36;
                                  *v118 = v36;
                                  v123 = 0;
                                  v116 = 1;
                                }

                                objc_storeStrong(&v82, 0);
                                if (v116)
                                {
                                  break;
                                }

                                ++v39;
                                if (v37 + 1 >= v40)
                                {
                                  v39 = 0;
                                  v40 = [v41 countByEnumeratingWithState:v83 objects:v124 count:16];
                                  if (!v40)
                                  {
                                    goto LABEL_70;
                                  }
                                }
                              }
                            }

                            else
                            {
LABEL_70:
                              v116 = 0;
                            }

                            MEMORY[0x277D82BD8](v41);
                            if (!v116)
                            {
                              [v86 setObject:v85 forKey:ModelMetrics];
                              [v112 addObject:v86];
                              v116 = 0;
                            }

                            objc_storeStrong(&v85, 0);
                            objc_storeStrong(&v86, 0);
                            if (!v116)
                            {
LABEL_74:
                              v116 = 0;
                            }

                            objc_storeStrong(&v87, 0);
                            objc_storeStrong(&v88, 0);
                          }

                          else
                          {
                            v123 = 0;
                            v116 = 1;
                          }
                        }

                        objc_storeStrong(&v90, 0);
                      }

                      else
                      {
                        v123 = 0;
                        v116 = 1;
                      }
                    }

                    objc_storeStrong(&v106, 0);
                  }

                  objc_storeStrong(&v108, 0);
                }

                else
                {
                  v123 = 0;
                  v116 = 1;
                }
              }

              else
              {
                v11 = objc_alloc(MEMORY[0x277CCA9B8]);
                v67 = [v11 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:137 userInfo:0];
                v12 = v67;
                *v118 = v67;
                v123 = 0;
                v116 = 1;
              }

              objc_storeStrong(&v109, 0);
              if (v116)
              {
                break;
              }

              ++v70;
              if (v68 + 1 >= v71)
              {
                v70 = 0;
                v71 = [v72 countByEnumeratingWithState:__b objects:v126 count:16];
                if (!v71)
                {
                  goto LABEL_82;
                }
              }
            }
          }

          else
          {
LABEL_82:
            v116 = 0;
          }

          MEMORY[0x277D82BD8](v72);
          if (!v116)
          {
            v123 = MEMORY[0x277D82BE0](v112);
            v116 = 1;
          }

          objc_storeStrong(&v112, 0);
        }

        else
        {
          v9 = objc_alloc(MEMORY[0x277CCA9B8]);
          v74 = [v9 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:126 userInfo:0];
          v10 = v74;
          *v118 = v74;
          v123 = 0;
          v116 = 1;
        }

        objc_storeStrong(&v113, 0);
      }

      else
      {
        v123 = 0;
        v116 = 1;
      }

      objc_storeStrong(&v114, 0);
      objc_storeStrong(&v115, 0);
    }

    else
    {
      v123 = 0;
      v116 = 1;
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v78 = [v6 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:134 userInfo:0];
    v7 = v78;
    *v118 = v78;
    v123 = 0;
    v116 = 1;
  }

  objc_storeStrong(&v117, 0);
  objc_storeStrong(&v119, 0);
  objc_storeStrong(&v120, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v31 = v123;

  return v31;
}

- (id)checkIfTaskShouldBeStopped:(id *)a3
{
  if ([(NSNumber *)self->_taskShouldBeStopped intValue]== 1)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v6 = [v3 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:148 userInfo:0];
    v4 = v6;
    *a3 = v6;
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLong:1];
  }

  return v8;
}

- (id)checkIfModelShouldBeDownloaded:(id)a3 outError:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v4 = objc_alloc(MEMORY[0x277D253F8]);
  v18 = [v4 initWithURLs:MEMORY[0x277CBEBF8]];
  v17 = [location[0] objectForKeyedSubscript:DataProcessingToCheckIfDownloadModel];
  if (!v17)
  {
    objc_storeStrong(&v17, MEMORY[0x277CBEBF8]);
  }

  v12 = [AMDDODMLAttachmentProcessor alloc];
  v11 = v18;
  v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v16 = [AMDDODMLAttachmentProcessor initWithAttachmentURLs:v12 withInstructions:"initWithAttachmentURLs:withInstructions:error:errorDomain:" error:v11 errorDomain:?];
  MEMORY[0x277D82BD8](v13);
  v5 = [AMDDODMLDataProcessor alloc];
  v15 = [(AMDDODMLDataProcessor *)v5 initWithActionArray:v17 withAttachmentProcessor:v16];
  if (v15)
  {
    v21 = MEMORY[0x277D82BE0](v15);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [v6 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:126 userInfo:0];
    v7 = v10;
    *v19 = v10;
    v21 = 0;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v8 = v21;

  return v8;
}

- (id)performGenericTaskWithDataProcessingCarryover:(id)a3 outError:(id *)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18[1] = a4;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
  taskShouldBeStopped = v20->_taskShouldBeStopped;
  v20->_taskShouldBeStopped = v4;
  MEMORY[0x277D82BD8](taskShouldBeStopped);
  v18[0] = MEMORY[0x277D82BE0](sLog);
  v17 = 1;
  if (os_log_type_enabled(v18[0], OS_LOG_TYPE_INFO))
  {
    log = v18[0];
    type = v17;
    __os_log_helper_16_0_0(v16);
    _os_log_impl(&dword_2400B3000, log, type, "AMDLighthouseODMLPlugin: Start task", v16, 2u);
  }

  objc_storeStrong(v18, 0);
  v9 = v20;
  v8 = location[0];
  v11 = [(AMDLighthouseODMLWorker *)v20 recipe];
  v10 = [(AMDLighthouseODMLWorker *)v20 attachments];
  v15 = [AMDLighthouseODMLWorker gatherMetricsToReturn:v9 withRecipe:"gatherMetricsToReturn:withRecipe:withAttachments:outError:" withAttachments:v8 outError:v11];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  if (v15)
  {
    v21 = MEMORY[0x277D82BE0](v15);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v6 = v21;

  return v6;
}

- (void)stop
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:{1, a2}];
  taskShouldBeStopped = self->_taskShouldBeStopped;
  self->_taskShouldBeStopped = v2;
  MEMORY[0x277D82BD8](taskShouldBeStopped);
}

@end
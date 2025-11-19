@interface ATXModeAppConfigurationMetricLogger
- (void)logMetricsWithXPCActivity:(id)a3;
@end

@implementation ATXModeAppConfigurationMetricLogger

- (void)logMetricsWithXPCActivity:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v3 = [MEMORY[0x277CEB440] sharedInstance];
  [v3 configuredModes];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = v43 = 0u;
  obj = [v27 allValues];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    v29 = *v41;
    v30 = v3;
    do
    {
      v7 = 0;
      v31 = v5;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 modeIdentifier];
        v39 = 0;
        v11 = [v3 appConfigurationsForModeIdentifier:v10 error:&v39];
        v12 = v39;

        v34 = v11;
        if (v12)
        {
          v13 = __atxlog_handle_metrics();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v14 = objc_opt_class();
          NSStringFromClass(v14);
          v15 = v33 = v9;
          v16 = [v12 localizedDescription];
          [v8 semanticType];
          v17 = DNDModeSemanticTypeToString();
          *buf = 138412802;
          v46 = v15;
          v47 = 2112;
          v48 = v16;
          v49 = 2112;
          v50 = v17;
          _os_log_error_impl(&dword_2263AA000, v13, OS_LOG_TYPE_ERROR, "%@: Got error: %@, when getting AppConfigturation for %@", buf, 0x20u);

          v5 = v31;
        }

        else
        {
          v33 = v9;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v13 = [v11 allKeys];
          v18 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v36;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(v13);
                }

                v22 = *(*(&v35 + 1) + 8 * i);
                v23 = objc_opt_new();
                v24 = [v22 bundleID];
                [v23 setBundleId:v24];

                [v8 semanticType];
                v25 = DNDModeSemanticTypeToString();
                [v23 setModeSemanticType:v25];

                [v23 logToCoreAnalytics];
              }

              v19 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v19);
            v6 = v29;
            v3 = v30;
            v5 = v31;
          }
        }

        v9 = v33;
LABEL_18:

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v5);
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end
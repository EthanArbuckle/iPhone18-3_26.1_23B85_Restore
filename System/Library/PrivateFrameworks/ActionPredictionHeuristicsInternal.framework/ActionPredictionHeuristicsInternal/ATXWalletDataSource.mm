@interface ATXWalletDataSource
- (ATXWalletDataSource)initWithDevice:(id)a3;
- (id)_extractRelevantSemanticTagsFromPass:(id)a3;
- (unint64_t)_getPassStyleMaskForString:(id)a3;
- (void)passesWithStyle:(id)a3 callback:(id)a4;
@end

@implementation ATXWalletDataSource

- (ATXWalletDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXWalletDataSource;
  v6 = [(ATXWalletDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)passesWithStyle:(id)a3 callback:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ((ATXHeuristicCanLearnFromApp(&unk_2850BA278) & 1) == 0)
  {
LABEL_6:
    (*(v6 + 2))(v6, MEMORY[0x277CBEBF8], 0);
    goto LABEL_31;
  }

  v7 = +[ATXWalletDataSourceSharedData sharedInstance];
  v8 = [v7 hasEmptyWalletPasses];

  if (v8)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Heuristics have cached no Wallet passes", buf, 2u);
    }

    goto LABEL_6;
  }

  v10 = objc_opt_new();
  v48 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  if (![MEMORY[0x277D37FC0] isPassLibraryAvailable])
  {
    goto LABEL_30;
  }

  v46 = v6;
  v47 = v5;
  v11 = [(ATXWalletDataSource *)self _getPassStyleMaskForString:v5];
  v12 = +[ATXHeuristicResultCache sharedPassLibrary];
  v13 = [v12 passesOfStyles:v11];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = *v53;
  v49 = *MEMORY[0x277D38780];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v53 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v52 + 1) + 8 * i);
      v19 = objc_autoreleasePoolPush();
      v20 = objc_opt_new();
      v21 = [v18 relevantDate];

      if (v21)
      {
        v22 = MEMORY[0x277CCABB0];
        v23 = [v18 relevantDate];
        [v23 timeIntervalSinceReferenceDate];
        v24 = [v22 numberWithDouble:?];
        [v20 setObject:v24 forKeyedSubscript:@"date"];
      }

      v25 = [v18 localizedDescription];
      [v20 setObject:v25 forKeyedSubscript:@"description"];

      v26 = [v18 embeddedLocationsArray];
      v27 = [v26 allObjects];
      [v20 setObject:v27 forKeyedSubscript:@"locations"];

      v28 = [v18 localizedName];
      [v20 setObject:v28 forKeyedSubscript:@"name"];

      [v20 setObject:v18 forKeyedSubscript:@"pass"];
      v29 = [v18 serialNumber];
      [v20 setObject:v29 forKeyedSubscript:@"serial"];

      v30 = [v18 organizationName];
      [v20 setObject:v30 forKeyedSubscript:@"organization"];

      v31 = [v18 passURL];
      v32 = [v31 absoluteString];
      [v20 setObject:v32 forKeyedSubscript:@"url"];

      v33 = [v18 allSemantics];
      v34 = [v33 count];

      if (v34)
      {
        v35 = [(ATXWalletDataSource *)self _extractRelevantSemanticTagsFromPass:v18];
        [v20 setValuesForKeysWithDictionary:v35];
      }

      if ((v11 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      v36 = [v20 objectForKeyedSubscript:v49];
      v37 = v36;
      if (v36)
      {
        v38 = [v36 earlierDate:v48];

        if (v38 != v37)
        {

LABEL_21:
          [v10 addObject:v20];
          goto LABEL_27;
        }

        v39 = __atxlog_handle_heuristic();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [ATXWalletDataSource passesWithStyle:v57 callback:v18];
        }
      }

      else
      {
        v39 = __atxlog_handle_heuristic();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [ATXWalletDataSource passesWithStyle:buf callback:v18];
        }
      }

LABEL_27:
      objc_autoreleasePoolPop(v19);
    }

    v15 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  }

  while (v15);
LABEL_29:

  v6 = v46;
  v5 = v47;
LABEL_30:
  v40 = [v10 count] == 0;
  v41 = +[ATXWalletDataSourceSharedData sharedInstance];
  [v41 setHasEmptyWalletPasses:v40];

  v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
  v56[0] = v42;
  v43 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"serial" ascending:1];
  v56[1] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  [v10 sortUsingDescriptors:v44];

  (*(v6 + 2))(v6, v10, 0);
LABEL_31:

  v45 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_getPassStyleMaskForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"ticket"])
    {
      v5 = 4;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:@"boardingPass"])
    {
      v5 = 16;
      goto LABEL_9;
    }
  }

  v6 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ATXWalletDataSource _getPassStyleMaskForString:v6];
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_extractRelevantSemanticTagsFromPass:(id)a3
{
  v95[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 allSemantics];

  v6 = *MEMORY[0x277D387F0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387F0]];
  v8 = [v7 stringValue];
  [v4 setObject:v8 forKeyedSubscript:v6];

  v9 = *MEMORY[0x277D387E8];
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387E8]];
  v11 = [v10 stringValue];
  [v4 setObject:v11 forKeyedSubscript:v9];

  v12 = *MEMORY[0x277D38770];
  v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38770]];
  v14 = [v13 dateValue];
  [v4 setObject:v14 forKeyedSubscript:v12];

  v15 = *MEMORY[0x277D38768];
  v16 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38768]];
  v17 = [v16 dateValue];
  [v4 setObject:v17 forKeyedSubscript:v15];

  v18 = *MEMORY[0x277D387B8];
  v19 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387B8]];
  v20 = [v19 numberValue];
  [v4 setObject:v20 forKeyedSubscript:v18];

  v21 = *MEMORY[0x277D38808];
  v22 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38808]];
  v23 = [v22 stringValue];
  [v4 setObject:v23 forKeyedSubscript:v21];

  v24 = *MEMORY[0x277D38818];
  v25 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38818]];
  v26 = [v25 stringValue];
  [v4 setObject:v26 forKeyedSubscript:v24];

  v27 = *MEMORY[0x277D38800];
  v28 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38800]];
  v29 = [v28 stringValue];
  [v4 setObject:v29 forKeyedSubscript:v27];

  v30 = *MEMORY[0x277D38810];
  v31 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38810]];
  v32 = [v31 stringValue];
  [v4 setObject:v32 forKeyedSubscript:v30];

  v33 = *MEMORY[0x277D387A8];
  v34 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387A8]];
  v35 = [v34 locationValue];

  if (v35)
  {
    v94[0] = @"lat";
    v36 = MEMORY[0x277CCABB0];
    [v35 coordinate];
    v37 = [v36 numberWithDouble:?];
    v94[1] = @"lon";
    v95[0] = v37;
    v38 = MEMORY[0x277CCABB0];
    [v35 coordinate];
    v40 = [v38 numberWithDouble:v39];
    v95[1] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
    [v4 setObject:v41 forKeyedSubscript:v33];
  }

  v42 = *MEMORY[0x277D38780];
  v43 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38780]];
  v44 = [v43 dateValue];
  [v4 setObject:v44 forKeyedSubscript:v42];

  v45 = *MEMORY[0x277D38778];
  v46 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38778]];
  v47 = [v46 dateValue];
  [v4 setObject:v47 forKeyedSubscript:v45];

  v48 = *MEMORY[0x277D387D0];
  v49 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387D0]];
  v50 = [v49 stringValue];
  [v4 setObject:v50 forKeyedSubscript:v48];

  v51 = *MEMORY[0x277D38798];
  v52 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38798]];
  v53 = [v52 locationValue];

  if (v53)
  {
    v92[0] = @"lat";
    v54 = MEMORY[0x277CCABB0];
    [v53 coordinate];
    v55 = [v54 numberWithDouble:?];
    v92[1] = @"lon";
    v93[0] = v55;
    v56 = MEMORY[0x277CCABB0];
    [v53 coordinate];
    v58 = [v56 numberWithDouble:v57];
    v93[1] = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
    [v4 setObject:v59 forKeyedSubscript:v51];
  }

  v60 = *MEMORY[0x277D387A0];
  v61 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387A0]];
  v62 = [v61 locationValue];

  if (v62)
  {
    v90[0] = @"lat";
    v63 = MEMORY[0x277CCABB0];
    [v62 coordinate];
    v64 = [v63 numberWithDouble:?];
    v90[1] = @"lon";
    v91[0] = v64;
    v65 = MEMORY[0x277CCABB0];
    [v62 coordinate];
    v67 = [v65 numberWithDouble:v66];
    v91[1] = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
    [v4 setObject:v68 forKeyedSubscript:v60];
  }

  v69 = *MEMORY[0x277D387E0];
  v70 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387E0]];
  v71 = [v70 stringValue];
  [v4 setObject:v71 forKeyedSubscript:v69];

  v72 = *MEMORY[0x277D387F8];
  v73 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387F8]];
  v74 = [v73 stringValue];
  [v4 setObject:v74 forKeyedSubscript:v72];

  v75 = *MEMORY[0x277D387B0];
  v76 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387B0]];
  v77 = [v76 numberValue];
  [v4 setObject:v77 forKeyedSubscript:v75];

  v78 = *MEMORY[0x277D387C0];
  v79 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387C0]];
  v80 = [v79 stringValue];
  [v4 setObject:v80 forKeyedSubscript:v78];

  v81 = *MEMORY[0x277D387C8];
  v82 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387C8]];
  v83 = [v82 stringValue];
  [v4 setObject:v83 forKeyedSubscript:v81];

  v84 = *MEMORY[0x277D387D8];
  v85 = [v5 objectForKeyedSubscript:*MEMORY[0x277D387D8]];
  v86 = [v85 stringValue];
  [v4 setObject:v86 forKeyedSubscript:v84];

  v87 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    [(ATXWalletDataSource *)v4 _extractRelevantSemanticTagsFromPass:v87];
  }

  v88 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)passesWithStyle:(uint64_t)a1 callback:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_1(&dword_23E3EA000, v5, v6, "ATXWalletDataSource: ignoring old pass: %@");
}

- (void)passesWithStyle:(uint64_t)a1 callback:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_1(&dword_23E3EA000, v5, v6, "ATXWalletDataSource: ignoring pass without departure date: %@");
}

- (void)_extractRelevantSemanticTagsFromPass:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_DEBUG, "Extracted relevant semantic tags from pass: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
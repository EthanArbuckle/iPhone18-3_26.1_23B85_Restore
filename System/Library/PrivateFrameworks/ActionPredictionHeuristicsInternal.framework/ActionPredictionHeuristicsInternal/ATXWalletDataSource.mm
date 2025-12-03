@interface ATXWalletDataSource
- (ATXWalletDataSource)initWithDevice:(id)device;
- (id)_extractRelevantSemanticTagsFromPass:(id)pass;
- (unint64_t)_getPassStyleMaskForString:(id)string;
- (void)passesWithStyle:(id)style callback:(id)callback;
@end

@implementation ATXWalletDataSource

- (ATXWalletDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXWalletDataSource;
  v6 = [(ATXWalletDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)passesWithStyle:(id)style callback:(id)callback
{
  v60 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  callbackCopy = callback;
  if ((ATXHeuristicCanLearnFromApp(&unk_2850BA278) & 1) == 0)
  {
LABEL_6:
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x277CBEBF8], 0);
    goto LABEL_31;
  }

  v7 = +[ATXWalletDataSourceSharedData sharedInstance];
  hasEmptyWalletPasses = [v7 hasEmptyWalletPasses];

  if (hasEmptyWalletPasses)
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

  v46 = callbackCopy;
  v47 = styleCopy;
  v11 = [(ATXWalletDataSource *)self _getPassStyleMaskForString:styleCopy];
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
      relevantDate = [v18 relevantDate];

      if (relevantDate)
      {
        v22 = MEMORY[0x277CCABB0];
        relevantDate2 = [v18 relevantDate];
        [relevantDate2 timeIntervalSinceReferenceDate];
        v24 = [v22 numberWithDouble:?];
        [v20 setObject:v24 forKeyedSubscript:@"date"];
      }

      localizedDescription = [v18 localizedDescription];
      [v20 setObject:localizedDescription forKeyedSubscript:@"description"];

      embeddedLocationsArray = [v18 embeddedLocationsArray];
      allObjects = [embeddedLocationsArray allObjects];
      [v20 setObject:allObjects forKeyedSubscript:@"locations"];

      localizedName = [v18 localizedName];
      [v20 setObject:localizedName forKeyedSubscript:@"name"];

      [v20 setObject:v18 forKeyedSubscript:@"pass"];
      serialNumber = [v18 serialNumber];
      [v20 setObject:serialNumber forKeyedSubscript:@"serial"];

      organizationName = [v18 organizationName];
      [v20 setObject:organizationName forKeyedSubscript:@"organization"];

      passURL = [v18 passURL];
      absoluteString = [passURL absoluteString];
      [v20 setObject:absoluteString forKeyedSubscript:@"url"];

      allSemantics = [v18 allSemantics];
      v34 = [allSemantics count];

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

  callbackCopy = v46;
  styleCopy = v47;
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

  (*(callbackCopy + 2))(callbackCopy, v10, 0);
LABEL_31:

  v45 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_getPassStyleMaskForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"ticket"])
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

- (id)_extractRelevantSemanticTagsFromPass:(id)pass
{
  v95[2] = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v4 = objc_opt_new();
  allSemantics = [passCopy allSemantics];

  v6 = *MEMORY[0x277D387F0];
  v7 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387F0]];
  stringValue = [v7 stringValue];
  [v4 setObject:stringValue forKeyedSubscript:v6];

  v9 = *MEMORY[0x277D387E8];
  v10 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387E8]];
  stringValue2 = [v10 stringValue];
  [v4 setObject:stringValue2 forKeyedSubscript:v9];

  v12 = *MEMORY[0x277D38770];
  v13 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38770]];
  dateValue = [v13 dateValue];
  [v4 setObject:dateValue forKeyedSubscript:v12];

  v15 = *MEMORY[0x277D38768];
  v16 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38768]];
  dateValue2 = [v16 dateValue];
  [v4 setObject:dateValue2 forKeyedSubscript:v15];

  v18 = *MEMORY[0x277D387B8];
  v19 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387B8]];
  numberValue = [v19 numberValue];
  [v4 setObject:numberValue forKeyedSubscript:v18];

  v21 = *MEMORY[0x277D38808];
  v22 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38808]];
  stringValue3 = [v22 stringValue];
  [v4 setObject:stringValue3 forKeyedSubscript:v21];

  v24 = *MEMORY[0x277D38818];
  v25 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38818]];
  stringValue4 = [v25 stringValue];
  [v4 setObject:stringValue4 forKeyedSubscript:v24];

  v27 = *MEMORY[0x277D38800];
  v28 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38800]];
  stringValue5 = [v28 stringValue];
  [v4 setObject:stringValue5 forKeyedSubscript:v27];

  v30 = *MEMORY[0x277D38810];
  v31 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38810]];
  stringValue6 = [v31 stringValue];
  [v4 setObject:stringValue6 forKeyedSubscript:v30];

  v33 = *MEMORY[0x277D387A8];
  v34 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387A8]];
  locationValue = [v34 locationValue];

  if (locationValue)
  {
    v94[0] = @"lat";
    v36 = MEMORY[0x277CCABB0];
    [locationValue coordinate];
    v37 = [v36 numberWithDouble:?];
    v94[1] = @"lon";
    v95[0] = v37;
    v38 = MEMORY[0x277CCABB0];
    [locationValue coordinate];
    v40 = [v38 numberWithDouble:v39];
    v95[1] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
    [v4 setObject:v41 forKeyedSubscript:v33];
  }

  v42 = *MEMORY[0x277D38780];
  v43 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38780]];
  dateValue3 = [v43 dateValue];
  [v4 setObject:dateValue3 forKeyedSubscript:v42];

  v45 = *MEMORY[0x277D38778];
  v46 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38778]];
  dateValue4 = [v46 dateValue];
  [v4 setObject:dateValue4 forKeyedSubscript:v45];

  v48 = *MEMORY[0x277D387D0];
  v49 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387D0]];
  stringValue7 = [v49 stringValue];
  [v4 setObject:stringValue7 forKeyedSubscript:v48];

  v51 = *MEMORY[0x277D38798];
  v52 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D38798]];
  locationValue2 = [v52 locationValue];

  if (locationValue2)
  {
    v92[0] = @"lat";
    v54 = MEMORY[0x277CCABB0];
    [locationValue2 coordinate];
    v55 = [v54 numberWithDouble:?];
    v92[1] = @"lon";
    v93[0] = v55;
    v56 = MEMORY[0x277CCABB0];
    [locationValue2 coordinate];
    v58 = [v56 numberWithDouble:v57];
    v93[1] = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
    [v4 setObject:v59 forKeyedSubscript:v51];
  }

  v60 = *MEMORY[0x277D387A0];
  v61 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387A0]];
  locationValue3 = [v61 locationValue];

  if (locationValue3)
  {
    v90[0] = @"lat";
    v63 = MEMORY[0x277CCABB0];
    [locationValue3 coordinate];
    v64 = [v63 numberWithDouble:?];
    v90[1] = @"lon";
    v91[0] = v64;
    v65 = MEMORY[0x277CCABB0];
    [locationValue3 coordinate];
    v67 = [v65 numberWithDouble:v66];
    v91[1] = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
    [v4 setObject:v68 forKeyedSubscript:v60];
  }

  v69 = *MEMORY[0x277D387E0];
  v70 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387E0]];
  stringValue8 = [v70 stringValue];
  [v4 setObject:stringValue8 forKeyedSubscript:v69];

  v72 = *MEMORY[0x277D387F8];
  v73 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387F8]];
  stringValue9 = [v73 stringValue];
  [v4 setObject:stringValue9 forKeyedSubscript:v72];

  v75 = *MEMORY[0x277D387B0];
  v76 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387B0]];
  numberValue2 = [v76 numberValue];
  [v4 setObject:numberValue2 forKeyedSubscript:v75];

  v78 = *MEMORY[0x277D387C0];
  v79 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387C0]];
  stringValue10 = [v79 stringValue];
  [v4 setObject:stringValue10 forKeyedSubscript:v78];

  v81 = *MEMORY[0x277D387C8];
  v82 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387C8]];
  stringValue11 = [v82 stringValue];
  [v4 setObject:stringValue11 forKeyedSubscript:v81];

  v84 = *MEMORY[0x277D387D8];
  v85 = [allSemantics objectForKeyedSubscript:*MEMORY[0x277D387D8]];
  stringValue12 = [v85 stringValue];
  [v4 setObject:stringValue12 forKeyedSubscript:v84];

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
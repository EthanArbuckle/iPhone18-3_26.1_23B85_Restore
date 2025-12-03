@interface ARPHomeControlSuggester
+ (id)defaultCorrelationsSessionFile;
+ (id)suggester;
- (ARPHomeControlSuggester)initWithScoreThresholdForMicrolocationSuggestionsConsidered:(double)considered highScoreThresholdForMicroLocationSuggestionMerge:(double)merge lowScoreThresholdForMicroLocationSuggestionMerge:(double)suggestionMerge highScoreThresholdForTimeBasedSuggestionMerge:(double)basedSuggestionMerge lowScoreThresholdForTimeBasedSuggestionMerge:(double)timeBasedSuggestionMerge;
- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)suggestions;
- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)suggestions events:(id)events useScenes:(BOOL)scenes;
- (id)homeKitEventsWithLookbackDays:(int64_t)days;
- (id)microlocationBasedsuggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date correlationsFile:(id)file;
- (id)mostRecentHomeKitEvent;
- (id)nextActionBasedsuggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date correlationsFile:(id)file;
- (id)suggestionsWithMaxSuggestions:(unint64_t)suggestions;
- (id)suggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date correlationsFile:(id)file;
- (id)timeBasedSuggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date fallBackToFrequency:(BOOL)frequency;
- (id)timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:(unint64_t)suggestions events:(id)events referenceDate:(id)date;
@end

@implementation ARPHomeControlSuggester

+ (id)defaultCorrelationsSessionFile
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = sysconf(71);
  if (v2 == -1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = v2;
  }

  v16 = 0;
  v4 = geteuid();
  if (!v4)
  {
    v4 = getuid();
  }

  memset(&v15, 0, sizeof(v15));
  if (getpwuid_r(v4, &v15, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3, &v16))
  {
    v5 = 1;
  }

  else
  {
    v5 = v16 == 0;
  }

  if (v5)
  {
    v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    firstObject = [v6 firstObject];

    v10 = [firstObject stringByAppendingPathComponent:@"AirPlayRoutePrediction/HomeControlSuggestions/correlations.archive"];
    v11 = ARPHomeControlLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v18 = v10;
    v7 = "ARPHomeControlSuggester defaultCorrelationsSessionFile returning fallback path: %@";
    goto LABEL_15;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  firstObject = [defaultManager stringWithFileSystemRepresentation:v16->pw_dir length:strlen(v16->pw_dir)];

  v10 = [firstObject stringByAppendingPathComponent:@"/Library/AirPlayRoutePrediction/HomeControlSuggestions/correlations.archive"];
  v11 = ARPHomeControlLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v10;
    v7 = "ARPHomeControlSuggester defaultCorrelationsSessionFile returning getpwuid_r path: %@";
LABEL_15:
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)suggester
{
  v2 = [objc_alloc(objc_opt_class()) initWithScoreThresholdForMicrolocationSuggestionsConsidered:0.1 highScoreThresholdForMicroLocationSuggestionMerge:0.4 lowScoreThresholdForMicroLocationSuggestionMerge:0.2 highScoreThresholdForTimeBasedSuggestionMerge:0.3 lowScoreThresholdForTimeBasedSuggestionMerge:0.2];

  return v2;
}

- (ARPHomeControlSuggester)initWithScoreThresholdForMicrolocationSuggestionsConsidered:(double)considered highScoreThresholdForMicroLocationSuggestionMerge:(double)merge lowScoreThresholdForMicroLocationSuggestionMerge:(double)suggestionMerge highScoreThresholdForTimeBasedSuggestionMerge:(double)basedSuggestionMerge lowScoreThresholdForTimeBasedSuggestionMerge:(double)timeBasedSuggestionMerge
{
  v13.receiver = self;
  v13.super_class = ARPHomeControlSuggester;
  result = [(ARPHomeControlSuggester *)&v13 init];
  if (result)
  {
    result->_scoreThresholdForMicrolocationSuggestionsConsidered = considered;
    result->_highScoreThresholdForMicroLocationSuggestionMerge = merge;
    result->_lowScoreThresholdForMicroLocationSuggestionMerge = suggestionMerge;
    result->_highScoreThresholdForTimeBasedSuggestionMerge = basedSuggestionMerge;
    result->_lowScoreThresholdForTimeBasedSuggestionMerge = timeBasedSuggestionMerge;
    result->_scoreSceneBoost = 0.0;
  }

  return result;
}

- (id)suggestionsWithMaxSuggestions:(unint64_t)suggestions
{
  date = [MEMORY[0x277CBEAA8] date];
  defaultCorrelationsSessionFile = [objc_opt_class() defaultCorrelationsSessionFile];
  v7 = [(ARPHomeControlSuggester *)self suggestionsWithMaxSuggestions:suggestions referenceDate:date correlationsFile:defaultCorrelationsSessionFile];

  return v7;
}

- (id)suggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date correlationsFile:(id)file
{
  v136 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  fileCopy = file;
  v10 = [(ARPHomeControlSuggester *)self timeBasedSuggestionsWithMaxSuggestions:suggestions referenceDate:dateCopy fallBackToFrequency:0];
  v11 = ARPHomeControlLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *buf = 138412290;
    v128 = v12;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from time-bucketing = %@", buf, 0xCu);
  }

  v13 = [(ARPHomeControlSuggester *)self microlocationBasedsuggestionsWithMaxSuggestions:suggestions referenceDate:dateCopy correlationsFile:fileCopy];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *buf = 138412290;
    v128 = v14;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from micro-locations = %@", buf, 0xCu);
  }

  v103 = v13;

  homeKitEventsSortedByStartDate = [(ARPHomeControlSuggester *)self homeKitEventsSortedByStartDate];
  v16 = [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:suggestions events:homeKitEventsSortedByStartDate useScenes:0];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    *buf = 138412290;
    v128 = v17;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from frequency MRU = %@", buf, 0xCu);
  }

  v98 = v16;

  selfCopy = self;
  suggestionsCopy = suggestions;
  v101 = fileCopy;
  v102 = dateCopy;
  v18 = [(ARPHomeControlSuggester *)self nextActionBasedsuggestionsWithMaxSuggestions:suggestions referenceDate:dateCopy correlationsFile:fileCopy];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    *buf = 138412290;
    v128 = v19;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from next-action = %@", buf, 0xCu);
  }

  v99 = v18;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v10;
  v21 = [obj countByEnumeratingWithState:&v123 objects:v135 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v124;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v124 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v123 + 1) + 8 * i);
        [v25 setSuggestionReason:@"Time-bucket"];
        v26 = MEMORY[0x277CCABB0];
        v27 = [dictionary objectForKeyedSubscript:v25];
        [v27 doubleValue];
        v29 = v28;
        [v25 score];
        v31 = [v26 numberWithDouble:v29 + v30 * 2.0];
        [dictionary setObject:v31 forKeyedSubscript:v25];
      }

      v22 = [obj countByEnumeratingWithState:&v123 objects:v135 count:16];
    }

    while (v22);
  }

  oslog = v11;

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v32 = v103;
  v33 = [v32 countByEnumeratingWithState:&v119 objects:v134 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v120;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v120 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v119 + 1) + 8 * j);
        [v37 setSuggestionReason:@"Microlocation"];
        v38 = MEMORY[0x277CCABB0];
        v39 = [dictionary objectForKeyedSubscript:v37];
        [v39 doubleValue];
        v41 = v40;
        [v37 score];
        v43 = [v38 numberWithDouble:v41 + v42];
        [dictionary setObject:v43 forKeyedSubscript:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v119 objects:v134 count:16];
    }

    while (v34);
  }

  v104 = v32;

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v44 = v99;
  v45 = [v44 countByEnumeratingWithState:&v115 objects:v133 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v116;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v116 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v115 + 1) + 8 * k);
        [v49 setSuggestionReason:@"Next Action"];
        v50 = MEMORY[0x277CCABB0];
        v51 = [dictionary objectForKeyedSubscript:v49];
        [v51 doubleValue];
        v53 = v52;
        [v49 score];
        v55 = [v50 numberWithDouble:v53 + v54];
        [dictionary setObject:v55 forKeyedSubscript:v49];
      }

      v46 = [v44 countByEnumeratingWithState:&v115 objects:v133 count:16];
    }

    while (v46);
  }

  v100 = v44;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v56 = v98;
  v57 = [v56 countByEnumeratingWithState:&v111 objects:v132 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v112;
    do
    {
      for (m = 0; m != v58; ++m)
      {
        if (*v112 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v111 + 1) + 8 * m);
        [v61 setSuggestionReason:@"Frequency-MRU"];
        v62 = MEMORY[0x277CCABB0];
        v63 = [dictionary objectForKeyedSubscript:v61];
        [v63 doubleValue];
        v65 = v64;
        [v61 score];
        v67 = [v62 numberWithDouble:v65 + v66];
        [dictionary setObject:v67 forKeyedSubscript:v61];
      }

      v58 = [v56 countByEnumeratingWithState:&v111 objects:v132 count:16];
    }

    while (v58);
  }

  v68 = [dictionary keysSortedByValueUsingComparator:&__block_literal_global_2];
  firstObject = [v68 firstObject];
  [firstObject score];
  v71 = v70;
  lastObject = [v68 lastObject];
  [lastObject score];
  v74 = v71 - v73;

  if (v74 <= 0.00001)
  {
    homeKitEventsSortedByStartDate2 = [(ARPHomeControlSuggester *)selfCopy homeKitEventsSortedByStartDate];
    v75 = suggestionsCopy;
    v77 = [(ARPHomeControlSuggester *)selfCopy frequencybasedSuggestionsWitMaxSuggestions:suggestionsCopy events:homeKitEventsSortedByStartDate2 useScenes:1];

    v68 = v77;
  }

  else
  {
    v75 = suggestionsCopy;
  }

  v78 = [v68 count];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v79 = v68;
  v80 = [v79 countByEnumeratingWithState:&v107 objects:v131 count:16];
  v81 = v104;
  if (v80)
  {
    v82 = v80;
    v83 = v78 + 1.0;
    v84 = *v108;
    do
    {
      for (n = 0; n != v82; ++n)
      {
        if (*v108 != v84)
        {
          objc_enumerationMutation(v79);
        }

        [*(*(&v107 + 1) + 8 * n) setScore:v83];
        v83 = v83 + -1.0;
      }

      v82 = [v79 countByEnumeratingWithState:&v107 objects:v131 count:16];
    }

    while (v82);
  }

  if (v75)
  {
    if ([v79 count] <= v75)
    {
      v75 = [v79 count];
    }

    v86 = [v79 subarrayWithRange:{0, v75}];
    if ([v86 count])
    {
      v87 = ARPLog();
      v88 = 0;
      do
      {
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v89 = v88 + 1;
          [MEMORY[0x277CCABB0] numberWithInt:v88 + 1];
          v91 = v90 = v86;
          v92 = [v90 objectAtIndexedSubscript:v88];
          *buf = 138412546;
          v128 = v91;
          v129 = 2112;
          v130 = v92;
          _os_log_impl(&dword_23EB15000, v87, OS_LOG_TYPE_DEFAULT, "Home Control Suggestion %@: %@", buf, 0x16u);

          v86 = v90;
          v88 = v89;
        }

        else
        {
          ++v88;
        }
      }

      while ([v86 count] > v88);
      v81 = v104;
    }
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v79, "count")}];
      *buf = 138412290;
      v128 = v93;
      _os_log_impl(&dword_23EB15000, oslog, OS_LOG_TYPE_DEFAULT, "Total Home Control suggestions returned = %@", buf, 0xCu);
    }

    v86 = v79;
  }

  v94 = *MEMORY[0x277D85DE8];

  return v86;
}

uint64_t __88__ARPHomeControlSuggester_suggestionsWithMaxSuggestions_referenceDate_correlationsFile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 >= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)microlocationBasedsuggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date correlationsFile:(id)file
{
  v89[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  fileCopy = file;
  if (fileCopy)
  {
    v85 = 0;
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:fileCopy options:1 error:&v85];
    v11 = v85;
    if (v11)
    {
      v12 = v11;
      v13 = ARPLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ARPHomeControlSuggester microlocationBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      suggestionsCopy = suggestions;
      v84 = 0;
      v76 = v10;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v84];
      v72 = v84;
      microlocationCorrelationsDictionary = [v15 microlocationCorrelationsDictionary];
      archiveDate = [v15 archiveDate];

      v16 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
      v17 = MEMORY[0x277CFE1E0];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v19 = [v17 predicateForEventsWithStartInDateRangeFrom:distantPast to:dateCopy];
      microLocationVisitStream = [MEMORY[0x277CFE298] microLocationVisitStream];
      v89[0] = microLocationVisitStream;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:1];
      v75 = v16;
      v88 = v16;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
      v23 = [v17 eventQueryWithPredicate:v19 eventStreams:v21 offset:0 limit:1 sortDescriptors:v22];

      v24 = v23;
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPHomeControlSuggester.m"];
      v26 = [v25 stringByAppendingFormat:@":%d", 217];
      [v23 setClientName:v26];

      [v23 setTracker:&__block_literal_global_37];
      knowledgeStore = [(ARPHomeControlSuggester *)self knowledgeStore];
      v83 = v72;
      v28 = [knowledgeStore executeQuery:v23 error:&v83];
      v12 = v83;

      v74 = v28;
      if (v12)
      {
        v29 = archiveDate;
        v30 = ARPLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [ARPHomeControlSuggester microlocationBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
        }

        v14 = MEMORY[0x277CBEBF8];
        v10 = v76;
        v13 = microlocationCorrelationsDictionary;
        v31 = v75;
      }

      else
      {
        v69 = v23;
        firstObject = [v28 firstObject];
        startDate = [firstObject startDate];
        v33 = 0;
        v68 = startDate;
        if (archiveDate)
        {
          v34 = startDate;
          if (startDate)
          {
            [dateCopy timeIntervalSinceDate:?];
            if (v35 <= 600.0 && ([dateCopy timeIntervalSinceDate:v34], v36 <= 600.0))
            {
              metadata = [firstObject metadata];
              probabilityVector = [MEMORY[0x277CFE230] probabilityVector];
              v39 = [metadata objectForKeyedSubscript:probabilityVector];

              allValues = [v39 allValues];
              v41 = [allValues valueForKeyPath:@"@max.self"];

              [v41 doubleValue];
              v43 = v42;
              [(ARPHomeControlSuggester *)self scoreThresholdForMicrolocationSuggestionsConsidered];
              if (v43 >= v44)
              {
                v45 = [v39 allKeysForObject:v41];
                firstObject2 = [v45 firstObject];

                uUIDString = [firstObject2 UUIDString];
                v33 = [microlocationCorrelationsDictionary objectForKeyedSubscript:uUIDString];
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 0;
            }
          }
        }

        v70 = dateCopy;
        orderedSet = [MEMORY[0x277CBEB40] orderedSet];
        allValues2 = [v33 allValues];
        v50 = [allValues2 valueForKeyPath:@"@sum.self"];
        [v50 doubleValue];
        v52 = v51;

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        allKeys = [v33 allKeys];
        v54 = [allKeys countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v80;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v80 != v56)
              {
                objc_enumerationMutation(allKeys);
              }

              v58 = *(*(&v79 + 1) + 8 * i);
              v59 = [v33 objectForKeyedSubscript:v58];
              [v59 floatValue];
              [v58 setScore:v60 / v52];

              [orderedSet addObject:v58];
            }

            v55 = [allKeys countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v55);
        }

        array = [orderedSet array];
        v62 = [array mutableCopy];

        v63 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
        v86 = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        [v62 sortUsingDescriptors:v64];

        v65 = suggestionsCopy;
        if (suggestionsCopy)
        {
          v10 = v76;
          v13 = microlocationCorrelationsDictionary;
          if ([v62 count] < suggestionsCopy)
          {
            v65 = [v62 count];
          }

          v14 = [v62 subarrayWithRange:{0, v65}];
        }

        else
        {
          v14 = v62;
          v10 = v76;
          v13 = microlocationCorrelationsDictionary;
        }

        v29 = archiveDate;

        v24 = v69;
        dateCopy = v70;
        v31 = v75;
        v30 = firstObject;
      }
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v66 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)nextActionBasedsuggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date correlationsFile:(id)file
{
  v83[14] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  if (!fileCopy)
  {
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_43;
  }

  v81 = 0;
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:fileCopy options:1 error:&v81];
  v9 = v81;
  if (v9)
  {
    v10 = v9;
    nextActionCorrelationsDictionary = ARPLog();
    if (os_log_type_enabled(nextActionCorrelationsDictionary, OS_LOG_TYPE_ERROR))
    {
      [ARPHomeControlSuggester nextActionBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
    }

    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_42;
  }

  suggestionsCopy = suggestions;
  v72 = fileCopy;
  v80 = 0;
  v71 = v8;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v80];
  v70 = v80;
  nextActionCorrelationsDictionary = [v13 nextActionCorrelationsDictionary];
  archiveDate = [v13 archiveDate];

  mostRecentHomeKitEvent = [(ARPHomeControlSuggester *)self mostRecentHomeKitEvent];
  v73 = MEMORY[0x277CBEB98];
  v75 = mostRecentHomeKitEvent;
  v68 = getHMServiceTypeSpeaker();
  v83[0] = v68;
  v67 = getHMServiceTypeDoorbell();
  v83[1] = v67;
  v66 = getHMServiceTypeMicrophone();
  v83[2] = v66;
  v65 = getHMServiceTypeTemperatureSensor();
  v83[3] = v65;
  v64 = getHMServiceTypeAirQualitySensor();
  v83[4] = v64;
  v63 = getHMServiceTypeHumiditySensor();
  v83[5] = v63;
  v15 = getHMServiceTypeCarbonMonoxideSensor();
  v83[6] = v15;
  v16 = getHMServiceTypeContactSensor();
  v83[7] = v16;
  v17 = getHMServiceTypeLeakSensor();
  v83[8] = v17;
  v18 = getHMServiceTypeLightSensor();
  v83[9] = v18;
  v19 = getHMServiceTypeMotionSensor();
  v83[10] = v19;
  v20 = getHMServiceTypeOccupancySensor();
  v83[11] = v20;
  v21 = getHMServiceTypeSmokeSensor();
  v83[12] = v21;
  v22 = getHMServiceTypeCarbonDioxideSensor();
  v83[13] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:14];
  v74 = [v73 setWithArray:v23];

  v24 = v75;
  if (!v75)
  {
    v26 = 0;
LABEL_26:
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    allValues = [v26 allValues];
    v44 = [allValues valueForKeyPath:@"@sum.self"];
    [v44 doubleValue];
    v46 = v45;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    allKeys = [nextActionCorrelationsDictionary allKeys];
    v48 = [allKeys countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v77;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v77 != v50)
          {
            objc_enumerationMutation(allKeys);
          }

          v52 = *(*(&v76 + 1) + 8 * i);
          v53 = [v26 objectForKeyedSubscript:v52];
          [v53 floatValue];
          v55 = v54 + 1.0;
          allKeys2 = [nextActionCorrelationsDictionary allKeys];
          [v52 setScore:{v55 / (v46 + objc_msgSend(allKeys2, "count"))}];

          [orderedSet addObject:v52];
        }

        v49 = [allKeys countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v49);
    }

    array = [orderedSet array];
    v58 = [array mutableCopy];

    v59 = suggestionsCopy;
    if (suggestionsCopy)
    {
      v24 = v75;
      if ([v58 count] < suggestionsCopy)
      {
        v59 = [v58 count];
      }

      v12 = [v58 subarrayWithRange:{0, v59}];
    }

    else
    {
      v12 = v58;
      v24 = v75;
    }

    goto LABEL_41;
  }

  eventBody = [v75 eventBody];
  v26 = [eventBody valueForKey:@"base"];

  if (!v26)
  {
    v26 = ARPLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ARPHomeControlSuggester nextActionBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
    }

    goto LABEL_40;
  }

  eventBody2 = [v75 eventBody];
  getBMHomeKitClientAccessoryControlEventClass();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  eventBody3 = [v75 eventBody];
  eventBody4 = eventBody3;
  if ((isKindOfClass & 1) == 0)
  {
    getBMHomeKitClientActionSetEventClass();
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    eventBody4 = [v75 eventBody];
    if (v37)
    {
      v33 = objc_alloc_init(ARPHomeControlSuggestion);
      [(ARPHomeControlSuggestion *)v33 setType:1];
      actionSetUniqueIdentifier = [eventBody4 actionSetUniqueIdentifier];
    }

    else
    {
      getBMHomeKitClientMediaAccessoryControlEventClass();
      objc_opt_class();
      v39 = objc_opt_isKindOfClass();

      if ((v39 & 1) == 0)
      {
        v33 = 0;
        goto LABEL_23;
      }

      eventBody4 = [v75 eventBody];
      v33 = objc_alloc_init(ARPHomeControlSuggestion);
      [(ARPHomeControlSuggestion *)v33 setType:0];
      actionSetUniqueIdentifier = [eventBody4 accessoryUniqueIdentifier];
    }

    v40 = actionSetUniqueIdentifier;
    [(ARPHomeControlSuggestion *)v33 setTargetUUID:actionSetUniqueIdentifier];

    homeUniqueIdentifier = [v26 homeUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setHomeUUID:homeUniqueIdentifier];
LABEL_20:

    if (v33)
    {
      eventBody4 = [nextActionCorrelationsDictionary objectForKeyedSubscript:v33];
      goto LABEL_24;
    }

LABEL_23:
    eventBody4 = 0;
LABEL_24:
    v41 = [eventBody4 count];

    if (v41)
    {

      v26 = eventBody4;
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  serviceType = [eventBody3 serviceType];
  v32 = [v74 containsObject:serviceType];

  if ((v32 & 1) == 0)
  {
    v33 = objc_alloc_init(ARPHomeControlSuggestion);
    [(ARPHomeControlSuggestion *)v33 setType:0];
    accessoryUniqueIdentifier = [eventBody4 accessoryUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setTargetUUID:accessoryUniqueIdentifier];

    homeUniqueIdentifier2 = [v26 homeUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setHomeUUID:homeUniqueIdentifier2];

    homeUniqueIdentifier = [eventBody4 serviceUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setAccessoryServiceUUID:homeUniqueIdentifier];
    goto LABEL_20;
  }

LABEL_39:

LABEL_40:
  v12 = MEMORY[0x277CBEBF8];
LABEL_41:
  v8 = v71;
  fileCopy = v72;
  v10 = v70;

LABEL_42:
LABEL_43:

  v60 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)timeBasedSuggestionsWithMaxSuggestions:(unint64_t)suggestions referenceDate:(id)date fallBackToFrequency:(BOOL)frequency
{
  frequencyCopy = frequency;
  v51 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = [(ARPHomeControlSuggester *)self homeKitEventsWithLookbackDays:30];
  [(ARPHomeControlSuggester *)self setHomeKitEventsSortedByStartDate:v9];
  v10 = ARPHomeControlLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    *buf = 138412290;
    v50 = v11;
    _os_log_impl(&dword_23EB15000, v10, OS_LOG_TYPE_INFO, "Total HomeKit events = %@", buf, 0xCu);
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v33 = dateCopy;
  v13 = [(ARPHomeControlSuggester *)self timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:suggestions events:v9 referenceDate:dateCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [orderedSet addObject:*(*(&v42 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v15);
  }

  if (frequencyCopy)
  {
    if (suggestions)
    {
      if ([orderedSet count] >= suggestions)
      {
        goto LABEL_32;
      }

      [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:suggestions events:v9 useScenes:0];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = v41 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
LABEL_15:
        v22 = 0;
        while (1)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * v22);
          if ([orderedSet count] >= suggestions)
          {
            break;
          }

          [orderedSet addObject:v23];
          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v20)
            {
              goto LABEL_15;
            }

            break;
          }
        }
      }
    }

    else
    {
      v24 = [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:0 events:v9 useScenes:0];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
        *buf = 138412290;
        v50 = v25;
        _os_log_impl(&dword_23EB15000, v10, OS_LOG_TYPE_INFO, "Total suggestions from frequency-based MRU = %@", buf, 0xCu);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v24;
      v26 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v18);
            }

            [orderedSet addObject:*(*(&v34 + 1) + 8 * j)];
          }

          v27 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v27);
      }
    }
  }

LABEL_32:
  array = [orderedSet array];

  v31 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:(unint64_t)suggestions events:(id)events referenceDate:(id)date
{
  selfCopy = self;
  suggestionsCopy = suggestions;
  v37 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v26 = dateCopy;
  v8 = [currentCalendar components:32 fromDate:dateCopy];
  hour = [v8 hour];
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = eventsCopy;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        eventBody = [v14 eventBody];
        v16 = [eventBody valueForKey:@"base"];
        dateInterval = [v16 dateInterval];
        startDate = [dateInterval startDate];

        if (startDate)
        {
          v19 = [currentCalendar components:32 fromDate:startDate];

          if (([v19 hour] ^ hour) <= 3)
          {
            [array addObject:v14];
          }

          v8 = v19;
        }

        else
        {
          v20 = ARPLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [ARPHomeControlSuggester timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:v31 events:v20 referenceDate:?];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v21 = [(ARPHomeControlSuggester *)selfCopy frequencybasedSuggestionsWitMaxSuggestions:suggestionsCopy events:array];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)suggestions events:(id)events useScenes:(BOOL)scenes
{
  scenesCopy = scenes;
  v169[5] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CFE2E0];
  v169[0] = *MEMORY[0x277CFE2C0];
  v169[1] = v6;
  v7 = *MEMORY[0x277CFE2D8];
  v169[2] = *MEMORY[0x277CFE2D0];
  v169[3] = v7;
  v169[4] = *MEMORY[0x277CFE2C8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:5];
  v9 = [v5 setWithArray:v8];

  v136 = MEMORY[0x277CBEB98];
  v10 = getHMServiceTypeSpeaker();
  v168[0] = v10;
  v144 = getHMServiceTypeDoorbell();
  v168[1] = v144;
  v142 = getHMServiceTypeMicrophone();
  v168[2] = v142;
  v140 = getHMServiceTypeTemperatureSensor();
  v168[3] = v140;
  v138 = getHMServiceTypeAirQualitySensor();
  v168[4] = v138;
  v134 = getHMServiceTypeHumiditySensor();
  v168[5] = v134;
  v132 = getHMServiceTypeCarbonMonoxideSensor();
  v168[6] = v132;
  v11 = getHMServiceTypeContactSensor();
  v168[7] = v11;
  v12 = getHMServiceTypeLeakSensor();
  v168[8] = v12;
  v13 = getHMServiceTypeLightSensor();
  v168[9] = v13;
  v14 = getHMServiceTypeMotionSensor();
  v168[10] = v14;
  v15 = getHMServiceTypeOccupancySensor();
  v168[11] = v15;
  v16 = getHMServiceTypeSmokeSensor();
  v168[12] = v16;
  v17 = getHMServiceTypeCarbonDioxideSensor();
  v168[13] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:14];
  v137 = [v136 setWithArray:v18];

  lastObject = [eventsCopy lastObject];
  eventBody = [lastObject eventBody];
  v21 = [eventBody valueForKey:@"base"];
  dateInterval = [v21 dateInterval];
  startDate = [dateInterval startDate];

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v23 = eventsCopy;
  v133 = v9;
  v135 = v23;
  v148 = [v23 countByEnumeratingWithState:&v160 objects:v167 count:16];
  if (!v148)
  {
    v139 = 0;
    v24 = 0;
    v26 = dictionary;
    goto LABEL_38;
  }

  v139 = 0;
  v24 = 0;
  v25 = *v161;
  v26 = dictionary;
  v143 = *v161;
  do
  {
    v27 = 0;
    do
    {
      if (*v161 != v25)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v160 + 1) + 8 * v27);
      eventBody2 = [v28 eventBody];
      v30 = [eventBody2 valueForKey:@"base"];

      if (!v30)
      {
        eventBody5 = ARPLog();
        if (os_log_type_enabled(eventBody5, OS_LOG_TYPE_ERROR))
        {
          [ARPHomeControlSuggester frequencybasedSuggestionsWitMaxSuggestions:v159 events:eventBody5 useScenes:?];
        }

        goto LABEL_31;
      }

      source = [v30 source];
      v32 = [v9 containsObject:source];

      if (v32)
      {
        goto LABEL_32;
      }

      dateInterval2 = [v30 dateInterval];
      startDate2 = [dateInterval2 startDate];
      [startDate timeIntervalSinceDate:startDate2];
      v36 = (v35 / 86400.0);

      v37 = exp(v36 * -0.5);
      eventBody3 = [v28 eventBody];
      getBMHomeKitClientAccessoryControlEventClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      eventBody4 = [v28 eventBody];
      eventBody5 = eventBody4;
      if (isKindOfClass)
      {
        serviceType = [eventBody4 serviceType];
        v43 = [v137 containsObject:serviceType];

        if (v43)
        {
          v26 = dictionary;
          goto LABEL_17;
        }

        v53 = objc_alloc_init(ARPHomeControlSuggestion);
        [(ARPHomeControlSuggestion *)v53 setType:0];
        accessoryUniqueIdentifier = [eventBody5 accessoryUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setTargetUUID:accessoryUniqueIdentifier];

        homeUniqueIdentifier = [v30 homeUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setHomeUUID:homeUniqueIdentifier];

        serviceUniqueIdentifier = [eventBody5 serviceUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setAccessoryServiceUUID:serviceUniqueIdentifier];

        dateInterval3 = [v24 dateInterval];
        startDate3 = [dateInterval3 startDate];
        v141 = v24;
        if (startDate3)
        {
          v59 = startDate3;
          v60 = v24;
          dateInterval4 = [v30 dateInterval];
          startDate4 = [dateInterval4 startDate];
          dateInterval5 = [v60 dateInterval];
          startDate5 = [dateInterval5 startDate];
          [startDate4 timeIntervalSinceDate:startDate5];
          v66 = v65;

          goto LABEL_23;
        }

LABEL_25:

        goto LABEL_26;
      }

      getBMHomeKitClientActionSetEventClass();
      objc_opt_class();
      v44 = objc_opt_isKindOfClass();

      eventBody5 = [v28 eventBody];
      if (v44)
      {
        v45 = objc_alloc_init(ARPHomeControlSuggestion);
        [(ARPHomeControlSuggestion *)v45 setType:1];
        actionSetUniqueIdentifier = [eventBody5 actionSetUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v45 setTargetUUID:actionSetUniqueIdentifier];

        homeUniqueIdentifier2 = [v30 homeUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v45 setHomeUUID:homeUniqueIdentifier2];

        v26 = dictionary;
        if (scenesCopy)
        {
          v48 = MEMORY[0x277CCABB0];
          v49 = [dictionary3 objectForKeyedSubscript:v45];
          [v49 floatValue];
          v51 = [v48 numberWithDouble:v37 + v50];
          [dictionary3 setObject:v51 forKeyedSubscript:v45];

          v23 = v135;
        }

        v52 = v30;

        v24 = v52;
LABEL_17:
        v25 = v143;
LABEL_31:

        goto LABEL_32;
      }

      getBMHomeKitClientMediaAccessoryControlEventClass();
      objc_opt_class();
      v67 = objc_opt_isKindOfClass();

      if (v67)
      {
        eventBody5 = [v28 eventBody];
        v53 = objc_alloc_init(ARPHomeControlSuggestion);
        [(ARPHomeControlSuggestion *)v53 setType:0];
        accessoryUniqueIdentifier2 = [eventBody5 accessoryUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setTargetUUID:accessoryUniqueIdentifier2];

        homeUniqueIdentifier3 = [v30 homeUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setHomeUUID:homeUniqueIdentifier3];

        dateInterval3 = [v24 dateInterval];
        startDate6 = [dateInterval3 startDate];
        v141 = v24;
        if (!startDate6)
        {
          goto LABEL_25;
        }

        v59 = startDate6;
        dateInterval6 = [v30 dateInterval];
        startDate7 = [dateInterval6 startDate];
        dateInterval7 = [v24 dateInterval];
        startDate8 = [dateInterval7 startDate];
        [startDate7 timeIntervalSinceDate:startDate8];
        v66 = v75;

LABEL_23:
        if (v66 <= 1.0)
        {
          v76 = MEMORY[0x277CCABB0];
          v77 = [dictionary2 objectForKeyedSubscript:v53];
          [v77 doubleValue];
          v79 = [v76 numberWithDouble:v37 + v78];
          [dictionary2 setObject:v79 forKeyedSubscript:v53];

          v26 = dictionary;
          goto LABEL_29;
        }

LABEL_26:
        dateInterval8 = [v139 dateInterval];
        startDate9 = [dateInterval8 startDate];
        dateInterval9 = [v30 dateInterval];
        startDate10 = [dateInterval9 startDate];
        v84 = [startDate9 isEqualToDate:startDate10];

        v26 = dictionary;
        if (v84)
        {
          v9 = v133;
          v23 = v135;
          v24 = v141;
        }

        else
        {
          v85 = MEMORY[0x277CCABB0];
          v86 = [dictionary objectForKeyedSubscript:v53];
          [v86 doubleValue];
          v88 = [v85 numberWithDouble:v37 + v87];
          [dictionary setObject:v88 forKeyedSubscript:v53];

          v77 = v139;
          v139 = v30;
LABEL_29:
          v9 = v133;
          v24 = v141;

          v23 = v135;
        }

        v25 = v143;

        goto LABEL_31;
      }

      v26 = dictionary;
      v25 = v143;
LABEL_32:

      ++v27;
    }

    while (v148 != v27);
    v89 = [v23 countByEnumeratingWithState:&v160 objects:v167 count:16];
    v148 = v89;
  }

  while (v89);
LABEL_38:
  v90 = v24;

  allValues = [v26 allValues];
  v92 = [allValues valueForKeyPath:@"@sum.self"];
  [v92 doubleValue];
  v94 = v93;

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  allKeys = [v26 allKeys];
  v96 = [allKeys countByEnumeratingWithState:&v154 objects:v166 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v155;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v155 != v98)
        {
          objc_enumerationMutation(allKeys);
        }

        v100 = *(*(&v154 + 1) + 8 * i);
        v101 = [v26 objectForKeyedSubscript:v100];
        [v101 doubleValue];
        [v100 setScore:v102 / v94];
      }

      v97 = [allKeys countByEnumeratingWithState:&v154 objects:v166 count:16];
    }

    while (v97);
  }

  allValues2 = [dictionary3 allValues];
  v104 = [allValues2 valueForKeyPath:@"@sum.self"];
  [v104 doubleValue];
  v106 = v105;

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  allKeys2 = [dictionary3 allKeys];
  v108 = [allKeys2 countByEnumeratingWithState:&v150 objects:v165 count:16];
  if (v108)
  {
    v109 = v108;
    v110 = *v151;
    do
    {
      for (j = 0; j != v109; ++j)
      {
        if (*v151 != v110)
        {
          objc_enumerationMutation(allKeys2);
        }

        v112 = *(*(&v150 + 1) + 8 * j);
        v113 = [dictionary3 objectForKeyedSubscript:v112];
        [v113 doubleValue];
        [v112 setScore:v114 / v106];
      }

      v109 = [allKeys2 countByEnumeratingWithState:&v150 objects:v165 count:16];
    }

    while (v109);
  }

  v115 = MEMORY[0x277CBEB18];
  allKeys3 = [v26 allKeys];
  v117 = [v115 arrayWithArray:allKeys3];

  if (![v117 count])
  {
    v118 = MEMORY[0x277CBEB18];
    allKeys4 = [dictionary2 allKeys];
    v120 = [v118 arrayWithArray:allKeys4];

    v117 = v120;
  }

  allKeys5 = [dictionary3 allKeys];
  [v117 addObjectsFromArray:allKeys5];

  v122 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v164 = v122;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
  [v117 sortUsingDescriptors:v123];

  suggestionsCopy = suggestions;
  if (suggestions)
  {
    v125 = v135;
    if ([v117 count] < suggestions)
    {
      suggestionsCopy = [v117 count];
    }

    v126 = [v117 subarrayWithRange:{0, suggestionsCopy}];
  }

  else
  {
    v126 = v117;
    v125 = v135;
  }

  v127 = *MEMORY[0x277D85DE8];

  return v126;
}

- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)suggestions
{
  v5 = [(ARPHomeControlSuggester *)self homeKitEventsWithLookbackDays:30];
  v6 = [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:suggestions events:v5];

  return v6;
}

- (id)homeKitEventsWithLookbackDays:(int64_t)days
{
  selfCopy = self;
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = CFAbsoluteTimeGetCurrent() + (1440 * days) * -60.0;
  getBMHomeKitClientAccessoryControlStreamClass();
  v4 = objc_opt_new();
  v29 = [v4 publisherFromStartTime:v3];

  getBMHomeKitClientActionSetStreamClass();
  v5 = objc_opt_new();
  v6 = [v5 publisherFromStartTime:v3];

  getBMHomeKitClientMediaAccessoryControlStreamClass();
  v7 = objc_opt_new();
  v8 = [v7 publisherFromStartTime:v3];

  if (v29)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v13 = ARPLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ARPHomeControlSuggester homeKitEventsWithLookbackDays:];
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v42[0] = v6;
    v42[1] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v13 = [v29 orderedMergeWithOthers:v12 comparator:&__block_literal_global_59];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy_;
    v39 = __Block_byref_object_dispose_;
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:3000];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __57__ARPHomeControlSuggester_homeKitEventsWithLookbackDays___block_invoke_2;
    v34[3] = &unk_278C64628;
    v34[4] = &v35;
    v34[5] = 3000;
    v14 = [v13 sinkWithCompletion:&__block_literal_global_63 receiveInput:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v36[5];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
    v17 = v16;
    if (v16)
    {
      v18 = *v31;
      v19 = 0.0;
      v20 = 0.0;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          eventBody = [v22 eventBody];
          getBMHomeKitClientMediaAccessoryControlEventClass();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v19 = v19 + 1.0;
          }

          else
          {
            eventBody2 = [v22 eventBody];
            getBMHomeKitClientAccessoryControlEventClass();
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v19 = v19 + 1.0;
            }

            else
            {
              v20 = v20 + 1.0;
            }
          }

          ++v21;
        }

        while (v17 != v21);
        v17 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v17);

      if (v20 > 0.0)
      {
        [(ARPHomeControlSuggester *)selfCopy setScoreSceneBoost:v19 / v20 * 4.0];
      }
    }

    else
    {
    }

    v11 = [v36[5] copy];
    _Block_object_dispose(&v35, 8);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __57__ARPHomeControlSuggester_homeKitEventsWithLookbackDays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventBody];
  v6 = [v5 valueForKey:@"base"];
  v7 = [v6 dateInterval];
  v8 = [v7 startDate];
  v9 = [v4 eventBody];

  v10 = [v9 valueForKey:@"base"];
  v11 = [v10 dateInterval];
  v12 = [v11 startDate];
  v13 = [v8 compare:v12];

  return v13;
}

void __57__ARPHomeControlSuggester_homeKitEventsWithLookbackDays___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) count];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v3 == *(a1 + 40))
  {
    [v4 removeObjectAtIndex:0];
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v5];
}

- (id)mostRecentHomeKitEvent
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = CFAbsoluteTimeGetCurrent() + -2592000.0;
  getBMHomeKitClientAccessoryControlStreamClass();
  v3 = objc_opt_new();
  v4 = [v3 publisherFromStartTime:v2];

  getBMHomeKitClientActionSetStreamClass();
  v5 = objc_opt_new();
  v6 = [v5 publisherFromStartTime:v2];

  getBMHomeKitClientMediaAccessoryControlStreamClass();
  v7 = objc_opt_new();
  v8 = [v7 publisherFromStartTime:v2];

  if (v4)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v12 = ARPLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ARPHomeControlSuggester homeKitEventsWithLookbackDays:];
    }

    v15 = 0;
  }

  else
  {
    v25[0] = v6;
    v25[1] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v12 = [v4 orderedMergeWithOthers:v11 comparator:&__block_literal_global_66];

    last = [v12 last];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__ARPHomeControlSuggester_mostRecentHomeKitEvent__block_invoke_3;
    v18[3] = &unk_278C64650;
    v18[4] = &v19;
    v14 = [last sinkWithCompletion:&__block_literal_global_68 receiveInput:v18];
    v15 = v20[5];
    _Block_object_dispose(&v19, 8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __49__ARPHomeControlSuggester_mostRecentHomeKitEvent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventBody];
  v6 = [v5 valueForKey:@"base"];
  v7 = [v6 dateInterval];
  v8 = [v7 startDate];
  v9 = [v4 eventBody];

  v10 = [v9 valueForKey:@"base"];
  v11 = [v10 dateInterval];
  v12 = [v11 startDate];
  v13 = [v8 compare:v12];

  return v13;
}

- (void)microlocationBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)microlocationBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nextActionBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:(uint8_t *)buf events:(_BYTE *)a2 referenceDate:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23EB15000, log, OS_LOG_TYPE_ERROR, "Skipping HomeKit donation - BMHomeKitClientBase or dateInterval is nil", buf, 2u);
}

- (void)frequencybasedSuggestionsWitMaxSuggestions:(uint8_t *)buf events:(_BYTE *)a2 useScenes:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23EB15000, log, OS_LOG_TYPE_ERROR, "Skipping suggestion - BMHomeKitClientBase is nil", buf, 2u);
}

@end
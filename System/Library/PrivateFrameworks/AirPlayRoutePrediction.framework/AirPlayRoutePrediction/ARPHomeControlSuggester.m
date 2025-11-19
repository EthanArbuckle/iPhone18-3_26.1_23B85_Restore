@interface ARPHomeControlSuggester
+ (id)defaultCorrelationsSessionFile;
+ (id)suggester;
- (ARPHomeControlSuggester)initWithScoreThresholdForMicrolocationSuggestionsConsidered:(double)a3 highScoreThresholdForMicroLocationSuggestionMerge:(double)a4 lowScoreThresholdForMicroLocationSuggestionMerge:(double)a5 highScoreThresholdForTimeBasedSuggestionMerge:(double)a6 lowScoreThresholdForTimeBasedSuggestionMerge:(double)a7;
- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)a3;
- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)a3 events:(id)a4 useScenes:(BOOL)a5;
- (id)homeKitEventsWithLookbackDays:(int64_t)a3;
- (id)microlocationBasedsuggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 correlationsFile:(id)a5;
- (id)mostRecentHomeKitEvent;
- (id)nextActionBasedsuggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 correlationsFile:(id)a5;
- (id)suggestionsWithMaxSuggestions:(unint64_t)a3;
- (id)suggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 correlationsFile:(id)a5;
- (id)timeBasedSuggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 fallBackToFrequency:(BOOL)a5;
- (id)timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:(unint64_t)a3 events:(id)a4 referenceDate:(id)a5;
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
    v9 = [v6 firstObject];

    v10 = [v9 stringByAppendingPathComponent:@"AirPlayRoutePrediction/HomeControlSuggestions/correlations.archive"];
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

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 stringWithFileSystemRepresentation:v16->pw_dir length:strlen(v16->pw_dir)];

  v10 = [v9 stringByAppendingPathComponent:@"/Library/AirPlayRoutePrediction/HomeControlSuggestions/correlations.archive"];
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

- (ARPHomeControlSuggester)initWithScoreThresholdForMicrolocationSuggestionsConsidered:(double)a3 highScoreThresholdForMicroLocationSuggestionMerge:(double)a4 lowScoreThresholdForMicroLocationSuggestionMerge:(double)a5 highScoreThresholdForTimeBasedSuggestionMerge:(double)a6 lowScoreThresholdForTimeBasedSuggestionMerge:(double)a7
{
  v13.receiver = self;
  v13.super_class = ARPHomeControlSuggester;
  result = [(ARPHomeControlSuggester *)&v13 init];
  if (result)
  {
    result->_scoreThresholdForMicrolocationSuggestionsConsidered = a3;
    result->_highScoreThresholdForMicroLocationSuggestionMerge = a4;
    result->_lowScoreThresholdForMicroLocationSuggestionMerge = a5;
    result->_highScoreThresholdForTimeBasedSuggestionMerge = a6;
    result->_lowScoreThresholdForTimeBasedSuggestionMerge = a7;
    result->_scoreSceneBoost = 0.0;
  }

  return result;
}

- (id)suggestionsWithMaxSuggestions:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [objc_opt_class() defaultCorrelationsSessionFile];
  v7 = [(ARPHomeControlSuggester *)self suggestionsWithMaxSuggestions:a3 referenceDate:v5 correlationsFile:v6];

  return v7;
}

- (id)suggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 correlationsFile:(id)a5
{
  v136 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ARPHomeControlSuggester *)self timeBasedSuggestionsWithMaxSuggestions:a3 referenceDate:v8 fallBackToFrequency:0];
  v11 = ARPHomeControlLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *buf = 138412290;
    v128 = v12;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from time-bucketing = %@", buf, 0xCu);
  }

  v13 = [(ARPHomeControlSuggester *)self microlocationBasedsuggestionsWithMaxSuggestions:a3 referenceDate:v8 correlationsFile:v9];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *buf = 138412290;
    v128 = v14;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from micro-locations = %@", buf, 0xCu);
  }

  v103 = v13;

  v15 = [(ARPHomeControlSuggester *)self homeKitEventsSortedByStartDate];
  v16 = [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:a3 events:v15 useScenes:0];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    *buf = 138412290;
    v128 = v17;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from frequency MRU = %@", buf, 0xCu);
  }

  v98 = v16;

  v97 = self;
  v105 = a3;
  v101 = v9;
  v102 = v8;
  v18 = [(ARPHomeControlSuggester *)self nextActionBasedsuggestionsWithMaxSuggestions:a3 referenceDate:v8 correlationsFile:v9];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    *buf = 138412290;
    v128 = v19;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Total suggestions from next-action = %@", buf, 0xCu);
  }

  v99 = v18;

  v20 = [MEMORY[0x277CBEB38] dictionary];
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
        v27 = [v20 objectForKeyedSubscript:v25];
        [v27 doubleValue];
        v29 = v28;
        [v25 score];
        v31 = [v26 numberWithDouble:v29 + v30 * 2.0];
        [v20 setObject:v31 forKeyedSubscript:v25];
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
        v39 = [v20 objectForKeyedSubscript:v37];
        [v39 doubleValue];
        v41 = v40;
        [v37 score];
        v43 = [v38 numberWithDouble:v41 + v42];
        [v20 setObject:v43 forKeyedSubscript:v37];
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
        v51 = [v20 objectForKeyedSubscript:v49];
        [v51 doubleValue];
        v53 = v52;
        [v49 score];
        v55 = [v50 numberWithDouble:v53 + v54];
        [v20 setObject:v55 forKeyedSubscript:v49];
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
        v63 = [v20 objectForKeyedSubscript:v61];
        [v63 doubleValue];
        v65 = v64;
        [v61 score];
        v67 = [v62 numberWithDouble:v65 + v66];
        [v20 setObject:v67 forKeyedSubscript:v61];
      }

      v58 = [v56 countByEnumeratingWithState:&v111 objects:v132 count:16];
    }

    while (v58);
  }

  v68 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_2];
  v69 = [v68 firstObject];
  [v69 score];
  v71 = v70;
  v72 = [v68 lastObject];
  [v72 score];
  v74 = v71 - v73;

  if (v74 <= 0.00001)
  {
    v76 = [(ARPHomeControlSuggester *)v97 homeKitEventsSortedByStartDate];
    v75 = v105;
    v77 = [(ARPHomeControlSuggester *)v97 frequencybasedSuggestionsWitMaxSuggestions:v105 events:v76 useScenes:1];

    v68 = v77;
  }

  else
  {
    v75 = v105;
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

- (id)microlocationBasedsuggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 correlationsFile:(id)a5
{
  v89[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v85 = 0;
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v9 options:1 error:&v85];
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
      v71 = a3;
      v84 = 0;
      v76 = v10;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v84];
      v72 = v84;
      v77 = [v15 microlocationCorrelationsDictionary];
      v78 = [v15 archiveDate];

      v16 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
      v17 = MEMORY[0x277CFE1E0];
      v18 = [MEMORY[0x277CBEAA8] distantPast];
      v19 = [v17 predicateForEventsWithStartInDateRangeFrom:v18 to:v8];
      v20 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v89[0] = v20;
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
      v27 = [(ARPHomeControlSuggester *)self knowledgeStore];
      v83 = v72;
      v28 = [v27 executeQuery:v23 error:&v83];
      v12 = v83;

      v74 = v28;
      if (v12)
      {
        v29 = v78;
        v30 = ARPLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [ARPHomeControlSuggester microlocationBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
        }

        v14 = MEMORY[0x277CBEBF8];
        v10 = v76;
        v13 = v77;
        v31 = v75;
      }

      else
      {
        v69 = v23;
        v73 = [v28 firstObject];
        v32 = [v73 startDate];
        v33 = 0;
        v68 = v32;
        if (v78)
        {
          v34 = v32;
          if (v32)
          {
            [v8 timeIntervalSinceDate:?];
            if (v35 <= 600.0 && ([v8 timeIntervalSinceDate:v34], v36 <= 600.0))
            {
              v37 = [v73 metadata];
              v38 = [MEMORY[0x277CFE230] probabilityVector];
              v39 = [v37 objectForKeyedSubscript:v38];

              v40 = [v39 allValues];
              v41 = [v40 valueForKeyPath:@"@max.self"];

              [v41 doubleValue];
              v43 = v42;
              [(ARPHomeControlSuggester *)self scoreThresholdForMicrolocationSuggestionsConsidered];
              if (v43 >= v44)
              {
                v45 = [v39 allKeysForObject:v41];
                v46 = [v45 firstObject];

                v47 = [v46 UUIDString];
                v33 = [v77 objectForKeyedSubscript:v47];
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

        v70 = v8;
        v48 = [MEMORY[0x277CBEB40] orderedSet];
        v49 = [v33 allValues];
        v50 = [v49 valueForKeyPath:@"@sum.self"];
        [v50 doubleValue];
        v52 = v51;

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v53 = [v33 allKeys];
        v54 = [v53 countByEnumeratingWithState:&v79 objects:v87 count:16];
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
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v79 + 1) + 8 * i);
              v59 = [v33 objectForKeyedSubscript:v58];
              [v59 floatValue];
              [v58 setScore:v60 / v52];

              [v48 addObject:v58];
            }

            v55 = [v53 countByEnumeratingWithState:&v79 objects:v87 count:16];
          }

          while (v55);
        }

        v61 = [v48 array];
        v62 = [v61 mutableCopy];

        v63 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
        v86 = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        [v62 sortUsingDescriptors:v64];

        v65 = v71;
        if (v71)
        {
          v10 = v76;
          v13 = v77;
          if ([v62 count] < v71)
          {
            v65 = [v62 count];
          }

          v14 = [v62 subarrayWithRange:{0, v65}];
        }

        else
        {
          v14 = v62;
          v10 = v76;
          v13 = v77;
        }

        v29 = v78;

        v24 = v69;
        v8 = v70;
        v31 = v75;
        v30 = v73;
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

- (id)nextActionBasedsuggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 correlationsFile:(id)a5
{
  v83[14] = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (!v7)
  {
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_43;
  }

  v81 = 0;
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v7 options:1 error:&v81];
  v9 = v81;
  if (v9)
  {
    v10 = v9;
    v11 = ARPLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ARPHomeControlSuggester nextActionBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
    }

    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_42;
  }

  v62 = a3;
  v72 = v7;
  v80 = 0;
  v71 = v8;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v80];
  v70 = v80;
  v11 = [v13 nextActionCorrelationsDictionary];
  v69 = [v13 archiveDate];

  v14 = [(ARPHomeControlSuggester *)self mostRecentHomeKitEvent];
  v73 = MEMORY[0x277CBEB98];
  v75 = v14;
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
    v42 = [MEMORY[0x277CBEB40] orderedSet];
    v43 = [v26 allValues];
    v44 = [v43 valueForKeyPath:@"@sum.self"];
    [v44 doubleValue];
    v46 = v45;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v47 = [v11 allKeys];
    v48 = [v47 countByEnumeratingWithState:&v76 objects:v82 count:16];
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
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v76 + 1) + 8 * i);
          v53 = [v26 objectForKeyedSubscript:v52];
          [v53 floatValue];
          v55 = v54 + 1.0;
          v56 = [v11 allKeys];
          [v52 setScore:{v55 / (v46 + objc_msgSend(v56, "count"))}];

          [v42 addObject:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v49);
    }

    v57 = [v42 array];
    v58 = [v57 mutableCopy];

    v59 = v62;
    if (v62)
    {
      v24 = v75;
      if ([v58 count] < v62)
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

  v25 = [v75 eventBody];
  v26 = [v25 valueForKey:@"base"];

  if (!v26)
  {
    v26 = ARPLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ARPHomeControlSuggester nextActionBasedsuggestionsWithMaxSuggestions:referenceDate:correlationsFile:];
    }

    goto LABEL_40;
  }

  v27 = [v75 eventBody];
  getBMHomeKitClientAccessoryControlEventClass();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v29 = [v75 eventBody];
  v30 = v29;
  if ((isKindOfClass & 1) == 0)
  {
    getBMHomeKitClientActionSetEventClass();
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    v30 = [v75 eventBody];
    if (v37)
    {
      v33 = objc_alloc_init(ARPHomeControlSuggestion);
      [(ARPHomeControlSuggestion *)v33 setType:1];
      v38 = [v30 actionSetUniqueIdentifier];
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

      v30 = [v75 eventBody];
      v33 = objc_alloc_init(ARPHomeControlSuggestion);
      [(ARPHomeControlSuggestion *)v33 setType:0];
      v38 = [v30 accessoryUniqueIdentifier];
    }

    v40 = v38;
    [(ARPHomeControlSuggestion *)v33 setTargetUUID:v38];

    v36 = [v26 homeUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setHomeUUID:v36];
LABEL_20:

    if (v33)
    {
      v30 = [v11 objectForKeyedSubscript:v33];
      goto LABEL_24;
    }

LABEL_23:
    v30 = 0;
LABEL_24:
    v41 = [v30 count];

    if (v41)
    {

      v26 = v30;
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  v31 = [v29 serviceType];
  v32 = [v74 containsObject:v31];

  if ((v32 & 1) == 0)
  {
    v33 = objc_alloc_init(ARPHomeControlSuggestion);
    [(ARPHomeControlSuggestion *)v33 setType:0];
    v34 = [v30 accessoryUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setTargetUUID:v34];

    v35 = [v26 homeUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setHomeUUID:v35];

    v36 = [v30 serviceUniqueIdentifier];
    [(ARPHomeControlSuggestion *)v33 setAccessoryServiceUUID:v36];
    goto LABEL_20;
  }

LABEL_39:

LABEL_40:
  v12 = MEMORY[0x277CBEBF8];
LABEL_41:
  v8 = v71;
  v7 = v72;
  v10 = v70;

LABEL_42:
LABEL_43:

  v60 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)timeBasedSuggestionsWithMaxSuggestions:(unint64_t)a3 referenceDate:(id)a4 fallBackToFrequency:(BOOL)a5
{
  v5 = a5;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a4;
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

  v12 = [MEMORY[0x277CBEB40] orderedSet];
  v33 = v8;
  v13 = [(ARPHomeControlSuggester *)self timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:a3 events:v9 referenceDate:v8];
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

        [v12 addObject:*(*(&v42 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v15);
  }

  if (v5)
  {
    if (a3)
    {
      if ([v12 count] >= a3)
      {
        goto LABEL_32;
      }

      [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:a3 events:v9 useScenes:0];
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
          if ([v12 count] >= a3)
          {
            break;
          }

          [v12 addObject:v23];
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

            [v12 addObject:*(*(&v34 + 1) + 8 * j)];
          }

          v27 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v27);
      }
    }
  }

LABEL_32:
  v30 = [v12 array];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)timeBucketFrequencyBasedSuggestionsWithMaxSuggestions:(unint64_t)a3 events:(id)a4 referenceDate:(id)a5
{
  v24 = self;
  v25 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v29 = [MEMORY[0x277CBEA80] currentCalendar];
  v26 = v7;
  v8 = [v29 components:32 fromDate:v7];
  v9 = [v8 hour];
  v27 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
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
        v15 = [v14 eventBody];
        v16 = [v15 valueForKey:@"base"];
        v17 = [v16 dateInterval];
        v18 = [v17 startDate];

        if (v18)
        {
          v19 = [v29 components:32 fromDate:v18];

          if (([v19 hour] ^ v9) <= 3)
          {
            [v27 addObject:v14];
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

  v21 = [(ARPHomeControlSuggester *)v24 frequencybasedSuggestionsWitMaxSuggestions:v25 events:v27];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)a3 events:(id)a4 useScenes:(BOOL)a5
{
  v131 = a5;
  v169[5] = *MEMORY[0x277D85DE8];
  v147 = a4;
  v146 = [MEMORY[0x277CBEB38] dictionary];
  v130 = [MEMORY[0x277CBEB38] dictionary];
  v149 = [MEMORY[0x277CBEB38] dictionary];
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

  v19 = [v147 lastObject];
  v20 = [v19 eventBody];
  v21 = [v20 valueForKey:@"base"];
  v22 = [v21 dateInterval];
  v145 = [v22 startDate];

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v23 = v147;
  v133 = v9;
  v135 = v23;
  v148 = [v23 countByEnumeratingWithState:&v160 objects:v167 count:16];
  if (!v148)
  {
    v139 = 0;
    v24 = 0;
    v26 = v146;
    goto LABEL_38;
  }

  v139 = 0;
  v24 = 0;
  v25 = *v161;
  v26 = v146;
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
      v29 = [v28 eventBody];
      v30 = [v29 valueForKey:@"base"];

      if (!v30)
      {
        v41 = ARPLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [ARPHomeControlSuggester frequencybasedSuggestionsWitMaxSuggestions:v159 events:v41 useScenes:?];
        }

        goto LABEL_31;
      }

      v31 = [v30 source];
      v32 = [v9 containsObject:v31];

      if (v32)
      {
        goto LABEL_32;
      }

      v33 = [v30 dateInterval];
      v34 = [v33 startDate];
      [v145 timeIntervalSinceDate:v34];
      v36 = (v35 / 86400.0);

      v37 = exp(v36 * -0.5);
      v38 = [v28 eventBody];
      getBMHomeKitClientAccessoryControlEventClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v40 = [v28 eventBody];
      v41 = v40;
      if (isKindOfClass)
      {
        v42 = [v40 serviceType];
        v43 = [v137 containsObject:v42];

        if (v43)
        {
          v26 = v146;
          goto LABEL_17;
        }

        v53 = objc_alloc_init(ARPHomeControlSuggestion);
        [(ARPHomeControlSuggestion *)v53 setType:0];
        v54 = [v41 accessoryUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setTargetUUID:v54];

        v55 = [v30 homeUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setHomeUUID:v55];

        v56 = [v41 serviceUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setAccessoryServiceUUID:v56];

        v57 = [v24 dateInterval];
        v58 = [v57 startDate];
        v141 = v24;
        if (v58)
        {
          v59 = v58;
          v60 = v24;
          v61 = [v30 dateInterval];
          v62 = [v61 startDate];
          v63 = [v60 dateInterval];
          v64 = [v63 startDate];
          [v62 timeIntervalSinceDate:v64];
          v66 = v65;

          goto LABEL_23;
        }

LABEL_25:

        goto LABEL_26;
      }

      getBMHomeKitClientActionSetEventClass();
      objc_opt_class();
      v44 = objc_opt_isKindOfClass();

      v41 = [v28 eventBody];
      if (v44)
      {
        v45 = objc_alloc_init(ARPHomeControlSuggestion);
        [(ARPHomeControlSuggestion *)v45 setType:1];
        v46 = [v41 actionSetUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v45 setTargetUUID:v46];

        v47 = [v30 homeUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v45 setHomeUUID:v47];

        v26 = v146;
        if (v131)
        {
          v48 = MEMORY[0x277CCABB0];
          v49 = [v149 objectForKeyedSubscript:v45];
          [v49 floatValue];
          v51 = [v48 numberWithDouble:v37 + v50];
          [v149 setObject:v51 forKeyedSubscript:v45];

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
        v41 = [v28 eventBody];
        v53 = objc_alloc_init(ARPHomeControlSuggestion);
        [(ARPHomeControlSuggestion *)v53 setType:0];
        v68 = [v41 accessoryUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setTargetUUID:v68];

        v69 = [v30 homeUniqueIdentifier];
        [(ARPHomeControlSuggestion *)v53 setHomeUUID:v69];

        v57 = [v24 dateInterval];
        v70 = [v57 startDate];
        v141 = v24;
        if (!v70)
        {
          goto LABEL_25;
        }

        v59 = v70;
        v71 = [v30 dateInterval];
        v72 = [v71 startDate];
        v73 = [v24 dateInterval];
        v74 = [v73 startDate];
        [v72 timeIntervalSinceDate:v74];
        v66 = v75;

LABEL_23:
        if (v66 <= 1.0)
        {
          v76 = MEMORY[0x277CCABB0];
          v77 = [v130 objectForKeyedSubscript:v53];
          [v77 doubleValue];
          v79 = [v76 numberWithDouble:v37 + v78];
          [v130 setObject:v79 forKeyedSubscript:v53];

          v26 = v146;
          goto LABEL_29;
        }

LABEL_26:
        v80 = [v139 dateInterval];
        v81 = [v80 startDate];
        v82 = [v30 dateInterval];
        v83 = [v82 startDate];
        v84 = [v81 isEqualToDate:v83];

        v26 = v146;
        if (v84)
        {
          v9 = v133;
          v23 = v135;
          v24 = v141;
        }

        else
        {
          v85 = MEMORY[0x277CCABB0];
          v86 = [v146 objectForKeyedSubscript:v53];
          [v86 doubleValue];
          v88 = [v85 numberWithDouble:v37 + v87];
          [v146 setObject:v88 forKeyedSubscript:v53];

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

      v26 = v146;
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

  v91 = [v26 allValues];
  v92 = [v91 valueForKeyPath:@"@sum.self"];
  [v92 doubleValue];
  v94 = v93;

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v95 = [v26 allKeys];
  v96 = [v95 countByEnumeratingWithState:&v154 objects:v166 count:16];
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
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v154 + 1) + 8 * i);
        v101 = [v26 objectForKeyedSubscript:v100];
        [v101 doubleValue];
        [v100 setScore:v102 / v94];
      }

      v97 = [v95 countByEnumeratingWithState:&v154 objects:v166 count:16];
    }

    while (v97);
  }

  v103 = [v149 allValues];
  v104 = [v103 valueForKeyPath:@"@sum.self"];
  [v104 doubleValue];
  v106 = v105;

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v107 = [v149 allKeys];
  v108 = [v107 countByEnumeratingWithState:&v150 objects:v165 count:16];
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
          objc_enumerationMutation(v107);
        }

        v112 = *(*(&v150 + 1) + 8 * j);
        v113 = [v149 objectForKeyedSubscript:v112];
        [v113 doubleValue];
        [v112 setScore:v114 / v106];
      }

      v109 = [v107 countByEnumeratingWithState:&v150 objects:v165 count:16];
    }

    while (v109);
  }

  v115 = MEMORY[0x277CBEB18];
  v116 = [v26 allKeys];
  v117 = [v115 arrayWithArray:v116];

  if (![v117 count])
  {
    v118 = MEMORY[0x277CBEB18];
    v119 = [v130 allKeys];
    v120 = [v118 arrayWithArray:v119];

    v117 = v120;
  }

  v121 = [v149 allKeys];
  [v117 addObjectsFromArray:v121];

  v122 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v164 = v122;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
  [v117 sortUsingDescriptors:v123];

  v124 = a3;
  if (a3)
  {
    v125 = v135;
    if ([v117 count] < a3)
    {
      v124 = [v117 count];
    }

    v126 = [v117 subarrayWithRange:{0, v124}];
  }

  else
  {
    v126 = v117;
    v125 = v135;
  }

  v127 = *MEMORY[0x277D85DE8];

  return v126;
}

- (id)frequencybasedSuggestionsWitMaxSuggestions:(unint64_t)a3
{
  v5 = [(ARPHomeControlSuggester *)self homeKitEventsWithLookbackDays:30];
  v6 = [(ARPHomeControlSuggester *)self frequencybasedSuggestionsWitMaxSuggestions:a3 events:v5];

  return v6;
}

- (id)homeKitEventsWithLookbackDays:(int64_t)a3
{
  v28 = self;
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = CFAbsoluteTimeGetCurrent() + (1440 * a3) * -60.0;
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
          v23 = [v22 eventBody];
          getBMHomeKitClientMediaAccessoryControlEventClass();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v19 = v19 + 1.0;
          }

          else
          {
            v24 = [v22 eventBody];
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
        [(ARPHomeControlSuggester *)v28 setScoreSceneBoost:v19 / v20 * 4.0];
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

    v13 = [v12 last];
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
    v14 = [v13 sinkWithCompletion:&__block_literal_global_68 receiveInput:v18];
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
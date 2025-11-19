@interface ATXAnchorModelEventFeaturizer
+ (id)locationOfInterestForAnchorOccurrenceDate:(id)a3;
+ (unint64_t)getMinTemporalDistanceFromAnchorDate:(id)a3 toTimeRange:(_NSRange)a4;
+ (void)setHourofDayAndDayOfWeekFromDate:(id)a3 anchorMetadata:(id)a4;
+ (void)setLocationAndLocationTypeOnDate:(id)a3 anchorMetadata:(id)a4;
+ (void)setMonthAndDayOfMonthFromDate:(id)a3 anchorMetadata:(id)a4;
- (ATXAnchorModelEventFeaturizer)init;
- (id)earliestDate:(id)a3;
- (id)featurizeActionEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeActionKeyForActionEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeActionUUIDForActionEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeAnchorEvent:(id)a3 anchor:(id)a4;
- (id)featurizeAppLaunchEvents:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeAppLaunchForActionEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeLinkActionEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeModeEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)historyForActionUUIDWithAppIntentDuetEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)historyForAppLaunchDuetEvents:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)historyForLinkActionChangeEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)historyForModeChangeEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)numAppLaunchesForBundleIds:(id)a3 endDate:(id)a4 dateBuckets:(id)a5;
- (id)numEventsForEventIds:(id)a3 dateBuckets:(id)a4 biomePublisher:(id)a5;
- (id)numModeChangesForModeCandidateId:(id)a3 endDate:(id)a4 dateBuckets:(id)a5;
- (id)numModeChangesForModeCandidateIds:(id)a3 endDate:(id)a4 dateBuckets:(id)a5;
- (id)recentHistoryForActionUUIDWithAppIntentDuetEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)recentHistoryForAppLaunchDuetEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)recentHistoryForModeWithModeEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (void)warmLaunchHistoryForAppEvents:(id)a3 anchorOccurrenceDate:(id)a4;
@end

@implementation ATXAnchorModelEventFeaturizer

- (ATXAnchorModelEventFeaturizer)init
{
  v3.receiver = self;
  v3.super_class = ATXAnchorModelEventFeaturizer;
  result = [(ATXAnchorModelEventFeaturizer *)&v3 init];
  if (result)
  {
    *&result->_shouldComputeLaunchHistoryForAppLaunches = 257;
    result->_shouldComputeLaunchHistoryForActionUUIDLaunches = 1;
  }

  return result;
}

+ (void)setHourofDayAndDayOfWeekFromDate:(id)a3 anchorMetadata:(id)a4
{
  v10 = a4;
  v5 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:a3 timeZone:0];
  v6 = [v5 first];
  if (([v6 integerValue] & 0x8000000000000000) == 0)
  {
    v7 = [v5 second];
    v8 = [v7 integerValue];

    if (v8 < 0)
    {
      goto LABEL_5;
    }

    v9 = [v5 first];
    [v10 setHourOfDay:{objc_msgSend(v9, "unsignedIntValue") / 0xE10uLL}];

    v6 = [v5 second];
    [v10 setDayOfWeek:{objc_msgSend(v6, "unsignedIntValue") + 1}];
  }

LABEL_5:
}

+ (void)setMonthAndDayOfMonthFromDate:(id)a3 anchorMetadata:(id)a4
{
  v10 = a4;
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [v8 components:24 fromDate:v6];

  if (([v9 month] & 0x8000000000000000) == 0 && (objc_msgSend(v9, "day") & 0x8000000000000000) == 0)
  {
    [v10 setMonth:{objc_msgSend(v9, "month")}];
    [v10 setDayOfMonth:{objc_msgSend(v9, "day")}];
  }
}

+ (void)setLocationAndLocationTypeOnDate:(id)a3 anchorMetadata:(id)a4
{
  v11 = a4;
  v5 = a3;
  v6 = [objc_opt_class() locationOfInterestForAnchorOccurrenceDate:v5];

  if (v6)
  {
    v7 = [v6 uuid];
    v8 = [v7 UUIDString];
    [v11 setLocationIdentifier:v8];

    v9 = [v6 type];
    if (v9 > 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = dword_226871FD0[v9];
    }

    [v11 setLocationType:v10];
  }
}

- (id)featurizeAnchorEvent:(id)a3 anchor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setAnchorType:{objc_msgSend(objc_opt_class(), "anchorType")}];
  v8 = [v6 identifier];
  [v7 setAnchorEventIdentifier:v8];

  [v7 setAnchorEventType:{objc_msgSend(objc_opt_class(), "pbAnchorEventTypeFromDuetEvent:", v6)}];
  v9 = objc_opt_class();

  v10 = [v9 anchorOccurenceDateFromDuetEvent:v6];

  [objc_opt_class() setHourofDayAndDayOfWeekFromDate:v10 anchorMetadata:v7];
  [objc_opt_class() setMonthAndDayOfMonthFromDate:v10 anchorMetadata:v7];
  [objc_opt_class() setLocationAndLocationTypeOnDate:v10 anchorMetadata:v7];

  return v7;
}

+ (unint64_t)getMinTemporalDistanceFromAnchorDate:(id)a3 toTimeRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  [v6 timeIntervalSinceReferenceDate];
  if (v7 >= location)
  {
    v10 = location + length;
    [v6 timeIntervalSinceReferenceDate];
    if (v11 <= v10)
    {
      v9 = 0;
    }

    else
    {
      [v6 timeIntervalSinceReferenceDate];
      v9 = v12 - v10;
    }
  }

  else
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = location - v8;
  }

  return v9;
}

+ (id)locationOfInterestForAnchorOccurrenceDate:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v36 = [MEMORY[0x277D41BF8] sharedInstance];
  [v3 timeIntervalSinceNow];
  if (v4 <= -120.0 || ([v3 timeIntervalSinceNow], v5 >= 0.0))
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = [v3 dateByAddingTimeInterval:-115200.0];
    v10 = [MEMORY[0x277CBEAA8] distantFuture];
    v11 = [v8 initWithStartDate:v9 endDate:v10];

    v12 = dispatch_semaphore_create(0);
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__7;
    v53 = __Block_byref_object_dispose__7;
    v54 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __75__ATXAnchorModelEventFeaturizer_locationOfInterestForAnchorOccurrenceDate___block_invoke;
    v46[3] = &unk_278597EC0;
    v48 = &v49;
    v13 = v12;
    v47 = v13;
    v35 = v11;
    [v36 fetchLocationsOfInterestVisitedDuring:v11 handler:v46];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v13 timeoutSeconds:2.0])
    {
      v14 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "LOI fetch near anchor timed out", buf, 2u);
      }
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v14 = v50[5];
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (v15)
      {
        v16 = 0;
        v17 = *v43;
        v18 = 900;
        v34 = v14;
        v31 = *v43;
        do
        {
          v19 = 0;
          v32 = v15;
          do
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v33 = v19;
            v20 = *(*(&v42 + 1) + 8 * v19);
            v21 = [v20 visits];
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v38 objects:v55 count:16];
            if (v23)
            {
              v24 = *v39;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v39 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = [*(*(&v38 + 1) + 8 * i) rangeValue];
                  v28 = [ATXAnchorModelEventFeaturizer getMinTemporalDistanceFromAnchorDate:v3 toTimeRange:v26, v27];
                  if (v28 < v18)
                  {
                    v7 = v20;

                    if (!v28)
                    {

                      v14 = v34;
                      goto LABEL_29;
                    }

                    v16 = v7;
                    v18 = v28;
                  }
                }

                v23 = [v22 countByEnumeratingWithState:&v38 objects:v55 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            v19 = v33 + 1;
            v14 = v34;
            v17 = v31;
          }

          while (v33 + 1 != v32);
          v15 = [v34 countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v15);
        v7 = v16;
        goto LABEL_29;
      }
    }

    v7 = 0;
LABEL_29:

    _Block_object_dispose(&v49, 8);
    goto LABEL_30;
  }

  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelEventFeaturizer locationOfInterestForAnchorOccurrenceDate:v6];
  }

  v35 = [v36 previousLOIAndCurrentLOI];
  v7 = [v35 second];
LABEL_30:

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

void __75__ATXAnchorModelEventFeaturizer_locationOfInterestForAnchorOccurrenceDate___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)warmLaunchHistoryForAppEvents:(id)a3 anchorOccurrenceDate:(id)a4
{
  v38[6] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  bundleIdToLaunchHistoryDict = self->_bundleIdToLaunchHistoryDict;
  self->_bundleIdToLaunchHistoryDict = v8;

  v28 = [v6 dateByAddingTimeInterval:-2419201.0];
  v27 = [v6 dateByAddingTimeInterval:-1209601.0];
  v10 = [v6 dateByAddingTimeInterval:-604801.0];
  v11 = [v6 dateByAddingTimeInterval:-172801.0];
  v12 = [v6 dateByAddingTimeInterval:-86401.0];
  v13 = [v6 dateByAddingTimeInterval:-43201.0];
  v38[0] = v28;
  v38[1] = v27;
  v38[2] = v10;
  v38[3] = v11;
  v38[4] = v12;
  v38[5] = v13;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
  v14 = [v6 dateByAddingTimeInterval:-1.0];

  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_22];

  v17 = [v15 initWithArray:v16];
  v18 = v17;
  v19 = [(ATXAnchorModelEventFeaturizer *)self numAppLaunchesForBundleIds:v17 endDate:v14 dateBuckets:v29];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__ATXAnchorModelEventFeaturizer_warmLaunchHistoryForAppEvents_anchorOccurrenceDate___block_invoke_2;
  v30[3] = &unk_278597F08;
  v31 = v28;
  v32 = v27;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v37 = self;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v27;
  v25 = v28;
  [v19 enumerateKeysAndObjectsUsingBlock:v30];

  v26 = *MEMORY[0x277D85DE8];
}

void __84__ATXAnchorModelEventFeaturizer_warmLaunchHistoryForAppEvents_anchorOccurrenceDate___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v13 = objc_opt_new();
  v7 = [v5 objectForKeyedSubscript:a1[4]];
  [v13 setLaunchesInLast28Days:{objc_msgSend(v7, "unsignedIntValue")}];

  v8 = [v5 objectForKeyedSubscript:a1[5]];
  [v13 setLaunchesInLast14Days:{objc_msgSend(v8, "unsignedIntValue")}];

  v9 = [v5 objectForKeyedSubscript:a1[6]];
  [v13 setLaunchesInLast7Days:{objc_msgSend(v9, "unsignedIntValue")}];

  v10 = [v5 objectForKeyedSubscript:a1[7]];
  [v13 setLaunchesInLast48Hours:{objc_msgSend(v10, "unsignedIntValue")}];

  v11 = [v5 objectForKeyedSubscript:a1[8]];
  [v13 setLaunchesInLast24Hours:{objc_msgSend(v11, "unsignedIntValue")}];

  v12 = [v5 objectForKeyedSubscript:a1[9]];

  [v13 setLaunchesInLast12Hours:{objc_msgSend(v12, "unsignedIntValue")}];
  [*(a1[10] + 8) setObject:v13 forKeyedSubscript:v6];
}

- (id)historyForAppLaunchDuetEvents:(id)a3 anchorOccurrenceDate:(id)a4
{
  v59[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __84__ATXAnchorModelEventFeaturizer_historyForAppLaunchDuetEvents_anchorOccurrenceDate___block_invoke;
  v57[3] = &unk_278597F30;
  v57[4] = self;
  v45 = [v6 _pas_filteredArrayWithTest:v57];
  v8 = [v45 _pas_mappedArrayWithTransform:&__block_literal_global_35];
  v9 = [v7 dateByAddingTimeInterval:-2419201.0];
  v10 = [v7 dateByAddingTimeInterval:-1209601.0];
  v11 = [v7 dateByAddingTimeInterval:-604801.0];
  v12 = [v7 dateByAddingTimeInterval:-172801.0];
  v13 = [v7 dateByAddingTimeInterval:-86401.0];
  v14 = [v7 dateByAddingTimeInterval:-43201.0];
  v46 = v7;
  v15 = [v7 dateByAddingTimeInterval:-1.0];
  v51 = v10;
  v52 = v9;
  v59[0] = v9;
  v59[1] = v10;
  v49 = v12;
  v50 = v11;
  v59[2] = v11;
  v59[3] = v12;
  v47 = v14;
  v48 = v13;
  v59[4] = v13;
  v59[5] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:6];
  v44 = v8;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v8];
  v42 = v16;
  v43 = v15;
  v18 = [(ATXAnchorModelEventFeaturizer *)self numAppLaunchesForBundleIds:v17 endDate:v15 dateBuckets:v16];

  v19 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        bundleIdToLaunchHistoryDict = self->_bundleIdToLaunchHistoryDict;
        v27 = [v25 bundleId];
        v28 = [(NSMutableDictionary *)bundleIdToLaunchHistoryDict objectForKeyedSubscript:v27];

        if (v28)
        {
          v29 = self->_bundleIdToLaunchHistoryDict;
          v30 = [v25 bundleId];
          v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:v30];
          v32 = v31;
        }

        else
        {
          v31 = objc_opt_new();
          v33 = [v25 bundleId];
          v32 = [v18 objectForKeyedSubscript:v33];

          v34 = [v32 objectForKeyedSubscript:v52];
          [v31 setLaunchesInLast28Days:{objc_msgSend(v34, "unsignedIntValue")}];

          v35 = [v32 objectForKeyedSubscript:v51];
          [v31 setLaunchesInLast14Days:{objc_msgSend(v35, "unsignedIntValue")}];

          v36 = [v32 objectForKeyedSubscript:v50];
          [v31 setLaunchesInLast7Days:{objc_msgSend(v36, "unsignedIntValue")}];

          v37 = [v32 objectForKeyedSubscript:v49];
          [v31 setLaunchesInLast48Hours:{objc_msgSend(v37, "unsignedIntValue")}];

          v38 = [v32 objectForKeyedSubscript:v48];
          [v31 setLaunchesInLast24Hours:{objc_msgSend(v38, "unsignedIntValue")}];

          v39 = [v32 objectForKeyedSubscript:v47];
          [v31 setLaunchesInLast12Hours:{objc_msgSend(v39, "unsignedIntValue")}];

          v30 = v31;
        }

        [v19 addObject:v31];
      }

      v22 = [v20 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v22);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v19;
}

BOOL __84__ATXAnchorModelEventFeaturizer_historyForAppLaunchDuetEvents_anchorOccurrenceDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [a2 bundleId];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

- (id)historyForModeChangeEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v28[6] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v5 dateByAddingTimeInterval:-2419201.0];
  v9 = [v5 dateByAddingTimeInterval:-1209601.0];
  v10 = [v5 dateByAddingTimeInterval:-604801.0];
  v23 = [v5 dateByAddingTimeInterval:-172801.0];
  v25 = [v5 dateByAddingTimeInterval:-86401.0];
  v11 = [v5 dateByAddingTimeInterval:-43201.0];
  v27 = v8;
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = v10;
  v28[3] = v23;
  v28[4] = v25;
  v28[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
  v13 = [v5 dateByAddingTimeInterval:-1.0];

  v26 = [ATXAnchorModelDataStoreWrapper candidateIdFromModeBiomeEvent:v6];

  v14 = [(ATXAnchorModelEventFeaturizer *)self numModeChangesForModeCandidateId:v26 endDate:v13 dateBuckets:v12];
  v15 = [v14 objectForKeyedSubscript:v8];
  [v7 setLaunchesInLast28Days:{objc_msgSend(v15, "unsignedIntValue")}];

  v16 = [v14 objectForKeyedSubscript:v9];
  [v7 setLaunchesInLast14Days:{objc_msgSend(v16, "unsignedIntValue")}];

  v17 = [v14 objectForKeyedSubscript:v10];
  [v7 setLaunchesInLast7Days:{objc_msgSend(v17, "unsignedIntValue")}];

  v18 = [v14 objectForKeyedSubscript:v23];
  [v7 setLaunchesInLast48Hours:{objc_msgSend(v18, "unsignedIntValue")}];

  v19 = [v14 objectForKeyedSubscript:v25];
  [v7 setLaunchesInLast24Hours:{objc_msgSend(v19, "unsignedIntValue")}];

  v20 = [v14 objectForKeyedSubscript:v11];
  [v7 setLaunchesInLast12Hours:{objc_msgSend(v20, "unsignedIntValue")}];

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)historyForLinkActionChangeEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v43[6] = *MEMORY[0x277D85DE8];
  v41 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v6 dateByAddingTimeInterval:-2419201.0];
  v9 = [v6 dateByAddingTimeInterval:-1209601.0];
  v10 = [v6 dateByAddingTimeInterval:-604801.0];
  v11 = [v6 dateByAddingTimeInterval:-172801.0];
  v12 = [v6 dateByAddingTimeInterval:-86401.0];
  [v6 dateByAddingTimeInterval:-43201.0];
  v39 = v9;
  v40 = v8;
  v43[0] = v8;
  v43[1] = v9;
  v37 = v13 = v12;
  v38 = v10;
  v43[2] = v10;
  v43[3] = v11;
  v43[4] = v12;
  v43[5] = v37;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:6];
  v15 = [v6 dateByAddingTimeInterval:-1.0];
  v16 = [(ATXAnchorModelEventFeaturizer *)self earliestDate:v14];
  v42 = 0;
  v17 = [ATXLinkTranscriptUtil systemLinkTranscriptPublisherFromDate:v16 toDate:v15 error:&v42];
  v18 = v42;

  v36 = v18;
  if (v18)
  {
    v19 = v37;
    v20 = v13;
    v21 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v36;
      [ATXAnchorModelEventFeaturizer historyForLinkActionChangeEvent:v36 anchorOccurrenceDate:v21];
      goto LABEL_6;
    }
  }

  else
  {
    v21 = [ATXAnchorModelDataStoreWrapper candidateIdFromLinkActionBiomeEvent:v41];
    v23 = objc_autoreleasePoolPush();
    v35 = v11;
    v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v21, 0}];
    objc_autoreleasePoolPop(v23);
    v25 = [(ATXAnchorModelEventFeaturizer *)self numEventsForEventIds:v24 dateBuckets:v14 biomePublisher:v17];
    v26 = [v25 objectForKeyedSubscript:v21];

    v11 = v35;
    v27 = [v26 objectForKeyedSubscript:v40];
    [v7 setLaunchesInLast28Days:{objc_msgSend(v27, "unsignedIntValue")}];

    v28 = [v26 objectForKeyedSubscript:v39];
    [v7 setLaunchesInLast14Days:{objc_msgSend(v28, "unsignedIntValue")}];

    v29 = [v26 objectForKeyedSubscript:v38];
    [v7 setLaunchesInLast7Days:{objc_msgSend(v29, "unsignedIntValue")}];

    v30 = [v26 objectForKeyedSubscript:v35];
    [v7 setLaunchesInLast48Hours:{objc_msgSend(v30, "unsignedIntValue")}];

    v31 = [v26 objectForKeyedSubscript:v13];
    [v7 setLaunchesInLast24Hours:{objc_msgSend(v31, "unsignedIntValue")}];

    v32 = [v26 objectForKeyedSubscript:v37];
    [v7 setLaunchesInLast12Hours:{objc_msgSend(v32, "unsignedIntValue")}];

    v20 = v13;
    v19 = v37;
  }

  v22 = v36;
LABEL_6:

  v33 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)recentHistoryForAppLaunchDuetEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v6 dateByAddingTimeInterval:-86401.0];
  v10 = [v6 dateByAddingTimeInterval:-43201.0];
  v23[0] = v9;
  v23[1] = v10;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v11 = [v6 dateByAddingTimeInterval:-1.0];

  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = [v7 bundleId];
  v14 = [v12 initWithObjects:{v13, 0}];
  v15 = [(ATXAnchorModelEventFeaturizer *)self numAppLaunchesForBundleIds:v14 endDate:v11 dateBuckets:v22];
  v16 = [v7 bundleId];

  v17 = [v15 objectForKeyedSubscript:v16];

  v18 = [v17 objectForKeyedSubscript:v9];
  [v8 setLaunchesInLast24Hours:{objc_msgSend(v18, "unsignedIntValue")}];

  v19 = [v17 objectForKeyedSubscript:v10];
  [v8 setLaunchesInLast12Hours:{objc_msgSend(v19, "unsignedIntValue")}];

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)recentHistoryForModeWithModeEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v6 dateByAddingTimeInterval:-86401.0];
  v10 = [v6 dateByAddingTimeInterval:-43201.0];
  v19[0] = v9;
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v12 = [v6 dateByAddingTimeInterval:-1.0];

  v13 = [ATXAnchorModelDataStoreWrapper candidateIdFromBiomeEvent:v7];

  v14 = [(ATXAnchorModelEventFeaturizer *)self numModeChangesForModeCandidateId:v13 endDate:v12 dateBuckets:v11];

  v15 = [v14 objectForKeyedSubscript:v9];
  [v8 setLaunchesInLast24Hours:{objc_msgSend(v15, "unsignedIntValue")}];

  v16 = [v14 objectForKeyedSubscript:v10];
  [v8 setLaunchesInLast12Hours:{objc_msgSend(v16, "unsignedIntValue")}];

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)numAppLaunchesForBundleIds:(id)a3 endDate:(id)a4 dateBuckets:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BiomeLibrary();
  v12 = [v11 App];
  v13 = [v12 InFocus];
  v14 = [(ATXAnchorModelEventFeaturizer *)self earliestDate:v8];
  v15 = [v13 atx_publisherWithStartDate:v14 endDate:v9 maxEvents:0 lastN:0 reversed:0];

  v16 = [v15 filterWithIsIncluded:&__block_literal_global_41];

  v17 = [(ATXAnchorModelEventFeaturizer *)self numEventsForEventIds:v10 dateBuckets:v8 biomePublisher:v16];

  return v17;
}

uint64_t __80__ATXAnchorModelEventFeaturizer_numAppLaunchesForBundleIds_endDate_dateBuckets___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

- (id)numModeChangesForModeCandidateId:(id)a3 endDate:(id)a4 dateBuckets:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v8, 0, 0}];
  objc_autoreleasePoolPop(v11);
  v13 = [(ATXAnchorModelEventFeaturizer *)self numModeChangesForModeCandidateIds:v12 endDate:v9 dateBuckets:v10];
  v14 = [v13 objectForKeyedSubscript:v8];

  return v14;
}

- (id)numModeChangesForModeCandidateIds:(id)a3 endDate:(id)a4 dateBuckets:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BiomeLibrary();
  v12 = [v11 UserFocus];
  v13 = [v12 ComputedMode];
  v14 = [(ATXAnchorModelEventFeaturizer *)self earliestDate:v8];
  v15 = [v13 atx_publisherWithStartDate:v14 endDate:v9 maxEvents:0 lastN:0 reversed:0];

  v16 = [(ATXAnchorModelEventFeaturizer *)self numEventsForEventIds:v10 dateBuckets:v8 biomePublisher:v15];

  return v16;
}

- (id)numEventsForEventIds:(id)a3 dateBuckets:(id)a4 biomePublisher:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  if (v10)
  {
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__ATXAnchorModelEventFeaturizer_numEventsForEventIds_dateBuckets_biomePublisher___block_invoke;
    v22[3] = &unk_278597F58;
    objc_copyWeak(&v23, &location);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__ATXAnchorModelEventFeaturizer_numEventsForEventIds_dateBuckets_biomePublisher___block_invoke_2;
    v18[3] = &unk_278597F80;
    v19 = v8;
    v20 = v9;
    v12 = v11;
    v21 = v12;
    v13 = [v10 sinkWithCompletion:v22 receiveInput:v18];
    v14 = v21;
    v15 = v12;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelEventFeaturizer numEventsForEventIds:v16 dateBuckets:? biomePublisher:?];
    }
  }

  return v11;
}

void __81__ATXAnchorModelEventFeaturizer_numEventsForEventIds_dateBuckets_biomePublisher___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

void __81__ATXAnchorModelEventFeaturizer_numEventsForEventIds_dateBuckets_biomePublisher___block_invoke_2(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [ATXAnchorModelDataStoreWrapper candidateIdFromBiomeEvent:v3];
  if (v4 && [a1[4] containsObject:v4])
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    v23 = v3;
    [v3 timestamp];
    v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = a1[5];
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v6 earlierDate:v10];

          if (v11 != v6)
          {
            v12 = [a1[6] objectForKeyedSubscript:v4];

            if (!v12)
            {
              v13 = objc_opt_new();
              [a1[6] setObject:v13 forKeyedSubscript:v4];
            }

            v14 = [a1[6] objectForKeyedSubscript:v4];
            v15 = [v14 objectForKeyedSubscript:v10];

            if (!v15)
            {
              v16 = [a1[6] objectForKeyedSubscript:v4];
              [v16 setObject:&unk_283A552E0 forKeyedSubscript:v10];
            }

            v17 = MEMORY[0x277CCABB0];
            v18 = [a1[6] objectForKeyedSubscript:v4];
            v19 = [v18 objectForKeyedSubscript:v10];
            v20 = [v17 numberWithInteger:{objc_msgSend(v19, "integerValue") + 1}];
            v21 = [a1[6] objectForKeyedSubscript:v4];
            [v21 setObject:v20 forKeyedSubscript:v10];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v3 = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)earliestDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 earlierDate:{v4, v15}];

        if (v11 == v10)
        {
          v12 = v10;

          v4 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)featurizeAppLaunchEvents:(id)a3 anchorOccurrenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_shouldComputeLaunchHistoryForAppLaunches)
  {
    v8 = [(ATXAnchorModelEventFeaturizer *)self historyForAppLaunchDuetEvents:v6 anchorOccurrenceDate:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_new();
  if ([v6 count])
  {
    v10 = 0;
    v29 = v8;
    do
    {
      v11 = [v6 objectAtIndexedSubscript:v10];
      v12 = objc_opt_new();
      v13 = [v11 bundleId];
      [v12 setBundleId:v13];

      v14 = [v11 startDate];
      [v14 timeIntervalSinceDate:v7];
      [v12 setRelativeTimeSinceAnchorInSeconds:v15];

      v16 = +[_ATXAppInfoManager sharedInstance];
      v17 = [v11 bundleId];
      v18 = [v16 appInfoForBundleId:v17];

      v19 = [v18 installDate];
      if (v19)
      {
        [v7 timeIntervalSinceDate:v19];
        v21 = v20 < 172800.0;
      }

      else
      {
        v21 = 0;
      }

      [v12 setAppInstalledInLast48Hours:v21];
      v22 = [v18 genreId];
      v23 = v22;
      if (v22)
      {
        [v12 setGenreId:{objc_msgSend(v22, "longLongValue")}];
      }

      [v12 setApp2VecCluster:{objc_msgSend(&unk_283A552E0, "longLongValue")}];
      if (v8 && [v8 count] > v10)
      {
        [v8 objectAtIndexedSubscript:v10];
        v24 = v6;
        v25 = v7;
        v27 = v26 = v9;
        [v12 setAppLaunchHistory:v27];

        v9 = v26;
        v7 = v25;
        v6 = v24;
        v8 = v29;
      }

      [v9 addObject:v12];

      ++v10;
    }

    while ([v6 count] > v10);
  }

  return v9;
}

- (id)featurizeActionEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(ATXAnchorModelEventFeaturizer *)self featurizeAppLaunchForActionEvent:v7 anchorOccurrenceDate:v6];
  [v8 setAppLaunchMetadata:v9];

  v10 = [(ATXAnchorModelEventFeaturizer *)self featurizeActionKeyForActionEvent:v7 anchorOccurrenceDate:v6];
  [v8 setActionKeyMetadata:v10];

  v11 = MEMORY[0x277CBEB18];
  v12 = [(ATXAnchorModelEventFeaturizer *)self featurizeActionUUIDForActionEvent:v7 anchorOccurrenceDate:v6];

  v13 = [v11 arrayWithObject:v12];
  [v8 setActionUUIDMetadatas:v13];

  return v8;
}

- (id)featurizeModeEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 eventBody];
  v10 = [v9 mode];
  [v8 setModeId:v10];

  v11 = [v7 eventBody];
  [v8 setIsStart:{objc_msgSend(v11, "starting")}];

  [v7 timestamp];
  v13 = v12;
  [v6 timeIntervalSinceReferenceDate];
  [v8 setRelativeTimeSinceAnchorInSeconds:(v13 - v14)];
  v15 = [(ATXAnchorModelEventFeaturizer *)self historyForModeChangeEvent:v7 anchorOccurrenceDate:v6];

  [v8 setModeHistory:v15];

  return v8;
}

- (id)featurizeLinkActionEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 eventBody];
  v10 = [v9 bundleIdentifier];
  [v8 setBundleId:v10];

  v11 = [v7 eventBody];
  v12 = [v11 action];
  v13 = [v12 identifier];
  [v8 setActionId:v13];

  [v7 timestamp];
  v15 = v14;
  [v6 timeIntervalSinceReferenceDate];
  [v8 setRelativeTimeSinceAnchorInSeconds:(v15 - v16)];
  v17 = [(ATXAnchorModelEventFeaturizer *)self historyForLinkActionChangeEvent:v7 anchorOccurrenceDate:v6];

  [v8 setActionHistory:v17];

  return v8;
}

- (id)featurizeAppLaunchForActionEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [ATXAppLaunchDuetEvent alloc];
  v9 = [v7 bundleId];
  v10 = [v7 startDate];
  v11 = [v7 endDate];

  v12 = [(ATXAppLaunchDuetEvent *)v8 initWithBundleId:v9 startDate:v10 endDate:v11];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14 = [(ATXAnchorModelEventFeaturizer *)self featurizeAppLaunchEvents:v13 anchorOccurrenceDate:v6];

  v15 = [v14 objectAtIndexedSubscript:0];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)featurizeActionKeyForActionEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 actionType];
  [v8 setActionType:v9];

  if (self->_shouldComputeLaunchHistoryForActionKeyLaunches)
  {
    v10 = objc_opt_new();
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v6 bundleId];
    v13 = [v6 actionType];
    v14 = [v11 initWithFormat:@"%@:%@", v12, v13];

    v15 = [v7 dateByAddingTimeInterval:-1.0];
    v16 = objc_autoreleasePoolPush();
    v17 = [v15 dateByAddingTimeInterval:-2419201.0];
    v18 = +[_ATXDataStore sharedInstance];
    [v10 setLaunchesInLast28Days:{objc_msgSend(v18, "numActionKeyOccurrencesForActionKey:startDate:endDate:", v14, v17, v15)}];

    objc_autoreleasePoolPop(v16);
    v19 = objc_autoreleasePoolPush();
    v20 = [v15 dateByAddingTimeInterval:-1209601.0];
    v21 = +[_ATXDataStore sharedInstance];
    [v10 setLaunchesInLast14Days:{objc_msgSend(v21, "numActionKeyOccurrencesForActionKey:startDate:endDate:", v14, v20, v15)}];

    objc_autoreleasePoolPop(v19);
    v22 = objc_autoreleasePoolPush();
    v23 = [v15 dateByAddingTimeInterval:-604801.0];
    v24 = +[_ATXDataStore sharedInstance];
    [v10 setLaunchesInLast7Days:{objc_msgSend(v24, "numActionKeyOccurrencesForActionKey:startDate:endDate:", v14, v23, v15)}];

    objc_autoreleasePoolPop(v22);
    v25 = objc_autoreleasePoolPush();
    v26 = [v15 dateByAddingTimeInterval:-172801.0];
    v27 = +[_ATXDataStore sharedInstance];
    [v10 setLaunchesInLast48Hours:{objc_msgSend(v27, "numActionKeyOccurrencesForActionKey:startDate:endDate:", v14, v26, v15)}];

    objc_autoreleasePoolPop(v25);
    v28 = objc_autoreleasePoolPush();
    v29 = [v15 dateByAddingTimeInterval:-86401.0];
    v30 = +[_ATXDataStore sharedInstance];
    [v10 setLaunchesInLast24Hours:{objc_msgSend(v30, "numActionKeyOccurrencesForActionKey:startDate:endDate:", v14, v29, v15)}];

    objc_autoreleasePoolPop(v28);
    v31 = objc_autoreleasePoolPush();
    v32 = [v15 dateByAddingTimeInterval:-43201.0];
    v33 = +[_ATXDataStore sharedInstance];
    [v10 setLaunchesInLast12Hours:{objc_msgSend(v33, "numActionKeyOccurrencesForActionKey:startDate:endDate:", v14, v32, v15)}];

    objc_autoreleasePoolPop(v31);
    [v8 setActionKeyLaunchHistory:v10];
  }

  return v8;
}

- (id)featurizeActionUUIDForActionEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 parameterHashes];
  v10 = [v9 firstObject];
  [v8 setActionUUID:{objc_msgSend(v10, "longLongValue")}];

  v11 = [v6 slotSetHashes];
  v12 = [v11 firstObject];
  [v8 setSlotHash:{objc_msgSend(v12, "longLongValue")}];

  v13 = [v6 paramCount];
  [v8 setParamCount:{objc_msgSend(v13, "unsignedIntValue")}];

  if (self->_shouldComputeLaunchHistoryForActionUUIDLaunches)
  {
    v14 = [(ATXAnchorModelEventFeaturizer *)self historyForActionUUIDWithAppIntentDuetEvent:v6 anchorOccurrenceDate:v7];
    [v8 setActionUUIDLaunchHistory:v14];
  }

  return v8;
}

- (id)historyForActionUUIDWithAppIntentDuetEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 bundleId];
  v10 = [v5 actionType];
  v11 = [v8 initWithFormat:@"%@:%@", v9, v10];

  v12 = [v5 parameterHashes];
  v13 = [v12 firstObject];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v6 dateByAddingTimeInterval:-1.0];
  v16 = objc_autoreleasePoolPush();
  v17 = [v15 dateByAddingTimeInterval:-2419201.0];
  v18 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast28Days:{objc_msgSend(v18, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v17, v15)}];

  objc_autoreleasePoolPop(v16);
  v19 = objc_autoreleasePoolPush();
  v20 = [v15 dateByAddingTimeInterval:-1209601.0];
  v21 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast14Days:{objc_msgSend(v21, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v20, v15)}];

  objc_autoreleasePoolPop(v19);
  v22 = objc_autoreleasePoolPush();
  v23 = [v15 dateByAddingTimeInterval:-604801.0];
  v24 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast7Days:{objc_msgSend(v24, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v23, v15)}];

  objc_autoreleasePoolPop(v22);
  v25 = objc_autoreleasePoolPush();
  v26 = [v15 dateByAddingTimeInterval:-172801.0];
  v27 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast48Hours:{objc_msgSend(v27, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v26, v15)}];

  objc_autoreleasePoolPop(v25);
  v28 = objc_autoreleasePoolPush();
  v29 = [v15 dateByAddingTimeInterval:-86401.0];
  v30 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast24Hours:{objc_msgSend(v30, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v29, v15)}];

  objc_autoreleasePoolPop(v28);
  v31 = objc_autoreleasePoolPush();
  v32 = [v15 dateByAddingTimeInterval:-43201.0];
  v33 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast12Hours:{objc_msgSend(v33, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v32, v15)}];

  objc_autoreleasePoolPop(v31);

  return v7;
}

- (id)recentHistoryForActionUUIDWithAppIntentDuetEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 bundleId];
  v10 = [v5 actionType];
  v11 = [v8 initWithFormat:@"%@:%@", v9, v10];

  v12 = [v5 parameterHashes];
  v13 = [v12 firstObject];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v6 dateByAddingTimeInterval:-1.0];
  v16 = objc_autoreleasePoolPush();
  v17 = [v15 dateByAddingTimeInterval:-86401.0];
  v18 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast24Hours:{objc_msgSend(v18, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v17, v15)}];

  objc_autoreleasePoolPop(v16);
  v19 = objc_autoreleasePoolPush();
  v20 = [v15 dateByAddingTimeInterval:-43201.0];
  v21 = +[_ATXDataStore sharedInstance];
  [v7 setLaunchesInLast12Hours:{objc_msgSend(v21, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v11, v14, v20, v15)}];

  objc_autoreleasePoolPop(v19);

  return v7;
}

- (void)historyForLinkActionChangeEvent:(uint64_t)a1 anchorOccurrenceDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error when fetching Link transcript publisher: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)numEventsForEventIds:(os_log_t)log dateBuckets:biomePublisher:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXAnchorModelEventFeaturizer numEventsForEventIds:dateBuckets:biomePublisher:]";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: could not access biome publisher", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end
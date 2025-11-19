@interface _ATXActionUtils
+ (BOOL)isCallIntentEquivalenceBetweenAction:(id)a3 other:(id)a4;
+ (BOOL)isContainmentBetweenAction:(id)a3 other:(id)a4;
+ (BOOL)isINStartCallIntentSupportedForAction:(id)a3;
+ (BOOL)isTitleEquivalenceBetweenAction:(id)a3 other:(id)a4;
+ (BOOL)shouldAcceptAudioOrVideoCallIntent:(id)a3;
+ (BOOL)shouldAcceptMessageContent:(id)a3;
+ (BOOL)shouldPredictRecipient:(id)a3 withDate:(id)a4 andRecipientDate:(id)a5;
+ (BOOL)uniqueRecipientsMatchedBetweenIntent:(id)a3 andIntent:(id)a4;
+ (double)calculateWeightWith:(unint64_t)a3 strength:(double)result docLength:(unint64_t)a5;
+ (double)computeNormalizedBetaDistEngagementScoreWithPriorAlpha:(int)a3 priorBeta:(int)a4 confirms:(double)a5 rejects:(double)a6 totalConfirms:(double)a7 totalRejects:(double)a8;
+ (id)_extractValueInKeyValueBlob:(id)a3 withKey:(id)a4;
+ (id)actionKeyFilterForCandidateBundleIds:(id)a3 candidateActionTypes:(id)a4 blacklist:(id)a5;
+ (id)atxActionFromProactiveSuggestion:(id)a3;
+ (id)atxActionsFromProactiveSuggestions:(id)a3;
+ (id)filterContainersWithNilAction:(id)a3;
+ (id)firstIntent:(id)a3 inAppLaunchSession:(id)a4;
+ (id)getActionTypeFromActionKey:(id)a3;
+ (id)getActionTypesFromActionKeys:(id)a3;
+ (id)getActivityTypeFromNSUAType:(id)a3;
+ (id)getBundleIdAndActionTypeFromActionKey:(id)a3;
+ (id)getBundleIdFromActionKey:(id)a3;
+ (id)getBundleIdsFromActionKeys:(id)a3;
+ (id)limitParameterCombinations:(id)a3 limit:(int)a4;
+ (id)markTodayInTitleAndUserActivityString:(id)a3 withActionKey:(id)a4;
+ (id)partOfWeekStringForDate:(id)a3;
+ (id)recipientFromMessageIntent:(id)a3;
+ (id)sha256hex:(id)a3;
+ (id)slotSetsForAction:(id)a3;
+ (id)slotSetsForAction:(id)a3 intentCache:(id)a4;
+ (id)stringForCoarseTimePOWLocation:(id)a3 timeZone:(id)a4 coarseGeohash:(int64_t)a5;
+ (id)stringForDayOfWeek:(id)a3 timeZone:(id)a4;
+ (id)stringForSpecificTimeDOWLocation:(id)a3 timeZone:(id)a4 geohash:(int64_t)a5;
+ (id)stringForTimeOfDayAndDayOfWeek:(id)a3 timeZone:(id)a4;
+ (id)stringForTwoHourTimeWindow:(id)a3 timeZone:(id)a4;
+ (id)swapUserActivityString:(id)a3 withActionKey:(id)a4 withNewTitle:(id)a5 withNewDateString:(id)a6;
+ (id)timeOfDayAndDayOfWeekForDate:(id)a3 timeZone:(id)a4;
+ (int)timeBucketFromZeroToTwentyFour:(id)a3 timeZone:(id)a4;
+ (int64_t)localHourOfDayFromDate:(id)a3;
+ (void)fetchDataAndUpdateContentAttributeSetForAction:(id)a3;
+ (void)prefillActionHistograms;
+ (void)prefillActionSlotDatabase;
+ (void)resetActionPredictions;
+ (void)resetHistogramsAndRemoveUICaches;
@end

@implementation _ATXActionUtils

+ (id)getBundleIdAndActionTypeFromActionKey:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":" options:2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, [v3 rangeOfString:@":" options:2 range:{v5 + 1, objc_msgSend(v3, "length") + ~v5}] != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D42648]);
    v7 = [v3 substringToIndex:v5];
    v8 = [v3 substringFromIndex:v5 + 1];
    v9 = [v6 initWithFirst:v7 second:v8];
  }

  return v9;
}

+ (id)getActivityTypeFromNSUAType:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"NSUA_" options:2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(@"NSUA_", "length") + v4}];
  }

  return v5;
}

+ (id)getBundleIdFromActionKey:(id)a3
{
  v3 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:a3];
  v4 = [v3 first];

  return v4;
}

+ (id)getActionTypeFromActionKey:(id)a3
{
  v3 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:a3];
  v4 = [v3 second];

  return v4;
}

+ (id)getActionTypesFromActionKeys:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [a1 getActionTypeFromActionKey:{v12, v16}];
        if (!v13)
        {
          [(_ATXActionUtils *)a2 getActionTypesFromActionKeys:a1, v12];
        }

        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getBundleIdsFromActionKeys:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [a1 getBundleIdFromActionKey:{v12, v16}];
        if (!v13)
        {
          [(_ATXActionUtils *)a2 getBundleIdsFromActionKeys:a1, v12];
        }

        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)limitParameterCombinations:(id)a3 limit:(int)a4
{
  v7 = a3;
  if (a4 < 0)
  {
    [_ATXActionUtils limitParameterCombinations:a2 limit:a1];
  }

  if ([v7 count] > a4)
  {
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_264];
    v9 = [v8 subarrayWithRange:{0, a4}];
    v10 = [v9 copy];

    v7 = v10;
  }

  return v7;
}

+ (id)slotSetsForAction:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[ATXIntentMetadataCache sharedInstance];
  v6 = [v4 slotSetsForAction:v3 intentCache:v5];

  return v6;
}

+ (id)slotSetsForAction:(id)a3 intentCache:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v72 = [v5 intent];
  if (![v5 actionType] || objc_msgSend(v5, "actionType") == 2)
  {
    v7 = [v6 validParameterCombinationsWithSchemaForIntent:v72];
    v8 = [v5 predictableParameterCombinations];
    v9 = [v8 count];

    v70 = v6;
    v71 = v5;
    if (v9)
    {
      v10 = objc_opt_new();
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v11 = [v5 predictableParameterCombinations];
      v12 = [v11 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v80;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v80 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v79 + 1) + 8 * i);
            v17 = [v16 parameterKeys];

            if (v17)
            {
              v18 = objc_alloc_init(MEMORY[0x277CD3E58]);
              v19 = [v16 parameterKeys];
              [v10 setObject:v18 forKeyedSubscript:v19];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v13);
      }

      v20 = v7;
    }

    else
    {
      if (v6 && v7)
      {
        goto LABEL_20;
      }

      v46 = MEMORY[0x277CEB3B8];
      v47 = [v5 bundleId];
      v20 = [v46 schemaWithoutFallbackForBundle:v47];

      v48 = MEMORY[0x277CEB3B8];
      v49 = [v5 bundleId];
      v50 = [v48 isSystemAppForBundleId:v49];

      if (v20)
      {
        v51 = [v72 _validParameterCombinationsWithSchema:v20];

        [v6 setValidParameterCombinationsWithSchema:v51 intent:v72];
        v7 = v51;
      }

      if ((([v7 count] == 0) & v50) != 1)
      {
        v67 = MEMORY[0x277CBEB98];
        v68 = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
        v25 = [v67 setWithObject:v68];

LABEL_35:
        goto LABEL_53;
      }

      v10 = [v72 _validParameterCombinations];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        v7 = v10;
LABEL_20:
        v26 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [_ATXActionUtils slotSetsForAction:v7 intentCache:v26];
        }

        v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v69 = v7;
        v27 = [v7 allKeys];
        v28 = +[_ATXGlobals sharedInstance];
        v29 = +[_ATXActionUtils limitParameterCombinations:limit:](_ATXActionUtils, "limitParameterCombinations:limit:", v27, [v28 maximumParameterCombinations]);

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v30 = v29;
        v31 = [v30 countByEnumeratingWithState:&v73 objects:v83 count:16];
        v32 = v72;
        if (v31)
        {
          v33 = v31;
          v34 = *v74;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v74 != v34)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v73 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_31;
              }

              v37 = v32;
              if (![v36 containsObject:@"content"] || +[_ATXActionUtils shouldAcceptMessageContent:](_ATXActionUtils, "shouldAcceptMessageContent:", v37))
              {

LABEL_31:
                v37 = [objc_alloc(MEMORY[0x277CEB848]) initWithParameters:v36];
                [v25 addObject:v37];
              }

              v32 = v72;
            }

            v33 = [v30 countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v33);
        }

        v6 = v70;
        v5 = v71;
        v7 = v69;
        goto LABEL_35;
      }

      v11 = [v72 buckets];
      if ([v11 count])
      {
        v52 = objc_opt_new();
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __49___ATXActionUtils_slotSetsForAction_intentCache___block_invoke;
        v77[3] = &unk_2785A2210;
        v53 = v52;
        v78 = v53;
        [v10 enumerateKeysAndObjectsUsingBlock:v77];
        v54 = [MEMORY[0x277CBEB98] setWithObject:@"buckets"];
        v55 = [v10 objectForKeyedSubscript:v54];

        if (v55 && [v11 count])
        {
          v56 = 0;
          do
          {
            v57 = [v10 objectForKeyedSubscript:v54];
            v58 = MEMORY[0x277CBEB98];
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"bucket_%i", ++v56];
            v60 = [v58 setWithObject:v59];
            [v53 setObject:v57 forKeyedSubscript:v60];

            v61 = [v11 count];
            v62 = 4;
            if (v61 < 4)
            {
              v62 = v61;
            }
          }

          while (v62 > v56);
        }

        v63 = v53;

        v10 = v63;
      }
    }

    goto LABEL_15;
  }

  if ([v5 actionType] == 6)
  {
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_alloc(MEMORY[0x277CEB848]);
    v23 = [MEMORY[0x277CBEB98] setWithObject:@"menuItemPath"];
    v24 = [v22 initWithParameters:v23];
    v25 = [v21 setWithObject:v24];
  }

  else
  {
    if ([v5 actionType] == 7)
    {
      v38 = [v5 parameterKeysForToolInvocation];
      v39 = [v38 count];

      if (v39)
      {
        v40 = MEMORY[0x277CBEB98];
        v41 = objc_alloc(MEMORY[0x277CEB848]);
        v42 = MEMORY[0x277CBEB98];
        v43 = [v5 parameterKeysForToolInvocation];
        v44 = [v42 setWithArray:v43];
        v45 = [v41 initWithParameters:v44];
        v25 = [v40 setWithObject:v45];

        goto LABEL_53;
      }
    }

    v64 = MEMORY[0x277CBEB98];
    v23 = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
    v25 = [v64 setWithObject:v23];
  }

LABEL_53:
  v65 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)filterContainersWithNilAction:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithBlock:&__block_literal_global_71_2];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

+ (void)fetchDataAndUpdateContentAttributeSetForAction:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 itemIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 bundleId];

    if (v6)
    {
      v7 = dispatch_semaphore_create(0);
      v8 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
      v9 = *MEMORY[0x277CC2750];
      v24[0] = @"_kMDItemThumbnailDataPath";
      v24[1] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v11 = *MEMORY[0x277CCA190];
      v12 = [v3 bundleId];
      v13 = [v3 itemIdentifier];
      v23 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __66___ATXActionUtils_fetchDataAndUpdateContentAttributeSetForAction___block_invoke;
      v20 = &unk_2785A2258;
      v21 = v3;
      v22 = v7;
      v15 = v7;
      [v8 slowFetchAttributes:v10 protectionClass:v11 bundleID:v12 identifiers:v14 completionHandler:&v17];

      [MEMORY[0x277D425A0] waitForSemaphore:v15 timeoutSeconds:{5.0, v17, v18, v19, v20}];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)actionKeyFilterForCandidateBundleIds:(id)a3 candidateActionTypes:(id)a4 blacklist:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87___ATXActionUtils_actionKeyFilterForCandidateBundleIds_candidateActionTypes_blacklist___block_invoke;
  aBlock[3] = &unk_2785A05C8;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = _Block_copy(aBlock);

  return v13;
}

+ (void)prefillActionHistograms
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v3 = [v2 histogramForLaunchType:14];
  v4 = [v2 histogramForLaunchType:17];
  v5 = [v2 histogramForLaunchType:20];
  v6 = [v2 histogramForLaunchType:16];
  v7 = [v2 histogramForLaunchType:19];
  v8 = [v2 histogramForLaunchType:22];
  v9 = objc_opt_new();
  v29 = [v9 dateByAddingTimeInterval:-1209600.0];
  v10 = objc_opt_new();
  v11 = [v10 getCombinedIntentEventsBetweenStartDate:v29 endDate:v9 ascending:1];

  [v3 resetData];
  [v4 resetData];
  [v5 resetData];
  [v6 resetData];
  [v7 resetData];
  [v8 resetData];
  v28 = +[ATXActionFeedback sharedInstance];
  [v28 resetData];
  v12 = v9;
  v13 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42___ATXActionUtils_prefillActionHistograms__block_invoke;
  v30[3] = &unk_2785A2280;
  v38 = &v40;
  v39 = a1;
  v27 = v11;
  v31 = v27;
  v25 = v3;
  v32 = v25;
  v14 = v4;
  v33 = v14;
  v15 = v5;
  v34 = v15;
  v16 = v6;
  v35 = v16;
  v17 = v7;
  v36 = v17;
  v18 = v8;
  v37 = v18;
  [v13 enumerateAppLaunchSessionsBetweenStartDate:v29 endDate:v12 shouldReverse:0 bundleIDFilter:0 block:v30];
  v19 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v17;
    v21 = v12;
    v22 = v41[3];
    v23 = [v27 count];
    *buf = 134218240;
    v45 = v22;
    v46 = 2048;
    v47 = v23;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Received %lu app sessions, %lu combined intent and activity events to prefill histograms", buf, 0x16u);
    v12 = v21;
    v17 = v20;
  }

  if ([v2 persistentStore])
  {
    flushHistogram(v25);
    flushHistogram(v14);
    flushHistogram(v15);
    flushHistogram(v16);
    flushHistogram(v17);
    flushHistogram(v18);
  }

  _Block_object_dispose(&v40, 8);
  v24 = *MEMORY[0x277D85DE8];
}

+ (void)prefillActionSlotDatabase
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [v2 dateByAddingTimeInterval:-1209600.0];
  v4 = objc_opt_new();
  v5 = [v4 getCombinedIntentEventsBetweenStartDate:v3 endDate:v2 ascending:1];

  v6 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = [v5 count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Prefilling slot database with %lu combined intent and activity events", buf, 0xCu);
  }

  v7 = +[_ATXDataStore sharedInstance];
  [v7 removeAllSlotsFromActionLog];
  v8 = +[_ATXAppPredictor sharedInstance];
  v9 = [v8 appIntentMonitor];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        LODWORD(v12) = 1.0;
        [v9 updateActionPredictionSlotResolutionForIntentEvent:*(*(&v17 + 1) + 8 * v15++) weight:0 prevLocationUUID:0 locationUUID:4 currentMotionType:0 appSessionStartDate:0 appSessionEndDate:v12 geohash:-1 coarseGeohash:{-1, v17}];
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)firstIntent:(id)a3 inAppLaunchSession:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 appSessionStartTime];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v6 appSessionEndTime];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v30;
    v18 = -INFINITY;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [v20 startDate];
        v22 = v21;
        if (v21)
        {
          [v21 timeIntervalSinceReferenceDate];
          if (v9 <= v23 && v23 <= v12)
          {
            v25 = v23;
            if (!v16 || v23 < v18)
            {
              v26 = v20;

              v18 = v25;
              v16 = v26;
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)resetHistogramsAndRemoveUICaches
{
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  v2 = [v3 queue];
  dispatch_sync(v2, &__block_literal_global_93_1);
}

+ (void)resetActionPredictions
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v3 = [v2 histogramForLaunchType:14];
  [v3 resetData];

  v4 = [v2 histogramForLaunchType:16];
  [v4 resetData];

  v5 = [v2 histogramForLaunchType:17];
  [v5 resetData];

  v6 = [v2 histogramForLaunchType:19];
  [v6 resetData];

  v7 = [v2 histogramForLaunchType:20];
  [v7 resetData];

  v8 = [v2 histogramForLaunchType:22];
  [v8 resetData];

  v9 = [v2 histogramForLaunchType:23];
  [v9 resetData];

  v10 = [v2 histogramForLaunchType:25];
  [v10 resetData];

  v11 = [v2 histogramForLaunchType:26];
  [v11 resetData];

  v37 = v2;
  v12 = [v2 histogramForLaunchType:28];
  [v12 resetData];

  +[_ATXAppLaunchHistogramManager resetDataForCategoricalHistograms];
  v13 = +[ATXActionFeedback sharedInstance];
  [v13 resetData];

  v14 = objc_opt_new();
  [v14 resetAppIntentLocationData];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = +[_ATXAppInfoManager sharedInstance];
  v16 = [v15 allApps];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v39 = *v45;
    do
    {
      v19 = 0;
      do
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = +[ATXHistogramBundleIdTable sharedInstance];
        v23 = [MEMORY[0x277CBEB58] setWithObject:v20];
        v24 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v23 candidateActionTypes:0 blacklist:0];
        v25 = [v22 allKeysFilteredBy:v24];

        v26 = +[_ATXAppLaunchSequenceManager sharedInstance];
        v27 = [MEMORY[0x277CBEB98] setWithArray:v25];
        [v26 deleteAllLaunchesForAppActions:v27];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v28 = v25;
        v29 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v41;
          do
          {
            v32 = 0;
            do
            {
              if (*v41 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v40 + 1) + 8 * v32);
              v34 = +[ATXHistogramBundleIdTable sharedInstance];
              [v34 remove:v33];

              ++v32;
            }

            while (v30 != v32);
            v30 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v30);
        }

        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v19 != v18);
      v18 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v18);
  }

  v35 = +[_ATXDataStore sharedInstance];
  [v35 removeAllSlotsFromActionLog];
  [v35 removeAllSlotsFromActionFeedback];
  [v35 removeAllSlotsFromSlotSetKey];

  v36 = *MEMORY[0x277D85DE8];
}

+ (id)_extractValueInKeyValueBlob:(id)a3 withKey:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v5;
  v7 = [v5 componentsSeparatedByString:{@", '"}];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 containsString:@"'="])
        {
          v14 = [v13 componentsSeparatedByString:@"'="];
        }

        else
        {
          v14 = 0;
        }

        if ([v14 count] == 2)
        {
          v15 = [v14 objectAtIndex:0];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {
            v17 = [v14 objectAtIndex:1];
            v18 = [v17 stringByRemovingPercentEncoding];

            v10 = v18;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)swapUserActivityString:(id)a3 withActionKey:(id)a4 withNewTitle:(id)a5 withNewDateString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 componentsSeparatedByString:@"'"];
  v15 = [v14 objectAtIndexedSubscript:1];

  v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"{}"];
  v17 = [v10 componentsSeparatedByCharactersInSet:v16];
  v18 = [v17 objectAtIndex:1];
  v19 = [v18 substringFromIndex:1];

  if (v19 && [v11 isEqualToString:*MEMORY[0x277CEB1D8]])
  {
    v20 = [a1 _extractValueInKeyValueBlob:v19 withKey:*MEMORY[0x277CEB1D0]];
    v21 = v20;
    if (v15 && v20)
    {
      v22 = [v10 stringByReplacingOccurrencesOfString:v15 withString:v12];
      v23 = [v22 stringByReplacingOccurrencesOfString:v21 withString:v13];

      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v10;
LABEL_8:

  return v23;
}

+ (id)markTodayInTitleAndUserActivityString:(id)a3 withActionKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v5 dateInterval];
  v9 = [v8 startDate];
  v10 = [v7 startOfDayForDate:v9];

  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = MEMORY[0x277CEB2C8];
  v13 = [v5 action];
  v14 = [v13 userActivityString];
  v64 = v6;
  v15 = [v12 getDateFromUserActivityString:v14 forActionKey:v6];
  v16 = [v11 startOfDayForDate:v15];

  if (v10 && v16)
  {
    v17 = v16;
    v18 = v10;
    v19 = objc_opt_new();
    [v19 setDateFormat:@"MMMM dd, yyyy"];
    v20 = [v5 action];
    v21 = [v20 userActivity];
    v22 = [v21 title];
    v23 = [v22 stringByRemovingPercentEncoding];
    v24 = [v19 dateFromString:v23];

    v63 = v24;
    if (!v24)
    {
      v25 = v5;

      v10 = v18;
      v16 = v17;
      goto LABEL_13;
    }

    v62 = v19;
    v25 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = v18;
    v26 = v18;
    v16 = v17;
    v27 = [v25 components:16 fromDate:v26 toDate:v17 options:0];
    v28 = [v27 day];

    if (v28)
    {
      v29 = 0x277CEB000;
      if (v28 != 1)
      {
        v50 = 1;
LABEL_11:

        if (!v50)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v30 = @"$TOMORROW_FROM_REFERENCE_DATE$";
      v31 = @"$TOMORROW$";
    }

    else
    {
      v30 = @"$TODAY_FROM_REFERENCE_DATE$";
      v31 = @"$TODAY$";
      v29 = 0x277CEB000uLL;
    }

    v33 = v32 = v31;
    v34 = [v5 action];
    v35 = [v34 userActivity];
    [v35 setTitle:v33];

    v36 = [v5 action];
    v37 = [v36 userActivityString];
    v61 = [_ATXActionUtils swapUserActivityString:v37 withActionKey:v64 withNewTitle:v31 withNewDateString:v30];

    v38 = objc_alloc(*(v29 + 712));
    v59 = [v5 action];
    v60 = [v59 actionUUID];
    v58 = [v5 action];
    v54 = [v58 bundleId];
    v57 = [v5 action];
    v39 = [v57 itemIdentifier];
    v55 = [v5 action];
    v40 = [v55 contentAttributeSet];
    v53 = [v5 action];
    v41 = [v53 heuristic];
    v42 = [v5 action];
    v43 = [v42 heuristicMetadata];
    v44 = [v5 action];
    LOBYTE(v52) = [v44 isFutureMedia];
    v56 = [v38 initWithNSUserActivityString:v61 actionUUID:v60 bundleId:v54 itemIdentifier:v39 contentAttributeSet:v40 heuristic:v41 heuristicMetadata:v43 isFutureMedia:v52 title:0 subtitle:0];

    v45 = objc_alloc(MEMORY[0x277CEB5D8]);
    v46 = [v5 action];
    v47 = [v46 bundleId];
    v48 = [v5 intentType];
    v49 = [v5 dateInterval];
    v25 = [v45 initWithBundleId:v47 intentType:v48 dateInterval:v49 action:v56];

    v50 = 0;
    goto LABEL_11;
  }

LABEL_12:
  v25 = v5;
LABEL_13:

  return v25;
}

+ (int64_t)localHourOfDayFromDate:(id)a3
{
  v8 = 0;
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  [v5 getHour:&v8 minute:0 second:0 nanosecond:0 fromDate:v4];

  v6 = v8;
  return v6;
}

+ (id)timeOfDayAndDayOfWeekForDate:(id)a3 timeZone:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEA80];
  v7 = a3;
  v8 = [v6 currentCalendar];
  v9 = v8;
  if (v5)
  {
    [v8 setTimeZone:v5];
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v10 = [v9 component:512 fromDate:v7] - 1;
  [v9 getHour:&v18 minute:&v17 second:&v16 nanosecond:0 fromDate:v7];

  v11 = MEMORY[0x277D42648];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:3600 * v18 + 60 * v17 + v16];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v14 = [v11 tupleWithFirst:v12 second:v13];

  return v14;
}

+ (id)stringForTimeOfDayAndDayOfWeek:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = v7;
  if (v6)
  {
    [v7 setTimeZone:v6];
  }

  v9 = [v8 components:544 fromDate:v5];
  v10 = [v9 weekday] - 1;
  v11 = [v9 hour];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%01d%01d", (v11 / 4), v10];

  return v12;
}

+ (id)stringForTwoHourTimeWindow:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = v7;
  if (v6)
  {
    [v7 setTimeZone:v6];
  }

  v9 = [v8 components:32 fromDate:v5];
  v10 = [v9 hour];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d", (v10 / 12)];

  return v11;
}

+ (id)stringForDayOfWeek:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = v7;
  if (v6)
  {
    [v7 setTimeZone:v6];
  }

  v9 = [v8 components:512 fromDate:v5];
  v10 = [v9 weekday];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%01d", (v10 - 1)];

  return v11;
}

+ (int)timeBucketFromZeroToTwentyFour:(id)a3 timeZone:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEA80];
  v7 = a3;
  v8 = [v6 currentCalendar];
  v9 = v8;
  if (v5)
  {
    [v8 setTimeZone:v5];
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v10 = [v9 component:512 fromDate:v7];
  [v9 getHour:&v15 minute:&v14 second:&v13 nanosecond:0 fromDate:v7];

  v11 = (3600 * v15 + 86400 * v10 + 60 * v14 + v13 - 86400) % 86400;
  return v11 / 3456;
}

+ (id)stringForSpecificTimeDOWLocation:(id)a3 timeZone:(id)a4 geohash:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = v9;
  if (v8)
  {
    [v9 setTimeZone:v8];
  }

  v11 = [v10 components:608 fromDate:v7];
  v12 = [v11 weekday] - 1;
  v13 = [v11 hour];
  v14 = [v11 minute];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%01d-%lld", ((v14 + 60 * v13) / 30), v12, a5];

  return v15;
}

+ (id)stringForCoarseTimePOWLocation:(id)a3 timeZone:(id)a4 coarseGeohash:(int64_t)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CBEA80];
  v9 = a3;
  v10 = [v8 currentCalendar];
  v11 = v10;
  if (v7)
  {
    [v10 setTimeZone:v7];
  }

  v12 = [v11 components:544 fromDate:v9];
  v13 = [v11 isDateInWeekend:v9];

  v14 = [v12 hour];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%01d-%01d-%lld", (v14 / 4), v13, a5];

  return v15;
}

+ (BOOL)uniqueRecipientsMatchedBetweenIntent:(id)a3 andIntent:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v5 recipients];
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * v12) displayName];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v6 recipients];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * v19) displayName];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [v7 isEqualToSet:v14];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)isTitleEquivalenceBetweenAction:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([MEMORY[0x277CEB7F8] isActionEligibleForAnySettingsSuggestions:v5] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEB7F8], "isActionEligibleForAnySettingsSuggestions:", v6) & 1) != 0 || (objc_msgSend(v5, "actionKey"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "actionKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, !v9))
  {
    v15 = 0;
  }

  else
  {
    v10 = [v5 actionTitle];
    v11 = [v6 actionTitle];
    v12 = [v5 actionSubtitle];
    v13 = [v6 actionSubtitle];
    if (v10 == v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0;
      if (v10 && v11)
      {
        v14 = [v10 isEqualToString:v11];
      }
    }

    if (v12 == v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = 0;
      if (v12 && v13)
      {
        v17 = [v12 isEqualToString:v13];
      }
    }

    v15 = v14 & v17;
  }

  return v15;
}

+ (BOOL)isCallIntentEquivalenceBetweenAction:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bundleId];
  v8 = [v6 bundleId];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v5 intent];
    v11 = [v10 _className];

    v12 = [v6 intent];
    v13 = [v12 _className];

    v14 = [v11 isEqualToString:@"INStartAudioCallIntent"];
    v15 = v13;
    if (v14 & 1) != 0 || (v16 = [v11 isEqualToString:@"INStartVideoCallIntent"], v15 = v13, (v16) || (v17 = objc_msgSend(v13, "isEqualToString:", @"INStartAudioCallIntent"), v15 = v11, (v17) || (v18 = objc_msgSend(v13, "isEqualToString:", @"INStartVideoCallIntent"), v15 = v11, v18))
    {
      LOBYTE(v9) = [v15 isEqualToString:@"INStartCallIntent"];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

+ (BOOL)isContainmentBetweenAction:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    LOBYTE(v8) = 1;
    goto LABEL_17;
  }

  LOBYTE(v8) = 0;
  if (v5 && v6)
  {
    v9 = [v5 actionType];
    if (v9 == [v7 actionType])
    {
      v10 = [v5 actionKey];
      v11 = [v7 actionKey];
      v8 = [v10 isEqualToString:v11];

      if (!v8)
      {
        goto LABEL_17;
      }

      if (![v5 actionType] || objc_msgSend(v5, "actionType") == 2)
      {
        v12 = [v5 slotSet];
        v13 = [v7 slotSet];
        v14 = [v12 parameters];
        v15 = [v13 parameters];
        v16 = [v14 isSubsetOfSet:v15];

        v17 = v12;
        if (v16)
        {
          goto LABEL_10;
        }

        v18 = [v13 parameters];
        v19 = [v12 parameters];
        v20 = [v18 isSubsetOfSet:v19];

        v17 = v13;
        if (v20)
        {
LABEL_10:
          v21 = v17;
          v22 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:v5 slots:v21];
          v23 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:v7 slots:v21];
          LOBYTE(v8) = [v22 isEqual:v23];
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        goto LABEL_17;
      }

      if ([v5 actionType] == 1)
      {
        LOBYTE(v8) = [v5 isEqual:v7];
        goto LABEL_17;
      }
    }

    LOBYTE(v8) = 0;
  }

LABEL_17:

  return v8;
}

+ (id)sha256hex:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = 0;
  v5 = v18;
  v6.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
  v6.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
  v7.i64[0] = 0x3737373737373737;
  v7.i64[1] = 0x3737373737373737;
  v8.i64[0] = 0x3030303030303030;
  v8.i64[1] = 0x3030303030303030;
  v9.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v9.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v10.i64[0] = 0x909090909090909;
  v10.i64[1] = 0x909090909090909;
  do
  {
    v11 = *&md[v4];
    v12.i64[0] = 0x3737373737373737;
    v12.i64[1] = 0x3737373737373737;
    v13.i64[0] = 0x3030303030303030;
    v13.i64[1] = 0x3030303030303030;
    v22.val[0] = vbslq_s8(vcgtq_u8(v11, v6), vsraq_n_u8(v12, v11, 4uLL), vsraq_n_u8(v13, v11, 4uLL));
    v14 = vandq_s8(v11, v9);
    v22.val[1] = vbslq_s8(vcgtq_u8(v14, v10), vaddq_s8(v14, v7), vorrq_s8(v14, v8));
    vst2q_s8(v5, v22);
    v5 += 32;
    v4 += 16;
  }

  while (v4 != 32);
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v18 length:64 encoding:1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (double)calculateWeightWith:(unint64_t)a3 strength:(double)result docLength:(unint64_t)a5
{
  if (a3 == 1)
  {
    v5 = result + 1.0;
    return 1.0 / v5;
  }

  if (!a3)
  {
    v5 = pow(a5, result);
    return 1.0 / v5;
  }

  __break(1u);
  return result;
}

+ (BOOL)shouldPredictRecipient:(id)a3 withDate:(id)a4 andRecipientDate:(id)a5
{
  if (!a5)
  {
    return 1;
  }

  [a4 timeIntervalSinceDate:a5];
  v6 = v5;
  v7 = +[_ATXGlobals sharedInstance];
  v8 = v6 > [v7 messageContentTimeElapsed];

  return v8;
}

+ (BOOL)shouldAcceptMessageContent:(id)a3
{
  v3 = a3;
  v4 = +[_ATXGlobals sharedInstance];
  v5 = [v3 content];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 componentsSeparatedByString:@" "];
  if ([v6 count] <= 1)
  {

    goto LABEL_6;
  }

  v7 = [v4 messageContentBlacklist];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

+ (id)recipientFromMessageIntent:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 conversationIdentifier];
  v5 = [v4 lowercaseString];

  if (!v5)
  {
    v6 = [v3 speakableGroupName];
    v7 = [v6 spokenPhrase];
    v5 = [v7 lowercaseString];

    if (!v5)
    {
      v8 = [v3 recipients];
      if ([v8 count])
      {
        v9 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * i);
              v16 = [v15 contactIdentifier];

              if (v16)
              {
                v17 = [v15 contactIdentifier];
              }

              else
              {
                v18 = [v15 displayName];

                if (!v18)
                {
                  v21 = __atxlog_handle_action_prediction();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    [_ATXActionUtils recipientFromMessageIntent:v21];
                  }

                  goto LABEL_21;
                }

                v17 = [v15 displayName];
              }

              v19 = v17;
              v20 = [v17 lowercaseString];
              [v9 addObject:v20];
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        [v9 sortUsingSelector:sel_caseInsensitiveCompare_];
        v5 = [v9 componentsJoinedByString:@", "];
      }

      else
      {
        v9 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [_ATXActionUtils recipientFromMessageIntent:v9];
        }

LABEL_21:
        v5 = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)partOfWeekStringForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 isDateInWeekend:v4];

  if (v6)
  {
    v7 = @"weekend";
  }

  else
  {
    v7 = @"weekday";
  }

  v8 = v7;

  return v7;
}

+ (BOOL)isINStartCallIntentSupportedForAction:(id)a3
{
  v3 = MEMORY[0x277CEB3B8];
  v4 = [a3 bundleId];
  v5 = [v3 appInfoForBundle:v4];

  v6 = [v5 supportedActions];
  v7 = [v6 containsObject:@"INStartCallIntent"];

  return v7;
}

+ (BOOL)shouldAcceptAudioOrVideoCallIntent:(id)a3
{
  v4 = a3;
  if ([v4 actionType])
  {
    goto LABEL_2;
  }

  v7 = [v4 intent];
  v8 = [v7 _className];
  if ([v8 isEqual:@"INStartAudioCallIntent"])
  {
  }

  else
  {
    v9 = [v4 intent];
    v10 = [v9 _className];
    v11 = [v10 isEqual:@"INStartVideoCallIntent"];

    if (!v11)
    {
      goto LABEL_2;
    }
  }

  if ([a1 isINStartCallIntentSupportedForAction:v4])
  {
    v5 = 0;
    goto LABEL_3;
  }

LABEL_2:
  v5 = 1;
LABEL_3:

  return v5;
}

+ (double)computeNormalizedBetaDistEngagementScoreWithPriorAlpha:(int)a3 priorBeta:(int)a4 confirms:(double)a5 rejects:(double)a6 totalConfirms:(double)a7 totalRejects:(double)a8
{
  v8 = a4 + a3;
  v9 = a3 + a7;
  v10 = a4 + a8;
  return (v9 / (v9 + v10) * v8 + a5) / (v10 / (v9 + v10) * v8 + v9 / (v9 + v10) * v8 + a5 + a6) / (v9 / (v9 + v10) * v8 / (v9 / (v9 + v10) * v8 + v10 / (v9 + v10) * v8));
}

+ (id)atxActionFromProactiveSuggestion:(id)a3
{
  v3 = [a3 executableSpecification];
  if ([v3 executableType] == 2 && (objc_msgSend(v3, "executableObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [v3 executableObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)atxActionsFromProactiveSuggestions:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___ATXActionUtils_atxActionsFromProactiveSuggestions___block_invoke;
  v5[3] = &__block_descriptor_40_e32__16__0__ATXProactiveSuggestion_8l;
  v5[4] = a1;
  v3 = [a3 _pas_mappedArrayWithTransform:v5];

  return v3;
}

+ (void)getActionTypesFromActionKeys:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_ATXActionUtils.m" lineNumber:76 description:{@"No action type in action key: '%@'", a3}];
}

+ (void)getBundleIdsFromActionKeys:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_ATXActionUtils.m" lineNumber:92 description:{@"No bundleId in action key: '%@'", a3}];
}

+ (void)limitParameterCombinations:(uint64_t)a1 limit:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXActionUtils.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"limit >= 0"}];
}

+ (void)slotSetsForAction:(void *)a1 intentCache:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Donation Processing - # slots received: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
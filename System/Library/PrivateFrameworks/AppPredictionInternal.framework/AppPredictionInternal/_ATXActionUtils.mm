@interface _ATXActionUtils
+ (BOOL)isCallIntentEquivalenceBetweenAction:(id)action other:(id)other;
+ (BOOL)isContainmentBetweenAction:(id)action other:(id)other;
+ (BOOL)isINStartCallIntentSupportedForAction:(id)action;
+ (BOOL)isTitleEquivalenceBetweenAction:(id)action other:(id)other;
+ (BOOL)shouldAcceptAudioOrVideoCallIntent:(id)intent;
+ (BOOL)shouldAcceptMessageContent:(id)content;
+ (BOOL)shouldPredictRecipient:(id)recipient withDate:(id)date andRecipientDate:(id)recipientDate;
+ (BOOL)uniqueRecipientsMatchedBetweenIntent:(id)intent andIntent:(id)andIntent;
+ (double)calculateWeightWith:(unint64_t)with strength:(double)result docLength:(unint64_t)length;
+ (double)computeNormalizedBetaDistEngagementScoreWithPriorAlpha:(int)alpha priorBeta:(int)beta confirms:(double)confirms rejects:(double)rejects totalConfirms:(double)totalConfirms totalRejects:(double)totalRejects;
+ (id)_extractValueInKeyValueBlob:(id)blob withKey:(id)key;
+ (id)actionKeyFilterForCandidateBundleIds:(id)ids candidateActionTypes:(id)types blacklist:(id)blacklist;
+ (id)atxActionFromProactiveSuggestion:(id)suggestion;
+ (id)atxActionsFromProactiveSuggestions:(id)suggestions;
+ (id)filterContainersWithNilAction:(id)action;
+ (id)firstIntent:(id)intent inAppLaunchSession:(id)session;
+ (id)getActionTypeFromActionKey:(id)key;
+ (id)getActionTypesFromActionKeys:(id)keys;
+ (id)getActivityTypeFromNSUAType:(id)type;
+ (id)getBundleIdAndActionTypeFromActionKey:(id)key;
+ (id)getBundleIdFromActionKey:(id)key;
+ (id)getBundleIdsFromActionKeys:(id)keys;
+ (id)limitParameterCombinations:(id)combinations limit:(int)limit;
+ (id)markTodayInTitleAndUserActivityString:(id)string withActionKey:(id)key;
+ (id)partOfWeekStringForDate:(id)date;
+ (id)recipientFromMessageIntent:(id)intent;
+ (id)sha256hex:(id)sha256hex;
+ (id)slotSetsForAction:(id)action;
+ (id)slotSetsForAction:(id)action intentCache:(id)cache;
+ (id)stringForCoarseTimePOWLocation:(id)location timeZone:(id)zone coarseGeohash:(int64_t)geohash;
+ (id)stringForDayOfWeek:(id)week timeZone:(id)zone;
+ (id)stringForSpecificTimeDOWLocation:(id)location timeZone:(id)zone geohash:(int64_t)geohash;
+ (id)stringForTimeOfDayAndDayOfWeek:(id)week timeZone:(id)zone;
+ (id)stringForTwoHourTimeWindow:(id)window timeZone:(id)zone;
+ (id)swapUserActivityString:(id)string withActionKey:(id)key withNewTitle:(id)title withNewDateString:(id)dateString;
+ (id)timeOfDayAndDayOfWeekForDate:(id)date timeZone:(id)zone;
+ (int)timeBucketFromZeroToTwentyFour:(id)four timeZone:(id)zone;
+ (int64_t)localHourOfDayFromDate:(id)date;
+ (void)fetchDataAndUpdateContentAttributeSetForAction:(id)action;
+ (void)prefillActionHistograms;
+ (void)prefillActionSlotDatabase;
+ (void)resetActionPredictions;
+ (void)resetHistogramsAndRemoveUICaches;
@end

@implementation _ATXActionUtils

+ (id)getBundleIdAndActionTypeFromActionKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy rangeOfString:@":" options:2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, [keyCopy rangeOfString:@":" options:2 range:{v5 + 1, objc_msgSend(keyCopy, "length") + ~v5}] != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D42648]);
    v7 = [keyCopy substringToIndex:v5];
    v8 = [keyCopy substringFromIndex:v5 + 1];
    v9 = [v6 initWithFirst:v7 second:v8];
  }

  return v9;
}

+ (id)getActivityTypeFromNSUAType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy rangeOfString:@"NSUA_" options:2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [typeCopy substringFromIndex:{objc_msgSend(@"NSUA_", "length") + v4}];
  }

  return v5;
}

+ (id)getBundleIdFromActionKey:(id)key
{
  v3 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:key];
  first = [v3 first];

  return first;
}

+ (id)getActionTypeFromActionKey:(id)key
{
  v3 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:key];
  second = [v3 second];

  return second;
}

+ (id)getActionTypesFromActionKeys:(id)keys
{
  v21 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = keysCopy;
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
        v13 = [self getActionTypeFromActionKey:{v12, v16}];
        if (!v13)
        {
          [(_ATXActionUtils *)a2 getActionTypesFromActionKeys:self, v12];
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

+ (id)getBundleIdsFromActionKeys:(id)keys
{
  v21 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = keysCopy;
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
        v13 = [self getBundleIdFromActionKey:{v12, v16}];
        if (!v13)
        {
          [(_ATXActionUtils *)a2 getBundleIdsFromActionKeys:self, v12];
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

+ (id)limitParameterCombinations:(id)combinations limit:(int)limit
{
  combinationsCopy = combinations;
  if (limit < 0)
  {
    [_ATXActionUtils limitParameterCombinations:a2 limit:self];
  }

  if ([combinationsCopy count] > limit)
  {
    v8 = [combinationsCopy sortedArrayUsingComparator:&__block_literal_global_264];
    v9 = [v8 subarrayWithRange:{0, limit}];
    v10 = [v9 copy];

    combinationsCopy = v10;
  }

  return combinationsCopy;
}

+ (id)slotSetsForAction:(id)action
{
  actionCopy = action;
  v4 = objc_opt_class();
  v5 = +[ATXIntentMetadataCache sharedInstance];
  v6 = [v4 slotSetsForAction:actionCopy intentCache:v5];

  return v6;
}

+ (id)slotSetsForAction:(id)action intentCache:(id)cache
{
  v85 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  cacheCopy = cache;
  intent = [actionCopy intent];
  if (![actionCopy actionType] || objc_msgSend(actionCopy, "actionType") == 2)
  {
    v7 = [cacheCopy validParameterCombinationsWithSchemaForIntent:intent];
    predictableParameterCombinations = [actionCopy predictableParameterCombinations];
    v9 = [predictableParameterCombinations count];

    v70 = cacheCopy;
    v71 = actionCopy;
    if (v9)
    {
      _validParameterCombinations = objc_opt_new();
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      predictableParameterCombinations2 = [actionCopy predictableParameterCombinations];
      v12 = [predictableParameterCombinations2 countByEnumeratingWithState:&v79 objects:v84 count:16];
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
              objc_enumerationMutation(predictableParameterCombinations2);
            }

            v16 = *(*(&v79 + 1) + 8 * i);
            parameterKeys = [v16 parameterKeys];

            if (parameterKeys)
            {
              v18 = objc_alloc_init(MEMORY[0x277CD3E58]);
              parameterKeys2 = [v16 parameterKeys];
              [_validParameterCombinations setObject:v18 forKeyedSubscript:parameterKeys2];
            }
          }

          v13 = [predictableParameterCombinations2 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v13);
      }

      v20 = v7;
    }

    else
    {
      if (cacheCopy && v7)
      {
        goto LABEL_20;
      }

      v46 = MEMORY[0x277CEB3B8];
      bundleId = [actionCopy bundleId];
      v20 = [v46 schemaWithoutFallbackForBundle:bundleId];

      v48 = MEMORY[0x277CEB3B8];
      bundleId2 = [actionCopy bundleId];
      v50 = [v48 isSystemAppForBundleId:bundleId2];

      if (v20)
      {
        v51 = [intent _validParameterCombinationsWithSchema:v20];

        [cacheCopy setValidParameterCombinationsWithSchema:v51 intent:intent];
        v7 = v51;
      }

      if ((([v7 count] == 0) & v50) != 1)
      {
        v67 = MEMORY[0x277CBEB98];
        initWithOpaqueParameters = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
        v25 = [v67 setWithObject:initWithOpaqueParameters];

LABEL_35:
        goto LABEL_53;
      }

      _validParameterCombinations = [intent _validParameterCombinations];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        v7 = _validParameterCombinations;
LABEL_20:
        v26 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [_ATXActionUtils slotSetsForAction:v7 intentCache:v26];
        }

        v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v69 = v7;
        allKeys = [v7 allKeys];
        v28 = +[_ATXGlobals sharedInstance];
        v29 = +[_ATXActionUtils limitParameterCombinations:limit:](_ATXActionUtils, "limitParameterCombinations:limit:", allKeys, [v28 maximumParameterCombinations]);

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v30 = v29;
        v31 = [v30 countByEnumeratingWithState:&v73 objects:v83 count:16];
        v32 = intent;
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

              v32 = intent;
            }

            v33 = [v30 countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v33);
        }

        cacheCopy = v70;
        actionCopy = v71;
        v7 = v69;
        goto LABEL_35;
      }

      predictableParameterCombinations2 = [intent buckets];
      if ([predictableParameterCombinations2 count])
      {
        v52 = objc_opt_new();
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __49___ATXActionUtils_slotSetsForAction_intentCache___block_invoke;
        v77[3] = &unk_2785A2210;
        v53 = v52;
        v78 = v53;
        [_validParameterCombinations enumerateKeysAndObjectsUsingBlock:v77];
        v54 = [MEMORY[0x277CBEB98] setWithObject:@"buckets"];
        v55 = [_validParameterCombinations objectForKeyedSubscript:v54];

        if (v55 && [predictableParameterCombinations2 count])
        {
          v56 = 0;
          do
          {
            v57 = [_validParameterCombinations objectForKeyedSubscript:v54];
            v58 = MEMORY[0x277CBEB98];
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"bucket_%i", ++v56];
            v60 = [v58 setWithObject:v59];
            [v53 setObject:v57 forKeyedSubscript:v60];

            v61 = [predictableParameterCombinations2 count];
            v62 = 4;
            if (v61 < 4)
            {
              v62 = v61;
            }
          }

          while (v62 > v56);
        }

        v63 = v53;

        _validParameterCombinations = v63;
      }
    }

    goto LABEL_15;
  }

  if ([actionCopy actionType] == 6)
  {
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_alloc(MEMORY[0x277CEB848]);
    initWithOpaqueParameters2 = [MEMORY[0x277CBEB98] setWithObject:@"menuItemPath"];
    v24 = [v22 initWithParameters:initWithOpaqueParameters2];
    v25 = [v21 setWithObject:v24];
  }

  else
  {
    if ([actionCopy actionType] == 7)
    {
      parameterKeysForToolInvocation = [actionCopy parameterKeysForToolInvocation];
      v39 = [parameterKeysForToolInvocation count];

      if (v39)
      {
        v40 = MEMORY[0x277CBEB98];
        v41 = objc_alloc(MEMORY[0x277CEB848]);
        v42 = MEMORY[0x277CBEB98];
        parameterKeysForToolInvocation2 = [actionCopy parameterKeysForToolInvocation];
        v44 = [v42 setWithArray:parameterKeysForToolInvocation2];
        v45 = [v41 initWithParameters:v44];
        v25 = [v40 setWithObject:v45];

        goto LABEL_53;
      }
    }

    v64 = MEMORY[0x277CBEB98];
    initWithOpaqueParameters2 = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
    v25 = [v64 setWithObject:initWithOpaqueParameters2];
  }

LABEL_53:
  v65 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)filterContainersWithNilAction:(id)action
{
  v3 = MEMORY[0x277CCAC30];
  actionCopy = action;
  v5 = [v3 predicateWithBlock:&__block_literal_global_71_2];
  v6 = [actionCopy filteredArrayUsingPredicate:v5];

  return v6;
}

+ (void)fetchDataAndUpdateContentAttributeSetForAction:(id)action
{
  v24[2] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemIdentifier = [actionCopy itemIdentifier];
  if (itemIdentifier)
  {
    v5 = itemIdentifier;
    bundleId = [actionCopy bundleId];

    if (bundleId)
    {
      v7 = dispatch_semaphore_create(0);
      defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
      v9 = *MEMORY[0x277CC2750];
      v24[0] = @"_kMDItemThumbnailDataPath";
      v24[1] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v11 = *MEMORY[0x277CCA190];
      bundleId2 = [actionCopy bundleId];
      itemIdentifier2 = [actionCopy itemIdentifier];
      v23 = itemIdentifier2;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __66___ATXActionUtils_fetchDataAndUpdateContentAttributeSetForAction___block_invoke;
      v20 = &unk_2785A2258;
      v21 = actionCopy;
      v22 = v7;
      v15 = v7;
      [defaultSearchableIndex slowFetchAttributes:v10 protectionClass:v11 bundleID:bundleId2 identifiers:v14 completionHandler:&v17];

      [MEMORY[0x277D425A0] waitForSemaphore:v15 timeoutSeconds:{5.0, v17, v18, v19, v20}];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)actionKeyFilterForCandidateBundleIds:(id)ids candidateActionTypes:(id)types blacklist:(id)blacklist
{
  idsCopy = ids;
  typesCopy = types;
  blacklistCopy = blacklist;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87___ATXActionUtils_actionKeyFilterForCandidateBundleIds_candidateActionTypes_blacklist___block_invoke;
  aBlock[3] = &unk_2785A05C8;
  v16 = idsCopy;
  v17 = typesCopy;
  v18 = blacklistCopy;
  v10 = blacklistCopy;
  v11 = typesCopy;
  v12 = idsCopy;
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
  selfCopy = self;
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
  appIntentMonitor = [v8 appIntentMonitor];

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
        [appIntentMonitor updateActionPredictionSlotResolutionForIntentEvent:*(*(&v17 + 1) + 8 * v15++) weight:0 prevLocationUUID:0 locationUUID:4 currentMotionType:0 appSessionStartDate:0 appSessionEndDate:v12 geohash:-1 coarseGeohash:{-1, v17}];
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)firstIntent:(id)intent inAppLaunchSession:(id)session
{
  v34 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  sessionCopy = session;
  appSessionStartTime = [sessionCopy appSessionStartTime];
  [appSessionStartTime timeIntervalSinceReferenceDate];
  v9 = v8;

  appSessionEndTime = [sessionCopy appSessionEndTime];
  [appSessionEndTime timeIntervalSinceReferenceDate];
  v12 = v11;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = intentCopy;
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
        startDate = [v20 startDate];
        v22 = startDate;
        if (startDate)
        {
          [startDate timeIntervalSinceReferenceDate];
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
  queue = [v3 queue];
  dispatch_sync(queue, &__block_literal_global_93_1);
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
  allApps = [v15 allApps];

  obj = allApps;
  v17 = [allApps countByEnumeratingWithState:&v44 objects:v49 count:16];
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

+ (id)_extractValueInKeyValueBlob:(id)blob withKey:(id)key
{
  v27 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  keyCopy = key;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = blobCopy;
  v7 = [blobCopy componentsSeparatedByString:{@", '"}];
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
          v16 = [v15 isEqualToString:keyCopy];

          if (v16)
          {
            v17 = [v14 objectAtIndex:1];
            stringByRemovingPercentEncoding = [v17 stringByRemovingPercentEncoding];

            v10 = stringByRemovingPercentEncoding;
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

+ (id)swapUserActivityString:(id)string withActionKey:(id)key withNewTitle:(id)title withNewDateString:(id)dateString
{
  stringCopy = string;
  keyCopy = key;
  titleCopy = title;
  dateStringCopy = dateString;
  v14 = [stringCopy componentsSeparatedByString:@"'"];
  v15 = [v14 objectAtIndexedSubscript:1];

  v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"{}"];
  v17 = [stringCopy componentsSeparatedByCharactersInSet:v16];
  v18 = [v17 objectAtIndex:1];
  v19 = [v18 substringFromIndex:1];

  if (v19 && [keyCopy isEqualToString:*MEMORY[0x277CEB1D8]])
  {
    v20 = [self _extractValueInKeyValueBlob:v19 withKey:*MEMORY[0x277CEB1D0]];
    v21 = v20;
    if (v15 && v20)
    {
      v22 = [stringCopy stringByReplacingOccurrencesOfString:v15 withString:titleCopy];
      v23 = [v22 stringByReplacingOccurrencesOfString:v21 withString:dateStringCopy];

      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = stringCopy;
LABEL_8:

  return v23;
}

+ (id)markTodayInTitleAndUserActivityString:(id)string withActionKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  dateInterval = [stringCopy dateInterval];
  startDate = [dateInterval startDate];
  v10 = [currentCalendar startOfDayForDate:startDate];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = MEMORY[0x277CEB2C8];
  action = [stringCopy action];
  userActivityString = [action userActivityString];
  v64 = keyCopy;
  v15 = [v12 getDateFromUserActivityString:userActivityString forActionKey:keyCopy];
  v16 = [currentCalendar2 startOfDayForDate:v15];

  if (v10 && v16)
  {
    v17 = v16;
    v18 = v10;
    v19 = objc_opt_new();
    [v19 setDateFormat:@"MMMM dd, yyyy"];
    action2 = [stringCopy action];
    userActivity = [action2 userActivity];
    title = [userActivity title];
    stringByRemovingPercentEncoding = [title stringByRemovingPercentEncoding];
    v24 = [v19 dateFromString:stringByRemovingPercentEncoding];

    v63 = v24;
    if (!v24)
    {
      currentCalendar3 = stringCopy;

      v10 = v18;
      v16 = v17;
      goto LABEL_13;
    }

    v62 = v19;
    currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = v18;
    v26 = v18;
    v16 = v17;
    v27 = [currentCalendar3 components:16 fromDate:v26 toDate:v17 options:0];
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
    action3 = [stringCopy action];
    userActivity2 = [action3 userActivity];
    [userActivity2 setTitle:v33];

    action4 = [stringCopy action];
    userActivityString2 = [action4 userActivityString];
    v61 = [_ATXActionUtils swapUserActivityString:userActivityString2 withActionKey:v64 withNewTitle:v31 withNewDateString:v30];

    v38 = objc_alloc(*(v29 + 712));
    action5 = [stringCopy action];
    actionUUID = [action5 actionUUID];
    action6 = [stringCopy action];
    bundleId = [action6 bundleId];
    action7 = [stringCopy action];
    itemIdentifier = [action7 itemIdentifier];
    action8 = [stringCopy action];
    contentAttributeSet = [action8 contentAttributeSet];
    action9 = [stringCopy action];
    heuristic = [action9 heuristic];
    action10 = [stringCopy action];
    heuristicMetadata = [action10 heuristicMetadata];
    action11 = [stringCopy action];
    LOBYTE(v52) = [action11 isFutureMedia];
    v56 = [v38 initWithNSUserActivityString:v61 actionUUID:actionUUID bundleId:bundleId itemIdentifier:itemIdentifier contentAttributeSet:contentAttributeSet heuristic:heuristic heuristicMetadata:heuristicMetadata isFutureMedia:v52 title:0 subtitle:0];

    v45 = objc_alloc(MEMORY[0x277CEB5D8]);
    action12 = [stringCopy action];
    bundleId2 = [action12 bundleId];
    intentType = [stringCopy intentType];
    dateInterval2 = [stringCopy dateInterval];
    currentCalendar3 = [v45 initWithBundleId:bundleId2 intentType:intentType dateInterval:dateInterval2 action:v56];

    v50 = 0;
    goto LABEL_11;
  }

LABEL_12:
  currentCalendar3 = stringCopy;
LABEL_13:

  return currentCalendar3;
}

+ (int64_t)localHourOfDayFromDate:(id)date
{
  v8 = 0;
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  [currentCalendar getHour:&v8 minute:0 second:0 nanosecond:0 fromDate:dateCopy];

  v6 = v8;
  return v6;
}

+ (id)timeOfDayAndDayOfWeekForDate:(id)date timeZone:(id)zone
{
  zoneCopy = zone;
  v6 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v6 currentCalendar];
  v9 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v10 = [v9 component:512 fromDate:dateCopy] - 1;
  [v9 getHour:&v18 minute:&v17 second:&v16 nanosecond:0 fromDate:dateCopy];

  v11 = MEMORY[0x277D42648];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:3600 * v18 + 60 * v17 + v16];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v14 = [v11 tupleWithFirst:v12 second:v13];

  return v14;
}

+ (id)stringForTimeOfDayAndDayOfWeek:(id)week timeZone:(id)zone
{
  weekCopy = week;
  zoneCopy = zone;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v9 = [v8 components:544 fromDate:weekCopy];
  v10 = [v9 weekday] - 1;
  hour = [v9 hour];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%01d%01d", (hour / 4), v10];

  return v12;
}

+ (id)stringForTwoHourTimeWindow:(id)window timeZone:(id)zone
{
  windowCopy = window;
  zoneCopy = zone;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v9 = [v8 components:32 fromDate:windowCopy];
  hour = [v9 hour];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d", (hour / 12)];

  return v11;
}

+ (id)stringForDayOfWeek:(id)week timeZone:(id)zone
{
  weekCopy = week;
  zoneCopy = zone;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v9 = [v8 components:512 fromDate:weekCopy];
  weekday = [v9 weekday];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%01d", (weekday - 1)];

  return v11;
}

+ (int)timeBucketFromZeroToTwentyFour:(id)four timeZone:(id)zone
{
  zoneCopy = zone;
  v6 = MEMORY[0x277CBEA80];
  fourCopy = four;
  currentCalendar = [v6 currentCalendar];
  v9 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v10 = [v9 component:512 fromDate:fourCopy];
  [v9 getHour:&v15 minute:&v14 second:&v13 nanosecond:0 fromDate:fourCopy];

  v11 = (3600 * v15 + 86400 * v10 + 60 * v14 + v13 - 86400) % 86400;
  return v11 / 3456;
}

+ (id)stringForSpecificTimeDOWLocation:(id)location timeZone:(id)zone geohash:(int64_t)geohash
{
  locationCopy = location;
  zoneCopy = zone;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v11 = [v10 components:608 fromDate:locationCopy];
  v12 = [v11 weekday] - 1;
  hour = [v11 hour];
  minute = [v11 minute];
  geohash = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%01d-%lld", ((minute + 60 * hour) / 30), v12, geohash];

  return geohash;
}

+ (id)stringForCoarseTimePOWLocation:(id)location timeZone:(id)zone coarseGeohash:(int64_t)geohash
{
  zoneCopy = zone;
  v8 = MEMORY[0x277CBEA80];
  locationCopy = location;
  currentCalendar = [v8 currentCalendar];
  v11 = currentCalendar;
  if (zoneCopy)
  {
    [currentCalendar setTimeZone:zoneCopy];
  }

  v12 = [v11 components:544 fromDate:locationCopy];
  v13 = [v11 isDateInWeekend:locationCopy];

  hour = [v12 hour];
  geohash = [MEMORY[0x277CCACA8] stringWithFormat:@"%01d-%01d-%lld", (hour / 4), v13, geohash];

  return geohash;
}

+ (BOOL)uniqueRecipientsMatchedBetweenIntent:(id)intent andIntent:(id)andIntent
{
  v34 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  andIntentCopy = andIntent;
  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  recipients = [intentCopy recipients];
  v9 = [recipients countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(recipients);
        }

        displayName = [*(*(&v28 + 1) + 8 * v12) displayName];
        [v7 addObject:displayName];

        ++v12;
      }

      while (v10 != v12);
      v10 = [recipients countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  recipients2 = [andIntentCopy recipients];
  v16 = [recipients2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(recipients2);
        }

        displayName2 = [*(*(&v24 + 1) + 8 * v19) displayName];
        [v14 addObject:displayName2];

        ++v19;
      }

      while (v17 != v19);
      v17 = [recipients2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [v7 isEqualToSet:v14];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)isTitleEquivalenceBetweenAction:(id)action other:(id)other
{
  actionCopy = action;
  otherCopy = other;
  if (([MEMORY[0x277CEB7F8] isActionEligibleForAnySettingsSuggestions:actionCopy] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEB7F8], "isActionEligibleForAnySettingsSuggestions:", otherCopy) & 1) != 0 || (objc_msgSend(actionCopy, "actionKey"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(otherCopy, "actionKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, !v9))
  {
    v15 = 0;
  }

  else
  {
    actionTitle = [actionCopy actionTitle];
    actionTitle2 = [otherCopy actionTitle];
    actionSubtitle = [actionCopy actionSubtitle];
    actionSubtitle2 = [otherCopy actionSubtitle];
    if (actionTitle == actionTitle2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0;
      if (actionTitle && actionTitle2)
      {
        v14 = [actionTitle isEqualToString:actionTitle2];
      }
    }

    if (actionSubtitle == actionSubtitle2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 0;
      if (actionSubtitle && actionSubtitle2)
      {
        v17 = [actionSubtitle isEqualToString:actionSubtitle2];
      }
    }

    v15 = v14 & v17;
  }

  return v15;
}

+ (BOOL)isCallIntentEquivalenceBetweenAction:(id)action other:(id)other
{
  actionCopy = action;
  otherCopy = other;
  bundleId = [actionCopy bundleId];
  bundleId2 = [otherCopy bundleId];
  v9 = [bundleId isEqualToString:bundleId2];

  if (v9)
  {
    intent = [actionCopy intent];
    _className = [intent _className];

    intent2 = [otherCopy intent];
    _className2 = [intent2 _className];

    v14 = [_className isEqualToString:@"INStartAudioCallIntent"];
    v15 = _className2;
    if (v14 & 1) != 0 || (v16 = [_className isEqualToString:@"INStartVideoCallIntent"], v15 = _className2, (v16) || (v17 = objc_msgSend(_className2, "isEqualToString:", @"INStartAudioCallIntent"), v15 = _className, (v17) || (v18 = objc_msgSend(_className2, "isEqualToString:", @"INStartVideoCallIntent"), v15 = _className, v18))
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

+ (BOOL)isContainmentBetweenAction:(id)action other:(id)other
{
  actionCopy = action;
  otherCopy = other;
  v7 = otherCopy;
  if (actionCopy == otherCopy)
  {
    LOBYTE(v8) = 1;
    goto LABEL_17;
  }

  LOBYTE(v8) = 0;
  if (actionCopy && otherCopy)
  {
    actionType = [actionCopy actionType];
    if (actionType == [v7 actionType])
    {
      actionKey = [actionCopy actionKey];
      actionKey2 = [v7 actionKey];
      v8 = [actionKey isEqualToString:actionKey2];

      if (!v8)
      {
        goto LABEL_17;
      }

      if (![actionCopy actionType] || objc_msgSend(actionCopy, "actionType") == 2)
      {
        slotSet = [actionCopy slotSet];
        slotSet2 = [v7 slotSet];
        parameters = [slotSet parameters];
        parameters2 = [slotSet2 parameters];
        v16 = [parameters isSubsetOfSet:parameters2];

        v17 = slotSet;
        if (v16)
        {
          goto LABEL_10;
        }

        parameters3 = [slotSet2 parameters];
        parameters4 = [slotSet parameters];
        v20 = [parameters3 isSubsetOfSet:parameters4];

        v17 = slotSet2;
        if (v20)
        {
LABEL_10:
          v21 = v17;
          v22 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:actionCopy slots:v21];
          v23 = [objc_alloc(MEMORY[0x277CEB840]) initWithAction:v7 slots:v21];
          LOBYTE(v8) = [v22 isEqual:v23];
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        goto LABEL_17;
      }

      if ([actionCopy actionType] == 1)
      {
        LOBYTE(v8) = [actionCopy isEqual:v7];
        goto LABEL_17;
      }
    }

    LOBYTE(v8) = 0;
  }

LABEL_17:

  return v8;
}

+ (id)sha256hex:(id)sha256hex
{
  v20 = *MEMORY[0x277D85DE8];
  sha256hexCopy = sha256hex;
  CC_SHA256([sha256hexCopy bytes], objc_msgSend(sha256hexCopy, "length"), md);
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

+ (double)calculateWeightWith:(unint64_t)with strength:(double)result docLength:(unint64_t)length
{
  if (with == 1)
  {
    v5 = result + 1.0;
    return 1.0 / v5;
  }

  if (!with)
  {
    v5 = pow(length, result);
    return 1.0 / v5;
  }

  __break(1u);
  return result;
}

+ (BOOL)shouldPredictRecipient:(id)recipient withDate:(id)date andRecipientDate:(id)recipientDate
{
  if (!recipientDate)
  {
    return 1;
  }

  [date timeIntervalSinceDate:recipientDate];
  v6 = v5;
  v7 = +[_ATXGlobals sharedInstance];
  v8 = v6 > [v7 messageContentTimeElapsed];

  return v8;
}

+ (BOOL)shouldAcceptMessageContent:(id)content
{
  contentCopy = content;
  v4 = +[_ATXGlobals sharedInstance];
  content = [contentCopy content];

  if (!content)
  {
    goto LABEL_6;
  }

  v6 = [content componentsSeparatedByString:@" "];
  if ([v6 count] <= 1)
  {

    goto LABEL_6;
  }

  messageContentBlacklist = [v4 messageContentBlacklist];
  v8 = [messageContentBlacklist containsObject:content];

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

+ (id)recipientFromMessageIntent:(id)intent
{
  v29 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  conversationIdentifier = [intentCopy conversationIdentifier];
  lowercaseString = [conversationIdentifier lowercaseString];

  if (!lowercaseString)
  {
    speakableGroupName = [intentCopy speakableGroupName];
    spokenPhrase = [speakableGroupName spokenPhrase];
    lowercaseString = [spokenPhrase lowercaseString];

    if (!lowercaseString)
    {
      recipients = [intentCopy recipients];
      if ([recipients count])
      {
        v9 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = recipients;
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
              contactIdentifier = [v15 contactIdentifier];

              if (contactIdentifier)
              {
                contactIdentifier2 = [v15 contactIdentifier];
              }

              else
              {
                displayName = [v15 displayName];

                if (!displayName)
                {
                  v21 = __atxlog_handle_action_prediction();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    [_ATXActionUtils recipientFromMessageIntent:v21];
                  }

                  goto LABEL_21;
                }

                contactIdentifier2 = [v15 displayName];
              }

              v19 = contactIdentifier2;
              lowercaseString2 = [contactIdentifier2 lowercaseString];
              [v9 addObject:lowercaseString2];
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
        lowercaseString = [v9 componentsJoinedByString:@", "];
      }

      else
      {
        v9 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [_ATXActionUtils recipientFromMessageIntent:v9];
        }

LABEL_21:
        lowercaseString = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return lowercaseString;
}

+ (id)partOfWeekStringForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar isDateInWeekend:dateCopy];

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

+ (BOOL)isINStartCallIntentSupportedForAction:(id)action
{
  v3 = MEMORY[0x277CEB3B8];
  bundleId = [action bundleId];
  v5 = [v3 appInfoForBundle:bundleId];

  supportedActions = [v5 supportedActions];
  v7 = [supportedActions containsObject:@"INStartCallIntent"];

  return v7;
}

+ (BOOL)shouldAcceptAudioOrVideoCallIntent:(id)intent
{
  intentCopy = intent;
  if ([intentCopy actionType])
  {
    goto LABEL_2;
  }

  intent = [intentCopy intent];
  _className = [intent _className];
  if ([_className isEqual:@"INStartAudioCallIntent"])
  {
  }

  else
  {
    intent2 = [intentCopy intent];
    _className2 = [intent2 _className];
    v11 = [_className2 isEqual:@"INStartVideoCallIntent"];

    if (!v11)
    {
      goto LABEL_2;
    }
  }

  if ([self isINStartCallIntentSupportedForAction:intentCopy])
  {
    v5 = 0;
    goto LABEL_3;
  }

LABEL_2:
  v5 = 1;
LABEL_3:

  return v5;
}

+ (double)computeNormalizedBetaDistEngagementScoreWithPriorAlpha:(int)alpha priorBeta:(int)beta confirms:(double)confirms rejects:(double)rejects totalConfirms:(double)totalConfirms totalRejects:(double)totalRejects
{
  v8 = beta + alpha;
  v9 = alpha + totalConfirms;
  v10 = beta + totalRejects;
  return (v9 / (v9 + v10) * v8 + confirms) / (v10 / (v9 + v10) * v8 + v9 / (v9 + v10) * v8 + confirms + rejects) / (v9 / (v9 + v10) * v8 / (v9 / (v9 + v10) * v8 + v10 / (v9 + v10) * v8));
}

+ (id)atxActionFromProactiveSuggestion:(id)suggestion
{
  executableSpecification = [suggestion executableSpecification];
  if ([executableSpecification executableType] == 2 && (objc_msgSend(executableSpecification, "executableObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    executableObject = [executableSpecification executableObject];
  }

  else
  {
    executableObject = 0;
  }

  return executableObject;
}

+ (id)atxActionsFromProactiveSuggestions:(id)suggestions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___ATXActionUtils_atxActionsFromProactiveSuggestions___block_invoke;
  v5[3] = &__block_descriptor_40_e32__16__0__ATXProactiveSuggestion_8l;
  v5[4] = self;
  v3 = [suggestions _pas_mappedArrayWithTransform:v5];

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
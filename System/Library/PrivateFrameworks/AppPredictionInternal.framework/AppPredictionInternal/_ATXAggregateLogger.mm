@interface _ATXAggregateLogger
+ (BOOL)yesWithProbability:(double)probability;
+ (_ATXAggregateLogger)sharedInstance;
+ (id)notificationOutcomesMapping;
+ (id)predictedItemOutcomesMapping;
+ (id)predictionOutcomesMapping;
+ (id)propertyStringForLaunchReason:(id)reason;
+ (id)stringForPredictedItemOutcome:(unint64_t)outcome;
+ (id)stringForPredictionOutcome:(unint64_t)outcome;
+ (id)suggestionCountsArray;
+ (int64_t)getBuildType;
- (_ATXAggregateLogger)init;
- (void)logAppLaunch:(id)launch bundleId:(id)id;
- (void)logInputs:(const float *)inputs andScore:(float)score withOutcome:(unint64_t)outcome;
- (void)logLaunchEventWithLaunchReason:(id)reason predicted:(BOOL)predicted position:(int64_t)position;
- (void)logNotificationInteraction:(int64_t)interaction orbed:(BOOL)orbed onscreen:(BOOL)onscreen;
- (void)logPredictionEventWith:(id)with outcome:(unint64_t)outcome forABGroup:(id)group consumerType:(unint64_t)type andSubType:(unsigned __int8)subType;
- (void)logPredictionOfAppWithBundleId:(id)id inputs:(const float *)inputs outcome:(unint64_t)outcome rank:(unint64_t)rank score:(float)score forABGroup:(id)group;
@end

@implementation _ATXAggregateLogger

+ (_ATXAggregateLogger)sharedInstance
{
  if (sharedInstance__pasOnceToken10_0 != -1)
  {
    +[_ATXAggregateLogger sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_34;

  return v3;
}

- (_ATXAggregateLogger)init
{
  v6.receiver = self;
  v6.super_class = _ATXAggregateLogger;
  v2 = [(_ATXAggregateLogger *)&v6 init];
  if (v2)
  {
    v3 = +[_ATXBundleIdSet sharedInstance];
    bundleIdSet = v2->_bundleIdSet;
    v2->_bundleIdSet = v3;

    v2->_buildType = +[_ATXAggregateLogger getBuildType];
  }

  return v2;
}

+ (int64_t)getBuildType
{
  if ([MEMORY[0x277D42590] isBetaBuild])
  {
    v2 = __atxlog_handle_default();
    v3 = 1;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v11 = 0;
      v4 = "Seed build detected";
      v3 = 1;
      v5 = &v11;
LABEL_10:
      _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_INFO, v4, v5, 2u);
    }
  }

  else
  {
    isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
    v2 = __atxlog_handle_default();
    v7 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
    if (!isInternalBuild)
    {
      if (!v7)
      {
        v3 = 2;
        goto LABEL_12;
      }

      v9 = 0;
      v4 = "Customer build detected";
      v3 = 2;
      v5 = &v9;
      goto LABEL_10;
    }

    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_INFO, "Internal build detected", buf, 2u);
    }

    v3 = 0;
  }

LABEL_12:

  return v3;
}

+ (id)predictionOutcomesMapping
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    v4 = [_ATXAggregateLogger stringForPredictionOutcome:i];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v2 setObject:v4 forKeyedSubscript:v5];
  }

  return v2;
}

+ (id)predictedItemOutcomesMapping
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  for (i = 0; i != 5; ++i)
  {
    v4 = [_ATXAggregateLogger stringForPredictedItemOutcome:i];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v2 setObject:v4 forKeyedSubscript:v5];
  }

  return v2;
}

+ (id)suggestionCountsArray
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  for (i = 0; i != 10; ++i)
  {
    v4 = ATXSuggestionTypeToString();
    [v2 setObject:v4 atIndexedSubscript:i];
  }

  return v2;
}

+ (id)notificationOutcomesMapping
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:27];
  for (i = 0; i != 27; ++i)
  {
    v4 = ATXNEventTypeToString();
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    [v2 setObject:v4 forKeyedSubscript:v5];
  }

  v6 = [v2 copy];

  return v6;
}

- (void)logLaunchEventWithLaunchReason:(id)reason predicted:(BOOL)predicted position:(int64_t)position
{
  predictedCopy = predicted;
  v19[2] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"launchReason"];
  v10 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"position"];
  v11 = objc_alloc(MEMORY[0x277D41DB8]);
  v19[0] = v9;
  v19[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v13 = [v11 initWithFeatureId:@"AppPredictions" event:@"allLaunches" registerProperties:v12];

  v14 = [_ATXAggregateLogger propertyStringForLaunchReason:reasonCopy];
  if (predictedCopy)
  {
    position = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", position];
  }

  else
  {
    position = @"notPredicted";
  }

  v18[0] = v14;
  v18[1] = position;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v13 trackEventWithPropertyValues:v16];

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)logPredictionEventWith:(id)with outcome:(unint64_t)outcome forABGroup:(id)group consumerType:(unint64_t)type andSubType:(unsigned __int8)subType
{
  subTypeCopy = subType;
  v82[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  groupCopy = group;
  context = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"abGroup"];
  v11 = MEMORY[0x277D41DA0];
  v12 = +[_ATXAggregateLogger predictionOutcomesMapping];
  v67 = [v11 propertyWithName:@"outcomeType" enumMapping:v12 autoSanitizeValues:1];

  v13 = MEMORY[0x277D41DA0];
  consumerMapping = [MEMORY[0x277CEBCF0] consumerMapping];
  v68 = [v13 propertyWithName:@"consumerType" enumMapping:consumerMapping autoSanitizeValues:1];

  v15 = MEMORY[0x277D41DA0];
  consumerSubtypeMapping = [MEMORY[0x277CEBCF0] consumerSubtypeMapping];
  v17 = [v15 propertyWithName:@"consumerSubType" enumMapping:consumerSubtypeMapping autoSanitizeValues:1];

  v61 = [MEMORY[0x277D41DA0] propertyWithName:@"itemsShown" range:0 clampValues:{8, 1}];
  v18 = objc_alloc(MEMORY[0x277D41DB8]);
  v82[0] = v10;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
  v20 = [v18 initWithFeatureId:@"AppPredictions" event:@"predictions" registerProperties:v19];

  v21 = objc_alloc(MEMORY[0x277D41DB8]);
  v81 = v10;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v65 = [v21 initWithFeatureId:@"AppPredictions" event:@"conversions" registerProperties:v22];

  v64 = groupCopy;
  v80 = groupCopy;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v59 = v20;
  [v20 trackEventWithPropertyValues:v23];

  if ([_ATXAggregateLogger isConversionOutcome:outcome])
  {
    v79 = groupCopy;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    [v65 trackEventWithPropertyValues:v24];
  }

  v25 = objc_alloc(MEMORY[0x277D41DB8]);
  v78[0] = v10;
  v78[1] = v67;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v57 = [v25 initWithFeatureId:@"AppPredictions" event:@"outcome" registerProperties:v26];

  v27 = objc_alloc(MEMORY[0x277D41DB8]);
  v77[0] = v10;
  v77[1] = v68;
  v77[2] = v17;
  v77[3] = v67;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
  v66 = [v27 initWithFeatureId:@"AppPredictions" event:@"consumerOutcome" registerProperties:v28];

  v29 = objc_alloc(MEMORY[0x277D41D98]);
  v76[0] = v10;
  v76[1] = v68;
  v76[2] = v17;
  v76[3] = v67;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
  v55 = [v29 initWithFeatureId:@"AppPredictions" event:@"consumerOutcomeWithCacheAge" registerProperties:v30];

  v31 = objc_alloc(MEMORY[0x277D41D98]);
  v75[0] = v10;
  v75[1] = v68;
  v75[2] = v17;
  v75[3] = v67;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
  v56 = [v31 initWithFeatureId:@"AppPredictions" event:@"consumerOutcomeCacheAgeHistogram" registerProperties:v32];

  v74[0] = groupCopy;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v74[1] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  [v57 trackEventWithPropertyValues:v34];

  v73[0] = v64;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v73[1] = v35;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:subTypeCopy];
  v73[2] = v36;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v73[3] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:4];
  [v66 trackEventWithPropertyValues:v38];

  [ATXFileUtil cacheAgeForConsumerType:subTypeCopy];
  v40 = v39;
  v72[0] = v64;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v72[1] = v41;
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:subTypeCopy];
  v72[2] = v42;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v72[3] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
  [v55 trackEventWithPropertyValues:v44 value:v40];

  v71[0] = v64;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v71[1] = v45;
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:subTypeCopy];
  v71[2] = v46;
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v71[3] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
  [v56 trackEventWithPropertyValues:v48 value:v40];

  v49 = objc_alloc(MEMORY[0x277D41DB8]);
  v70 = v61;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v51 = [v49 initWithFeatureId:@"AppPredictions" event:@"predictionItemsShown" registerProperties:v50];

  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(withCopy, "count")}];
  v69 = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  [v51 trackEventWithPropertyValues:v53];

  objc_autoreleasePoolPop(context);
  v54 = *MEMORY[0x277D85DE8];
}

- (void)logInputs:(const float *)inputs andScore:(float)score withOutcome:(unint64_t)outcome
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277D41DA0];
  v9 = +[_ATXAggregateLogger predictedItemOutcomesMapping];
  v10 = [v8 propertyWithName:@"outcome" enumMapping:v9 autoSanitizeValues:1];

  v11 = objc_alloc(MEMORY[0x277D41D98]);
  v18[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v13 = [v11 initWithFeatureId:@"AppPredictions" event:@"score" registerProperties:v12];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v17 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [v13 trackEventWithPropertyValues:v15 value:score];

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)logPredictionOfAppWithBundleId:(id)id inputs:(const float *)inputs outcome:(unint64_t)outcome rank:(unint64_t)rank score:(float)score forABGroup:(id)group
{
  v46[2] = *MEMORY[0x277D85DE8];
  idCopy = id;
  groupCopy = group;
  context = objc_autoreleasePoolPush();
  v15 = ([(__CFString *)idCopy hasPrefix:@"com.apple"]& 1) != 0 || [(_ATXBundleIdSet *)self->_bundleIdSet containsBundleId:idCopy];
  v16 = __atxlog_handle_default();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAggregateLogger logPredictionOfAppWithBundleId:idCopy inputs:v15 outcome:v16 rank:? score:? forABGroup:?];
  }

  buildType = self->_buildType;
  v18 = idCopy;
  if (buildType)
  {
    if (buildType == 2)
    {
      if ([objc_opt_class() yesWithProbability:0.1])
      {
LABEL_9:
        v18 = @"redactedBundleId";
        if (v15)
        {
          v18 = idCopy;
        }

        goto LABEL_11;
      }
    }

    else if (buildType == 1)
    {
      goto LABEL_9;
    }

    v41 = 0;
    if (outcome)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v19 = v18;
  v20 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"bundleId"];
  v39 = groupCopy;
  v21 = MEMORY[0x277D41DA0];
  +[_ATXAggregateLogger predictedItemOutcomesMapping];
  v22 = v38 = rank;
  v23 = [v21 propertyWithName:@"outcomeType" enumMapping:v22 autoSanitizeValues:1];

  v24 = objc_alloc(MEMORY[0x277D41DB8]);
  v46[0] = v20;
  v46[1] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v26 = [v24 initWithFeatureId:@"AppPredictions" event:@"predictedApp" registerProperties:v25];

  v41 = v19;
  v45[0] = v19;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  v45[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v26 trackEventWithPropertyValues:v28];

  *&v29 = score;
  [(_ATXAggregateLogger *)self logInputs:inputs andScore:outcome withOutcome:v29];

  rank = v38;
  groupCopy = v39;

  if (!outcome)
  {
LABEL_12:
    v30 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"abGroup"];
    v31 = [MEMORY[0x277D41DA0] propertyWithName:@"position" range:0 clampValues:{8, 1}];
    v32 = objc_alloc(MEMORY[0x277D41DB8]);
    v44[0] = v30;
    v44[1] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v34 = [v32 initWithFeatureId:@"AppPredictions" event:@"conversionAtPosition" registerProperties:v33];

    v43[0] = groupCopy;
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rank];
    v43[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [v34 trackEventWithPropertyValues:v36];
  }

LABEL_13:

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)logNotificationInteraction:(int64_t)interaction orbed:(BOOL)orbed onscreen:(BOOL)onscreen
{
  onscreenCopy = onscreen;
  orbedCopy = orbed;
  v23[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D41DA0];
  v9 = +[_ATXAggregateLogger notificationOutcomesMapping];
  v10 = [v8 propertyWithName:@"outcome" enumMapping:v9 autoSanitizeValues:1];

  v11 = [MEMORY[0x277D41DA0] propertyWithName:@"screen" possibleValues:&unk_283A58928];
  v12 = [MEMORY[0x277D41DA0] propertyWithName:@"orb" possibleValues:&unk_283A58940];
  v13 = objc_alloc(MEMORY[0x277D41DB8]);
  v23[0] = v10;
  v23[1] = v12;
  v23[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v15 = [v13 initWithFeatureId:@"AppNotifications" event:@"interaction" registerProperties:v14];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:interaction];
  v17 = v16;
  v18 = @"no";
  if (orbedCopy)
  {
    v18 = @"yes";
  }

  v22[0] = v16;
  v22[1] = v18;
  v19 = @"history";
  if (onscreenCopy)
  {
    v19 = @"lockscreen";
  }

  v22[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v15 trackEventWithPropertyValues:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logAppLaunch:(id)launch bundleId:(id)id
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D41DA0];
  idCopy = id;
  launchCopy = launch;
  v8 = [v5 freeValuedPropertyWithName:@"from"];
  v9 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"bundleId"];
  v10 = objc_alloc(MEMORY[0x277D41DB8]);
  v16[0] = v8;
  v16[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v10 initWithFeatureId:@"AppPredictions" event:@"limitedAppLaunch" registerProperties:v11];

  v15[0] = launchCopy;
  v15[1] = idCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  [v12 trackEventWithPropertyValues:v13];
  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)yesWithProbability:(double)probability
{
  v3 = atomic_load(&yesWithProbabilityOverride);
  if ((v3 & 0x80000000) != 0)
  {
    return arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < probability;
  }

  else
  {
    return v3 != 0;
  }
}

+ (id)stringForPredictionOutcome:(unint64_t)outcome
{
  if (outcome >= 8)
  {
    [(_ATXAggregateLogger *)a2 stringForPredictionOutcome:self];
  }

  if (outcome - 1 > 7)
  {
    return @"convertedAppExpert";
  }

  else
  {
    return off_27859F038[outcome - 1];
  }
}

+ (id)stringForPredictedItemOutcome:(unint64_t)outcome
{
  if (outcome >= 5)
  {
    [(_ATXAggregateLogger *)a2 stringForPredictedItemOutcome:self];
  }

  if (outcome > 5)
  {
    return @"abandoned";
  }

  else
  {
    return off_27859F078[outcome];
  }
}

+ (id)propertyStringForLaunchReason:(id)reason
{
  reasonCopy = reason;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277D66D58];
  if ([reasonCopy hasPrefix:*MEMORY[0x277D66D58]])
  {
    [v4 appendString:@"Backlight-"];
  }

  else
  {
    v5 = *MEMORY[0x277D66E00];
    if (![reasonCopy hasPrefix:*MEMORY[0x277D66E00]])
    {
      v8 = @"LaunchReasonUnknown";
      goto LABEL_8;
    }
  }

  v6 = [reasonCopy substringFromIndex:{objc_msgSend(v5, "length")}];

  if ([v6 hasPrefix:@"."])
  {
    v7 = [v6 substringFromIndex:1];

    v6 = v7;
  }

  [v4 appendString:v6];
  v8 = [v4 copy];
  reasonCopy = v6;
LABEL_8:

  return v8;
}

- (void)logPredictionOfAppWithBundleId:(os_log_t)log inputs:outcome:rank:score:forABGroup:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Bundleid %@ in approved list: %{BOOL}d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)stringForPredictionOutcome:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAggregateLogger.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"outcome >= 0 && outcome < _ATXPredictionOutcomeMax"}];
}

+ (void)stringForPredictedItemOutcome:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAggregateLogger.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"outcome >= 0 && outcome < _ATXPredictedItemOutcomeMax"}];
}

@end
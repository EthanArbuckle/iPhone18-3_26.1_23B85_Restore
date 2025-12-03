@interface _ATXFeedback
+ (_ATXFeedback)sharedInstance;
- (_ATXFeedback)init;
- (_ATXFeedback)initWithDataStore:(id)store histogramManager:(id)manager;
- (void)decayCounts;
- (void)doDecayAtTime:(double)time;
- (void)feedbackLaunchedWithConsumerType:(unint64_t)type forBundleId:(id)id rejected:(id)rejected explicitlyRejected:(id)explicitlyRejected context:(id)context;
- (void)loadHistogramsInMemoryIfNecessary;
- (void)populateFeedbackForConsumerType:(unint64_t)type forBundleId:(id)id withContext:(id)context forFeedbackCategory:(int64_t)category;
- (void)putFeedbackScoresForApps:(id)apps intoScores:(double *)scores confirms:(double *)confirms rejects:(double *)rejects;
- (void)putNopScoresForApps:(id)apps into:(double *)into atTime:(double)time;
- (void)removeFeedbackForBundles:(id)bundles;
- (void)unloadCachedHistograms;
@end

@implementation _ATXFeedback

- (_ATXFeedback)initWithDataStore:(id)store histogramManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = _ATXFeedback;
  v8 = [(_ATXFeedback *)&v25 init];
  if (v8)
  {
    if (storeCopy)
    {
      v9 = storeCopy;
    }

    else
    {
      v9 = +[_ATXDataStore sharedInstance];
    }

    store = v8->_store;
    v8->_store = v9;

    objc_initWeak(&location, v8);
    v11 = objc_opt_new();
    uninstallNotificationListener = v8->_uninstallNotificationListener;
    v8->_uninstallNotificationListener = v11;

    v13 = v8->_uninstallNotificationListener;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __51___ATXFeedback_initWithDataStore_histogramManager___block_invoke;
    v22 = &unk_278596DA0;
    objc_copyWeak(&v23, &location);
    [(_ATXInternalUninstallNotification *)v13 registerForNotificationsWithUninstallBlock:&v19];
    objc_storeStrong(&v8->_histogramManager, manager);
    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:{v15, v19, v20, v21, v22}];
    histogramState = v8->_histogramState;
    v8->_histogramState = v16;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (_ATXFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [(_ATXFeedback *)self initWithDataStore:0 histogramManager:v3];

  return v4;
}

+ (_ATXFeedback)sharedInstance
{
  if (sharedInstance__pasOnceToken7_20 != -1)
  {
    +[_ATXFeedback sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_25;

  return v3;
}

- (void)loadHistogramsInMemoryIfNecessary
{
  histogramState = self->_histogramState;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49___ATXFeedback_loadHistogramsInMemoryIfNecessary__block_invoke;
  v3[3] = &unk_27859DBA8;
  v3[4] = self;
  [(_PASLock *)histogramState runWithLockAcquired:v3];
}

- (void)unloadCachedHistograms
{
  histogramState = self->_histogramState;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38___ATXFeedback_unloadCachedHistograms__block_invoke;
  v3[3] = &unk_27859DBA8;
  v3[4] = self;
  [(_PASLock *)histogramState runWithLockAcquired:v3];
}

- (void)decayCounts
{
  Current = CFAbsoluteTimeGetCurrent();

  [(_ATXFeedback *)self doDecayAtTime:Current];
}

- (void)doDecayAtTime:(double)time
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0x7FF8000000000000;
  store = self->_store;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30___ATXFeedback_doDecayAtTime___block_invoke;
  v5[3] = &unk_27859DBD0;
  *&v5[5] = time;
  v5[4] = v6;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30___ATXFeedback_doDecayAtTime___block_invoke_2;
  v4[3] = &unk_27859DBF8;
  v4[4] = v6;
  [(_ATXDataStore *)store enumerateStateForApps:0 withGlobalBlock:v5 thenWithPerAppBlock:v4];
  _Block_object_dispose(v6, 8);
}

- (void)feedbackLaunchedWithConsumerType:(unint64_t)type forBundleId:(id)id rejected:(id)rejected explicitlyRejected:(id)explicitlyRejected context:(id)context
{
  idCopy = id;
  rejectedCopy = rejected;
  explicitlyRejectedCopy = explicitlyRejected;
  contextCopy = context;
  v23 = rejectedCopy;
  if (idCopy)
  {
    v16 = [rejectedCopy arrayByAddingObject:idCopy];
  }

  else
  {
    v16 = rejectedCopy;
  }

  v17 = v16;
  [(_ATXFeedback *)self loadHistogramsInMemoryIfNecessary];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  objc_initWeak(&location, self);
  store = self->_store;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97___ATXFeedback_feedbackLaunchedWithConsumerType_forBundleId_rejected_explicitlyRejected_context___block_invoke;
  v25[3] = &unk_27859DC20;
  v22 = idCopy;
  v26 = v22;
  selfCopy = self;
  v32[1] = type;
  v30 = v36;
  objc_copyWeak(v32, &location);
  v19 = contextCopy;
  v28 = v19;
  v20 = explicitlyRejectedCopy;
  v29 = v20;
  v31 = v34;
  [(_ATXDataStore *)store enumerateStateForApps:v17 withGlobalBlock:0 thenWithPerAppBlock:v25];
  if ([objc_opt_class() isWidgetOrSpotlight:type])
  {
    v21 = self->_store;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97___ATXFeedback_feedbackLaunchedWithConsumerType_forBundleId_rejected_explicitlyRejected_context___block_invoke_2;
    v24[3] = &unk_27859DC48;
    v24[4] = v36;
    v24[5] = v34;
    [(_ATXDataStore *)v21 enumerateStateForApps:MEMORY[0x277CBEBF8] withGlobalBlock:v24 thenWithPerAppBlock:0, v22, rejectedCopy];
  }

  if (idCopy)
  {
    ATXUpdatePredictionsDefaultInterval(2);
  }

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

- (void)populateFeedbackForConsumerType:(unint64_t)type forBundleId:(id)id withContext:(id)context forFeedbackCategory:(int64_t)category
{
  idCopy = id;
  contextCopy = context;
  timeContext = [contextCopy timeContext];
  date = [timeContext date];
  locationMotionContext = [contextCopy locationMotionContext];
  v12 = +[_ATXActionUtils stringForCoarseTimePOWLocation:timeZone:coarseGeohash:](_ATXActionUtils, "stringForCoarseTimePOWLocation:timeZone:coarseGeohash:", date, 0, [locationMotionContext coarseGeohash]);

  timeContext2 = [contextCopy timeContext];
  date2 = [timeContext2 date];
  locationMotionContext2 = [contextCopy locationMotionContext];
  v16 = +[_ATXActionUtils stringForSpecificTimeDOWLocation:timeZone:geohash:](_ATXActionUtils, "stringForSpecificTimeDOWLocation:timeZone:geohash:", date2, 0, [locationMotionContext2 geohash]);

  timeContext3 = [contextCopy timeContext];
  date3 = [timeContext3 date];
  v19 = [_ATXActionUtils stringForTwoHourTimeWindow:date3 timeZone:0];

  timeContext4 = [contextCopy timeContext];
  date4 = [timeContext4 date];
  v22 = [_ATXActionUtils stringForDayOfWeek:date4 timeZone:0];

  locationMotionContext3 = [contextCopy locationMotionContext];
  v24 = +[_ATXActionUtils stringForSpecificGeohash:](_ATXActionUtils, "stringForSpecificGeohash:", [locationMotionContext3 geohash]);

  locationMotionContext4 = [contextCopy locationMotionContext];
  v26 = +[_ATXActionUtils stringForCoarseGeohash:](_ATXActionUtils, "stringForCoarseGeohash:", [locationMotionContext4 coarseGeohash]);

  histogramState = self->_histogramState;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __92___ATXFeedback_populateFeedbackForConsumerType_forBundleId_withContext_forFeedbackCategory___block_invoke;
  v39[3] = &unk_27859DC70;
  typeCopy = type;
  categoryCopy = category;
  v40 = idCopy;
  v41 = contextCopy;
  v42 = v12;
  v43 = v16;
  v44 = v19;
  v45 = v22;
  v46 = v26;
  v47 = v24;
  v28 = v24;
  v29 = v26;
  v30 = v22;
  v31 = v19;
  v32 = v16;
  v33 = v12;
  v34 = contextCopy;
  v35 = idCopy;
  [(_PASLock *)histogramState runWithLockAcquired:v39];
}

- (void)putNopScoresForApps:(id)apps into:(double *)into atTime:(double)time
{
  appsCopy = apps;
  if ([appsCopy count])
  {
    v6 = 0;
    do
    {
      into[v6++] = 1.0;
    }

    while (v6 < [appsCopy count]);
  }
}

- (void)putFeedbackScoresForApps:(id)apps intoScores:(double *)scores confirms:(double *)confirms rejects:(double *)rejects
{
  appsCopy = apps;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = scores;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = confirms;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = rejects;
  +[_ATXFeedbackConstants baseAlpha];
  v12 = v11;
  +[_ATXFeedbackConstants baseBeta];
  store = self->_store;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69___ATXFeedback_putFeedbackScoresForApps_intoScores_confirms_rejects___block_invoke;
  v16[3] = &unk_27859DC98;
  v16[4] = self;
  *&v16[5] = v12 + v14;
  *&v16[6] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69___ATXFeedback_putFeedbackScoresForApps_intoScores_confirms_rejects___block_invoke_2;
  v15[3] = &unk_27859DCC0;
  v15[4] = self;
  v15[5] = v19;
  v15[8] = scores;
  v15[9] = confirms;
  v15[10] = rejects;
  v15[6] = v18;
  v15[7] = v17;
  [(_ATXDataStore *)store enumerateStateForAppsReadOnly:appsCopy withGlobalBlock:v16 thenWithPerAppBlock:v15];
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
}

- (void)removeFeedbackForBundles:(id)bundles
{
  v15 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [bundlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(bundlesCopy);
        }

        [(_ATXFeedback *)self removeFeedbackForBundle:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [bundlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end
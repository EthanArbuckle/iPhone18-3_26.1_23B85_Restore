@interface CHWorkoutDetailDataSource
- (BOOL)_createRouteAndWeatherCellIfNeeded;
- (BOOL)_isExtendedMode;
- (BOOL)_shouldShowSplits;
- (BOOL)_showAveragePaceForWorkout:(id)workout workoutActivity:(id)activity;
- (BOOL)weatherOrLocationAvailableForWorkout;
- (CHWorkoutDetailDataSource)initWithTableView:(id)view workout:(id)workout workoutActivity:(id)activity healthStore:(id)store model:(id)model fitnessAppContext:(id)context formattingManager:(id)manager badgeImageFactory:(id)self0 achievementLocalizationProvider:(id)self1 awardsDataProvider:(id)self2 fiuiFormattingManager:(id)self3 showCurrentWorkloadButton:(BOOL)self4 isWorkoutSummaryFetchRequired:(BOOL)self5 supplementaryDataSource:(id)self6;
- (CHWorkoutDetailLocationFetcherObserver)locationFetcherObserver;
- (CHWorkoutDetailNavigationDelegate)delegate;
- (UITableView)tableView;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_createSubItemsForWorkoutMetrics;
- (id)_makeAppleWeatherFooterView;
- (id)_makeUltraModeFooterView;
- (id)_normalizeSubItemsArray:(id)array;
- (id)analyticsHandler;
- (id)navigationActionForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_createAndInsertValuesSection;
- (void)_createAwardSection;
- (void)_createBurnBarSection;
- (void)_createCatalogItemViewModelIfNeeded;
- (void)_createCustomSplits;
- (void)_createDiveSection;
- (void)_createDownhillRunsSection;
- (void)_createEffortSection;
- (void)_createGuidedRunMediaMomentsSection;
- (void)_createHeartRateSectionWithHeartRateReadings:(id)readings averageHeartRate:(id)rate recoveryHeartRateReadings:(id)rateReadings;
- (void)_createIntervalsSection;
- (void)_createMultiSportSection;
- (void)_createNormalSplits;
- (void)_createPowerSectionWithPowerSamples:(id)samples;
- (void)_createRouteAndWeatherSection;
- (void)_createSegmentsSection;
- (void)_createSplitsSection;
- (void)_createSummarySection;
- (void)_createSummarySubSections;
- (void)_createSwimSetsSection;
- (void)_createSwimSplits;
- (void)_createTableItems;
- (void)_createTrackLapsSection;
- (void)_createValuesSection;
- (void)_createWorkoutVoiceTranscriptSection;
- (void)_fetchBurnBarScoreSummary;
- (void)_fetchPreferredTrackDistanceUnit;
- (void)_handleDidUpdateDemoOverrideEffortValues;
- (void)_handleFitnessUnitPreferencesDidChange;
- (void)_handleLocations:(id)locations;
- (void)_insertBurnBarSection;
- (void)_insertDownhillRunsSection;
- (void)_insertEffortSection;
- (void)_insertGuidedRunMediaMomentsSection;
- (void)_insertHeartRateSection;
- (void)_insertIntervalsSection;
- (void)_insertMultiSportSection;
- (void)_insertPowerSection;
- (void)_insertSegmentsSection;
- (void)_insertSplitsSection;
- (void)_insertSwimSetsSection;
- (void)_insertTrackLapsSection;
- (void)_insertWorkoutVoiceOutroSection;
- (void)_refreshWorkoutDataWithUpdatedWorkout;
- (void)_registerCellClasses;
- (void)_section:(int64_t)_section setExpanded:(BOOL)expanded;
- (void)_startObservingWorkouts;
- (void)_stopRouteQueryIfNecessary;
- (void)_updatePaceFormatForSets:(int64_t)sets;
- (void)_warmDataCalculatorCache;
- (void)dataSourceDidUpdateOutroState:(id)state;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)domain;
- (void)divingDataDidFinishLoading;
- (void)expandingHeaderView:(id)view didChangeExpanded:(BOOL)expanded;
- (void)fetchLocations;
- (void)presentEffortViewController:(BOOL)controller presentationCompletion:(id)completion;
- (void)presentPageForSection:(int64_t)section;
- (void)setCurrentlySelectedSwimmingPaceFormat:(int64_t)format;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)updateSharingImage;
@end

@implementation CHWorkoutDetailDataSource

- (CHWorkoutDetailDataSource)initWithTableView:(id)view workout:(id)workout workoutActivity:(id)activity healthStore:(id)store model:(id)model fitnessAppContext:(id)context formattingManager:(id)manager badgeImageFactory:(id)self0 achievementLocalizationProvider:(id)self1 awardsDataProvider:(id)self2 fiuiFormattingManager:(id)self3 showCurrentWorkloadButton:(BOOL)self4 isWorkoutSummaryFetchRequired:(BOOL)self5 supplementaryDataSource:(id)self6
{
  viewCopy = view;
  workoutCopy = workout;
  workoutCopy2 = workout;
  activityCopy = activity;
  activityCopy2 = activity;
  contextCopy = context;
  v71 = activityCopy2;
  storeCopy = store;
  modelCopy = model;
  contextCopy2 = context;
  managerCopy = manager;
  factoryCopy = factory;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  formattingManagerCopy = formattingManager;
  sourceCopy = source;
  v72.receiver = self;
  v72.super_class = CHWorkoutDetailDataSource;
  v25 = [(CHWorkoutDetailDataSource *)&v72 init];
  if (!v25)
  {
    goto LABEL_14;
  }

  v69 = workoutCopy2;
  if ([workoutCopy2 workoutActivityType] == 46)
  {
    isSwimmingActivity = 1;
    v25->_isSwimmingActivity = 1;
    v27 = v71;
  }

  else
  {
    v27 = v71;
    workoutConfiguration = [v71 workoutConfiguration];
    v25->_isSwimmingActivity = [workoutConfiguration activityType] == 46;

    isSwimmingActivity = v25->_isSwimmingActivity;
    if ((isSwimmingActivity & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if ([v69 fi_swimmingLocationType] != 1)
  {
    workoutConfiguration2 = [v27 workoutConfiguration];
    v25->_workoutIsPoolSwim = [workoutConfiguration2 swimmingLocationType] == 1;

    goto LABEL_8;
  }

LABEL_6:
  v25->_workoutIsPoolSwim = isSwimmingActivity;
LABEL_8:
  v25->_workoutIsFirstParty = [v69 isFirstPartyWorkout];
  v25->_isUnderwaterDive = [v69 workoutActivityType] == 84;
  objc_storeStrong(&v25->_fiuiFormattingManager, formattingManager);
  v25->_currentlySelectedSwimmingPaceFormat = 100;
  v25->_didSetInitialSwimmingPaceFormat = 0;
  v30 = objc_storeWeak(&v25->_tableView, viewCopy);
  [viewCopy setEstimatedRowHeight:44.0];

  WeakRetained = objc_loadWeakRetained(&v25->_tableView);
  [WeakRetained setRowHeight:UITableViewAutomaticDimension];

  v32 = objc_loadWeakRetained(&v25->_tableView);
  [v32 setSectionHeaderTopPadding:0.0];

  objc_storeStrong(&v25->_healthStore, store);
  objc_storeStrong(&v25->_formattingManager, manager);
  dataCalculator = [managerCopy dataCalculator];
  dataCalculator = v25->_dataCalculator;
  v25->_dataCalculator = dataCalculator;

  objc_storeStrong(&v25->_model, model);
  objc_storeStrong(&v25->_fitnessAppContext, contextCopy);
  objc_storeStrong(&v25->_workout, workoutCopy);
  objc_storeStrong(&v25->_workoutActivity, activityCopy);
  isMultiSportWorkout = [v69 isMultiSportWorkout];
  if (v27)
  {
    v36 = 0;
  }

  else
  {
    v36 = isMultiSportWorkout;
  }

  v25->_isTopLevelMultisport = v36;
  v25->_hasAverageHeartRate = 0;
  objc_storeStrong(&v25->_badgeImageFactory, factory);
  objc_storeStrong(&v25->_achievementLocalizationProvider, provider);
  objc_storeStrong(&v25->_awardsDataProvider, dataProvider);
  v25->_isWorkoutSummaryFetchRequired = required;
  metadata = [(HKWorkout *)v25->_workout metadata];
  v38 = [metadata objectForKey:_HKPrivateMetadataKeyWorkoutExtendedMode];

  [v38 BOOLValue];
  v39 = [[CHWorkoutRouteMapGenerator alloc] initWithPathRendererClass:objc_opt_class()];
  snapshotGenerator = v25->_snapshotGenerator;
  v25->_snapshotGenerator = v39;

  if (v25->_isUnderwaterDive)
  {
    v41 = [[CHDivingDataCalculator alloc] initWithHealthStore:v25->_healthStore diveSession:v25->_workout formattingManager:v25->_fiuiFormattingManager];
    divingDataCalculator = v25->_divingDataCalculator;
    v25->_divingDataCalculator = v41;

    [(CHDivingDataCalculator *)v25->_divingDataCalculator setDelegate:v25];
  }

  v43 = [HKKeyValueDomain alloc];
  v44 = [v43 initWithCategory:0 domainName:kHKNanolifestylePreferencesDomain healthStore:v25->_healthStore];
  trackValueDomain = v25->_trackValueDomain;
  v25->_trackValueDomain = v44;

  [(HKKeyValueDomain *)v25->_trackValueDomain startObservation:v25];
  v25->_trackDistanceUnit = 1;
  objc_storeStrong(&v25->_supplementaryDataSource, source);
  [(CHWorkoutSummaryDataSourceBridge *)v25->_supplementaryDataSource addWithObserver:v25];
  [(CHWorkoutDetailDataSource *)v25 _fetchPreferredTrackDistanceUnit];
  [(CHWorkoutDetailDataSource *)v25 _registerCellClasses];
  [(CHWorkoutDetailDataSource *)v25 _createTableItems];
  [(CHWorkoutDetailDataSource *)v25 _createCatalogItemViewModelIfNeeded];
  v46 = objc_loadWeakRetained(&v25->_tableView);
  [v46 setDataSource:v25];

  v47 = objc_loadWeakRetained(&v25->_tableView);
  [v47 setDelegate:v25];

  v48 = [UIView alloc];
  v49 = objc_loadWeakRetained(&v25->_tableView);
  [v49 bounds];
  v50 = [v48 initWithFrame:{0.0, 0.0, CGRectGetWidth(v73), 0.0}];
  v51 = objc_loadWeakRetained(&v25->_tableView);
  [v51 setTableFooterView:v50];

  v52 = objc_loadWeakRetained(&v25->_tableView);
  [v52 setAllowsSelection:1];

  v53 = objc_loadWeakRetained(&v25->_tableView);
  [v53 setSectionFooterHeight:0.0];

  v25->_showCurrentWorkloadButton = button;
  [(CHWorkoutDetailDataSource *)v25 _warmDataCalculatorCache];
  v54 = +[NSNotificationCenter defaultCenter];
  [v54 addObserver:v25 selector:"_handleFitnessUnitPreferencesDidChange" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];

  v55 = +[NSNotificationCenter defaultCenter];
  v56 = +[WOEffortBridges didUpdateDemoOverrideEffortValues];
  [v55 addObserver:v25 selector:"_handleDidUpdateDemoOverrideEffortValues" name:v56 object:0];

  workoutCopy2 = v69;
LABEL_14:

  return v25;
}

- (void)dealloc
{
  [(HKKeyValueDomain *)self->_trackValueDomain stopObservation:self];
  [(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource removeWithObserver:self];
  [(CHWorkoutDetailDataSource *)self _stopRouteQueryIfNecessary];
  v3.receiver = self;
  v3.super_class = CHWorkoutDetailDataSource;
  [(CHWorkoutDetailDataSource *)&v3 dealloc];
}

- (void)_createCatalogItemViewModelIfNeeded
{
  seymourCatalogItemDataProvider = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  v4 = [seymourCatalogItemDataProvider isSeymourWorkout:self->_workout];

  if (v4)
  {
    objc_initWeak(&location, self);
    seymourCatalogItemDataProvider2 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
    workout = self->_workout;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F1FFC;
    v7[3] = &unk_10083BF50;
    objc_copyWeak(&v8, &location);
    [seymourCatalogItemDataProvider2 fetchCatalogItemViewModelForWorkout:workout completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_fetchBurnBarScoreSummary
{
  objc_initWeak(&location, self);
  seymourCatalogItemDataProvider = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  workout = self->_workout;
  healthStore = self->_healthStore;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F220C;
  v6[3] = &unk_10083BF78;
  objc_copyWeak(&v7, &location);
  [seymourCatalogItemDataProvider fetchScoreSummaryForWorkout:workout healthStore:healthStore completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_fetchPreferredTrackDistanceUnit
{
  if ([(HKWorkout *)self->_workout supportsTrackWorkout])
  {
    trackValueDomain = self->_trackValueDomain;
    v8 = 0;
    v4 = [(HKKeyValueDomain *)trackValueDomain numberForKey:@"WOTrackWorkoutsUnit" error:&v8];
    v5 = v4;
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      [(CHWorkoutDetailDataSource *)self setTrackDistanceUnit:1];
    }

    if ([v5 intValue])
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    [(CHWorkoutDetailDataSource *)self setTrackDistanceUnit:v7];
  }
}

- (void)setCurrentlySelectedSwimmingPaceFormat:(int64_t)format
{
  if (self->_currentlySelectedSwimmingPaceFormat != format || ![(CHWorkoutDetailDataSource *)self didSetInitialSwimmingPaceFormat])
  {
    [(CHWorkoutDetailDataSource *)self setDidSetInitialSwimmingPaceFormat:1];
    swimmingSplitItems = [(CHWorkoutDetailDataSource *)self swimmingSplitItems];
    v6 = dword_1008F99F8;

    if (swimmingSplitItems || v6 > 9)
    {
      dword_1008F99F8 = 0;
      self->_currentlySelectedSwimmingPaceFormat = format;
      if ([(CHWorkoutDetailDataSource *)self segmentsExpanded])
      {
        [(CHWorkoutDetailDataSource *)self _updatePaceFormatForSets:format];
      }

      swimmingSplitItems2 = [(CHWorkoutDetailDataSource *)self swimmingSplitItems];
      v9 = [NSNumber numberWithInteger:self->_currentlySelectedSwimmingPaceFormat];
      v24 = [swimmingSplitItems2 objectForKeyedSubscript:v9];

      LOBYTE(swimmingSplitItems2) = [(CHWorkoutDetailDataSource *)self splitsExpanded];
      tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v11 = tableItemsBySection;
      if ((swimmingSplitItems2 & 1) != 0 || !v24)
      {
        v12 = [tableItemsBySection objectAtIndexedSubscript:9];

        v13 = objc_alloc_init(NSMutableArray);
        v14 = objc_alloc_init(NSMutableArray);
        if ([v12 count])
        {
          v15 = 0;
          do
          {
            v16 = [NSIndexPath indexPathForRow:v15 inSection:9];
            [v13 addObject:v16];

            ++v15;
          }

          while (v15 < [v12 count]);
        }

        if ([v24 count])
        {
          v17 = 0;
          do
          {
            v18 = [NSIndexPath indexPathForRow:v17 inSection:9];
            [v14 addObject:v18];

            ++v17;
          }

          while (v17 < [v24 count]);
        }

        tableView = [(CHWorkoutDetailDataSource *)self tableView];
        [tableView beginUpdates];

        tableView2 = [(CHWorkoutDetailDataSource *)self tableView];
        [tableView2 deleteRowsAtIndexPaths:v13 withRowAnimation:3];

        if ([v24 count])
        {
          tableItemsBySection2 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
          [tableItemsBySection2 setObject:v24 atIndexedSubscript:9];
        }

        tableView3 = [(CHWorkoutDetailDataSource *)self tableView];
        [tableView3 insertRowsAtIndexPaths:v14 withRowAnimation:3];

        tableView4 = [(CHWorkoutDetailDataSource *)self tableView];
        [tableView4 endUpdates];
      }

      else
      {
        [tableItemsBySection setObject:v24 atIndexedSubscript:9];
        v12 = v11;
      }
    }

    else
    {
      ++dword_1008F99F8;
      v7 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F2798;
      block[3] = &unk_10083BFA0;
      block[4] = self;
      block[5] = format;
      dispatch_after(v7, &_dispatch_main_q, block);
    }
  }
}

- (void)_updatePaceFormatForSets:(int64_t)sets
{
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v5 = [tableItemsBySection objectAtIndexedSubscript:8];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        paceFormatUpdatedBlock = [v11 paceFormatUpdatedBlock];

        if (paceFormatUpdatedBlock)
        {
          paceFormatUpdatedBlock2 = [v11 paceFormatUpdatedBlock];
          paceFormatUpdatedBlock2[2](paceFormatUpdatedBlock2, sets);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_registerCellClasses
{
  v3 = objc_opt_class();
  if (self->_isUnderwaterDive)
  {
    v3 = objc_opt_class();
  }

  v4 = v3;
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = v4;
  v23[3] = objc_opt_class();
  v23[4] = objc_opt_class();
  v23[5] = objc_opt_class();
  v23[6] = objc_opt_class();
  v23[7] = objc_opt_class();
  v23[8] = objc_opt_class();
  v23[9] = objc_opt_class();
  v23[10] = objc_opt_class();
  v23[11] = objc_opt_class();
  v23[12] = objc_opt_class();
  v23[13] = objc_opt_class();
  v23[14] = objc_opt_class();
  v23[15] = objc_opt_class();
  v23[16] = objc_opt_class();
  v23[17] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v23 count:18];
  [(CHWorkoutDetailDataSource *)self setCellClassesBySection:v5];

  cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  if ([cellClassesBySection count] != 18)
  {
    sub_10069C36C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  cellClassesBySection2 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  v8 = [cellClassesBySection2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(cellClassesBySection2);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        tableView = [(CHWorkoutDetailDataSource *)self tableView];
        v14 = NSStringFromClass(v12);
        [tableView registerClass:v12 forCellReuseIdentifier:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [cellClassesBySection2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = objc_opt_class();
  v16 = +[(ActivityTileSectionHeader *)_TtC10FitnessApp26WorkoutDetailSectionHeader];
  tableView2 = [(CHWorkoutDetailDataSource *)self tableView];
  [tableView2 registerClass:v15 forHeaderFooterViewReuseIdentifier:v16];
}

- (void)_warmDataCalculatorCache
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  if ([workout workoutActivityType] == 37)
  {
  }

  else
  {
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivityType = [workout2 workoutActivityType];

    if (workoutActivityType != 13)
    {
      return;
    }
  }

  dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
  workout3 = [(CHWorkoutDetailDataSource *)self workout];
  [dataCalculator cadenceSamplesForWorkout:workout3 workoutActivity:0 completion:&stru_10083BFE0];

  dataCalculator2 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  workout4 = [(CHWorkoutDetailDataSource *)self workout];
  [dataCalculator2 powerSamplesForWorkout:workout4 workoutActivity:0 completion:&stru_10083C000];
}

- (void)_handleFitnessUnitPreferencesDidChange
{
  [(CHWorkoutDetailDataSource *)self _createValuesSection];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];
}

- (void)_handleDidUpdateDemoOverrideEffortValues
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:3];
  [tableView reloadSections:v2 withRowAnimation:5];
}

- (void)didUpdateKeyValueDomain:(id)domain
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2E50;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_createTableItems
{
  v3 = objc_alloc_init(NSMutableArray);
  [(CHWorkoutDetailDataSource *)self setTableItemsBySection:v3];

  cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  v5 = [cellClassesBySection count];

  if (v5)
  {
    v6 = 0;
    do
    {
      tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      [tableItemsBySection addObject:&__NSArray0__struct];

      ++v6;
      cellClassesBySection2 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
      v9 = [cellClassesBySection2 count];
    }

    while (v9 > v6);
  }

  v45 = +[NSNull null];
  v47[0] = v45;
  v44 = +[NSNull null];
  v47[1] = v44;
  v10 = +[NSBundle mainBundle];
  v43 = v10;
  if (self->_isUnderwaterDive)
  {
    v11 = @"UNDERWATER_DIVING_DETAILS";
  }

  else
  {
    v11 = @"WORKOUT_DETAILS_TITLE";
  }

  v42 = [v10 localizedStringForKey:v11 value:&stru_1008680E8 table:@"Localizable"];
  v47[2] = v42;
  v41 = +[NSNull null];
  v47[3] = v41;
  v40 = +[NSNull null];
  v47[4] = v40;
  v39 = +[NSNull null];
  v47[5] = v39;
  v38 = +[NSBundle mainBundle];
  v37 = [v38 localizedStringForKey:@"WORKOUT_INTERVAL_HEADER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[6] = v37;
  v36 = +[NSBundle mainBundle];
  v35 = [v36 localizedStringForKey:@"WORKOUT_LAPS_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[7] = v35;
  v34 = +[NSBundle mainBundle];
  v33 = [v34 localizedStringForKey:@"WORKOUT_AUTO_SETS_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[8] = v33;
  v32 = +[NSBundle mainBundle];
  v31 = [v32 localizedStringForKey:@"WORKOUT_SPLITS_HEADER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[9] = v31;
  v30 = +[NSBundle mainBundle];
  v29 = [v30 localizedStringForKey:@"WORKOUT_DOWNHILL_RUNS_HEADER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[10] = v29;
  v28 = +[NSBundle mainBundle];
  v27 = [v28 localizedStringForKey:@"WORKOUT_SEGMENT_HEADER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[11] = v27;
  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v26 localizedStringForKey:@"BURN_BAR" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v47[12] = v25;
  v24 = +[NSBundle mainBundle];
  v23 = [v24 localizedStringForKey:@"WORKOUT_HEART_RATE_PAGE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[13] = v23;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"WORKOUT_POWER_PAGE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[14] = v13;
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"WORKOUT_ROUTE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  v47[15] = v15;
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"MEDIA_MOMENTS_IMAGES" value:&stru_1008680E8 table:@"Localizable-seymour"];
  v47[16] = v17;
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"AWARDS" value:&stru_1008680E8 table:@"Localizable"];
  v47[17] = v19;
  v20 = [NSArray arrayWithObjects:v47 count:18];
  [(CHWorkoutDetailDataSource *)self setTableSectionHeaders:v20];

  tableSectionHeaders = [(CHWorkoutDetailDataSource *)self tableSectionHeaders];
  if ([tableSectionHeaders count] != 18)
  {
    sub_10069C398();
  }

  [(CHWorkoutDetailDataSource *)self _createSummarySection];
  [(CHWorkoutDetailDataSource *)self _createMultiSportSection];
  if (self->_isUnderwaterDive)
  {
    [(CHWorkoutDetailDataSource *)self _createDiveSection];
  }

  else
  {
    [(CHWorkoutDetailDataSource *)self _createValuesSection];
  }

  if (!self->_isTopLevelMultisport)
  {
    if (self->_isWorkoutSummaryFetchRequired)
    {
      _HKInitializeLogging();
      v22 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[mirror] _isWorkoutSummaryFetchRequired is set to true. Not using existing workout data.", buf, 2u);
      }

      [(CHWorkoutDetailDataSource *)self _startObservingWorkouts];
    }

    else
    {
      [(CHWorkoutDetailDataSource *)self _createSummarySubSections];
    }
  }

  [(CHWorkoutDetailDataSource *)self _createAwardSection];
}

- (void)_refreshWorkoutDataWithUpdatedWorkout
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F351C;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_createSummarySubSections
{
  [(CHWorkoutDetailDataSource *)self _createWorkoutVoiceTranscriptSection];
  [(CHWorkoutDetailDataSource *)self _createEffortSection];
  [(CHWorkoutDetailDataSource *)self _createTrackLapsSection];
  [(CHWorkoutDetailDataSource *)self _createIntervalsSection];
  [(CHWorkoutDetailDataSource *)self _createSplitsSection];
  [(CHWorkoutDetailDataSource *)self _createDownhillRunsSection];
  [(CHWorkoutDetailDataSource *)self _createSegmentsSection];
  [(CHWorkoutDetailDataSource *)self _createSwimSetsSection];

  [(CHWorkoutDetailDataSource *)self _createRouteAndWeatherSection];
}

- (void)_createSummarySection
{
  v3 = objc_alloc_init(_CHWorkoutDetailSummaryLocationItem);
  cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:0]);

  v15 = v3;
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [tableItemsBySection setObject:v5 atIndexedSubscript:0];

  if ([(CHWorkoutDetailDataSource *)self workoutIsPoolSwim])
  {
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F3828;
    v13[3] = &unk_10083C028;
    v10 = &v14;
    v14 = v3;
    [dataCalculator swimDistanceByStrokeStyleForWorkout:workout workoutActivity:workoutActivity completion:v13];
LABEL_5:

    goto LABEL_6;
  }

  if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
  {
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F38D4;
    v11[3] = &unk_10083C028;
    v10 = &v12;
    v12 = v3;
    [dataCalculator openWaterSwimDistanceByStrokeStyleForWorkout:workout workoutActivity:workoutActivity completion:v11];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_createMultiSportSection
{
  if (self->_isTopLevelMultisport)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    workoutActivities = [(HKWorkout *)self->_workout workoutActivities];
    v5 = [workoutActivities countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(workoutActivities);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = objc_alloc_init(_CHWorkoutDetailMultiSportTableItem);
          cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
          -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:5]);

          [(_CHWorkoutDetailMultiSportTableItem *)v10 setWorkoutActivity:v9];
          [v3 addObject:v10];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [workoutActivities countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection setObject:v3 atIndexedSubscript:5];

    [(CHWorkoutDetailDataSource *)self _insertMultiSportSection];
  }
}

- (void)_createValuesSection
{
  _createSubItemsForWorkoutMetrics = [(CHWorkoutDetailDataSource *)self _createSubItemsForWorkoutMetrics];
  v3 = [_createSubItemsForWorkoutMetrics count];
  v4 = ([_createSubItemsForWorkoutMetrics count] & 1) + (v3 >> 1);
  v5 = objc_alloc_init(NSMutableArray);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      if (v4 == 1)
      {
        v7 = ([_createSubItemsForWorkoutMetrics count] & 1) == 0;
        v8 = _createSubItemsForWorkoutMetrics;
        if (v7)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 2;
        v8 = _createSubItemsForWorkoutMetrics;
      }

      v10 = [v8 subarrayWithRange:{v6, v9}];
      v11 = objc_alloc_init(_CHWorkoutDetailTableItem);
      cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
      -[_CHWorkoutDetailTableItem setCellClass:](v11, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:2]);

      v13 = [NSArray arrayWithArray:v10];
      [(_CHWorkoutDetailTableItem *)v11 setSubItems:v13];

      [v5 addObject:v11];
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [tableItemsBySection setObject:v5 atIndexedSubscript:2];
}

- (void)_createWorkoutVoiceTranscriptSection
{
  if (FIShowAudioTranscriptions())
  {
    supplementaryDataSource = self->_supplementaryDataSource;
    if (supplementaryDataSource)
    {
      if ([(CHWorkoutSummaryDataSourceBridge *)supplementaryDataSource workoutVoiceOutroState])
      {
        v4 = objc_alloc_init(_CHWorkoutVoiceOutroItem);
        objc_initWeak(&location, self);
        cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
        -[_CHWorkoutDetailTableItem setCellClass:](v4, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:1]);

        [(_CHWorkoutVoiceOutroItem *)v4 setOutroState:[(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource workoutVoiceOutroState]];
        v11 = v4;
        v6 = [NSArray arrayWithObjects:&v11 count:1];
        v7 = objc_loadWeakRetained(&location);
        tableItemsBySection = [v7 tableItemsBySection];
        [tableItemsBySection setObject:v6 atIndexedSubscript:1];

        v9 = objc_loadWeakRetained(&location);
        [v9 _insertWorkoutVoiceOutroSection];

        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)_createEffortSection
{
  if (!self->_isUnderwaterDive && (FIIsTinkerVegaOrFitnessJunior() & 1) == 0)
  {
    v3 = objc_alloc_init(_CHWorkoutDetailEffortItem);
    cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:3]);

    [(_CHWorkoutDetailEffortItem *)v3 setEffortQuantity:0];
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection setObject:v5 atIndexedSubscript:3];

    [(CHWorkoutDetailDataSource *)self _insertEffortSection];
  }
}

- (void)_createDiveSection
{
  v6 = objc_alloc_init(_CHWorkoutDetailTableItem);
  [(_CHWorkoutDetailTableItem *)v6 setCellClass:objc_opt_class()];
  [(_CHWorkoutDetailTableItem *)v6 setSubItems:&__NSArray0__struct];
  diveDetailViewRowCount = [(CHDivingDataCalculator *)self->_divingDataCalculator diveDetailViewRowCount];
  v4 = [[NSMutableArray alloc] initWithCapacity:diveDetailViewRowCount];
  if (diveDetailViewRowCount >= 1)
  {
    do
    {
      [v4 addObject:v6];
      --diveDetailViewRowCount;
    }

    while (diveDetailViewRowCount);
  }

  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [tableItemsBySection setObject:v4 atIndexedSubscript:2];
}

- (void)_createTrackLapsSection
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  supportsTrackWorkout = [workout supportsTrackWorkout];

  if (supportsTrackWorkout)
  {
    objc_initWeak(&location, self);
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F40EC;
    v7[3] = &unk_10083C078;
    objc_copyWeak(v8, &location);
    v8[1] = 7;
    [dataCalculator trackLapsForWorkout:workout2 completion:v7];

    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_shouldShowSplits
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  wasUserEntered = [workout wasUserEntered];

  if (wasUserEntered)
  {
    return 0;
  }

  formattingManager = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout2 = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v9 = [formattingManager supportsPaceForWorkout:workout2 workoutActivity:workoutActivity];

  return v9;
}

- (void)_createSplitsSection
{
  if ([(CHWorkoutDetailDataSource *)self _shouldShowSplits])
  {
    if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
    {

      [(CHWorkoutDetailDataSource *)self _createSwimSplits];
    }

    else
    {
      workout = [(CHWorkoutDetailDataSource *)self workout];
      fiui_workoutCustomSplits = [workout fiui_workoutCustomSplits];
      v5 = [fiui_workoutCustomSplits count];

      if (v5)
      {

        [(CHWorkoutDetailDataSource *)self _createCustomSplits];
      }

      else
      {

        [(CHWorkoutDetailDataSource *)self _createNormalSplits];
      }
    }
  }
}

- (void)_createNormalSplits
{
  objc_initWeak(&location, self);
  fiui_activityType = [(HKWorkout *)self->_workout fiui_activityType];
  dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4674;
  v8[3] = &unk_10083C0C8;
  objc_copyWeak(v10, &location);
  v7 = fiui_activityType;
  v9 = v7;
  v10[1] = 9;
  [dataCalculator splitsForWorkout:workout workoutActivity:workoutActivity completion:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_createCustomSplits
{
  objc_initWeak(&location, self);
  fiui_activityType = [(HKWorkout *)self->_workout fiui_activityType];
  dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4B5C;
  v8[3] = &unk_10083C0C8;
  objc_copyWeak(v10, &location);
  v7 = fiui_activityType;
  v9 = v7;
  v10[1] = 9;
  [dataCalculator customSplitsForWorkout:workout workoutActivity:workoutActivity completion:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_createSwimSplits
{
  objc_initWeak(&location, self);
  dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5014;
  v6[3] = &unk_10083C118;
  objc_copyWeak(v7, &location);
  v7[1] = 9;
  [dataCalculator swimmingSplitsForWorkout:workout workoutActivity:workoutActivity completion:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_createSegmentsSection
{
  if (![(CHWorkoutDetailDataSource *)self workoutIsPoolSwim])
  {
    if ([(CHWorkoutDetailDataSource *)self workoutIsFirstParty])
    {
      objc_initWeak(&location, self);
      dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
      workout = [(CHWorkoutDetailDataSource *)self workout];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000F55B8;
      v5[3] = &unk_10083C078;
      objc_copyWeak(v6, &location);
      v6[1] = 11;
      [dataCalculator segmentsForWorkout:workout completion:v5];

      objc_destroyWeak(v6);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_createDownhillRunsSection
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  fiui_activityType = [workout fiui_activityType];
  bridge_isDownhillSnowSport = [fiui_activityType bridge_isDownhillSnowSport];

  if (bridge_isDownhillSnowSport)
  {
    objc_initWeak(&location, self);
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F5990;
    v8[3] = &unk_10083C078;
    objc_copyWeak(v9, &location);
    v9[1] = 10;
    [dataCalculator downhillRunsForWorkout:workout2 completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)_createIntervalsSection
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  isIntervalWorkout = [workout isIntervalWorkout];

  if (isIntervalWorkout)
  {
    objc_initWeak(&location, self);
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F5E30;
    v7[3] = &unk_10083C078;
    objc_copyWeak(v8, &location);
    v8[1] = 6;
    [dataCalculator intervalsForWorkout:workout2 completion:v7];

    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

- (void)_createSwimSetsSection
{
  if ([(CHWorkoutDetailDataSource *)self workoutIsPoolSwim]&& [(CHWorkoutDetailDataSource *)self workoutIsFirstParty])
  {
    workout = [(CHWorkoutDetailDataSource *)self workout];
    if ([workout isIntervalWorkout])
    {
      v4 = sub_10013AA98();

      if ((v4 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    objc_initWeak(&location, self);
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F6238;
    v8[3] = &unk_10083C078;
    objc_copyWeak(v9, &location);
    v9[1] = 8;
    [dataCalculator swimmingSetsForWorkout:workout2 workoutActivity:workoutActivity completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)_createBurnBarSection
{
  if ([(CHCatalogItemViewModel *)self->_catalogItemViewModel isSeymourPairedWorkout])
  {
    v3 = objc_alloc_init(_CHWorkoutDetailBurnBarTableItem);
    cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:12]);

    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection setObject:v5 atIndexedSubscript:12];

    [(CHWorkoutDetailDataSource *)self _insertBurnBarSection];
  }
}

- (void)_createHeartRateSectionWithHeartRateReadings:(id)readings averageHeartRate:(id)rate recoveryHeartRateReadings:(id)rateReadings
{
  readingsCopy = readings;
  rateCopy = rate;
  rateReadingsCopy = rateReadings;
  if ([readingsCopy count])
  {
    v11 = objc_alloc_init(_CHWorkoutDetailHeartRateTableItem);
    cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v11, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:13]);

    [(_CHWorkoutDetailHeartRateTableItem *)v11 setHeartRateReadings:readingsCopy];
    [(_CHWorkoutDetailHeartRateTableItem *)v11 setAverageHeartRate:rateCopy];
    [(_CHWorkoutDetailHeartRateTableItem *)v11 setRecoveryHeartRateReadings:rateReadingsCopy];
    v15 = v11;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection setObject:v13 atIndexedSubscript:13];

    [(CHWorkoutDetailDataSource *)self _insertHeartRateSection];
  }
}

- (void)_createRouteAndWeatherSection
{
  [(CHWorkoutDetailDataSource *)self _stopRouteQueryIfNecessary];
  v3 = [HKLocationFetcher alloc];
  model = [(CHWorkoutDetailDataSource *)self model];
  healthStore = [model healthStore];
  v6 = [v3 initWithHealthStore:healthStore];
  [(CHWorkoutDetailDataSource *)self setLocationFetcher:v6];

  objc_initWeak(&location, self);
  _HKInitializeLogging();
  v7 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[routes] Setting up route query", buf, 2u);
  }

  formattingManager = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v11 = [formattingManager locationForWorkout:workout workoutActivity:workoutActivity];

  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[routes] Using location from metadata as route placeholder", buf, 2u);
    }

    locationFetcher = [(CHWorkoutDetailDataSource *)self locationFetcher];
    shifter = [locationFetcher shifter];
    v33 = v11;
    v15 = [NSArray arrayWithObjects:&v33 count:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000F6B30;
    v29[3] = &unk_10083AB78;
    objc_copyWeak(&v30, &location);
    [shifter shiftLocations:v15 withCompletion:v29];

    objc_destroyWeak(&v30);
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[routes] No location found in the metadata, no placeholder to display", buf, 2u);
    }
  }

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000F6CA0;
  v27 = &unk_10083C1E0;
  objc_copyWeak(&v28, &location);
  v17 = objc_retainBlock(&v24);
  v18 = [HKAnchoredObjectQuery alloc];
  v19 = [HKSeriesType workoutRouteType:v24];
  v20 = [HKQuery predicateForObjectsFromWorkout:self->_workout];
  v21 = [v18 initWithType:v19 predicate:v20 anchor:0 limit:0 resultsHandler:v17];
  routeQuery = self->_routeQuery;
  self->_routeQuery = v21;

  [(HKAnchoredObjectQuery *)self->_routeQuery setUpdateHandler:v17];
  _HKInitializeLogging();
  v23 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[routes] Starting anchored route query", buf, 2u);
  }

  [(HKHealthStore *)self->_healthStore executeQuery:self->_routeQuery];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_startObservingWorkouts
{
  objc_initWeak(&location, self);
  v3 = +[HKObjectType workoutType];
  fiui_finalWorkoutUUID = [(HKWorkout *)self->_workout fiui_finalWorkoutUUID];
  v5 = [HKQuery predicateForObjectWithUUID:fiui_finalWorkoutUUID];

  v6 = [HKAnchoredObjectQuery alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F6F94;
  v10[3] = &unk_10083C1E0;
  objc_copyWeak(&v11, &location);
  v7 = [v6 initWithType:v3 predicate:v5 anchor:0 limit:0 resultsHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F7200;
  v8[3] = &unk_10083C1E0;
  objc_copyWeak(&v9, &location);
  [v7 setUpdateHandler:v8];
  [(HKHealthStore *)self->_healthStore executeQuery:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_stopRouteQueryIfNecessary
{
  if (self->_routeQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    routeQuery = self->_routeQuery;
    self->_routeQuery = 0;
  }
}

- (void)fetchLocations
{
  objc_initWeak(&location, self);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000F7678;
  v13 = &unk_10083C230;
  objc_copyWeak(&v14, &location);
  v3 = objc_retainBlock(&v10);
  v4 = [(CHWorkoutDetailDataSource *)self workoutActivity:v10];

  if (v4)
  {
    locationFetcher = [(CHWorkoutDetailDataSource *)self locationFetcher];
    workout = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
    [locationFetcher fetchLocationsFromWorkout:workout workoutActivity:workoutActivity samplesHandler:v3];
  }

  else
  {
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    metadata = [workout2 metadata];
    locationFetcher = [metadata objectForKey:_HKPrivateMetadataKeyWorkoutExtendedMode];

    LODWORD(metadata) = [locationFetcher BOOLValue];
    workout = [(CHWorkoutDetailDataSource *)self locationFetcher];
    workoutActivity = [(CHWorkoutDetailDataSource *)self workout];
    [workout fetchLocationsFromWorkout:workoutActivity applyThreshold:metadata ^ 1 withSamplesHandler:v3];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_createAwardSection
{
  if (AAUIShouldUseNewTrophyCase())
  {
    awardsDataProvider = self->_awardsDataProvider;
    uUID = [(HKWorkout *)self->_workout UUID];
    uUIDString = [uUID UUIDString];
    v6 = [(CHAwardsDataProvider *)awardsDataProvider achievementsForWorkoutIdentifier:uUIDString];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = objc_alloc_init(_CHWorkoutDetailAwardItem);
        [(_CHWorkoutDetailAwardItem *)v14 setAchievement:v13, v17];
        cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
        -[_CHWorkoutDetailTableItem setCellClass:](v14, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:17]);

        [v7 addObject:v14];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [tableItemsBySection setObject:v7 atIndexedSubscript:17];
}

- (void)_createGuidedRunMediaMomentsSection
{
  if ([(CHCatalogItemViewModel *)self->_catalogItemViewModel isSeymourGuidedRunWorkout])
  {
    v3 = objc_alloc_init(_CHWorkoutDetailGuidedRunMediaMomentsTableItem);
    cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:16]);

    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection setObject:v5 atIndexedSubscript:16];

    [(CHWorkoutDetailDataSource *)self _insertGuidedRunMediaMomentsSection];
  }
}

- (BOOL)_createRouteAndWeatherCellIfNeeded
{
  if (self->_isTopLevelMultisport)
  {
    return 0;
  }

  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v5 = [tableItemsBySection objectAtIndexedSubscript:15];
  firstObject = [v5 firstObject];

  v2 = firstObject == 0;
  if (!firstObject)
  {
    firstObject = objc_alloc_init(_CHWorkoutDetailRouteAndWeatherItem);
    cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](firstObject, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:15]);

    v11 = firstObject;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    tableItemsBySection2 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection2 setObject:v8 atIndexedSubscript:15];
  }

  return v2;
}

- (void)_handleLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    if ([locationsCopy count] == 1 && (-[CHWorkoutDetailDataSource locationReadings](self, "locationReadings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 >= 1))
    {
      _HKInitializeLogging();
      v7 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v8 = "[routes] Discarding location updates that would wipe out known good data.";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v29, 2u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v29 = 134217984;
        v30 = [locationsCopy count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[routes] Storing %li locations", &v29, 0xCu);
      }

      [(CHWorkoutDetailDataSource *)self setLocationReadings:locationsCopy];
      delegate = [(CHWorkoutDetailDataSource *)self delegate];
      presentedViewController = [delegate presentedViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        topViewController = [presentedViewController topViewController];
        if ([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL____TtP10FitnessApp40LocationReadingsUpdateableViewController_])
        {
          [topViewController updateLocationReadings:locationsCopy];
        }
      }

      [(CHWorkoutDetailDataSource *)self updateSharingImage];
      firstObject = [locationsCopy firstObject];
      tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v16 = [tableItemsBySection objectAtIndexedSubscript:0];
      firstObject2 = [v16 firstObject];

      [firstObject2 setFirstCoordinate:firstObject];
      firstCoordinateUpdatedBlock = [firstObject2 firstCoordinateUpdatedBlock];

      if (firstCoordinateUpdatedBlock)
      {
        firstCoordinateUpdatedBlock2 = [firstObject2 firstCoordinateUpdatedBlock];
        (firstCoordinateUpdatedBlock2)[2](firstCoordinateUpdatedBlock2, firstObject);
      }

      if ([(CHWorkoutDetailDataSource *)self _createRouteAndWeatherCellIfNeeded])
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      tableItemsBySection2 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v22 = [tableItemsBySection2 objectAtIndexedSubscript:15];
      firstObject3 = [v22 firstObject];

      locationReadings = [(CHWorkoutDetailDataSource *)self locationReadings];
      [firstObject3 setLocationReadings:locationReadings];

      tableView = [(CHWorkoutDetailDataSource *)self tableView];
      [tableView beginUpdates];

      tableView2 = [(CHWorkoutDetailDataSource *)self tableView];
      v27 = [NSIndexSet indexSetWithIndex:15];
      [tableView2 reloadSections:v27 withRowAnimation:v20];

      tableView3 = [(CHWorkoutDetailDataSource *)self tableView];
      [tableView3 endUpdates];
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v8 = "[routes] Discarding empty location update.";
      goto LABEL_20;
    }
  }
}

- (void)updateSharingImage
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  if ([workout workoutActivityType] == 84)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  locationReadings = [(CHWorkoutDetailDataSource *)self locationReadings];
  v6 = [locationReadings count];

  if (v6 >= v4)
  {
    objc_initWeak(&location, self);
    snapshotGenerator = self->_snapshotGenerator;
    locationReadings2 = [(CHWorkoutDetailDataSource *)self locationReadings];
    [(CHWorkoutRouteMapGenerator *)snapshotGenerator setLocationReadings:locationReadings2];

    v9 = [UITraitCollection traitCollectionWithTraits:&stru_10083C270];
    v10 = self->_snapshotGenerator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F81DC;
    v11[3] = &unk_10083C298;
    objc_copyWeak(&v12, &location);
    [(CHWorkoutRouteMapGenerator *)v10 snapshotWithSize:v9 lineWidth:v11 traitCollection:270.0 insets:240.0 completion:3.0, 16.0, 80.0, 125.0, 24.0];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

- (id)_createSubItemsForWorkoutMetrics
{
  v236 = objc_alloc_init(NSMutableArray);
  objc_initWeak(location, self);
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  fiui_activityType = [workoutActivity fiui_activityType];
  v5 = fiui_activityType;
  if (fiui_activityType)
  {
    fiui_activityType2 = fiui_activityType;
  }

  else
  {
    workout = [(CHWorkoutDetailDataSource *)self workout];
    fiui_activityType2 = [workout fiui_activityType];
  }

  formattingManager = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout2 = [(CHWorkoutDetailDataSource *)self workout];
  v9 = [formattingManager workoutHasGoalCompletionEvent:workout2];

  if (v9)
  {
    v10 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"WORKOUT_PACER_RESULT_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v10 setTitleString:v12];

    formattingManager2 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout3 = [(CHWorkoutDetailDataSource *)self workout];
    v15 = [formattingManager2 formattedGoalCompletedDurationForWorkout:workout3 context:@"WorkoutsListDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v10 setValueAttrString:v15];

    [v236 addObject:v10];
    v16 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    [v236 addObject:v16];
  }

  else
  {
    workout4 = [(CHWorkoutDetailDataSource *)self workout];
    shouldShowRaceResults = [workout4 shouldShowRaceResults];

    if (!shouldShowRaceResults)
    {
      goto LABEL_9;
    }

    v10 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"WORKOUT_RACE_TIME" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v10 setTitleString:v20];

    formattingManager3 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout5 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity2 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v24 = [formattingManager3 formattedRaceTimeForWorkout:workout5 workoutActivity:workoutActivity2 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v10 setValueAttrString:v24];

    [v236 addObject:v10];
    v16 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"WORKOUT_RACE_PACE" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v16 setTitleString:v26];

    workout6 = [(CHWorkoutDetailDataSource *)self workout];
    metadata = [workout6 metadata];
    v29 = +[HKWorkout kRaceWorkoutAveragePaceOnRouteMetadataKey];
    v30 = [metadata valueForKey:v29];

    formattingManager4 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout7 = [(CHWorkoutDetailDataSource *)self workout];
    v33 = [formattingManager4 formattedRacePaceOrSpeedForWorkout:workout7 metersPerSecond:v30 context:@"WorkoutsListDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v16 setValueAttrString:v33];

    [v236 addObject:v16];
  }

LABEL_9:
  v235 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
  v34 = +[NSBundle mainBundle];
  v35 = [v34 localizedStringForKey:@"WORKOUT_TIME_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutDetailTableSubItem *)v235 setTitleString:v35];

  formattingManager5 = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout8 = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity3 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v39 = [formattingManager5 formattedDurationForWorkout:workout8 workoutActivity:workoutActivity3 context:@"WorkoutDetailDisplayContext"];
  [(_CHWorkoutDetailTableSubItem *)v235 setValueAttrString:v39];

  [v236 addObject:v235];
  v234 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"WORKOUT_ELAPSED_TIME_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutDetailTableSubItem *)v234 setTitleString:v41];

  formattingManager6 = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout9 = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity4 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v45 = [formattingManager6 formattedElapsedTimeForWorkout:workout9 workoutActivity:workoutActivity4 context:@"WorkoutDetailDisplayContext"];
  [(_CHWorkoutDetailTableSubItem *)v234 setValueAttrString:v45];

  valueAttrString = [(_CHWorkoutDetailTableSubItem *)v235 valueAttrString];
  valueAttrString2 = [(_CHWorkoutDetailTableSubItem *)v234 valueAttrString];
  LOBYTE(workout9) = [valueAttrString isEqualToAttributedString:valueAttrString2];

  if ((workout9 & 1) == 0)
  {
    [v236 addObject:v234];
  }

  v233 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
  formattingManager7 = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout10 = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity5 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v51 = [formattingManager7 shouldShowDistanceForWorkout:workout10 workoutActivity:workoutActivity5];

  if (v51)
  {
    if ([fiui_activityType2 bridge_isDownhillSnowSport])
    {
      v52 = +[NSBundle mainBundle];
      [v52 localizedStringForKey:@"WORKOUT_RUN_DISTANCE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    }

    else
    {
      v52 = +[NSBundle mainBundle];
      [v52 localizedStringForKey:@"WORKOUT_DISTANCE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    }
    v53 = ;
    [(_CHWorkoutDetailTableSubItem *)v233 setTitleString:v53, fiui_activityType2];

    WeakRetained = objc_loadWeakRetained(location);
    formattingManager8 = [WeakRetained formattingManager];
    workout11 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity6 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v58 = [formattingManager8 formattedDistanceForWorkout:workout11 workoutActivity:workoutActivity6 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v233 setValueAttrString:v58];

    if (([fiui_activityType2 bridge_isDownhillSnowSport] & 1) == 0)
    {
      [v236 addObject:v233];
    }
  }

  if ([(HKWorkout *)self->_workout _activityMoveMode]!= 2)
  {
    v59 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v60 = +[NSBundle mainBundle];
    formattingManager9 = [(CHWorkoutDetailDataSource *)self formattingManager];
    fitnessUIFormattingManager = [formattingManager9 fitnessUIFormattingManager];
    v63 = [fitnessUIFormattingManager localizationKeyForEnergyBaseKey:@"WORKOUT_ACTIVE_ENERGY_TITLE"];
    v64 = [v60 localizedStringForKey:v63 value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v59 setTitleString:v64];

    formattingManager10 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout12 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity7 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v68 = [formattingManager10 formattedActiveEnergyForWorkout:workout12 workoutActivity:workoutActivity7 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v59 setValueAttrString:v68];

    [v236 addObject:v59];
    v69 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v70 = +[NSBundle mainBundle];
    formattingManager11 = [(CHWorkoutDetailDataSource *)self formattingManager];
    fitnessUIFormattingManager2 = [formattingManager11 fitnessUIFormattingManager];
    v73 = [fitnessUIFormattingManager2 localizationKeyForEnergyBaseKey:@"WORKOUT_TOTAL_ENERGY_TITLE"];
    v74 = [v70 localizedStringForKey:v73 value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v69 setTitleString:v74];

    formattingManager12 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout13 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity8 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v78 = [formattingManager12 formattedTotalEnergyForWorkout:workout13 workoutActivity:workoutActivity8 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v69 setValueAttrString:v78];

    [v236 addObject:v69];
  }

  if (self->_isTopLevelMultisport)
  {
    v79 = [(CHWorkoutDetailDataSource *)self _normalizeSubItemsArray:v236];
  }

  else
  {
    formattingManager13 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout14 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity9 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v83 = [formattingManager13 supportsElevationAscendedForWorkout:workout14 workoutActivity:workoutActivity9];

    if (v83)
    {
      formattingManager14 = [(CHWorkoutDetailDataSource *)self formattingManager];
      workout15 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity10 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v87 = [formattingManager14 hasElevationAscendedDataForWorkout:workout15 workoutActivity:workoutActivity10];

      if (v87)
      {
        v88 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
        v89 = +[NSBundle mainBundle];
        v90 = [v89 localizedStringForKey:@"WORKOUT_ELEVATION_TITLE" value:&stru_1008680E8 table:@"Localizable"];
        [(_CHWorkoutDetailTableSubItem *)v88 setTitleString:v90];

        formattingManager15 = [(CHWorkoutDetailDataSource *)self formattingManager];
        workout16 = [(CHWorkoutDetailDataSource *)self workout];
        workoutActivity11 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v94 = [formattingManager15 formattedElevationGainForWorkout:workout16 workoutActivity:workoutActivity11 context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v88 setValueAttrString:v94];

        valueAttrString3 = [(_CHWorkoutDetailTableSubItem *)v88 valueAttrString];

        if (valueAttrString3)
        {
          [v236 addObject:v88];
        }
      }
    }

    formattingManager16 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout17 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity12 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v99 = [formattingManager16 hasAveragePowerForWorkout:workout17 workoutActivity:workoutActivity12];

    if (v99)
    {
      v100 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v101 = +[NSBundle mainBundle];
      v102 = [v101 localizedStringForKey:@"WORKOUT_AVERAGE_POWER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v100 setTitleString:v102];

      formattingManager17 = [(CHWorkoutDetailDataSource *)self formattingManager];
      workout18 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity13 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v106 = [formattingManager17 formattedAveragePowerForWorkout:workout18 workoutActivity:workoutActivity13 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v100 setValueAttrString:v106];

      [v236 addObject:v100];
    }

    formattingManager18 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout19 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity14 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v110 = [formattingManager18 hasStepCountForWorkout:workout19 workoutActivity:workoutActivity14];

    if (v110)
    {
      v111 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v112 = +[NSBundle mainBundle];
      v113 = [v112 localizedStringForKey:@"WORKOUT_STEP_COUNT_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v111 setTitleString:v113];

      formattingManager19 = [(CHWorkoutDetailDataSource *)self formattingManager];
      workout20 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity15 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v117 = [formattingManager19 formattedStepCountForWorkout:workout20 workoutActivity:workoutActivity15 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v111 setValueAttrString:v117];

      [v236 addObject:v111];
    }

    formattingManager20 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout21 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity16 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v121 = [formattingManager20 hasFlightsClimbedForWorkout:workout21 workoutActivity:workoutActivity16];

    if (v121)
    {
      v122 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v123 = +[NSBundle mainBundle];
      v124 = [v123 localizedStringForKey:@"WORKOUT_FLIGHTS_CLIMBED_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v122 setTitleString:v124];

      formattingManager21 = [(CHWorkoutDetailDataSource *)self formattingManager];
      workout22 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity17 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v128 = [formattingManager21 formattedFlightsClimbedForWorkout:workout22 workoutActivity:workoutActivity17 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v122 setValueAttrString:v128];

      [v236 addObject:v122];
    }

    formattingManager22 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout23 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity18 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v132 = [formattingManager22 hasAverageCadenceForWorkout:workout23 workoutActivity:workoutActivity18];

    if (v132)
    {
      v133 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      workoutActivity19 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      fiui_activityType3 = [workoutActivity19 fiui_activityType];
      v136 = fiui_activityType3;
      if (fiui_activityType3)
      {
        fiui_activityType4 = fiui_activityType3;
      }

      else
      {
        workout24 = [(CHWorkoutDetailDataSource *)self workout];
        fiui_activityType4 = [workout24 fiui_activityType];
      }

      [fiui_activityType4 effectiveTypeIdentifier];
      if (FIUIIsWorkoutTypePedestrianActivity())
      {
        v139 = +[NSBundle mainBundle];
        [v139 localizedStringForKey:@"WORKOUT_AVERAGE_CADENCE_TITLE_PEDOMETER" value:&stru_1008680E8 table:@"Localizable"];
      }

      else
      {
        v139 = +[NSBundle mainBundle];
        [v139 localizedStringForKey:@"WORKOUT_AVERAGE_CADENCE_TITLE_CYCLING" value:&stru_1008680E8 table:@"Localizable"];
      }
      v140 = ;
      [(_CHWorkoutDetailTableSubItem *)v133 setTitleString:v140];

      formattingManager23 = [(CHWorkoutDetailDataSource *)self formattingManager];
      workout25 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity20 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v144 = [formattingManager23 formattedAverageCadenceForWorkout:workout25 workoutActivity:workoutActivity20 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v133 setValueAttrString:v144];

      [v236 addObject:v133];
    }

    workout26 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity21 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v147 = [(CHWorkoutDetailDataSource *)self _showAveragePaceForWorkout:workout26 workoutActivity:workoutActivity21];

    if (v147)
    {
      v148 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      workoutActivity22 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      if (workoutActivity22)
      {
        [(CHWorkoutDetailDataSource *)self workoutActivity];
      }

      else
      {
        [(CHWorkoutDetailDataSource *)self workout];
      }
      v150 = ;
      fiui_activityType5 = [v150 fiui_activityType];
      FIUIDistanceTypeForActivityType();

      if (FIUIPaceFormatForDistanceType() == 4)
      {
        v152 = +[NSBundle mainBundle];
        [v152 localizedStringForKey:@"WORKOUT_SPEED_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      }

      else
      {
        v152 = +[NSBundle mainBundle];
        [v152 localizedStringForKey:@"WORKOUT_PACE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      }
      v153 = ;
      [(_CHWorkoutDetailTableSubItem *)v148 setTitleString:v153];

      if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
      {
        dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
        workout27 = [(CHWorkoutDetailDataSource *)self workout];
        workoutActivity23 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v240[0] = _NSConcreteStackBlock;
        v240[1] = 3221225472;
        v240[2] = sub_1000F9E50;
        v240[3] = &unk_10083C2C0;
        v241 = v148;
        selfCopy = self;
        [dataCalculator swimmingPacePerHundredForWorkout:workout27 workoutActivity:workoutActivity23 completion:v240];

        formattingManager24 = v241;
      }

      else
      {
        formattingManager24 = [(CHWorkoutDetailDataSource *)self formattingManager];
        workout28 = [(CHWorkoutDetailDataSource *)self workout];
        workoutActivity24 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v160 = [formattingManager24 formattedPaceOrSpeedForWorkout:workout28 workoutActivity:workoutActivity24 context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v148 setValueAttrString:v160];
      }

      [v236 addObject:v148];
    }

    if (!self->_isUnderwaterDive)
    {
      v161 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v162 = +[NSBundle mainBundle];
      v163 = [v162 localizedStringForKey:@"WORKOUT_HEART_RATE_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v161 setTitleString:v163];

      formattingManager25 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v165 = [formattingManager25 formattedHeartRate:0 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v161 setValueAttrString:v165];

      dataCalculator2 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      workout29 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity25 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v169 = [dataCalculator2 averageHeartRateForWorkout:workout29 workoutActivity:workoutActivity25];

      self->_hasAverageHeartRate = v169 != 0;
      v238[0] = _NSConcreteStackBlock;
      v238[1] = 3221225472;
      v238[2] = sub_1000F9F48;
      v238[3] = &unk_10083C2E8;
      v238[4] = self;
      objc_copyWeak(&v239, location);
      v170 = objc_retainBlock(v238);
      dataCalculator3 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      workout30 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity26 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      [dataCalculator3 heartRateDataForWorkout:workout30 workoutActivity:workoutActivity26 completion:v170];

      if (self->_hasAverageHeartRate)
      {
        v174 = objc_loadWeakRetained(location);
        formattingManager26 = [v174 formattingManager];
        v176 = [formattingManager26 formattedHeartRate:v169 context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v161 setValueAttrString:v176];

        [v236 addObject:v161];
      }

      objc_destroyWeak(&v239);
    }

    dataCalculator4 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    workout31 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity27 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v237[0] = _NSConcreteStackBlock;
    v237[1] = 3221225472;
    v237[2] = sub_1000FA030;
    v237[3] = &unk_10083C310;
    v237[4] = self;
    [dataCalculator4 powerSamplesForWorkout:workout31 workoutActivity:workoutActivity27 completion:v237];

    v180 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v181 = +[NSBundle mainBundle];
    v182 = [v181 localizedStringForKey:@"WORKOUT_LAPS_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v180 setTitleString:v182];

    if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
    {
      v183 = FIUIBundle();
      v184 = [v183 localizedStringForKey:@"SUMMARY_NUMBER_OF_LAPS" value:&stru_1008680E8 table:@"Localizable-Ariel"];
      [(_CHWorkoutDetailTableSubItem *)v180 setTitleString:v184];
    }

    formattingManager27 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout32 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity28 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v188 = [formattingManager27 formattedLapCountForWorkout:workout32 workoutActivity:workoutActivity28 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v180 setValueAttrString:v188];

    valueAttrString4 = [(_CHWorkoutDetailTableSubItem *)v180 valueAttrString];

    if (valueAttrString4)
    {
      [v236 addObject:v180];
    }

    v190 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v191 = FIUIBundle();
    v192 = [v191 localizedStringForKey:@"SUMMARY_LAP_LENGTH" value:&stru_1008680E8 table:@"Localizable-Ariel"];
    [(_CHWorkoutDetailTableSubItem *)v190 setTitleString:v192];

    formattingManager28 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout33 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity29 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v196 = [formattingManager28 formattedPoolLengthForWorkout:workout33 workoutActivity:workoutActivity29 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v190 setValueAttrString:v196];

    valueAttrString5 = [(_CHWorkoutDetailTableSubItem *)v190 valueAttrString];

    if (valueAttrString5)
    {
      [v236 addObject:v190];
    }

    formattingManager29 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout34 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity30 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v201 = [formattingManager29 supportsDownhillRunsCountForWorkout:workout34 workoutActivity:workoutActivity30];

    if (v201)
    {
      v202 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v203 = +[NSBundle mainBundle];
      v204 = [v203 localizedStringForKey:@"WORKOUT_DOWNHILL_RUNS_HEADER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v202 setTitleString:v204];

      formattingManager30 = [(CHWorkoutDetailDataSource *)self formattingManager];
      workout35 = [(CHWorkoutDetailDataSource *)self workout];
      downhillRunEventsBridge = [workout35 downhillRunEventsBridge];
      v208 = [formattingManager30 formattedDownhillRunsCount:objc_msgSend(downhillRunEventsBridge context:{"count"), @"WorkoutDetailDisplayContext"}];
      [(_CHWorkoutDetailTableSubItem *)v202 setValueAttrString:v208];

      valueAttrString6 = [(_CHWorkoutDetailTableSubItem *)v202 valueAttrString];

      if (valueAttrString6)
      {
        [v236 addObject:v202];
      }
    }

    formattingManager31 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout36 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity31 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    if ([formattingManager31 shouldShowDistanceForWorkout:workout36 workoutActivity:workoutActivity31])
    {
      bridge_isDownhillSnowSport = [v232 bridge_isDownhillSnowSport];

      if (bridge_isDownhillSnowSport)
      {
        [v236 addObject:v233];
      }
    }

    else
    {
    }

    formattingManager32 = [(CHWorkoutDetailDataSource *)self formattingManager];
    workout37 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity32 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v217 = [formattingManager32 supportsElevationDescendedForWorkout:workout37 workoutActivity:workoutActivity32];

    if (v217)
    {
      dataCalculator5 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      workout38 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity33 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v221 = [dataCalculator5 cachedDownhillRunsForWorkout:workout38 workoutActivity:workoutActivity33];

      if (v221)
      {
        v222 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
        v223 = +[NSBundle mainBundle];
        v224 = [v223 localizedStringForKey:@"WORKOUT_TOTAL_ELEVATION_DESCENDED_TITLE" value:&stru_1008680E8 table:@"Localizable"];
        [(_CHWorkoutDetailTableSubItem *)v222 setTitleString:v224];

        v225 = [[CHWorkoutDownhillRunsStats alloc] initWithDownhillRunBridges:v221];
        elevationDescended = [(CHWorkoutDownhillRunsStats *)v225 elevationDescended];
        formattingManager33 = [(CHWorkoutDetailDataSource *)self formattingManager];
        v228 = [formattingManager33 formattedElevation:elevationDescended context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v222 setValueAttrString:v228];

        valueAttrString7 = [(_CHWorkoutDetailTableSubItem *)v222 valueAttrString];

        if (valueAttrString7)
        {
          [v236 addObject:v222];
        }
      }
    }

    v79 = [(CHWorkoutDetailDataSource *)self _normalizeSubItemsArray:v236];
  }

  objc_destroyWeak(location);

  return v79;
}

- (BOOL)_showAveragePaceForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  formattingManager = [(CHWorkoutDetailDataSource *)self formattingManager];
  v9 = [formattingManager isIndoorCyclingForWorkout:workoutCopy workoutActivity:activityCopy];

  formattingManager2 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v11 = [formattingManager2 hasAverageCyclingSpeedForWorkout:workoutCopy workoutActivity:activityCopy];

  if (!v9 || v11)
  {
    fiui_activityType = [activityCopy fiui_activityType];
    v14 = fiui_activityType;
    if (fiui_activityType)
    {
      fiui_activityType2 = fiui_activityType;
    }

    else
    {
      fiui_activityType2 = [workoutCopy fiui_activityType];
    }

    v16 = fiui_activityType2;

    if ([v16 bridge_isDownhillSnowSport])
    {
      v12 = 0;
    }

    else
    {
      formattingManager3 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v12 = [formattingManager3 supportsPaceForWorkout:workoutCopy workoutActivity:activityCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_createPowerSectionWithPowerSamples:(id)samples
{
  samplesCopy = samples;
  formattingManager = [(CHWorkoutDetailDataSource *)self formattingManager];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  if (![(_CHWorkoutDetailPowerTableItem *)formattingManager hasAverageCyclingPowerForWorkout:workout workoutActivity:workoutActivity])
  {

    goto LABEL_5;
  }

  v8 = [samplesCopy count];

  if (v8)
  {
    formattingManager = objc_alloc_init(_CHWorkoutDetailPowerTableItem);
    cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](formattingManager, "setCellClass:", [cellClassesBySection objectAtIndexedSubscript:14]);

    [(_CHWorkoutDetailPowerTableItem *)formattingManager setPowerSamples:samplesCopy];
    v12 = formattingManager;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [tableItemsBySection setObject:v10 atIndexedSubscript:14];

    [(CHWorkoutDetailDataSource *)self _insertPowerSection];
LABEL_5:
  }
}

- (id)_normalizeSubItemsArray:(id)array
{
  arrayCopy = array;
  v5 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = sub_1000B7BF0();
        if (self->_isTopLevelMultisport || self->_isSwimmingActivity)
        {
          v13 = v13 + sub_1000B7B88();
        }

        if (v9)
        {
          if ([v12 _fitsWidth:{v13, v19}])
          {
            [v5 addObject:v12];
          }

          else
          {
            v15 = +[_CHWorkoutDetailTableSubItem _emptyItem];
            [v5 addObject:v15];

            [v5 addObject:v12];
            v16 = +[_CHWorkoutDetailTableSubItem _emptyItem];
            [v5 addObject:v16];

            v9 += 2;
          }
        }

        else
        {
          [v5 addObject:v12];
          if (([v12 _fitsWidth:v13] & 1) == 0)
          {
            v14 = +[_CHWorkoutDetailTableSubItem _emptyItem];
            [v5 addObject:v14];

            v9 = 1;
          }
        }

        ++v9;
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = [NSArray arrayWithArray:v5];

  return v17;
}

- (id)_makeUltraModeFooterView
{
  v2 = objc_alloc_init(UITableViewHeaderFooterView);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"WORKOUT_DETAIL_ULTRA_MODE_FOOTER_TEXT" value:&stru_1008680E8 table:@"Localizable"];
  textLabel = [v2 textLabel];
  [textLabel setText:v4];

  textLabel2 = [v2 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v2 textLabel];
  [textLabel3 setLineBreakMode:0];

  v8 = [UIFont defaultFontForTextStyle:UIFontTextStyleFootnote];
  textLabel4 = [v2 textLabel];
  [textLabel4 setFont:v8];

  v10 = +[UIColor tertiaryLabelColor];
  textLabel5 = [v2 textLabel];
  [textLabel5 setTextColor:v10];

  return v2;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  isKindOfClass = footerView;
  v8 = isKindOfClass;
  if (section == 2)
  {
    v14 = isKindOfClass;
    isKindOfClass = [(CHWorkoutDetailDataSource *)self _isExtendedMode];
    v8 = v14;
    if (isKindOfClass)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v8 = v14;
      if (isKindOfClass)
      {
        v9 = v14;
        v10 = [UIFont defaultFontForTextStyle:UIFontTextStyleFootnote];
        textLabel = [v9 textLabel];
        [textLabel setFont:v10];

        v12 = +[UIColor tertiaryLabelColor];
        textLabel2 = [v9 textLabel];

        [textLabel2 setTextColor:v12];
        v8 = v14;
      }
    }
  }

  _objc_release_x1(isKindOfClass, v8);
}

- (id)_makeAppleWeatherFooterView
{
  if (self->_isTopLevelMultisport)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(CHWorkoutDetailAppleWeatherFooterView);
  }

  return v3;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v4 = [tableItemsBySection count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v6 = [tableItemsBySection objectAtIndexedSubscript:section];

  v7 = [v6 count];
  return v7;
}

- (id)analyticsHandler
{
  v3 = +[CHWorkoutDetailAnalyticsTracker sharedInstance];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v6 = [v3 workoutAnalyticsHandlerFor:workout workoutActivity:workoutActivity];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v9 = [tableItemsBySection objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  tableItemsBySection2 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v12 = [tableItemsBySection2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v13 = [v12 count];
  v14 = [pathCopy row];

  v15 = NSStringFromClass([v10 cellClass]);
  v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];

  cellClass = [v10 cellClass];
  if (cellClass == objc_opt_class())
  {
    workout19 = v16;
    workout = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
    [workout19 summaryConfigureWithWorkout:workout workoutActivity:workoutActivity fitnessAppContext:self->_fitnessAppContext catalogItemViewModel:self->_catalogItemViewModel formattingManager:self->_formattingManager resizeBlock:0];

    location = [workout19 location];

    if (!location)
    {
      v44 = v10;
      firstCoordinate = [v44 firstCoordinate];
      [workout19 setLocation:firstCoordinate];

      firstCoordinate2 = [v44 firstCoordinate];

      if (!firstCoordinate2)
      {
        v194[0] = _NSConcreteStackBlock;
        v194[1] = 3221225472;
        v194[2] = sub_1000FBC64;
        v194[3] = &unk_10083C338;
        v195 = workout19;
        v196 = viewCopy;
        [v44 setFirstCoordinateUpdatedBlock:v194];
      }
    }

    if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
    {
      v47 = v10;
      swimDistanceByStrokeStyle = [v47 swimDistanceByStrokeStyle];
      [workout19 setSwimDistanceByStrokeStyle:swimDistanceByStrokeStyle];

      v191[0] = _NSConcreteStackBlock;
      v191[1] = 3221225472;
      v191[2] = sub_1000FBD30;
      v191[3] = &unk_10083C360;
      v192 = workout19;
      v193 = viewCopy;
      [v47 setSwimDistanceByStrokeStyleUpdateBlock:v191];
    }

    goto LABEL_38;
  }

  cellClass2 = [v10 cellClass];
  if (cellClass2 == objc_opt_class())
  {
    [v16 configureWithDive:self->_workout row:objc_msgSend(pathCopy dataCalculator:{"row"), self->_divingDataCalculator}];
    goto LABEL_39;
  }

  v19 = v13 - 1;
  cellClass3 = [v10 cellClass];
  if (cellClass3 == objc_opt_class())
  {
    [v16 setHidesSeparator:v19 == v14];
    if (self->_isTopLevelMultisport || self->_isSwimmingActivity)
    {
      [v16 removeLeadingPadding];
    }

    subItems = [v10 subItems];
    v50 = [subItems count];

    if (v50)
    {
      subItems2 = [v10 subItems];
      v52 = [subItems2 objectAtIndexedSubscript:0];

      titleString = [v52 titleString];
      valueAttrString = [v52 valueAttrString];
      [v16 configureWithTitle1:titleString value1:valueAttrString];
      v188[0] = _NSConcreteStackBlock;
      v188[1] = 3221225472;
      v188[2] = sub_1000FBD78;
      v188[3] = &unk_10083C388;
      v189 = v16;
      v190 = titleString;
      v55 = titleString;
      [v52 setUpdateBlock:v188];
    }

    subItems3 = [v10 subItems];
    v57 = [subItems3 count];

    if (v57 >= 2)
    {
      subItems4 = [v10 subItems];
      delegate4 = [subItems4 objectAtIndexedSubscript:1];

      titleString2 = [delegate4 titleString];
      valueAttrString2 = [delegate4 valueAttrString];
      [v16 configureWithTitle2:titleString2 value2:valueAttrString2];
      v185[0] = _NSConcreteStackBlock;
      v185[1] = 3221225472;
      v185[2] = sub_1000FBD88;
      v185[3] = &unk_10083C388;
      v186 = v16;
      v187 = titleString2;
      v60 = titleString2;
      [delegate4 setUpdateBlock:v185];

LABEL_35:
LABEL_36:

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  cellClass4 = [v10 cellClass];
  if (cellClass4 == objc_opt_class())
  {
    workout19 = v16;
    formattingManager = [(CHWorkoutDetailDataSource *)self formattingManager];
    [workout19 setFormattingManager:formattingManager];

    [workout19 setSelectedPaceFormat:-[CHWorkoutDetailDataSource currentlySelectedSwimmingPaceFormat](self, "currentlySelectedSwimmingPaceFormat")];
    workout2 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity2 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
    [workout19 configureWithWorkout:workout2 workoutActivity:workoutActivity2 dataCalculator:dataCalculator];

    [workout19 setPaceSelectionDelegate:self];
    goto LABEL_38;
  }

  cellClass5 = [v10 cellClass];
  if (cellClass5 == objc_opt_class())
  {
    v66 = v16;
    v67 = v10;
    workout3 = [(CHWorkoutDetailDataSource *)self workout];
    workoutActivity3 = [v67 workoutActivity];

    formattingManager2 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [formattingManager2 fitnessUIFormattingManager];
    v173 = v16;
    v72 = v71 = viewCopy;
    dataCalculator2 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    [v66 configureWithWorkout:workout3 workoutActivity:workoutActivity3 formattingManager:v72 dataCalculator:dataCalculator2];

    viewCopy = v71;
    v16 = v173;

    delegate = [(CHWorkoutDetailDataSource *)self delegate];
    [v66 setNavigationDelegate:delegate];

    goto LABEL_39;
  }

  cellClass6 = [v10 cellClass];
  v181 = viewCopy;
  if (cellClass6 == objc_opt_class())
  {
    downhillRun = v10;
    split = [downhillRun split];

    if (split)
    {
      v174 = v19 == v14;
      workout4 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity4 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      unit = [downhillRun unit];
      [downhillRun split];
      v79 = v78 = downhillRun;
      splitIndex = [v78 splitIndex];
      [v78 expectedSplitDistance];
      v81 = v80;
      hasAverageHeartRate = self->_hasAverageHeartRate;
      dataCalculator3 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      formattingManager3 = [(CHWorkoutDetailDataSource *)self formattingManager];
      fitnessUIFormattingManager = [formattingManager3 fitnessUIFormattingManager];
      LOBYTE(v160) = v174;
      [v16 configureWithWorkout:workout4 workoutActivity:workoutActivity4 unit:unit split:v79 splitIndex:splitIndex splitDistance:hasAverageHeartRate includeHeartRate:v81 isLastCell:v160 dataCalculator:dataCalculator3 formattingManager:fitnessUIFormattingManager];

      downhillRun = v78;
    }

    else
    {
      swimmingSplit = [downhillRun swimmingSplit];

      if (swimmingSplit)
      {
        v97 = v19 == v14;
        workout4 = [downhillRun swimmingSplit];
        splitIndex2 = [downhillRun splitIndex];
        formattingManager4 = [(CHWorkoutDetailDataSource *)self formattingManager];
        fitnessUIFormattingManager2 = [formattingManager4 fitnessUIFormattingManager];
        [v16 configureWithSwimmingSplit:workout4 splitIndex:splitIndex2 isLastCell:v97 formattingManager:fitnessUIFormattingManager2];
      }

      else
      {
        workoutActivity5 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        fiui_activityType = [workoutActivity5 fiui_activityType];
        v124 = fiui_activityType;
        if (fiui_activityType)
        {
          fiui_activityType2 = fiui_activityType;
        }

        else
        {
          workout5 = [(CHWorkoutDetailDataSource *)self workout];
          fiui_activityType2 = [workout5 fiui_activityType];
        }

        workout4 = fiui_activityType2;
        [v16 configureHeaderWithActivityType:fiui_activityType2 includeHeartRate:self->_hasAverageHeartRate];
      }
    }

    goto LABEL_52;
  }

  cellClass7 = [v10 cellClass];
  if (cellClass7 == objc_opt_class())
  {
    v175 = v19 == v14;
    v85 = v10;
    segment = [v85 segment];
    segmentIndex = [v85 segmentIndex];

    workout6 = [(CHWorkoutDetailDataSource *)self workout];
    trackDistanceUnit = [(CHWorkoutDetailDataSource *)self trackDistanceUnit];
    workout7 = [(CHWorkoutDetailDataSource *)self workout];
    fiui_activityType3 = [workout7 fiui_activityType];
    workout8 = [(CHWorkoutDetailDataSource *)self workout];
    _activityMoveMode = [workout8 _activityMoveMode];
    formattingManager5 = [(CHWorkoutDetailDataSource *)self formattingManager];
    LOBYTE(v160) = v175;
    downhillRunsStats = segment;
    [v16 configureWithSegment:segment segmentIndex:segmentIndex workout:workout6 trackDistanceUnit:trackDistanceUnit activityType:fiui_activityType3 activityMoveMode:_activityMoveMode isLastCell:v160 formattingManager:formattingManager5];

LABEL_48:
LABEL_59:
    viewCopy = v181;
    goto LABEL_39;
  }

  cellClass8 = [v10 cellClass];
  if (cellClass8 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v109 = v19 == v14;
        v110 = v10;
        downhillRun = [v110 downhillRun];
        downhillRunIndex = [v110 downhillRunIndex];

        workout9 = [(CHWorkoutDetailDataSource *)self workout];
        fiui_activityType4 = [workout9 fiui_activityType];
        formattingManager6 = [(CHWorkoutDetailDataSource *)self formattingManager];
        [v16 configureWithDownhillRun:downhillRun downhillRunIndex:downhillRunIndex activityType:fiui_activityType4 isLastCell:v109 formattingManager:formattingManager6];

LABEL_56:
LABEL_52:

        goto LABEL_39;
      }

      goto LABEL_39;
    }

    downhillRunsStats = [v10 downhillRunsStats];
    workout10 = [(CHWorkoutDetailDataSource *)self workout];
    fiui_activityType5 = [workout10 fiui_activityType];
    formattingManager7 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [v16 configureWithDownhillRunsStats:downhillRunsStats activityType:fiui_activityType5 formattingManager:formattingManager7];

    goto LABEL_48;
  }

  cellClass9 = [v10 cellClass];
  if (cellClass9 == objc_opt_class())
  {
    v176 = v19 == v14;
    v101 = v10;
    interval = [v101 interval];
    intervalIndex = [v101 intervalIndex];

    workout11 = [(CHWorkoutDetailDataSource *)self workout];
    workout12 = [(CHWorkoutDetailDataSource *)self workout];
    fiui_activityType6 = [workout12 fiui_activityType];
    workout13 = [(CHWorkoutDetailDataSource *)self workout];
    _activityMoveMode2 = [workout13 _activityMoveMode];
    formattingManager8 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [v16 configureWithInterval:interval index:intervalIndex workout:workout11 activityType:fiui_activityType6 activityMoveMode:_activityMoveMode2 isLastCell:v176 formattingManager:formattingManager8];

LABEL_58:
    goto LABEL_59;
  }

  cellClass10 = [v10 cellClass];
  if (cellClass10 == objc_opt_class())
  {
    v177 = v19 == v14;
    v115 = v10;
    interval = [v115 trackLap];
    lapIndex = [v115 lapIndex];
    workout14 = [(CHWorkoutDetailDataSource *)self workout];
    distanceUnit = [v115 distanceUnit];

    workout15 = [(CHWorkoutDetailDataSource *)self workout];
    fiui_activityType7 = [workout15 fiui_activityType];
    workout16 = [(CHWorkoutDetailDataSource *)self workout];
    _activityMoveMode3 = [workout16 _activityMoveMode];
    formattingManager9 = [(CHWorkoutDetailDataSource *)self formattingManager];
    LOBYTE(v160) = v177;
    [v16 configureWithTrackLap:interval lapIndex:lapIndex workout:workout14 distanceUnit:distanceUnit activityType:fiui_activityType7 activityMoveMode:_activityMoveMode3 isLastCell:v160 formattingManager:formattingManager9];

    goto LABEL_58;
  }

  cellClass11 = [v10 cellClass];
  if (cellClass11 == objc_opt_class())
  {
    v126 = v19 == v14;
    v127 = [v10 set];
    v128 = [pathCopy row];
    formattingManager10 = [(CHWorkoutDetailDataSource *)self formattingManager];
    fitnessUIFormattingManager3 = [formattingManager10 fitnessUIFormattingManager];
    [v16 configureWithSwimmingSet:v127 index:v128 isLastCell:v126 formattingManager:fitnessUIFormattingManager3];

    goto LABEL_59;
  }

  cellClass12 = [v10 cellClass];
  if (cellClass12 == objc_opt_class())
  {
    [v16 configureWithFitnessAppContext:self->_fitnessAppContext workout:self->_workout scoreSummaryWrapper:self->_scoreSummaryWrapper];
  }

  else
  {
    cellClass13 = [v10 cellClass];
    if (cellClass13 == objc_opt_class())
    {
      v132 = v16;
      v133 = v10;
      workout17 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity6 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      dataCalculator4 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      formattingManager11 = [(CHWorkoutDetailDataSource *)self formattingManager];
      heartRateReadings = [v133 heartRateReadings];
      averageHeartRate = [v133 averageHeartRate];

      delegate2 = [(CHWorkoutDetailDataSource *)self delegate];
      delegate4 = workout17;
      v138 = dataCalculator4;
      [v132 configureWithWorkout:workout17 workoutActivity:workoutActivity6 dataCalculator:dataCalculator4 formattingManager:formattingManager11 heartRateReadings:heartRateReadings averageHeartRate:averageHeartRate parent:delegate2];

      viewCopy = v181;
      goto LABEL_36;
    }

    cellClass14 = [v10 cellClass];
    if (cellClass14 == objc_opt_class())
    {
      v139 = v16;
      v140 = v10;
      workout18 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity7 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      dataCalculator5 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      formattingManager12 = [(CHWorkoutDetailDataSource *)self formattingManager];
      powerSamples = [v140 powerSamples];

      delegate3 = [(CHWorkoutDetailDataSource *)self delegate];
      workout20 = workout18;
      [v139 configureWithWorkout:workout18 workoutActivity:workoutActivity7 dataCalculator:dataCalculator5 formattingManager:formattingManager12 powerSamples:powerSamples parent:delegate3];

      viewCopy = v181;
    }

    else
    {
      cellClass15 = [v10 cellClass];
      if (cellClass15 != objc_opt_class())
      {
        cellClass16 = [v10 cellClass];
        if (cellClass16 != objc_opt_class())
        {
          cellClass17 = [v10 cellClass];
          if (cellClass17 != objc_opt_class())
          {
            cellClass18 = [v10 cellClass];
            if (cellClass18 != objc_opt_class())
            {
              cellClass19 = [v10 cellClass];
              if (cellClass19 != objc_opt_class())
              {
                goto LABEL_39;
              }

              supplementaryDataSource = self->_supplementaryDataSource;
              valueAttrString2 = v16;
              delegate4 = [(CHWorkoutDetailDataSource *)self delegate];
              [valueAttrString2 configureWithSupplementaryDataSource:supplementaryDataSource parent:delegate4];
              goto LABEL_35;
            }

            v156 = v16;
            workout19 = [(CHWorkoutDetailDataSource *)self workout];
            workoutActivity8 = [(CHWorkoutDetailDataSource *)self workoutActivity];
            dataCalculator6 = [(CHWorkoutDetailDataSource *)self dataCalculator];
            delegate5 = [(CHWorkoutDetailDataSource *)self delegate];
            [v156 configureWithWorkout:workout19 workoutActivity:workoutActivity8 dataCalculator:dataCalculator6 parent:delegate5];

            goto LABEL_38;
          }

          v155 = v19 == v14;
          workout9 = v16;
          downhillRun = [v10 achievement];
          [workout9 configureForAchievement:downhillRun badgeImageFactory:self->_badgeImageFactory localizationProvider:self->_achievementLocalizationProvider isLastCell:v155];
          goto LABEL_56;
        }

        workout19 = v16;
        [workout19 configureWithWorkout:self->_workout fitnessAppContext:self->_fitnessAppContext];
        objc_initWeak(&location, self);
        v182[0] = _NSConcreteStackBlock;
        v182[1] = 3221225472;
        v182[2] = sub_1000FBD98;
        v182[3] = &unk_10083C3B0;
        objc_copyWeak(&v183, &location);
        [workout19 setOnDidTapMediaMomentItem:v182];
        objc_destroyWeak(&v183);
        objc_destroyWeak(&location);
LABEL_38:

        goto LABEL_39;
      }

      v147 = v16;
      v148 = v10;
      delegate6 = [(CHWorkoutDetailDataSource *)self delegate];
      [v147 setNavigationDelegate:delegate6];

      analyticsHandler = [(CHWorkoutDetailDataSource *)self analyticsHandler];
      [v147 setAnalyticsHandler:analyticsHandler];

      workout20 = [(CHWorkoutDetailDataSource *)self workout];
      workoutActivity9 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      dataCalculator7 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      formattingManager13 = [(CHWorkoutDetailDataSource *)self formattingManager];
      delegate7 = [(CHWorkoutDetailDataSource *)self delegate];
      locationReadings = [v148 locationReadings];

      workoutActivity7 = workoutActivity9;
      [v147 configureWithWorkout:workout20 workoutActivity:workoutActivity9 dataCalculator:dataCalculator7 formattingManager:formattingManager13 parent:delegate7 locationReadings:locationReadings];

      viewCopy = v181;
    }
  }

LABEL_39:

  return v16;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellClassesBySection = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  v7 = [cellClassesBySection objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (objc_opt_respondsToSelector())
  {
    workout = [(CHWorkoutDetailDataSource *)self workout];
    [v7 preferredHeightForWorkout:workout];
    v10 = v9;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = 44.0;
      goto LABEL_7;
    }

    workout = [(CHWorkoutDetailDataSource *)self workout];
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    v12 = [tableItemsBySection objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    [v7 preferredHeightForWorkout:workout indexPath:pathCopy numberOfRows:{objc_msgSend(v12, "count")}];
    v10 = v13;
  }

LABEL_7:
  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v7 = [tableItemsBySection objectAtIndexedSubscript:section];

  v8 = [v7 count];
  if (section != 3 || (v9 = 10.0, !v8))
  {
    tableSectionHeaders = [(CHWorkoutDetailDataSource *)self tableSectionHeaders];
    v11 = [tableSectionHeaders objectAtIndexedSubscript:section];

    if (section == 2)
    {
      v12 = self->_isTopLevelMultisport || self->_isSwimmingActivity;
    }

    else
    {
      v12 = 0;
    }

    v13 = +[NSNull null];
    if (([v11 isEqual:v13] & 1) != 0 || !objc_msgSend(v7, "count"))
    {

      v9 = 0.0;
    }

    else
    {

      if (v12)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = UITableViewAutomaticDimension;
      }
    }
  }

  return v9;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if (section == 2)
  {
    if ([(CHWorkoutDetailDataSource *)self _isExtendedMode])
    {
LABEL_6:
      v7 = UITableViewAutomaticDimension;
    }
  }

  else if (section == 15)
  {
    metadata = [(HKWorkout *)self->_workout metadata];
    v9 = _HKPrivateMetadataKeyWorkoutWeatherSourceName;
    v10 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherSourceName];
    if ([v10 isEqualToString:kHKAppleWeatherSourceName])
    {
    }

    else
    {
      metadata2 = [(HKWorkout *)self->_workout metadata];
      v13 = [metadata2 objectForKeyedSubscript:v9];
      v14 = [v13 isEqualToString:kHKAppleWeatherLogoSourceName];

      if ((v14 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 17)
  {
    tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    v8 = [tableItemsBySection objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
    delegate = [(CHWorkoutDetailDataSource *)self delegate];
    achievement = [v9 achievement];
    [v10 badgeRect];
    [delegate presentAchievement:achievement badgeRect:v10 cell:?];
  }

  else
  {
    -[CHWorkoutDetailDataSource presentPageForSection:](self, "presentPageForSection:", [pathCopy section]);
  }
}

- (void)presentPageForSection:(int64_t)section
{
  v3 = [(CHWorkoutDetailDataSource *)self navigationActionForHeaderInSection:section];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, 1);
    v3 = v4;
  }
}

- (id)navigationActionForHeaderInSection:(int64_t)section
{
  objc_initWeak(&location, self);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000FCAF8;
  v53[3] = &unk_10083C3D8;
  objc_copyWeak(v54, &location);
  v54[1] = section;
  v5 = objc_retainBlock(v53);
  v6 = 0;
  if (section > 8)
  {
    if (section > 12)
    {
      switch(section)
      {
        case 13:
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000FD610;
          v23[3] = &unk_10083C400;
          v7 = &v25;
          objc_copyWeak(&v25, &location);
          v24 = v5;
          v6 = objc_retainBlock(v23);
          v8 = v24;
          break;
        case 14:
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1000FD70C;
          v20[3] = &unk_10083C400;
          v7 = &v22;
          objc_copyWeak(&v22, &location);
          v21 = v5;
          v6 = objc_retainBlock(v20);
          v8 = v21;
          break;
        case 15:
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000FD82C;
          v17[3] = &unk_10083C400;
          v7 = &v19;
          objc_copyWeak(&v19, &location);
          v18 = v5;
          v6 = objc_retainBlock(v17);
          v8 = v18;
          break;
        default:
          goto LABEL_34;
      }
    }

    else
    {
      switch(section)
      {
        case 9:
          if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
          {
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_1000FCE8C;
            v41[3] = &unk_10083C400;
            v7 = &v43;
            objc_copyWeak(&v43, &location);
            v42 = v5;
            v6 = objc_retainBlock(v41);
            v8 = v42;
          }

          else
          {
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1000FCFBC;
            v38[3] = &unk_10083C400;
            v7 = &v40;
            objc_copyWeak(&v40, &location);
            v39 = v5;
            v6 = objc_retainBlock(v38);
            v8 = v39;
          }

          break;
        case 10:
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1000FD22C;
          v32[3] = &unk_10083C400;
          v7 = &v34;
          objc_copyWeak(&v34, &location);
          v33 = v5;
          v6 = objc_retainBlock(v32);
          v8 = v33;
          break;
        case 11:
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1000FD104;
          v35[3] = &unk_10083C400;
          v7 = &v37;
          objc_copyWeak(&v37, &location);
          v36 = v5;
          v6 = objc_retainBlock(v35);
          v8 = v36;
          break;
        default:
          goto LABEL_34;
      }
    }

    goto LABEL_33;
  }

  if (section > 5)
  {
    if (section == 6)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000FD394;
      v29[3] = &unk_10083C400;
      v7 = &v31;
      objc_copyWeak(&v31, &location);
      v30 = v5;
      v6 = objc_retainBlock(v29);
      v8 = v30;
    }

    else if (section == 7)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000FD4C8;
      v26[3] = &unk_10083C400;
      v7 = &v28;
      objc_copyWeak(&v28, &location);
      v27 = v5;
      v6 = objc_retainBlock(v26);
      v8 = v27;
    }

    else
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000FCD50;
      v44[3] = &unk_10083C428;
      v7 = &v46;
      objc_copyWeak(&v46, &location);
      v44[4] = self;
      v45 = v5;
      v6 = objc_retainBlock(v44);
      v8 = v45;
    }

    goto LABEL_33;
  }

  if (section != 2)
  {
    if (section != 3)
    {
      goto LABEL_34;
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FD9B0;
    v14[3] = &unk_10083C400;
    v7 = &v16;
    objc_copyWeak(&v16, &location);
    v15 = v5;
    v6 = objc_retainBlock(v14);
    v8 = v15;
    goto LABEL_33;
  }

  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  if ([workoutActivity hasChartableMetrics])
  {

    if (!self->_isUnderwaterDive)
    {
      goto LABEL_32;
    }

LABEL_30:
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000FCB58;
    v50[3] = &unk_10083C400;
    v7 = &v52;
    objc_copyWeak(&v52, &location);
    v51 = v5;
    v6 = objc_retainBlock(v50);
    v8 = v51;
LABEL_33:

    objc_destroyWeak(v7);
    goto LABEL_34;
  }

  workout = [(CHWorkoutDetailDataSource *)self workout];
  hasChartableMetrics = [workout hasChartableMetrics];

  if (self->_isUnderwaterDive)
  {
    goto LABEL_30;
  }

  if (hasChartableMetrics)
  {
LABEL_32:
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000FCC1C;
    v47[3] = &unk_10083C400;
    v7 = &v49;
    objc_copyWeak(&v49, &location);
    v48 = v5;
    v6 = objc_retainBlock(v47);
    v8 = v48;
    goto LABEL_33;
  }

  v6 = 0;
LABEL_34:
  v12 = objc_retainBlock(v6);

  objc_destroyWeak(v54);
  objc_destroyWeak(&location);

  return v12;
}

- (void)presentEffortViewController:(BOOL)controller presentationCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  dataCalculator = [(CHWorkoutDetailDataSource *)self dataCalculator];
  workout = [(CHWorkoutDetailDataSource *)self workout];
  workoutActivity = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FDB48;
  v11[3] = &unk_10083C490;
  objc_copyWeak(&v13, &location);
  controllerCopy = controller;
  v10 = completionCopy;
  v12 = v10;
  [dataCalculator effortForWorkout:workout workoutActivity:workoutActivity completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 3)
  {
    v7 = +[(ActivityTileSectionHeader *)_TtC10FitnessApp26WorkoutDetailSectionHeader];
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v7];

    [v8 configureWithTitle:&stru_1008680E8 buttonAction:0];
  }

  else
  {
    tableSectionHeaders = [(CHWorkoutDetailDataSource *)self tableSectionHeaders];
    v10 = [tableSectionHeaders objectAtIndexedSubscript:section];

    if (section == 2)
    {
      v11 = self->_isTopLevelMultisport || self->_isSwimmingActivity;
    }

    else
    {
      v11 = 0;
    }

    v12 = +[NSNull null];
    v13 = [v10 isEqual:v12];

    v8 = 0;
    if ((v13 & 1) == 0 && !v11)
    {
      v14 = [(CHWorkoutDetailDataSource *)self navigationActionForHeaderInSection:section];
      v15 = +[(ActivityTileSectionHeader *)_TtC10FitnessApp26WorkoutDetailSectionHeader];
      v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v15];

      [v8 configureWithTitle:v10 buttonAction:v14];
    }
  }

  return v8;
}

- (BOOL)_isExtendedMode
{
  workout = [(CHWorkoutDetailDataSource *)self workout];
  metadata = [workout metadata];
  v4 = [metadata objectForKey:_HKPrivateMetadataKeyWorkoutExtendedMode];

  LOBYTE(workout) = [v4 BOOLValue];
  return workout;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 15)
  {
    _makeAppleWeatherFooterView = [(CHWorkoutDetailDataSource *)self _makeAppleWeatherFooterView];
  }

  else
  {
    if (section != 2 || ![(CHWorkoutDetailDataSource *)self _isExtendedMode])
    {
      v8 = 0;
      goto LABEL_8;
    }

    _makeAppleWeatherFooterView = [(CHWorkoutDetailDataSource *)self _makeUltraModeFooterView];
  }

  v8 = _makeAppleWeatherFooterView;
LABEL_8:

  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  if (![pathCopy section] || objc_msgSend(pathCopy, "section") == 5 || objc_msgSend(pathCopy, "section") == 17 || objc_msgSend(pathCopy, "section") == 2 && (self->_isTopLevelMultisport || self->_isSwimmingActivity))
  {
    v8 = +[UIColor systemBackgroundColor];
  }

  else
  {
    v8 = sub_100046170();
  }

  v9 = v8;
  [cellCopy setBackgroundColor:v8];

  [cellCopy setSelectionStyle:0];
}

- (void)_section:(int64_t)_section setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if (_section <= 10)
  {
    if (_section != 8)
    {
      if (_section != 9 || [(CHWorkoutDetailDataSource *)self splitsExpanded]== expanded)
      {
        return;
      }

      [(CHWorkoutDetailDataSource *)self setSplitsExpanded:expandedCopy];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (_section == 11)
  {
LABEL_10:
    if ([(CHWorkoutDetailDataSource *)self segmentsExpanded]== expanded)
    {
      return;
    }

    [(CHWorkoutDetailDataSource *)self setSegmentsExpanded:expandedCopy];
    goto LABEL_12;
  }

  if (_section != 12 || [(CHWorkoutDetailDataSource *)self burnBarExpanded]== expanded)
  {
    return;
  }

  [(CHWorkoutDetailDataSource *)self setBurnBarExpanded:expandedCopy];
LABEL_12:
  v17 = objc_alloc_init(NSMutableArray);
  tableItemsBySection = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v8 = [tableItemsBySection objectAtIndexedSubscript:_section];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [NSIndexPath indexPathForRow:v10 inSection:_section];
      [v17 addObject:v11];

      ++v10;
      tableItemsBySection2 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v13 = [tableItemsBySection2 objectAtIndexedSubscript:_section];
      v14 = [v13 count];
    }

    while (v10 < v14);
  }

  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v16 = tableView;
  if (expandedCopy)
  {
    [tableView insertRowsAtIndexPaths:v17 withRowAnimation:3];
  }

  else
  {
    [tableView deleteRowsAtIndexPaths:v17 withRowAnimation:3];
  }
}

- (void)expandingHeaderView:(id)view didChangeExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  section = [view section];

  [(CHWorkoutDetailDataSource *)self _section:section setExpanded:expandedCopy];
}

- (void)_insertMultiSportSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:5];
  [tableView reloadSections:v2 withRowAnimation:3];
}

- (void)_insertSegmentsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:11];
  [tableView reloadSections:v2 withRowAnimation:3];
}

- (void)_insertDownhillRunsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v4 = [NSIndexSet indexSetWithIndex:10];
  [tableView reloadSections:v4 withRowAnimation:3];

  [(CHWorkoutDetailDataSource *)self _createValuesSection];
  tableView2 = [(CHWorkoutDetailDataSource *)self tableView];
  v5 = [NSIndexSet indexSetWithIndex:2];
  [tableView2 reloadSections:v5 withRowAnimation:5];
}

- (void)_insertIntervalsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:6];
  [tableView reloadSections:v2 withRowAnimation:3];
}

- (void)_insertTrackLapsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:7];
  [tableView reloadSections:v2 withRowAnimation:3];
}

- (void)_insertSwimSetsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:8];
  [tableView reloadSections:v2 withRowAnimation:3];
}

- (void)_insertSplitsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:9];
  [tableView reloadSections:v2 withRowAnimation:3];
}

- (void)_insertBurnBarSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:12];
  [tableView reloadSections:v2 withRowAnimation:100];
}

- (void)_createAndInsertValuesSection
{
  [(CHWorkoutDetailDataSource *)self _createValuesSection];
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v3 = [NSIndexSet indexSetWithIndex:2];
  [tableView reloadSections:v3 withRowAnimation:100];
}

- (void)_insertHeartRateSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:13];
  [tableView reloadSections:v2 withRowAnimation:100];
}

- (void)_insertPowerSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:14];
  [tableView reloadSections:v2 withRowAnimation:100];
}

- (void)_insertGuidedRunMediaMomentsSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:16];
  [tableView reloadSections:v2 withRowAnimation:100];
}

- (void)_insertEffortSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:3];
  [tableView reloadSections:v2 withRowAnimation:100];
}

- (void)_insertWorkoutVoiceOutroSection
{
  tableView = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:1];
  [tableView reloadSections:v2 withRowAnimation:100];
}

- (BOOL)weatherOrLocationAvailableForWorkout
{
  v3 = [(CHWorkoutFormattingManager *)self->_formattingManager weatherTemperatureForWorkout:self->_workout workoutActivity:self->_workoutActivity];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CHWorkoutFormattingManager *)self->_formattingManager weatherHumidityForWorkout:self->_workout workoutActivity:self->_workoutActivity];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v4 = [(CHWorkoutFormattingManager *)self->_formattingManager hasWeatherConditionForWorkout:self->_workout workoutActivity:self->_workoutActivity];
    }
  }

  v6 = [(CHWorkoutFormattingManager *)self->_formattingManager locationForWorkout:self->_workout workoutActivity:self->_workoutActivity];

  return v6 || v4;
}

- (void)divingDataDidFinishLoading
{
  [(CHWorkoutDetailDataSource *)self _createDiveSection];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];
}

- (void)dataSourceDidUpdateOutroState:(id)state
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEC34;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (CHWorkoutDetailNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CHWorkoutDetailLocationFetcherObserver)locationFetcherObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_locationFetcherObserver);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end
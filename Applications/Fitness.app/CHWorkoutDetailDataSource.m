@interface CHWorkoutDetailDataSource
- (BOOL)_createRouteAndWeatherCellIfNeeded;
- (BOOL)_isExtendedMode;
- (BOOL)_shouldShowSplits;
- (BOOL)_showAveragePaceForWorkout:(id)a3 workoutActivity:(id)a4;
- (BOOL)weatherOrLocationAvailableForWorkout;
- (CHWorkoutDetailDataSource)initWithTableView:(id)a3 workout:(id)a4 workoutActivity:(id)a5 healthStore:(id)a6 model:(id)a7 fitnessAppContext:(id)a8 formattingManager:(id)a9 badgeImageFactory:(id)a10 achievementLocalizationProvider:(id)a11 awardsDataProvider:(id)a12 fiuiFormattingManager:(id)a13 showCurrentWorkloadButton:(BOOL)a14 isWorkoutSummaryFetchRequired:(BOOL)a15 supplementaryDataSource:(id)a16;
- (CHWorkoutDetailLocationFetcherObserver)locationFetcherObserver;
- (CHWorkoutDetailNavigationDelegate)delegate;
- (UITableView)tableView;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_createSubItemsForWorkoutMetrics;
- (id)_makeAppleWeatherFooterView;
- (id)_makeUltraModeFooterView;
- (id)_normalizeSubItemsArray:(id)a3;
- (id)analyticsHandler;
- (id)navigationActionForHeaderInSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_createAndInsertValuesSection;
- (void)_createAwardSection;
- (void)_createBurnBarSection;
- (void)_createCatalogItemViewModelIfNeeded;
- (void)_createCustomSplits;
- (void)_createDiveSection;
- (void)_createDownhillRunsSection;
- (void)_createEffortSection;
- (void)_createGuidedRunMediaMomentsSection;
- (void)_createHeartRateSectionWithHeartRateReadings:(id)a3 averageHeartRate:(id)a4 recoveryHeartRateReadings:(id)a5;
- (void)_createIntervalsSection;
- (void)_createMultiSportSection;
- (void)_createNormalSplits;
- (void)_createPowerSectionWithPowerSamples:(id)a3;
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
- (void)_handleLocations:(id)a3;
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
- (void)_section:(int64_t)a3 setExpanded:(BOOL)a4;
- (void)_startObservingWorkouts;
- (void)_stopRouteQueryIfNecessary;
- (void)_updatePaceFormatForSets:(int64_t)a3;
- (void)_warmDataCalculatorCache;
- (void)dataSourceDidUpdateOutroState:(id)a3;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)divingDataDidFinishLoading;
- (void)expandingHeaderView:(id)a3 didChangeExpanded:(BOOL)a4;
- (void)fetchLocations;
- (void)presentEffortViewController:(BOOL)a3 presentationCompletion:(id)a4;
- (void)presentPageForSection:(int64_t)a3;
- (void)setCurrentlySelectedSwimmingPaceFormat:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)updateSharingImage;
@end

@implementation CHWorkoutDetailDataSource

- (CHWorkoutDetailDataSource)initWithTableView:(id)a3 workout:(id)a4 workoutActivity:(id)a5 healthStore:(id)a6 model:(id)a7 fitnessAppContext:(id)a8 formattingManager:(id)a9 badgeImageFactory:(id)a10 achievementLocalizationProvider:(id)a11 awardsDataProvider:(id)a12 fiuiFormattingManager:(id)a13 showCurrentWorkloadButton:(BOOL)a14 isWorkoutSummaryFetchRequired:(BOOL)a15 supplementaryDataSource:(id)a16
{
  v21 = a3;
  v58 = a4;
  v22 = a4;
  v59 = a5;
  v23 = a5;
  v24 = a8;
  v71 = v23;
  v67 = a6;
  v66 = a7;
  v65 = a8;
  v70 = a9;
  v64 = a10;
  v63 = a11;
  v62 = a12;
  v61 = a13;
  v60 = a16;
  v72.receiver = self;
  v72.super_class = CHWorkoutDetailDataSource;
  v25 = [(CHWorkoutDetailDataSource *)&v72 init];
  if (!v25)
  {
    goto LABEL_14;
  }

  v69 = v22;
  if ([v22 workoutActivityType] == 46)
  {
    isSwimmingActivity = 1;
    v25->_isSwimmingActivity = 1;
    v27 = v71;
  }

  else
  {
    v27 = v71;
    v28 = [v71 workoutConfiguration];
    v25->_isSwimmingActivity = [v28 activityType] == 46;

    isSwimmingActivity = v25->_isSwimmingActivity;
    if ((isSwimmingActivity & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if ([v69 fi_swimmingLocationType] != 1)
  {
    v29 = [v27 workoutConfiguration];
    v25->_workoutIsPoolSwim = [v29 swimmingLocationType] == 1;

    goto LABEL_8;
  }

LABEL_6:
  v25->_workoutIsPoolSwim = isSwimmingActivity;
LABEL_8:
  v25->_workoutIsFirstParty = [v69 isFirstPartyWorkout];
  v25->_isUnderwaterDive = [v69 workoutActivityType] == 84;
  objc_storeStrong(&v25->_fiuiFormattingManager, a13);
  v25->_currentlySelectedSwimmingPaceFormat = 100;
  v25->_didSetInitialSwimmingPaceFormat = 0;
  v30 = objc_storeWeak(&v25->_tableView, v21);
  [v21 setEstimatedRowHeight:44.0];

  WeakRetained = objc_loadWeakRetained(&v25->_tableView);
  [WeakRetained setRowHeight:UITableViewAutomaticDimension];

  v32 = objc_loadWeakRetained(&v25->_tableView);
  [v32 setSectionHeaderTopPadding:0.0];

  objc_storeStrong(&v25->_healthStore, a6);
  objc_storeStrong(&v25->_formattingManager, a9);
  v33 = [v70 dataCalculator];
  dataCalculator = v25->_dataCalculator;
  v25->_dataCalculator = v33;

  objc_storeStrong(&v25->_model, a7);
  objc_storeStrong(&v25->_fitnessAppContext, v24);
  objc_storeStrong(&v25->_workout, v58);
  objc_storeStrong(&v25->_workoutActivity, v59);
  v35 = [v69 isMultiSportWorkout];
  if (v27)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  v25->_isTopLevelMultisport = v36;
  v25->_hasAverageHeartRate = 0;
  objc_storeStrong(&v25->_badgeImageFactory, a10);
  objc_storeStrong(&v25->_achievementLocalizationProvider, a11);
  objc_storeStrong(&v25->_awardsDataProvider, a12);
  v25->_isWorkoutSummaryFetchRequired = a15;
  v37 = [(HKWorkout *)v25->_workout metadata];
  v38 = [v37 objectForKey:_HKPrivateMetadataKeyWorkoutExtendedMode];

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
  objc_storeStrong(&v25->_supplementaryDataSource, a16);
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

  v25->_showCurrentWorkloadButton = a14;
  [(CHWorkoutDetailDataSource *)v25 _warmDataCalculatorCache];
  v54 = +[NSNotificationCenter defaultCenter];
  [v54 addObserver:v25 selector:"_handleFitnessUnitPreferencesDidChange" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];

  v55 = +[NSNotificationCenter defaultCenter];
  v56 = +[WOEffortBridges didUpdateDemoOverrideEffortValues];
  [v55 addObserver:v25 selector:"_handleDidUpdateDemoOverrideEffortValues" name:v56 object:0];

  v22 = v69;
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
  v3 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  v4 = [v3 isSeymourWorkout:self->_workout];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
    workout = self->_workout;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F1FFC;
    v7[3] = &unk_10083BF50;
    objc_copyWeak(&v8, &location);
    [v5 fetchCatalogItemViewModelForWorkout:workout completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_fetchBurnBarScoreSummary
{
  objc_initWeak(&location, self);
  v3 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
  workout = self->_workout;
  healthStore = self->_healthStore;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F220C;
  v6[3] = &unk_10083BF78;
  objc_copyWeak(&v7, &location);
  [v3 fetchScoreSummaryForWorkout:workout healthStore:healthStore completion:v6];

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

- (void)setCurrentlySelectedSwimmingPaceFormat:(int64_t)a3
{
  if (self->_currentlySelectedSwimmingPaceFormat != a3 || ![(CHWorkoutDetailDataSource *)self didSetInitialSwimmingPaceFormat])
  {
    [(CHWorkoutDetailDataSource *)self setDidSetInitialSwimmingPaceFormat:1];
    v5 = [(CHWorkoutDetailDataSource *)self swimmingSplitItems];
    v6 = dword_1008F99F8;

    if (v5 || v6 > 9)
    {
      dword_1008F99F8 = 0;
      self->_currentlySelectedSwimmingPaceFormat = a3;
      if ([(CHWorkoutDetailDataSource *)self segmentsExpanded])
      {
        [(CHWorkoutDetailDataSource *)self _updatePaceFormatForSets:a3];
      }

      v8 = [(CHWorkoutDetailDataSource *)self swimmingSplitItems];
      v9 = [NSNumber numberWithInteger:self->_currentlySelectedSwimmingPaceFormat];
      v24 = [v8 objectForKeyedSubscript:v9];

      LOBYTE(v8) = [(CHWorkoutDetailDataSource *)self splitsExpanded];
      v10 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v11 = v10;
      if ((v8 & 1) != 0 || !v24)
      {
        v12 = [v10 objectAtIndexedSubscript:9];

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

        v19 = [(CHWorkoutDetailDataSource *)self tableView];
        [v19 beginUpdates];

        v20 = [(CHWorkoutDetailDataSource *)self tableView];
        [v20 deleteRowsAtIndexPaths:v13 withRowAnimation:3];

        if ([v24 count])
        {
          v21 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
          [v21 setObject:v24 atIndexedSubscript:9];
        }

        v22 = [(CHWorkoutDetailDataSource *)self tableView];
        [v22 insertRowsAtIndexPaths:v14 withRowAnimation:3];

        v23 = [(CHWorkoutDetailDataSource *)self tableView];
        [v23 endUpdates];
      }

      else
      {
        [v10 setObject:v24 atIndexedSubscript:9];
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
      block[5] = a3;
      dispatch_after(v7, &_dispatch_main_q, block);
    }
  }
}

- (void)_updatePaceFormatForSets:(int64_t)a3
{
  v4 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v5 = [v4 objectAtIndexedSubscript:8];

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
        v12 = [v11 paceFormatUpdatedBlock];

        if (v12)
        {
          v13 = [v11 paceFormatUpdatedBlock];
          v13[2](v13, a3);
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

  v6 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  if ([v6 count] != 18)
  {
    sub_10069C36C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [(CHWorkoutDetailDataSource *)self tableView];
        v14 = NSStringFromClass(v12);
        [v13 registerClass:v12 forCellReuseIdentifier:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = objc_opt_class();
  v16 = +[(ActivityTileSectionHeader *)_TtC10FitnessApp26WorkoutDetailSectionHeader];
  v17 = [(CHWorkoutDetailDataSource *)self tableView];
  [v17 registerClass:v15 forHeaderFooterViewReuseIdentifier:v16];
}

- (void)_warmDataCalculatorCache
{
  v3 = [(CHWorkoutDetailDataSource *)self workout];
  if ([v3 workoutActivityType] == 37)
  {
  }

  else
  {
    v4 = [(CHWorkoutDetailDataSource *)self workout];
    v5 = [v4 workoutActivityType];

    if (v5 != 13)
    {
      return;
    }
  }

  v6 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  v7 = [(CHWorkoutDetailDataSource *)self workout];
  [v6 cadenceSamplesForWorkout:v7 workoutActivity:0 completion:&stru_10083BFE0];

  v9 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  v8 = [(CHWorkoutDetailDataSource *)self workout];
  [v9 powerSamplesForWorkout:v8 workoutActivity:0 completion:&stru_10083C000];
}

- (void)_handleFitnessUnitPreferencesDidChange
{
  [(CHWorkoutDetailDataSource *)self _createValuesSection];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];
}

- (void)_handleDidUpdateDemoOverrideEffortValues
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:3];
  [v3 reloadSections:v2 withRowAnimation:5];
}

- (void)didUpdateKeyValueDomain:(id)a3
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

  v4 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      [v7 addObject:&__NSArray0__struct];

      ++v6;
      v8 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
      v9 = [v8 count];
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

  v21 = [(CHWorkoutDetailDataSource *)self tableSectionHeaders];
  if ([v21 count] != 18)
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
  v4 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [v4 objectAtIndexedSubscript:0]);

  v15 = v3;
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v6 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [v6 setObject:v5 atIndexedSubscript:0];

  if ([(CHWorkoutDetailDataSource *)self workoutIsPoolSwim])
  {
    v7 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v8 = [(CHWorkoutDetailDataSource *)self workout];
    v9 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F3828;
    v13[3] = &unk_10083C028;
    v10 = &v14;
    v14 = v3;
    [v7 swimDistanceByStrokeStyleForWorkout:v8 workoutActivity:v9 completion:v13];
LABEL_5:

    goto LABEL_6;
  }

  if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
  {
    v7 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v8 = [(CHWorkoutDetailDataSource *)self workout];
    v9 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F38D4;
    v11[3] = &unk_10083C028;
    v10 = &v12;
    v12 = v3;
    [v7 openWaterSwimDistanceByStrokeStyleForWorkout:v8 workoutActivity:v9 completion:v11];
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
    v4 = [(HKWorkout *)self->_workout workoutActivities];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = objc_alloc_init(_CHWorkoutDetailMultiSportTableItem);
          v11 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
          -[_CHWorkoutDetailTableItem setCellClass:](v10, "setCellClass:", [v11 objectAtIndexedSubscript:5]);

          [(_CHWorkoutDetailMultiSportTableItem *)v10 setWorkoutActivity:v9];
          [v3 addObject:v10];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v12 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v12 setObject:v3 atIndexedSubscript:5];

    [(CHWorkoutDetailDataSource *)self _insertMultiSportSection];
  }
}

- (void)_createValuesSection
{
  v15 = [(CHWorkoutDetailDataSource *)self _createSubItemsForWorkoutMetrics];
  v3 = [v15 count];
  v4 = ([v15 count] & 1) + (v3 >> 1);
  v5 = objc_alloc_init(NSMutableArray);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      if (v4 == 1)
      {
        v7 = ([v15 count] & 1) == 0;
        v8 = v15;
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
        v8 = v15;
      }

      v10 = [v8 subarrayWithRange:{v6, v9}];
      v11 = objc_alloc_init(_CHWorkoutDetailTableItem);
      v12 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
      -[_CHWorkoutDetailTableItem setCellClass:](v11, "setCellClass:", [v12 objectAtIndexedSubscript:2]);

      v13 = [NSArray arrayWithArray:v10];
      [(_CHWorkoutDetailTableItem *)v11 setSubItems:v13];

      [v5 addObject:v11];
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  v14 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [v14 setObject:v5 atIndexedSubscript:2];
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
        v5 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
        -[_CHWorkoutDetailTableItem setCellClass:](v4, "setCellClass:", [v5 objectAtIndexedSubscript:1]);

        [(_CHWorkoutVoiceOutroItem *)v4 setOutroState:[(CHWorkoutSummaryDataSourceBridge *)self->_supplementaryDataSource workoutVoiceOutroState]];
        v11 = v4;
        v6 = [NSArray arrayWithObjects:&v11 count:1];
        v7 = objc_loadWeakRetained(&location);
        v8 = [v7 tableItemsBySection];
        [v8 setObject:v6 atIndexedSubscript:1];

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
    v4 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [v4 objectAtIndexedSubscript:3]);

    [(_CHWorkoutDetailEffortItem *)v3 setEffortQuantity:0];
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v6 setObject:v5 atIndexedSubscript:3];

    [(CHWorkoutDetailDataSource *)self _insertEffortSection];
  }
}

- (void)_createDiveSection
{
  v6 = objc_alloc_init(_CHWorkoutDetailTableItem);
  [(_CHWorkoutDetailTableItem *)v6 setCellClass:objc_opt_class()];
  [(_CHWorkoutDetailTableItem *)v6 setSubItems:&__NSArray0__struct];
  v3 = [(CHDivingDataCalculator *)self->_divingDataCalculator diveDetailViewRowCount];
  v4 = [[NSMutableArray alloc] initWithCapacity:v3];
  if (v3 >= 1)
  {
    do
    {
      [v4 addObject:v6];
      --v3;
    }

    while (v3);
  }

  v5 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [v5 setObject:v4 atIndexedSubscript:2];
}

- (void)_createTrackLapsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self workout];
  v4 = [v3 supportsTrackWorkout];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v6 = [(CHWorkoutDetailDataSource *)self workout];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F40EC;
    v7[3] = &unk_10083C078;
    objc_copyWeak(v8, &location);
    v8[1] = 7;
    [v5 trackLapsForWorkout:v6 completion:v7];

    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_shouldShowSplits
{
  v3 = [(CHWorkoutDetailDataSource *)self workout];
  v4 = [v3 wasUserEntered];

  if (v4)
  {
    return 0;
  }

  v6 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v7 = [(CHWorkoutDetailDataSource *)self workout];
  v8 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v9 = [v6 supportsPaceForWorkout:v7 workoutActivity:v8];

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
      v3 = [(CHWorkoutDetailDataSource *)self workout];
      v4 = [v3 fiui_workoutCustomSplits];
      v5 = [v4 count];

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
  v3 = [(HKWorkout *)self->_workout fiui_activityType];
  v4 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  v5 = [(CHWorkoutDetailDataSource *)self workout];
  v6 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4674;
  v8[3] = &unk_10083C0C8;
  objc_copyWeak(v10, &location);
  v7 = v3;
  v9 = v7;
  v10[1] = 9;
  [v4 splitsForWorkout:v5 workoutActivity:v6 completion:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_createCustomSplits
{
  objc_initWeak(&location, self);
  v3 = [(HKWorkout *)self->_workout fiui_activityType];
  v4 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  v5 = [(CHWorkoutDetailDataSource *)self workout];
  v6 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4B5C;
  v8[3] = &unk_10083C0C8;
  objc_copyWeak(v10, &location);
  v7 = v3;
  v9 = v7;
  v10[1] = 9;
  [v4 customSplitsForWorkout:v5 workoutActivity:v6 completion:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)_createSwimSplits
{
  objc_initWeak(&location, self);
  v3 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  v4 = [(CHWorkoutDetailDataSource *)self workout];
  v5 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5014;
  v6[3] = &unk_10083C118;
  objc_copyWeak(v7, &location);
  v7[1] = 9;
  [v3 swimmingSplitsForWorkout:v4 workoutActivity:v5 completion:v6];

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
      v3 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v4 = [(CHWorkoutDetailDataSource *)self workout];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000F55B8;
      v5[3] = &unk_10083C078;
      objc_copyWeak(v6, &location);
      v6[1] = 11;
      [v3 segmentsForWorkout:v4 completion:v5];

      objc_destroyWeak(v6);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_createDownhillRunsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self workout];
  v4 = [v3 fiui_activityType];
  v5 = [v4 bridge_isDownhillSnowSport];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v7 = [(CHWorkoutDetailDataSource *)self workout];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F5990;
    v8[3] = &unk_10083C078;
    objc_copyWeak(v9, &location);
    v9[1] = 10;
    [v6 downhillRunsForWorkout:v7 completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)_createIntervalsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self workout];
  v4 = [v3 isIntervalWorkout];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v6 = [(CHWorkoutDetailDataSource *)self workout];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F5E30;
    v7[3] = &unk_10083C078;
    objc_copyWeak(v8, &location);
    v8[1] = 6;
    [v5 intervalsForWorkout:v6 completion:v7];

    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

- (void)_createSwimSetsSection
{
  if ([(CHWorkoutDetailDataSource *)self workoutIsPoolSwim]&& [(CHWorkoutDetailDataSource *)self workoutIsFirstParty])
  {
    v3 = [(CHWorkoutDetailDataSource *)self workout];
    if ([v3 isIntervalWorkout])
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
    v5 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v6 = [(CHWorkoutDetailDataSource *)self workout];
    v7 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F6238;
    v8[3] = &unk_10083C078;
    objc_copyWeak(v9, &location);
    v9[1] = 8;
    [v5 swimmingSetsForWorkout:v6 workoutActivity:v7 completion:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

- (void)_createBurnBarSection
{
  if ([(CHCatalogItemViewModel *)self->_catalogItemViewModel isSeymourPairedWorkout])
  {
    v3 = objc_alloc_init(_CHWorkoutDetailBurnBarTableItem);
    v4 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [v4 objectAtIndexedSubscript:12]);

    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v6 setObject:v5 atIndexedSubscript:12];

    [(CHWorkoutDetailDataSource *)self _insertBurnBarSection];
  }
}

- (void)_createHeartRateSectionWithHeartRateReadings:(id)a3 averageHeartRate:(id)a4 recoveryHeartRateReadings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = objc_alloc_init(_CHWorkoutDetailHeartRateTableItem);
    v12 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v11, "setCellClass:", [v12 objectAtIndexedSubscript:13]);

    [(_CHWorkoutDetailHeartRateTableItem *)v11 setHeartRateReadings:v8];
    [(_CHWorkoutDetailHeartRateTableItem *)v11 setAverageHeartRate:v9];
    [(_CHWorkoutDetailHeartRateTableItem *)v11 setRecoveryHeartRateReadings:v10];
    v15 = v11;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    v14 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v14 setObject:v13 atIndexedSubscript:13];

    [(CHWorkoutDetailDataSource *)self _insertHeartRateSection];
  }
}

- (void)_createRouteAndWeatherSection
{
  [(CHWorkoutDetailDataSource *)self _stopRouteQueryIfNecessary];
  v3 = [HKLocationFetcher alloc];
  v4 = [(CHWorkoutDetailDataSource *)self model];
  v5 = [v4 healthStore];
  v6 = [v3 initWithHealthStore:v5];
  [(CHWorkoutDetailDataSource *)self setLocationFetcher:v6];

  objc_initWeak(&location, self);
  _HKInitializeLogging();
  v7 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[routes] Setting up route query", buf, 2u);
  }

  v8 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v9 = [(CHWorkoutDetailDataSource *)self workout];
  v10 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v11 = [v8 locationForWorkout:v9 workoutActivity:v10];

  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[routes] Using location from metadata as route placeholder", buf, 2u);
    }

    v13 = [(CHWorkoutDetailDataSource *)self locationFetcher];
    v14 = [v13 shifter];
    v33 = v11;
    v15 = [NSArray arrayWithObjects:&v33 count:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000F6B30;
    v29[3] = &unk_10083AB78;
    objc_copyWeak(&v30, &location);
    [v14 shiftLocations:v15 withCompletion:v29];

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
  v4 = [(HKWorkout *)self->_workout fiui_finalWorkoutUUID];
  v5 = [HKQuery predicateForObjectWithUUID:v4];

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
    v5 = [(CHWorkoutDetailDataSource *)self locationFetcher];
    v6 = [(CHWorkoutDetailDataSource *)self workout];
    v7 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    [v5 fetchLocationsFromWorkout:v6 workoutActivity:v7 samplesHandler:v3];
  }

  else
  {
    v8 = [(CHWorkoutDetailDataSource *)self workout];
    v9 = [v8 metadata];
    v5 = [v9 objectForKey:_HKPrivateMetadataKeyWorkoutExtendedMode];

    LODWORD(v9) = [v5 BOOLValue];
    v6 = [(CHWorkoutDetailDataSource *)self locationFetcher];
    v7 = [(CHWorkoutDetailDataSource *)self workout];
    [v6 fetchLocationsFromWorkout:v7 applyThreshold:v9 ^ 1 withSamplesHandler:v3];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_createAwardSection
{
  if (AAUIShouldUseNewTrophyCase())
  {
    awardsDataProvider = self->_awardsDataProvider;
    v4 = [(HKWorkout *)self->_workout UUID];
    v5 = [v4 UUIDString];
    v6 = [(CHAwardsDataProvider *)awardsDataProvider achievementsForWorkoutIdentifier:v5];
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
        v15 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
        -[_CHWorkoutDetailTableItem setCellClass:](v14, "setCellClass:", [v15 objectAtIndexedSubscript:17]);

        [v7 addObject:v14];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  [v16 setObject:v7 atIndexedSubscript:17];
}

- (void)_createGuidedRunMediaMomentsSection
{
  if ([(CHCatalogItemViewModel *)self->_catalogItemViewModel isSeymourGuidedRunWorkout])
  {
    v3 = objc_alloc_init(_CHWorkoutDetailGuidedRunMediaMomentsTableItem);
    v4 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v3, "setCellClass:", [v4 objectAtIndexedSubscript:16]);

    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v6 setObject:v5 atIndexedSubscript:16];

    [(CHWorkoutDetailDataSource *)self _insertGuidedRunMediaMomentsSection];
  }
}

- (BOOL)_createRouteAndWeatherCellIfNeeded
{
  if (self->_isTopLevelMultisport)
  {
    return 0;
  }

  v4 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v5 = [v4 objectAtIndexedSubscript:15];
  v6 = [v5 firstObject];

  v2 = v6 == 0;
  if (!v6)
  {
    v6 = objc_alloc_init(_CHWorkoutDetailRouteAndWeatherItem);
    v7 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v6, "setCellClass:", [v7 objectAtIndexedSubscript:15]);

    v11 = v6;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v9 setObject:v8 atIndexedSubscript:15];
  }

  return v2;
}

- (void)_handleLocations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1 && (-[CHWorkoutDetailDataSource locationReadings](self, "locationReadings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 >= 1))
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
        v30 = [v4 count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[routes] Storing %li locations", &v29, 0xCu);
      }

      [(CHWorkoutDetailDataSource *)self setLocationReadings:v4];
      v11 = [(CHWorkoutDetailDataSource *)self delegate];
      v12 = [v11 presentedViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 topViewController];
        if ([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL____TtP10FitnessApp40LocationReadingsUpdateableViewController_])
        {
          [v13 updateLocationReadings:v4];
        }
      }

      [(CHWorkoutDetailDataSource *)self updateSharingImage];
      v14 = [v4 firstObject];
      v15 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v16 firstObject];

      [v17 setFirstCoordinate:v14];
      v18 = [v17 firstCoordinateUpdatedBlock];

      if (v18)
      {
        v19 = [v17 firstCoordinateUpdatedBlock];
        (v19)[2](v19, v14);
      }

      if ([(CHWorkoutDetailDataSource *)self _createRouteAndWeatherCellIfNeeded])
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      v21 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v22 = [v21 objectAtIndexedSubscript:15];
      v23 = [v22 firstObject];

      v24 = [(CHWorkoutDetailDataSource *)self locationReadings];
      [v23 setLocationReadings:v24];

      v25 = [(CHWorkoutDetailDataSource *)self tableView];
      [v25 beginUpdates];

      v26 = [(CHWorkoutDetailDataSource *)self tableView];
      v27 = [NSIndexSet indexSetWithIndex:15];
      [v26 reloadSections:v27 withRowAnimation:v20];

      v28 = [(CHWorkoutDetailDataSource *)self tableView];
      [v28 endUpdates];
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
  v3 = [(CHWorkoutDetailDataSource *)self workout];
  if ([v3 workoutActivityType] == 84)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(CHWorkoutDetailDataSource *)self locationReadings];
  v6 = [v5 count];

  if (v6 >= v4)
  {
    objc_initWeak(&location, self);
    snapshotGenerator = self->_snapshotGenerator;
    v8 = [(CHWorkoutDetailDataSource *)self locationReadings];
    [(CHWorkoutRouteMapGenerator *)snapshotGenerator setLocationReadings:v8];

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
  v3 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v4 = [v3 fiui_activityType];
  v5 = v4;
  if (v4)
  {
    v231 = v4;
  }

  else
  {
    v6 = [(CHWorkoutDetailDataSource *)self workout];
    v231 = [v6 fiui_activityType];
  }

  v7 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v8 = [(CHWorkoutDetailDataSource *)self workout];
  v9 = [v7 workoutHasGoalCompletionEvent:v8];

  if (v9)
  {
    v10 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"WORKOUT_PACER_RESULT_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v10 setTitleString:v12];

    v13 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v14 = [(CHWorkoutDetailDataSource *)self workout];
    v15 = [v13 formattedGoalCompletedDurationForWorkout:v14 context:@"WorkoutsListDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v10 setValueAttrString:v15];

    [v236 addObject:v10];
    v16 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    [v236 addObject:v16];
  }

  else
  {
    v17 = [(CHWorkoutDetailDataSource *)self workout];
    v18 = [v17 shouldShowRaceResults];

    if (!v18)
    {
      goto LABEL_9;
    }

    v10 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"WORKOUT_RACE_TIME" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v10 setTitleString:v20];

    v21 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v22 = [(CHWorkoutDetailDataSource *)self workout];
    v23 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v24 = [v21 formattedRaceTimeForWorkout:v22 workoutActivity:v23 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v10 setValueAttrString:v24];

    [v236 addObject:v10];
    v16 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"WORKOUT_RACE_PACE" value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v16 setTitleString:v26];

    v27 = [(CHWorkoutDetailDataSource *)self workout];
    v28 = [v27 metadata];
    v29 = +[HKWorkout kRaceWorkoutAveragePaceOnRouteMetadataKey];
    v30 = [v28 valueForKey:v29];

    v31 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v32 = [(CHWorkoutDetailDataSource *)self workout];
    v33 = [v31 formattedRacePaceOrSpeedForWorkout:v32 metersPerSecond:v30 context:@"WorkoutsListDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v16 setValueAttrString:v33];

    [v236 addObject:v16];
  }

LABEL_9:
  v235 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
  v34 = +[NSBundle mainBundle];
  v35 = [v34 localizedStringForKey:@"WORKOUT_TIME_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutDetailTableSubItem *)v235 setTitleString:v35];

  v36 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v37 = [(CHWorkoutDetailDataSource *)self workout];
  v38 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v39 = [v36 formattedDurationForWorkout:v37 workoutActivity:v38 context:@"WorkoutDetailDisplayContext"];
  [(_CHWorkoutDetailTableSubItem *)v235 setValueAttrString:v39];

  [v236 addObject:v235];
  v234 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"WORKOUT_ELAPSED_TIME_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(_CHWorkoutDetailTableSubItem *)v234 setTitleString:v41];

  v42 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v43 = [(CHWorkoutDetailDataSource *)self workout];
  v44 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v45 = [v42 formattedElapsedTimeForWorkout:v43 workoutActivity:v44 context:@"WorkoutDetailDisplayContext"];
  [(_CHWorkoutDetailTableSubItem *)v234 setValueAttrString:v45];

  v46 = [(_CHWorkoutDetailTableSubItem *)v235 valueAttrString];
  v47 = [(_CHWorkoutDetailTableSubItem *)v234 valueAttrString];
  LOBYTE(v43) = [v46 isEqualToAttributedString:v47];

  if ((v43 & 1) == 0)
  {
    [v236 addObject:v234];
  }

  v233 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
  v48 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v49 = [(CHWorkoutDetailDataSource *)self workout];
  v50 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v51 = [v48 shouldShowDistanceForWorkout:v49 workoutActivity:v50];

  if (v51)
  {
    if ([v231 bridge_isDownhillSnowSport])
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
    [(_CHWorkoutDetailTableSubItem *)v233 setTitleString:v53, v231];

    WeakRetained = objc_loadWeakRetained(location);
    v55 = [WeakRetained formattingManager];
    v56 = [(CHWorkoutDetailDataSource *)self workout];
    v57 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v58 = [v55 formattedDistanceForWorkout:v56 workoutActivity:v57 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v233 setValueAttrString:v58];

    if (([v231 bridge_isDownhillSnowSport] & 1) == 0)
    {
      [v236 addObject:v233];
    }
  }

  if ([(HKWorkout *)self->_workout _activityMoveMode]!= 2)
  {
    v59 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v60 = +[NSBundle mainBundle];
    v61 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v62 = [v61 fitnessUIFormattingManager];
    v63 = [v62 localizationKeyForEnergyBaseKey:@"WORKOUT_ACTIVE_ENERGY_TITLE"];
    v64 = [v60 localizedStringForKey:v63 value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v59 setTitleString:v64];

    v65 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v66 = [(CHWorkoutDetailDataSource *)self workout];
    v67 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v68 = [v65 formattedActiveEnergyForWorkout:v66 workoutActivity:v67 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v59 setValueAttrString:v68];

    [v236 addObject:v59];
    v69 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v70 = +[NSBundle mainBundle];
    v71 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v72 = [v71 fitnessUIFormattingManager];
    v73 = [v72 localizationKeyForEnergyBaseKey:@"WORKOUT_TOTAL_ENERGY_TITLE"];
    v74 = [v70 localizedStringForKey:v73 value:&stru_1008680E8 table:@"Localizable"];
    [(_CHWorkoutDetailTableSubItem *)v69 setTitleString:v74];

    v75 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v76 = [(CHWorkoutDetailDataSource *)self workout];
    v77 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v78 = [v75 formattedTotalEnergyForWorkout:v76 workoutActivity:v77 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v69 setValueAttrString:v78];

    [v236 addObject:v69];
  }

  if (self->_isTopLevelMultisport)
  {
    v79 = [(CHWorkoutDetailDataSource *)self _normalizeSubItemsArray:v236];
  }

  else
  {
    v80 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v81 = [(CHWorkoutDetailDataSource *)self workout];
    v82 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v83 = [v80 supportsElevationAscendedForWorkout:v81 workoutActivity:v82];

    if (v83)
    {
      v84 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v85 = [(CHWorkoutDetailDataSource *)self workout];
      v86 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v87 = [v84 hasElevationAscendedDataForWorkout:v85 workoutActivity:v86];

      if (v87)
      {
        v88 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
        v89 = +[NSBundle mainBundle];
        v90 = [v89 localizedStringForKey:@"WORKOUT_ELEVATION_TITLE" value:&stru_1008680E8 table:@"Localizable"];
        [(_CHWorkoutDetailTableSubItem *)v88 setTitleString:v90];

        v91 = [(CHWorkoutDetailDataSource *)self formattingManager];
        v92 = [(CHWorkoutDetailDataSource *)self workout];
        v93 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v94 = [v91 formattedElevationGainForWorkout:v92 workoutActivity:v93 context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v88 setValueAttrString:v94];

        v95 = [(_CHWorkoutDetailTableSubItem *)v88 valueAttrString];

        if (v95)
        {
          [v236 addObject:v88];
        }
      }
    }

    v96 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v97 = [(CHWorkoutDetailDataSource *)self workout];
    v98 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v99 = [v96 hasAveragePowerForWorkout:v97 workoutActivity:v98];

    if (v99)
    {
      v100 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v101 = +[NSBundle mainBundle];
      v102 = [v101 localizedStringForKey:@"WORKOUT_AVERAGE_POWER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v100 setTitleString:v102];

      v103 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v104 = [(CHWorkoutDetailDataSource *)self workout];
      v105 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v106 = [v103 formattedAveragePowerForWorkout:v104 workoutActivity:v105 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v100 setValueAttrString:v106];

      [v236 addObject:v100];
    }

    v107 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v108 = [(CHWorkoutDetailDataSource *)self workout];
    v109 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v110 = [v107 hasStepCountForWorkout:v108 workoutActivity:v109];

    if (v110)
    {
      v111 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v112 = +[NSBundle mainBundle];
      v113 = [v112 localizedStringForKey:@"WORKOUT_STEP_COUNT_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v111 setTitleString:v113];

      v114 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v115 = [(CHWorkoutDetailDataSource *)self workout];
      v116 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v117 = [v114 formattedStepCountForWorkout:v115 workoutActivity:v116 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v111 setValueAttrString:v117];

      [v236 addObject:v111];
    }

    v118 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v119 = [(CHWorkoutDetailDataSource *)self workout];
    v120 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v121 = [v118 hasFlightsClimbedForWorkout:v119 workoutActivity:v120];

    if (v121)
    {
      v122 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v123 = +[NSBundle mainBundle];
      v124 = [v123 localizedStringForKey:@"WORKOUT_FLIGHTS_CLIMBED_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v122 setTitleString:v124];

      v125 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v126 = [(CHWorkoutDetailDataSource *)self workout];
      v127 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v128 = [v125 formattedFlightsClimbedForWorkout:v126 workoutActivity:v127 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v122 setValueAttrString:v128];

      [v236 addObject:v122];
    }

    v129 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v130 = [(CHWorkoutDetailDataSource *)self workout];
    v131 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v132 = [v129 hasAverageCadenceForWorkout:v130 workoutActivity:v131];

    if (v132)
    {
      v133 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v134 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v135 = [v134 fiui_activityType];
      v136 = v135;
      if (v135)
      {
        v137 = v135;
      }

      else
      {
        v138 = [(CHWorkoutDetailDataSource *)self workout];
        v137 = [v138 fiui_activityType];
      }

      [v137 effectiveTypeIdentifier];
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

      v141 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v142 = [(CHWorkoutDetailDataSource *)self workout];
      v143 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v144 = [v141 formattedAverageCadenceForWorkout:v142 workoutActivity:v143 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v133 setValueAttrString:v144];

      [v236 addObject:v133];
    }

    v145 = [(CHWorkoutDetailDataSource *)self workout];
    v146 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v147 = [(CHWorkoutDetailDataSource *)self _showAveragePaceForWorkout:v145 workoutActivity:v146];

    if (v147)
    {
      v148 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v149 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      if (v149)
      {
        [(CHWorkoutDetailDataSource *)self workoutActivity];
      }

      else
      {
        [(CHWorkoutDetailDataSource *)self workout];
      }
      v150 = ;
      v151 = [v150 fiui_activityType];
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
        v154 = [(CHWorkoutDetailDataSource *)self dataCalculator];
        v155 = [(CHWorkoutDetailDataSource *)self workout];
        v156 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v240[0] = _NSConcreteStackBlock;
        v240[1] = 3221225472;
        v240[2] = sub_1000F9E50;
        v240[3] = &unk_10083C2C0;
        v241 = v148;
        v242 = self;
        [v154 swimmingPacePerHundredForWorkout:v155 workoutActivity:v156 completion:v240];

        v157 = v241;
      }

      else
      {
        v157 = [(CHWorkoutDetailDataSource *)self formattingManager];
        v158 = [(CHWorkoutDetailDataSource *)self workout];
        v159 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v160 = [v157 formattedPaceOrSpeedForWorkout:v158 workoutActivity:v159 context:@"WorkoutDetailDisplayContext"];
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

      v164 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v165 = [v164 formattedHeartRate:0 context:@"WorkoutDetailDisplayContext"];
      [(_CHWorkoutDetailTableSubItem *)v161 setValueAttrString:v165];

      v166 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v167 = [(CHWorkoutDetailDataSource *)self workout];
      v168 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v169 = [v166 averageHeartRateForWorkout:v167 workoutActivity:v168];

      self->_hasAverageHeartRate = v169 != 0;
      v238[0] = _NSConcreteStackBlock;
      v238[1] = 3221225472;
      v238[2] = sub_1000F9F48;
      v238[3] = &unk_10083C2E8;
      v238[4] = self;
      objc_copyWeak(&v239, location);
      v170 = objc_retainBlock(v238);
      v171 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v172 = [(CHWorkoutDetailDataSource *)self workout];
      v173 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      [v171 heartRateDataForWorkout:v172 workoutActivity:v173 completion:v170];

      if (self->_hasAverageHeartRate)
      {
        v174 = objc_loadWeakRetained(location);
        v175 = [v174 formattingManager];
        v176 = [v175 formattedHeartRate:v169 context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v161 setValueAttrString:v176];

        [v236 addObject:v161];
      }

      objc_destroyWeak(&v239);
    }

    v177 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    v178 = [(CHWorkoutDetailDataSource *)self workout];
    v179 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v237[0] = _NSConcreteStackBlock;
    v237[1] = 3221225472;
    v237[2] = sub_1000FA030;
    v237[3] = &unk_10083C310;
    v237[4] = self;
    [v177 powerSamplesForWorkout:v178 workoutActivity:v179 completion:v237];

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

    v185 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v186 = [(CHWorkoutDetailDataSource *)self workout];
    v187 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v188 = [v185 formattedLapCountForWorkout:v186 workoutActivity:v187 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v180 setValueAttrString:v188];

    v189 = [(_CHWorkoutDetailTableSubItem *)v180 valueAttrString];

    if (v189)
    {
      [v236 addObject:v180];
    }

    v190 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
    v191 = FIUIBundle();
    v192 = [v191 localizedStringForKey:@"SUMMARY_LAP_LENGTH" value:&stru_1008680E8 table:@"Localizable-Ariel"];
    [(_CHWorkoutDetailTableSubItem *)v190 setTitleString:v192];

    v193 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v194 = [(CHWorkoutDetailDataSource *)self workout];
    v195 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v196 = [v193 formattedPoolLengthForWorkout:v194 workoutActivity:v195 context:@"WorkoutDetailDisplayContext"];
    [(_CHWorkoutDetailTableSubItem *)v190 setValueAttrString:v196];

    v197 = [(_CHWorkoutDetailTableSubItem *)v190 valueAttrString];

    if (v197)
    {
      [v236 addObject:v190];
    }

    v198 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v199 = [(CHWorkoutDetailDataSource *)self workout];
    v200 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v201 = [v198 supportsDownhillRunsCountForWorkout:v199 workoutActivity:v200];

    if (v201)
    {
      v202 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
      v203 = +[NSBundle mainBundle];
      v204 = [v203 localizedStringForKey:@"WORKOUT_DOWNHILL_RUNS_HEADER_TITLE" value:&stru_1008680E8 table:@"Localizable"];
      [(_CHWorkoutDetailTableSubItem *)v202 setTitleString:v204];

      v205 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v206 = [(CHWorkoutDetailDataSource *)self workout];
      v207 = [v206 downhillRunEventsBridge];
      v208 = [v205 formattedDownhillRunsCount:objc_msgSend(v207 context:{"count"), @"WorkoutDetailDisplayContext"}];
      [(_CHWorkoutDetailTableSubItem *)v202 setValueAttrString:v208];

      v209 = [(_CHWorkoutDetailTableSubItem *)v202 valueAttrString];

      if (v209)
      {
        [v236 addObject:v202];
      }
    }

    v210 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v211 = [(CHWorkoutDetailDataSource *)self workout];
    v212 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    if ([v210 shouldShowDistanceForWorkout:v211 workoutActivity:v212])
    {
      v213 = [v232 bridge_isDownhillSnowSport];

      if (v213)
      {
        [v236 addObject:v233];
      }
    }

    else
    {
    }

    v214 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v215 = [(CHWorkoutDetailDataSource *)self workout];
    v216 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v217 = [v214 supportsElevationDescendedForWorkout:v215 workoutActivity:v216];

    if (v217)
    {
      v218 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v219 = [(CHWorkoutDetailDataSource *)self workout];
      v220 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v221 = [v218 cachedDownhillRunsForWorkout:v219 workoutActivity:v220];

      if (v221)
      {
        v222 = objc_alloc_init(_CHWorkoutDetailTableSubItem);
        v223 = +[NSBundle mainBundle];
        v224 = [v223 localizedStringForKey:@"WORKOUT_TOTAL_ELEVATION_DESCENDED_TITLE" value:&stru_1008680E8 table:@"Localizable"];
        [(_CHWorkoutDetailTableSubItem *)v222 setTitleString:v224];

        v225 = [[CHWorkoutDownhillRunsStats alloc] initWithDownhillRunBridges:v221];
        v226 = [(CHWorkoutDownhillRunsStats *)v225 elevationDescended];
        v227 = [(CHWorkoutDetailDataSource *)self formattingManager];
        v228 = [v227 formattedElevation:v226 context:@"WorkoutDetailDisplayContext"];
        [(_CHWorkoutDetailTableSubItem *)v222 setValueAttrString:v228];

        v229 = [(_CHWorkoutDetailTableSubItem *)v222 valueAttrString];

        if (v229)
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

- (BOOL)_showAveragePaceForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v9 = [v8 isIndoorCyclingForWorkout:v6 workoutActivity:v7];

  v10 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v11 = [v10 hasAverageCyclingSpeedForWorkout:v6 workoutActivity:v7];

  if (!v9 || v11)
  {
    v13 = [v7 fiui_activityType];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v6 fiui_activityType];
    }

    v16 = v15;

    if ([v16 bridge_isDownhillSnowSport])
    {
      v12 = 0;
    }

    else
    {
      v17 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v12 = [v17 supportsPaceForWorkout:v6 workoutActivity:v7];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_createPowerSectionWithPowerSamples:(id)a3
{
  v4 = a3;
  v5 = [(CHWorkoutDetailDataSource *)self formattingManager];
  v6 = [(CHWorkoutDetailDataSource *)self workout];
  v7 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  if (![(_CHWorkoutDetailPowerTableItem *)v5 hasAverageCyclingPowerForWorkout:v6 workoutActivity:v7])
  {

    goto LABEL_5;
  }

  v8 = [v4 count];

  if (v8)
  {
    v5 = objc_alloc_init(_CHWorkoutDetailPowerTableItem);
    v9 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
    -[_CHWorkoutDetailTableItem setCellClass:](v5, "setCellClass:", [v9 objectAtIndexedSubscript:14]);

    [(_CHWorkoutDetailPowerTableItem *)v5 setPowerSamples:v4];
    v12 = v5;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    v11 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    [v11 setObject:v10 atIndexedSubscript:14];

    [(CHWorkoutDetailDataSource *)self _insertPowerSection];
LABEL_5:
  }
}

- (id)_normalizeSubItemsArray:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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
  v5 = [v2 textLabel];
  [v5 setText:v4];

  v6 = [v2 textLabel];
  [v6 setNumberOfLines:0];

  v7 = [v2 textLabel];
  [v7 setLineBreakMode:0];

  v8 = [UIFont defaultFontForTextStyle:UIFontTextStyleFootnote];
  v9 = [v2 textLabel];
  [v9 setFont:v8];

  v10 = +[UIColor tertiaryLabelColor];
  v11 = [v2 textLabel];
  [v11 setTextColor:v10];

  return v2;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  isKindOfClass = a4;
  v8 = isKindOfClass;
  if (a5 == 2)
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
        v11 = [v9 textLabel];
        [v11 setFont:v10];

        v12 = +[UIColor tertiaryLabelColor];
        v13 = [v9 textLabel];

        [v13 setTextColor:v12];
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 count];
  return v7;
}

- (id)analyticsHandler
{
  v3 = +[CHWorkoutDetailAnalyticsTracker sharedInstance];
  v4 = [(CHWorkoutDetailDataSource *)self workout];
  v5 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v6 = [v3 workoutAnalyticsHandlerFor:v4 workoutActivity:v5];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v11 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v13 = [v12 count];
  v14 = [v7 row];

  v15 = NSStringFromClass([v10 cellClass]);
  v16 = [v6 dequeueReusableCellWithIdentifier:v15];

  v17 = [v10 cellClass];
  if (v17 == objc_opt_class())
  {
    v40 = v16;
    v41 = [(CHWorkoutDetailDataSource *)self workout];
    v42 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    [v40 summaryConfigureWithWorkout:v41 workoutActivity:v42 fitnessAppContext:self->_fitnessAppContext catalogItemViewModel:self->_catalogItemViewModel formattingManager:self->_formattingManager resizeBlock:0];

    v43 = [v40 location];

    if (!v43)
    {
      v44 = v10;
      v45 = [v44 firstCoordinate];
      [v40 setLocation:v45];

      v46 = [v44 firstCoordinate];

      if (!v46)
      {
        v194[0] = _NSConcreteStackBlock;
        v194[1] = 3221225472;
        v194[2] = sub_1000FBC64;
        v194[3] = &unk_10083C338;
        v195 = v40;
        v196 = v6;
        [v44 setFirstCoordinateUpdatedBlock:v194];
      }
    }

    if ([(CHWorkoutDetailDataSource *)self isSwimmingActivity])
    {
      v47 = v10;
      v48 = [v47 swimDistanceByStrokeStyle];
      [v40 setSwimDistanceByStrokeStyle:v48];

      v191[0] = _NSConcreteStackBlock;
      v191[1] = 3221225472;
      v191[2] = sub_1000FBD30;
      v191[3] = &unk_10083C360;
      v192 = v40;
      v193 = v6;
      [v47 setSwimDistanceByStrokeStyleUpdateBlock:v191];
    }

    goto LABEL_38;
  }

  v18 = [v10 cellClass];
  if (v18 == objc_opt_class())
  {
    [v16 configureWithDive:self->_workout row:objc_msgSend(v7 dataCalculator:{"row"), self->_divingDataCalculator}];
    goto LABEL_39;
  }

  v19 = v13 - 1;
  v20 = [v10 cellClass];
  if (v20 == objc_opt_class())
  {
    [v16 setHidesSeparator:v19 == v14];
    if (self->_isTopLevelMultisport || self->_isSwimmingActivity)
    {
      [v16 removeLeadingPadding];
    }

    v49 = [v10 subItems];
    v50 = [v49 count];

    if (v50)
    {
      v51 = [v10 subItems];
      v52 = [v51 objectAtIndexedSubscript:0];

      v53 = [v52 titleString];
      v54 = [v52 valueAttrString];
      [v16 configureWithTitle1:v53 value1:v54];
      v188[0] = _NSConcreteStackBlock;
      v188[1] = 3221225472;
      v188[2] = sub_1000FBD78;
      v188[3] = &unk_10083C388;
      v189 = v16;
      v190 = v53;
      v55 = v53;
      [v52 setUpdateBlock:v188];
    }

    v56 = [v10 subItems];
    v57 = [v56 count];

    if (v57 >= 2)
    {
      v58 = [v10 subItems];
      v39 = [v58 objectAtIndexedSubscript:1];

      v59 = [v39 titleString];
      v38 = [v39 valueAttrString];
      [v16 configureWithTitle2:v59 value2:v38];
      v185[0] = _NSConcreteStackBlock;
      v185[1] = 3221225472;
      v185[2] = sub_1000FBD88;
      v185[3] = &unk_10083C388;
      v186 = v16;
      v187 = v59;
      v60 = v59;
      [v39 setUpdateBlock:v185];

LABEL_35:
LABEL_36:

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v21 = [v10 cellClass];
  if (v21 == objc_opt_class())
  {
    v40 = v16;
    v61 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [v40 setFormattingManager:v61];

    [v40 setSelectedPaceFormat:-[CHWorkoutDetailDataSource currentlySelectedSwimmingPaceFormat](self, "currentlySelectedSwimmingPaceFormat")];
    v62 = [(CHWorkoutDetailDataSource *)self workout];
    v63 = [(CHWorkoutDetailDataSource *)self workoutActivity];
    v64 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    [v40 configureWithWorkout:v62 workoutActivity:v63 dataCalculator:v64];

    [v40 setPaceSelectionDelegate:self];
    goto LABEL_38;
  }

  v22 = [v10 cellClass];
  if (v22 == objc_opt_class())
  {
    v66 = v16;
    v67 = v10;
    v68 = [(CHWorkoutDetailDataSource *)self workout];
    v69 = [v67 workoutActivity];

    v70 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [v70 fitnessUIFormattingManager];
    v173 = v16;
    v72 = v71 = v6;
    v73 = [(CHWorkoutDetailDataSource *)self dataCalculator];
    [v66 configureWithWorkout:v68 workoutActivity:v69 formattingManager:v72 dataCalculator:v73];

    v6 = v71;
    v16 = v173;

    v74 = [(CHWorkoutDetailDataSource *)self delegate];
    [v66 setNavigationDelegate:v74];

    goto LABEL_39;
  }

  v23 = [v10 cellClass];
  v181 = v6;
  if (v23 == objc_opt_class())
  {
    v75 = v10;
    v76 = [v75 split];

    if (v76)
    {
      v174 = v19 == v14;
      v77 = [(CHWorkoutDetailDataSource *)self workout];
      v162 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v168 = [v75 unit];
      [v75 split];
      v79 = v78 = v75;
      v164 = [v78 splitIndex];
      [v78 expectedSplitDistance];
      v81 = v80;
      hasAverageHeartRate = self->_hasAverageHeartRate;
      v82 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v83 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v84 = [v83 fitnessUIFormattingManager];
      LOBYTE(v160) = v174;
      [v16 configureWithWorkout:v77 workoutActivity:v162 unit:v168 split:v79 splitIndex:v164 splitDistance:hasAverageHeartRate includeHeartRate:v81 isLastCell:v160 dataCalculator:v82 formattingManager:v84];

      v75 = v78;
    }

    else
    {
      v96 = [v75 swimmingSplit];

      if (v96)
      {
        v97 = v19 == v14;
        v77 = [v75 swimmingSplit];
        v98 = [v75 splitIndex];
        v99 = [(CHWorkoutDetailDataSource *)self formattingManager];
        v100 = [v99 fitnessUIFormattingManager];
        [v16 configureWithSwimmingSplit:v77 splitIndex:v98 isLastCell:v97 formattingManager:v100];
      }

      else
      {
        v122 = [(CHWorkoutDetailDataSource *)self workoutActivity];
        v123 = [v122 fiui_activityType];
        v124 = v123;
        if (v123)
        {
          v125 = v123;
        }

        else
        {
          v131 = [(CHWorkoutDetailDataSource *)self workout];
          v125 = [v131 fiui_activityType];
        }

        v77 = v125;
        [v16 configureHeaderWithActivityType:v125 includeHeartRate:self->_hasAverageHeartRate];
      }
    }

    goto LABEL_52;
  }

  v24 = [v10 cellClass];
  if (v24 == objc_opt_class())
  {
    v175 = v19 == v14;
    v85 = v10;
    v169 = [v85 segment];
    v165 = [v85 segmentIndex];

    v86 = [(CHWorkoutDetailDataSource *)self workout];
    v163 = [(CHWorkoutDetailDataSource *)self trackDistanceUnit];
    v87 = [(CHWorkoutDetailDataSource *)self workout];
    v88 = [v87 fiui_activityType];
    v89 = [(CHWorkoutDetailDataSource *)self workout];
    v90 = [v89 _activityMoveMode];
    v91 = [(CHWorkoutDetailDataSource *)self formattingManager];
    LOBYTE(v160) = v175;
    v92 = v169;
    [v16 configureWithSegment:v169 segmentIndex:v165 workout:v86 trackDistanceUnit:v163 activityType:v88 activityMoveMode:v90 isLastCell:v160 formattingManager:v91];

LABEL_48:
LABEL_59:
    v6 = v181;
    goto LABEL_39;
  }

  v25 = [v10 cellClass];
  if (v25 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v109 = v19 == v14;
        v110 = v10;
        v75 = [v110 downhillRun];
        v111 = [v110 downhillRunIndex];

        v112 = [(CHWorkoutDetailDataSource *)self workout];
        v113 = [v112 fiui_activityType];
        v114 = [(CHWorkoutDetailDataSource *)self formattingManager];
        [v16 configureWithDownhillRun:v75 downhillRunIndex:v111 activityType:v113 isLastCell:v109 formattingManager:v114];

LABEL_56:
LABEL_52:

        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v92 = [v10 downhillRunsStats];
    v93 = [(CHWorkoutDetailDataSource *)self workout];
    v94 = [v93 fiui_activityType];
    v95 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [v16 configureWithDownhillRunsStats:v92 activityType:v94 formattingManager:v95];

    goto LABEL_48;
  }

  v26 = [v10 cellClass];
  if (v26 == objc_opt_class())
  {
    v176 = v19 == v14;
    v101 = v10;
    v102 = [v101 interval];
    v170 = [v101 intervalIndex];

    v103 = [(CHWorkoutDetailDataSource *)self workout];
    v104 = [(CHWorkoutDetailDataSource *)self workout];
    v105 = [v104 fiui_activityType];
    v106 = [(CHWorkoutDetailDataSource *)self workout];
    v107 = [v106 _activityMoveMode];
    v108 = [(CHWorkoutDetailDataSource *)self formattingManager];
    [v16 configureWithInterval:v102 index:v170 workout:v103 activityType:v105 activityMoveMode:v107 isLastCell:v176 formattingManager:v108];

LABEL_58:
    goto LABEL_59;
  }

  v27 = [v10 cellClass];
  if (v27 == objc_opt_class())
  {
    v177 = v19 == v14;
    v115 = v10;
    v102 = [v115 trackLap];
    v171 = [v115 lapIndex];
    v116 = [(CHWorkoutDetailDataSource *)self workout];
    v166 = [v115 distanceUnit];

    v117 = [(CHWorkoutDetailDataSource *)self workout];
    v118 = [v117 fiui_activityType];
    v119 = [(CHWorkoutDetailDataSource *)self workout];
    v120 = [v119 _activityMoveMode];
    v121 = [(CHWorkoutDetailDataSource *)self formattingManager];
    LOBYTE(v160) = v177;
    [v16 configureWithTrackLap:v102 lapIndex:v171 workout:v116 distanceUnit:v166 activityType:v118 activityMoveMode:v120 isLastCell:v160 formattingManager:v121];

    goto LABEL_58;
  }

  v28 = [v10 cellClass];
  if (v28 == objc_opt_class())
  {
    v126 = v19 == v14;
    v127 = [v10 set];
    v128 = [v7 row];
    v129 = [(CHWorkoutDetailDataSource *)self formattingManager];
    v130 = [v129 fitnessUIFormattingManager];
    [v16 configureWithSwimmingSet:v127 index:v128 isLastCell:v126 formattingManager:v130];

    goto LABEL_59;
  }

  v29 = [v10 cellClass];
  if (v29 == objc_opt_class())
  {
    [v16 configureWithFitnessAppContext:self->_fitnessAppContext workout:self->_workout scoreSummaryWrapper:self->_scoreSummaryWrapper];
  }

  else
  {
    v30 = [v10 cellClass];
    if (v30 == objc_opt_class())
    {
      v132 = v16;
      v133 = v10;
      v178 = [(CHWorkoutDetailDataSource *)self workout];
      v172 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v134 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v167 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v135 = [v133 heartRateReadings];
      v136 = [v133 averageHeartRate];

      v137 = [(CHWorkoutDetailDataSource *)self delegate];
      v39 = v178;
      v138 = v134;
      [v132 configureWithWorkout:v178 workoutActivity:v172 dataCalculator:v134 formattingManager:v167 heartRateReadings:v135 averageHeartRate:v136 parent:v137];

      v6 = v181;
      goto LABEL_36;
    }

    v31 = [v10 cellClass];
    if (v31 == objc_opt_class())
    {
      v139 = v16;
      v140 = v10;
      v179 = [(CHWorkoutDetailDataSource *)self workout];
      v141 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v142 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v143 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v144 = [v140 powerSamples];

      v145 = [(CHWorkoutDetailDataSource *)self delegate];
      v146 = v179;
      [v139 configureWithWorkout:v179 workoutActivity:v141 dataCalculator:v142 formattingManager:v143 powerSamples:v144 parent:v145];

      v6 = v181;
    }

    else
    {
      v32 = [v10 cellClass];
      if (v32 != objc_opt_class())
      {
        v33 = [v10 cellClass];
        if (v33 != objc_opt_class())
        {
          v34 = [v10 cellClass];
          if (v34 != objc_opt_class())
          {
            v35 = [v10 cellClass];
            if (v35 != objc_opt_class())
            {
              v36 = [v10 cellClass];
              if (v36 != objc_opt_class())
              {
                goto LABEL_39;
              }

              supplementaryDataSource = self->_supplementaryDataSource;
              v38 = v16;
              v39 = [(CHWorkoutDetailDataSource *)self delegate];
              [v38 configureWithSupplementaryDataSource:supplementaryDataSource parent:v39];
              goto LABEL_35;
            }

            v156 = v16;
            v40 = [(CHWorkoutDetailDataSource *)self workout];
            v157 = [(CHWorkoutDetailDataSource *)self workoutActivity];
            v158 = [(CHWorkoutDetailDataSource *)self dataCalculator];
            v159 = [(CHWorkoutDetailDataSource *)self delegate];
            [v156 configureWithWorkout:v40 workoutActivity:v157 dataCalculator:v158 parent:v159];

            goto LABEL_38;
          }

          v155 = v19 == v14;
          v112 = v16;
          v75 = [v10 achievement];
          [v112 configureForAchievement:v75 badgeImageFactory:self->_badgeImageFactory localizationProvider:self->_achievementLocalizationProvider isLastCell:v155];
          goto LABEL_56;
        }

        v40 = v16;
        [v40 configureWithWorkout:self->_workout fitnessAppContext:self->_fitnessAppContext];
        objc_initWeak(&location, self);
        v182[0] = _NSConcreteStackBlock;
        v182[1] = 3221225472;
        v182[2] = sub_1000FBD98;
        v182[3] = &unk_10083C3B0;
        objc_copyWeak(&v183, &location);
        [v40 setOnDidTapMediaMomentItem:v182];
        objc_destroyWeak(&v183);
        objc_destroyWeak(&location);
LABEL_38:

        goto LABEL_39;
      }

      v147 = v16;
      v148 = v10;
      v149 = [(CHWorkoutDetailDataSource *)self delegate];
      [v147 setNavigationDelegate:v149];

      v150 = [(CHWorkoutDetailDataSource *)self analyticsHandler];
      [v147 setAnalyticsHandler:v150];

      v146 = [(CHWorkoutDetailDataSource *)self workout];
      v180 = [(CHWorkoutDetailDataSource *)self workoutActivity];
      v151 = [(CHWorkoutDetailDataSource *)self dataCalculator];
      v152 = [(CHWorkoutDetailDataSource *)self formattingManager];
      v153 = [(CHWorkoutDetailDataSource *)self delegate];
      v154 = [v148 locationReadings];

      v141 = v180;
      [v147 configureWithWorkout:v146 workoutActivity:v180 dataCalculator:v151 formattingManager:v152 parent:v153 locationReadings:v154];

      v6 = v181;
    }
  }

LABEL_39:

  return v16;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CHWorkoutDetailDataSource *)self cellClassesBySection];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(CHWorkoutDetailDataSource *)self workout];
    [v7 preferredHeightForWorkout:v8];
    v10 = v9;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = 44.0;
      goto LABEL_7;
    }

    v8 = [(CHWorkoutDetailDataSource *)self workout];
    v11 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
    [v7 preferredHeightForWorkout:v8 indexPath:v5 numberOfRows:{objc_msgSend(v12, "count")}];
    v10 = v13;
  }

LABEL_7:
  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [v7 count];
  if (a4 != 3 || (v9 = 10.0, !v8))
  {
    v10 = [(CHWorkoutDetailDataSource *)self tableSectionHeaders];
    v11 = [v10 objectAtIndexedSubscript:a4];

    if (a4 == 2)
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

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if (a4 == 2)
  {
    if ([(CHWorkoutDetailDataSource *)self _isExtendedMode])
    {
LABEL_6:
      v7 = UITableViewAutomaticDimension;
    }
  }

  else if (a4 == 15)
  {
    v8 = [(HKWorkout *)self->_workout metadata];
    v9 = _HKPrivateMetadataKeyWorkoutWeatherSourceName;
    v10 = [v8 objectForKeyedSubscript:_HKPrivateMetadataKeyWorkoutWeatherSourceName];
    if ([v10 isEqualToString:kHKAppleWeatherSourceName])
    {
    }

    else
    {
      v12 = [(HKWorkout *)self->_workout metadata];
      v13 = [v12 objectForKeyedSubscript:v9];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v6 section] == 17)
  {
    v7 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v10 = [v13 cellForRowAtIndexPath:v6];
    v11 = [(CHWorkoutDetailDataSource *)self delegate];
    v12 = [v9 achievement];
    [v10 badgeRect];
    [v11 presentAchievement:v12 badgeRect:v10 cell:?];
  }

  else
  {
    -[CHWorkoutDetailDataSource presentPageForSection:](self, "presentPageForSection:", [v6 section]);
  }
}

- (void)presentPageForSection:(int64_t)a3
{
  v3 = [(CHWorkoutDetailDataSource *)self navigationActionForHeaderInSection:a3];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, 1);
    v3 = v4;
  }
}

- (id)navigationActionForHeaderInSection:(int64_t)a3
{
  objc_initWeak(&location, self);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000FCAF8;
  v53[3] = &unk_10083C3D8;
  objc_copyWeak(v54, &location);
  v54[1] = a3;
  v5 = objc_retainBlock(v53);
  v6 = 0;
  if (a3 > 8)
  {
    if (a3 > 12)
    {
      switch(a3)
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
      switch(a3)
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

  if (a3 > 5)
  {
    if (a3 == 6)
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

    else if (a3 == 7)
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

  if (a3 != 2)
  {
    if (a3 != 3)
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

  v9 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  if ([v9 hasChartableMetrics])
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

  v10 = [(CHWorkoutDetailDataSource *)self workout];
  v11 = [v10 hasChartableMetrics];

  if (self->_isUnderwaterDive)
  {
    goto LABEL_30;
  }

  if (v11)
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

- (void)presentEffortViewController:(BOOL)a3 presentationCompletion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(CHWorkoutDetailDataSource *)self dataCalculator];
  v8 = [(CHWorkoutDetailDataSource *)self workout];
  v9 = [(CHWorkoutDetailDataSource *)self workoutActivity];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FDB48;
  v11[3] = &unk_10083C490;
  objc_copyWeak(&v13, &location);
  v14 = a3;
  v10 = v6;
  v12 = v10;
  [v7 effortForWorkout:v8 workoutActivity:v9 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    v7 = +[(ActivityTileSectionHeader *)_TtC10FitnessApp26WorkoutDetailSectionHeader];
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v7];

    [v8 configureWithTitle:&stru_1008680E8 buttonAction:0];
  }

  else
  {
    v9 = [(CHWorkoutDetailDataSource *)self tableSectionHeaders];
    v10 = [v9 objectAtIndexedSubscript:a4];

    if (a4 == 2)
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
      v14 = [(CHWorkoutDetailDataSource *)self navigationActionForHeaderInSection:a4];
      v15 = +[(ActivityTileSectionHeader *)_TtC10FitnessApp26WorkoutDetailSectionHeader];
      v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v15];

      [v8 configureWithTitle:v10 buttonAction:v14];
    }
  }

  return v8;
}

- (BOOL)_isExtendedMode
{
  v2 = [(CHWorkoutDetailDataSource *)self workout];
  v3 = [v2 metadata];
  v4 = [v3 objectForKey:_HKPrivateMetadataKeyWorkoutExtendedMode];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 15)
  {
    v7 = [(CHWorkoutDetailDataSource *)self _makeAppleWeatherFooterView];
  }

  else
  {
    if (a4 != 2 || ![(CHWorkoutDetailDataSource *)self _isExtendedMode])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [(CHWorkoutDetailDataSource *)self _makeUltraModeFooterView];
  }

  v8 = v7;
LABEL_8:

  return v8;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a5;
  v7 = a4;
  if (![v10 section] || objc_msgSend(v10, "section") == 5 || objc_msgSend(v10, "section") == 17 || objc_msgSend(v10, "section") == 2 && (self->_isTopLevelMultisport || self->_isSwimmingActivity))
  {
    v8 = +[UIColor systemBackgroundColor];
  }

  else
  {
    v8 = sub_100046170();
  }

  v9 = v8;
  [v7 setBackgroundColor:v8];

  [v7 setSelectionStyle:0];
}

- (void)_section:(int64_t)a3 setExpanded:(BOOL)a4
{
  v4 = a4;
  if (a3 <= 10)
  {
    if (a3 != 8)
    {
      if (a3 != 9 || [(CHWorkoutDetailDataSource *)self splitsExpanded]== a4)
      {
        return;
      }

      [(CHWorkoutDetailDataSource *)self setSplitsExpanded:v4];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a3 == 11)
  {
LABEL_10:
    if ([(CHWorkoutDetailDataSource *)self segmentsExpanded]== a4)
    {
      return;
    }

    [(CHWorkoutDetailDataSource *)self setSegmentsExpanded:v4];
    goto LABEL_12;
  }

  if (a3 != 12 || [(CHWorkoutDetailDataSource *)self burnBarExpanded]== a4)
  {
    return;
  }

  [(CHWorkoutDetailDataSource *)self setBurnBarExpanded:v4];
LABEL_12:
  v17 = objc_alloc_init(NSMutableArray);
  v7 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [NSIndexPath indexPathForRow:v10 inSection:a3];
      [v17 addObject:v11];

      ++v10;
      v12 = [(CHWorkoutDetailDataSource *)self tableItemsBySection];
      v13 = [v12 objectAtIndexedSubscript:a3];
      v14 = [v13 count];
    }

    while (v10 < v14);
  }

  v15 = [(CHWorkoutDetailDataSource *)self tableView];
  v16 = v15;
  if (v4)
  {
    [v15 insertRowsAtIndexPaths:v17 withRowAnimation:3];
  }

  else
  {
    [v15 deleteRowsAtIndexPaths:v17 withRowAnimation:3];
  }
}

- (void)expandingHeaderView:(id)a3 didChangeExpanded:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 section];

  [(CHWorkoutDetailDataSource *)self _section:v6 setExpanded:v4];
}

- (void)_insertMultiSportSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:5];
  [v3 reloadSections:v2 withRowAnimation:3];
}

- (void)_insertSegmentsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:11];
  [v3 reloadSections:v2 withRowAnimation:3];
}

- (void)_insertDownhillRunsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v4 = [NSIndexSet indexSetWithIndex:10];
  [v3 reloadSections:v4 withRowAnimation:3];

  [(CHWorkoutDetailDataSource *)self _createValuesSection];
  v6 = [(CHWorkoutDetailDataSource *)self tableView];
  v5 = [NSIndexSet indexSetWithIndex:2];
  [v6 reloadSections:v5 withRowAnimation:5];
}

- (void)_insertIntervalsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:6];
  [v3 reloadSections:v2 withRowAnimation:3];
}

- (void)_insertTrackLapsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:7];
  [v3 reloadSections:v2 withRowAnimation:3];
}

- (void)_insertSwimSetsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:8];
  [v3 reloadSections:v2 withRowAnimation:3];
}

- (void)_insertSplitsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:9];
  [v3 reloadSections:v2 withRowAnimation:3];
}

- (void)_insertBurnBarSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:12];
  [v3 reloadSections:v2 withRowAnimation:100];
}

- (void)_createAndInsertValuesSection
{
  [(CHWorkoutDetailDataSource *)self _createValuesSection];
  v4 = [(CHWorkoutDetailDataSource *)self tableView];
  v3 = [NSIndexSet indexSetWithIndex:2];
  [v4 reloadSections:v3 withRowAnimation:100];
}

- (void)_insertHeartRateSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:13];
  [v3 reloadSections:v2 withRowAnimation:100];
}

- (void)_insertPowerSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:14];
  [v3 reloadSections:v2 withRowAnimation:100];
}

- (void)_insertGuidedRunMediaMomentsSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:16];
  [v3 reloadSections:v2 withRowAnimation:100];
}

- (void)_insertEffortSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:3];
  [v3 reloadSections:v2 withRowAnimation:100];
}

- (void)_insertWorkoutVoiceOutroSection
{
  v3 = [(CHWorkoutDetailDataSource *)self tableView];
  v2 = [NSIndexSet indexSetWithIndex:1];
  [v3 reloadSections:v2 withRowAnimation:100];
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

- (void)dataSourceDidUpdateOutroState:(id)a3
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
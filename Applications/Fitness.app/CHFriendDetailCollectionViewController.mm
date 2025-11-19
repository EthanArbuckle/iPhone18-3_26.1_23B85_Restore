@interface CHFriendDetailCollectionViewController
- (BOOL)_isDataHidden;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (BOOL)_shouldShowCompetitionAcceptAction;
- (BOOL)_shouldShowCompetitionRequestAction;
- (BOOL)_shouldShowCompetitionRulesAction;
- (BOOL)_shouldShowExerciseAndStandCells;
- (BOOL)_shouldShowStepsAndDistanceCells;
- (CGSize)_sizeForGoalCell:(id)a3 withPreferredWidth:(double)a4 availableWidth:(double)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CHFriendDetailCollectionViewController)initWithFriendListManager:(id)a3 friendManager:(id)a4 friend:(id)a5 snapshot:(id)a6 snapshotDate:(id)a7 achievementsDataProvider:(id)a8 workoutDataProvider:(id)a9 workoutFormattingManager:(id)a10 formattingManager:(id)a11 badgeImageFactory:(id)a12 healthStore:(id)a13 fitnessAppContext:(id)a14;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_fontForSectionHeaderType:(int64_t)a3;
- (id)_transformFriendAchievementsToACHAchievements;
- (id)_workoutsForFriend:(id)a3 snapshot:(id)a4;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_friendDataWasUpdated:(id)a3;
- (void)_infoButtonTapped:(id)a3;
- (void)_logMessageComposeResult:(int64_t)a3 messageComposeViewController:(id)a4;
- (void)_populateAchievements;
- (void)_reloadData;
- (void)_sendMessageButtonTapped:(id)a3;
- (void)_setupCellSizes;
- (void)_setupCells;
- (void)_setupNumberOfItemsInSection;
- (void)_showShareOptions:(id)a3;
- (void)_updateSharingTextForMe;
- (void)achievementsView:(id)a3 didTapAchievement:(id)a4 cell:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dealloc;
- (void)friendDetailActionListView:(id)a3 didSelectActionType:(int64_t)a4;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CHFriendDetailCollectionViewController

- (CHFriendDetailCollectionViewController)initWithFriendListManager:(id)a3 friendManager:(id)a4 friend:(id)a5 snapshot:(id)a6 snapshotDate:(id)a7 achievementsDataProvider:(id)a8 workoutDataProvider:(id)a9 workoutFormattingManager:(id)a10 formattingManager:(id)a11 badgeImageFactory:(id)a12 healthStore:(id)a13 fitnessAppContext:(id)a14
{
  v50 = a3;
  v39 = a4;
  v49 = a4;
  v48 = a5;
  v47 = a6;
  v19 = a7;
  v46 = a8;
  v45 = a9;
  v44 = a10;
  v43 = a11;
  v42 = a12;
  v20 = a13;
  v41 = a14;
  v52.receiver = self;
  v52.super_class = CHFriendDetailCollectionViewController;
  v21 = [(CHFriendDetailCollectionViewController *)&v52 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_friendListManager, a3);
    objc_storeStrong(&v22->_friendManager, v39);
    objc_storeStrong(&v22->_friend, a5);
    objc_storeStrong(&v22->_formattingManager, a11);
    objc_storeStrong(&v22->_workoutFormattingManager, a10);
    objc_storeStrong(&v22->_imageFactory, a12);
    objc_storeStrong(&v22->_achievementsDataProvider, a8);
    objc_storeStrong(&v22->_activitySnapshot, a6);
    v23 = v19;
    if (!v19)
    {
      v23 = +[NSDate date];
    }

    objc_storeStrong(&v22->_snapshotDate, v23);
    if (!v19)
    {
    }

    [(_HKFitnessFriendActivitySnapshot *)v22->_activitySnapshot snapshotIndex];
    v24 = sub_1000B5308();
    snapshotDateComponents = v22->_snapshotDateComponents;
    v22->_snapshotDateComponents = v24;

    v22->_isMe = [(ASFriend *)v22->_friend isMe];
    [(CHFriendDetailCollectionViewController *)v22 _populateAchievements];
    v26 = [(CHFriendDetailCollectionViewController *)v22 _workoutsForFriend:v22->_friend snapshot:v22->_activitySnapshot];
    todaysFriendWorkouts = v22->_todaysFriendWorkouts;
    v22->_todaysFriendWorkouts = v26;

    v22->_dataIsHidden = [(CHFriendDetailCollectionViewController *)v22 _isDataHidden];
    objc_storeStrong(&v22->_workoutDataProvider, a9);
    v22->_pairedWatchSupportsCompetitions = FIDeviceMeetsMinimumOSVersionGlory();
    v28 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:v20];
    wheelchairUseCharacteristicCache = v22->_wheelchairUseCharacteristicCache;
    v22->_wheelchairUseCharacteristicCache = v28;

    [(_HKWheelchairUseCharacteristicCache *)v22->_wheelchairUseCharacteristicCache addObserver:v22];
    v22->_iAmWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)v22->_wheelchairUseCharacteristicCache isWheelchairUser];
    v22->_experienceType = FIExperienceTypeWithHealthStore();
    objc_storeStrong(&v22->_fitnessAppContext, a14);
    v30 = objc_alloc_init(ACHAchievementLocalizationProvider);
    achievementLocProvider = v22->_achievementLocProvider;
    v22->_achievementLocProvider = v30;

    v32 = [(FIUIFormattingManager *)v22->_formattingManager unitManager];
    v33 = v32;
    if (v32)
    {
      if ([v32 conformsToProtocol:&OBJC_PROTOCOL___ACHUnitManager])
      {
        [(ACHAchievementLocalizationProvider *)v22->_achievementLocProvider setAchUnitManager:v33];
      }

      else
      {
        ASLoggingInitialize();
        v34 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "FIUIUnitManager failed to conform to the ACHUnitManager protocol, template's canonical unit will be utilized", buf, 2u);
        }
      }
    }

    v35 = [(ASFriend *)v22->_friend displayName];
    [(ACHAchievementLocalizationProvider *)v22->_achievementLocProvider setName:v35];

    if (v22->_isMe)
    {
      [(ACHAchievementLocalizationProvider *)v22->_achievementLocProvider setWheelchairUser:v22->_iAmWheelchairUser];
    }

    else
    {
      v36 = [(ASFriend *)v22->_friend currentSnapshot];
      -[ACHAchievementLocalizationProvider setWheelchairUser:](v22->_achievementLocProvider, "setWheelchairUser:", [v36 wheelchairUse] == 2);
    }
  }

  return v22;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CHFriendDetailCollectionViewController;
  [(CHFriendDetailCollectionViewController *)&v31 viewDidLoad];
  if (self->_isMe)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"ME" value:&stru_1008680E8 table:@"Localizable"];
    v5 = [NSString stringWithFormat:@"•%@", v4];
  }

  else
  {
    v5 = [(ASFriend *)self->_friend displayName];
  }

  v6 = [(CHFriendDetailCollectionViewController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [(CHFriendDetailCollectionViewController *)self navigationItem];
  [v7 setLargeTitleDisplayMode:2];

  [(CHFriendDetailCollectionViewController *)self setTitle:v5];
  if (self->_isMe)
  {
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"_showShareOptions:"];
    v9 = [(CHFriendDetailCollectionViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];

    objc_initWeak(&location, self);
    v10 = kASGatewayStatusChangedNotificationKey;
    v11 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10012B7F8;
    handler[3] = &unk_10083BD18;
    objc_copyWeak(&v29, &location);
    notify_register_dispatch(v10, &self->_activitySharingGatewayStatusChangedToken, &_dispatch_main_q, handler);

    ASLoggingInitialize();
    v12 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registered a callback for Watch pairing changed notifications", buf, 2u);
    }

    [(CHFriendDetailCollectionViewController *)self _updateSharingTextForMe];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:2];
    if ([CNContactStore authorizationStatusForEntityType:0]== 3)
    {
      v13 = [UIButton buttonWithType:4];
      [v13 addTarget:self action:"_infoButtonTapped:" forControlEvents:64];
      v14 = [[UIBarButtonItem alloc] initWithCustomView:v13];
      [v8 addObject:v14];
    }

    if (+[MFMessageComposeViewController canSendText])
    {
      v15 = [UIImage systemImageNamed:@"message"];
      v16 = [[UIBarButtonItem alloc] initWithImage:v15 style:0 target:self action:"_sendMessageButtonTapped:"];
      [v8 addObject:v16];
    }

    v17 = [(CHFriendDetailCollectionViewController *)self navigationItem];
    [v17 setRightBarButtonItems:v8];

    v18 = [(ASFriend *)self->_friend as_detailedSharingDurationString];
    sharingInfoText = self->_sharingInfoText;
    self->_sharingInfoText = v18;
  }

  v20 = +[NSNotificationCenter defaultCenter];
  [v20 addObserver:self selector:"_friendDataWasUpdated:" name:kASFriendListChangedNotificationKey object:0];
  [(CHFriendDetailCollectionViewController *)self _setupNumberOfItemsInSection];
  [(CHFriendDetailCollectionViewController *)self _setupCells];
  [(CHFriendDetailCollectionViewController *)self _setupCellSizes];
  v21 = objc_alloc_init(UICollectionViewFlowLayout);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v21;

  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumInteritemSpacing:0.0];
  v23 = [[UICollectionView alloc] initWithFrame:self->_collectionViewLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  collectionView = self->_collectionView;
  self->_collectionView = v23;

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  v25 = +[UIColor systemBackgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v25];

  [(UICollectionView *)self->_collectionView setAllowsSelection:1];
  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  v26 = [(CHFriendDetailCollectionViewController *)self view];
  [v26 addSubview:self->_collectionView];

  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"Footer"];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHFriendDetailCollectionViewController;
  [(CHFriendDetailCollectionViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(CHFriendDetailCollectionViewController *)self view];
  [v3 bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  notify_cancel(self->_activitySharingGatewayStatusChangedToken);
  v4.receiver = self;
  v4.super_class = CHFriendDetailCollectionViewController;
  [(CHFriendDetailCollectionViewController *)&v4 dealloc];
}

- (void)_updateSharingTextForMe
{
  if (FIDeviceMeetsMinimumOSVersionDaytona())
  {
    v3 = [(CHFriendManager *)self->_friendManager activitySharingClient];
    v4 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10012BAAC;
    v8[3] = &unk_10083AC40;
    v8[4] = self;
    [v3 areMultipleDevicesSharingDataForSnapshotIndex:v4 completion:v8];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"SHARING_UPGRADE_CURRENT_WATCH" value:&stru_1008680E8 table:@"Localizable"];
    sharingInfoText = self->_sharingInfoText;
    self->_sharingInfoText = v5;
  }
}

- (BOOL)_isDataHidden
{
  v3 = self->_friend;
  v4 = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot endDate];
  snapshotDate = v4;
  if (!v4)
  {
    snapshotDate = self->_snapshotDate;
  }

  v6 = ([(ASFriend *)v3 isActivityDataVisibleToMeForDate:snapshotDate]& 1) == 0 && !self->_isMe;

  return v6;
}

- (void)_populateAchievements
{
  if (self->_isMe)
  {
    [(AAUIAchievementsDataProvider *)self->_achievementsDataProvider achievementsForDateComponents:self->_snapshotDateComponents];
  }

  else
  {
    [(CHFriendDetailCollectionViewController *)self _transformFriendAchievementsToACHAchievements];
  }
  v3 = ;
  todaysAchievements = self->_todaysAchievements;
  self->_todaysAchievements = v3;

  v5 = [(NSSet *)self->_todaysAchievements allObjects];
  v6 = [v5 mutableCopy];

  AAUISortAchievementsByMostRecentEarnedDate();
  [(CHHorizontalScrollingAchievementsView *)self->_achievementsCell setAchievements:v6];
}

- (id)_transformFriendAchievementsToACHAchievements
{
  v3 = [(ASFriend *)self->_friend friendAchievements];
  v26 = self;
  v4 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
  v5 = [v3 objectForKeyedSubscript:v4];

  if ([v5 count])
  {
    v6 = +[NSSet set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v9 = *v29;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 templateUniqueName];
        v13 = ASIsCompetitionVictoryTemplate();

        if (v13)
        {
          v14 = ASEphemeralCompetitionVictoryAchievementForFriendAchievement();
          if (!v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
          achievementsDataProvider = v26->_achievementsDataProvider;
          v16 = [v11 templateUniqueName];
          v14 = [(AAUIAchievementsDataProvider *)achievementsDataProvider achievementForTemplateUniqueName:v16];

          if (!v14)
          {
            goto LABEL_16;
          }
        }

        v17 = [v6 hk_map:&stru_10083CF50];
        v18 = [v14 template];
        v19 = [v18 uniqueName];
        v20 = [v17 containsObject:v19];

        if (v20)
        {
          ASLoggingInitialize();
          v21 = ASLogAchievements;
          if (os_log_type_enabled(ASLogAchievements, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v14;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Dropping duplicate achievement: %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = ASEphemeralEarnedAchievementForFriendAchievement();
          v23 = [v6 setByAddingObject:v22];

          v6 = v23;
        }

LABEL_16:
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (!v8)
      {
LABEL_18:

        v5 = v25;
        goto LABEL_20;
      }
    }
  }

  v6 = objc_alloc_init(NSSet);
LABEL_20:

  return v6;
}

- (void)_setupCells
{
  if (!self->_threeRingCell)
  {
    v3 = [[CHFriendDetailThreeRingCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    threeRingCell = self->_threeRingCell;
    self->_threeRingCell = v3;
  }

  v187 = self;
  v179 = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  if (self->_dataIsHidden)
  {
    [(CHFriendDetailThreeRingCell *)self->_threeRingCell setHidden:1];
    goto LABEL_11;
  }

  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot)
  {
    v6 = [(_HKFitnessFriendActivitySnapshot *)activitySnapshot hasCarriedForwardGoals];
    v7 = self->_threeRingCell;
    if (v6)
    {
      [(CHFriendDetailThreeRingCell *)v7 setActivitySummary:0 animated:1];
      -[CHFriendDetailThreeRingCell setIsStandalonePhoneFitnessMode:](self->_threeRingCell, "setIsStandalonePhoneFitnessMode:", [v179 _isStandalonePhoneSummary]);
      goto LABEL_11;
    }

    v8 = v179;
  }

  else
  {
    v7 = self->_threeRingCell;
    v8 = 0;
  }

  [(CHFriendDetailThreeRingCell *)v7 setActivitySummary:v8 animated:1];
LABEL_11:
  if (!self->_dateCell)
  {
    v9 = [[CHFriendDetailDateCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    dateCell = self->_dateCell;
    self->_dateCell = v9;
  }

  v11 = [(ASFriend *)self->_friend as_simpleHiddenFromString];
  v183 = v11;
  v12 = self;
  v13 = self->_dateCell;
  if (!v187->_dataIsHidden || v11 == 0)
  {
    v15 = [FIUIDateFormattingUtilities stringWithDayNameAndShortMonthFromDate:v187->_snapshotDate];
    [(CHFriendDetailDateCell *)v13 setText:v15];

    v12 = v187;
  }

  else
  {
    [(CHFriendDetailDateCell *)v187->_dateCell setText:?];
  }

  competitionScoreCell = v12->_competitionScoreCell;
  if (!competitionScoreCell)
  {
    v17 = [[CHFriendDetailCompetitionScoreCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v18 = v12->_competitionScoreCell;
    v12->_competitionScoreCell = v17;

    competitionScoreCell = v12->_competitionScoreCell;
  }

  v19 = v12->_friend;
  v20 = [(ASFriend *)v19 currentCompetition];
  [(CHFriendDetailCompetitionScoreCell *)competitionScoreCell setFriend:v19 competition:v20];

  if (!v187->_competitionGraphCell)
  {
    v21 = [[CHFriendDetailCompetitionGraphCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    competitionGraphCell = v187->_competitionGraphCell;
    v187->_competitionGraphCell = v21;
  }

  v23 = [(ASFriend *)v187->_friend currentCompetition];
  [(CHFriendDetailCompetitionGraphCell *)v187->_competitionGraphCell setCompetition:v23];

  competitionTotalWinsCell = v187->_competitionTotalWinsCell;
  if (!competitionTotalWinsCell)
  {
    v25 = [[CHFriendDetailCompetitionTotalWinsCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v26 = v187->_competitionTotalWinsCell;
    v187->_competitionTotalWinsCell = v25;

    competitionTotalWinsCell = v187->_competitionTotalWinsCell;
  }

  v27 = v187->_friend;
  v28 = [(ASFriend *)v27 currentCompetition];
  [(CHFriendDetailCompetitionTotalWinsCell *)competitionTotalWinsCell setFriend:v27 competition:v28];

  moveCell = v187->_moveCell;
  if (!moveCell)
  {
    v30 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v31 = v187->_moveCell;
    v187->_moveCell = v30;

    moveCell = v187->_moveCell;
  }

  v32 = +[ARUIMetricColors energyColors];
  v33 = [v32 nonGradientTextColor];
  [(CHFriendDetailGoalCell *)moveCell setKeyColor:v33];

  v34 = v187->_moveCell;
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"MOVE" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v34 setTitle:v36];

  if ([(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot isAmm])
  {
    v37 = v187->_moveCell;
    [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot mmv];
    v38 = [NSNumber numberWithDouble:?];
    [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot mmg];
    v39 = [NSNumber numberWithDouble:?];
    v40 = +[NSBundle mainBundle];
    v41 = [v40 localizedStringForKey:@"MIN" value:&stru_1008680E8 table:@"Localizable"];
    [(CHFriendDetailGoalCell *)v37 setCurrentValue:v38 goalValue:v39 unitString:v41];

    v42 = v187;
  }

  else
  {
    formattingManager = v187->_formattingManager;
    [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot energyBurned];
    [(FIUIFormattingManager *)formattingManager energyBurnedInUserUnitForCalories:?];
    v38 = [NSNumber numberWithDouble:?];
    v44 = v187->_formattingManager;
    [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot energyBurnedGoal];
    [(FIUIFormattingManager *)v44 energyBurnedInUserUnitForCalories:?];
    v39 = [NSNumber numberWithDouble:?];
    v45 = [(FIUIFormattingManager *)v187->_formattingManager localizedShortActiveEnergyUnitString];
    v40 = [v45 localizedUppercaseString];

    v42 = v187;
    [(CHFriendDetailGoalCell *)v187->_moveCell setCurrentValue:v38 goalValue:v39 unitString:v40];
  }

  exerciseCell = v42->_exerciseCell;
  if (!exerciseCell)
  {
    v47 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v48 = v42->_exerciseCell;
    v42->_exerciseCell = v47;

    exerciseCell = v42->_exerciseCell;
  }

  v49 = +[ARUIMetricColors briskColors];
  v50 = [v49 nonGradientTextColor];
  [(CHFriendDetailGoalCell *)exerciseCell setKeyColor:v50];

  v51 = v187->_exerciseCell;
  v52 = +[NSBundle mainBundle];
  v53 = [v52 localizedStringForKey:@"EXERCISE" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v51 setTitle:v53];

  v54 = v187->_exerciseCell;
  [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot briskMinutes];
  v55 = [NSNumber numberWithDouble:?];
  [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot briskMinutesGoal];
  v56 = [NSNumber numberWithDouble:?];
  v57 = +[NSBundle mainBundle];
  v58 = [v57 localizedStringForKey:@"MIN" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v54 setCurrentValue:v55 goalValue:v56 unitString:v58];

  if (v187->_isMe)
  {
    iAmWheelchairUser = v187->_iAmWheelchairUser;
  }

  else
  {
    [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot wheelchairUse];
    iAmWheelchairUser = FIUIIsWheelchairUserForWheelchairUse();
  }

  v60 = @"_WHEELCHAIR";
  if (!iAmWheelchairUser)
  {
    v60 = &stru_1008680E8;
  }

  v184 = v60;
  standCell = v187->_standCell;
  if (!standCell)
  {
    v62 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v63 = v187->_standCell;
    v187->_standCell = v62;

    standCell = v187->_standCell;
  }

  v64 = +[ARUIMetricColors sedentaryColors];
  v65 = [v64 nonGradientTextColor];
  [(CHFriendDetailGoalCell *)standCell setKeyColor:v65];

  v66 = v187->_standCell;
  v67 = +[NSBundle mainBundle];
  v68 = [@"STAND" stringByAppendingString:v184];
  v69 = [v67 localizedStringForKey:v68 value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v66 setTitle:v69];

  v70 = v187->_standCell;
  [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot activeHours];
  v71 = [NSNumber numberWithDouble:?];
  [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot activeHoursGoal];
  v72 = [NSNumber numberWithDouble:?];
  v73 = +[NSBundle mainBundle];
  v74 = [v73 localizedStringForKey:@"HRS" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v70 setCurrentValue:v71 goalValue:v72 unitString:v74];

  stepCell = v187->_stepCell;
  if (!stepCell)
  {
    v76 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v77 = v187->_stepCell;
    v187->_stepCell = v76;

    stepCell = v187->_stepCell;
  }

  v78 = +[UIColor lightGrayColor];
  [(CHFriendDetailGoalCell *)stepCell setKeyColor:v78];

  v79 = v187->_stepCell;
  v80 = +[NSBundle mainBundle];
  v81 = [@"STEPS_LABEL" stringByAppendingString:v184];
  v82 = [v80 localizedStringForKey:v81 value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v79 setTitle:v82];

  v83 = v187->_stepCell;
  v84 = v187->_activitySnapshot;
  if (iAmWheelchairUser)
  {
    [(_HKFitnessFriendActivitySnapshot *)v84 pushCount];
  }

  else
  {
    [(_HKFitnessFriendActivitySnapshot *)v84 stepCount];
  }

  v85 = [NSNumber numberWithDouble:?];
  [(CHFriendDetailGoalCell *)v83 setCurrentValue:v85];

  distanceCell = v187->_distanceCell;
  if (!distanceCell)
  {
    v87 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v88 = v187->_distanceCell;
    v187->_distanceCell = v87;

    distanceCell = v187->_distanceCell;
  }

  v89 = +[UIColor lightGrayColor];
  [(CHFriendDetailGoalCell *)distanceCell setKeyColor:v89];

  v90 = v187->_distanceCell;
  v91 = +[NSBundle mainBundle];
  v92 = [v91 localizedStringForKey:@"DISTANCE_LABEL" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v90 setTitle:v92];

  v93 = [(FIUIFormattingManager *)v187->_formattingManager unitManager];
  [(_HKFitnessFriendActivitySnapshot *)v187->_activitySnapshot walkingAndRunningDistance];
  [v93 distanceInUserDistanceUnitForDistanceInMeters:1 distanceType:?];
  v182 = [NSNumber numberWithDouble:?];

  v94 = [(FIUIFormattingManager *)v187->_formattingManager localizedShortUnitStringForDistanceType:1];
  v181 = [v94 localizedUppercaseString];

  v95 = v187;
  [(CHFriendDetailGoalCell *)v187->_distanceCell setCurrentValue:v182 unitString:v181];
  [(CHFriendDetailGoalCell *)v187->_distanceCell setHidden:iAmWheelchairUser];
  v96 = v187->_todaysFriendWorkouts;
  v97 = v96;
  if (v187->_isMe)
  {
    v197 = 0u;
    v198 = 0u;
    v196 = 0u;
    v195 = 0u;
    v98 = v96;
    v99 = [(NSArray *)v98 countByEnumeratingWithState:&v195 objects:v213 count:16];
    if (v99)
    {
      v100 = *v196;
      do
      {
        for (i = 0; i != v99; i = i + 1)
        {
          if (*v196 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v102 = *(*(&v195 + 1) + 8 * i);
          workoutDataProvider = v187->_workoutDataProvider;
          v104 = [v102 UUID];
          [v102 setIsWatchWorkout:{-[CHWorkoutDataProvider isWatchWorkout:](workoutDataProvider, "isWatchWorkout:", v104)}];
        }

        v99 = [(NSArray *)v98 countByEnumeratingWithState:&v195 objects:v213 count:16];
      }

      while (v99);
    }

    v95 = v187;
  }

  objc_initWeak(&location, v95);
  v105 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v97, "count")}];
  workoutCellsArray = v187->_workoutCellsArray;
  v187->_workoutCellsArray = v105;

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  obj = v97;
  v107 = [(NSArray *)obj countByEnumeratingWithState:&v190 objects:v212 count:16];
  if (v107)
  {
    v108 = *v191;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      for (j = 0; j != v107; j = j + 1)
      {
        if (*v191 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v113 = [*(*(&v190 + 1) + 8 * j) hkWorkoutFromFriendWorkout];
        v114 = [[CHWorkoutCellImageLabelView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        fitnessAppContext = v187->_fitnessAppContext;
        workoutFormattingManager = v187->_workoutFormattingManager;
        v188[0] = _NSConcreteStackBlock;
        v188[1] = 3221225472;
        v188[2] = sub_10012D900;
        v188[3] = &unk_10083A710;
        objc_copyWeak(&v189, &location);
        [(CHWorkoutCellImageLabelView *)v114 setWorkout:v113 fitnessAppContext:fitnessAppContext formattingManager:workoutFormattingManager achievementCount:0 completion:v188];
        [(CHWorkoutCellImageLabelView *)v114 setShowsSeparator:1];
        [(NSMutableArray *)v187->_workoutCellsArray addObject:v114];
        objc_destroyWeak(&v189);
      }

      v107 = [(NSArray *)obj countByEnumeratingWithState:&v190 objects:v212 count:16];
    }

    while (v107);
  }

  v117 = [(NSMutableArray *)v187->_workoutCellsArray lastObject];
  [v117 setShowsSeparator:0];

  v118 = [CHHorizontalScrollingAchievementsView alloc];
  v119 = CGRectZero.origin.y;
  v120 = CGRectZero.size.width;
  v121 = CGRectZero.size.height;
  v122 = [(CHHorizontalScrollingAchievementsView *)v118 initWithFrame:v187->_imageFactory badgeImageFactory:v187->_achievementLocProvider locProvider:CGRectZero.origin.x, v119, v120, v121];
  achievementsCell = v187->_achievementsCell;
  v187->_achievementsCell = v122;

  [(CHHorizontalScrollingAchievementsView *)v187->_achievementsCell setDelegate:v187];
  [(CHHorizontalScrollingAchievementsView *)v187->_achievementsCell setScrollViewContentInset:0.0, 16.0, 0.0, 16.0];
  v124 = [(NSSet *)v187->_todaysAchievements allObjects];
  [(CHHorizontalScrollingAchievementsView *)v187->_achievementsCell setAchievements:v124];

  v125 = v187;
  v126 = objc_alloc_init(NSMutableAttributedString);
  if (v187->_sharingInfoText)
  {
    v127 = [NSAttributedString alloc];
    sharingInfoText = v187->_sharingInfoText;
    v210[0] = NSFontAttributeName;
    v129 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v211[0] = v129;
    v210[1] = NSForegroundColorAttributeName;
    v130 = +[UIColor secondaryLabelColor];
    v211[1] = v130;
    v131 = [NSDictionary dictionaryWithObjects:v211 forKeys:v210 count:2];
    v132 = [v127 initWithString:sharingInfoText attributes:v131];
    [v126 appendAttributedString:v132];

    v125 = v187;
  }

  if (([(ASFriend *)v125->_friend hasPendingCompetitionRequestFromMe]& 1) != 0 || [(ASFriend *)v125->_friend isCompetitionActive])
  {
    v133 = [(ASFriend *)v125->_friend as_competitionStatusBreadcrumbStringForExperienceType:v125->_experienceType];
    v134 = [NSString stringWithFormat:@"\n%@", v133];
    v135 = [NSAttributedString alloc];
    v208[0] = NSFontAttributeName;
    v136 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v209[0] = v136;
    v208[1] = NSForegroundColorAttributeName;
    v137 = +[UIColor as_darkCompetitionGold];
    v209[1] = v137;
    v138 = [NSDictionary dictionaryWithObjects:v209 forKeys:v208 count:2];
    v139 = [v135 initWithString:v134 attributes:v138];
    [v126 appendAttributedString:v139];

    v125 = v187;
  }

  v140 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v119, v120, v121}];
  sharingInfoSizingLabel = v125->_sharingInfoSizingLabel;
  v125->_sharingInfoSizingLabel = v140;

  p_isa = &v187->super.super.super.isa;
  [(UILabel *)v187->_sharingInfoSizingLabel setAttributedText:v126];
  [(UILabel *)v187->_sharingInfoSizingLabel setNumberOfLines:0];
  v143 = objc_alloc_init(NSMutableArray);
  v144 = objc_alloc_init(NSMutableArray);
  if ([(CHFriendDetailCollectionViewController *)v187 _shouldShowCompetitionRequestAction])
  {
    v145 = +[NSBundle mainBundle];
    v146 = [v145 localizedStringForKey:@"COMPETITION_SEND_ACTION_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    v147 = [(ASFriend *)v187->_friend displayName];
    v148 = [NSString localizedStringWithFormat:v146, v147];

    [v143 addObject:&off_10086E3B0];
    [v144 addObject:v148];
  }

  else if ([(CHFriendDetailCollectionViewController *)v187 _shouldShowCompetitionAcceptAction])
  {
    v149 = +[NSBundle mainBundle];
    v148 = [v149 localizedStringForKey:@"COMPETITION_ACCEPT_ACTION_TITLE" value:&stru_1008680E8 table:@"Localizable"];

    [v143 addObject:&off_10086E3C8];
    [v144 addObject:v148];
  }

  else
  {
    if (![(CHFriendDetailCollectionViewController *)v187 _shouldShowCompetitionRulesAction])
    {
      goto LABEL_74;
    }

    v148 = [(ASFriend *)v187->_friend as_competitionLearnMoreDetailActionForExperienceType:v187->_experienceType];
    [v143 addObject:&off_10086E3E0];
    [v144 addObject:v148];
  }

  p_isa = &v187->super.super.super.isa;
LABEL_74:
  if ([p_isa _shouldShowMuteAction])
  {
    if ([p_isa[4] isMuted])
    {
      v150 = ActivitySharingBundle();
      [v150 localizedStringForKey:@"UNMUTE_NOTIFICATIONS" value:&stru_1008680E8 table:@"Localizable"];
    }

    else
    {
      v150 = ActivitySharingBundle();
      [v150 localizedStringForKey:@"MUTE_NOTIFICATIONS" value:&stru_1008680E8 table:@"Localizable"];
    }
    v151 = ;

    [v143 addObject:&off_10086E3F8];
    [v144 addObject:v151];

    p_isa = &v187->super.super.super.isa;
  }

  if ([p_isa[4] canSeeMyActivityData])
  {
    v152 = ActivitySharingBundle();
    [v152 localizedStringForKey:@"HIDE_MY_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
  }

  else
  {
    v152 = ActivitySharingBundle();
    [v152 localizedStringForKey:@"SHOW_MY_ACTIVITY" value:&stru_1008680E8 table:@"Localizable"];
  }
  v185 = ;

  [v143 addObject:&off_10086E410];
  [v144 addObject:v185];
  v153 = ActivitySharingBundle();
  v180 = [v153 localizedStringForKey:@"REMOVE_FRIEND" value:&stru_1008680E8 table:@"Localizable"];

  [v143 addObject:&off_10086E428];
  [v144 addObject:v180];
  v154 = [[CHFriendDetailActionListView alloc] initWithFrame:CGRectZero.origin.x, v119, v120, v121];
  actionListCell = v187->_actionListCell;
  v187->_actionListCell = v154;

  [(CHFriendDetailActionListView *)v187->_actionListCell setDelegate:v187];
  [(CHFriendDetailActionListView *)v187->_actionListCell configureWithActionTypes:v143 labelTexts:v144 footerText:v126];
  v156 = [[NSMutableArray alloc] initWithCapacity:10];
  itemsArray = v187->_itemsArray;
  v187->_itemsArray = v156;

  v158 = v187->_itemsArray;
  v159 = v187->_dateCell;
  v207[0] = v187->_threeRingCell;
  v207[1] = v159;
  v160 = [NSArray arrayWithObjects:v207 count:2];
  [(NSMutableArray *)v158 addObject:v160];

  v161 = v187->_itemsArray;
  v206 = v187->_competitionScoreCell;
  v162 = [NSArray arrayWithObjects:&v206 count:1];
  [(NSMutableArray *)v161 addObject:v162];

  v163 = v187->_itemsArray;
  v205 = v187->_competitionGraphCell;
  v164 = [NSArray arrayWithObjects:&v205 count:1];
  [(NSMutableArray *)v163 addObject:v164];

  v165 = v187->_itemsArray;
  v204 = v187->_competitionTotalWinsCell;
  v166 = [NSArray arrayWithObjects:&v204 count:1];
  [(NSMutableArray *)v165 addObject:v166];

  v167 = v187->_itemsArray;
  v203 = v187->_moveCell;
  v168 = [NSArray arrayWithObjects:&v203 count:1];
  [(NSMutableArray *)v167 addObject:v168];

  v169 = v187->_itemsArray;
  v170 = v187->_standCell;
  v202[0] = v187->_exerciseCell;
  v202[1] = v170;
  v171 = [NSArray arrayWithObjects:v202 count:2];
  [(NSMutableArray *)v169 addObject:v171];

  v172 = v187->_itemsArray;
  v173 = v187->_distanceCell;
  v201[0] = v187->_stepCell;
  v201[1] = v173;
  v174 = [NSArray arrayWithObjects:v201 count:2];
  [(NSMutableArray *)v172 addObject:v174];

  [(NSMutableArray *)v187->_itemsArray addObject:v187->_workoutCellsArray];
  v175 = v187->_itemsArray;
  v200 = v187->_achievementsCell;
  v176 = [NSArray arrayWithObjects:&v200 count:1];
  [(NSMutableArray *)v175 addObject:v176];

  v177 = v187->_itemsArray;
  v199 = v187->_actionListCell;
  v178 = [NSArray arrayWithObjects:&v199 count:1];
  [(NSMutableArray *)v177 addObject:v178];

  objc_destroyWeak(&location);
}

- (void)_setupNumberOfItemsInSection
{
  v3 = [[NSMutableArray alloc] initWithCapacity:10];
  numItemsInSectionArray = self->_numItemsInSectionArray;
  self->_numItemsInSectionArray = v3;

  [(NSMutableArray *)self->_numItemsInSectionArray addObject:&off_10086E440];
  v5 = [(ASFriend *)self->_friend isCompetitionActive];
  v6 = self->_numItemsInSectionArray;
  v7 = [NSNumber numberWithUnsignedInteger:v5];
  [(NSMutableArray *)v6 addObject:v7];

  v8 = [(ASFriend *)self->_friend isCompetitionActive];
  v9 = self->_numItemsInSectionArray;
  v10 = [NSNumber numberWithUnsignedInteger:v8];
  [(NSMutableArray *)v9 addObject:v10];

  if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = [(ASFriend *)self->_friend hasCompetitionHistory];
  }

  v12 = self->_numItemsInSectionArray;
  v13 = [NSNumber numberWithUnsignedInteger:v11];
  [(NSMutableArray *)v12 addObject:v13];

  [(NSMutableArray *)self->_numItemsInSectionArray addObject:&off_10086E458];
  if ([(CHFriendDetailCollectionViewController *)self _shouldShowExerciseAndStandCells])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = self->_numItemsInSectionArray;
  v16 = [NSNumber numberWithInteger:v14];
  [(NSMutableArray *)v15 addObject:v16];

  if ([(CHFriendDetailCollectionViewController *)self _shouldShowStepsAndDistanceCells])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = self->_numItemsInSectionArray;
  v19 = [NSNumber numberWithInteger:v17];
  [(NSMutableArray *)v18 addObject:v19];

  v20 = self->_numItemsInSectionArray;
  v21 = [NSNumber numberWithUnsignedInteger:[(NSArray *)self->_todaysFriendWorkouts count]];
  [(NSMutableArray *)v20 addObject:v21];

  v22 = [(NSSet *)self->_todaysAchievements count]!= 0;
  v23 = self->_numItemsInSectionArray;
  v24 = [NSNumber numberWithInteger:v22];
  [(NSMutableArray *)v23 addObject:v24];

  isMe = self->_isMe;
  v26 = self->_numItemsInSectionArray;
  v27 = [NSNumber numberWithInteger:!isMe];
  [(NSMutableArray *)v26 addObject:v27];
}

- (void)_setupCellSizes
{
  v3 = [[NSMutableArray alloc] initWithCapacity:10];
  sizesArray = self->_sizesArray;
  self->_sizesArray = v3;

  v5 = [(CHFriendDetailCollectionViewController *)self view];
  [v5 bounds];
  v7 = v6;

  v8 = [(CHFriendDetailCollectionViewController *)self view];
  UIFloorToViewScale();
  v10 = v9;

  [(CHFriendDetailThreeRingCell *)self->_threeRingCell preferredWidth];
  v12 = v11;
  [(CHFriendDetailThreeRingCell *)self->_threeRingCell preferredHeight];
  v14 = v13;
  v15 = [NSValue valueWithCGSize:v12, v13];
  [(CHFriendDetailThreeRingCell *)self->_threeRingCell preferredWidth];
  v17 = [NSValue valueWithCGSize:v7 - v16, v14];
  v18 = self->_sizesArray;
  v90 = v17;
  v91 = v15;
  v105[0] = v15;
  v105[1] = v17;
  v19 = [NSArray arrayWithObjects:v105 count:2];
  [(NSMutableArray *)v18 addObject:v19];

  [(CHFriendDetailCompetitionScoreCell *)self->_competitionScoreCell preferredHeightForFriend:self->_friend];
  v21 = [NSValue valueWithSize:v7 - (16.0 + 16.0), v20];
  v22 = self->_sizesArray;
  v89 = v21;
  v104 = v21;
  v23 = [NSArray arrayWithObjects:&v104 count:1];
  [(NSMutableArray *)v22 addObject:v23];

  [(CHFriendDetailCompetitionGraphCell *)self->_competitionGraphCell preferredHeight];
  v25 = [NSValue valueWithSize:v7 - (16.0 + 16.0), v24];
  v26 = self->_sizesArray;
  v88 = v25;
  v103 = v25;
  v27 = [NSArray arrayWithObjects:&v103 count:1];
  [(NSMutableArray *)v26 addObject:v27];

  [(CHFriendDetailCompetitionTotalWinsCell *)self->_competitionTotalWinsCell preferredHeightForFriend:self->_friend];
  v29 = [NSValue valueWithSize:v7 - (16.0 + 16.0), v28];
  v30 = self->_sizesArray;
  v87 = v29;
  v102 = v29;
  v31 = [NSArray arrayWithObjects:&v102 count:1];
  [(NSMutableArray *)v30 addObject:v31];

  +[CHFriendDetailGoalCell preferredHeight];
  v33 = [NSValue valueWithCGSize:v7 - (16.0 + 16.0), v32];
  v34 = self->_sizesArray;
  v86 = v33;
  v101 = v33;
  v35 = [NSArray arrayWithObjects:&v101 count:1];
  [(NSMutableArray *)v34 addObject:v35];

  [(CHFriendDetailCollectionViewController *)self _sizeForGoalCell:self->_exerciseCell withPreferredWidth:v10 availableWidth:v7 - (16.0 + 16.0)];
  v37 = v36;
  v39 = v38;
  v40 = [NSValue valueWithCGSize:?];
  v41 = [NSValue valueWithCGSize:v37, v39];
  v42 = self->_sizesArray;
  v84 = v41;
  v85 = v40;
  v100[0] = v40;
  v100[1] = v41;
  v43 = [NSArray arrayWithObjects:v100 count:2];
  [(NSMutableArray *)v42 addObject:v43];

  [(CHFriendDetailCollectionViewController *)self _sizeForGoalCell:self->_stepCell withPreferredWidth:v10 availableWidth:v7 - (16.0 + 16.0)];
  v45 = v44;
  v47 = v46;
  [(CHFriendDetailCollectionViewController *)self _sizeForGoalCell:self->_distanceCell withPreferredWidth:v10 availableWidth:v7 - (16.0 + 16.0)];
  v49 = v48;
  v51 = v50;
  v52 = [NSValue valueWithCGSize:v45, v47];
  v53 = [NSValue valueWithCGSize:v49, v51];
  v54 = self->_sizesArray;
  v82 = v53;
  v83 = v52;
  v99[0] = v52;
  v99[1] = v53;
  v55 = [NSArray arrayWithObjects:v99 count:2];
  [(NSMutableArray *)v54 addObject:v55];

  v56 = [(NSMutableArray *)self->_workoutCellsArray copy];
  v57 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v56, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v58 = v56;
  v59 = [v58 countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v93;
    do
    {
      v62 = 0;
      do
      {
        if (*v93 != v61)
        {
          objc_enumerationMutation(v58);
        }

        [*(*(&v92 + 1) + 8 * v62) preferredHeightForWidth:v7 - (16.0 + 16.0)];
        v64 = [NSValue valueWithCGSize:v7 - (16.0 + 16.0), v63];
        [v57 addObject:v64];

        v62 = v62 + 1;
      }

      while (v60 != v62);
      v60 = [v58 countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v60);
  }

  [(NSMutableArray *)self->_sizesArray addObject:v57];
  v65 = [NSValue valueWithCGSize:v7, 70.0];
  v66 = self->_sizesArray;
  v97 = v65;
  v67 = [NSArray arrayWithObjects:&v97 count:1];
  [(NSMutableArray *)v66 addObject:v67];

  v68 = [(UILabel *)self->_sharingInfoSizingLabel text];

  if (v68)
  {
    v69 = [(CHFriendDetailCollectionViewController *)self view];
    [v69 valueForSmallWidth:32.0 mediumWidth:40.0 largeWidth:40.0];
    v71 = v70;

    [(UILabel *)self->_sharingInfoSizingLabel sizeThatFits:v7 - v71 * 2.0, 1.79769313e308];
    v73 = v72;
    v74 = [(UILabel *)self->_sharingInfoSizingLabel font];
    [v74 _scaledValueForValue:12.0];
    v76 = v75;

    v77 = v73 + v76 * 2.0;
  }

  else
  {
    v77 = 0.0;
  }

  +[CHFriendDetailActionCell preferredCellHeight];
  v79 = [NSValue valueWithCGSize:v7, v77 + v78 * [(CHFriendDetailActionListView *)self->_actionListCell actionCount]+ 35.0];
  v80 = self->_sizesArray;
  v96 = v79;
  v81 = [NSArray arrayWithObjects:&v96 count:1];
  [(NSMutableArray *)v80 addObject:v81];
}

- (CGSize)_sizeForGoalCell:(id)a3 withPreferredWidth:(double)a4 availableWidth:(double)a5
{
  v7 = a3;
  [v7 sizeThatFits:{a5, 1.79769313e308}];
  if (v8 <= a4)
  {
    a5 = a4;
  }

  v9 = objc_opt_class();

  [v9 preferredHeight];
  v11 = v10;
  v12 = a5;
  result.height = v11;
  result.width = v12;
  return result;
}

- (id)_fontForSectionHeaderType:(int64_t)a3
{
  if ((a3 - 2) < 9 || a3 == 0)
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  }

  else if (a3 == 1)
  {
    v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v7 = [v6 fontDescriptorWithSymbolicTraits:0x8000];

    v3 = [UIFont fontWithDescriptor:v7 size:0.0];
  }

  return v3;
}

- (void)_reloadData
{
  [(CHFriendDetailCollectionViewController *)self _setupNumberOfItemsInSection];
  [(CHFriendDetailCollectionViewController *)self _setupCells];
  [(CHFriendDetailCollectionViewController *)self _setupCellSizes];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)_infoButtonTapped:(id)a3
{
  v4 = [(ASFriend *)self->_friend contact];
  v5 = [v4 linkedContactStoreIdentifier];

  if (v5)
  {
    v6 = objc_alloc_init(CNContactStore);
    v7 = [(ASFriend *)self->_friend contact];
    v8 = [v7 linkedContactStoreIdentifier];
    v9 = [CNContactViewController descriptorForRequiredKeys:CNContactEmailAddressesKey];
    v21[2] = v9;
    v10 = [NSArray arrayWithObjects:v21 count:3];
    v11 = [v6 unifiedContactWithIdentifier:v8 keysToFetch:v10 error:0];

    v12 = [CNContactViewController viewControllerForContact:v11];
  }

  else
  {
    v13 = [(ASFriend *)self->_friend contact];
    v6 = [v13 primaryDestinationForMessaging];

    v14 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v6];
    v12 = [CNContactViewController viewControllerForUnknownContact:v14];
  }

  [v12 setDelegate:self];
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissContactInfo"];
  v16 = [v12 navigationItem];
  [v16 setLeftBarButtonItem:v15];

  v17 = [[UINavigationController alloc] initWithRootViewController:v12];
  contactNavigationController = self->_contactNavigationController;
  self->_contactNavigationController = v17;

  v19 = +[UIColor systemBlueColor];
  v20 = [(UINavigationController *)self->_contactNavigationController view];
  [v20 setTintColor:v19];

  [(CHFriendDetailCollectionViewController *)self presentViewController:self->_contactNavigationController animated:1 completion:0];
}

- (void)_sendMessageButtonTapped:(id)a3
{
  ASLoggingInitialize();
  v4 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Send Message tapped on the phone. Launching to messages app.", v8, 2u);
  }

  v5 = [(ASFriend *)self->_friend contact];
  v6 = [v5 primaryDestinationForMessaging];

  if (v6)
  {
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    ASLaunchToMessagesWithRecipients();
  }
}

- (void)_showShareOptions:(id)a3
{
  v4 = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  v5 = sub_1000B841C(v4, self->_snapshotDate, self->_iAmWheelchairUser);

  v6 = sub_1000B86E8(self->_snapshotDate);
  sharingImage = self->_sharingImage;
  self->_sharingImage = v5;
  v8 = v5;

  sharingText = self->_sharingText;
  self->_sharingText = v6;
  v10 = v6;

  v11 = [UIActivityViewController alloc];
  v15[0] = v8;
  v15[1] = v10;
  v15[2] = self;
  v12 = [NSArray arrayWithObjects:v15 count:3];

  v13 = [v11 initWithActivityItems:v12 applicationActivities:0];
  v14 = sub_1000B882C();
  [v13 setExcludedActivityTypes:v14];

  [(CHFriendDetailCollectionViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  if (self->_sharingImage && self->_sharingText)
  {
    v4 = objc_alloc_init(LPLinkMetadata);
    [v4 setSummary:self->_sharingText];
    v5 = [LPImage alloc];
    v6 = UIImagePNGRepresentation(self->_sharingImage);
    v7 = [v5 initWithData:v6 MIMEType:@"image/png"];
    [v4 setImage:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  activitySnapshot = self->_activitySnapshot;
  dataIsHidden = self->_dataIsHidden;
  v8 = [(NSMutableArray *)self->_numItemsInSectionArray objectAtIndexedSubscript:a4];
  v9 = [v8 integerValue];

  if ((dataIsHidden || !activitySnapshot) && ![(CHFriendDetailCollectionViewController *)self _shouldShowWhileDataIsHiddenForSection:a4])
  {
    return 0;
  }

  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:v6];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 contentView];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * i) removeFromSuperview];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = -[NSMutableArray objectAtIndexedSubscript:](self->_itemsArray, "objectAtIndexedSubscript:", [v6 section]);
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  [v7 bounds];
  [v15 setFrame:?];
  v16 = [v7 contentView];
  [v16 addSubview:v15];

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![a4 isEqualToString:UICollectionElementKindSectionHeader])
  {
    v10 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"Footer" forIndexPath:v9];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v28 = [v10 subviews];
    v29 = [v28 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v71;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v70 + 1) + 8 * i) removeFromSuperview];
        }

        v30 = [v28 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v30);
    }

    v33 = [(CHFriendDetailCollectionViewController *)self collectionView:v8 numberOfItemsInSection:8];
    v34 = [(CHFriendDetailCollectionViewController *)self collectionView:v8 numberOfItemsInSection:7];
    if ([v9 section] == 8 || v33 <= 0 && (objc_msgSend(v9, "section") == 7 || v34 <= 0 && objc_msgSend(v9, "section") == 6) || objc_msgSend(v9, "section") == 9)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 16.0;
    }

    v49 = [UIView alloc];
    [v10 bounds];
    v50 = CGRectGetWidth(v89) - v35;
    [v10 bounds];
    v17 = [v49 initWithFrame:{v35, 0.0, v50, CGRectGetHeight(v90)}];
    v51 = +[UIColor separatorColor];
    [v17 setBackgroundColor:v51];

    v52 = v34 > 0 && v33 < 1;
    v53 = v34 > 0 || v33 > 0;
    if ((v33 < 1 || [v9 section] != 8) && (!v52 || objc_msgSend(v9, "section") != 7) && (v53 || objc_msgSend(v9, "section") != 6) && objc_msgSend(v9, "section") != 9 && (objc_msgSend(v9, "section") != 1 || (-[ASFriend isCompetitionActive](self->_friend, "isCompetitionActive") & 1) == 0))
    {
      [v10 addSubview:v17];
    }

    goto LABEL_58;
  }

  v10 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header" forIndexPath:v9];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = [v10 contentView];
  v12 = [v11 subviews];

  v13 = [v12 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v75;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v75 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v74 + 1) + 8 * j) removeFromSuperview];
      }

      v14 = [v12 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v14);
  }

  if ([v9 section] == 7)
  {
    v17 = objc_alloc_init(UILabel);
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"WORKOUTS" value:&stru_1008680E8 table:@"Localizable"];
    [v17 setText:v19];

    v20 = +[UIColor secondaryLabelColor];
    [v17 setTextColor:v20];

    v21 = [(CHFriendDetailCollectionViewController *)self _fontForSectionHeaderType:7];
    [v17 setFont:v21];

    [v17 sizeToFit];
    [v10 bounds];
    MaxY = CGRectGetMaxY(v81);
    [v17 bounds];
    v23 = MaxY - CGRectGetHeight(v82);
    v24 = [v17 font];
    [v24 descender];
    v26 = v23 - v25;
    [v8 bounds];
    v27 = CGRectGetWidth(v83) - 16.0 - 16.0;
    [v17 bounds];
    [v17 setFrame:{16.0, v26, v27, CGRectGetHeight(v84)}];

LABEL_57:
    v68 = [v10 contentView];
    [v68 addSubview:v17];

LABEL_58:
    goto LABEL_59;
  }

  if ([v9 section] == 8)
  {
    v17 = objc_alloc_init(UILabel);
    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"AWARDS" value:&stru_1008680E8 table:@"Localizable"];
    [v17 setText:v37];

    v38 = +[UIColor labelColor];
    [v17 setTextColor:v38];

    v39 = [(CHFriendDetailCollectionViewController *)self _fontForSectionHeaderType:8];
    [v17 setFont:v39];

    [v17 sizeToFit];
    [v10 bounds];
    CGRectGetHeight(v85);
    [v17 bounds];
    CGRectGetHeight(v86);
    v40 = [(CHFriendDetailCollectionViewController *)self view];
    UIRoundToViewScale();
    v42 = v41;

    [v8 bounds];
    v43 = CGRectGetWidth(v87) - 16.0 - 16.0;
    [v17 bounds];
    [v17 setFrame:{16.0, v42, v43, CGRectGetHeight(v88)}];
    goto LABEL_57;
  }

  if ([v9 section] != 4)
  {
    if ([v9 section] == 1)
    {
      v17 = objc_alloc_init(UILabel);
      v54 = +[NSBundle mainBundle];
      v55 = [v54 localizedStringForKey:@"COMPETITION_SCORE_HEADER" value:&stru_1008680E8 table:@"Localizable"];
      [v17 setText:v55];

      v56 = +[UIColor secondaryLabelColor];
      [v17 setTextColor:v56];

      v47 = self;
      v48 = 1;
    }

    else
    {
      if ([v9 section] != 3)
      {
        goto LABEL_59;
      }

      v17 = objc_alloc_init(UILabel);
      v57 = [(ASFriend *)self->_friend isCompetitionActive];
      v58 = +[NSBundle mainBundle];
      v59 = v58;
      if (v57)
      {
        v60 = @"COMPETITION_TOTAL_WINS_HEADER_ACTIVE";
      }

      else
      {
        v60 = @"COMPETITION_TOTAL_WINS_HEADER_INACTIVE";
      }

      v61 = [v58 localizedStringForKey:v60 value:&stru_1008680E8 table:@"Localizable"];
      [v17 setText:v61];

      v62 = +[UIColor secondaryLabelColor];
      [v17 setTextColor:v62];

      v47 = self;
      v48 = 3;
    }

    goto LABEL_56;
  }

  if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0 || [(ASFriend *)self->_friend hasCompetitionHistory])
  {
    v17 = objc_alloc_init(UILabel);
    v44 = +[NSBundle mainBundle];
    v45 = [v44 localizedStringForKey:@"FRIEND_DETAIL_ACTIVITY_HEADER" value:&stru_1008680E8 table:@"Localizable"];
    [v17 setText:v45];

    v46 = +[UIColor secondaryLabelColor];
    [v17 setTextColor:v46];

    v47 = self;
    v48 = 4;
LABEL_56:
    v63 = [(CHFriendDetailCollectionViewController *)v47 _fontForSectionHeaderType:v48];
    [v17 setFont:v63];

    [v17 sizeToFit];
    v64 = [v17 font];
    [v64 _scaledValueForValue:30.0];
    v66 = v65;

    [v8 bounds];
    v67 = CGRectGetWidth(v91) + 16.0 * -2.0;
    [v17 bounds];
    [v17 setFrame:{16.0, 0.0, v67, CGRectGetHeight(v92)}];
    [v17 _setFirstLineBaselineFrameOriginY:v66];
    goto LABEL_57;
  }

LABEL_59:

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = [v11 section] == 7;
  v6 = v11;
  if (v5)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_todaysFriendWorkouts, "objectAtIndexedSubscript:", [v11 row]);
    v8 = [v7 hkWorkoutFromFriendWorkout];
    v9 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
    v10 = [v9 isSeymourWorkout:v8];

    if (v10)
    {
      [(CHFitnessAppContext *)self->_fitnessAppContext navigateToWorkout:v8];
    }

    v6 = v11;
  }
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    if (self->_dataIsHidden)
    {
LABEL_7:
      bottom = 30.0;
      top = 0.0;
      left = 0.0;
      right = 0.0;
      goto LABEL_9;
    }

LABEL_8:
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    goto LABEL_9;
  }

  if (a5 == 9)
  {
    goto LABEL_8;
  }

  if (a5 == 8 && [(NSSet *)self->_todaysAchievements count])
  {
    goto LABEL_7;
  }

  left = 16.0;
  top = 0.0;
  bottom = 0.0;
  right = 16.0;
LABEL_9:

  v14 = top;
  v15 = left;
  v16 = bottom;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  sizesArray = self->_sizesArray;
  v6 = a5;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](sizesArray, "objectAtIndexedSubscript:", [v6 section]);
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  [v9 CGSizeValue];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a3;
  v8 = [(CHFriendDetailCollectionViewController *)self _fontForSectionHeaderType:a5];
  if (self->_dataIsHidden)
  {
    height = 0.0;
    if (![(CHFriendDetailCollectionViewController *)self _shouldShowWhileDataIsHiddenForSection:a5])
    {
      goto LABEL_17;
    }
  }

  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      v10 = 30.0;
      if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0)
      {
        goto LABEL_16;
      }
    }

    else if (a5 == 3)
    {
      v10 = 30.0;
      if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0 || ([(ASFriend *)self->_friend hasCompetitionHistory]& 1) != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_19;
  }

  if (a5 == 4)
  {
    v10 = 24.0;
    goto LABEL_16;
  }

  if (a5 == 7)
  {
    v10 = 28.0;
    if ([(NSArray *)self->_todaysFriendWorkouts count])
    {
      goto LABEL_16;
    }

LABEL_19:
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    goto LABEL_20;
  }

  if (a5 != 8 || ![(NSSet *)self->_todaysAchievements count])
  {
    goto LABEL_19;
  }

  v10 = 44.0;
LABEL_16:
  [v8 _scaledValueForValue:v10];
  height = v11;
LABEL_17:
  [v7 bounds];
  width = CGRectGetWidth(v16);
LABEL_20:

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v6 = a3;
  v7 = a5 + 1;
  do
  {
    v8 = v7;
    v9 = [v6 numberOfSections];
    if (v8 >= v9)
    {
      break;
    }

    v10 = [v6 numberOfItemsInSection:v8];
    v7 = v8 + 1;
  }

  while (v10 < 1);
  if (a5 == 2 || (v13 = [v6 numberOfItemsInSection:a5], v8 >= v9) || a5 < 1 || v13 < 1)
  {
    p_height = &CGSizeZero.height;
    width = CGSizeZero.width;
  }

  else
  {
    [v6 bounds];
    width = CGRectGetWidth(v18);
    if (qword_1008F9B68 != -1)
    {
      sub_10069CED4();
    }

    p_height = &qword_1008F9B60;
  }

  v14 = *p_height;

  v15 = width;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)_workoutsForFriend:(id)a3 snapshot:(id)a4
{
  v5 = a4;
  v6 = [a3 friendWorkouts];
  v7 = [v5 snapshotIndex];

  v8 = [NSNumber numberWithLongLong:v7];
  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = [v9 allObjects];
  v11 = [v10 sortedArrayUsingComparator:&stru_10083CF90];

  return v11;
}

- (void)_friendDataWasUpdated:(id)a3
{
  v4 = a3;
  if (self->_isMe)
  {
    v5 = [(ASFriendListSectionManager *)self->_friendListManager me];
    v6 = self->_friend;
    self->_friend = v5;
  }

  else
  {
    v6 = [(ASFriend *)self->_friend UUID];
    v7 = [(ASFriendListSectionManager *)self->_friendListManager friendWithUUID:v6];
    v8 = self->_friend;
    self->_friend = v7;

    v9 = [(ASFriend *)self->_friend as_detailedSharingDurationString];
    sharingInfoText = self->_sharingInfoText;
    self->_sharingInfoText = v9;

    v11 = [(ASFriend *)self->_friend displayName];
    v12 = [(CHFriendDetailCollectionViewController *)self navigationItem];
    [v12 setTitle:v11];

    v13 = [(ASFriend *)self->_friend displayName];
    [(CHFriendDetailCollectionViewController *)self setTitle:v13];
  }

  v14 = self->_friend;
  v15 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
  v16 = [(ASFriend *)v14 snapshotWithGoalsCarriedForwardForSnapshotIndex:v15];
  activitySnapshot = self->_activitySnapshot;
  self->_activitySnapshot = v16;

  v18 = [(CHFriendDetailCollectionViewController *)self _workoutsForFriend:self->_friend snapshot:self->_activitySnapshot];
  todaysFriendWorkouts = self->_todaysFriendWorkouts;
  self->_todaysFriendWorkouts = v18;

  if (self->_isMe)
  {
    if (self->_todaysAchievements)
    {
      v20 = [(ASFriend *)self->_friend friendAchievements];
      v21 = [v20 mutableCopy];

      todaysAchievements = self->_todaysAchievements;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10012FE98;
      v30[3] = &unk_10083CFB8;
      v30[4] = self;
      v23 = [(NSSet *)todaysAchievements hk_map:v30];
      v24 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
      [v21 setObject:v23 forKeyedSubscript:v24];

      [(ASFriend *)self->_friend setFriendAchievements:v21];
    }
  }

  else
  {
    v25 = [(ASFriend *)self->_friend friendAchievements];
    v26 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
    v27 = [v25 objectForKeyedSubscript:v26];
    v28 = [v27 mutableCopy];
    v29 = self->_todaysAchievements;
    self->_todaysAchievements = v28;

    self->_dataIsHidden = [(CHFriendDetailCollectionViewController *)self _isDataHidden];
  }

  [(CHFriendDetailCollectionViewController *)self _populateAchievements];
  [(CHFriendDetailCollectionViewController *)self _reloadData];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = a3;
  v6 = [(CHFriendDetailCollectionViewController *)self navigationController];
  v7 = [v6 topViewController];

  if (v7 == v5)
  {
    v9 = [(CHFriendDetailCollectionViewController *)self navigationController];
    v8 = [v9 popViewControllerAnimated:1];
  }
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  [v6 dismissViewControllerAnimated:1 completion:0];
  [(CHFriendDetailCollectionViewController *)self _logMessageComposeResult:a4 messageComposeViewController:v6];

  [CHFriendInboxTableViewController addFriendViewControllerDidDismiss:]_0();
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v8 = a5;
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = self->_achievementTransitionAnimator;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v3 = [(CHFriendDetailCollectionViewController *)self navigationController];
  v4 = [v3 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)achievementsView:(id)a3 didTapAchievement:(id)a4 cell:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CHFriendDetailCollectionViewController *)self navigationController];
  [v9 setDelegate:self];

  v10 = [[CHAchievementDetailViewController alloc] initWithAchievement:v8 locProvider:self->_achievementLocProvider formatsForFriend:!self->_isMe forDayView:0 forModalPresentation:0 shouldShowCelebration:0];
  v11 = [v7 contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [AAUIAchievementDetailTransitionAnimator alloc];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10013049C;
  v30[3] = &unk_10083A8B0;
  v31 = v7;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1001304A8;
  v28 = &unk_10083A8B0;
  v29 = v31;
  v21 = v31;
  v22 = [v20 initWithPresentingViewController:self detailViewController:v10 shouldPlayFlipInAnimation:1 initialBadgeFrame:v21 conversionView:v30 didStartAnimationBlock:&v25 didFinishAnimationBlock:{v13, v15, v17, v19}];
  achievementTransitionAnimator = self->_achievementTransitionAnimator;
  self->_achievementTransitionAnimator = v22;

  v24 = [(CHFriendDetailCollectionViewController *)self navigationController:v25];
  [v24 pushViewController:v10 animated:1];
}

- (void)friendDetailActionListView:(id)a3 didSelectActionType:(int64_t)a4
{
  v75 = a3;
  v6 = self->_friend;
  v7 = [(ASFriend *)v6 displayName];
  v8 = [NSString stringWithString:v7];

  if (a4 <= 2)
  {
    if (!a4)
    {
      v29 = [(ASFriend *)v6 isMuted];
      ASLoggingInitialize();
      v30 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = [(ASFriend *)v6 UUID];
        v33 = v29 ^ 1;
        *buf = 67109634;
        *v92 = v29 ^ 1;
        *&v92[4] = 2114;
        *&v92[6] = v32;
        *&v92[14] = 2112;
        *&v92[16] = v6;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Setting mute status to %d for friend: %{public}@ - %@", buf, 0x1Cu);
      }

      else
      {
        v33 = v29 ^ 1;
      }

      friendManager = self->_friendManager;
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_100131168;
      v88[3] = &unk_10083D008;
      v90 = v29;
      v89 = v8;
      [(CHFriendManager *)friendManager setMuteEnabled:v33 forFriend:v6 completion:v88];

      goto LABEL_29;
    }

    if (a4 != 1)
    {
      if (a4 == 2)
      {
        objc_initWeak(&location, self);
        ASLoggingInitialize();
        v9 = ASLogDefault;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(ASFriend *)self->_friend UUID];
          v11 = self->_friend;
          *buf = 138543618;
          *v92 = v10;
          *&v92[8] = 2112;
          *&v92[10] = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing friend: %{public}@ - %@", buf, 0x16u);
        }

        v12 = ActivitySharingBundle();
        v13 = [v12 localizedStringForKey:@"REMOVE_FRIEND" value:&stru_1008680E8 table:@"Localizable"];
        v14 = ActivitySharingBundle();
        v15 = [v14 localizedStringForKey:@"REMOVE_FRIEND_CONFIRM" value:&stru_1008680E8 table:@"Localizable"];
        v16 = [UIAlertController alertControllerWithTitle:v13 message:v15 preferredStyle:1];

        v17 = ActivitySharingBundle();
        v18 = [v17 localizedStringForKey:@"REMOVE_FRIEND_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
        v19 = [UIAlertAction actionWithTitle:v18 style:1 handler:0];
        [v16 addAction:v19];

        v20 = ActivitySharingBundle();
        v21 = [v20 localizedStringForKey:@"REMOVE_FRIEND_CONFIRM_ACTION" value:&stru_1008680E8 table:@"Localizable"];
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_100131968;
        v80[3] = &unk_10083D058;
        v80[4] = self;
        v81 = v8;
        objc_copyWeak(&v82, &location);
        v22 = [UIAlertAction actionWithTitle:v21 style:2 handler:v80];
        [v16 addAction:v22];

        [(CHFriendDetailCollectionViewController *)self presentViewController:v16 animated:1 completion:0];
        objc_destroyWeak(&v82);

        objc_destroyWeak(&location);
      }

      goto LABEL_29;
    }

    v49 = [(ASFriend *)v6 isMyActivityDataCurrentlyHidden];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100131498;
    v87[3] = &unk_10083D030;
    v87[4] = self;
    v50 = objc_retainBlock(v87);
    if (v49)
    {
      goto LABEL_17;
    }

    if ([(ASFriend *)v6 isCompetitionActive])
    {
      v63 = ActivitySharingBundle();
      v64 = [v63 localizedStringForKey:@"COMPETITION_IN_PROGRESS_HIDING_NOT_ALLOWED" value:&stru_1008680E8 table:@"Localizable"];
      v65 = [(ASFriend *)self->_friend displayName];
      v66 = [(ASFriend *)self->_friend displayName];
      v55 = [NSString stringWithFormat:v64, v65, v66];

      (v50[2])(v50, v55);
    }

    else
    {
      if (![(ASFriend *)self->_friend hasPendingCompetitionRequestFromMe])
      {
LABEL_17:
        ASLoggingInitialize();
        v51 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          v53 = [(ASFriend *)v6 UUID];
          *buf = 67109634;
          *v92 = v49;
          *&v92[4] = 2114;
          *&v92[6] = v53;
          *&v92[14] = 2112;
          *&v92[16] = v6;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Setting hiding status to %d for friend: %{public}@ - %@", buf, 0x1Cu);
        }

        v54 = self->_friendManager;
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_100131648;
        v84[3] = &unk_10083D008;
        v86 = v49 ^ 1;
        v85 = v8;
        [(CHFriendManager *)v54 setActivityDataVisible:v49 toFriend:v6 completion:v84];
        v55 = v85;
        goto LABEL_28;
      }

      v67 = ActivitySharingBundle();
      v68 = [v67 localizedStringForKey:@"COMPETITION_SENT_HIDING_NOT_ALLOWED" value:&stru_1008680E8 table:@"Localizable"];
      v69 = [(ASFriend *)self->_friend displayName];
      v70 = [(ASFriend *)self->_friend displayName];
      v55 = [NSString stringWithFormat:v68, v69, v70];

      (v50[2])(v50, v55);
    }

LABEL_28:

    goto LABEL_29;
  }

  switch(a4)
  {
    case 3:
      pairedWatchSupportsCompetitions = self->_pairedWatchSupportsCompetitions;
      v74 = [(ASFriend *)self->_friend as_competitionSendConfirmationTitle];
      if (pairedWatchSupportsCompetitions)
      {
        v73 = [(ASFriend *)self->_friend as_competitionSendConfirmationMessageForExperienceType:self->_experienceType];
        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:v73 value:&stru_1008680E8 table:@"Localizable"];
        v37 = [(ASFriend *)self->_friend displayName];
        v72 = [NSString stringWithFormat:v36, v37];

        v38 = +[NSBundle mainBundle];
        v39 = [v38 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
        v71 = [UIAlertAction actionWithTitle:v39 style:1 handler:0];

        v40 = ActivitySharingBundle();
        v41 = [v40 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_SEND_ACTION" value:&stru_1008680E8 table:@"Localizable"];
        v42 = [(ASFriend *)self->_friend displayName];
        v43 = [NSString stringWithFormat:v41, v42];
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100131D18;
        v77[3] = &unk_10083D080;
        v77[4] = self;
        v78 = v8;
        v79 = v74;
        v44 = v74;
        v45 = [UIAlertAction actionWithTitle:v43 style:0 handler:v77];

        v46 = [(ASFriend *)self->_friend as_competitionLearnMorePopupAction];
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1001325F0;
        v76[3] = &unk_10083B990;
        v76[4] = self;
        v47 = [UIAlertAction actionWithTitle:v46 style:0 handler:v76];

        v48 = [UIAlertController alertControllerWithTitle:v44 message:v72 preferredStyle:1];
        [v48 addAction:v71];
        [v48 addAction:v45];
        [v48 addAction:v47];
        [v48 setPreferredAction:v45];
        [(CHFriendDetailCollectionViewController *)self presentViewController:v48 animated:1 completion:0];
      }

      else
      {
        v57 = +[NSBundle mainBundle];
        v58 = [v57 localizedStringForKey:@"COMPETITION_SEND_UPGRADE_WATCH" value:&stru_1008680E8 table:@"Localizable"];

        v59 = [UIAlertController alertControllerWithTitle:v74 message:v58 preferredStyle:1];
        v60 = +[NSBundle mainBundle];
        v61 = [v60 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
        v62 = [UIAlertAction actionWithTitle:v61 style:0 handler:0];
        [v59 addAction:v62];

        [(CHFriendDetailCollectionViewController *)self presentViewController:v59 animated:1 completion:0];
      }

      break;
    case 4:
      sub_10010858C(self, self->_friend, self->_friendManager, self->_experienceType);
      break;
    case 5:
      v23 = [(ASFriend *)self->_friend as_competitionLearnMoreTitleForExperienceType:self->_experienceType];
      v24 = [(ASFriend *)self->_friend as_competitionLearnMoreFullDescriptionForExperienceType:self->_experienceType];
      v25 = [UIAlertController alertControllerWithTitle:v23 message:v24 preferredStyle:1];
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"OK" value:&stru_1008680E8 table:@"Localizable"];
      v28 = [UIAlertAction actionWithTitle:v27 style:0 handler:0];
      [v25 addAction:v28];

      [(CHFriendDetailCollectionViewController *)self presentViewController:v25 animated:1 completion:0];
      break;
  }

LABEL_29:
}

- (BOOL)_shouldShowExerciseAndStandCells
{
  v2 = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  v3 = [v2 _isStandalonePhoneSummary];

  return v3 ^ 1;
}

- (BOOL)_shouldShowStepsAndDistanceCells
{
  v3 = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  v4 = [v3 _isStandalonePhoneSummary];

  if (self->_isMe)
  {
    iAmWheelchairUser = self->_iAmWheelchairUser;
  }

  else
  {
    [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot wheelchairUse];
    iAmWheelchairUser = FIUIIsWheelchairUserForWheelchairUse();
  }

  return v4 & iAmWheelchairUser ^ 1;
}

- (BOOL)_shouldShowCompetitionRequestAction
{
  if (self->_isMe)
  {
    return 0;
  }

  if (self->_dataIsHidden)
  {
    return 0;
  }

  v3 = [(ASFriend *)self->_friend contact];
  v4 = [v3 relationship];
  v5 = [v4 supportsCompetitions];

  if (!v5 || ![(ASFriend *)self->_friend supportsCompetitions])
  {
    return 0;
  }

  v6 = self->_friend;

  return [(ASFriend *)v6 isEligibleToReceiveCompetitionRequest];
}

- (BOOL)_shouldShowCompetitionAcceptAction
{
  if (self->_isMe || self->_dataIsHidden)
  {
    return 0;
  }

  else
  {
    return [(ASFriend *)self->_friend isAwaitingCompetitionResponseFromMe];
  }
}

- (BOOL)_shouldShowCompetitionRulesAction
{
  if (self->_isMe || self->_dataIsHidden)
  {
    return 0;
  }

  if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0)
  {
    return 1;
  }

  v4 = self->_friend;

  return [(ASFriend *)v4 hasPendingCompetitionRequestFromMe];
}

- (void)_logMessageComposeResult:(int64_t)a3 messageComposeViewController:(id)a4
{
  if (a3 == 1)
  {
    v5 = [a4 recipients];
    [v5 count];

    FIActivityAnalyticsSubmission();
  }
}

@end
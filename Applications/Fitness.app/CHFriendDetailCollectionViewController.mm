@interface CHFriendDetailCollectionViewController
- (BOOL)_isDataHidden;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (BOOL)_shouldShowCompetitionAcceptAction;
- (BOOL)_shouldShowCompetitionRequestAction;
- (BOOL)_shouldShowCompetitionRulesAction;
- (BOOL)_shouldShowExerciseAndStandCells;
- (BOOL)_shouldShowStepsAndDistanceCells;
- (CGSize)_sizeForGoalCell:(id)cell withPreferredWidth:(double)width availableWidth:(double)availableWidth;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CHFriendDetailCollectionViewController)initWithFriendListManager:(id)manager friendManager:(id)friendManager friend:(id)friend snapshot:(id)snapshot snapshotDate:(id)date achievementsDataProvider:(id)provider workoutDataProvider:(id)dataProvider workoutFormattingManager:(id)self0 formattingManager:(id)self1 badgeImageFactory:(id)self2 healthStore:(id)self3 fitnessAppContext:(id)self4;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_fontForSectionHeaderType:(int64_t)type;
- (id)_transformFriendAchievementsToACHAchievements;
- (id)_workoutsForFriend:(id)friend snapshot:(id)snapshot;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_friendDataWasUpdated:(id)updated;
- (void)_infoButtonTapped:(id)tapped;
- (void)_logMessageComposeResult:(int64_t)result messageComposeViewController:(id)controller;
- (void)_populateAchievements;
- (void)_reloadData;
- (void)_sendMessageButtonTapped:(id)tapped;
- (void)_setupCellSizes;
- (void)_setupCells;
- (void)_setupNumberOfItemsInSection;
- (void)_showShareOptions:(id)options;
- (void)_updateSharingTextForMe;
- (void)achievementsView:(id)view didTapAchievement:(id)achievement cell:(id)cell;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dealloc;
- (void)friendDetailActionListView:(id)view didSelectActionType:(int64_t)type;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CHFriendDetailCollectionViewController

- (CHFriendDetailCollectionViewController)initWithFriendListManager:(id)manager friendManager:(id)friendManager friend:(id)friend snapshot:(id)snapshot snapshotDate:(id)date achievementsDataProvider:(id)provider workoutDataProvider:(id)dataProvider workoutFormattingManager:(id)self0 formattingManager:(id)self1 badgeImageFactory:(id)self2 healthStore:(id)self3 fitnessAppContext:(id)self4
{
  managerCopy = manager;
  friendManagerCopy = friendManager;
  friendManagerCopy2 = friendManager;
  friendCopy = friend;
  snapshotCopy = snapshot;
  dateCopy = date;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  formattingManagerCopy = formattingManager;
  v43 = a11;
  factoryCopy = factory;
  storeCopy = store;
  contextCopy = context;
  v52.receiver = self;
  v52.super_class = CHFriendDetailCollectionViewController;
  v21 = [(CHFriendDetailCollectionViewController *)&v52 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_friendListManager, manager);
    objc_storeStrong(&v22->_friendManager, friendManagerCopy);
    objc_storeStrong(&v22->_friend, friend);
    objc_storeStrong(&v22->_formattingManager, a11);
    objc_storeStrong(&v22->_workoutFormattingManager, formattingManager);
    objc_storeStrong(&v22->_imageFactory, factory);
    objc_storeStrong(&v22->_achievementsDataProvider, provider);
    objc_storeStrong(&v22->_activitySnapshot, snapshot);
    v23 = dateCopy;
    if (!dateCopy)
    {
      v23 = +[NSDate date];
    }

    objc_storeStrong(&v22->_snapshotDate, v23);
    if (!dateCopy)
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
    objc_storeStrong(&v22->_workoutDataProvider, dataProvider);
    v22->_pairedWatchSupportsCompetitions = FIDeviceMeetsMinimumOSVersionGlory();
    v28 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:storeCopy];
    wheelchairUseCharacteristicCache = v22->_wheelchairUseCharacteristicCache;
    v22->_wheelchairUseCharacteristicCache = v28;

    [(_HKWheelchairUseCharacteristicCache *)v22->_wheelchairUseCharacteristicCache addObserver:v22];
    v22->_iAmWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)v22->_wheelchairUseCharacteristicCache isWheelchairUser];
    v22->_experienceType = FIExperienceTypeWithHealthStore();
    objc_storeStrong(&v22->_fitnessAppContext, context);
    v30 = objc_alloc_init(ACHAchievementLocalizationProvider);
    achievementLocProvider = v22->_achievementLocProvider;
    v22->_achievementLocProvider = v30;

    unitManager = [(FIUIFormattingManager *)v22->_formattingManager unitManager];
    v33 = unitManager;
    if (unitManager)
    {
      if ([unitManager conformsToProtocol:&OBJC_PROTOCOL___ACHUnitManager])
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

    displayName = [(ASFriend *)v22->_friend displayName];
    [(ACHAchievementLocalizationProvider *)v22->_achievementLocProvider setName:displayName];

    if (v22->_isMe)
    {
      [(ACHAchievementLocalizationProvider *)v22->_achievementLocProvider setWheelchairUser:v22->_iAmWheelchairUser];
    }

    else
    {
      currentSnapshot = [(ASFriend *)v22->_friend currentSnapshot];
      -[ACHAchievementLocalizationProvider setWheelchairUser:](v22->_achievementLocProvider, "setWheelchairUser:", [currentSnapshot wheelchairUse] == 2);
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
    displayName = [NSString stringWithFormat:@"•%@", v4];
  }

  else
  {
    displayName = [(ASFriend *)self->_friend displayName];
  }

  navigationItem = [(CHFriendDetailCollectionViewController *)self navigationItem];
  [navigationItem setTitle:displayName];

  navigationItem2 = [(CHFriendDetailCollectionViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  [(CHFriendDetailCollectionViewController *)self setTitle:displayName];
  if (self->_isMe)
  {
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"_showShareOptions:"];
    navigationItem3 = [(CHFriendDetailCollectionViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v8];

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

    navigationItem4 = [(CHFriendDetailCollectionViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItems:v8];

    as_detailedSharingDurationString = [(ASFriend *)self->_friend as_detailedSharingDurationString];
    sharingInfoText = self->_sharingInfoText;
    self->_sharingInfoText = as_detailedSharingDurationString;
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
  view = [(CHFriendDetailCollectionViewController *)self view];
  [view addSubview:self->_collectionView];

  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"Footer"];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CHFriendDetailCollectionViewController;
  [(CHFriendDetailCollectionViewController *)&v4 viewWillLayoutSubviews];
  view = [(CHFriendDetailCollectionViewController *)self view];
  [view bounds];
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
    activitySharingClient = [(CHFriendManager *)self->_friendManager activitySharingClient];
    v4 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10012BAAC;
    v8[3] = &unk_10083AC40;
    v8[4] = self;
    [activitySharingClient areMultipleDevicesSharingDataForSnapshotIndex:v4 completion:v8];
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
  endDate = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot endDate];
  snapshotDate = endDate;
  if (!endDate)
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

  allObjects = [(NSSet *)self->_todaysAchievements allObjects];
  v6 = [allObjects mutableCopy];

  AAUISortAchievementsByMostRecentEarnedDate();
  [(CHHorizontalScrollingAchievementsView *)self->_achievementsCell setAchievements:v6];
}

- (id)_transformFriendAchievementsToACHAchievements
{
  friendAchievements = [(ASFriend *)self->_friend friendAchievements];
  selfCopy = self;
  v4 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
  v5 = [friendAchievements objectForKeyedSubscript:v4];

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
        templateUniqueName = [v11 templateUniqueName];
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
          achievementsDataProvider = selfCopy->_achievementsDataProvider;
          templateUniqueName2 = [v11 templateUniqueName];
          v14 = [(AAUIAchievementsDataProvider *)achievementsDataProvider achievementForTemplateUniqueName:templateUniqueName2];

          if (!v14)
          {
            goto LABEL_16;
          }
        }

        v17 = [v6 hk_map:&stru_10083CF50];
        template = [v14 template];
        uniqueName = [template uniqueName];
        v20 = [v17 containsObject:uniqueName];

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

  selfCopy = self;
  activitySummary = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  if (self->_dataIsHidden)
  {
    [(CHFriendDetailThreeRingCell *)self->_threeRingCell setHidden:1];
    goto LABEL_11;
  }

  activitySnapshot = self->_activitySnapshot;
  if (activitySnapshot)
  {
    hasCarriedForwardGoals = [(_HKFitnessFriendActivitySnapshot *)activitySnapshot hasCarriedForwardGoals];
    v7 = self->_threeRingCell;
    if (hasCarriedForwardGoals)
    {
      [(CHFriendDetailThreeRingCell *)v7 setActivitySummary:0 animated:1];
      -[CHFriendDetailThreeRingCell setIsStandalonePhoneFitnessMode:](self->_threeRingCell, "setIsStandalonePhoneFitnessMode:", [activitySummary _isStandalonePhoneSummary]);
      goto LABEL_11;
    }

    v8 = activitySummary;
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

  as_simpleHiddenFromString = [(ASFriend *)self->_friend as_simpleHiddenFromString];
  v183 = as_simpleHiddenFromString;
  selfCopy2 = self;
  v13 = self->_dateCell;
  if (!selfCopy->_dataIsHidden || as_simpleHiddenFromString == 0)
  {
    v15 = [FIUIDateFormattingUtilities stringWithDayNameAndShortMonthFromDate:selfCopy->_snapshotDate];
    [(CHFriendDetailDateCell *)v13 setText:v15];

    selfCopy2 = selfCopy;
  }

  else
  {
    [(CHFriendDetailDateCell *)selfCopy->_dateCell setText:?];
  }

  competitionScoreCell = selfCopy2->_competitionScoreCell;
  if (!competitionScoreCell)
  {
    v17 = [[CHFriendDetailCompetitionScoreCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v18 = selfCopy2->_competitionScoreCell;
    selfCopy2->_competitionScoreCell = v17;

    competitionScoreCell = selfCopy2->_competitionScoreCell;
  }

  v19 = selfCopy2->_friend;
  currentCompetition = [(ASFriend *)v19 currentCompetition];
  [(CHFriendDetailCompetitionScoreCell *)competitionScoreCell setFriend:v19 competition:currentCompetition];

  if (!selfCopy->_competitionGraphCell)
  {
    v21 = [[CHFriendDetailCompetitionGraphCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    competitionGraphCell = selfCopy->_competitionGraphCell;
    selfCopy->_competitionGraphCell = v21;
  }

  currentCompetition2 = [(ASFriend *)selfCopy->_friend currentCompetition];
  [(CHFriendDetailCompetitionGraphCell *)selfCopy->_competitionGraphCell setCompetition:currentCompetition2];

  competitionTotalWinsCell = selfCopy->_competitionTotalWinsCell;
  if (!competitionTotalWinsCell)
  {
    v25 = [[CHFriendDetailCompetitionTotalWinsCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v26 = selfCopy->_competitionTotalWinsCell;
    selfCopy->_competitionTotalWinsCell = v25;

    competitionTotalWinsCell = selfCopy->_competitionTotalWinsCell;
  }

  v27 = selfCopy->_friend;
  currentCompetition3 = [(ASFriend *)v27 currentCompetition];
  [(CHFriendDetailCompetitionTotalWinsCell *)competitionTotalWinsCell setFriend:v27 competition:currentCompetition3];

  moveCell = selfCopy->_moveCell;
  if (!moveCell)
  {
    v30 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v31 = selfCopy->_moveCell;
    selfCopy->_moveCell = v30;

    moveCell = selfCopy->_moveCell;
  }

  v32 = +[ARUIMetricColors energyColors];
  nonGradientTextColor = [v32 nonGradientTextColor];
  [(CHFriendDetailGoalCell *)moveCell setKeyColor:nonGradientTextColor];

  v34 = selfCopy->_moveCell;
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"MOVE" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v34 setTitle:v36];

  if ([(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot isAmm])
  {
    v37 = selfCopy->_moveCell;
    [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot mmv];
    v38 = [NSNumber numberWithDouble:?];
    [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot mmg];
    v39 = [NSNumber numberWithDouble:?];
    localizedUppercaseString = +[NSBundle mainBundle];
    v41 = [localizedUppercaseString localizedStringForKey:@"MIN" value:&stru_1008680E8 table:@"Localizable"];
    [(CHFriendDetailGoalCell *)v37 setCurrentValue:v38 goalValue:v39 unitString:v41];

    v42 = selfCopy;
  }

  else
  {
    formattingManager = selfCopy->_formattingManager;
    [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot energyBurned];
    [(FIUIFormattingManager *)formattingManager energyBurnedInUserUnitForCalories:?];
    v38 = [NSNumber numberWithDouble:?];
    v44 = selfCopy->_formattingManager;
    [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot energyBurnedGoal];
    [(FIUIFormattingManager *)v44 energyBurnedInUserUnitForCalories:?];
    v39 = [NSNumber numberWithDouble:?];
    localizedShortActiveEnergyUnitString = [(FIUIFormattingManager *)selfCopy->_formattingManager localizedShortActiveEnergyUnitString];
    localizedUppercaseString = [localizedShortActiveEnergyUnitString localizedUppercaseString];

    v42 = selfCopy;
    [(CHFriendDetailGoalCell *)selfCopy->_moveCell setCurrentValue:v38 goalValue:v39 unitString:localizedUppercaseString];
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
  nonGradientTextColor2 = [v49 nonGradientTextColor];
  [(CHFriendDetailGoalCell *)exerciseCell setKeyColor:nonGradientTextColor2];

  v51 = selfCopy->_exerciseCell;
  v52 = +[NSBundle mainBundle];
  v53 = [v52 localizedStringForKey:@"EXERCISE" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v51 setTitle:v53];

  v54 = selfCopy->_exerciseCell;
  [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot briskMinutes];
  v55 = [NSNumber numberWithDouble:?];
  [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot briskMinutesGoal];
  v56 = [NSNumber numberWithDouble:?];
  v57 = +[NSBundle mainBundle];
  v58 = [v57 localizedStringForKey:@"MIN" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v54 setCurrentValue:v55 goalValue:v56 unitString:v58];

  if (selfCopy->_isMe)
  {
    iAmWheelchairUser = selfCopy->_iAmWheelchairUser;
  }

  else
  {
    [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot wheelchairUse];
    iAmWheelchairUser = FIUIIsWheelchairUserForWheelchairUse();
  }

  v60 = @"_WHEELCHAIR";
  if (!iAmWheelchairUser)
  {
    v60 = &stru_1008680E8;
  }

  v184 = v60;
  standCell = selfCopy->_standCell;
  if (!standCell)
  {
    v62 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v63 = selfCopy->_standCell;
    selfCopy->_standCell = v62;

    standCell = selfCopy->_standCell;
  }

  v64 = +[ARUIMetricColors sedentaryColors];
  nonGradientTextColor3 = [v64 nonGradientTextColor];
  [(CHFriendDetailGoalCell *)standCell setKeyColor:nonGradientTextColor3];

  v66 = selfCopy->_standCell;
  v67 = +[NSBundle mainBundle];
  v68 = [@"STAND" stringByAppendingString:v184];
  v69 = [v67 localizedStringForKey:v68 value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v66 setTitle:v69];

  v70 = selfCopy->_standCell;
  [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot activeHours];
  v71 = [NSNumber numberWithDouble:?];
  [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot activeHoursGoal];
  v72 = [NSNumber numberWithDouble:?];
  v73 = +[NSBundle mainBundle];
  v74 = [v73 localizedStringForKey:@"HRS" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v70 setCurrentValue:v71 goalValue:v72 unitString:v74];

  stepCell = selfCopy->_stepCell;
  if (!stepCell)
  {
    v76 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v77 = selfCopy->_stepCell;
    selfCopy->_stepCell = v76;

    stepCell = selfCopy->_stepCell;
  }

  v78 = +[UIColor lightGrayColor];
  [(CHFriendDetailGoalCell *)stepCell setKeyColor:v78];

  v79 = selfCopy->_stepCell;
  v80 = +[NSBundle mainBundle];
  v81 = [@"STEPS_LABEL" stringByAppendingString:v184];
  v82 = [v80 localizedStringForKey:v81 value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v79 setTitle:v82];

  v83 = selfCopy->_stepCell;
  v84 = selfCopy->_activitySnapshot;
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

  distanceCell = selfCopy->_distanceCell;
  if (!distanceCell)
  {
    v87 = [[CHFriendDetailGoalCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v88 = selfCopy->_distanceCell;
    selfCopy->_distanceCell = v87;

    distanceCell = selfCopy->_distanceCell;
  }

  v89 = +[UIColor lightGrayColor];
  [(CHFriendDetailGoalCell *)distanceCell setKeyColor:v89];

  v90 = selfCopy->_distanceCell;
  v91 = +[NSBundle mainBundle];
  v92 = [v91 localizedStringForKey:@"DISTANCE_LABEL" value:&stru_1008680E8 table:@"Localizable"];
  [(CHFriendDetailGoalCell *)v90 setTitle:v92];

  unitManager = [(FIUIFormattingManager *)selfCopy->_formattingManager unitManager];
  [(_HKFitnessFriendActivitySnapshot *)selfCopy->_activitySnapshot walkingAndRunningDistance];
  [unitManager distanceInUserDistanceUnitForDistanceInMeters:1 distanceType:?];
  v182 = [NSNumber numberWithDouble:?];

  v94 = [(FIUIFormattingManager *)selfCopy->_formattingManager localizedShortUnitStringForDistanceType:1];
  localizedUppercaseString2 = [v94 localizedUppercaseString];

  v95 = selfCopy;
  [(CHFriendDetailGoalCell *)selfCopy->_distanceCell setCurrentValue:v182 unitString:localizedUppercaseString2];
  [(CHFriendDetailGoalCell *)selfCopy->_distanceCell setHidden:iAmWheelchairUser];
  v96 = selfCopy->_todaysFriendWorkouts;
  v97 = v96;
  if (selfCopy->_isMe)
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
          workoutDataProvider = selfCopy->_workoutDataProvider;
          uUID = [v102 UUID];
          [v102 setIsWatchWorkout:{-[CHWorkoutDataProvider isWatchWorkout:](workoutDataProvider, "isWatchWorkout:", uUID)}];
        }

        v99 = [(NSArray *)v98 countByEnumeratingWithState:&v195 objects:v213 count:16];
      }

      while (v99);
    }

    v95 = selfCopy;
  }

  objc_initWeak(&location, v95);
  v105 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v97, "count")}];
  workoutCellsArray = selfCopy->_workoutCellsArray;
  selfCopy->_workoutCellsArray = v105;

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

        hkWorkoutFromFriendWorkout = [*(*(&v190 + 1) + 8 * j) hkWorkoutFromFriendWorkout];
        height = [[CHWorkoutCellImageLabelView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        fitnessAppContext = selfCopy->_fitnessAppContext;
        workoutFormattingManager = selfCopy->_workoutFormattingManager;
        v188[0] = _NSConcreteStackBlock;
        v188[1] = 3221225472;
        v188[2] = sub_10012D900;
        v188[3] = &unk_10083A710;
        objc_copyWeak(&v189, &location);
        [(CHWorkoutCellImageLabelView *)height setWorkout:hkWorkoutFromFriendWorkout fitnessAppContext:fitnessAppContext formattingManager:workoutFormattingManager achievementCount:0 completion:v188];
        [(CHWorkoutCellImageLabelView *)height setShowsSeparator:1];
        [(NSMutableArray *)selfCopy->_workoutCellsArray addObject:height];
        objc_destroyWeak(&v189);
      }

      v107 = [(NSArray *)obj countByEnumeratingWithState:&v190 objects:v212 count:16];
    }

    while (v107);
  }

  lastObject = [(NSMutableArray *)selfCopy->_workoutCellsArray lastObject];
  [lastObject setShowsSeparator:0];

  v118 = [CHHorizontalScrollingAchievementsView alloc];
  v119 = CGRectZero.origin.y;
  v120 = CGRectZero.size.width;
  v121 = CGRectZero.size.height;
  v121 = [(CHHorizontalScrollingAchievementsView *)v118 initWithFrame:selfCopy->_imageFactory badgeImageFactory:selfCopy->_achievementLocProvider locProvider:CGRectZero.origin.x, v119, v120, v121];
  achievementsCell = selfCopy->_achievementsCell;
  selfCopy->_achievementsCell = v121;

  [(CHHorizontalScrollingAchievementsView *)selfCopy->_achievementsCell setDelegate:selfCopy];
  [(CHHorizontalScrollingAchievementsView *)selfCopy->_achievementsCell setScrollViewContentInset:0.0, 16.0, 0.0, 16.0];
  allObjects = [(NSSet *)selfCopy->_todaysAchievements allObjects];
  [(CHHorizontalScrollingAchievementsView *)selfCopy->_achievementsCell setAchievements:allObjects];

  v125 = selfCopy;
  v126 = objc_alloc_init(NSMutableAttributedString);
  if (selfCopy->_sharingInfoText)
  {
    v127 = [NSAttributedString alloc];
    sharingInfoText = selfCopy->_sharingInfoText;
    v210[0] = NSFontAttributeName;
    v129 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v211[0] = v129;
    v210[1] = NSForegroundColorAttributeName;
    v130 = +[UIColor secondaryLabelColor];
    v211[1] = v130;
    v131 = [NSDictionary dictionaryWithObjects:v211 forKeys:v210 count:2];
    v132 = [v127 initWithString:sharingInfoText attributes:v131];
    [v126 appendAttributedString:v132];

    v125 = selfCopy;
  }

  if (([(ASFriend *)v125->_friend hasPendingCompetitionRequestFromMe]& 1) != 0 || [(ASFriend *)v125->_friend isCompetitionActive])
  {
    v133 = [(ASFriend *)v125->_friend as_competitionStatusBreadcrumbStringForExperienceType:v125->_experienceType];
    v133 = [NSString stringWithFormat:@"\n%@", v133];
    v135 = [NSAttributedString alloc];
    v208[0] = NSFontAttributeName;
    v136 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v209[0] = v136;
    v208[1] = NSForegroundColorAttributeName;
    v137 = +[UIColor as_darkCompetitionGold];
    v209[1] = v137;
    v138 = [NSDictionary dictionaryWithObjects:v209 forKeys:v208 count:2];
    v139 = [v135 initWithString:v133 attributes:v138];
    [v126 appendAttributedString:v139];

    v125 = selfCopy;
  }

  v140 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v119, v120, v121}];
  sharingInfoSizingLabel = v125->_sharingInfoSizingLabel;
  v125->_sharingInfoSizingLabel = v140;

  p_isa = &selfCopy->super.super.super.isa;
  [(UILabel *)selfCopy->_sharingInfoSizingLabel setAttributedText:v126];
  [(UILabel *)selfCopy->_sharingInfoSizingLabel setNumberOfLines:0];
  v143 = objc_alloc_init(NSMutableArray);
  v144 = objc_alloc_init(NSMutableArray);
  if ([(CHFriendDetailCollectionViewController *)selfCopy _shouldShowCompetitionRequestAction])
  {
    v145 = +[NSBundle mainBundle];
    v146 = [v145 localizedStringForKey:@"COMPETITION_SEND_ACTION_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    displayName = [(ASFriend *)selfCopy->_friend displayName];
    v147 = [NSString localizedStringWithFormat:v146, displayName];

    [v143 addObject:&off_10086E3B0];
    [v144 addObject:v147];
  }

  else if ([(CHFriendDetailCollectionViewController *)selfCopy _shouldShowCompetitionAcceptAction])
  {
    v149 = +[NSBundle mainBundle];
    v147 = [v149 localizedStringForKey:@"COMPETITION_ACCEPT_ACTION_TITLE" value:&stru_1008680E8 table:@"Localizable"];

    [v143 addObject:&off_10086E3C8];
    [v144 addObject:v147];
  }

  else
  {
    if (![(CHFriendDetailCollectionViewController *)selfCopy _shouldShowCompetitionRulesAction])
    {
      goto LABEL_74;
    }

    v147 = [(ASFriend *)selfCopy->_friend as_competitionLearnMoreDetailActionForExperienceType:selfCopy->_experienceType];
    [v143 addObject:&off_10086E3E0];
    [v144 addObject:v147];
  }

  p_isa = &selfCopy->super.super.super.isa;
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

    p_isa = &selfCopy->super.super.super.isa;
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
  v1212 = [[CHFriendDetailActionListView alloc] initWithFrame:CGRectZero.origin.x, v119, v120, v121];
  actionListCell = selfCopy->_actionListCell;
  selfCopy->_actionListCell = v1212;

  [(CHFriendDetailActionListView *)selfCopy->_actionListCell setDelegate:selfCopy];
  [(CHFriendDetailActionListView *)selfCopy->_actionListCell configureWithActionTypes:v143 labelTexts:v144 footerText:v126];
  v156 = [[NSMutableArray alloc] initWithCapacity:10];
  itemsArray = selfCopy->_itemsArray;
  selfCopy->_itemsArray = v156;

  v158 = selfCopy->_itemsArray;
  v159 = selfCopy->_dateCell;
  v207[0] = selfCopy->_threeRingCell;
  v207[1] = v159;
  v160 = [NSArray arrayWithObjects:v207 count:2];
  [(NSMutableArray *)v158 addObject:v160];

  v161 = selfCopy->_itemsArray;
  v206 = selfCopy->_competitionScoreCell;
  v162 = [NSArray arrayWithObjects:&v206 count:1];
  [(NSMutableArray *)v161 addObject:v162];

  v163 = selfCopy->_itemsArray;
  v205 = selfCopy->_competitionGraphCell;
  v164 = [NSArray arrayWithObjects:&v205 count:1];
  [(NSMutableArray *)v163 addObject:v164];

  v165 = selfCopy->_itemsArray;
  v204 = selfCopy->_competitionTotalWinsCell;
  v166 = [NSArray arrayWithObjects:&v204 count:1];
  [(NSMutableArray *)v165 addObject:v166];

  v167 = selfCopy->_itemsArray;
  v203 = selfCopy->_moveCell;
  v168 = [NSArray arrayWithObjects:&v203 count:1];
  [(NSMutableArray *)v167 addObject:v168];

  v169 = selfCopy->_itemsArray;
  v170 = selfCopy->_standCell;
  v202[0] = selfCopy->_exerciseCell;
  v202[1] = v170;
  v171 = [NSArray arrayWithObjects:v202 count:2];
  [(NSMutableArray *)v169 addObject:v171];

  v172 = selfCopy->_itemsArray;
  v173 = selfCopy->_distanceCell;
  v201[0] = selfCopy->_stepCell;
  v201[1] = v173;
  v174 = [NSArray arrayWithObjects:v201 count:2];
  [(NSMutableArray *)v172 addObject:v174];

  [(NSMutableArray *)selfCopy->_itemsArray addObject:selfCopy->_workoutCellsArray];
  v175 = selfCopy->_itemsArray;
  v200 = selfCopy->_achievementsCell;
  v176 = [NSArray arrayWithObjects:&v200 count:1];
  [(NSMutableArray *)v175 addObject:v176];

  v177 = selfCopy->_itemsArray;
  v199 = selfCopy->_actionListCell;
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
  isCompetitionActive = [(ASFriend *)self->_friend isCompetitionActive];
  v6 = self->_numItemsInSectionArray;
  v7 = [NSNumber numberWithUnsignedInteger:isCompetitionActive];
  [(NSMutableArray *)v6 addObject:v7];

  isCompetitionActive2 = [(ASFriend *)self->_friend isCompetitionActive];
  v9 = self->_numItemsInSectionArray;
  v10 = [NSNumber numberWithUnsignedInteger:isCompetitionActive2];
  [(NSMutableArray *)v9 addObject:v10];

  if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0)
  {
    hasCompetitionHistory = 1;
  }

  else
  {
    hasCompetitionHistory = [(ASFriend *)self->_friend hasCompetitionHistory];
  }

  v12 = self->_numItemsInSectionArray;
  v13 = [NSNumber numberWithUnsignedInteger:hasCompetitionHistory];
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

  view = [(CHFriendDetailCollectionViewController *)self view];
  [view bounds];
  v7 = v6;

  view2 = [(CHFriendDetailCollectionViewController *)self view];
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

  text = [(UILabel *)self->_sharingInfoSizingLabel text];

  if (text)
  {
    view3 = [(CHFriendDetailCollectionViewController *)self view];
    [view3 valueForSmallWidth:32.0 mediumWidth:40.0 largeWidth:40.0];
    v71 = v70;

    [(UILabel *)self->_sharingInfoSizingLabel sizeThatFits:v7 - v71 * 2.0, 1.79769313e308];
    v73 = v72;
    font = [(UILabel *)self->_sharingInfoSizingLabel font];
    [font _scaledValueForValue:12.0];
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

- (CGSize)_sizeForGoalCell:(id)cell withPreferredWidth:(double)width availableWidth:(double)availableWidth
{
  cellCopy = cell;
  [cellCopy sizeThatFits:{availableWidth, 1.79769313e308}];
  if (v8 <= width)
  {
    availableWidth = width;
  }

  v9 = objc_opt_class();

  [v9 preferredHeight];
  v11 = v10;
  availableWidthCopy = availableWidth;
  result.height = v11;
  result.width = availableWidthCopy;
  return result;
}

- (id)_fontForSectionHeaderType:(int64_t)type
{
  if ((type - 2) < 9 || type == 0)
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  }

  else if (type == 1)
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

- (void)_infoButtonTapped:(id)tapped
{
  contact = [(ASFriend *)self->_friend contact];
  linkedContactStoreIdentifier = [contact linkedContactStoreIdentifier];

  if (linkedContactStoreIdentifier)
  {
    primaryDestinationForMessaging = objc_alloc_init(CNContactStore);
    contact2 = [(ASFriend *)self->_friend contact];
    linkedContactStoreIdentifier2 = [contact2 linkedContactStoreIdentifier];
    v9 = [CNContactViewController descriptorForRequiredKeys:CNContactEmailAddressesKey];
    v21[2] = v9;
    v10 = [NSArray arrayWithObjects:v21 count:3];
    v11 = [primaryDestinationForMessaging unifiedContactWithIdentifier:linkedContactStoreIdentifier2 keysToFetch:v10 error:0];

    v12 = [CNContactViewController viewControllerForContact:v11];
  }

  else
  {
    contact3 = [(ASFriend *)self->_friend contact];
    primaryDestinationForMessaging = [contact3 primaryDestinationForMessaging];

    v14 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:primaryDestinationForMessaging];
    v12 = [CNContactViewController viewControllerForUnknownContact:v14];
  }

  [v12 setDelegate:self];
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissContactInfo"];
  navigationItem = [v12 navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  v17 = [[UINavigationController alloc] initWithRootViewController:v12];
  contactNavigationController = self->_contactNavigationController;
  self->_contactNavigationController = v17;

  v19 = +[UIColor systemBlueColor];
  view = [(UINavigationController *)self->_contactNavigationController view];
  [view setTintColor:v19];

  [(CHFriendDetailCollectionViewController *)self presentViewController:self->_contactNavigationController animated:1 completion:0];
}

- (void)_sendMessageButtonTapped:(id)tapped
{
  ASLoggingInitialize();
  v4 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Send Message tapped on the phone. Launching to messages app.", v8, 2u);
  }

  contact = [(ASFriend *)self->_friend contact];
  primaryDestinationForMessaging = [contact primaryDestinationForMessaging];

  if (primaryDestinationForMessaging)
  {
    v9 = primaryDestinationForMessaging;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    ASLaunchToMessagesWithRecipients();
  }
}

- (void)_showShareOptions:(id)options
{
  activitySummary = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  v5 = sub_1000B841C(activitySummary, self->_snapshotDate, self->_iAmWheelchairUser);

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

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  activitySnapshot = self->_activitySnapshot;
  dataIsHidden = self->_dataIsHidden;
  v8 = [(NSMutableArray *)self->_numItemsInSectionArray objectAtIndexedSubscript:section];
  integerValue = [v8 integerValue];

  if ((dataIsHidden || !activitySnapshot) && ![(CHFriendDetailCollectionViewController *)self _shouldShowWhileDataIsHiddenForSection:section])
  {
    return 0;
  }

  return integerValue;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  contentView = [v7 contentView];
  subviews = [contentView subviews];

  v10 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v18 + 1) + 8 * i) removeFromSuperview];
      }

      v11 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = -[NSMutableArray objectAtIndexedSubscript:](self->_itemsArray, "objectAtIndexedSubscript:", [pathCopy section]);
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [v7 bounds];
  [v15 setFrame:?];
  contentView2 = [v7 contentView];
  [contentView2 addSubview:v15];

  return v7;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![kind isEqualToString:UICollectionElementKindSectionHeader])
  {
    v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"Footer" forIndexPath:pathCopy];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    subviews = [v10 subviews];
    v29 = [subviews countByEnumeratingWithState:&v70 objects:v78 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [*(*(&v70 + 1) + 8 * i) removeFromSuperview];
        }

        v30 = [subviews countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v30);
    }

    v33 = [(CHFriendDetailCollectionViewController *)self collectionView:viewCopy numberOfItemsInSection:8];
    v34 = [(CHFriendDetailCollectionViewController *)self collectionView:viewCopy numberOfItemsInSection:7];
    if ([pathCopy section] == 8 || v33 <= 0 && (objc_msgSend(pathCopy, "section") == 7 || v34 <= 0 && objc_msgSend(pathCopy, "section") == 6) || objc_msgSend(pathCopy, "section") == 9)
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
    if ((v33 < 1 || [pathCopy section] != 8) && (!v52 || objc_msgSend(pathCopy, "section") != 7) && (v53 || objc_msgSend(pathCopy, "section") != 6) && objc_msgSend(pathCopy, "section") != 9 && (objc_msgSend(pathCopy, "section") != 1 || (-[ASFriend isCompetitionActive](self->_friend, "isCompetitionActive") & 1) == 0))
    {
      [v10 addSubview:v17];
    }

    goto LABEL_58;
  }

  v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header" forIndexPath:pathCopy];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  contentView = [v10 contentView];
  subviews2 = [contentView subviews];

  v13 = [subviews2 countByEnumeratingWithState:&v74 objects:v79 count:16];
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
          objc_enumerationMutation(subviews2);
        }

        [*(*(&v74 + 1) + 8 * j) removeFromSuperview];
      }

      v14 = [subviews2 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v14);
  }

  if ([pathCopy section] == 7)
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
    font = [v17 font];
    [font descender];
    v26 = v23 - v25;
    [viewCopy bounds];
    v27 = CGRectGetWidth(v83) - 16.0 - 16.0;
    [v17 bounds];
    [v17 setFrame:{16.0, v26, v27, CGRectGetHeight(v84)}];

LABEL_57:
    contentView2 = [v10 contentView];
    [contentView2 addSubview:v17];

LABEL_58:
    goto LABEL_59;
  }

  if ([pathCopy section] == 8)
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
    view = [(CHFriendDetailCollectionViewController *)self view];
    UIRoundToViewScale();
    v42 = v41;

    [viewCopy bounds];
    v43 = CGRectGetWidth(v87) - 16.0 - 16.0;
    [v17 bounds];
    [v17 setFrame:{16.0, v42, v43, CGRectGetHeight(v88)}];
    goto LABEL_57;
  }

  if ([pathCopy section] != 4)
  {
    if ([pathCopy section] == 1)
    {
      v17 = objc_alloc_init(UILabel);
      v54 = +[NSBundle mainBundle];
      v55 = [v54 localizedStringForKey:@"COMPETITION_SCORE_HEADER" value:&stru_1008680E8 table:@"Localizable"];
      [v17 setText:v55];

      v56 = +[UIColor secondaryLabelColor];
      [v17 setTextColor:v56];

      selfCopy3 = self;
      v48 = 1;
    }

    else
    {
      if ([pathCopy section] != 3)
      {
        goto LABEL_59;
      }

      v17 = objc_alloc_init(UILabel);
      isCompetitionActive = [(ASFriend *)self->_friend isCompetitionActive];
      v58 = +[NSBundle mainBundle];
      v59 = v58;
      if (isCompetitionActive)
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

      selfCopy3 = self;
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

    selfCopy3 = self;
    v48 = 4;
LABEL_56:
    v63 = [(CHFriendDetailCollectionViewController *)selfCopy3 _fontForSectionHeaderType:v48];
    [v17 setFont:v63];

    [v17 sizeToFit];
    font2 = [v17 font];
    [font2 _scaledValueForValue:30.0];
    v66 = v65;

    [viewCopy bounds];
    v67 = CGRectGetWidth(v91) + 16.0 * -2.0;
    [v17 bounds];
    [v17 setFrame:{16.0, 0.0, v67, CGRectGetHeight(v92)}];
    [v17 _setFirstLineBaselineFrameOriginY:v66];
    goto LABEL_57;
  }

LABEL_59:

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy section] == 7;
  v6 = pathCopy;
  if (v5)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_todaysFriendWorkouts, "objectAtIndexedSubscript:", [pathCopy row]);
    hkWorkoutFromFriendWorkout = [v7 hkWorkoutFromFriendWorkout];
    seymourCatalogItemDataProvider = [(CHFitnessAppContext *)self->_fitnessAppContext seymourCatalogItemDataProvider];
    v10 = [seymourCatalogItemDataProvider isSeymourWorkout:hkWorkoutFromFriendWorkout];

    if (v10)
    {
      [(CHFitnessAppContext *)self->_fitnessAppContext navigateToWorkout:hkWorkoutFromFriendWorkout];
    }

    v6 = pathCopy;
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (!index)
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

  if (index == 9)
  {
    goto LABEL_8;
  }

  if (index == 8 && [(NSSet *)self->_todaysAchievements count])
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  sizesArray = self->_sizesArray;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](sizesArray, "objectAtIndexedSubscript:", [pathCopy section]);
  v8 = [pathCopy row];

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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v8 = [(CHFriendDetailCollectionViewController *)self _fontForSectionHeaderType:section];
  if (self->_dataIsHidden)
  {
    height = 0.0;
    if (![(CHFriendDetailCollectionViewController *)self _shouldShowWhileDataIsHiddenForSection:section])
    {
      goto LABEL_17;
    }
  }

  if (section <= 3)
  {
    if (section == 1)
    {
      v10 = 30.0;
      if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0)
      {
        goto LABEL_16;
      }
    }

    else if (section == 3)
    {
      v10 = 30.0;
      if (([(ASFriend *)self->_friend isCompetitionActive]& 1) != 0 || ([(ASFriend *)self->_friend hasCompetitionHistory]& 1) != 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_19;
  }

  if (section == 4)
  {
    v10 = 24.0;
    goto LABEL_16;
  }

  if (section == 7)
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

  if (section != 8 || ![(NSSet *)self->_todaysAchievements count])
  {
    goto LABEL_19;
  }

  v10 = 44.0;
LABEL_16:
  [v8 _scaledValueForValue:v10];
  height = v11;
LABEL_17:
  [viewCopy bounds];
  width = CGRectGetWidth(v16);
LABEL_20:

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = section + 1;
  do
  {
    v8 = v7;
    numberOfSections = [viewCopy numberOfSections];
    if (v8 >= numberOfSections)
    {
      break;
    }

    v10 = [viewCopy numberOfItemsInSection:v8];
    v7 = v8 + 1;
  }

  while (v10 < 1);
  if (section == 2 || (v13 = [viewCopy numberOfItemsInSection:section], v8 >= numberOfSections) || section < 1 || v13 < 1)
  {
    p_height = &CGSizeZero.height;
    width = CGSizeZero.width;
  }

  else
  {
    [viewCopy bounds];
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

- (id)_workoutsForFriend:(id)friend snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  friendWorkouts = [friend friendWorkouts];
  snapshotIndex = [snapshotCopy snapshotIndex];

  v8 = [NSNumber numberWithLongLong:snapshotIndex];
  v9 = [friendWorkouts objectForKeyedSubscript:v8];
  allObjects = [v9 allObjects];
  v11 = [allObjects sortedArrayUsingComparator:&stru_10083CF90];

  return v11;
}

- (void)_friendDataWasUpdated:(id)updated
{
  updatedCopy = updated;
  if (self->_isMe)
  {
    v5 = [(ASFriendListSectionManager *)self->_friendListManager me];
    uUID = self->_friend;
    self->_friend = v5;
  }

  else
  {
    uUID = [(ASFriend *)self->_friend UUID];
    v7 = [(ASFriendListSectionManager *)self->_friendListManager friendWithUUID:uUID];
    v8 = self->_friend;
    self->_friend = v7;

    as_detailedSharingDurationString = [(ASFriend *)self->_friend as_detailedSharingDurationString];
    sharingInfoText = self->_sharingInfoText;
    self->_sharingInfoText = as_detailedSharingDurationString;

    displayName = [(ASFriend *)self->_friend displayName];
    navigationItem = [(CHFriendDetailCollectionViewController *)self navigationItem];
    [navigationItem setTitle:displayName];

    displayName2 = [(ASFriend *)self->_friend displayName];
    [(CHFriendDetailCollectionViewController *)self setTitle:displayName2];
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
      friendAchievements = [(ASFriend *)self->_friend friendAchievements];
      v21 = [friendAchievements mutableCopy];

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
    friendAchievements2 = [(ASFriend *)self->_friend friendAchievements];
    v26 = [NSNumber numberWithLongLong:[(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot snapshotIndex]];
    v27 = [friendAchievements2 objectForKeyedSubscript:v26];
    v28 = [v27 mutableCopy];
    v29 = self->_todaysAchievements;
    self->_todaysAchievements = v28;

    self->_dataIsHidden = [(CHFriendDetailCollectionViewController *)self _isDataHidden];
  }

  [(CHFriendDetailCollectionViewController *)self _populateAchievements];
  [(CHFriendDetailCollectionViewController *)self _reloadData];
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  navigationController = [(CHFriendDetailCollectionViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == controllerCopy)
  {
    navigationController2 = [(CHFriendDetailCollectionViewController *)self navigationController];
    v8 = [navigationController2 popViewControllerAnimated:1];
  }
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  [(CHFriendDetailCollectionViewController *)self _logMessageComposeResult:result messageComposeViewController:controllerCopy];

  [CHFriendInboxTableViewController addFriendViewControllerDidDismiss:]_0();
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
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

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  navigationController = [(CHFriendDetailCollectionViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)achievementsView:(id)view didTapAchievement:(id)achievement cell:(id)cell
{
  cellCopy = cell;
  achievementCopy = achievement;
  navigationController = [(CHFriendDetailCollectionViewController *)self navigationController];
  [navigationController setDelegate:self];

  v10 = [[CHAchievementDetailViewController alloc] initWithAchievement:achievementCopy locProvider:self->_achievementLocProvider formatsForFriend:!self->_isMe forDayView:0 forModalPresentation:0 shouldShowCelebration:0];
  contentView = [cellCopy contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [AAUIAchievementDetailTransitionAnimator alloc];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10013049C;
  v30[3] = &unk_10083A8B0;
  v31 = cellCopy;
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

- (void)friendDetailActionListView:(id)view didSelectActionType:(int64_t)type
{
  viewCopy = view;
  v6 = self->_friend;
  displayName = [(ASFriend *)v6 displayName];
  v8 = [NSString stringWithString:displayName];

  if (type <= 2)
  {
    if (!type)
    {
      isMuted = [(ASFriend *)v6 isMuted];
      ASLoggingInitialize();
      v30 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        uUID = [(ASFriend *)v6 UUID];
        v33 = isMuted ^ 1;
        *buf = 67109634;
        *v92 = isMuted ^ 1;
        *&v92[4] = 2114;
        *&v92[6] = uUID;
        *&v92[14] = 2112;
        *&v92[16] = v6;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Setting mute status to %d for friend: %{public}@ - %@", buf, 0x1Cu);
      }

      else
      {
        v33 = isMuted ^ 1;
      }

      friendManager = self->_friendManager;
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_100131168;
      v88[3] = &unk_10083D008;
      v90 = isMuted;
      v89 = v8;
      [(CHFriendManager *)friendManager setMuteEnabled:v33 forFriend:v6 completion:v88];

      goto LABEL_29;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        objc_initWeak(&location, self);
        ASLoggingInitialize();
        v9 = ASLogDefault;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          uUID2 = [(ASFriend *)self->_friend UUID];
          v11 = self->_friend;
          *buf = 138543618;
          *v92 = uUID2;
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

    isMyActivityDataCurrentlyHidden = [(ASFriend *)v6 isMyActivityDataCurrentlyHidden];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100131498;
    v87[3] = &unk_10083D030;
    v87[4] = self;
    v50 = objc_retainBlock(v87);
    if (isMyActivityDataCurrentlyHidden)
    {
      goto LABEL_17;
    }

    if ([(ASFriend *)v6 isCompetitionActive])
    {
      v63 = ActivitySharingBundle();
      v64 = [v63 localizedStringForKey:@"COMPETITION_IN_PROGRESS_HIDING_NOT_ALLOWED" value:&stru_1008680E8 table:@"Localizable"];
      displayName2 = [(ASFriend *)self->_friend displayName];
      displayName3 = [(ASFriend *)self->_friend displayName];
      v55 = [NSString stringWithFormat:v64, displayName2, displayName3];

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
          uUID3 = [(ASFriend *)v6 UUID];
          *buf = 67109634;
          *v92 = isMyActivityDataCurrentlyHidden;
          *&v92[4] = 2114;
          *&v92[6] = uUID3;
          *&v92[14] = 2112;
          *&v92[16] = v6;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Setting hiding status to %d for friend: %{public}@ - %@", buf, 0x1Cu);
        }

        v54 = self->_friendManager;
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_100131648;
        v84[3] = &unk_10083D008;
        v86 = isMyActivityDataCurrentlyHidden ^ 1;
        v85 = v8;
        [(CHFriendManager *)v54 setActivityDataVisible:isMyActivityDataCurrentlyHidden toFriend:v6 completion:v84];
        v55 = v85;
        goto LABEL_28;
      }

      v67 = ActivitySharingBundle();
      v68 = [v67 localizedStringForKey:@"COMPETITION_SENT_HIDING_NOT_ALLOWED" value:&stru_1008680E8 table:@"Localizable"];
      displayName4 = [(ASFriend *)self->_friend displayName];
      displayName5 = [(ASFriend *)self->_friend displayName];
      v55 = [NSString stringWithFormat:v68, displayName4, displayName5];

      (v50[2])(v50, v55);
    }

LABEL_28:

    goto LABEL_29;
  }

  switch(type)
  {
    case 3:
      pairedWatchSupportsCompetitions = self->_pairedWatchSupportsCompetitions;
      as_competitionSendConfirmationTitle = [(ASFriend *)self->_friend as_competitionSendConfirmationTitle];
      if (pairedWatchSupportsCompetitions)
      {
        v73 = [(ASFriend *)self->_friend as_competitionSendConfirmationMessageForExperienceType:self->_experienceType];
        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:v73 value:&stru_1008680E8 table:@"Localizable"];
        displayName6 = [(ASFriend *)self->_friend displayName];
        v72 = [NSString stringWithFormat:v36, displayName6];

        v38 = +[NSBundle mainBundle];
        v39 = [v38 localizedStringForKey:@"SHARING_CANCEL" value:&stru_1008680E8 table:@"Localizable"];
        v71 = [UIAlertAction actionWithTitle:v39 style:1 handler:0];

        v40 = ActivitySharingBundle();
        v41 = [v40 localizedStringForKey:@"COMPETITION_SEND_CONFIRMATION_SEND_ACTION" value:&stru_1008680E8 table:@"Localizable"];
        displayName7 = [(ASFriend *)self->_friend displayName];
        v43 = [NSString stringWithFormat:v41, displayName7];
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100131D18;
        v77[3] = &unk_10083D080;
        v77[4] = self;
        v78 = v8;
        v79 = as_competitionSendConfirmationTitle;
        v44 = as_competitionSendConfirmationTitle;
        v45 = [UIAlertAction actionWithTitle:v43 style:0 handler:v77];

        as_competitionLearnMorePopupAction = [(ASFriend *)self->_friend as_competitionLearnMorePopupAction];
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1001325F0;
        v76[3] = &unk_10083B990;
        v76[4] = self;
        v47 = [UIAlertAction actionWithTitle:as_competitionLearnMorePopupAction style:0 handler:v76];

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

        v59 = [UIAlertController alertControllerWithTitle:as_competitionSendConfirmationTitle message:v58 preferredStyle:1];
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
  activitySummary = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  _isStandalonePhoneSummary = [activitySummary _isStandalonePhoneSummary];

  return _isStandalonePhoneSummary ^ 1;
}

- (BOOL)_shouldShowStepsAndDistanceCells
{
  activitySummary = [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot activitySummary];
  _isStandalonePhoneSummary = [activitySummary _isStandalonePhoneSummary];

  if (self->_isMe)
  {
    iAmWheelchairUser = self->_iAmWheelchairUser;
  }

  else
  {
    [(_HKFitnessFriendActivitySnapshot *)self->_activitySnapshot wheelchairUse];
    iAmWheelchairUser = FIUIIsWheelchairUserForWheelchairUse();
  }

  return _isStandalonePhoneSummary & iAmWheelchairUser ^ 1;
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

  contact = [(ASFriend *)self->_friend contact];
  relationship = [contact relationship];
  supportsCompetitions = [relationship supportsCompetitions];

  if (!supportsCompetitions || ![(ASFriend *)self->_friend supportsCompetitions])
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

- (void)_logMessageComposeResult:(int64_t)result messageComposeViewController:(id)controller
{
  if (result == 1)
  {
    recipients = [controller recipients];
    [recipients count];

    FIActivityAnalyticsSubmission();
  }
}

@end
@interface CHFriendListViewController
- (BOOL)_isCompetitionSection:(unint64_t)section;
- (CHFriendListViewController)initWithFriendListManager:(id)manager andWithFriendManager:(id)friendManager achievementsDataProvider:(id)provider workoutsDataProvider:(id)dataProvider workoutFormattingManager:(id)formattingManager formattingManager:(id)a8 badgeImageFactory:(id)factory healthStore:(id)self0 fitnessAppContext:(id)self1;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_makeFriendDetailViewControllerForSection:(id)section row:(id)row;
- (id)_sortMenu;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_animateOnscreenCellsToNewValues;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_executeBlockWaitingOnFriendsDataIfNeeded;
- (void)_friendDataWasUpdated:(id)updated;
- (void)_layoutPrivacyLinkIfNecessary;
- (void)_logFriendListDisplayMode:(int64_t)mode;
- (void)_performAfterFriendDataIsAvailable:(id)available;
- (void)_pushDetailViewControllerForSection:(id)section row:(id)row;
- (void)_refreshControlValueChanged;
- (void)_showDetailForFriend:(id)friend date:(id)date;
- (void)_updateSectionsForCurrentDisplayContext;
- (void)dealloc;
- (void)didTapInboxBarButtonView:(id)view;
- (void)loadView;
- (void)scrollToTop;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)showDetailForFriendWithUUID:(id)d date:(id)date;
- (void)showDetailForMeOnDate:(id)date;
- (void)showInbox;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CHFriendListViewController

- (CHFriendListViewController)initWithFriendListManager:(id)manager andWithFriendManager:(id)friendManager achievementsDataProvider:(id)provider workoutsDataProvider:(id)dataProvider workoutFormattingManager:(id)formattingManager formattingManager:(id)a8 badgeImageFactory:(id)factory healthStore:(id)self0 fitnessAppContext:(id)self1
{
  managerCopy = manager;
  friendManagerCopy = friendManager;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  formattingManagerCopy = formattingManager;
  v36 = a8;
  factoryCopy = factory;
  storeCopy = store;
  contextCopy = context;
  v41.receiver = self;
  v41.super_class = CHFriendListViewController;
  v20 = [(CHFriendListViewController *)&v41 initWithStyle:0];
  v21 = v20;
  if (v20)
  {
    v33 = managerCopy;
    objc_storeStrong(&v20->_friendListManager, manager);
    objc_storeStrong(&v21->_friendManager, friendManager);
    objc_storeStrong(&v21->_achievementsDataProvider, provider);
    objc_storeStrong(&v21->_workoutsDataProvider, dataProvider);
    objc_storeStrong(&v21->_workoutFormattingManager, formattingManager);
    objc_storeStrong(&v21->_formattingManager, a8);
    objc_storeStrong(&v21->_imageFactory, factory);
    v21->_hasAnyFriends = [(ASFriendListSectionManager *)v21->_friendListManager hasAnyFriendsSetup];
    v22 = objc_opt_new();
    friendListDisplayContext = v21->_friendListDisplayContext;
    v21->_friendListDisplayContext = v22;

    [(ASFriendListDisplayContext *)v21->_friendListDisplayContext setDisplayFilter:0];
    v24 = +[NSUserDefaults standardUserDefaults];
    v25 = [v24 objectForKey:@"CHFriendListDisplayMode"];

    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      integerValue = [v25 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [(ASFriendListDisplayContext *)v21->_friendListDisplayContext setDisplayMode:integerValue];
    v27 = +[NSMutableDictionary dictionary];
    cellHeightCache = v21->_cellHeightCache;
    v21->_cellHeightCache = v27;

    v29 = +[ASCompetitionScoreViewConfiguration companionFriendListConfiguration];
    competitionScoreConfiguration = v21->_competitionScoreConfiguration;
    v21->_competitionScoreConfiguration = v29;

    objc_storeStrong(&v21->_healthStore, store);
    objc_storeStrong(&v21->_fitnessAppContext, context);
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v21 selector:"_contentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];

    managerCopy = v33;
  }

  return v21;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v4 dealloc];
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v11 loadView];
  tableView = [(CHFriendListViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  tableView2 = [(CHFriendListViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [tableView2 registerClass:v8 forCellReuseIdentifier:v10];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v30 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
  navigationItem = [(CHFriendListViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = +[UIColor systemBackgroundColor];
  tableView = [(CHFriendListViewController *)self tableView];
  [tableView setBackgroundColor:v6];

  tableView2 = [(CHFriendListViewController *)self tableView];
  [tableView2 setSectionHeaderTopPadding:0.0];

  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView3 = [(CHFriendListViewController *)self tableView];
  [tableView3 setTableFooterView:v9];

  navigationItem2 = [(CHFriendListViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:1];

  _sortMenu = [(CHFriendListViewController *)self _sortMenu];
  v13 = [UIBarButtonItem alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SORT" value:&stru_1008680E8 table:@"Localizable"];
  v16 = [v13 initWithTitle:v15 menu:_sortMenu];
  sortBarButtonItem = self->_sortBarButtonItem;
  self->_sortBarButtonItem = v16;

  v18 = objc_opt_new();
  inboxButtonView = self->_inboxButtonView;
  self->_inboxButtonView = v18;

  [(CHFriendInboxBarButtonView *)self->_inboxButtonView setDelegate:self];
  v20 = [[UIBarButtonItem alloc] initWithCustomView:self->_inboxButtonView];
  inboxBarButtonItem = self->_inboxBarButtonItem;
  self->_inboxBarButtonItem = v20;

  tableView4 = [(CHFriendListViewController *)self tableView];
  [tableView4 setSeparatorStyle:0];

  tableView5 = [(CHFriendListViewController *)self tableView];
  [tableView5 setIndicatorStyle:2];

  navigationItem3 = [(CHFriendListViewController *)self navigationItem];
  [navigationItem3 setBackButtonDisplayMode:2];

  v25 = objc_alloc_init(UIRefreshControl);
  tableView6 = [(CHFriendListViewController *)self tableView];
  [tableView6 setRefreshControl:v25];

  tableView7 = [(CHFriendListViewController *)self tableView];
  refreshControl = [tableView7 refreshControl];
  [refreshControl addTarget:self action:"_refreshControlValueChanged" forEvents:4096];

  self->_cellsNeedUpdate = 0;
  v29 = +[NSNotificationCenter defaultCenter];
  [v29 addObserver:self selector:"_friendDataWasUpdated:" name:kASFriendListChangedNotificationKey object:0];
  [(CHFriendListViewController *)self _updateSectionsForCurrentDisplayContext];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v5 viewDidAppear:appear];
  if (!self->_haveLoggedInitialDisplayContext)
  {
    [(CHFriendListViewController *)self _logFriendListDisplayMode:[(ASFriendListDisplayContext *)self->_friendListDisplayContext displayMode]];
    self->_haveLoggedInitialDisplayContext = 1;
  }

  tableView = [(CHFriendListViewController *)self tableView];
  [tableView flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v3 viewDidLayoutSubviews];
  [(CHFriendListViewController *)self _layoutPrivacyLinkIfNecessary];
}

- (void)_layoutPrivacyLinkIfNecessary
{
  if (self->_privacyLink)
  {
    view = [(CHFriendListViewController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;

    view2 = [(OBPrivacyLinkController *)self->_privacyLink view];
    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [view2 systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v9, v10}];
    v12 = v11;

    tabBarController = [(CHFriendListViewController *)self tabBarController];
    tabBar = [tabBarController tabBar];
    [tabBar frame];
    Height = CGRectGetHeight(v27);

    navigationController = [(CHFriendListViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v18 = CGRectGetHeight(v28);

    v19 = +[UIApplication sharedApplication];
    windows = [v19 windows];
    firstObject = [windows firstObject];
    windowScene = [firstObject windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
    v24 = CGRectGetHeight(v29);

    view3 = [(OBPrivacyLinkController *)self->_privacyLink view];
    [view3 setFrame:{0.0, v7 - v12 + -10.0 - Height - v18 - v24, v5, v12}];
  }
}

- (void)showDetailForMeOnDate:(id)date
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100137AC4;
  v4[3] = &unk_10083A970;
  selfCopy = self;
  dateCopy = date;
  v3 = dateCopy;
  [(CHFriendListViewController *)selfCopy _performAfterFriendDataIsAvailable:v4];
}

- (void)showDetailForFriendWithUUID:(id)d date:(id)date
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137BE8;
  v7[3] = &unk_10083BC20;
  selfCopy = self;
  dCopy = d;
  dateCopy = date;
  v5 = dateCopy;
  v6 = dCopy;
  [(CHFriendListViewController *)selfCopy _performAfterFriendDataIsAvailable:v7];
}

- (void)showInbox
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100137CBC;
  v2[3] = &unk_10083A8B0;
  v2[4] = self;
  [(CHFriendListViewController *)self _performAfterFriendDataIsAvailable:v2];
}

- (void)scrollToTop
{
  tableView = [(CHFriendListViewController *)self tableView];
  if ([tableView numberOfSections] >= 1)
  {
    tableView2 = [(CHFriendListViewController *)self tableView];
    v4 = [tableView2 numberOfRowsInSection:0];

    if (v4 < 1)
    {
      return;
    }

    tableView = [NSIndexPath indexPathForRow:0 inSection:0];
    tableView3 = [(CHFriendListViewController *)self tableView];
    [tableView3 scrollToRowAtIndexPath:tableView atScrollPosition:1 animated:1];
  }
}

- (id)_makeFriendDetailViewControllerForSection:(id)section row:(id)row
{
  rowCopy = row;
  sectionCopy = section;
  v8 = [CHFriendDetailCollectionViewController alloc];
  friendListManager = self->_friendListManager;
  friendManager = self->_friendManager;
  friend = [rowCopy friend];
  snapshot = [rowCopy snapshot];

  endDate = [sectionCopy endDate];

  v14 = [(CHFriendDetailCollectionViewController *)v8 initWithFriendListManager:friendListManager friendManager:friendManager friend:friend snapshot:snapshot snapshotDate:endDate achievementsDataProvider:self->_achievementsDataProvider workoutDataProvider:self->_workoutsDataProvider workoutFormattingManager:self->_workoutFormattingManager formattingManager:self->_formattingManager badgeImageFactory:self->_imageFactory healthStore:self->_healthStore fitnessAppContext:self->_fitnessAppContext];

  return v14;
}

- (void)_pushDetailViewControllerForSection:(id)section row:(id)row
{
  v6 = [(CHFriendListViewController *)self _makeFriendDetailViewControllerForSection:section row:row];
  navigationController = [(CHFriendListViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)_showDetailForFriend:(id)friend date:(id)date
{
  friendCopy = friend;
  dateCopy = date;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = self->_friendListSections;
  v9 = dateCopy;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = [(NSArray *)v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        [v9 timeIntervalSinceReferenceDate];
        v16 = v15;
        startDate = [v14 startDate];
        [startDate timeIntervalSinceReferenceDate];
        v19 = v18;

        endDate = [v14 endDate];
        [endDate timeIntervalSinceReferenceDate];
        v22 = v21;

        if (v16 >= v19 && v16 < v22)
        {
          v24 = v14;
          goto LABEL_14;
        }
      }

      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_14:

  if (v24)
  {
    v25 = friendCopy;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [v24 rows];
    v26 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v26)
    {
      v38 = v24;
      selfCopy = self;
      v40 = friendCopy;
      v27 = *v43;
      while (2)
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v42 + 1) + 8 * j);
          if (![v25 isMe] || (objc_msgSend(v29, "friend"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isMe"), v30, (v31 & 1) == 0))
          {
            uUID = [v25 UUID];
            friend = [v29 friend];
            uUID2 = [friend UUID];
            v35 = [uUID isEqual:uUID2];

            if ((v35 & 1) == 0)
            {
              continue;
            }
          }

          v26 = v29;
          goto LABEL_27;
        }

        v26 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

LABEL_27:
      self = selfCopy;
      friendCopy = v40;
      v24 = v38;
    }

    if (v26)
    {
      [(CHFriendListViewController *)self _pushDetailViewControllerForSection:v24 row:v26];
    }

    else
    {
      ASLoggingInitialize();
      v37 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_10069CF24(v37, v25);
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    v36 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_10069CFCC(v9, v36);
    }
  }
}

- (void)_performAfterFriendDataIsAvailable:(id)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_friendListSections)
  {
    availableCopy[2](availableCopy);
  }

  else
  {
    ASLoggingInitialize();
    v5 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for friend data", v8, 2u);
    }

    v6 = [availableCopy copy];
    blockWaitingOnFriendData = self->_blockWaitingOnFriendData;
    self->_blockWaitingOnFriendData = v6;
  }
}

- (id)_sortMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(NSMutableArray);
  displayMode = [(ASFriendListDisplayContext *)self->_friendListDisplayContext displayMode];
  friendListManager = self->_friendListManager;
  displayFilter = [(ASFriendListDisplayContext *)self->_friendListDisplayContext displayFilter];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100138504;
  v13 = &unk_10083D2D8;
  v15[1] = displayMode;
  objc_copyWeak(v15, &location);
  v7 = v3;
  v14 = v7;
  [(ASFriendListSectionManager *)friendListManager enumerateValidDisplayModesForFilter:displayFilter usingBlock:&v10];
  v8 = [UIMenu menuWithChildren:v7, v10, v11, v12, v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_hasAnyFriends)
  {
    return [(NSArray *)self->_friendListSections count];
  }

  else
  {
    return 0;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_friendListSections objectAtIndexedSubscript:section];
  rows = [v4 rows];
  v6 = [rows count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  friendListSections = self->_friendListSections;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](friendListSections, "objectAtIndexedSubscript:", [pathCopy section]);
  rows = [v9 rows];
  v11 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (-[CHFriendListViewController _isCompetitionSection:](self, "_isCompetitionSection:", [pathCopy section]))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [viewCopy dequeueReusableCellWithIdentifier:v13 forIndexPath:pathCopy];

    friend = [v11 friend];
    [v14 setFriend:friend];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v14 = [viewCopy dequeueReusableCellWithIdentifier:v17 forIndexPath:pathCopy];

    [v14 setDisplayMode:{-[ASFriendListDisplayContext displayMode](self->_friendListDisplayContext, "displayMode")}];
    friend = [v11 friend];
    snapshot = [v11 snapshot];
    [v14 setFriend:friend snapshot:snapshot formattingManager:self->_formattingManager animated:0];
  }

  [v14 setSelectionStyle:0];

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  friendListSections = self->_friendListSections;
  pathCopy = path;
  viewCopy = view;
  v11 = -[NSArray objectAtIndexedSubscript:](friendListSections, "objectAtIndexedSubscript:", [pathCopy section]);
  rows = [v11 rows];
  v10 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [(CHFriendListViewController *)self _pushDetailViewControllerForSection:v11 row:v10];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[CHFriendListViewController _isCompetitionSection:](self, "_isCompetitionSection:", [pathCopy section]))
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_friendListSections, "objectAtIndexedSubscript:", [pathCopy section]);
    rows = [v6 rows];
    v8 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    competitionScoreConfiguration = self->_competitionScoreConfiguration;
    friend = [v8 friend];
    [CHFriendListCompetitionTableViewCell preferredHeightForConfiguration:competitionScoreConfiguration friend:friend];
    v12 = v11;
  }

  else
  {
    +[CHFriendListTableViewCell preferredHeight];
    v12 = v13;
  }

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  displayMode = [(ASFriendListDisplayContext *)self->_friendListDisplayContext displayMode];
  if (-[CHFriendListViewController _isCompetitionSection:](self, "_isCompetitionSection:", [pathCopy section]))
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_friendListSections, "objectAtIndexedSubscript:", [pathCopy section]);
    rows = [v7 rows];
    v9 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    competitionScoreConfiguration = self->_competitionScoreConfiguration;
    friend = [v9 friend];
    [CHFriendListCompetitionTableViewCell preferredHeightForConfiguration:competitionScoreConfiguration friend:friend];
    v13 = v12;

LABEL_6:
    goto LABEL_7;
  }

  cellHeightCache = self->_cellHeightCache;
  v15 = [NSNumber numberWithInteger:displayMode];
  v7 = [(NSMutableDictionary *)cellHeightCache objectForKeyedSubscript:v15];

  if (!v7)
  {
    [CHFriendListTableViewCell measuredHeightWithDisplayMode:displayMode formattingManager:self->_formattingManager];
    v13 = v17;
    v9 = [NSNumber numberWithDouble:?];
    v18 = self->_cellHeightCache;
    v19 = [NSNumber numberWithInteger:displayMode];
    [(NSMutableDictionary *)v18 setObject:v9 forKeyedSubscript:v19];

    goto LABEL_6;
  }

  [v7 floatValue];
  v13 = v16;
LABEL_7:

  return v13;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  [viewCopy rectForHeaderInSection:section];
  Height = CGRectGetHeight(v26);
  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v9 = +[UIColor blackColor];
  [v8 setBackgroundColor:v9];

  v10 = +[UIListContentConfiguration extraProminentInsetGroupedHeaderConfiguration];
  v11 = [UILabel alloc];
  [viewCopy separatorInset];
  v13 = v12;
  [viewCopy bounds];
  Width = CGRectGetWidth(v27);
  [viewCopy separatorInset];
  v16 = v15;

  v17 = [v11 initWithFrame:{v13, 1.0, Width + v16 * -2.0, Height}];
  v18 = +[UIColor labelColor];
  [v17 setTextColor:v18];

  [v10 directionalLayoutMargins];
  [v17 setDirectionalLayoutMargins:?];
  textProperties = [v10 textProperties];
  font = [textProperties font];
  [v17 setFont:font];

  if ([(CHFriendListViewController *)self _isCompetitionSection:section])
  {
    v21 = ActivitySharingBundle();
    startDate = [v21 localizedStringForKey:@"FRIEND_LIST_COMPETITION_SECTION_HEADER" value:&stru_1008680E8 table:@"Localizable"];
    [v17 setText:startDate];
  }

  else
  {
    v21 = [(NSArray *)self->_friendListSections objectAtIndexedSubscript:section];
    startDate = [v21 startDate];
    v23 = [FIUIDateFormattingUtilities stringWithEitherTodayOrLongStyleDateFromDate:startDate];
    [v17 setText:v23];
  }

  [v8 addSubview:v17];

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  numberOfSections = [view numberOfSections];
  result = 14.0;
  if (numberOfSections - 1 == section)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v4;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  friendListSections = self->_friendListSections;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](friendListSections, "objectAtIndexedSubscript:", [pathCopy section]);
  rows = [v8 rows];
  v10 = [pathCopy row];

  v11 = [rows objectAtIndexedSubscript:v10];

  [(CHFriendListViewController *)self _makeFriendDetailViewControllerForSection:v8 row:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013914C;
  v16 = v15[3] = &unk_10083BBA8;
  v12 = v16;
  v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v15 actionProvider:0];

  return v13;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  [animatorCopy previewViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001391F8;
  v8[3] = &unk_10083A970;
  v9 = v8[4] = self;
  v7 = v9;
  [animatorCopy addCompletion:v8];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate && self->_cellsNeedUpdate)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100139308;
    block[3] = &unk_10083A8B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_cellsNeedUpdate)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013939C;
    block[3] = &unk_10083A8B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_animateOnscreenCellsToNewValues
{
  tableView = [(CHFriendListViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = indexPathsForVisibleRows;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        tableView2 = [(CHFriendListViewController *)self tableView];
        v11 = [tableView2 cellForRowAtIndexPath:v9];

        v12 = -[NSArray objectAtIndexedSubscript:](self->_friendListSections, "objectAtIndexedSubscript:", [v9 section]);
        rows = [v12 rows];
        v14 = [rows objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];

        friend = [v14 friend];
        snapshot = [v14 snapshot];
        [v11 setFriend:friend snapshot:snapshot formattingManager:self->_formattingManager animated:1];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  self->_cellsNeedUpdate = 0;
}

- (void)_updateSectionsForCurrentDisplayContext
{
  friendListSections = self->_friendListSections;
  self->_friendListSections = &__NSArray0__struct;

  sectionForFriendsCompetingWithMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsCompetingWithMe];
  competitionSection = self->_competitionSection;
  self->_competitionSection = sectionForFriendsCompetingWithMe;

  rows = [(ASFriendListSection *)self->_competitionSection rows];
  v7 = [rows count];

  if (v7)
  {
    v8 = [(NSArray *)self->_friendListSections arrayByAddingObject:self->_competitionSection];
    v9 = self->_friendListSections;
    self->_friendListSections = v8;
  }

  v10 = [(ASFriendListSectionManager *)self->_friendListManager sectionsForDisplayContext:self->_friendListDisplayContext];
  v11 = [(NSArray *)self->_friendListSections arrayByAddingObjectsFromArray:v10];
  v12 = self->_friendListSections;
  self->_friendListSections = v11;

  self->_pendingRequestCount = [(ASFriendListSectionManager *)self->_friendListManager totalNumberOfPendingRequests];
  sectionForFriendsHidingDataFromMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsHidingDataFromMe];
  rows2 = [sectionForFriendsHidingDataFromMe rows];
  self->_hiddenFriends = [rows2 count];

  self->_hasAnyFriends = [(ASFriendListSectionManager *)self->_friendListManager hasAnyFriendsSetup];
  inboxBarButtonItem = self->_inboxBarButtonItem;
  v15 = [NSArray arrayWithObjects:&inboxBarButtonItem count:1];
  navigationItem = [(CHFriendListViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:v15];

  if (self->_pendingRequestCount)
  {
    v17 = [NSNumber numberWithUnsignedInteger:?];
    v18 = [FIUIFormattingManager stringWithNumber:v17 decimalPrecision:1];
    [(CHFriendInboxBarButtonView *)self->_inboxButtonView setBadgeText:v18];
  }

  else
  {
    [(CHFriendInboxBarButtonView *)self->_inboxButtonView setBadgeText:?];
  }

  if (![(NSArray *)self->_friendListSections count])
  {
    navigationItem2 = [(CHFriendListViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:0];

    sectionForFriendsInvitedByMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsInvitedByMe];
    rows3 = [sectionForFriendsInvitedByMe rows];
    v30 = [rows3 count];

    emptyListView = self->_emptyListView;
    if (emptyListView)
    {
      [(CHFriendEmptyListView *)emptyListView updateOutgoingInvites:v30];
    }

    else
    {
      v32 = [[CHFriendEmptyListView alloc] initWithOutgoingInvites:v30];
      v33 = self->_emptyListView;
      self->_emptyListView = v32;

      v34 = self->_emptyListView;
      tableView = [(CHFriendListViewController *)self tableView];
      [tableView setBackgroundView:v34];
    }

    tableView2 = [(CHFriendListViewController *)self tableView];
    [tableView2 setScrollEnabled:0];

    if (!self->_privacyLink)
    {
      v37 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.activity"];
      privacyLink = self->_privacyLink;
      self->_privacyLink = v37;

      [(OBPrivacyLinkController *)self->_privacyLink setPresentedViewControllerShouldUseDarkMode:1];
      [(OBPrivacyLinkController *)self->_privacyLink setDisplayIcon:0];
      [(CHFriendListViewController *)self addChildViewController:self->_privacyLink];
      view = [(CHFriendListViewController *)self view];
      view2 = [(OBPrivacyLinkController *)self->_privacyLink view];
      [view addSubview:view2];

      [(OBPrivacyLinkController *)self->_privacyLink didMoveToParentViewController:self];
    }

    view3 = [(CHFriendListViewController *)self view];
    [view3 setNeedsLayout];
    goto LABEL_17;
  }

  tableView3 = [(CHFriendListViewController *)self tableView];
  [tableView3 setBackgroundView:0];

  tableView4 = [(CHFriendListViewController *)self tableView];
  [tableView4 setScrollEnabled:1];

  sortBarButtonItem = self->_sortBarButtonItem;
  navigationItem3 = [(CHFriendListViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:sortBarButtonItem];

  v23 = self->_emptyListView;
  if (v23)
  {
    self->_emptyListView = 0;
  }

  v24 = self->_privacyLink;
  if (v24)
  {
    view4 = [(OBPrivacyLinkController *)v24 view];
    [view4 removeFromSuperview];

    [(OBPrivacyLinkController *)self->_privacyLink willMoveToParentViewController:0];
    [(OBPrivacyLinkController *)self->_privacyLink removeFromParentViewController];
    view3 = self->_privacyLink;
    self->_privacyLink = 0;
LABEL_17:
  }

  [(CHFriendListViewController *)self _executeBlockWaitingOnFriendsDataIfNeeded];
}

- (void)_friendDataWasUpdated:(id)updated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139A8C;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_executeBlockWaitingOnFriendsDataIfNeeded
{
  if (self->_blockWaitingOnFriendData && self->_friendListSections)
  {
    ASLoggingInitialize();
    v3 = ASLogFriendList;
    if (os_log_type_enabled(ASLogFriendList, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Block waiting on friend data, invoking now", v5, 2u);
    }

    (*(self->_blockWaitingOnFriendData + 2))();
    blockWaitingOnFriendData = self->_blockWaitingOnFriendData;
    self->_blockWaitingOnFriendData = 0;
  }
}

- (BOOL)_isCompetitionSection:(unint64_t)section
{
  if (section)
  {
    return 0;
  }

  rows = [(ASFriendListSection *)self->_competitionSection rows];
  v3 = [rows count] != 0;

  return v3;
}

- (void)_refreshControlValueChanged
{
  friendListManager = self->_friendListManager;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100139C6C;
  v3[3] = &unk_10083AC40;
  v3[4] = self;
  [(ASFriendListSectionManager *)friendListManager fetchActivitySharingDataIfTimeSinceLastFetchIsGreaterThan:180 completion:v3];
}

- (void)didTapInboxBarButtonView:(id)view
{
  v5 = [[CHFriendInboxTableViewController alloc] initWithFriendListManager:self->_friendListManager friendManager:self->_friendManager achievementsDataProvider:self->_achievementsDataProvider workoutsDataProvider:self->_workoutsDataProvider workoutFormattingManager:self->_workoutFormattingManager formattingManager:self->_formattingManager badgeImageFactory:self->_imageFactory healthStore:self->_healthStore fitnessAppContext:self->_fitnessAppContext makeFriendDetailViewControllerBlock:0];
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(CHFriendListViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139EA8;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_logFriendListDisplayMode:(int64_t)mode
{
  if (mode <= 4)
  {
    FIActivityAnalyticsSubmission();
  }
}

@end
@interface CHFriendListViewController
- (BOOL)_isCompetitionSection:(unint64_t)a3;
- (CHFriendListViewController)initWithFriendListManager:(id)a3 andWithFriendManager:(id)a4 achievementsDataProvider:(id)a5 workoutsDataProvider:(id)a6 workoutFormattingManager:(id)a7 formattingManager:(id)a8 badgeImageFactory:(id)a9 healthStore:(id)a10 fitnessAppContext:(id)a11;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_makeFriendDetailViewControllerForSection:(id)a3 row:(id)a4;
- (id)_sortMenu;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_animateOnscreenCellsToNewValues;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)_executeBlockWaitingOnFriendsDataIfNeeded;
- (void)_friendDataWasUpdated:(id)a3;
- (void)_layoutPrivacyLinkIfNecessary;
- (void)_logFriendListDisplayMode:(int64_t)a3;
- (void)_performAfterFriendDataIsAvailable:(id)a3;
- (void)_pushDetailViewControllerForSection:(id)a3 row:(id)a4;
- (void)_refreshControlValueChanged;
- (void)_showDetailForFriend:(id)a3 date:(id)a4;
- (void)_updateSectionsForCurrentDisplayContext;
- (void)dealloc;
- (void)didTapInboxBarButtonView:(id)a3;
- (void)loadView;
- (void)scrollToTop;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)showDetailForFriendWithUUID:(id)a3 date:(id)a4;
- (void)showDetailForMeOnDate:(id)a3;
- (void)showInbox;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CHFriendListViewController

- (CHFriendListViewController)initWithFriendListManager:(id)a3 andWithFriendManager:(id)a4 achievementsDataProvider:(id)a5 workoutsDataProvider:(id)a6 workoutFormattingManager:(id)a7 formattingManager:(id)a8 badgeImageFactory:(id)a9 healthStore:(id)a10 fitnessAppContext:(id)a11
{
  v17 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v18 = a10;
  v19 = a11;
  v41.receiver = self;
  v41.super_class = CHFriendListViewController;
  v20 = [(CHFriendListViewController *)&v41 initWithStyle:0];
  v21 = v20;
  if (v20)
  {
    v33 = v17;
    objc_storeStrong(&v20->_friendListManager, a3);
    objc_storeStrong(&v21->_friendManager, a4);
    objc_storeStrong(&v21->_achievementsDataProvider, a5);
    objc_storeStrong(&v21->_workoutsDataProvider, a6);
    objc_storeStrong(&v21->_workoutFormattingManager, a7);
    objc_storeStrong(&v21->_formattingManager, a8);
    objc_storeStrong(&v21->_imageFactory, a9);
    v21->_hasAnyFriends = [(ASFriendListSectionManager *)v21->_friendListManager hasAnyFriendsSetup];
    v22 = objc_opt_new();
    friendListDisplayContext = v21->_friendListDisplayContext;
    v21->_friendListDisplayContext = v22;

    [(ASFriendListDisplayContext *)v21->_friendListDisplayContext setDisplayFilter:0];
    v24 = +[NSUserDefaults standardUserDefaults];
    v25 = [v24 objectForKey:@"CHFriendListDisplayMode"];

    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v26 = [v25 integerValue];
    }

    else
    {
      v26 = 0;
    }

    [(ASFriendListDisplayContext *)v21->_friendListDisplayContext setDisplayMode:v26];
    v27 = +[NSMutableDictionary dictionary];
    cellHeightCache = v21->_cellHeightCache;
    v21->_cellHeightCache = v27;

    v29 = +[ASCompetitionScoreViewConfiguration companionFriendListConfiguration];
    competitionScoreConfiguration = v21->_competitionScoreConfiguration;
    v21->_competitionScoreConfiguration = v29;

    objc_storeStrong(&v21->_healthStore, a10);
    objc_storeStrong(&v21->_fitnessAppContext, a11);
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v21 selector:"_contentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v17 = v33;
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
  v3 = [(CHFriendListViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [(CHFriendListViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v7 registerClass:v8 forCellReuseIdentifier:v10];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v30 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
  v5 = [(CHFriendListViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = +[UIColor systemBackgroundColor];
  v7 = [(CHFriendListViewController *)self tableView];
  [v7 setBackgroundColor:v6];

  v8 = [(CHFriendListViewController *)self tableView];
  [v8 setSectionHeaderTopPadding:0.0];

  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [(CHFriendListViewController *)self tableView];
  [v10 setTableFooterView:v9];

  v11 = [(CHFriendListViewController *)self navigationItem];
  [v11 setLargeTitleDisplayMode:1];

  v12 = [(CHFriendListViewController *)self _sortMenu];
  v13 = [UIBarButtonItem alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SORT" value:&stru_1008680E8 table:@"Localizable"];
  v16 = [v13 initWithTitle:v15 menu:v12];
  sortBarButtonItem = self->_sortBarButtonItem;
  self->_sortBarButtonItem = v16;

  v18 = objc_opt_new();
  inboxButtonView = self->_inboxButtonView;
  self->_inboxButtonView = v18;

  [(CHFriendInboxBarButtonView *)self->_inboxButtonView setDelegate:self];
  v20 = [[UIBarButtonItem alloc] initWithCustomView:self->_inboxButtonView];
  inboxBarButtonItem = self->_inboxBarButtonItem;
  self->_inboxBarButtonItem = v20;

  v22 = [(CHFriendListViewController *)self tableView];
  [v22 setSeparatorStyle:0];

  v23 = [(CHFriendListViewController *)self tableView];
  [v23 setIndicatorStyle:2];

  v24 = [(CHFriendListViewController *)self navigationItem];
  [v24 setBackButtonDisplayMode:2];

  v25 = objc_alloc_init(UIRefreshControl);
  v26 = [(CHFriendListViewController *)self tableView];
  [v26 setRefreshControl:v25];

  v27 = [(CHFriendListViewController *)self tableView];
  v28 = [v27 refreshControl];
  [v28 addTarget:self action:"_refreshControlValueChanged" forEvents:4096];

  self->_cellsNeedUpdate = 0;
  v29 = +[NSNotificationCenter defaultCenter];
  [v29 addObserver:self selector:"_friendDataWasUpdated:" name:kASFriendListChangedNotificationKey object:0];
  [(CHFriendListViewController *)self _updateSectionsForCurrentDisplayContext];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHFriendListViewController;
  [(CHFriendListViewController *)&v5 viewDidAppear:a3];
  if (!self->_haveLoggedInitialDisplayContext)
  {
    [(CHFriendListViewController *)self _logFriendListDisplayMode:[(ASFriendListDisplayContext *)self->_friendListDisplayContext displayMode]];
    self->_haveLoggedInitialDisplayContext = 1;
  }

  v4 = [(CHFriendListViewController *)self tableView];
  [v4 flashScrollIndicators];
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
    v3 = [(CHFriendListViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = [(OBPrivacyLinkController *)self->_privacyLink view];
    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [v8 systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v9, v10}];
    v12 = v11;

    v13 = [(CHFriendListViewController *)self tabBarController];
    v14 = [v13 tabBar];
    [v14 frame];
    Height = CGRectGetHeight(v27);

    v16 = [(CHFriendListViewController *)self navigationController];
    v17 = [v16 navigationBar];
    [v17 frame];
    v18 = CGRectGetHeight(v28);

    v19 = +[UIApplication sharedApplication];
    v20 = [v19 windows];
    v21 = [v20 firstObject];
    v22 = [v21 windowScene];
    v23 = [v22 statusBarManager];
    [v23 statusBarFrame];
    v24 = CGRectGetHeight(v29);

    v25 = [(OBPrivacyLinkController *)self->_privacyLink view];
    [v25 setFrame:{0.0, v7 - v12 + -10.0 - Height - v18 - v24, v5, v12}];
  }
}

- (void)showDetailForMeOnDate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100137AC4;
  v4[3] = &unk_10083A970;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CHFriendListViewController *)v5 _performAfterFriendDataIsAvailable:v4];
}

- (void)showDetailForFriendWithUUID:(id)a3 date:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137BE8;
  v7[3] = &unk_10083BC20;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(CHFriendListViewController *)v8 _performAfterFriendDataIsAvailable:v7];
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
  v6 = [(CHFriendListViewController *)self tableView];
  if ([v6 numberOfSections] >= 1)
  {
    v3 = [(CHFriendListViewController *)self tableView];
    v4 = [v3 numberOfRowsInSection:0];

    if (v4 < 1)
    {
      return;
    }

    v6 = [NSIndexPath indexPathForRow:0 inSection:0];
    v5 = [(CHFriendListViewController *)self tableView];
    [v5 scrollToRowAtIndexPath:v6 atScrollPosition:1 animated:1];
  }
}

- (id)_makeFriendDetailViewControllerForSection:(id)a3 row:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CHFriendDetailCollectionViewController alloc];
  friendListManager = self->_friendListManager;
  friendManager = self->_friendManager;
  v11 = [v6 friend];
  v12 = [v6 snapshot];

  v13 = [v7 endDate];

  v14 = [(CHFriendDetailCollectionViewController *)v8 initWithFriendListManager:friendListManager friendManager:friendManager friend:v11 snapshot:v12 snapshotDate:v13 achievementsDataProvider:self->_achievementsDataProvider workoutDataProvider:self->_workoutsDataProvider workoutFormattingManager:self->_workoutFormattingManager formattingManager:self->_formattingManager badgeImageFactory:self->_imageFactory healthStore:self->_healthStore fitnessAppContext:self->_fitnessAppContext];

  return v14;
}

- (void)_pushDetailViewControllerForSection:(id)a3 row:(id)a4
{
  v6 = [(CHFriendListViewController *)self _makeFriendDetailViewControllerForSection:a3 row:a4];
  v5 = [(CHFriendListViewController *)self navigationController];
  [v5 pushViewController:v6 animated:1];
}

- (void)_showDetailForFriend:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = self->_friendListSections;
  v9 = v7;
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
        v17 = [v14 startDate];
        [v17 timeIntervalSinceReferenceDate];
        v19 = v18;

        v20 = [v14 endDate];
        [v20 timeIntervalSinceReferenceDate];
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
    v25 = v6;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [v24 rows];
    v26 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v26)
    {
      v38 = v24;
      v39 = self;
      v40 = v6;
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
            v32 = [v25 UUID];
            v33 = [v29 friend];
            v34 = [v33 UUID];
            v35 = [v32 isEqual:v34];

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
      self = v39;
      v6 = v40;
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

- (void)_performAfterFriendDataIsAvailable:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_friendListSections)
  {
    v4[2](v4);
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

    v6 = [v4 copy];
    blockWaitingOnFriendData = self->_blockWaitingOnFriendData;
    self->_blockWaitingOnFriendData = v6;
  }
}

- (id)_sortMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ASFriendListDisplayContext *)self->_friendListDisplayContext displayMode];
  friendListManager = self->_friendListManager;
  v6 = [(ASFriendListDisplayContext *)self->_friendListDisplayContext displayFilter];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100138504;
  v13 = &unk_10083D2D8;
  v15[1] = v4;
  objc_copyWeak(v15, &location);
  v7 = v3;
  v14 = v7;
  [(ASFriendListSectionManager *)friendListManager enumerateValidDisplayModesForFilter:v6 usingBlock:&v10];
  v8 = [UIMenu menuWithChildren:v7, v10, v11, v12, v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_friendListSections objectAtIndexedSubscript:a4];
  v5 = [v4 rows];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  friendListSections = self->_friendListSections;
  v8 = a3;
  v9 = -[NSArray objectAtIndexedSubscript:](friendListSections, "objectAtIndexedSubscript:", [v6 section]);
  v10 = [v9 rows];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  if (-[CHFriendListViewController _isCompetitionSection:](self, "_isCompetitionSection:", [v6 section]))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v8 dequeueReusableCellWithIdentifier:v13 forIndexPath:v6];

    v15 = [v11 friend];
    [v14 setFriend:v15];
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v14 = [v8 dequeueReusableCellWithIdentifier:v17 forIndexPath:v6];

    [v14 setDisplayMode:{-[ASFriendListDisplayContext displayMode](self->_friendListDisplayContext, "displayMode")}];
    v15 = [v11 friend];
    v18 = [v11 snapshot];
    [v14 setFriend:v15 snapshot:v18 formattingManager:self->_formattingManager animated:0];
  }

  [v14 setSelectionStyle:0];

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  friendListSections = self->_friendListSections;
  v7 = a4;
  v8 = a3;
  v11 = -[NSArray objectAtIndexedSubscript:](friendListSections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v11 rows];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  [(CHFriendListViewController *)self _pushDetailViewControllerForSection:v11 row:v10];
  [v8 deselectRowAtIndexPath:v7 animated:1];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[CHFriendListViewController _isCompetitionSection:](self, "_isCompetitionSection:", [v5 section]))
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_friendListSections, "objectAtIndexedSubscript:", [v5 section]);
    v7 = [v6 rows];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    competitionScoreConfiguration = self->_competitionScoreConfiguration;
    v10 = [v8 friend];
    [CHFriendListCompetitionTableViewCell preferredHeightForConfiguration:competitionScoreConfiguration friend:v10];
    v12 = v11;
  }

  else
  {
    +[CHFriendListTableViewCell preferredHeight];
    v12 = v13;
  }

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ASFriendListDisplayContext *)self->_friendListDisplayContext displayMode];
  if (-[CHFriendListViewController _isCompetitionSection:](self, "_isCompetitionSection:", [v5 section]))
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_friendListSections, "objectAtIndexedSubscript:", [v5 section]);
    v8 = [v7 rows];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

    competitionScoreConfiguration = self->_competitionScoreConfiguration;
    v11 = [v9 friend];
    [CHFriendListCompetitionTableViewCell preferredHeightForConfiguration:competitionScoreConfiguration friend:v11];
    v13 = v12;

LABEL_6:
    goto LABEL_7;
  }

  cellHeightCache = self->_cellHeightCache;
  v15 = [NSNumber numberWithInteger:v6];
  v7 = [(NSMutableDictionary *)cellHeightCache objectForKeyedSubscript:v15];

  if (!v7)
  {
    [CHFriendListTableViewCell measuredHeightWithDisplayMode:v6 formattingManager:self->_formattingManager];
    v13 = v17;
    v9 = [NSNumber numberWithDouble:?];
    v18 = self->_cellHeightCache;
    v19 = [NSNumber numberWithInteger:v6];
    [(NSMutableDictionary *)v18 setObject:v9 forKeyedSubscript:v19];

    goto LABEL_6;
  }

  [v7 floatValue];
  v13 = v16;
LABEL_7:

  return v13;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  [v6 rectForHeaderInSection:a4];
  Height = CGRectGetHeight(v26);
  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v9 = +[UIColor blackColor];
  [v8 setBackgroundColor:v9];

  v10 = +[UIListContentConfiguration extraProminentInsetGroupedHeaderConfiguration];
  v11 = [UILabel alloc];
  [v6 separatorInset];
  v13 = v12;
  [v6 bounds];
  Width = CGRectGetWidth(v27);
  [v6 separatorInset];
  v16 = v15;

  v17 = [v11 initWithFrame:{v13, 1.0, Width + v16 * -2.0, Height}];
  v18 = +[UIColor labelColor];
  [v17 setTextColor:v18];

  [v10 directionalLayoutMargins];
  [v17 setDirectionalLayoutMargins:?];
  v19 = [v10 textProperties];
  v20 = [v19 font];
  [v17 setFont:v20];

  if ([(CHFriendListViewController *)self _isCompetitionSection:a4])
  {
    v21 = ActivitySharingBundle();
    v22 = [v21 localizedStringForKey:@"FRIEND_LIST_COMPETITION_SECTION_HEADER" value:&stru_1008680E8 table:@"Localizable"];
    [v17 setText:v22];
  }

  else
  {
    v21 = [(NSArray *)self->_friendListSections objectAtIndexedSubscript:a4];
    v22 = [v21 startDate];
    v23 = [FIUIDateFormattingUtilities stringWithEitherTodayOrLongStyleDateFromDate:v22];
    [v17 setText:v23];
  }

  [v8 addSubview:v17];

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [a3 numberOfSections];
  result = 14.0;
  if (v5 - 1 == a4)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v4;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  friendListSections = self->_friendListSections;
  v7 = a4;
  v8 = -[NSArray objectAtIndexedSubscript:](friendListSections, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [v8 rows];
  v10 = [v7 row];

  v11 = [v9 objectAtIndexedSubscript:v10];

  [(CHFriendListViewController *)self _makeFriendDetailViewControllerForSection:v8 row:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013914C;
  v16 = v15[3] = &unk_10083BBA8;
  v12 = v16;
  v13 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v15 actionProvider:0];

  return v13;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  [v6 previewViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001391F8;
  v8[3] = &unk_10083A970;
  v9 = v8[4] = self;
  v7 = v9;
  [v6 addCompletion:v8];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4 && self->_cellsNeedUpdate)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100139308;
    block[3] = &unk_10083A8B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
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
  v3 = [(CHFriendListViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
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
        v10 = [(CHFriendListViewController *)self tableView];
        v11 = [v10 cellForRowAtIndexPath:v9];

        v12 = -[NSArray objectAtIndexedSubscript:](self->_friendListSections, "objectAtIndexedSubscript:", [v9 section]);
        v13 = [v12 rows];
        v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];

        v15 = [v14 friend];
        v16 = [v14 snapshot];
        [v11 setFriend:v15 snapshot:v16 formattingManager:self->_formattingManager animated:1];

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

  v4 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsCompetingWithMe];
  competitionSection = self->_competitionSection;
  self->_competitionSection = v4;

  v6 = [(ASFriendListSection *)self->_competitionSection rows];
  v7 = [v6 count];

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
  v13 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsHidingDataFromMe];
  v14 = [v13 rows];
  self->_hiddenFriends = [v14 count];

  self->_hasAnyFriends = [(ASFriendListSectionManager *)self->_friendListManager hasAnyFriendsSetup];
  inboxBarButtonItem = self->_inboxBarButtonItem;
  v15 = [NSArray arrayWithObjects:&inboxBarButtonItem count:1];
  v16 = [(CHFriendListViewController *)self navigationItem];
  [v16 setRightBarButtonItems:v15];

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
    v27 = [(CHFriendListViewController *)self navigationItem];
    [v27 setLeftBarButtonItem:0];

    v28 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsInvitedByMe];
    v29 = [v28 rows];
    v30 = [v29 count];

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
      v35 = [(CHFriendListViewController *)self tableView];
      [v35 setBackgroundView:v34];
    }

    v36 = [(CHFriendListViewController *)self tableView];
    [v36 setScrollEnabled:0];

    if (!self->_privacyLink)
    {
      v37 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.activity"];
      privacyLink = self->_privacyLink;
      self->_privacyLink = v37;

      [(OBPrivacyLinkController *)self->_privacyLink setPresentedViewControllerShouldUseDarkMode:1];
      [(OBPrivacyLinkController *)self->_privacyLink setDisplayIcon:0];
      [(CHFriendListViewController *)self addChildViewController:self->_privacyLink];
      v39 = [(CHFriendListViewController *)self view];
      v40 = [(OBPrivacyLinkController *)self->_privacyLink view];
      [v39 addSubview:v40];

      [(OBPrivacyLinkController *)self->_privacyLink didMoveToParentViewController:self];
    }

    v26 = [(CHFriendListViewController *)self view];
    [v26 setNeedsLayout];
    goto LABEL_17;
  }

  v19 = [(CHFriendListViewController *)self tableView];
  [v19 setBackgroundView:0];

  v20 = [(CHFriendListViewController *)self tableView];
  [v20 setScrollEnabled:1];

  sortBarButtonItem = self->_sortBarButtonItem;
  v22 = [(CHFriendListViewController *)self navigationItem];
  [v22 setLeftBarButtonItem:sortBarButtonItem];

  v23 = self->_emptyListView;
  if (v23)
  {
    self->_emptyListView = 0;
  }

  v24 = self->_privacyLink;
  if (v24)
  {
    v25 = [(OBPrivacyLinkController *)v24 view];
    [v25 removeFromSuperview];

    [(OBPrivacyLinkController *)self->_privacyLink willMoveToParentViewController:0];
    [(OBPrivacyLinkController *)self->_privacyLink removeFromParentViewController];
    v26 = self->_privacyLink;
    self->_privacyLink = 0;
LABEL_17:
  }

  [(CHFriendListViewController *)self _executeBlockWaitingOnFriendsDataIfNeeded];
}

- (void)_friendDataWasUpdated:(id)a3
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

- (BOOL)_isCompetitionSection:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  v4 = [(ASFriendListSection *)self->_competitionSection rows];
  v3 = [v4 count] != 0;

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

- (void)didTapInboxBarButtonView:(id)a3
{
  v5 = [[CHFriendInboxTableViewController alloc] initWithFriendListManager:self->_friendListManager friendManager:self->_friendManager achievementsDataProvider:self->_achievementsDataProvider workoutsDataProvider:self->_workoutsDataProvider workoutFormattingManager:self->_workoutFormattingManager formattingManager:self->_formattingManager badgeImageFactory:self->_imageFactory healthStore:self->_healthStore fitnessAppContext:self->_fitnessAppContext makeFriendDetailViewControllerBlock:0];
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(CHFriendListViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139EA8;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_logFriendListDisplayMode:(int64_t)a3
{
  if (a3 <= 4)
  {
    FIActivityAnalyticsSubmission();
  }
}

@end
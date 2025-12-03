@interface CHFriendInboxTableViewController
- (BOOL)_isIndexPathEditable:(id)editable;
- (CHFriendInboxTableViewController)initWithFriendListManager:(id)manager friendManager:(id)friendManager achievementsDataProvider:(id)provider workoutsDataProvider:(id)dataProvider workoutFormattingManager:(id)formattingManager formattingManager:(id)a8 badgeImageFactory:(id)factory healthStore:(id)self0 fitnessAppContext:(id)self1 makeFriendDetailViewControllerBlock:(id)self2;
- (id)_presentedViewController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_sectionTypeForSectionIndex:(int64_t)index;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_friendDataWasUpdated:(id)updated;
- (void)_inviteFriends;
- (void)_presentErrorAlertWithMessage:(id)message;
- (void)_updateSections;
- (void)dealloc;
- (void)incomingTableViewCellDidTapAccept:(id)accept;
- (void)incomingTableViewCellDidTapIgnore:(id)ignore;
- (void)loadView;
- (void)reloadDataAnimated:(BOOL)animated;
- (void)removeCellAtIndexPath:(id)path;
- (void)removeCellFromTable:(id)table;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CHFriendInboxTableViewController

- (CHFriendInboxTableViewController)initWithFriendListManager:(id)manager friendManager:(id)friendManager achievementsDataProvider:(id)provider workoutsDataProvider:(id)dataProvider workoutFormattingManager:(id)formattingManager formattingManager:(id)a8 badgeImageFactory:(id)factory healthStore:(id)self0 fitnessAppContext:(id)self1 makeFriendDetailViewControllerBlock:(id)self2
{
  managerCopy = manager;
  obj = friendManager;
  friendManagerCopy = friendManager;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  formattingManagerCopy = formattingManager;
  formattingManagerCopy2 = formattingManager;
  v29 = a8;
  v31 = a8;
  factoryCopy = factory;
  storeCopy = store;
  contextCopy = context;
  blockCopy = block;
  v37.receiver = self;
  v37.super_class = CHFriendInboxTableViewController;
  v22 = [(CHFriendInboxTableViewController *)&v37 initWithStyle:2];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_friendListManager, manager);
    objc_storeStrong(&v23->_friendManager, obj);
    objc_storeStrong(&v23->_achievementsDataProvider, provider);
    objc_storeStrong(&v23->_workoutsDataProvider, dataProvider);
    objc_storeStrong(&v23->_workoutFormattingManager, formattingManagerCopy);
    objc_storeStrong(&v23->_formattingManager, v29);
    objc_storeStrong(&v23->_imageFactory, factory);
    objc_storeStrong(&v23->_healthStore, store);
    objc_storeStrong(&v23->_fitnessAppContext, context);
    v24 = objc_retainBlock(blockCopy);
    makeFriendDetailViewControllerBlock = v23->_makeFriendDetailViewControllerBlock;
    v23->_makeFriendDetailViewControllerBlock = v24;
  }

  return v23;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v8 loadView];
  tableView = [(CHFriendInboxTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Add"];

  tableView2 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  tableView3 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"IncomingCell"];

  tableView4 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"OutgoingCell"];

  tableView5 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"LegacyDevicesCell"];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v40 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  tableView = [(CHFriendInboxTableViewController *)self tableView];
  [tableView setBackgroundColor:v3];

  tableView2 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView2 _setDrawsSeparatorAtTopOfSections:0];

  tableView3 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView3 setIndicatorStyle:2];

  v39 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_closeButtonTapped"];
  navigationItem = [(CHFriendInboxTableViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v39];

  v8 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.activity"];
  privacyLink = self->_privacyLink;
  self->_privacyLink = v8;

  [(OBPrivacyLinkController *)self->_privacyLink setPresentedViewControllerShouldUseDarkMode:1];
  [(OBPrivacyLinkController *)self->_privacyLink setDisplayIcon:0];
  [(CHFriendInboxTableViewController *)self addChildViewController:self->_privacyLink];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  view = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v10 addSubview:view];

  view2 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(OBPrivacyLinkController *)self->_privacyLink view];
  leadingAnchor = [view3 leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:31.0];
  v41[0] = v35;
  view4 = [(OBPrivacyLinkController *)self->_privacyLink view];
  bottomAnchor = [view4 bottomAnchor];
  bottomAnchor2 = [v10 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
  v41[1] = v31;
  view5 = [(OBPrivacyLinkController *)self->_privacyLink view];
  topAnchor = [view5 topAnchor];
  v30 = v10;
  topAnchor2 = [v10 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v41[2] = v15;
  view6 = [(OBPrivacyLinkController *)self->_privacyLink view];
  trailingAnchor = [view6 trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-31.0];
  v41[3] = v19;
  v20 = [NSArray arrayWithObjects:v41 count:4];
  [NSLayoutConstraint activateConstraints:v20];

  tableView4 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView4 setTableFooterView:v30];

  [(OBPrivacyLinkController *)self->_privacyLink didMoveToParentViewController:self];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
  navigationItem2 = [(CHFriendInboxTableViewController *)self navigationItem];
  [navigationItem2 setTitle:v23];

  navigationItem3 = [(CHFriendInboxTableViewController *)self navigationItem];
  [navigationItem3 setBackButtonDisplayMode:2];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"_friendDataWasUpdated:" name:kASFriendListChangedNotificationKey object:0];
  cloudDeviceProvider = [(CHFitnessAppContext *)self->_fitnessAppContext cloudDeviceProvider];
  cloudDeviceProvider = self->_cloudDeviceProvider;
  self->_cloudDeviceProvider = cloudDeviceProvider;

  [(CHFriendInboxTableViewController *)self _updateSections];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v5 viewDidAppear:appear];
  tableView = [(CHFriendInboxTableViewController *)self tableView];
  [tableView flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v40 viewDidLayoutSubviews];
  tableView = [(CHFriendInboxTableViewController *)self tableView];
  [tableView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  tabBarController = [(CHFriendInboxTableViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];

  if (tabBar)
  {
    tableView2 = [(CHFriendInboxTableViewController *)self tableView];
    [tableView2 bounds];
    v16 = v15;

    [tabBar frame];
    v9 = v16 - v17;
  }

  tableView3 = [(CHFriendInboxTableViewController *)self tableView];
  [tableView3 setContentInset:{v5, v7, v9, v11}];

  tableView4 = [(CHFriendInboxTableViewController *)self tableView];
  tableFooterView = [tableView4 tableFooterView];

  if (tableFooterView)
  {
    view = [(OBPrivacyLinkController *)self->_privacyLink view];
    view2 = [(CHFriendInboxTableViewController *)self view];
    [view2 bounds];
    v24 = v23 + -62.0;
    LODWORD(v23) = 1148846080;
    LODWORD(v25) = 1112014848;
    [view systemLayoutSizeFittingSize:v24 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v23, v25}];
    v27 = v26;

    tableView5 = [(CHFriendInboxTableViewController *)self tableView];
    tableFooterView2 = [tableView5 tableFooterView];
    [tableFooterView2 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    if (v37 != v27)
    {
      tableView6 = [(CHFriendInboxTableViewController *)self tableView];
      tableFooterView3 = [tableView6 tableFooterView];
      [tableFooterView3 setFrame:{v31, v33, v35, v27 + 0.0}];
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v4 dealloc];
}

- (void)_inviteFriends
{
  if ([(ASFriendListSectionManager *)self->_friendListManager hasReachedMaxNumberOfFriends])
  {
    v4 = sub_10010833C();
    [CHFriendInboxTableViewController presentViewController:"presentViewController:animated:completion:" animated:? completion:?];
  }

  else
  {
    sub_10010208C();
    v4 = [[CHAddFriendViewController alloc] initWithFriendListManager:self->_friendListManager friendManager:self->_friendManager];
    [(CHAddFriendViewController *)v4 setDelegate:self];
    v3 = [[UINavigationController alloc] initWithRootViewController:v4];
    [(CHFriendInboxTableViewController *)self presentViewController:v3 animated:1 completion:0];
  }
}

- (void)incomingTableViewCellDidTapAccept:(id)accept
{
  acceptCopy = accept;
  objc_initWeak(&location, self);
  type = [acceptCopy type];
  if (type)
  {
    if (type == 1)
    {
      friend = [acceptCopy friend];
      friendManager = self->_friendManager;
      v8 = FIExperienceTypeWithHealthStore();
      sub_10010858C(self, friend, friendManager, v8);
    }
  }

  else if ([(ASFriendListSectionManager *)self->_friendListManager hasReachedMaxNumberOfFriends])
  {
    v9 = sub_10010833C();
    sub_1001084B8(v9);
  }

  else
  {
    v10 = self->_friendManager;
    friend2 = [acceptCopy friend];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001123CC;
    v12[3] = &unk_10083B020;
    objc_copyWeak(&v13, &location);
    [(CHFriendManager *)v10 acceptInvitationFromFriend:friend2 completion:v12];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

- (void)incomingTableViewCellDidTapIgnore:(id)ignore
{
  ignoreCopy = ignore;
  objc_initWeak(&location, self);
  type = [ignoreCopy type];
  if (!type)
  {
    friendManager = self->_friendManager;
    friend = [ignoreCopy friend];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100112604;
    v12[3] = &unk_10083B020;
    v8 = &v13;
    objc_copyWeak(&v13, &location);
    [(CHFriendManager *)friendManager ignoreInvitationFromFriend:friend completion:v12];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v6 = self->_friendManager;
    friend = [ignoreCopy friend];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001126A0;
    v10[3] = &unk_10083B020;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    [(CHFriendManager *)v6 ignoreCompetitionRequestFromFriend:friend completion:v10];
LABEL_5:

    objc_destroyWeak(v8);
  }

  objc_destroyWeak(&location);
}

- (void)_presentErrorAlertWithMessage:(id)message
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001127D0;
  block[3] = &unk_10083A8B0;
  messageCopy = message;
  v3 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_presentedViewController
{
  v2 = +[UIApplication sharedApplication];
  windows = [v2 windows];
  firstObject = [windows firstObject];
  rootViewController = [firstObject rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  return presentedViewController;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(CHFriendInboxTableViewController *)self _sectionTypeForSectionIndex:section];
  friendListSectionsByType = self->_friendListSectionsByType;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v7];

  rows = [v8 rows];
  v10 = [rows count];
  if (v5 == 7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v10 = [NSNumber numberWithInteger:v8];
  v11 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v10];

  v12 = [pathCopy row];
  rows = [v11 rows];
  if (v12 >= [rows count])
  {
    v15 = 0;
  }

  else
  {
    rows2 = [v11 rows];
    v15 = [rows2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  v16 = 0;
  if (v8 > 4)
  {
    if ((v8 - 5) < 2)
    {
LABEL_20:
      v16 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
      [v16 setSelectionStyle:3];
      friend = [v15 friend];
      snapshot = [v15 snapshot];
      [v16 setFriend:friend snapshot:snapshot animated:0];
LABEL_26:

      goto LABEL_27;
    }

    if (v8 == 7)
    {
      v22 = [pathCopy row];
      rows3 = [v11 rows];
      v24 = [rows3 count];

      if (v22 == v24)
      {
        v17 = @"LegacyDevicesCell";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v8 != 8)
    {
      goto LABEL_28;
    }

    v18 = [viewCopy dequeueReusableCellWithIdentifier:@"OutgoingCell" forIndexPath:pathCopy];
    [v18 setSelectionStyle:0];
    v16 = v18;
    friend2 = [v15 friend];
    [v16 setFriend:friend2];

    friend = [v15 friend];
    as_invitedDurationString = [friend as_invitedDurationString];
    goto LABEL_22;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = @"Add";
LABEL_19:
          v16 = [viewCopy dequeueReusableCellWithIdentifier:v17 forIndexPath:pathCopy];
          [v16 setSelectionStyle:3];
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v31 = [viewCopy dequeueReusableCellWithIdentifier:@"IncomingCell" forIndexPath:pathCopy];
      [v31 setSelectionStyle:0];
      v16 = v31;
      friend3 = [v15 friend];
      [v16 setFriend:friend3];

      [v16 setDelegate:self];
      [v16 setType:0];
      v33 = +[ARUIMetricColors briskColors];
      nonGradientTextColor = [v33 nonGradientTextColor];
      [v16 setAcceptTintColor:nonGradientTextColor];

      friend = +[ARUIMetricColors energyColors];
      snapshot = [friend nonGradientTextColor];
      [v16 setIgnoreTintColor:snapshot];
LABEL_25:

      goto LABEL_26;
    }

    v26 = [viewCopy dequeueReusableCellWithIdentifier:@"OutgoingCell" forIndexPath:pathCopy];
    [v26 setSelectionStyle:0];
    v16 = v26;
    friend4 = [v15 friend];
    [v16 setFriend:friend4];

    friend = [v15 friend];
    as_invitedDurationString = [friend as_competitionRequestDurationRemainingString];
LABEL_22:
    snapshot = as_invitedDurationString;
    [v16 setDetailText:as_invitedDurationString];
    goto LABEL_25;
  }

  if (!v8)
  {
    v28 = [viewCopy dequeueReusableCellWithIdentifier:@"IncomingCell" forIndexPath:pathCopy];
    [v28 setSelectionStyle:0];
    v16 = v28;
    friend5 = [v15 friend];
    [v16 setFriend:friend5];

    [v16 setDelegate:self];
    [v16 setType:1];
    v30 = +[UIColor as_lightCompetitionGold];
    [v16 setAcceptTintColor:v30];

    friend = +[UIColor as_darkCompetitionGold];
    [v16 setIgnoreTintColor:friend];

LABEL_27:
    goto LABEL_28;
  }

  if (v8 == 1)
  {
    goto LABEL_20;
  }

LABEL_28:

  return v16;
}

- (BOOL)_isIndexPathEditable:(id)editable
{
  editableCopy = editable;
  v5 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [editableCopy section]);
  if (v5 == 8)
  {
    LOBYTE(v12) = 1;
  }

  else if (v5 == 3)
  {
    friendListSectionsByType = self->_friendListSectionsByType;
    v7 = [NSNumber numberWithInteger:3];
    v8 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v7];

    rows = [v8 rows];
    v10 = [rows objectAtIndexedSubscript:{objc_msgSend(editableCopy, "row")}];

    friend = [v10 friend];
    v12 = [friend isAwaitingInviteResponseFromMe] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  if (style == 1)
  {
    v11 = v10;
    if ([(CHFriendInboxTableViewController *)self _isIndexPathEditable:pathCopy])
    {
      friendListSectionsByType = self->_friendListSectionsByType;
      v13 = [NSNumber numberWithInteger:v11];
      v14 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v13];

      rows = [v14 rows];
      v16 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      objc_initWeak(&location, self);
      [viewCopy setEditing:0 animated:1];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1001131E4;
      v24 = &unk_10083B020;
      objc_copyWeak(&v25, &location);
      v17 = objc_retainBlock(&v21);
      if (v11 == 3)
      {
        friendManager = self->_friendManager;
        friend = [v16 friend];
        [(CHFriendManager *)friendManager removeFriend:friend completion:v17];
      }

      else
      {
        if (v11 != 8)
        {
LABEL_8:

          objc_destroyWeak(&v25);
          objc_destroyWeak(&location);

          goto LABEL_9;
        }

        v18 = self->_friendManager;
        friend = [v16 friend];
        [(CHFriendManager *)v18 withdrawInvitationToFriend:friend completion:v17];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v9 = [NSNumber numberWithInteger:v7];
  v10 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v9];

  if (v7 != 3 && v7 != 8)
  {
    if (v7 == 7 && ([v10 rows], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v13 = objc_msgSend(pathCopy, "row"), v11, v12 == v13))
    {
      v14 = [[CHLegacyDevicesViewController alloc] initWithFitnessAppContext:self->_fitnessAppContext];
      v15 = [[UINavigationController alloc] initWithRootViewController:v14];
      navigationController = [(CHFriendInboxTableViewController *)self navigationController];
      [navigationController presentViewController:v15 animated:1 completion:0];
    }

    else
    {
      v17 = self->_friendListSectionsByType;
      v18 = [NSNumber numberWithInteger:v7];
      v14 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v18];

      rows = [(CHLegacyDevicesViewController *)v14 rows];
      v15 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CHFriendInboxTableViewController *)self _inviteFriends];
      }

      else
      {
        makeFriendDetailViewControllerBlock = self->_makeFriendDetailViewControllerBlock;
        friend = [v15 friend];
        v22 = makeFriendDetailViewControllerBlock[2](makeFriendDetailViewControllerBlock, friend);

        navigationController2 = [(CHFriendInboxTableViewController *)self navigationController];
        [navigationController2 pushViewController:v22 animated:1];
      }
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(CHFriendInboxTableViewController *)self _sectionTypeForSectionIndex:section];
  v5 = 0;
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"COMPETITION_INBOX_OUTGOING_HEADER";
      }

      else
      {
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"SHARING_INBOX_PENDING";
      }
    }

    else if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"COMPETITION_INBOX_CURRENTLY_COMPETING_HEADER";
    }

    else
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"COMPETITION_INBOX_INCOMING_HEADER";
    }
  }

  else if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"SHARING_INBOX_ACTIVE";
    }

    else
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"SHARING_INBOX_HIDING";
    }
  }

  else
  {
    switch(v4)
    {
      case 6:
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"SHARING_INBOX_HIDDEN";
        break;
      case 7:
        v6 = [NSBundle bundleForClass:objc_opt_class()];
        v7 = v6;
        v8 = @"SHARING_INBOX_AWAITING_DOWNGRADE";
        v9 = @"Localizable-tetra";
        goto LABEL_20;
      case 8:
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"SHARING_INBOX_WAITING";
        break;
      default:
        goto LABEL_21;
    }
  }

  v9 = @"Localizable";
LABEL_20:
  v5 = [v6 localizedStringForKey:v8 value:&stru_1008680E8 table:v9];

LABEL_21:

  return v5;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  if ([(CHFriendInboxTableViewController *)self _sectionTypeForSectionIndex:section]<= 2)
  {
    v7 = +[UIColor as_lightCompetitionGold];
    textLabel = [headerViewCopy textLabel];
    [textLabel setTextColor:v7];
  }
}

- (int64_t)_sectionTypeForSectionIndex:(int64_t)index
{
  v4 = sub_1001139EC(self->_friendListSectionsByType);
  if ([v4 count] <= index)
  {
    integerValue = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:index];
    integerValue = [v5 integerValue];

    if (integerValue > 8)
    {
      integerValue = 3;
    }
  }

  return integerValue;
}

- (void)_updateSections
{
  v3 = +[NSMutableDictionary dictionary];
  friendListSectionsByType = self->_friendListSectionsByType;
  self->_friendListSectionsByType = v3;

  sectionForFriendsRequestingMeToCompete = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsRequestingMeToCompete];
  rows = [sectionForFriendsRequestingMeToCompete rows];
  v7 = [rows count];

  if (v7)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsRequestingMeToCompete forKeyedSubscript:&off_10086E278];
  }

  sectionForFriendsCompetingWithMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsCompetingWithMe];
  rows2 = [sectionForFriendsCompetingWithMe rows];
  v10 = [rows2 count];

  if (v10)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsCompetingWithMe forKeyedSubscript:&off_10086E290];
  }

  sectionForFriendsRequestedToCompeteByMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsRequestedToCompeteByMe];
  rows3 = [sectionForFriendsRequestedToCompeteByMe rows];
  v13 = [rows3 count];

  if (v13)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsRequestedToCompeteByMe forKeyedSubscript:&off_10086E2A8];
  }

  v38 = sectionForFriendsRequestedToCompeteByMe;
  v39 = sectionForFriendsCompetingWithMe;
  sectionForFriendsInvitingMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsInvitingMe];
  rows4 = [sectionForFriendsInvitingMe rows];
  v16 = [rows4 count];

  if (v16)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsInvitingMe forKeyedSubscript:&off_10086E2C0];
  }

  v37 = sectionForFriendsInvitingMe;
  sectionForFriendsWithNoHiding = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsWithNoHiding];
  v36 = objc_alloc_init(CHAddFriendFriendListRow);
  v41 = v36;
  v18 = [NSArray arrayWithObjects:&v41 count:1];
  rows5 = [sectionForFriendsWithNoHiding rows];
  v20 = [v18 arrayByAddingObjectsFromArray:rows5];

  v21 = [ASFriendListSection alloc];
  startDate = [sectionForFriendsWithNoHiding startDate];
  v23 = [v21 initWithDate:startDate andRows:v20];
  [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v23 forKeyedSubscript:&off_10086E2D8];

  sectionForFriendsMyDataIsHiddenFrom = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsMyDataIsHiddenFrom];
  rows6 = [sectionForFriendsMyDataIsHiddenFrom rows];
  v26 = [rows6 count];

  if (v26)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsMyDataIsHiddenFrom forKeyedSubscript:&off_10086E2F0];
  }

  v40 = sectionForFriendsRequestingMeToCompete;
  sectionForFriendsHidingDataFromMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsHidingDataFromMe];
  rows7 = [sectionForFriendsHidingDataFromMe rows];
  v29 = [rows7 count];

  if (v29)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsHidingDataFromMe forKeyedSubscript:&off_10086E308];
  }

  sectionForFriendsInvitedByMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsInvitedByMe];
  rows8 = [sectionForFriendsInvitedByMe rows];
  v32 = [rows8 count];

  if (v32)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsInvitedByMe forKeyedSubscript:&off_10086E320];
  }

  sectionForFriendsRequestedToDowngradeByMe = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsRequestedToDowngradeByMe];
  rows9 = [sectionForFriendsRequestedToDowngradeByMe rows];
  if ([rows9 count])
  {
    oldDevicesExist = [(CHCloudDeviceProvider *)self->_cloudDeviceProvider oldDevicesExist];

    if (oldDevicesExist)
    {
      [(NSMutableDictionary *)self->_friendListSectionsByType setObject:sectionForFriendsRequestedToDowngradeByMe forKeyedSubscript:&off_10086E338];
    }
  }

  else
  {
  }
}

- (void)_friendDataWasUpdated:(id)updated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113E78;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeCellFromTable:(id)table
{
  tableCopy = table;
  tableView = [(CHFriendInboxTableViewController *)self tableView];
  v6 = [tableView indexPathForCell:tableCopy];

  v7 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v6 section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v9 = [NSNumber numberWithInteger:v7];
  v10 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v9];

  rows = [v10 rows];
  v12 = [NSMutableArray arrayWithArray:rows];

  [v12 removeObjectAtIndex:{objc_msgSend(v6, "row")}];
  v13 = [ASFriendListSection alloc];
  startDate = [v10 startDate];
  v15 = [v13 initWithDate:startDate andRows:v12];
  v16 = self->_friendListSectionsByType;
  v17 = [NSNumber numberWithInteger:v7];
  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

  tableView2 = [(CHFriendInboxTableViewController *)self tableView];
  v20 = v6;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [tableView2 deleteRowsAtIndexPaths:v19 withRowAnimation:0];
}

- (void)removeCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v7];

  rows = [v8 rows];
  v10 = [NSMutableArray arrayWithArray:rows];

  [v10 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
  v11 = [ASFriendListSection alloc];
  startDate = [v8 startDate];
  v13 = [v11 initWithDate:startDate andRows:v10];
  v14 = self->_friendListSectionsByType;
  v15 = [NSNumber numberWithInteger:v5];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  tableView = [(CHFriendInboxTableViewController *)self tableView];
  v18 = pathCopy;
  v17 = [NSArray arrayWithObjects:&v18 count:1];

  [tableView deleteRowsAtIndexPaths:v17 withRowAnimation:100];
}

- (void)reloadDataAnimated:(BOOL)animated
{
  selfCopy = self;
  if (animated)
  {
    v4 = [(NSMutableDictionary *)self->_friendListSectionsByType copy];
    [(CHFriendInboxTableViewController *)selfCopy _updateSections];
    v124 = v4;
    allKeys = [v4 allKeys];
    allKeys2 = [(NSMutableDictionary *)selfCopy->_friendListSectionsByType allKeys];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v7 = allKeys;
    v8 = [v7 countByEnumeratingWithState:&v155 objects:v166 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v156;
      v11 = &__NSArray0__struct;
      v12 = &__NSArray0__struct;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v156 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v155 + 1) + 8 * i);
          if ([allKeys2 containsObject:v14])
          {
            v15 = [v11 arrayByAddingObject:v14];
            v16 = v11;
            v11 = v15;
          }

          else
          {
            v17 = [v12 arrayByAddingObject:v14];
            v16 = v12;
            v12 = v17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v155 objects:v166 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = &__NSArray0__struct;
      v12 = &__NSArray0__struct;
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    obj = allKeys2;
    v18 = [obj countByEnumeratingWithState:&v151 objects:v165 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v152;
      v21 = &__NSArray0__struct;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v152 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v151 + 1) + 8 * j);
          if (([v7 containsObject:v23] & 1) == 0)
          {
            v24 = [v21 arrayByAddingObject:v23];

            v21 = v24;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v151 objects:v165 count:16];
      }

      while (v19);
    }

    else
    {
      v21 = &__NSArray0__struct;
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v114 = v12;
    v25 = [v114 countByEnumeratingWithState:&v147 objects:v164 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v148;
      v28 = &__NSArray0__struct;
      do
      {
        v29 = 0;
        v30 = v28;
        do
        {
          if (*v148 != v27)
          {
            objc_enumerationMutation(v114);
          }

          v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100114E3C([*(*(&v147 + 1) + 8 * v29) integerValue], v124));
          v28 = [v30 arrayByAddingObject:v31];

          v29 = v29 + 1;
          v30 = v28;
        }

        while (v26 != v29);
        v26 = [v114 countByEnumeratingWithState:&v147 objects:v164 count:16];
      }

      while (v26);
    }

    else
    {
      v28 = &__NSArray0__struct;
    }

    v108 = v28;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v32 = v21;
    v33 = [v32 countByEnumeratingWithState:&v143 objects:v163 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v144;
      v36 = &__NSArray0__struct;
      do
      {
        v37 = 0;
        v38 = v36;
        do
        {
          if (*v144 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100114E3C([*(*(&v143 + 1) + 8 * v37) integerValue], selfCopy->_friendListSectionsByType));
          v36 = [v38 arrayByAddingObject:v39];

          v37 = v37 + 1;
          v38 = v36;
        }

        while (v34 != v37);
        v34 = [v32 countByEnumeratingWithState:&v143 objects:v163 count:16];
      }

      while (v34);
    }

    else
    {
      v36 = &__NSArray0__struct;
    }

    v109 = v36;
    v111 = v32;
    v112 = v7;

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v113 = v11;
    v121 = selfCopy;
    v117 = [v113 countByEnumeratingWithState:&v139 objects:v162 count:16];
    if (v117)
    {
      v116 = *v140;
      v40 = &__NSArray0__struct;
      v126 = &__NSArray0__struct;
      do
      {
        v41 = 0;
        do
        {
          if (*v140 != v116)
          {
            objc_enumerationMutation(v113);
          }

          v122 = v40;
          v119 = v41;
          v42 = *(*(&v139 + 1) + 8 * v41);
          v43 = [v124 objectForKeyedSubscript:v42];
          v44 = [(NSMutableDictionary *)selfCopy->_friendListSectionsByType objectForKeyedSubscript:v42];
          v45 = sub_100114E3C([v42 integerValue], v124);
          v46 = sub_100114E3C([v42 integerValue], selfCopy->_friendListSectionsByType);
          rows = [v43 rows];
          v48 = [rows count];

          if (v48)
          {
            v49 = 0;
            do
            {
              rows2 = [v43 rows];
              v51 = [rows2 objectAtIndexedSubscript:v49];

              v52 = [NSIndexPath indexPathForRow:v49 inSection:v45];
              rows3 = [v44 rows];
              v54 = [rows3 containsObject:v51];

              if ((v54 & 1) == 0)
              {
                v55 = [v126 arrayByAddingObject:v52];

                v126 = v55;
              }

              ++v49;
              rows4 = [v43 rows];
              v57 = [rows4 count];
            }

            while (v49 < v57);
          }

          rows5 = [v44 rows];
          v59 = [rows5 count];

          if (v59)
          {
            v60 = 0;
            v40 = v122;
            do
            {
              rows6 = [v44 rows];
              v62 = [rows6 objectAtIndexedSubscript:v60];

              v63 = [NSIndexPath indexPathForRow:v60 inSection:v46];
              rows7 = [v43 rows];
              v65 = [rows7 containsObject:v62];

              if ((v65 & 1) == 0)
              {
                v66 = [v40 arrayByAddingObject:v63];

                v40 = v66;
              }

              ++v60;
              rows8 = [v44 rows];
              v68 = [rows8 count];
            }

            while (v60 < v68);
          }

          else
          {
            v40 = v122;
          }

          v41 = v119 + 1;
          selfCopy = v121;
        }

        while (v119 + 1 != v117);
        v117 = [v113 countByEnumeratingWithState:&v139 objects:v162 count:16];
      }

      while (v117);
    }

    else
    {
      v40 = &__NSArray0__struct;
      v126 = &__NSArray0__struct;
    }

    tableView = [(CHFriendInboxTableViewController *)selfCopy tableView];
    [tableView beginUpdates];

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v70 = v108;
    v71 = [v70 countByEnumeratingWithState:&v135 objects:v161 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v136;
      do
      {
        for (k = 0; k != v72; k = k + 1)
        {
          if (*v136 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v135 + 1) + 8 * k);
          tableView2 = [(CHFriendInboxTableViewController *)selfCopy tableView];
          v77 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v75 integerValue]);
          [tableView2 deleteSections:v77 withRowAnimation:100];
        }

        v72 = [v70 countByEnumeratingWithState:&v135 objects:v161 count:16];
      }

      while (v72);
    }

    tableView3 = [(CHFriendInboxTableViewController *)selfCopy tableView];
    [tableView3 deleteRowsAtIndexPaths:v126 withRowAnimation:100];

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v120 = v109;
    v79 = [v120 countByEnumeratingWithState:&v131 objects:v160 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v132;
      do
      {
        for (m = 0; m != v80; m = m + 1)
        {
          if (*v132 != v81)
          {
            objc_enumerationMutation(v120);
          }

          v83 = *(*(&v131 + 1) + 8 * m);
          tableView4 = [(CHFriendInboxTableViewController *)selfCopy tableView];
          v85 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v83 integerValue]);
          [tableView4 insertSections:v85 withRowAnimation:100];
        }

        v80 = [v120 countByEnumeratingWithState:&v131 objects:v160 count:16];
      }

      while (v80);
    }

    v110 = v70;

    tableView5 = [(CHFriendInboxTableViewController *)selfCopy tableView];
    v123 = v40;
    [tableView5 insertRowsAtIndexPaths:v40 withRowAnimation:100];

    tableView6 = [(CHFriendInboxTableViewController *)selfCopy tableView];
    [tableView6 endUpdates];

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    tableView7 = [(CHFriendInboxTableViewController *)selfCopy tableView];
    indexPathsForVisibleRows = [tableView7 indexPathsForVisibleRows];

    v118 = indexPathsForVisibleRows;
    v90 = [indexPathsForVisibleRows countByEnumeratingWithState:&v127 objects:v159 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v128;
      do
      {
        for (n = 0; n != v91; n = n + 1)
        {
          if (*v128 != v92)
          {
            objc_enumerationMutation(v118);
          }

          v94 = *(*(&v127 + 1) + 8 * n);
          tableView8 = [(CHFriendInboxTableViewController *)selfCopy tableView];
          v96 = [tableView8 cellForRowAtIndexPath:v94];

          v97 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](selfCopy, "_sectionTypeForSectionIndex:", [v94 section]);
          friendListSectionsByType = selfCopy->_friendListSectionsByType;
          v99 = [NSNumber numberWithInteger:v97];
          v100 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v99];

          v101 = [v94 row];
          rows9 = [v100 rows];
          v103 = [rows9 count];

          if (v101 < v103)
          {
            rows10 = [v100 rows];
            v105 = [rows10 objectAtIndexedSubscript:{objc_msgSend(v94, "row")}];

            friend = [v105 friend];
            if (objc_opt_respondsToSelector())
            {
              snapshot = [v105 snapshot];
              [v96 setFriend:friend snapshot:snapshot animated:1];
            }

            else if (objc_opt_respondsToSelector())
            {
              [v96 setFriend:friend];
            }
          }

          selfCopy = v121;
        }

        v91 = [v118 countByEnumeratingWithState:&v127 objects:v159 count:16];
      }

      while (v91);
    }
  }

  else
  {
    [(CHFriendInboxTableViewController *)self _updateSections];
    tableView9 = [(CHFriendInboxTableViewController *)selfCopy tableView];
    [tableView9 reloadData];
  }
}

@end
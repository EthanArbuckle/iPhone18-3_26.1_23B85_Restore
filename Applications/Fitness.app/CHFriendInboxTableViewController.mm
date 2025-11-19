@interface CHFriendInboxTableViewController
- (BOOL)_isIndexPathEditable:(id)a3;
- (CHFriendInboxTableViewController)initWithFriendListManager:(id)a3 friendManager:(id)a4 achievementsDataProvider:(id)a5 workoutsDataProvider:(id)a6 workoutFormattingManager:(id)a7 formattingManager:(id)a8 badgeImageFactory:(id)a9 healthStore:(id)a10 fitnessAppContext:(id)a11 makeFriendDetailViewControllerBlock:(id)a12;
- (id)_presentedViewController;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_sectionTypeForSectionIndex:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_friendDataWasUpdated:(id)a3;
- (void)_inviteFriends;
- (void)_presentErrorAlertWithMessage:(id)a3;
- (void)_updateSections;
- (void)dealloc;
- (void)incomingTableViewCellDidTapAccept:(id)a3;
- (void)incomingTableViewCellDidTapIgnore:(id)a3;
- (void)loadView;
- (void)reloadDataAnimated:(BOOL)a3;
- (void)removeCellAtIndexPath:(id)a3;
- (void)removeCellFromTable:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CHFriendInboxTableViewController

- (CHFriendInboxTableViewController)initWithFriendListManager:(id)a3 friendManager:(id)a4 achievementsDataProvider:(id)a5 workoutsDataProvider:(id)a6 workoutFormattingManager:(id)a7 formattingManager:(id)a8 badgeImageFactory:(id)a9 healthStore:(id)a10 fitnessAppContext:(id)a11 makeFriendDetailViewControllerBlock:(id)a12
{
  v36 = a3;
  obj = a4;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v28 = a7;
  v32 = a7;
  v29 = a8;
  v31 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v37.receiver = self;
  v37.super_class = CHFriendInboxTableViewController;
  v22 = [(CHFriendInboxTableViewController *)&v37 initWithStyle:2];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_friendListManager, a3);
    objc_storeStrong(&v23->_friendManager, obj);
    objc_storeStrong(&v23->_achievementsDataProvider, a5);
    objc_storeStrong(&v23->_workoutsDataProvider, a6);
    objc_storeStrong(&v23->_workoutFormattingManager, v28);
    objc_storeStrong(&v23->_formattingManager, v29);
    objc_storeStrong(&v23->_imageFactory, a9);
    objc_storeStrong(&v23->_healthStore, a10);
    objc_storeStrong(&v23->_fitnessAppContext, a11);
    v24 = objc_retainBlock(v21);
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
  v3 = [(CHFriendInboxTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Add"];

  v4 = [(CHFriendInboxTableViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  v5 = [(CHFriendInboxTableViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"IncomingCell"];

  v6 = [(CHFriendInboxTableViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"OutgoingCell"];

  v7 = [(CHFriendInboxTableViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"LegacyDevicesCell"];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v40 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(CHFriendInboxTableViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = [(CHFriendInboxTableViewController *)self tableView];
  [v5 _setDrawsSeparatorAtTopOfSections:0];

  v6 = [(CHFriendInboxTableViewController *)self tableView];
  [v6 setIndicatorStyle:2];

  v39 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_closeButtonTapped"];
  v7 = [(CHFriendInboxTableViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v39];

  v8 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.activity"];
  privacyLink = self->_privacyLink;
  self->_privacyLink = v8;

  [(OBPrivacyLinkController *)self->_privacyLink setPresentedViewControllerShouldUseDarkMode:1];
  [(OBPrivacyLinkController *)self->_privacyLink setDisplayIcon:0];
  [(CHFriendInboxTableViewController *)self addChildViewController:self->_privacyLink];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v11 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v10 addSubview:v11];

  v12 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(OBPrivacyLinkController *)self->_privacyLink view];
  v37 = [v38 leadingAnchor];
  v36 = [v10 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:31.0];
  v41[0] = v35;
  v34 = [(OBPrivacyLinkController *)self->_privacyLink view];
  v33 = [v34 bottomAnchor];
  v32 = [v10 bottomAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:-0.0];
  v41[1] = v31;
  v29 = [(OBPrivacyLinkController *)self->_privacyLink view];
  v13 = [v29 topAnchor];
  v30 = v10;
  v14 = [v10 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
  v41[2] = v15;
  v16 = [(OBPrivacyLinkController *)self->_privacyLink view];
  v17 = [v16 trailingAnchor];
  v18 = [v10 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-31.0];
  v41[3] = v19;
  v20 = [NSArray arrayWithObjects:v41 count:4];
  [NSLayoutConstraint activateConstraints:v20];

  v21 = [(CHFriendInboxTableViewController *)self tableView];
  [v21 setTableFooterView:v30];

  [(OBPrivacyLinkController *)self->_privacyLink didMoveToParentViewController:self];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
  v24 = [(CHFriendInboxTableViewController *)self navigationItem];
  [v24 setTitle:v23];

  v25 = [(CHFriendInboxTableViewController *)self navigationItem];
  [v25 setBackButtonDisplayMode:2];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"_friendDataWasUpdated:" name:kASFriendListChangedNotificationKey object:0];
  v27 = [(CHFitnessAppContext *)self->_fitnessAppContext cloudDeviceProvider];
  cloudDeviceProvider = self->_cloudDeviceProvider;
  self->_cloudDeviceProvider = v27;

  [(CHFriendInboxTableViewController *)self _updateSections];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v5 viewDidAppear:a3];
  v4 = [(CHFriendInboxTableViewController *)self tableView];
  [v4 flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = CHFriendInboxTableViewController;
  [(CHFriendInboxTableViewController *)&v40 viewDidLayoutSubviews];
  v3 = [(CHFriendInboxTableViewController *)self tableView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CHFriendInboxTableViewController *)self tabBarController];
  v13 = [v12 tabBar];

  if (v13)
  {
    v14 = [(CHFriendInboxTableViewController *)self tableView];
    [v14 bounds];
    v16 = v15;

    [v13 frame];
    v9 = v16 - v17;
  }

  v18 = [(CHFriendInboxTableViewController *)self tableView];
  [v18 setContentInset:{v5, v7, v9, v11}];

  v19 = [(CHFriendInboxTableViewController *)self tableView];
  v20 = [v19 tableFooterView];

  if (v20)
  {
    v21 = [(OBPrivacyLinkController *)self->_privacyLink view];
    v22 = [(CHFriendInboxTableViewController *)self view];
    [v22 bounds];
    v24 = v23 + -62.0;
    LODWORD(v23) = 1148846080;
    LODWORD(v25) = 1112014848;
    [v21 systemLayoutSizeFittingSize:v24 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v23, v25}];
    v27 = v26;

    v28 = [(CHFriendInboxTableViewController *)self tableView];
    v29 = [v28 tableFooterView];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    if (v37 != v27)
    {
      v38 = [(CHFriendInboxTableViewController *)self tableView];
      v39 = [v38 tableFooterView];
      [v39 setFrame:{v31, v33, v35, v27 + 0.0}];
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

- (void)incomingTableViewCellDidTapAccept:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 type];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [v4 friend];
      friendManager = self->_friendManager;
      v8 = FIExperienceTypeWithHealthStore();
      sub_10010858C(self, v6, friendManager, v8);
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
    v11 = [v4 friend];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001123CC;
    v12[3] = &unk_10083B020;
    objc_copyWeak(&v13, &location);
    [(CHFriendManager *)v10 acceptInvitationFromFriend:v11 completion:v12];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

- (void)incomingTableViewCellDidTapIgnore:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 type];
  if (!v5)
  {
    friendManager = self->_friendManager;
    v7 = [v4 friend];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100112604;
    v12[3] = &unk_10083B020;
    v8 = &v13;
    objc_copyWeak(&v13, &location);
    [(CHFriendManager *)friendManager ignoreInvitationFromFriend:v7 completion:v12];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = self->_friendManager;
    v7 = [v4 friend];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001126A0;
    v10[3] = &unk_10083B020;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    [(CHFriendManager *)v6 ignoreCompetitionRequestFromFriend:v7 completion:v10];
LABEL_5:

    objc_destroyWeak(v8);
  }

  objc_destroyWeak(&location);
}

- (void)_presentErrorAlertWithMessage:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001127D0;
  block[3] = &unk_10083A8B0;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_presentedViewController
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v5 = [v4 rootViewController];
  v6 = [v5 presentedViewController];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CHFriendInboxTableViewController *)self _sectionTypeForSectionIndex:a4];
  friendListSectionsByType = self->_friendListSectionsByType;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v7];

  v9 = [v8 rows];
  v10 = [v9 count];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v7 section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v10 = [NSNumber numberWithInteger:v8];
  v11 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v10];

  v12 = [v7 row];
  v13 = [v11 rows];
  if (v12 >= [v13 count])
  {
    v15 = 0;
  }

  else
  {
    v14 = [v11 rows];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  }

  v16 = 0;
  if (v8 > 4)
  {
    if ((v8 - 5) < 2)
    {
LABEL_20:
      v16 = [v6 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v7];
      [v16 setSelectionStyle:3];
      v20 = [v15 friend];
      v25 = [v15 snapshot];
      [v16 setFriend:v20 snapshot:v25 animated:0];
LABEL_26:

      goto LABEL_27;
    }

    if (v8 == 7)
    {
      v22 = [v7 row];
      v23 = [v11 rows];
      v24 = [v23 count];

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

    v18 = [v6 dequeueReusableCellWithIdentifier:@"OutgoingCell" forIndexPath:v7];
    [v18 setSelectionStyle:0];
    v16 = v18;
    v19 = [v15 friend];
    [v16 setFriend:v19];

    v20 = [v15 friend];
    v21 = [v20 as_invitedDurationString];
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
          v16 = [v6 dequeueReusableCellWithIdentifier:v17 forIndexPath:v7];
          [v16 setSelectionStyle:3];
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v31 = [v6 dequeueReusableCellWithIdentifier:@"IncomingCell" forIndexPath:v7];
      [v31 setSelectionStyle:0];
      v16 = v31;
      v32 = [v15 friend];
      [v16 setFriend:v32];

      [v16 setDelegate:self];
      [v16 setType:0];
      v33 = +[ARUIMetricColors briskColors];
      v34 = [v33 nonGradientTextColor];
      [v16 setAcceptTintColor:v34];

      v20 = +[ARUIMetricColors energyColors];
      v25 = [v20 nonGradientTextColor];
      [v16 setIgnoreTintColor:v25];
LABEL_25:

      goto LABEL_26;
    }

    v26 = [v6 dequeueReusableCellWithIdentifier:@"OutgoingCell" forIndexPath:v7];
    [v26 setSelectionStyle:0];
    v16 = v26;
    v27 = [v15 friend];
    [v16 setFriend:v27];

    v20 = [v15 friend];
    v21 = [v20 as_competitionRequestDurationRemainingString];
LABEL_22:
    v25 = v21;
    [v16 setDetailText:v21];
    goto LABEL_25;
  }

  if (!v8)
  {
    v28 = [v6 dequeueReusableCellWithIdentifier:@"IncomingCell" forIndexPath:v7];
    [v28 setSelectionStyle:0];
    v16 = v28;
    v29 = [v15 friend];
    [v16 setFriend:v29];

    [v16 setDelegate:self];
    [v16 setType:1];
    v30 = +[UIColor as_lightCompetitionGold];
    [v16 setAcceptTintColor:v30];

    v20 = +[UIColor as_darkCompetitionGold];
    [v16 setIgnoreTintColor:v20];

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

- (BOOL)_isIndexPathEditable:(id)a3
{
  v4 = a3;
  v5 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v4 section]);
  if (v5 == 8)
  {
    LOBYTE(v12) = 1;
  }

  else if (v5 == 3)
  {
    friendListSectionsByType = self->_friendListSectionsByType;
    v7 = [NSNumber numberWithInteger:3];
    v8 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v7];

    v9 = [v8 rows];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    v11 = [v10 friend];
    v12 = [v11 isAwaitingInviteResponseFromMe] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v9 section]);
  if (a4 == 1)
  {
    v11 = v10;
    if ([(CHFriendInboxTableViewController *)self _isIndexPathEditable:v9])
    {
      friendListSectionsByType = self->_friendListSectionsByType;
      v13 = [NSNumber numberWithInteger:v11];
      v14 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v13];

      v15 = [v14 rows];
      v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];

      objc_initWeak(&location, self);
      [v8 setEditing:0 animated:1];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1001131E4;
      v24 = &unk_10083B020;
      objc_copyWeak(&v25, &location);
      v17 = objc_retainBlock(&v21);
      if (v11 == 3)
      {
        friendManager = self->_friendManager;
        v19 = [v16 friend];
        [(CHFriendManager *)friendManager removeFriend:v19 completion:v17];
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
        v19 = [v16 friend];
        [(CHFriendManager *)v18 withdrawInvitationToFriend:v19 completion:v17];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v6 section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v9 = [NSNumber numberWithInteger:v7];
  v10 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v9];

  if (v7 != 3 && v7 != 8)
  {
    if (v7 == 7 && ([v10 rows], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v13 = objc_msgSend(v6, "row"), v11, v12 == v13))
    {
      v14 = [[CHLegacyDevicesViewController alloc] initWithFitnessAppContext:self->_fitnessAppContext];
      v15 = [[UINavigationController alloc] initWithRootViewController:v14];
      v16 = [(CHFriendInboxTableViewController *)self navigationController];
      [v16 presentViewController:v15 animated:1 completion:0];
    }

    else
    {
      v17 = self->_friendListSectionsByType;
      v18 = [NSNumber numberWithInteger:v7];
      v14 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v18];

      v19 = [(CHLegacyDevicesViewController *)v14 rows];
      v15 = [v19 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CHFriendInboxTableViewController *)self _inviteFriends];
      }

      else
      {
        makeFriendDetailViewControllerBlock = self->_makeFriendDetailViewControllerBlock;
        v21 = [v15 friend];
        v22 = makeFriendDetailViewControllerBlock[2](makeFriendDetailViewControllerBlock, v21);

        v23 = [(CHFriendInboxTableViewController *)self navigationController];
        [v23 pushViewController:v22 animated:1];
      }
    }

    [v24 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(CHFriendInboxTableViewController *)self _sectionTypeForSectionIndex:a4];
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

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v9 = a4;
  if ([(CHFriendInboxTableViewController *)self _sectionTypeForSectionIndex:a5]<= 2)
  {
    v7 = +[UIColor as_lightCompetitionGold];
    v8 = [v9 textLabel];
    [v8 setTextColor:v7];
  }
}

- (int64_t)_sectionTypeForSectionIndex:(int64_t)a3
{
  v4 = sub_1001139EC(self->_friendListSectionsByType);
  if ([v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
    v6 = [v5 integerValue];

    if (v6 > 8)
    {
      v6 = 3;
    }
  }

  return v6;
}

- (void)_updateSections
{
  v3 = +[NSMutableDictionary dictionary];
  friendListSectionsByType = self->_friendListSectionsByType;
  self->_friendListSectionsByType = v3;

  v5 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsRequestingMeToCompete];
  v6 = [v5 rows];
  v7 = [v6 count];

  if (v7)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v5 forKeyedSubscript:&off_10086E278];
  }

  v8 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsCompetingWithMe];
  v9 = [v8 rows];
  v10 = [v9 count];

  if (v10)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v8 forKeyedSubscript:&off_10086E290];
  }

  v11 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsRequestedToCompeteByMe];
  v12 = [v11 rows];
  v13 = [v12 count];

  if (v13)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v11 forKeyedSubscript:&off_10086E2A8];
  }

  v38 = v11;
  v39 = v8;
  v14 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsInvitingMe];
  v15 = [v14 rows];
  v16 = [v15 count];

  if (v16)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v14 forKeyedSubscript:&off_10086E2C0];
  }

  v37 = v14;
  v17 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsWithNoHiding];
  v36 = objc_alloc_init(CHAddFriendFriendListRow);
  v41 = v36;
  v18 = [NSArray arrayWithObjects:&v41 count:1];
  v19 = [v17 rows];
  v20 = [v18 arrayByAddingObjectsFromArray:v19];

  v21 = [ASFriendListSection alloc];
  v22 = [v17 startDate];
  v23 = [v21 initWithDate:v22 andRows:v20];
  [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v23 forKeyedSubscript:&off_10086E2D8];

  v24 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsMyDataIsHiddenFrom];
  v25 = [v24 rows];
  v26 = [v25 count];

  if (v26)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v24 forKeyedSubscript:&off_10086E2F0];
  }

  v40 = v5;
  v27 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsHidingDataFromMe];
  v28 = [v27 rows];
  v29 = [v28 count];

  if (v29)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v27 forKeyedSubscript:&off_10086E308];
  }

  v30 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsInvitedByMe];
  v31 = [v30 rows];
  v32 = [v31 count];

  if (v32)
  {
    [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v30 forKeyedSubscript:&off_10086E320];
  }

  v33 = [(ASFriendListSectionManager *)self->_friendListManager sectionForFriendsRequestedToDowngradeByMe];
  v34 = [v33 rows];
  if ([v34 count])
  {
    v35 = [(CHCloudDeviceProvider *)self->_cloudDeviceProvider oldDevicesExist];

    if (v35)
    {
      [(NSMutableDictionary *)self->_friendListSectionsByType setObject:v33 forKeyedSubscript:&off_10086E338];
    }
  }

  else
  {
  }
}

- (void)_friendDataWasUpdated:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113E78;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeCellFromTable:(id)a3
{
  v4 = a3;
  v5 = [(CHFriendInboxTableViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  v7 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v6 section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v9 = [NSNumber numberWithInteger:v7];
  v10 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v9];

  v11 = [v10 rows];
  v12 = [NSMutableArray arrayWithArray:v11];

  [v12 removeObjectAtIndex:{objc_msgSend(v6, "row")}];
  v13 = [ASFriendListSection alloc];
  v14 = [v10 startDate];
  v15 = [v13 initWithDate:v14 andRows:v12];
  v16 = self->_friendListSectionsByType;
  v17 = [NSNumber numberWithInteger:v7];
  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

  v18 = [(CHFriendInboxTableViewController *)self tableView];
  v20 = v6;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [v18 deleteRowsAtIndexPaths:v19 withRowAnimation:0];
}

- (void)removeCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v4 section]);
  friendListSectionsByType = self->_friendListSectionsByType;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v7];

  v9 = [v8 rows];
  v10 = [NSMutableArray arrayWithArray:v9];

  [v10 removeObjectAtIndex:{objc_msgSend(v4, "row")}];
  v11 = [ASFriendListSection alloc];
  v12 = [v8 startDate];
  v13 = [v11 initWithDate:v12 andRows:v10];
  v14 = self->_friendListSectionsByType;
  v15 = [NSNumber numberWithInteger:v5];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  v16 = [(CHFriendInboxTableViewController *)self tableView];
  v18 = v4;
  v17 = [NSArray arrayWithObjects:&v18 count:1];

  [v16 deleteRowsAtIndexPaths:v17 withRowAnimation:100];
}

- (void)reloadDataAnimated:(BOOL)a3
{
  v3 = self;
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_friendListSectionsByType copy];
    [(CHFriendInboxTableViewController *)v3 _updateSections];
    v124 = v4;
    v5 = [v4 allKeys];
    v6 = [(NSMutableDictionary *)v3->_friendListSectionsByType allKeys];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v7 = v5;
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
          if ([v6 containsObject:v14])
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
    obj = v6;
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

          v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100114E3C([*(*(&v143 + 1) + 8 * v37) integerValue], v3->_friendListSectionsByType));
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
    v121 = v3;
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
          v44 = [(NSMutableDictionary *)v3->_friendListSectionsByType objectForKeyedSubscript:v42];
          v45 = sub_100114E3C([v42 integerValue], v124);
          v46 = sub_100114E3C([v42 integerValue], v3->_friendListSectionsByType);
          v47 = [v43 rows];
          v48 = [v47 count];

          if (v48)
          {
            v49 = 0;
            do
            {
              v50 = [v43 rows];
              v51 = [v50 objectAtIndexedSubscript:v49];

              v52 = [NSIndexPath indexPathForRow:v49 inSection:v45];
              v53 = [v44 rows];
              v54 = [v53 containsObject:v51];

              if ((v54 & 1) == 0)
              {
                v55 = [v126 arrayByAddingObject:v52];

                v126 = v55;
              }

              ++v49;
              v56 = [v43 rows];
              v57 = [v56 count];
            }

            while (v49 < v57);
          }

          v58 = [v44 rows];
          v59 = [v58 count];

          if (v59)
          {
            v60 = 0;
            v40 = v122;
            do
            {
              v61 = [v44 rows];
              v62 = [v61 objectAtIndexedSubscript:v60];

              v63 = [NSIndexPath indexPathForRow:v60 inSection:v46];
              v64 = [v43 rows];
              v65 = [v64 containsObject:v62];

              if ((v65 & 1) == 0)
              {
                v66 = [v40 arrayByAddingObject:v63];

                v40 = v66;
              }

              ++v60;
              v67 = [v44 rows];
              v68 = [v67 count];
            }

            while (v60 < v68);
          }

          else
          {
            v40 = v122;
          }

          v41 = v119 + 1;
          v3 = v121;
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

    v69 = [(CHFriendInboxTableViewController *)v3 tableView];
    [v69 beginUpdates];

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
          v76 = [(CHFriendInboxTableViewController *)v3 tableView];
          v77 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v75 integerValue]);
          [v76 deleteSections:v77 withRowAnimation:100];
        }

        v72 = [v70 countByEnumeratingWithState:&v135 objects:v161 count:16];
      }

      while (v72);
    }

    v78 = [(CHFriendInboxTableViewController *)v3 tableView];
    [v78 deleteRowsAtIndexPaths:v126 withRowAnimation:100];

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
          v84 = [(CHFriendInboxTableViewController *)v3 tableView];
          v85 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v83 integerValue]);
          [v84 insertSections:v85 withRowAnimation:100];
        }

        v80 = [v120 countByEnumeratingWithState:&v131 objects:v160 count:16];
      }

      while (v80);
    }

    v110 = v70;

    v86 = [(CHFriendInboxTableViewController *)v3 tableView];
    v123 = v40;
    [v86 insertRowsAtIndexPaths:v40 withRowAnimation:100];

    v87 = [(CHFriendInboxTableViewController *)v3 tableView];
    [v87 endUpdates];

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v88 = [(CHFriendInboxTableViewController *)v3 tableView];
    v89 = [v88 indexPathsForVisibleRows];

    v118 = v89;
    v90 = [v89 countByEnumeratingWithState:&v127 objects:v159 count:16];
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
          v95 = [(CHFriendInboxTableViewController *)v3 tableView];
          v96 = [v95 cellForRowAtIndexPath:v94];

          v97 = -[CHFriendInboxTableViewController _sectionTypeForSectionIndex:](v3, "_sectionTypeForSectionIndex:", [v94 section]);
          friendListSectionsByType = v3->_friendListSectionsByType;
          v99 = [NSNumber numberWithInteger:v97];
          v100 = [(NSMutableDictionary *)friendListSectionsByType objectForKeyedSubscript:v99];

          v101 = [v94 row];
          v102 = [v100 rows];
          v103 = [v102 count];

          if (v101 < v103)
          {
            v104 = [v100 rows];
            v105 = [v104 objectAtIndexedSubscript:{objc_msgSend(v94, "row")}];

            v106 = [v105 friend];
            if (objc_opt_respondsToSelector())
            {
              v107 = [v105 snapshot];
              [v96 setFriend:v106 snapshot:v107 animated:1];
            }

            else if (objc_opt_respondsToSelector())
            {
              [v96 setFriend:v106];
            }
          }

          v3 = v121;
        }

        v91 = [v118 countByEnumeratingWithState:&v127 objects:v159 count:16];
      }

      while (v91);
    }
  }

  else
  {
    [(CHFriendInboxTableViewController *)self _updateSections];
    v125 = [(CHFriendInboxTableViewController *)v3 tableView];
    [v125 reloadData];
  }
}

@end
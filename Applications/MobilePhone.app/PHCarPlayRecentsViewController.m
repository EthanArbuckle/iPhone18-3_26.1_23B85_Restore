@interface PHCarPlayRecentsViewController
- (BOOL)shouldSuppressMultiwayRecentCalls;
- (PHCarPlayRecentsViewController)init;
- (TUContactsDataProvider)contactsDataProvider;
- (id)badgeString;
- (id)bundleIdentifierForRecentCall:(id)a3;
- (id)contactsForRecentCallForAvatar:(id)a3;
- (id)conversationWithUUID:(id)a3;
- (id)recentCallAtIndex:(int64_t)a3;
- (id)restrictedSubtitleForConversation:(id)a3;
- (id)restrictedSubtitleForRecentCall:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForNoContentBanner;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_replaceRecentCalls:(id)a3;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)handleTUCallCenterCallStatusChangedNotification:(id)a3;
- (void)insertJoinableConversationsIfNecessary:(id)a3;
- (void)joinConversationAtIndexPath:(id)a3;
- (void)performBatchUpdates:(id)a3 completion:(id)a4;
- (void)programmaticallySelectRowAtIndexPath:(id)a3;
- (void)recentsController:(id)a3 didChangeCalls:(id)a4;
- (void)recentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4;
- (void)removeJoinableConversation:(id)a3;
- (void)setRecentCalls:(id)a3;
- (void)showRestrictedAlertWithMessage:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateNoContentBanner;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PHCarPlayRecentsViewController

- (PHCarPlayRecentsViewController)init
{
  v18.receiver = self;
  v18.super_class = PHCarPlayRecentsViewController;
  v2 = [(PHCarPlayGenericTableViewController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    v4 = *(v2 + 105);
    *(v2 + 105) = v3;

    v5 = *(v2 + 65);
    *(v2 + 65) = 0;

    v6 = [UIApp recentsController];
    v7 = *(v2 + 49);
    *(v2 + 49) = v6;

    [*(v2 + 49) addDelegate:v2 queue:&_dispatch_main_q];
    *(v2 + 73) = 0;
    v8 = +[NSMutableArray array];
    v9 = *(v2 + 89);
    *(v2 + 89) = v8;

    v10 = *(v2 + 97);
    *(v2 + 97) = 0;

    v11 = objc_alloc_init(TUConversationManager);
    v12 = *(v2 + 81);
    *(v2 + 81) = v11;

    [*(v2 + 81) addDelegate:v2 queue:&_dispatch_main_q];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    v14 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __38__PHCarPlayRecentsViewController_init__block_invoke;
    block[3] = &unk_100284FD0;
    v17 = v2;
    dispatch_async(v14, block);
  }

  return v2;
}

void __38__PHCarPlayRecentsViewController_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentsController];
  v3 = [v2 recentCalls];
  v4 = [v3 mutableCopy];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __38__PHCarPlayRecentsViewController_init__block_invoke_2;
  v6[3] = &unk_1002852E0;
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

void __38__PHCarPlayRecentsViewController_init__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCalls];

  if (!v2)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) count];
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController init: recentCalls nil so fetched %lu calls", &v5, 0xCu);
    }

    [*(a1 + 32) _replaceRecentCalls:*(a1 + 40)];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericTableViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericViewController *)&v12 viewDidLoad];
  v3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v4 = objc_opt_class();
  v5 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsTableViewCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v7 = objc_opt_class();
  v8 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsOngoingMultiwayTableViewCell];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];

  v10 = [(PHCarPlayRecentsViewController *)self conversationManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __45__PHCarPlayRecentsViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_100284FD0;
  v11[4] = self;
  [v10 registerWithCompletionHandler:v11];
}

void __45__PHCarPlayRecentsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__PHCarPlayRecentsViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_100284FD0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __45__PHCarPlayRecentsViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 conversationManager];
  v2 = [v4 activeConversations];
  v3 = [v2 allObjects];
  [v1 insertJoinableConversationsIfNecessary:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericTableViewController *)&v5 viewWillAppear:a3];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController PHCarPlayRecentsViewController viewWillAppear", v4, 2u);
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayRecentsViewController *)&v22 viewIsAppearing:a3];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController PHCarPlayRecentsViewController viewIsAppearing", buf, 2u);
  }

  v5 = [(PHCarPlayRecentsViewController *)self recentCalls];

  if (!v5)
  {
    v6 = [(PHCarPlayRecentsViewController *)self recentsController];
    v7 = [v6 recentCalls];
    v8 = [v7 mutableCopy];

    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 134217984;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController viewIsAppearing: recentCalls nil so fetched %lu calls", buf, 0xCu);
    }

    [(PHCarPlayRecentsViewController *)self _replaceRecentCalls:v8];
    v11 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];

    if (v11)
    {
      v12 = PHDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];
        v14 = [v13 count];
        *buf = 134217984;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController viewIsAppearing: ignoring %lu stale pendingUpdatedRecentCalls", buf, 0xCu);
      }

      [(PHCarPlayRecentsViewController *)self setPendingUpdatedRecentCalls:0];
    }
  }

  v15 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];

  if (v15)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];
      v18 = [v17 count];
      *buf = 134217984;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController viewIsAppearing: applying %lu pendingUpdatedRecentCalls", buf, 0xCu);
    }

    v19 = [(PHCarPlayRecentsViewController *)self recentsController];
    v20 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];
    [(PHCarPlayRecentsViewController *)self recentsController:v19 didChangeCalls:v20];

    [(PHCarPlayRecentsViewController *)self setPendingUpdatedRecentCalls:0];
  }

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayRecentsViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PHCarPlayRecentsViewController *)self recentsController];
  [v4 markRecentCallsAsRead];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericViewController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v10, 2u);
  }

  v5 = [(PHCarPlayRecentsViewController *)self tabBarController];
  v6 = [v5 selectedViewController];
  v7 = [v6 childViewControllers];
  v8 = [v7 firstObject];

  if (v8 == self)
  {
    v9 = [(PHCarPlayRecentsViewController *)self recentsController];
    [v9 markRecentCallsAsRead];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = [(PHCarPlayRecentsViewController *)self recentCalls];
  }

  else
  {
    if ([(PHCarPlayRecentsViewController *)self shouldSuppressMultiwayRecentCalls])
    {
      return 0;
    }

    v5 = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
  }

  v7 = v5;
  v8 = [v5 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsTableViewCell];
    v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

    v10 = [v6 row];
    v11 = [(PHCarPlayRecentsViewController *)self recentCallAtIndex:v10];
    [v9 setRecentCall:v11];
    v12 = [(PHCarPlayRecentsViewController *)self recentsController];
    v13 = [v12 itemForRecentCall:v11];
    [v9 setRecentsItem:v13];

    if (![*(&self->_pendingUpdatedRecentCalls + 1) phoneRecentsAvatarsCarplayEnabled])
    {
      goto LABEL_6;
    }

    v14 = [(PHCarPlayRecentsViewController *)self contactsForRecentCallForAvatar:v11];
    [v9 setContacts:v14];
  }

  else
  {
    v15 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsOngoingMultiwayTableViewCell];
    v9 = [v7 dequeueReusableCellWithIdentifier:v15 forIndexPath:v6];

    v16 = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
    v17 = [v6 row];

    v18 = [v16 objectAtIndexedSubscript:v17];
    v11 = [(PHCarPlayRecentsViewController *)self conversationWithUUID:v18];

    v14 = [v11 displayName];
    [v9 setCallName:v14];
  }

LABEL_6:

  return v9;
}

- (id)contactsForRecentCallForAvatar:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayRecentsViewController *)self recentsController];
  v6 = [v5 contactByHandleForRecentCall:v4 keyDescriptors:&__NSArray0__struct];

  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v4 validRemoteParticipantHandles];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v6 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        if (!v13)
        {
          v13 = objc_alloc_init(CNMutableContact);
        }

        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  [(PHCarPlayRecentsViewController *)self programmaticallySelectRowAtIndexPath:v6];
}

- (void)programmaticallySelectRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "programmaticallySelectRowAtIndexPath:%@", &v13, 0xCu);
  }

  if ([v4 section])
  {
    v6 = -[PHCarPlayRecentsViewController recentCallAtIndex:](self, "recentCallAtIndex:", [v4 row]);
    v7 = [(PHCarPlayRecentsViewController *)self recentsController];
    v8 = [v7 dialRequestForRecentCall:v6];

    v9 = +[TUCallCenter sharedInstance];
    v10 = [v9 callFilterController];
    v11 = [v10 shouldRestrictDialRequest:v8];

    if (v11)
    {
      v12 = [(PHCarPlayRecentsViewController *)self restrictedSubtitleForRecentCall:v6];
      [(PHCarPlayRecentsViewController *)self showRestrictedAlertWithMessage:v12];
    }

    else
    {
      v12 = [(PHCarPlayRecentsViewController *)self recentsController];
      [v12 performDialRequest:v8];
    }
  }

  else
  {
    [(PHCarPlayRecentsViewController *)self joinConversationAtIndexPath:v4];
  }
}

- (void)joinConversationAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];
  v12 = [(PHCarPlayRecentsViewController *)self conversationWithUUID:v7];

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 callFilterController];
  LODWORD(v6) = [v9 shouldRestrictConversation:v12 performSynchronously:1];

  if (v6)
  {
    v10 = [(PHCarPlayRecentsViewController *)self restrictedSubtitleForConversation:v12];
    [(PHCarPlayRecentsViewController *)self showRestrictedAlertWithMessage:v10];
  }

  else if ([v12 state])
  {
    v10 = +[NSURL faceTimeShowInCallUIURL];
    TUOpenURL();
  }

  else
  {
    v10 = [[TUJoinConversationRequest alloc] initWithConversation:v12 originatingUIType:47];
    [v10 setWantsStagingArea:0];
    [v10 setVideoEnabled:0];
    v11 = +[TUCallCenter sharedInstance];
    [v11 launchAppForJoinRequest:v10];
  }
}

- (id)bundleIdentifierForRecentCall:(id)a3
{
  v3 = a3;
  v4 = [v3 serviceProvider];
  v5 = [v4 isEqualToString:kCHServiceProviderTelephony];

  if (v5)
  {
    v6 = TUBundleIdentifierMobilePhoneApplication;
  }

  else
  {
    v7 = [v3 serviceProvider];
    v8 = [v7 isEqualToString:kCHServiceProviderFaceTime];

    if (v8)
    {
      TUPreferredFaceTimeBundleIdentifier();
    }

    else
    {
      [v3 serviceProvider];
    }
    v6 = ;
  }

  v9 = v6;

  return v9;
}

- (void)showRestrictedAlertWithMessage:(id)a3
{
  v4 = a3;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v10 = [UIAlertController alertControllerWithTitle:v6 message:v4 preferredStyle:1];

  v7 = TUBundle();
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v10 addAction:v9];

  [(PHCarPlayRecentsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)restrictedSubtitleForConversation:(id)a3
{
  v3 = a3;
  v4 = [v3 activeRemoteParticipants];
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = v3;
  v6 = [v3 activeRemoteParticipants];
  v7 = [v6 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v67;
    v10 = TUCallFilterUnknownCallerAddress;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v67 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        v13 = [v12 handle];
        v14 = [v13 value];
        if ([v14 length])
        {
          v15 = [v12 handle];
          v16 = [v15 value];
        }

        else
        {
          v16 = v10;
        }

        [v5 addObject:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v17 = [v53 remoteMembers];
    v18 = [v17 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v63;
      v21 = TUCallFilterUnknownCallerAddress;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v62 + 1) + 8 * j);
          v24 = [v23 handle];
          v25 = [v24 value];
          if ([v25 length])
          {
            v26 = [v23 handle];
            v27 = [v26 value];
          }

          else
          {
            v27 = v21;
          }

          [v5 addObject:v27];
        }

        v19 = [v17 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v19);
    }
  }

  v28 = +[TUCallCenter sharedInstance];
  v29 = [v28 callFilterController];
  v30 = TUPreferredFaceTimeBundleIdentifier();
  v31 = [v29 policyForAddresses:v5 forBundleIdentifier:v30];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = v31;
  obj = [v31 allKeys];
  v32 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (!v32)
  {
    v34 = 0;
    v49 = 0;
LABEL_45:

    goto LABEL_46;
  }

  v33 = v32;
  v34 = 0;
  v56 = 0;
  v35 = *v59;
  do
  {
    for (k = 0; k != v33; k = k + 1)
    {
      v37 = v5;
      if (*v59 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v58 + 1) + 8 * k);
      v39 = [v57 objectForKeyedSubscript:v38];
      v40 = [NSNumber numberWithInt:0];
      if (![v39 isEqualToNumber:v40])
      {
        goto LABEL_35;
      }

      v41 = [v38 length];

      if (v41)
      {
        ++v56;
        if (!v34)
        {
          v42 = [TUContactsDataProviderFetchRequest alloc];
          v43 = [TUHandle handleWithDestinationID:v38];
          v39 = [v42 initWithHandle:v43];

          v44 = [(PHCarPlayRecentsViewController *)self contactsDataProvider];
          v40 = [v44 executeFetchRequest:v39];

          v45 = [v40 localizedName];
          if ([v45 length])
          {
            v46 = [v40 localizedName];
          }

          else
          {
            v46 = v38;
          }

          v34 = v46;

LABEL_35:
        }
      }

      v5 = v37;
    }

    v33 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  }

  while (v33);

  if (v56 == 2)
  {
    v47 = TUBundle();
    v48 = @"DOWNTIME_CALLER_ALTERNATE_TWO_%@";
LABEL_43:
    obj = v47;
    v50 = [v47 localizedStringForKey:v48 value:&stru_10028F310 table:@"TelephonyUtilities"];
    v49 = [NSString stringWithFormat:v50, v34];
LABEL_44:

    goto LABEL_45;
  }

  if (v56 == 1)
  {
    v47 = TUBundle();
    v48 = @"DOWNTIME_CALLER_ALTERNATE_%@";
    goto LABEL_43;
  }

  if (v56 >= 3)
  {
    obj = TUBundle();
    v50 = [obj localizedStringForKey:@"DOWNTIME_CALLER_ALTERNATE_MULTI_%@_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
    v52 = [NSNumber numberWithUnsignedInteger:v56 - 1];
    v49 = [NSString stringWithFormat:v50, v34, v52];

    goto LABEL_44;
  }

  v49 = 0;
LABEL_46:

  return v49;
}

- (id)restrictedSubtitleForRecentCall:(id)a3
{
  v3 = [a3 callerNameForDisplay];
  if (![v3 length])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"UNKNOWN" value:&stru_10028F310 table:@"PHCarPlay"];

    v3 = v5;
  }

  v6 = TUBundle();
  v7 = [v6 localizedStringForKey:@"DOWNTIME_CALLER_ALTERNATE_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v8 = [NSString stringWithFormat:v7, v3];

  return v8;
}

- (void)updateNoContentBanner
{
  v3 = [(PHCarPlayRecentsViewController *)self recentCalls];
  v4 = [v3 count];

  if (![(PHCarPlayRecentsViewController *)self shouldSuppressMultiwayRecentCalls])
  {
    v5 = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
    v4 = &v4[[v5 count]];
  }

  [(PHCarPlayGenericTableViewController *)self setNoContentBannerShown:v4 == 0];
}

- (id)titleForNoContentBanner
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NO RECENTS" value:&stru_10028F310 table:@"PHCarPlay"];

  return v3;
}

- (id)badgeString
{
  [(PHCarPlayRecentsViewController *)self unreadCallCount];

  return PhoneStringForBadgeValue();
}

- (BOOL)shouldSuppressMultiwayRecentCalls
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.FaceTime"];
  v3 = [v2 BOOLForKey:@"suppressMultiwayRecentCalls"];

  return v3;
}

- (id)conversationWithUUID:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(PHCarPlayRecentsViewController *)self conversationManager];
  v6 = [v5 activeConversations];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 UUID];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)insertJoinableConversationsIfNecessary:(id)a3
{
  v4 = a3;
  if (![(PHCarPlayRecentsViewController *)self shouldSuppressMultiwayRecentCalls])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __73__PHCarPlayRecentsViewController_insertJoinableConversationsIfNecessary___block_invoke;
    v6[3] = &unk_100285C58;
    v7 = v4;
    v8 = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __73__PHCarPlayRecentsViewController_insertJoinableConversationsIfNecessary___block_invoke_164;
    v5[3] = &unk_100285B20;
    v5[4] = self;
    [(PHCarPlayRecentsViewController *)self performBatchUpdates:v6 completion:v5];
  }
}

void __73__PHCarPlayRecentsViewController_insertJoinableConversationsIfNecessary___block_invoke(uint64_t a1, int a2)
{
  v3 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (![v9 state])
        {
          v10 = [*(a1 + 40) joinableConversationUUIDs];
          v11 = [v9 UUID];
          v12 = [v10 containsObject:v11];

          if ((v12 & 1) == 0)
          {
            v13 = [*(a1 + 40) joinableConversationUUIDs];
            v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v13 count], 0);

            [v3 addObject:v14];
            v15 = [*(a1 + 40) joinableConversationUUIDs];
            v16 = [v9 UUID];
            [v15 addObject:v16];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  if (a2 && [v3 count])
  {
    v17 = PHDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Inserting rows for joinable multiway conversations: %@", buf, 0xCu);
    }

    v18 = [*(a1 + 40) mainTableView];
    [v18 insertRowsAtIndexPaths:v3 withRowAnimation:100];
  }
}

- (void)removeJoinableConversation:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
  v6 = [v4 UUID];
  v7 = [v5 indexOfObject:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __61__PHCarPlayRecentsViewController_removeJoinableConversation___block_invoke;
    v9[3] = &unk_100286518;
    v11 = v7;
    v9[4] = self;
    v10 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __61__PHCarPlayRecentsViewController_removeJoinableConversation___block_invoke_166;
    v8[3] = &unk_100285B20;
    v8[4] = self;
    [(PHCarPlayRecentsViewController *)self performBatchUpdates:v9 completion:v8];
  }
}

void __61__PHCarPlayRecentsViewController_removeJoinableConversation___block_invoke(uint64_t a1, int a2)
{
  v4 = [NSIndexPath indexPathForRow:*(a1 + 48) inSection:0];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing multiway row: %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) joinableConversationUUIDs];
  v7 = [*(a1 + 40) UUID];
  [v6 removeObject:v7];

  if (a2)
  {
    v8 = [*(a1 + 32) mainTableView];
    v10 = v4;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:100];
  }
}

- (void)recentsController:(id)a3 didChangeCalls:(id)a4
{
  v5 = [a4 mutableCopy];
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController recentsController:didChangeCalls with %lu calls", &v7, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self viewIsInAppearedState])
  {
    [(PHCarPlayRecentsViewController *)self _replaceRecentCalls:v5];
  }

  else
  {
    [(PHCarPlayRecentsViewController *)self setPendingUpdatedRecentCalls:v5];
  }
}

- (void)recentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    *buf = 138412802;
    v11 = v7;
    v12 = 2048;
    v13 = [(PHCarPlayRecentsViewController *)self unreadCallCount];
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController %@ is handling unread call count change from %lu to %lu", buf, 0x20u);
  }

  [(PHCarPlayRecentsViewController *)self setUnreadCallCount:a4];
  v9.receiver = self;
  v9.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericTableViewController *)&v9 updateBadgeString];
}

- (void)_replaceRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  if (v5)
  {

LABEL_3:
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = [v4 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController recentsController:didChangeCalls performBatchUpdates for %lu calls", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __54__PHCarPlayRecentsViewController__replaceRecentCalls___block_invoke;
    v12[3] = &unk_100285C58;
    v12[4] = self;
    v13 = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __54__PHCarPlayRecentsViewController__replaceRecentCalls___block_invoke_2;
    v10[3] = &unk_100285B20;
    v11 = v13;
    [(PHCarPlayRecentsViewController *)self performBatchUpdates:v12 completion:v10];

    goto LABEL_10;
  }

  v7 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v8 = [v7 window];

  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v4 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController replaceRecentCalls ignored %lu calls since view is not yet loaded", buf, 0xCu);
  }

LABEL_10:
}

void __54__PHCarPlayRecentsViewController__replaceRecentCalls___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) setRecentCalls:*(a1 + 40)];
  v4 = [[NSIndexSet alloc] initWithIndex:1];
  if (a2)
  {
    v6 = v4;
    v5 = [*(a1 + 32) mainTableView];
    [v5 reloadSections:v6 withRowAnimation:5];

    v4 = v6;
  }
}

void __54__PHCarPlayRecentsViewController__replaceRecentCalls___block_invoke_2(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController recentsController:didChangeCalls performBatchUpdates completed for %lu calls", &v4, 0xCu);
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __82__PHCarPlayRecentsViewController_conversationManager_stateChangedForConversation___block_invoke;
  v6[3] = &unk_1002852E0;
  v7 = a4;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

void __82__PHCarPlayRecentsViewController_conversationManager_stateChangedForConversation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = *(a1 + 40);

    [v5 removeJoinableConversation:v3];
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v4 insertJoinableConversationsIfNecessary:v6];
  }
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __80__PHCarPlayRecentsViewController_conversationManager_removedActiveConversation___block_invoke;
  v5[3] = &unk_1002852E0;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)setRecentCalls:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController setRecentCalls to %lu calls", buf, 0xCu);
  }

  if (*(&self->_contactsDataProvider + 1) != v4)
  {
    v23 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v22 = v4;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v13 mediaType] == 1)
          {
            if (v9)
            {
              v14 = [(PHCarPlayRecentsViewController *)self recentsController];
              v15 = [v14 coalesceRecentCall:v9 withRecentCall:v13];
            }

            else
            {
              v15 = v13;
            }

            v16 = v15;
            if (!v15)
            {
              [v23 addObject:v9];
              v16 = v13;
            }

            v17 = v16;

            v10 += [v13 read] ^ 1;
            v9 = v17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);

      if (v9)
      {
        v18 = v23;
        [v23 addObject:v9];
LABEL_22:
        v19 = *(&self->_contactsDataProvider + 1);
        *(&self->_contactsDataProvider + 1) = v18;
        v20 = v18;

        v21 = PHDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "CarPlay Recents setting unread count to %lu", buf, 0xCu);
        }

        [(PHCarPlayRecentsViewController *)self setUnreadCallCount:v10];
        [(PHCarPlayRecentsViewController *)self updateNoContentBanner];
        v24.receiver = self;
        v24.super_class = PHCarPlayRecentsViewController;
        [(PHCarPlayGenericTableViewController *)&v24 updateBadgeString];

        v4 = v22;
        goto LABEL_25;
      }
    }

    else
    {

      v10 = 0;
      v9 = 0;
    }

    v18 = v23;
    goto LABEL_22;
  }

LABEL_25:
}

- (void)handleTUCallCenterCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v14, 0x16u);
  }

  v9 = [v4 object];
  if ([v9 disconnectedReason] == 17)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Call status changed for call with dial failed: %@", &v14, 0xCu);
    }

    v11 = [(PHCarPlayRecentsViewController *)self conversationManager];
    v12 = [v11 activeConversations];
    v13 = [v12 allObjects];
    [(PHCarPlayRecentsViewController *)self insertJoinableConversationsIfNecessary:v13];
  }
}

- (id)recentCallAtIndex:(int64_t)a3
{
  v4 = [(PHCarPlayRecentsViewController *)self recentCalls];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (TUContactsDataProvider)contactsDataProvider
{
  v3 = *(&self->_recentsController + 1);
  if (!v3)
  {
    v4 = [TUContactsDataProvider alloc];
    v5 = +[(PHApplicationServices *)MPApplicationServices];
    v6 = [v5 contactStore];
    v7 = [v4 initWithContactsDataSource:v6];
    v8 = *(&self->_recentsController + 1);
    *(&self->_recentsController + 1) = v7;

    v3 = *(&self->_recentsController + 1);
  }

  return v3;
}

- (void)performBatchUpdates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHCarPlayGenericTableViewController *)self mainTableViewDataSource];
  v9 = [v8 filterType];

  if (v9)
  {
    v6[2](v6, 0);
    v10 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v10 reloadData];

    v7[2](v7, 1);
  }

  else
  {
    v11 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __65__PHCarPlayRecentsViewController_performBatchUpdates_completion___block_invoke;
    v12[3] = &unk_100285590;
    v13 = v6;
    [v11 performBatchUpdates:v12 completion:v7];

    v7 = v13;
  }
}

@end
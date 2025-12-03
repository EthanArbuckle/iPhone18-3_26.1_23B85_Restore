@interface PHCarPlayRecentsViewController
- (BOOL)shouldSuppressMultiwayRecentCalls;
- (PHCarPlayRecentsViewController)init;
- (TUContactsDataProvider)contactsDataProvider;
- (id)badgeString;
- (id)bundleIdentifierForRecentCall:(id)call;
- (id)contactsForRecentCallForAvatar:(id)avatar;
- (id)conversationWithUUID:(id)d;
- (id)recentCallAtIndex:(int64_t)index;
- (id)restrictedSubtitleForConversation:(id)conversation;
- (id)restrictedSubtitleForRecentCall:(id)call;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForNoContentBanner;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_replaceRecentCalls:(id)calls;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)handleTUCallCenterCallStatusChangedNotification:(id)notification;
- (void)insertJoinableConversationsIfNecessary:(id)necessary;
- (void)joinConversationAtIndexPath:(id)path;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)programmaticallySelectRowAtIndexPath:(id)path;
- (void)recentsController:(id)controller didChangeCalls:(id)calls;
- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count;
- (void)removeJoinableConversation:(id)conversation;
- (void)setRecentCalls:(id)calls;
- (void)showRestrictedAlertWithMessage:(id)message;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateNoContentBanner;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

    recentsController = [UIApp recentsController];
    v7 = *(v2 + 49);
    *(v2 + 49) = recentsController;

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
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v4 = objc_opt_class();
  v5 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsTableViewCell];
  [mainTableView registerClass:v4 forCellReuseIdentifier:v5];

  mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v7 = objc_opt_class();
  v8 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsOngoingMultiwayTableViewCell];
  [mainTableView2 registerClass:v7 forCellReuseIdentifier:v8];

  mainTableView3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [mainTableView3 setRowHeight:UITableViewAutomaticDimension];

  conversationManager = [(PHCarPlayRecentsViewController *)self conversationManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __45__PHCarPlayRecentsViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_100284FD0;
  v11[4] = self;
  [conversationManager registerWithCompletionHandler:v11];
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericTableViewController *)&v5 viewWillAppear:appear];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController PHCarPlayRecentsViewController viewWillAppear", v4, 2u);
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v22.receiver = self;
  v22.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayRecentsViewController *)&v22 viewIsAppearing:appearing];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController PHCarPlayRecentsViewController viewIsAppearing", buf, 2u);
  }

  recentCalls = [(PHCarPlayRecentsViewController *)self recentCalls];

  if (!recentCalls)
  {
    recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
    recentCalls2 = [recentsController recentCalls];
    v8 = [recentCalls2 mutableCopy];

    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 134217984;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController viewIsAppearing: recentCalls nil so fetched %lu calls", buf, 0xCu);
    }

    [(PHCarPlayRecentsViewController *)self _replaceRecentCalls:v8];
    pendingUpdatedRecentCalls = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];

    if (pendingUpdatedRecentCalls)
    {
      v12 = PHDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pendingUpdatedRecentCalls2 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];
        v14 = [pendingUpdatedRecentCalls2 count];
        *buf = 134217984;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController viewIsAppearing: ignoring %lu stale pendingUpdatedRecentCalls", buf, 0xCu);
      }

      [(PHCarPlayRecentsViewController *)self setPendingUpdatedRecentCalls:0];
    }
  }

  pendingUpdatedRecentCalls3 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];

  if (pendingUpdatedRecentCalls3)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      pendingUpdatedRecentCalls4 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];
      v18 = [pendingUpdatedRecentCalls4 count];
      *buf = 134217984;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController viewIsAppearing: applying %lu pendingUpdatedRecentCalls", buf, 0xCu);
    }

    recentsController2 = [(PHCarPlayRecentsViewController *)self recentsController];
    pendingUpdatedRecentCalls5 = [(PHCarPlayRecentsViewController *)self pendingUpdatedRecentCalls];
    [(PHCarPlayRecentsViewController *)self recentsController:recentsController2 didChangeCalls:pendingUpdatedRecentCalls5];

    [(PHCarPlayRecentsViewController *)self setPendingUpdatedRecentCalls:0];
  }

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayRecentsViewController *)&v5 viewWillDisappear:disappear];
  recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
  [recentsController markRecentCallsAsRead];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericViewController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v10, 2u);
  }

  tabBarController = [(PHCarPlayRecentsViewController *)self tabBarController];
  selectedViewController = [tabBarController selectedViewController];
  childViewControllers = [selectedViewController childViewControllers];
  firstObject = [childViewControllers firstObject];

  if (firstObject == self)
  {
    recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
    [recentsController markRecentCallsAsRead];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    recentCalls = [(PHCarPlayRecentsViewController *)self recentCalls];
  }

  else
  {
    if ([(PHCarPlayRecentsViewController *)self shouldSuppressMultiwayRecentCalls])
    {
      return 0;
    }

    recentCalls = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
  }

  v7 = recentCalls;
  v8 = [recentCalls count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsTableViewCell];
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

    v10 = [pathCopy row];
    v11 = [(PHCarPlayRecentsViewController *)self recentCallAtIndex:v10];
    [v9 setRecentCall:v11];
    recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
    v13 = [recentsController itemForRecentCall:v11];
    [v9 setRecentsItem:v13];

    if (![*(&self->_pendingUpdatedRecentCalls + 1) phoneRecentsAvatarsCarplayEnabled])
    {
      goto LABEL_6;
    }

    displayName = [(PHCarPlayRecentsViewController *)self contactsForRecentCallForAvatar:v11];
    [v9 setContacts:displayName];
  }

  else
  {
    v15 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayRecentsOngoingMultiwayTableViewCell];
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v15 forIndexPath:pathCopy];

    joinableConversationUUIDs = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
    v17 = [pathCopy row];

    v18 = [joinableConversationUUIDs objectAtIndexedSubscript:v17];
    v11 = [(PHCarPlayRecentsViewController *)self conversationWithUUID:v18];

    displayName = [v11 displayName];
    [v9 setCallName:displayName];
  }

LABEL_6:

  return v9;
}

- (id)contactsForRecentCallForAvatar:(id)avatar
{
  avatarCopy = avatar;
  recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
  v6 = [recentsController contactByHandleForRecentCall:avatarCopy keyDescriptors:&__NSArray0__struct];

  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  validRemoteParticipantHandles = [avatarCopy validRemoteParticipantHandles];
  v9 = [validRemoteParticipantHandles countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(validRemoteParticipantHandles);
        }

        v13 = [v6 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        if (!v13)
        {
          v13 = objc_alloc_init(CNMutableContact);
        }

        [v7 addObject:v13];
      }

      v10 = [validRemoteParticipantHandles countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(PHCarPlayRecentsViewController *)self programmaticallySelectRowAtIndexPath:pathCopy];
}

- (void)programmaticallySelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = pathCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "programmaticallySelectRowAtIndexPath:%@", &v13, 0xCu);
  }

  if ([pathCopy section])
  {
    v6 = -[PHCarPlayRecentsViewController recentCallAtIndex:](self, "recentCallAtIndex:", [pathCopy row]);
    recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
    v8 = [recentsController dialRequestForRecentCall:v6];

    v9 = +[TUCallCenter sharedInstance];
    callFilterController = [v9 callFilterController];
    v11 = [callFilterController shouldRestrictDialRequest:v8];

    if (v11)
    {
      recentsController2 = [(PHCarPlayRecentsViewController *)self restrictedSubtitleForRecentCall:v6];
      [(PHCarPlayRecentsViewController *)self showRestrictedAlertWithMessage:recentsController2];
    }

    else
    {
      recentsController2 = [(PHCarPlayRecentsViewController *)self recentsController];
      [recentsController2 performDialRequest:v8];
    }
  }

  else
  {
    [(PHCarPlayRecentsViewController *)self joinConversationAtIndexPath:pathCopy];
  }
}

- (void)joinConversationAtIndexPath:(id)path
{
  pathCopy = path;
  joinableConversationUUIDs = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
  v6 = [pathCopy row];

  v7 = [joinableConversationUUIDs objectAtIndexedSubscript:v6];
  v12 = [(PHCarPlayRecentsViewController *)self conversationWithUUID:v7];

  v8 = +[TUCallCenter sharedInstance];
  callFilterController = [v8 callFilterController];
  LODWORD(v6) = [callFilterController shouldRestrictConversation:v12 performSynchronously:1];

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

- (id)bundleIdentifierForRecentCall:(id)call
{
  callCopy = call;
  serviceProvider = [callCopy serviceProvider];
  v5 = [serviceProvider isEqualToString:kCHServiceProviderTelephony];

  if (v5)
  {
    v6 = TUBundleIdentifierMobilePhoneApplication;
  }

  else
  {
    serviceProvider2 = [callCopy serviceProvider];
    v8 = [serviceProvider2 isEqualToString:kCHServiceProviderFaceTime];

    if (v8)
    {
      TUPreferredFaceTimeBundleIdentifier();
    }

    else
    {
      [callCopy serviceProvider];
    }
    v6 = ;
  }

  v9 = v6;

  return v9;
}

- (void)showRestrictedAlertWithMessage:(id)message
{
  messageCopy = message;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v10 = [UIAlertController alertControllerWithTitle:v6 message:messageCopy preferredStyle:1];

  v7 = TUBundle();
  v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v10 addAction:v9];

  [(PHCarPlayRecentsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)restrictedSubtitleForConversation:(id)conversation
{
  conversationCopy = conversation;
  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipants count]);

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = conversationCopy;
  activeRemoteParticipants2 = [conversationCopy activeRemoteParticipants];
  v7 = [activeRemoteParticipants2 countByEnumeratingWithState:&v66 objects:v72 count:16];
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
          objc_enumerationMutation(activeRemoteParticipants2);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        handle = [v12 handle];
        value = [handle value];
        if ([value length])
        {
          handle2 = [v12 handle];
          value2 = [handle2 value];
        }

        else
        {
          value2 = v10;
        }

        [v5 addObject:value2];
      }

      v8 = [activeRemoteParticipants2 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    remoteMembers = [v53 remoteMembers];
    v18 = [remoteMembers countByEnumeratingWithState:&v62 objects:v71 count:16];
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
            objc_enumerationMutation(remoteMembers);
          }

          v23 = *(*(&v62 + 1) + 8 * j);
          handle3 = [v23 handle];
          value3 = [handle3 value];
          if ([value3 length])
          {
            handle4 = [v23 handle];
            value4 = [handle4 value];
          }

          else
          {
            value4 = v21;
          }

          [v5 addObject:value4];
        }

        v19 = [remoteMembers countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v19);
    }
  }

  v28 = +[TUCallCenter sharedInstance];
  callFilterController = [v28 callFilterController];
  v30 = TUPreferredFaceTimeBundleIdentifier();
  v31 = [callFilterController policyForAddresses:v5 forBundleIdentifier:v30];

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

          contactsDataProvider = [(PHCarPlayRecentsViewController *)self contactsDataProvider];
          v40 = [contactsDataProvider executeFetchRequest:v39];

          localizedName = [v40 localizedName];
          if ([localizedName length])
          {
            localizedName2 = [v40 localizedName];
          }

          else
          {
            localizedName2 = v38;
          }

          v34 = localizedName2;

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

- (id)restrictedSubtitleForRecentCall:(id)call
{
  callerNameForDisplay = [call callerNameForDisplay];
  if (![callerNameForDisplay length])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"UNKNOWN" value:&stru_10028F310 table:@"PHCarPlay"];

    callerNameForDisplay = v5;
  }

  v6 = TUBundle();
  v7 = [v6 localizedStringForKey:@"DOWNTIME_CALLER_ALTERNATE_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v8 = [NSString stringWithFormat:v7, callerNameForDisplay];

  return v8;
}

- (void)updateNoContentBanner
{
  recentCalls = [(PHCarPlayRecentsViewController *)self recentCalls];
  v4 = [recentCalls count];

  if (![(PHCarPlayRecentsViewController *)self shouldSuppressMultiwayRecentCalls])
  {
    joinableConversationUUIDs = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
    v4 = &v4[[joinableConversationUUIDs count]];
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

- (id)conversationWithUUID:(id)d
{
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  conversationManager = [(PHCarPlayRecentsViewController *)self conversationManager];
  activeConversations = [conversationManager activeConversations];

  v7 = [activeConversations countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(activeConversations);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        uUID = [v12 UUID];
        v14 = [uUID isEqual:dCopy];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [activeConversations countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)insertJoinableConversationsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (![(PHCarPlayRecentsViewController *)self shouldSuppressMultiwayRecentCalls])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __73__PHCarPlayRecentsViewController_insertJoinableConversationsIfNecessary___block_invoke;
    v6[3] = &unk_100285C58;
    v7 = necessaryCopy;
    selfCopy = self;
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

- (void)removeJoinableConversation:(id)conversation
{
  conversationCopy = conversation;
  joinableConversationUUIDs = [(PHCarPlayRecentsViewController *)self joinableConversationUUIDs];
  uUID = [conversationCopy UUID];
  v7 = [joinableConversationUUIDs indexOfObject:uUID];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __61__PHCarPlayRecentsViewController_removeJoinableConversation___block_invoke;
    v9[3] = &unk_100286518;
    v11 = v7;
    v9[4] = self;
    v10 = conversationCopy;
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

- (void)recentsController:(id)controller didChangeCalls:(id)calls
{
  v5 = [calls mutableCopy];
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

- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    *buf = 138412802;
    v11 = v7;
    v12 = 2048;
    unreadCallCount = [(PHCarPlayRecentsViewController *)self unreadCallCount];
    v14 = 2048;
    countCopy = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController %@ is handling unread call count change from %lu to %lu", buf, 0x20u);
  }

  [(PHCarPlayRecentsViewController *)self setUnreadCallCount:count];
  v9.receiver = self;
  v9.super_class = PHCarPlayRecentsViewController;
  [(PHCarPlayGenericTableViewController *)&v9 updateBadgeString];
}

- (void)_replaceRecentCalls:(id)calls
{
  callsCopy = calls;
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  if (mainTableView)
  {

LABEL_3:
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = [callsCopy count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController recentsController:didChangeCalls performBatchUpdates for %lu calls", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __54__PHCarPlayRecentsViewController__replaceRecentCalls___block_invoke;
    v12[3] = &unk_100285C58;
    v12[4] = self;
    v13 = callsCopy;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __54__PHCarPlayRecentsViewController__replaceRecentCalls___block_invoke_2;
    v10[3] = &unk_100285B20;
    v11 = v13;
    [(PHCarPlayRecentsViewController *)self performBatchUpdates:v12 completion:v10];

    goto LABEL_10;
  }

  mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  window = [mainTableView2 window];

  if (!window)
  {
    goto LABEL_3;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [callsCopy count];
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

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __82__PHCarPlayRecentsViewController_conversationManager_stateChangedForConversation___block_invoke;
  v6[3] = &unk_1002852E0;
  conversationCopy = conversation;
  selfCopy = self;
  v5 = conversationCopy;
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

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __80__PHCarPlayRecentsViewController_conversationManager_removedActiveConversation___block_invoke;
  v5[3] = &unk_1002852E0;
  v5[4] = self;
  conversationCopy = conversation;
  v4 = conversationCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)setRecentCalls:(id)calls
{
  callsCopy = calls;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = [callsCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayRecentsViewController setRecentCalls to %lu calls", buf, 0xCu);
  }

  if (*(&self->_contactsDataProvider + 1) != callsCopy)
  {
    v23 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = callsCopy;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v22 = callsCopy;
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
              recentsController = [(PHCarPlayRecentsViewController *)self recentsController];
              v15 = [recentsController coalesceRecentCall:v9 withRecentCall:v13];
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

        callsCopy = v22;
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

- (void)handleTUCallCenterCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v14, 0x16u);
  }

  object = [notificationCopy object];
  if ([object disconnectedReason] == 17)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = object;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Call status changed for call with dial failed: %@", &v14, 0xCu);
    }

    conversationManager = [(PHCarPlayRecentsViewController *)self conversationManager];
    activeConversations = [conversationManager activeConversations];
    allObjects = [activeConversations allObjects];
    [(PHCarPlayRecentsViewController *)self insertJoinableConversationsIfNecessary:allObjects];
  }
}

- (id)recentCallAtIndex:(int64_t)index
{
  recentCalls = [(PHCarPlayRecentsViewController *)self recentCalls];
  v5 = recentCalls;
  if (index < 0 || [recentCalls count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
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
    contactStore = [v5 contactStore];
    v7 = [v4 initWithContactsDataSource:contactStore];
    v8 = *(&self->_recentsController + 1);
    *(&self->_recentsController + 1) = v7;

    v3 = *(&self->_recentsController + 1);
  }

  return v3;
}

- (void)performBatchUpdates:(id)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  mainTableViewDataSource = [(PHCarPlayGenericTableViewController *)self mainTableViewDataSource];
  filterType = [mainTableViewDataSource filterType];

  if (filterType)
  {
    updatesCopy[2](updatesCopy, 0);
    mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView reloadData];

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __65__PHCarPlayRecentsViewController_performBatchUpdates_completion___block_invoke;
    v12[3] = &unk_100285590;
    v13 = updatesCopy;
    [mainTableView2 performBatchUpdates:v12 completion:completionCopy];

    completionCopy = v13;
  }
}

@end
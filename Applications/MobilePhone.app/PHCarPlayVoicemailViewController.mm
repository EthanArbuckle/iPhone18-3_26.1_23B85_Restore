@interface PHCarPlayVoicemailViewController
- (BOOL)isRestrictedMessage:(id)message;
- (PHCarPlayVoicemailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)badgeString;
- (id)restrictedSubtitleForMessage:(id)message;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForNoContentBanner;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addMessageIDToPlaybackQueue:(id)queue;
- (void)configureCell:(id)cell withVoicemail:(id)voicemail;
- (void)dealloc;
- (void)playMessageFromPlaybackQueue;
- (void)playMessageWithID:(id)d;
- (void)programmaticallySelectRowAtIndexPath:(id)path;
- (void)providersChangedForProviderManager:(id)manager;
- (void)showRestrictedAlertForMessage:(id)message;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)voicemailManagerChangedNotification:(id)notification;
- (void)voicemailViewControllerPlayVoicemailEventNotification:(id)notification;
@end

@implementation PHCarPlayVoicemailViewController

- (PHCarPlayVoicemailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = PHCarPlayVoicemailViewController;
  v4 = [(PHCarPlayGenericViewController *)&v14 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"voicemailViewControllerPlayVoicemailEventNotification:" name:@"PHCarPlayVoicemailViewControllerPlayVoicemailEventNotification" object:0];
  }

  v6 = +[(PHApplicationServices *)MPApplicationServices];
  contactStore = [v6 contactStore];
  v8 = *(v4 + 49);
  *(v4 + 49) = contactStore;

  v9 = +[NSMutableArray array];
  v10 = *(v4 + 57);
  *(v4 + 57) = v9;

  if (+[PHDevice isGeminiCapable])
  {
    v11 = +[(PHApplicationServices *)MPApplicationServices];
    callProviderManager = [v11 callProviderManager];

    [callProviderManager addDelegate:v4 queue:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayVoicemailViewController;
  [(PHCarPlayGenericTableViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PHCarPlayVoicemailViewController;
  [(PHCarPlayGenericViewController *)&v8 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"voicemailManagerChangedNotification:" name:@"PHCarPlayVoicemailManagerChangedNotification" object:0];

  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [mainTableView setRowHeight:UITableViewAutomaticDimension];

  mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v6 = objc_opt_class();
  v7 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayVoicemailTableViewCell];
  [mainTableView2 registerClass:v6 forCellReuseIdentifier:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PHCarPlayVoicemailViewController;
  [(PHCarPlayGenericViewController *)&v7 viewDidAppear:appear];
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  indexPathForSelectedRow = [mainTableView2 indexPathForSelectedRow];
  [mainTableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)voicemailManagerChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v10 = 138412546;
    v11 = name;
    v12 = 1024;
    viewIsInAppearedState = [(PHCarPlayGenericViewController *)self viewIsInAppearedState];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ with self.viewIsInAppearedState: %d", &v10, 0x12u);
  }

  if ([(PHCarPlayGenericViewController *)self viewIsInAppearedState])
  {
    mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView reloadData];

    [(PHCarPlayVoicemailViewController *)self playMessageFromPlaybackQueue];
  }

  else
  {
    [(PHCarPlayGenericTableViewController *)self setTableViewReloadIsRequiredOnViewWillAppear:1];
  }

  tabBarItem = [(PHCarPlayVoicemailViewController *)self tabBarItem];
  badgeString = [(PHCarPlayVoicemailViewController *)self badgeString];
  [tabBarItem setBadgeValue:badgeString];
}

- (void)voicemailViewControllerPlayVoicemailEventNotification:(id)notification
{
  userInfo = [notification userInfo];
  v8 = [userInfo valueForKey:@"kPHCarPlayVoicemailViewControllerVoicemailIDKey"];

  if (v8)
  {
    tabBarController = [(PHCarPlayVoicemailViewController *)self tabBarController];
    [tabBarController setSelectedViewController:self];

    stringValue = [v8 stringValue];
    v7 = [stringValue isEqualToString:@"-1"];

    if ((v7 & 1) == 0)
    {
      [(PHCarPlayVoicemailViewController *)self playMessageWithID:v8];
    }
  }
}

- (void)playMessageWithID:(id)d
{
  dCopy = d;
  v5 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__PHCarPlayVoicemailViewController_playMessageWithID___block_invoke;
  v7[3] = &unk_1002869A0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [v5 voicemailWithID:v6 completion:v7];
}

void __54__PHCarPlayVoicemailViewController_playMessageWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__PHCarPlayVoicemailViewController_playMessageWithID___block_invoke_2;
  block[3] = &unk_1002854F8;
  objc_copyWeak(&v11, &location);
  v8 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__PHCarPlayVoicemailViewController_playMessageWithID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      if ([WeakRetained isRestrictedMessage:?])
      {
        v4 = PHDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 32);
          v20 = 138412290;
          v21 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen Time: Voicemail playback from notification is restricted for message: %@", &v20, 0xCu);
        }

        [v3 showRestrictedAlertForMessage:*(a1 + 32)];
      }

      else
      {
        v8 = [*(a1 + 32) isDataAvailable];
        v9 = PHDefaultLog();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          if (v10)
          {
            v11 = *(a1 + 32);
            v20 = 138412290;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHCarPlayVoicemailController will play %@", &v20, 0xCu);
          }

          v12 = objc_alloc_init(PHCarPlayVoicemailPlayerViewController);
          [(PHCarPlayVoicemailPlayerViewController *)v12 setRepresentedVoicemail:*(a1 + 32)];
          v13 = [v3 navigationController];
          [v13 pushViewController:v12 animated:0];
        }

        else
        {
          if (v10)
          {
            v14 = *(a1 + 32);
            v20 = 138412290;
            v21 = v14;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHCarPlayVoicemailController wont play %@ because it has no data", &v20, 0xCu);
          }

          v15 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
          v16 = [v15 voicemails];
          v17 = [v16 count];

          if (v17)
          {
            v18 = [v3 mainTableView];
            v19 = [NSIndexPath indexPathForRow:0 inSection:0];
            [v18 scrollToRowAtIndexPath:v19 atScrollPosition:1 animated:0];
          }
        }
      }
    }

    else
    {
      v6 = PHDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v20 = 138412290;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCarPlayVoicemailController wont play message with id %@ because it could not be found. Adding to playback queue", &v20, 0xCu);
      }

      [*(a1 + 48) addMessageIDToPlaybackQueue:*(a1 + 40)];
    }
  }
}

- (void)playMessageFromPlaybackQueue
{
  messagePlaybackQueue = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
  firstObject = [messagePlaybackQueue firstObject];

  if (firstObject)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      messagePlaybackQueue2 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
      v8 = 138412546;
      v9 = firstObject;
      v10 = 2112;
      v11 = messagePlaybackQueue2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found a messageID: %@ from the playback queue: %@ that needs to be played", &v8, 0x16u);
    }

    messagePlaybackQueue3 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
    [messagePlaybackQueue3 removeObject:firstObject];

    [(PHCarPlayVoicemailViewController *)self playMessageWithID:firstObject];
  }
}

- (void)addMessageIDToPlaybackQueue:(id)queue
{
  queueCopy = queue;
  messagePlaybackQueue = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
  v6 = [messagePlaybackQueue containsObject:queueCopy];

  if (v6)
  {
    messagePlaybackQueue3 = PHDefaultLog();
    if (os_log_type_enabled(messagePlaybackQueue3, OS_LOG_TYPE_DEFAULT))
    {
      messagePlaybackQueue2 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
      v9 = 138412290;
      v10 = messagePlaybackQueue2;
      _os_log_impl(&_mh_execute_header, messagePlaybackQueue3, OS_LOG_TYPE_DEFAULT, "Message already exists in queue: %@ not adding it", &v9, 0xCu);
    }
  }

  else
  {
    messagePlaybackQueue3 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
    [messagePlaybackQueue3 addObject:queueCopy];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [PHCarPlayVoicemailManager sharedVoicemailManager:view];
  voicemails = [v5 voicemails];
  v7 = [voicemails count];

  [(PHCarPlayGenericTableViewController *)self setNoContentBannerShown:v7 == 0];
  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayVoicemailTableViewCell];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  voicemails = [v10 voicemails];
  v12 = [pathCopy row];

  v13 = [voicemails objectAtIndex:v12];

  [(PHCarPlayVoicemailViewController *)self configureCell:v9 withVoicemail:v13];

  return v9;
}

- (void)configureCell:(id)cell withVoicemail:(id)voicemail
{
  cellCopy = cell;
  voicemailCopy = voicemail;
  [cellCopy setVoicemailMessage:voicemailCopy];
  [cellCopy setRestrictedMessage:{-[PHCarPlayVoicemailViewController isRestrictedMessage:](self, "isRestrictedMessage:", voicemailCopy)}];
  v7 = +[(PHApplicationServices *)MPApplicationServices];
  contactStore = [v7 contactStore];
  v9 = [voicemailCopy displayNameUsingContactStore:contactStore];

  if (![v9 length])
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"UNKNOWN" value:&stru_10028F310 table:@"PHCarPlay"];

    v9 = v11;
  }

  [cellCopy setNameString:v9];
  if ([voicemailCopy isDataAvailable])
  {
    v12 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
    [v12 localizedSubtitleForMessage:voicemailCopy];
  }

  else
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    [v12 localizedStringForKey:@"DOWNLOAD_PENDING" value:&stru_10028F310 table:@"PHCarPlay"];
  }
  v13 = ;

  [cellCopy setSubtitle:v13];
  if (!+[PHDevice isGeminiCapable])
  {
    localizedShortName = 0;
    goto LABEL_14;
  }

  v14 = +[(PHApplicationServices *)MPApplicationServices];
  callProviderManager = [v14 callProviderManager];

  telephonyProvider = [callProviderManager telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  if ([prioritizedSenderIdentities count] < 2)
  {
    localizedShortName = 0;
  }

  else
  {
    receiverDestinationID = [voicemailCopy receiverDestinationID];
    v19 = [receiverDestinationID length];

    if (!v19)
    {
      localizedShortName = 0;
      goto LABEL_13;
    }

    telephonyProvider = [callProviderManager telephonyProvider];
    prioritizedSenderIdentities = [voicemailCopy receiverDestinationID];
    v20 = [TUHandle handleWithDestinationID:prioritizedSenderIdentities];
    v21 = [telephonyProvider senderIdentityForHandle:v20];
    localizedShortName = [v21 localizedShortName];
  }

LABEL_13:
LABEL_14:
  [cellCopy setLocalizedSenderIdentityTitle:localizedShortName];
}

- (BOOL)isRestrictedMessage:(id)message
{
  messageCopy = message;
  senderDestinationID = [messageCopy senderDestinationID];
  if ([senderDestinationID length])
  {
    senderDestinationID2 = [messageCopy senderDestinationID];
  }

  else
  {
    senderDestinationID2 = TUCallFilterUnknownCallerAddress;
  }

  v6 = senderDestinationID2;

  v7 = [TUHandle handleWithDestinationID:v6];
  v8 = +[TUCallCenter sharedInstance];
  callFilterController = [v8 callFilterController];
  v10 = [callFilterController containsRestrictedHandle:v7 forBundleIdentifier:TUBundleIdentifierMobilePhoneApplication];

  return v10;
}

- (void)showRestrictedAlertForMessage:(id)message
{
  messageCopy = message;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v7 = [(PHCarPlayVoicemailViewController *)self restrictedSubtitleForMessage:messageCopy];

  v11 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = TUBundle();
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
  [v11 addAction:v10];

  [(PHCarPlayVoicemailViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (id)restrictedSubtitleForMessage:(id)message
{
  messageCopy = message;
  contactStore = [(PHCarPlayVoicemailViewController *)self contactStore];
  v6 = [messageCopy displayNameUsingContactStore:contactStore];

  if (![v6 length])
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"UNKNOWN" value:&stru_10028F310 table:@"PHCarPlay"];

    v6 = v8;
  }

  v9 = TUBundle();
  v10 = [v9 localizedStringForKey:@"DOWNTIME_CALLER_ALTERNATE_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v11 = [NSString stringWithFormat:v10, v6];

  return v11;
}

- (void)programmaticallySelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = pathCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "programmaticallySelectRowAtIndexPath:%@", &v16, 0xCu);
  }

  v6 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  voicemails = [v6 voicemails];
  v8 = [voicemails objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v9 = [(PHCarPlayVoicemailViewController *)self isRestrictedMessage:v8];
  if (v9)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Screen Time: Voicemail playback is restricted for message: %@", &v16, 0xCu);
    }

    mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView deselectRowAtIndexPath:pathCopy animated:0];

    [(PHCarPlayVoicemailViewController *)self showRestrictedAlertForMessage:v8];
  }

  else
  {
    if ([v8 isDataAvailable])
    {
      v12 = objc_alloc_init(PHCarPlayVoicemailPlayerViewController);
      [(PHCarPlayVoicemailPlayerViewController *)v12 setRepresentedVoicemail:v8];
      navigationController = [(PHCarPlayVoicemailViewController *)self navigationController];
      [navigationController pushViewController:v12 animated:1];
    }

    else
    {
      v12 = PHDefaultLog();
      if (os_log_type_enabled(&v12->super.super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, &v12->super.super.super.super, OS_LOG_TYPE_DEFAULT, "Did not select voicemail as it was still pending %@", &v16, 0xCu);
      }
    }
  }

  if (((v9 | !+[PHCarPlayUtilities activeInterfaceMechanismIsHardware]) & 1) == 0)
  {
    mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView2 deselectRowAtIndexPath:pathCopy animated:0];

    mainTableView3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView3 highlightRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }
}

- (id)titleForNoContentBanner
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NO VOICEMAIL" value:&stru_10028F310 table:@"PHCarPlay"];

  return v3;
}

- (id)badgeString
{
  v2 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  badgeString = [v2 badgeString];

  return badgeString;
}

- (void)providersChangedForProviderManager:(id)manager
{
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [mainTableView reloadData];
}

@end
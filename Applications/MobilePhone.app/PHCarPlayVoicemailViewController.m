@interface PHCarPlayVoicemailViewController
- (BOOL)isRestrictedMessage:(id)a3;
- (PHCarPlayVoicemailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)badgeString;
- (id)restrictedSubtitleForMessage:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForNoContentBanner;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addMessageIDToPlaybackQueue:(id)a3;
- (void)configureCell:(id)a3 withVoicemail:(id)a4;
- (void)dealloc;
- (void)playMessageFromPlaybackQueue;
- (void)playMessageWithID:(id)a3;
- (void)programmaticallySelectRowAtIndexPath:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)showRestrictedAlertForMessage:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)voicemailManagerChangedNotification:(id)a3;
- (void)voicemailViewControllerPlayVoicemailEventNotification:(id)a3;
@end

@implementation PHCarPlayVoicemailViewController

- (PHCarPlayVoicemailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = PHCarPlayVoicemailViewController;
  v4 = [(PHCarPlayGenericViewController *)&v14 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"voicemailViewControllerPlayVoicemailEventNotification:" name:@"PHCarPlayVoicemailViewControllerPlayVoicemailEventNotification" object:0];
  }

  v6 = +[(PHApplicationServices *)MPApplicationServices];
  v7 = [v6 contactStore];
  v8 = *(v4 + 49);
  *(v4 + 49) = v7;

  v9 = +[NSMutableArray array];
  v10 = *(v4 + 57);
  *(v4 + 57) = v9;

  if (+[PHDevice isGeminiCapable])
  {
    v11 = +[(PHApplicationServices *)MPApplicationServices];
    v12 = [v11 callProviderManager];

    [v12 addDelegate:v4 queue:0];
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

  v4 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v6 = objc_opt_class();
  v7 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayVoicemailTableViewCell];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PHCarPlayVoicemailViewController;
  [(PHCarPlayGenericViewController *)&v7 viewDidAppear:a3];
  v4 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v5 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v6 = [v5 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v6 animated:1];
}

- (void)voicemailManagerChangedNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = [(PHCarPlayGenericViewController *)self viewIsInAppearedState];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ with self.viewIsInAppearedState: %d", &v10, 0x12u);
  }

  if ([(PHCarPlayGenericViewController *)self viewIsInAppearedState])
  {
    v7 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v7 reloadData];

    [(PHCarPlayVoicemailViewController *)self playMessageFromPlaybackQueue];
  }

  else
  {
    [(PHCarPlayGenericTableViewController *)self setTableViewReloadIsRequiredOnViewWillAppear:1];
  }

  v8 = [(PHCarPlayVoicemailViewController *)self tabBarItem];
  v9 = [(PHCarPlayVoicemailViewController *)self badgeString];
  [v8 setBadgeValue:v9];
}

- (void)voicemailViewControllerPlayVoicemailEventNotification:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 valueForKey:@"kPHCarPlayVoicemailViewControllerVoicemailIDKey"];

  if (v8)
  {
    v5 = [(PHCarPlayVoicemailViewController *)self tabBarController];
    [v5 setSelectedViewController:self];

    v6 = [v8 stringValue];
    v7 = [v6 isEqualToString:@"-1"];

    if ((v7 & 1) == 0)
    {
      [(PHCarPlayVoicemailViewController *)self playMessageWithID:v8];
    }
  }
}

- (void)playMessageWithID:(id)a3
{
  v4 = a3;
  v5 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__PHCarPlayVoicemailViewController_playMessageWithID___block_invoke;
  v7[3] = &unk_1002869A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v3 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found a messageID: %@ from the playback queue: %@ that needs to be played", &v8, 0x16u);
    }

    v7 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
    [v7 removeObject:v4];

    [(PHCarPlayVoicemailViewController *)self playMessageWithID:v4];
  }
}

- (void)addMessageIDToPlaybackQueue:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Message already exists in queue: %@ not adding it", &v9, 0xCu);
    }
  }

  else
  {
    v7 = [(PHCarPlayVoicemailViewController *)self messagePlaybackQueue];
    [v7 addObject:v4];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [PHCarPlayVoicemailManager sharedVoicemailManager:a3];
  v6 = [v5 voicemails];
  v7 = [v6 count];

  [(PHCarPlayGenericTableViewController *)self setNoContentBannerShown:v7 == 0];
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[(PHCarPlayGenericTableViewCell *)PHCarPlayVoicemailTableViewCell];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  v11 = [v10 voicemails];
  v12 = [v6 row];

  v13 = [v11 objectAtIndex:v12];

  [(PHCarPlayVoicemailViewController *)self configureCell:v9 withVoicemail:v13];

  return v9;
}

- (void)configureCell:(id)a3 withVoicemail:(id)a4
{
  v23 = a3;
  v6 = a4;
  [v23 setVoicemailMessage:v6];
  [v23 setRestrictedMessage:{-[PHCarPlayVoicemailViewController isRestrictedMessage:](self, "isRestrictedMessage:", v6)}];
  v7 = +[(PHApplicationServices *)MPApplicationServices];
  v8 = [v7 contactStore];
  v9 = [v6 displayNameUsingContactStore:v8];

  if (![v9 length])
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"UNKNOWN" value:&stru_10028F310 table:@"PHCarPlay"];

    v9 = v11;
  }

  [v23 setNameString:v9];
  if ([v6 isDataAvailable])
  {
    v12 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
    [v12 localizedSubtitleForMessage:v6];
  }

  else
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    [v12 localizedStringForKey:@"DOWNLOAD_PENDING" value:&stru_10028F310 table:@"PHCarPlay"];
  }
  v13 = ;

  [v23 setSubtitle:v13];
  if (!+[PHDevice isGeminiCapable])
  {
    v22 = 0;
    goto LABEL_14;
  }

  v14 = +[(PHApplicationServices *)MPApplicationServices];
  v15 = [v14 callProviderManager];

  v16 = [v15 telephonyProvider];
  v17 = [v16 prioritizedSenderIdentities];
  if ([v17 count] < 2)
  {
    v22 = 0;
  }

  else
  {
    v18 = [v6 receiverDestinationID];
    v19 = [v18 length];

    if (!v19)
    {
      v22 = 0;
      goto LABEL_13;
    }

    v16 = [v15 telephonyProvider];
    v17 = [v6 receiverDestinationID];
    v20 = [TUHandle handleWithDestinationID:v17];
    v21 = [v16 senderIdentityForHandle:v20];
    v22 = [v21 localizedShortName];
  }

LABEL_13:
LABEL_14:
  [v23 setLocalizedSenderIdentityTitle:v22];
}

- (BOOL)isRestrictedMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 senderDestinationID];
  if ([v4 length])
  {
    v5 = [v3 senderDestinationID];
  }

  else
  {
    v5 = TUCallFilterUnknownCallerAddress;
  }

  v6 = v5;

  v7 = [TUHandle handleWithDestinationID:v6];
  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 callFilterController];
  v10 = [v9 containsRestrictedHandle:v7 forBundleIdentifier:TUBundleIdentifierMobilePhoneApplication];

  return v10;
}

- (void)showRestrictedAlertForMessage:(id)a3
{
  v4 = a3;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v7 = [(PHCarPlayVoicemailViewController *)self restrictedSubtitleForMessage:v4];

  v11 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = TUBundle();
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_10028F310 table:@"TelephonyUtilities"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
  [v11 addAction:v10];

  [(PHCarPlayVoicemailViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (id)restrictedSubtitleForMessage:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayVoicemailViewController *)self contactStore];
  v6 = [v4 displayNameUsingContactStore:v5];

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

- (void)programmaticallySelectRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "programmaticallySelectRowAtIndexPath:%@", &v16, 0xCu);
  }

  v6 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  v7 = [v6 voicemails];
  v8 = [v7 objectAtIndex:{objc_msgSend(v4, "row")}];

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

    v11 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v11 deselectRowAtIndexPath:v4 animated:0];

    [(PHCarPlayVoicemailViewController *)self showRestrictedAlertForMessage:v8];
  }

  else
  {
    if ([v8 isDataAvailable])
    {
      v12 = objc_alloc_init(PHCarPlayVoicemailPlayerViewController);
      [(PHCarPlayVoicemailPlayerViewController *)v12 setRepresentedVoicemail:v8];
      v13 = [(PHCarPlayVoicemailViewController *)self navigationController];
      [v13 pushViewController:v12 animated:1];
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
    v14 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v14 deselectRowAtIndexPath:v4 animated:0];

    v15 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v15 highlightRowAtIndexPath:v4 animated:0 scrollPosition:0];
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
  v3 = [v2 badgeString];

  return v3;
}

- (void)providersChangedForProviderManager:(id)a3
{
  v3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [v3 reloadData];
}

@end
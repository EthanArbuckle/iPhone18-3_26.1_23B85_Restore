@interface MPVoicemailMessageNotificationViewController
- (CGRect)mediaPlayPauseButtonFrame;
- (MPVoicemailMessageNotificationViewController)init;
- (id)listenForVoicemailChangesWithBlock:(id)a3;
- (id)playerControlsView;
- (void)dealloc;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)mediaPause;
- (void)mediaPlay;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerController:(id)a3 didChangeToCurrentTime:(float)a4;
- (void)setPlaybackMessageWithID:(id)a3;
- (void)viewDidLoad;
@end

@implementation MPVoicemailMessageNotificationViewController

- (MPVoicemailMessageNotificationViewController)init
{
  if ([CNContactStore authorizationStatusForEntityType:0]== 3)
  {
    v3 = objc_alloc_init(CNContactStore);
    self = [(VMMessageViewController *)self initWithContactStore:v3];
  }

  else
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10005FB7C();
    }
  }

  return self;
}

- (id)playerControlsView
{
  v2 = [(VMMessageViewController *)self playerControlsViewController];
  v3 = [v2 playerControlsView];

  return v3;
}

- (void)dealloc
{
  v3 = [(VMMessageViewController *)self playerControlsViewController];
  v4 = [v3 playerControlsView];

  v5 = NSStringFromSelector("state");
  [v4 removeObserver:self forKeyPath:v5 context:&off_1000897A8];

  v6.receiver = self;
  v6.super_class = MPVoicemailMessageNotificationViewController;
  [(VMMessageViewController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v21 = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received a key-value observing notification for key path (%@) object (%@).", &v21, 0x16u);
  }

  if (v9)
  {
    if (a6 == &off_1000897A8)
    {
      v12 = [v9 length];
      if (v10)
      {
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v10;
            v14 = [(VMMessageViewController *)self playerControlsViewController];
            v15 = [v14 playerControlsView];
            v16 = [v13 isEqual:v15];

            if (!v16)
            {
              goto LABEL_16;
            }

            v17 = NSStringFromSelector("state");
            v18 = [v9 isEqualToString:v17];

            if (!v18)
            {
              goto LABEL_16;
            }

            v19 = [v13 state];
            if (v19 != 2)
            {
              if (v19 == 1)
              {
                v20 = [(MPVoicemailMessageNotificationViewController *)self extensionContext];
                [v20 mediaPlayingStarted];
                goto LABEL_15;
              }

              if (v19)
              {
LABEL_16:

                goto LABEL_17;
              }
            }

            v20 = [(MPVoicemailMessageNotificationViewController *)self extensionContext];
            [v20 mediaPlayingPaused];
LABEL_15:

            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_17:
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MPVoicemailMessageNotificationViewController;
  [(VMMessageViewController *)&v9 viewDidLoad];
  v3 = [(VMMessageViewController *)self playerControlsViewController];
  v4 = [v3 playerControlsView];

  v5 = [(VMMessageViewController *)self playerControlsViewController];
  v6 = [v5 playerController];
  [v6 setDelegate:self];

  [v4 setStyle:1];
  v7 = [v4 playPauseButton];
  [v7 setHidden:1];

  v8 = NSStringFromSelector("state");
  [v4 addObserver:self forKeyPath:v8 options:0 context:&off_1000897A8];
}

- (void)playerController:(id)a3 didChangeToCurrentTime:(float)a4
{
  v6 = [(MPVoicemailMessageNotificationViewController *)self playerControlsView];
  v7 = a4;
  [v6 setElapsedTime:1 animated:v7];

  v8 = [(VMMessageViewController *)self voicemailMessage];
  if ([v8 shouldMarkAsReadForPlaybackCurrentTime:v7])
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Marking current voicemail as read %@", buf, 0xCu);
    }

    v10 = +[NotificationApplicationServices shared];
    v11 = [v10 voicemailManager];
    v13 = v8;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v11 markVoicemailsAsRead:v12];
  }
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification (%@).", &v16, 0xCu);
  }

  v6 = [(MPMessageID *)v4 request];
  v7 = [v6 content];
  v8 = [v7 userInfo];

  v9 = [v8 objectForKeyedSubscript:@"VMVoicemailIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"voicemailRecordUUID"];
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrieving voicemail message matching the specified identifier (%@).", &v16, 0xCu);
  }

  if (v9)
  {
    if (v10)
    {
      v12 = [[NSUUID alloc] initWithUUIDString:v10];
      v13 = [[MPMessageID alloc] initWithUuid:v12];
    }

    else
    {
      v13 = [[MPMessageID alloc] initWithValue:[(MPMessageID *)v9 intValue]];
    }

    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(VMMessageViewController *)self voicemailManager];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetching voicemail for messageID (%@) using manager %@.", &v16, 0x16u);
    }

    [(MPVoicemailMessageNotificationViewController *)self setPlaybackMessageWithID:v13];
  }
}

- (void)setPlaybackMessageWithID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VMMessageViewController *)self voicemailManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004D4C;
  v7[3] = &unk_100089808;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 voicemailWithIdentifier:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received notification response (%@).", buf, 0xCu);
  }

  v9 = [v6 actionIdentifier];
  v10 = [v9 length];
  v11 = PHDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Executing action matching the specified identifier (%@).", buf, 0xCu);
    }

    if ([v9 isEqualToString:@"MPCallBulletinBoardActionIdentifier"])
    {
      v13 = [v6 notification];
      v14 = [v13 request];
      v15 = [v14 content];
      v16 = [v15 userInfo];

      v17 = [v16 objectForKeyedSubscript:@"TUDialRequestURL"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
        v19 = PHDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Constructing a URL from the specified string (%@).", buf, 0xCu);
        }

        v20 = [NSURL URLWithString:v18];
        v21 = PHDefaultLog();
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Initiating outgoing call with the specified URL (%@).", buf, 0xCu);
          }

          v23 = [(MPVoicemailMessageNotificationViewController *)self extensionContext];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10000557C;
          v28[3] = &unk_100089830;
          v29 = v7;
          [v23 openURL:v20 completionHandler:v28];

          v22 = v29;
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10005FC44();
        }
      }

      else
      {
        v18 = PHDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10005FBBC();
        }
      }

LABEL_27:
      goto LABEL_28;
    }

    if ([v9 isEqualToString:@"MPVoicemailDeleteMessageBulletinBoardActionIdentifier"])
    {
      v16 = [(VMMessageViewController *)self voicemailMessage];
      v24 = PHDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v16 identifier];
        *buf = 134217984;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Trashing voicemail message matching the specified identifier (%lu).", buf, 0xCu);
      }

      v26 = [(VMMessageViewController *)self voicemailManager];
      v30 = v16;
      v27 = [NSArray arrayWithObjects:&v30 count:1];
      [v26 trashVoicemails:v27];

      (*(v7 + 2))(v7, 1);
      goto LABEL_27;
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received notification response contains an empty or nil action identifier (%@).", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 1);
  }

LABEL_28:
}

- (CGRect)mediaPlayPauseButtonFrame
{
  v3 = [(VMMessageViewController *)self playerControlsViewController];
  v4 = [v3 playerControlsView];
  v5 = [v4 playPauseButton];

  if (v5)
  {
    v6 = [(MPVoicemailMessageNotificationViewController *)self view];
    v7 = [v5 imageView];
    [v7 frame];
    [v6 convertRect:v5 fromView:?];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10005FCB8();
    }

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)mediaPlay
{
  v2 = [(VMMessageViewController *)self playerControlsViewController];
  [v2 play];
}

- (void)mediaPause
{
  v2 = [(VMMessageViewController *)self playerControlsViewController];
  [v2 pause];
}

- (id)listenForVoicemailChangesWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1000371F8(sub_1000374E8, v5, v14);

  v7 = v15;
  if (v15)
  {
    v8 = sub_1000184C8(v14, v15);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_100060E0C();
    (*(v9 + 8))(v11, v7);
    sub_100018230(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
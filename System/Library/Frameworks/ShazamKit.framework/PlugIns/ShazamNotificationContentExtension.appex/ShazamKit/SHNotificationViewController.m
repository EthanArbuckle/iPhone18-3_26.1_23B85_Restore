@interface SHNotificationViewController
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)sendAnalyticsEvent:(id)a3 forBundleIdentifier:(id)a4 actionName:(id)a5;
- (void)setupView;
- (void)viewDidLoad;
@end

@implementation SHNotificationViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SHNotificationViewController;
  [(SHNotificationViewController *)&v3 viewDidLoad];
  [(SHNotificationViewController *)self setupView];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [SHLocalization localizedStringForKey:@"SHAZAM_MODULE_NOTIFICATION_ACTION_TITLE"];
  v6 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ShazamNotifications", @"apple-music-action"];
  v7 = [UNNotificationActionIcon iconWithSystemImageName:@"music.square.fill"];
  v8 = [UNNotificationAction actionWithIdentifier:v6 title:v5 options:0 icon:v7];
  v46 = v8;
  v9 = [NSArray arrayWithObjects:&v46 count:1];
  v10 = [(SHNotificationViewController *)self extensionContext];
  [v10 setNotificationActions:v9];

  v11 = [v4 request];
  v12 = [v11 content];
  v13 = [v12 attachments];
  v14 = [v13 firstObject];

  v15 = [v14 URL];

  if (v15)
  {
    v40 = v8;
    v41 = v7;
    v42 = v6;
    v43 = v5;
    v16 = [v14 URL];
    [v16 startAccessingSecurityScopedResource];

    v17 = [v14 URL];
    v18 = [NSData dataWithContentsOfURL:v17];

    v19 = [UIImage imageWithData:v18];
    v20 = [v14 URL];
    [v20 stopAccessingSecurityScopedResource];

    v21 = [(SHNotificationViewController *)self attachmentImageView];
    [v21 setImage:v19];

    v22 = [v4 request];
    v23 = [v22 content];
    v24 = [v23 userInfo];
    v25 = [SHMatchResultUserNotificationPayload payloadFromNotificationContentUserInfo:v24];

    v26 = [v25 mediaItem];
    v27 = [v26 title];

    if (v27)
    {
      v28 = [v25 mediaItem];
      v29 = [v28 title];
      v30 = [(SHNotificationViewController *)self titleLabel];
      [v30 setText:v29];
    }

    else
    {
      v28 = [(SHNotificationViewController *)self titleLabel];
      [v28 setHidden:1];
    }

    v33 = [v25 mediaItem];
    v34 = [v33 subtitle];

    v7 = v41;
    if (v34)
    {
      v35 = [v25 mediaItem];
      v36 = [v35 subtitle];
      v37 = [(SHNotificationViewController *)self subtitleLabel];
      [v37 setText:v36];
    }

    else
    {
      v35 = [(SHNotificationViewController *)self subtitleLabel];
      [v35 setHidden:1];
    }

    v6 = v42;

    v38 = SHAnalyticsEventMusicRecognitionResultExpanded;
    v39 = [v25 bundleIdentifier];
    [(SHNotificationViewController *)self sendAnalyticsEvent:v38 forBundleIdentifier:v39 actionName:0];

    v5 = v43;
    v8 = v40;
  }

  else
  {
    v18 = shcore_log_object();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v31 = [v4 request];
      v32 = [v31 identifier];
      *buf = 138412290;
      v45 = v32;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing attachment from notification with identifier %@", buf, 0xCu);
    }
  }
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ShazamNotifications", @"apple-music-action"];
  v9 = [v6 actionIdentifier];
  v10 = [v9 isEqualToString:v8];

  if (v10)
  {
    v11 = [v6 notification];
    v12 = [v11 request];
    v13 = [v12 content];
    v14 = [v13 userInfo];
    v15 = [SHMatchResultUserNotificationPayload payloadFromNotificationContentUserInfo:v14];

    v16 = [v15 mediaItem];
    v17 = [v16 appleMusicURL];

    if (v17)
    {
      v18 = [(SHNotificationViewController *)self extensionContext];
      v19 = [v15 mediaItem];
      v20 = [v19 appleMusicURL];
      [v18 openURL:v20 completionHandler:0];
    }

    v21 = SHAnalyticsEventMusicRecognitionResultAction;
    v22 = [v15 bundleIdentifier];
    [(SHNotificationViewController *)self sendAnalyticsEvent:v21 forBundleIdentifier:v22 actionName:@"apple-music-action"];

    v7[2](v7, 1);
  }

  else
  {
    v23 = shcore_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v6 actionIdentifier];
      *buf = 138412290;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Notification action %@ is not supported", buf, 0xCu);
    }

    v7[2](v7, 1);
  }
}

- (void)sendAnalyticsEvent:(id)a3 forBundleIdentifier:(id)a4 actionName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setValue:v8 forKey:SHAnalyticsPayloadSourceKey];

  [v11 setValue:v7 forKey:SHAnalyticsPayloadActionKey];
  v10 = [v11 copy];
  [SHAnalytics sendEvent:v9 withPayload:v10];
}

- (void)setupView
{
  v3 = +[UIColor blackColor];
  v4 = [(SHNotificationViewController *)self attachmentImageView];
  [v4 setShadowColor:v3];

  v5 = [(SHNotificationViewController *)self attachmentImageView];
  [v5 setShadowOpacity:0.100000001];

  v6 = [(SHNotificationViewController *)self attachmentImageView];
  [v6 setShadowRadius:8.0];

  v7 = [(SHNotificationViewController *)self attachmentImageView];
  [v7 setShadowOffset:{0.0, 10.0}];

  v8 = [(SHNotificationViewController *)self attachmentImageView];
  [v8 setCornerRadius:8.0];

  v9 = [(SHNotificationViewController *)self attachmentImageView];
  [v9 layoutIfNeeded];

  v14 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleBody];
  v10 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  [v10 pointSize];
  v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v12 = [v14 scaledFontForFont:v11];
  v13 = [(SHNotificationViewController *)self titleLabel];
  [v13 setFont:v12];
}

@end
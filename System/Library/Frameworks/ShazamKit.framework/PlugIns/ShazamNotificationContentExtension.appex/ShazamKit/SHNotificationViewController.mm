@interface SHNotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)sendAnalyticsEvent:(id)event forBundleIdentifier:(id)identifier actionName:(id)name;
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

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [SHLocalization localizedStringForKey:@"SHAZAM_MODULE_NOTIFICATION_ACTION_TITLE"];
  v6 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ShazamNotifications", @"apple-music-action"];
  v7 = [UNNotificationActionIcon iconWithSystemImageName:@"music.square.fill"];
  v8 = [UNNotificationAction actionWithIdentifier:v6 title:v5 options:0 icon:v7];
  v46 = v8;
  v9 = [NSArray arrayWithObjects:&v46 count:1];
  extensionContext = [(SHNotificationViewController *)self extensionContext];
  [extensionContext setNotificationActions:v9];

  request = [notificationCopy request];
  content = [request content];
  attachments = [content attachments];
  firstObject = [attachments firstObject];

  v15 = [firstObject URL];

  if (v15)
  {
    v40 = v8;
    v41 = v7;
    v42 = v6;
    v43 = v5;
    v16 = [firstObject URL];
    [v16 startAccessingSecurityScopedResource];

    v17 = [firstObject URL];
    v18 = [NSData dataWithContentsOfURL:v17];

    v19 = [UIImage imageWithData:v18];
    v20 = [firstObject URL];
    [v20 stopAccessingSecurityScopedResource];

    attachmentImageView = [(SHNotificationViewController *)self attachmentImageView];
    [attachmentImageView setImage:v19];

    request2 = [notificationCopy request];
    content2 = [request2 content];
    userInfo = [content2 userInfo];
    v25 = [SHMatchResultUserNotificationPayload payloadFromNotificationContentUserInfo:userInfo];

    mediaItem = [v25 mediaItem];
    title = [mediaItem title];

    if (title)
    {
      mediaItem2 = [v25 mediaItem];
      title2 = [mediaItem2 title];
      titleLabel = [(SHNotificationViewController *)self titleLabel];
      [titleLabel setText:title2];
    }

    else
    {
      mediaItem2 = [(SHNotificationViewController *)self titleLabel];
      [mediaItem2 setHidden:1];
    }

    mediaItem3 = [v25 mediaItem];
    subtitle = [mediaItem3 subtitle];

    v7 = v41;
    if (subtitle)
    {
      mediaItem4 = [v25 mediaItem];
      subtitle2 = [mediaItem4 subtitle];
      subtitleLabel = [(SHNotificationViewController *)self subtitleLabel];
      [subtitleLabel setText:subtitle2];
    }

    else
    {
      mediaItem4 = [(SHNotificationViewController *)self subtitleLabel];
      [mediaItem4 setHidden:1];
    }

    v6 = v42;

    v38 = SHAnalyticsEventMusicRecognitionResultExpanded;
    bundleIdentifier = [v25 bundleIdentifier];
    [(SHNotificationViewController *)self sendAnalyticsEvent:v38 forBundleIdentifier:bundleIdentifier actionName:0];

    v5 = v43;
    v8 = v40;
  }

  else
  {
    v18 = shcore_log_object();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      request3 = [notificationCopy request];
      identifier = [request3 identifier];
      *buf = 138412290;
      v45 = identifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing attachment from notification with identifier %@", buf, 0xCu);
    }
  }
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ShazamNotifications", @"apple-music-action"];
  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier isEqualToString:v8];

  if (v10)
  {
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    userInfo = [content userInfo];
    v15 = [SHMatchResultUserNotificationPayload payloadFromNotificationContentUserInfo:userInfo];

    mediaItem = [v15 mediaItem];
    appleMusicURL = [mediaItem appleMusicURL];

    if (appleMusicURL)
    {
      extensionContext = [(SHNotificationViewController *)self extensionContext];
      mediaItem2 = [v15 mediaItem];
      appleMusicURL2 = [mediaItem2 appleMusicURL];
      [extensionContext openURL:appleMusicURL2 completionHandler:0];
    }

    v21 = SHAnalyticsEventMusicRecognitionResultAction;
    bundleIdentifier = [v15 bundleIdentifier];
    [(SHNotificationViewController *)self sendAnalyticsEvent:v21 forBundleIdentifier:bundleIdentifier actionName:@"apple-music-action"];

    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v23 = shcore_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      actionIdentifier2 = [responseCopy actionIdentifier];
      *buf = 138412290;
      v26 = actionIdentifier2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Notification action %@ is not supported", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)sendAnalyticsEvent:(id)event forBundleIdentifier:(id)identifier actionName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  eventCopy = event;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setValue:identifierCopy forKey:SHAnalyticsPayloadSourceKey];

  [v11 setValue:nameCopy forKey:SHAnalyticsPayloadActionKey];
  v10 = [v11 copy];
  [SHAnalytics sendEvent:eventCopy withPayload:v10];
}

- (void)setupView
{
  v3 = +[UIColor blackColor];
  attachmentImageView = [(SHNotificationViewController *)self attachmentImageView];
  [attachmentImageView setShadowColor:v3];

  attachmentImageView2 = [(SHNotificationViewController *)self attachmentImageView];
  [attachmentImageView2 setShadowOpacity:0.100000001];

  attachmentImageView3 = [(SHNotificationViewController *)self attachmentImageView];
  [attachmentImageView3 setShadowRadius:8.0];

  attachmentImageView4 = [(SHNotificationViewController *)self attachmentImageView];
  [attachmentImageView4 setShadowOffset:{0.0, 10.0}];

  attachmentImageView5 = [(SHNotificationViewController *)self attachmentImageView];
  [attachmentImageView5 setCornerRadius:8.0];

  attachmentImageView6 = [(SHNotificationViewController *)self attachmentImageView];
  [attachmentImageView6 layoutIfNeeded];

  v14 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleBody];
  v10 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  [v10 pointSize];
  v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v12 = [v14 scaledFontForFont:v11];
  titleLabel = [(SHNotificationViewController *)self titleLabel];
  [titleLabel setFont:v12];
}

@end
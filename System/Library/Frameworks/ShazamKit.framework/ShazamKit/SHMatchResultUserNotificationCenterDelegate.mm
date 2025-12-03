@interface SHMatchResultUserNotificationCenterDelegate
- (void)handleAppleMusicActionWithPayload:(id)payload completionHandler:(id)handler;
- (void)handleDefaultActionWithPayload:(id)payload completionHandler:(id)handler;
- (void)sendAnalyticsEvent:(id)event forBundleIdentifier:(id)identifier actionName:(id)name;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation SHMatchResultUserNotificationCenterDelegate

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    notification = [responseCopy notification];
    request = [notification request];
    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    content = [request2 content];
    *buf = 138412802;
    v30 = responseCopy;
    v31 = 2112;
    v32 = request;
    v33 = 2112;
    v34 = content;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received notification response %@ for request %@ with content %@", buf, 0x20u);
  }

  notification3 = [responseCopy notification];
  request3 = [notification3 request];
  content2 = [request3 content];
  userInfo = [content2 userInfo];
  v19 = [SHMatchResultUserNotificationPayload payloadFromNotificationContentUserInfo:userInfo];

  v20 = [NSString stringWithFormat:@"%@.%@", @"com.apple.ShazamNotifications", @"apple-music-action"];
  actionIdentifier = [responseCopy actionIdentifier];
  LODWORD(userInfo) = [actionIdentifier isEqualToString:v20];

  if (userInfo)
  {
    v22 = SHAnalyticsEventMusicRecognitionResultAction;
    bundleIdentifier = [v19 bundleIdentifier];
    [(SHMatchResultUserNotificationCenterDelegate *)self sendAnalyticsEvent:v22 forBundleIdentifier:bundleIdentifier actionName:@"apple-music-action"];

    [(SHMatchResultUserNotificationCenterDelegate *)self handleAppleMusicActionWithPayload:v19 completionHandler:handlerCopy];
  }

  else
  {
    actionIdentifier2 = [responseCopy actionIdentifier];
    v25 = [actionIdentifier2 isEqualToString:UNNotificationDefaultActionIdentifier];

    if (v25)
    {
      v26 = SHAnalyticsEventMusicRecognitionResultAction;
      bundleIdentifier2 = [v19 bundleIdentifier];
      [(SHMatchResultUserNotificationCenterDelegate *)self sendAnalyticsEvent:v26 forBundleIdentifier:bundleIdentifier2 actionName:SHAnalyticsActionNotificationTap];

      [(SHMatchResultUserNotificationCenterDelegate *)self handleDefaultActionWithPayload:v19 completionHandler:handlerCopy];
    }

    else
    {
      v28 = sh_log_object();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to handle notification action", buf, 2u);
      }

      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)handleDefaultActionWithPayload:(id)payload completionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  mediaItem = [payloadCopy mediaItem];

  if (mediaItem)
  {
    v9 = [SHMediaItemPresenter alloc];
    bundleIdentifier = [payloadCopy bundleIdentifier];
    v11 = [(SHMediaItemPresenter *)v9 initBundleIdentifier:bundleIdentifier];
    [(SHMatchResultUserNotificationCenterDelegate *)self setMediaItemPresenter:v11];

    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      mediaItem2 = [payloadCopy mediaItem];
      webURL = [mediaItem2 webURL];
      bundleIdentifier2 = [payloadCopy bundleIdentifier];
      *buf = 138412546;
      v22 = webURL;
      v23 = 2112;
      v24 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Presenting media item with web url %@ from bundle identifier %@", buf, 0x16u);
    }

    mediaItemPresenter = [(SHMatchResultUserNotificationCenterDelegate *)self mediaItemPresenter];
    mediaItem3 = [payloadCopy mediaItem];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000181A8;
    v19[3] = &unk_10007D148;
    v20 = handlerCopy;
    [mediaItemPresenter presentMediaItem:mediaItem3 completionHandler:v19];
  }

  else
  {
    v18 = sh_log_object();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = payloadCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No media item provided for payload %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy);
  }
}

- (void)handleAppleMusicActionWithPayload:(id)payload completionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  mediaItem = [payloadCopy mediaItem];
  appleMusicURL = [mediaItem appleMusicURL];

  if (appleMusicURL)
  {
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    mediaItem2 = [payloadCopy mediaItem];
    appleMusicURL2 = [mediaItem2 appleMusicURL];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100018420;
    v13[3] = &unk_10007D400;
    v14 = handlerCopy;
    [v9 openURL:appleMusicURL2 configuration:0 completionHandler:v13];
  }

  else
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = payloadCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No apple music url provided for payload %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy);
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

@end
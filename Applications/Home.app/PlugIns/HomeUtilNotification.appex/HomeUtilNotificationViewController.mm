@interface HomeUtilNotificationViewController
- (id)_fontForTimeCodeLabel;
- (void)_presentNotificationExtensionForNotification:(id)notification;
- (void)didReceiveNotification:(id)notification;
- (void)didSendAnnouncementReplyforNotificationPayload:(id)payload;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HomeUtilNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HomeUtilNotificationViewController;
  [(HomeUtilNotificationViewController *)&v2 viewDidLoad];
}

- (void)updateViewConstraints
{
  staticConstraintSet = [(HomeUtilNotificationViewController *)self staticConstraintSet];
  [staticConstraintSet activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HomeUtilNotificationViewController;
  [(HomeUtilNotificationViewController *)&v4 updateViewConstraints];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];
  request3 = [userInfo objectForKeyedSubscript:ANUserInfoOldestUnreadAnnouncementKey];

  request2 = [notificationCopy request];
  content2 = [request2 content];
  userInfo2 = [content2 userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:ANUserInfoFailedDeliveryAnnouncementKey];

  if (!(request3 | v12))
  {
    request3 = [notificationCopy request];
    content3 = [request3 content];
    userInfo3 = [content3 userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:ANUserInfoOldestAnnouncementKey];

    goto LABEL_5;
  }

  if (v12)
  {
    v13 = v12;
LABEL_5:

    request3 = v13;
  }

  v16 = ANAnnouncementIDKey;
  v17 = [request3 objectForKeyedSubscript:ANAnnouncementIDKey];
  announcementsBrowserViewController = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
  notificationPayload = [announcementsBrowserViewController notificationPayload];
  v20 = [notificationPayload objectForKeyedSubscript:v16];

  if (v20 || (-[HomeUtilNotificationViewController announcementsBrowserViewController](self, "announcementsBrowserViewController"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isTearingDown], v21, v22))
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received Duplicate notification for an active notification. Returning. Existing ID = [%@], New+Incoming = [%@]", &v28, 0x16u);
    }
  }

  else
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      announcementsBrowserViewController2 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
      announcementsBrowserViewController3 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
      notificationPayload2 = [announcementsBrowserViewController3 notificationPayload];
      v28 = 138412546;
      v29 = announcementsBrowserViewController2;
      v30 = 2112;
      v31 = notificationPayload2;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "self.announcementsBrowserViewController = [%@] AND notificationPayload %@", &v28, 0x16u);
    }

    [(HomeUtilNotificationViewController *)self _presentNotificationExtensionForNotification:notificationCopy];
  }
}

- (void)_presentNotificationExtensionForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [notificationCopy request];
    content = [request content];
    userInfo = [content userInfo];
    *buf = 138412290;
    v46 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received announcment userinfo = [%@]", buf, 0xCu);
  }

  v9 = objc_opt_new();
  request2 = [notificationCopy request];
  content2 = [request2 content];
  userInfo2 = [content2 userInfo];
  request5 = [userInfo2 objectForKeyedSubscript:ANUserInfoOldestUnreadAnnouncementKey];

  request3 = [notificationCopy request];
  content3 = [request3 content];
  userInfo3 = [content3 userInfo];
  v17 = [userInfo3 objectForKeyedSubscript:ANUserInfoFailedDeliveryAnnouncementKey];

  request4 = [notificationCopy request];
  content4 = [request4 content];
  userInfo4 = [content4 userInfo];
  v21 = ANUserInfoNotificationTypeKey;
  v22 = [userInfo4 objectForKeyedSubscript:ANUserInfoNotificationTypeKey];

  if (!(request5 | v17))
  {
    request5 = [notificationCopy request];
    content5 = [request5 content];
    userInfo5 = [content5 userInfo];
    v23 = [userInfo5 objectForKeyedSubscript:ANUserInfoOldestAnnouncementKey];

    goto LABEL_7;
  }

  if (v17)
  {
    v23 = v17;
LABEL_7:

    goto LABEL_8;
  }

  v23 = request5;
LABEL_8:
  [v9 setObject:v22 forKey:v21];
  [v9 addEntriesFromDictionary:v23];
  v26 = [HUAnnouncementsBrowserViewController alloc];
  v27 = [v9 copy];
  v28 = [v26 initWithNotificationPayload:v27 delegate:self];
  [(HomeUtilNotificationViewController *)self setAnnouncementsBrowserViewController:v28];

  announcementsBrowserViewController = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
  view = [announcementsBrowserViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(HomeUtilNotificationViewController *)self addChildViewController:self->_announcementsBrowserViewController];
  view2 = [(HomeUtilNotificationViewController *)self view];
  view3 = [(HUAnnouncementsBrowserViewController *)self->_announcementsBrowserViewController view];
  [view2 addSubview:view3];

  objc_initWeak(&location, self);
  v33 = [NAUILayoutConstraintSet alloc];
  view4 = [(HomeUtilNotificationViewController *)self view];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_10000186C;
  v42 = &unk_100004198;
  objc_copyWeak(&v43, &location);
  v35 = [v33 initWithOwningView:view4 constraintBuilder:&v39];
  [(HomeUtilNotificationViewController *)self setStaticConstraintSet:v35, v39, v40, v41, v42];

  v36 = HFLogForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v23;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Launching Notification Long Look with oldest Unread Announcement Info = [%@]", buf, 0xCu);
  }

  staticConstraintSet = [(HomeUtilNotificationViewController *)self staticConstraintSet];
  [staticConstraintSet activateIfNeeded];

  announcementsBrowserViewController2 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
  [announcementsBrowserViewController2 didMoveToParentViewController:self];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (id)_fontForTimeCodeLabel
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 options:0];
  v11[0] = UIFontFeatureTypeIdentifierKey;
  v11[1] = UIFontFeatureSelectorIdentifierKey;
  v12[0] = &off_1000041E8;
  v12[1] = &off_100004200;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v3;
  v4 = [NSArray arrayWithObjects:&v13 count:1];

  v9 = UIFontDescriptorFeatureSettingsAttribute;
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [v2 fontDescriptorByAddingAttributes:v5];

  v7 = [UIFont fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (void)didSendAnnouncementReplyforNotificationPayload:(id)payload
{
  extensionContext = [(HomeUtilNotificationViewController *)self extensionContext];
  [extensionContext dismissNotificationContentExtension];
}

@end
@interface HomeUtilNotificationViewController
- (id)_fontForTimeCodeLabel;
- (void)_presentNotificationExtensionForNotification:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)didSendAnnouncementReplyforNotificationPayload:(id)a3;
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
  v3 = [(HomeUtilNotificationViewController *)self staticConstraintSet];
  [v3 activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HomeUtilNotificationViewController;
  [(HomeUtilNotificationViewController *)&v4 updateViewConstraints];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:ANUserInfoOldestUnreadAnnouncementKey];

  v9 = [v4 request];
  v10 = [v9 content];
  v11 = [v10 userInfo];
  v12 = [v11 objectForKeyedSubscript:ANUserInfoFailedDeliveryAnnouncementKey];

  if (!(v8 | v12))
  {
    v8 = [v4 request];
    v14 = [v8 content];
    v15 = [v14 userInfo];
    v13 = [v15 objectForKeyedSubscript:ANUserInfoOldestAnnouncementKey];

    goto LABEL_5;
  }

  if (v12)
  {
    v13 = v12;
LABEL_5:

    v8 = v13;
  }

  v16 = ANAnnouncementIDKey;
  v17 = [v8 objectForKeyedSubscript:ANAnnouncementIDKey];
  v18 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
  v19 = [v18 notificationPayload];
  v20 = [v19 objectForKeyedSubscript:v16];

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
      v25 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
      v26 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
      v27 = [v26 notificationPayload];
      v28 = 138412546;
      v29 = v25;
      v30 = 2112;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "self.announcementsBrowserViewController = [%@] AND notificationPayload %@", &v28, 0x16u);
    }

    [(HomeUtilNotificationViewController *)self _presentNotificationExtensionForNotification:v4];
  }
}

- (void)_presentNotificationExtensionForNotification:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 request];
    v7 = [v6 content];
    v8 = [v7 userInfo];
    *buf = 138412290;
    v46 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received announcment userinfo = [%@]", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v10 = [v4 request];
  v11 = [v10 content];
  v12 = [v11 userInfo];
  v13 = [v12 objectForKeyedSubscript:ANUserInfoOldestUnreadAnnouncementKey];

  v14 = [v4 request];
  v15 = [v14 content];
  v16 = [v15 userInfo];
  v17 = [v16 objectForKeyedSubscript:ANUserInfoFailedDeliveryAnnouncementKey];

  v18 = [v4 request];
  v19 = [v18 content];
  v20 = [v19 userInfo];
  v21 = ANUserInfoNotificationTypeKey;
  v22 = [v20 objectForKeyedSubscript:ANUserInfoNotificationTypeKey];

  if (!(v13 | v17))
  {
    v13 = [v4 request];
    v24 = [v13 content];
    v25 = [v24 userInfo];
    v23 = [v25 objectForKeyedSubscript:ANUserInfoOldestAnnouncementKey];

    goto LABEL_7;
  }

  if (v17)
  {
    v23 = v17;
LABEL_7:

    goto LABEL_8;
  }

  v23 = v13;
LABEL_8:
  [v9 setObject:v22 forKey:v21];
  [v9 addEntriesFromDictionary:v23];
  v26 = [HUAnnouncementsBrowserViewController alloc];
  v27 = [v9 copy];
  v28 = [v26 initWithNotificationPayload:v27 delegate:self];
  [(HomeUtilNotificationViewController *)self setAnnouncementsBrowserViewController:v28];

  v29 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
  v30 = [v29 view];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(HomeUtilNotificationViewController *)self addChildViewController:self->_announcementsBrowserViewController];
  v31 = [(HomeUtilNotificationViewController *)self view];
  v32 = [(HUAnnouncementsBrowserViewController *)self->_announcementsBrowserViewController view];
  [v31 addSubview:v32];

  objc_initWeak(&location, self);
  v33 = [NAUILayoutConstraintSet alloc];
  v34 = [(HomeUtilNotificationViewController *)self view];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_10000186C;
  v42 = &unk_100004198;
  objc_copyWeak(&v43, &location);
  v35 = [v33 initWithOwningView:v34 constraintBuilder:&v39];
  [(HomeUtilNotificationViewController *)self setStaticConstraintSet:v35, v39, v40, v41, v42];

  v36 = HFLogForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v23;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Launching Notification Long Look with oldest Unread Announcement Info = [%@]", buf, 0xCu);
  }

  v37 = [(HomeUtilNotificationViewController *)self staticConstraintSet];
  [v37 activateIfNeeded];

  v38 = [(HomeUtilNotificationViewController *)self announcementsBrowserViewController];
  [v38 didMoveToParentViewController:self];

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

- (void)didSendAnnouncementReplyforNotificationPayload:(id)a3
{
  v3 = [(HomeUtilNotificationViewController *)self extensionContext];
  [v3 dismissNotificationContentExtension];
}

@end
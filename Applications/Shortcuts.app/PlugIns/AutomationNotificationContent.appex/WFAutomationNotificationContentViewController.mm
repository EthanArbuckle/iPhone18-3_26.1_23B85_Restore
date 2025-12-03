@interface WFAutomationNotificationContentViewController
- (CGSize)estimatedSizeForNotificationUserInfo:(id)info;
- (void)didReceiveNotification:(id)notification;
- (void)loadView;
@end

@implementation WFAutomationNotificationContentViewController

- (CGSize)estimatedSizeForNotificationUserInfo:(id)info
{
  infoCopy = info;
  view = [(WFAutomationNotificationContentViewController *)self view];
  [view bounds];
  v7 = v6;

  v8 = WFTriggerIDsToDisableFromNotificationUserInfo();

  v9 = (110 * [v8 count]);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v8 = [categoryIdentifier isEqualToString:WFNotificationTriggerPromptCategory];

  if (v8)
  {
    v9 = objc_alloc_init(WFAutomationNotificationContentView);
    view = [(WFAutomationNotificationContentViewController *)self view];
    [view bounds];
    [(UIView *)v9 setFrame:?];

    [(UIView *)v9 setAutoresizingMask:18];
    view2 = [(WFAutomationNotificationContentViewController *)self view];
    [view2 addSubview:v9];

    [(UIView *)v9 updateUIFromNotification:notificationCopy];
LABEL_5:
    contentView = self->_contentView;
    self->_contentView = v9;

    goto LABEL_6;
  }

  request2 = [notificationCopy request];
  content2 = [request2 content];
  categoryIdentifier2 = [content2 categoryIdentifier];
  v15 = [categoryIdentifier2 isEqualToString:WFNotificationTriggerNotifyBackgroundCategory];

  request3 = [notificationCopy request];
  content3 = [request3 content];
  v18 = content3;
  if (v15)
  {
    userInfo = [content3 userInfo];
    [(WFAutomationNotificationContentViewController *)self estimatedSizeForNotificationUserInfo:userInfo];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];

    v9 = objc_alloc_init(WFAutomationNotificationListContentView);
    view3 = [(WFAutomationNotificationContentViewController *)self view];
    [view3 bounds];
    [(UIView *)v9 setFrame:?];

    [(UIView *)v9 setAutoresizingMask:18];
    view4 = [(WFAutomationNotificationContentViewController *)self view];
    [view4 addSubview:v9];

    request4 = [notificationCopy request];
    content4 = [request4 content];
    userInfo2 = [content4 userInfo];
    [(UIView *)v9 updateUIFromNotificationUserInfo:userInfo2];

    [(UIView *)v9 preferredSize];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];
    goto LABEL_5;
  }

  categoryIdentifier3 = [content3 categoryIdentifier];
  v27 = [categoryIdentifier3 isEqualToString:WFNotificationAutomationsEnabledCategory];

  if (v27)
  {
    [WFInitialization initializeProcessWithDatabase:1];
    v28 = +[WFDatabase defaultDatabase];
    v29 = [[WFTriggerManager alloc] initWithDatabase:v28];
    v30 = objc_opt_new();
    allConfiguredTriggers = [v29 allConfiguredTriggers];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100001374;
    v43[3] = &unk_100004148;
    v44 = v30;
    v32 = v30;
    [allConfiguredTriggers enumerateObjectsUsingBlock:v43];

    v33 = os_transaction_create();
    v34 = WFTriggerIDsToDisableNotificationUserInfoFromTriggers();
    [(WFAutomationNotificationContentViewController *)self estimatedSizeForNotificationUserInfo:v34];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];
    v35 = objc_alloc_init(WFAutomationNotificationListContentView);
    view5 = [(WFAutomationNotificationContentViewController *)self view];
    [view5 bounds];
    [(UIView *)v35 setFrame:?];

    [(UIView *)v35 setAutoresizingMask:18];
    view6 = [(WFAutomationNotificationContentViewController *)self view];
    [view6 addSubview:v35];

    [(UIView *)v35 updateUIFromNotificationUserInfo:v34];
    [(UIView *)v35 preferredSize];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];
    v38 = self->_contentView;
    self->_contentView = v35;
  }

  else
  {
    v39 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      request5 = [notificationCopy request];
      content5 = [request5 content];
      categoryIdentifier4 = [content5 categoryIdentifier];
      *buf = 136315394;
      v46 = "[WFAutomationNotificationContentViewController didReceiveNotification:]";
      v47 = 2112;
      v48 = categoryIdentifier4;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s Notification content did not match any known category identifier: %@", buf, 0x16u);
    }
  }

LABEL_6:
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  [(WFAutomationNotificationContentViewController *)self setView:v3];
}

@end
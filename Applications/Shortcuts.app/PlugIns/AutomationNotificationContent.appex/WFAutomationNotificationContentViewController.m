@interface WFAutomationNotificationContentViewController
- (CGSize)estimatedSizeForNotificationUserInfo:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)loadView;
@end

@implementation WFAutomationNotificationContentViewController

- (CGSize)estimatedSizeForNotificationUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(WFAutomationNotificationContentViewController *)self view];
  [v5 bounds];
  v7 = v6;

  v8 = WFTriggerIDsToDisableFromNotificationUserInfo();

  v9 = (110 * [v8 count]);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 categoryIdentifier];
  v8 = [v7 isEqualToString:WFNotificationTriggerPromptCategory];

  if (v8)
  {
    v9 = objc_alloc_init(WFAutomationNotificationContentView);
    v10 = [(WFAutomationNotificationContentViewController *)self view];
    [v10 bounds];
    [(UIView *)v9 setFrame:?];

    [(UIView *)v9 setAutoresizingMask:18];
    v11 = [(WFAutomationNotificationContentViewController *)self view];
    [v11 addSubview:v9];

    [(UIView *)v9 updateUIFromNotification:v4];
LABEL_5:
    contentView = self->_contentView;
    self->_contentView = v9;

    goto LABEL_6;
  }

  v12 = [v4 request];
  v13 = [v12 content];
  v14 = [v13 categoryIdentifier];
  v15 = [v14 isEqualToString:WFNotificationTriggerNotifyBackgroundCategory];

  v16 = [v4 request];
  v17 = [v16 content];
  v18 = v17;
  if (v15)
  {
    v19 = [v17 userInfo];
    [(WFAutomationNotificationContentViewController *)self estimatedSizeForNotificationUserInfo:v19];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];

    v9 = objc_alloc_init(WFAutomationNotificationListContentView);
    v20 = [(WFAutomationNotificationContentViewController *)self view];
    [v20 bounds];
    [(UIView *)v9 setFrame:?];

    [(UIView *)v9 setAutoresizingMask:18];
    v21 = [(WFAutomationNotificationContentViewController *)self view];
    [v21 addSubview:v9];

    v22 = [v4 request];
    v23 = [v22 content];
    v24 = [v23 userInfo];
    [(UIView *)v9 updateUIFromNotificationUserInfo:v24];

    [(UIView *)v9 preferredSize];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];
    goto LABEL_5;
  }

  v26 = [v17 categoryIdentifier];
  v27 = [v26 isEqualToString:WFNotificationAutomationsEnabledCategory];

  if (v27)
  {
    [WFInitialization initializeProcessWithDatabase:1];
    v28 = +[WFDatabase defaultDatabase];
    v29 = [[WFTriggerManager alloc] initWithDatabase:v28];
    v30 = objc_opt_new();
    v31 = [v29 allConfiguredTriggers];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100001374;
    v43[3] = &unk_100004148;
    v44 = v30;
    v32 = v30;
    [v31 enumerateObjectsUsingBlock:v43];

    v33 = os_transaction_create();
    v34 = WFTriggerIDsToDisableNotificationUserInfoFromTriggers();
    [(WFAutomationNotificationContentViewController *)self estimatedSizeForNotificationUserInfo:v34];
    [(WFAutomationNotificationContentViewController *)self setPreferredContentSize:?];
    v35 = objc_alloc_init(WFAutomationNotificationListContentView);
    v36 = [(WFAutomationNotificationContentViewController *)self view];
    [v36 bounds];
    [(UIView *)v35 setFrame:?];

    [(UIView *)v35 setAutoresizingMask:18];
    v37 = [(WFAutomationNotificationContentViewController *)self view];
    [v37 addSubview:v35];

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
      v40 = [v4 request];
      v41 = [v40 content];
      v42 = [v41 categoryIdentifier];
      *buf = 136315394;
      v46 = "[WFAutomationNotificationContentViewController didReceiveNotification:]";
      v47 = 2112;
      v48 = v42;
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
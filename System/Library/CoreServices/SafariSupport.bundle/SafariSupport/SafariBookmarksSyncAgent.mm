@interface SafariBookmarksSyncAgent
- (SafariBookmarksSyncAgent)init;
- (id)_pushTopics;
- (void)_setUpPushConnection;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)setUsesOpportunisticPushTopic:(BOOL)a3;
- (void)updatePushTopicSubscriptions;
@end

@implementation SafariBookmarksSyncAgent

- (SafariBookmarksSyncAgent)init
{
  v6.receiver = self;
  v6.super_class = SafariBookmarksSyncAgent;
  v2 = [(SafariSyncController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_usesOpportunisticPushTopic = 1;
    [(SafariBookmarksSyncAgent *)v2 _setUpPushConnection];
    v4 = v3;
  }

  return v3;
}

- (void)setUsesOpportunisticPushTopic:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100025430;
  v3[3] = &unk_100131D10;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)updatePushTopicSubscriptions
{
  v3 = [(SafariSyncController *)self isSyncEnabled];
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109120;
    v15[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating push topic subscriptions with sync enabled = %d", v15, 8u);
  }

  v5 = [(SafariBookmarksSyncAgent *)self _pushTopics];
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  usesOpportunisticPushTopic = self->_usesOpportunisticPushTopic;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (usesOpportunisticPushTopic)
  {
    if (v10)
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Using opportunistic push topic", v15, 2u);
    }

    pushConnection = self->_pushConnection;
    v12 = 0;
    v13 = v6;
    v14 = v7;
  }

  else
  {
    if (v10)
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Using normal push topic", v15, 2u);
    }

    pushConnection = self->_pushConnection;
    v12 = v7;
    v13 = v6;
    v14 = 0;
  }

  [(APSConnection *)pushConnection setEnabledTopics:v12 ignoredTopics:v13 opportunisticTopics:v14];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v7 = [v5 topic];
  v6 = [v5 userInfo];

  [(SafariSyncController *)self didReceivePushNotificationWithTopic:v7 userInfo:v6];
}

- (void)_setUpPushConnection
{
  if (!self->_pushConnection)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Set up push connection", v7, 2u);
    }

    v4 = [APSConnection alloc];
    v5 = [v4 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.SafariBookmarksSyncAgent.Push" queue:&_dispatch_main_q];
    pushConnection = self->_pushConnection;
    self->_pushConnection = v5;

    [(APSConnection *)self->_pushConnection setDelegate:self];
    [(SafariBookmarksSyncAgent *)self updatePushTopicSubscriptions];
  }
}

- (id)_pushTopics
{
  v2 = [@"com.apple.icloud-container." stringByAppendingString:WBSCloudBookmarkContainerIdentifier];
  v3 = [@"com.apple.icloud-container." stringByAppendingString:{WBSCloudTabManateeContainerIdentifier, v2}];
  v7[1] = v3;
  v4 = [@"com.apple.icloud-container." stringByAppendingString:WBSCloudSettingContainerIdentifier];
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

@end
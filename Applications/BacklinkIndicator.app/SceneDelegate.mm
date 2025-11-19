@interface SceneDelegate
- (void)_showBacklinkIndicatorForUserActivity:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a5;
  if ([BacklinkIndicator isBacklinkIndicatorRequestForScene:a3 willConnectToSession:a4 options:v8])
  {
    v9 = [v8 userActivities];
    v10 = [v9 anyObject];

    [(SceneDelegate *)self _showBacklinkIndicatorForUserActivity:v10];
    v11 = sub_100000DF0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "backlink indicator request handled.", v12, 2u);
    }
  }
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a4;
  if ([BacklinkIndicator isBacklinkIndicatorRequestForScene:a3 continueUserActivity:v6])
  {
    [(SceneDelegate *)self _showBacklinkIndicatorForUserActivity:v6];
    v7 = sub_100000DF0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "backlink indicator request handled.", v8, 2u);
    }
  }
}

- (void)_showBacklinkIndicatorForUserActivity:(id)a3
{
  v9 = a3;
  v4 = [(SceneDelegate *)self backlinkIndicator];

  if (!v4)
  {
    v5 = objc_alloc_init(BacklinkIndicator);
    [(SceneDelegate *)self setBacklinkIndicator:v5];
  }

  v6 = [v9 _syIsShowBacklinkIndicatorUserActivity];
  v7 = [(SceneDelegate *)self backlinkIndicator];
  v8 = v7;
  if (v6)
  {
    [v7 showWithUserActivity:v9];
  }

  else
  {
    [v7 hide];
  }
}

@end
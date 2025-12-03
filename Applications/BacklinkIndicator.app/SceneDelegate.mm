@interface SceneDelegate
- (void)_showBacklinkIndicatorForUserActivity:(id)activity;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  if ([BacklinkIndicator isBacklinkIndicatorRequestForScene:scene willConnectToSession:session options:optionsCopy])
  {
    userActivities = [optionsCopy userActivities];
    anyObject = [userActivities anyObject];

    [(SceneDelegate *)self _showBacklinkIndicatorForUserActivity:anyObject];
    v11 = sub_100000DF0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "backlink indicator request handled.", v12, 2u);
    }
  }
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  if ([BacklinkIndicator isBacklinkIndicatorRequestForScene:scene continueUserActivity:activityCopy])
  {
    [(SceneDelegate *)self _showBacklinkIndicatorForUserActivity:activityCopy];
    v7 = sub_100000DF0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "backlink indicator request handled.", v8, 2u);
    }
  }
}

- (void)_showBacklinkIndicatorForUserActivity:(id)activity
{
  activityCopy = activity;
  backlinkIndicator = [(SceneDelegate *)self backlinkIndicator];

  if (!backlinkIndicator)
  {
    v5 = objc_alloc_init(BacklinkIndicator);
    [(SceneDelegate *)self setBacklinkIndicator:v5];
  }

  _syIsShowBacklinkIndicatorUserActivity = [activityCopy _syIsShowBacklinkIndicatorUserActivity];
  backlinkIndicator2 = [(SceneDelegate *)self backlinkIndicator];
  v8 = backlinkIndicator2;
  if (_syIsShowBacklinkIndicatorUserActivity)
  {
    [backlinkIndicator2 showWithUserActivity:activityCopy];
  }

  else
  {
    [backlinkIndicator2 hide];
  }
}

@end
@interface SceneDelegate
- (void)_continueUserActivity:(id)activity;
- (void)openURLWrapper:(id)wrapper willOpenURL:(id)l;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  userActivities = [options userActivities];
  allObjects = [userActivities allObjects];
  firstObject = [allObjects firstObject];

  v8 = firstObject;
  if (firstObject)
  {
    [(SceneDelegate *)self _continueUserActivity:firstObject];
    v8 = firstObject;
  }
}

- (void)_continueUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqualToString:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    webpageURL = [activityCopy webpageURL];
    v7 = [NSURLComponents componentsWithURL:webpageURL resolvingAgainstBaseURL:1];
    if (v7)
    {
      v8 = [[MBOpenURLWrapper alloc] initWithURL:webpageURL];
      [(MBOpenURLWrapper *)v8 setDelegate:self];
      [(MBOpenURLWrapper *)v8 open];
    }

    else
    {
      [activityCopy invalidate];
    }
  }
}

- (void)openURLWrapper:(id)wrapper willOpenURL:(id)l
{
  v4 = kMBManagerPrebuddyDeepLinkURLKey;
  absoluteString = [l absoluteString];
  CFPreferencesSetValue(v4, absoluteString, @"com.apple.MBHelperApp", @"mobile", kCFPreferencesAnyHost);
}

@end
@interface SceneDelegate
- (void)_continueUserActivity:(id)a3;
- (void)openURLWrapper:(id)a3 willOpenURL:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = [a5 userActivities];
  v7 = [v6 allObjects];
  v9 = [v7 firstObject];

  v8 = v9;
  if (v9)
  {
    [(SceneDelegate *)self _continueUserActivity:v9];
    v8 = v9;
  }
}

- (void)_continueUserActivity:(id)a3
{
  v9 = a3;
  v4 = [v9 activityType];
  v5 = [v4 isEqualToString:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    v6 = [v9 webpageURL];
    v7 = [NSURLComponents componentsWithURL:v6 resolvingAgainstBaseURL:1];
    if (v7)
    {
      v8 = [[MBOpenURLWrapper alloc] initWithURL:v6];
      [(MBOpenURLWrapper *)v8 setDelegate:self];
      [(MBOpenURLWrapper *)v8 open];
    }

    else
    {
      [v9 invalidate];
    }
  }
}

- (void)openURLWrapper:(id)a3 willOpenURL:(id)a4
{
  v4 = kMBManagerPrebuddyDeepLinkURLKey;
  v5 = [a4 absoluteString];
  CFPreferencesSetValue(v4, v5, @"com.apple.MBHelperApp", @"mobile", kCFPreferencesAnyHost);
}

@end
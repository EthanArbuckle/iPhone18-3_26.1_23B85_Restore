@interface GAXUIActivityViewControllerOverride
- (void)_performActivity:(id)activity;
@end

@implementation GAXUIActivityViewControllerOverride

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  v5 = +[GAXClient sharedInstance];
  serverMode = [v5 serverMode];

  if (serverMode != 2 || ([activityCopy activityType], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasSuffix:", @"addToHomeScreen"), v7, (v8 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = GAXUIActivityViewControllerOverride;
    [(GAXUIActivityViewControllerOverride *)&v9 _performActivity:activityCopy];
  }
}

@end
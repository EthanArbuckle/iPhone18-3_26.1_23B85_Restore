@interface GAXUIActivityViewControllerOverride
- (void)_performActivity:(id)a3;
@end

@implementation GAXUIActivityViewControllerOverride

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = +[GAXClient sharedInstance];
  v6 = [v5 serverMode];

  if (v6 != 2 || ([v4 activityType], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasSuffix:", @"addToHomeScreen"), v7, (v8 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = GAXUIActivityViewControllerOverride;
    [(GAXUIActivityViewControllerOverride *)&v9 _performActivity:v4];
  }
}

@end
@interface CarUINavigationController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)preferredFocusEnvironments;
- (void)setNeedsFocusUpdate;
@end

@implementation CarUINavigationController

- (id)preferredFocusEnvironments
{
  v7.receiver = self;
  v7.super_class = CarUINavigationController;
  v3 = [(CarUINavigationController *)&v7 preferredFocusEnvironments];
  if ([(CarUINavigationController *)self isNavigationBarHidden])
  {
    v4 = [NSPredicate predicateWithBlock:&stru_10164D258];
    v5 = [v3 filteredArrayUsingPredicate:v4];

    v3 = v5;
  }

  return v3;
}

- (void)setNeedsFocusUpdate
{
  v4.receiver = self;
  v4.super_class = CarUINavigationController;
  [(CarUINavigationController *)&v4 setNeedsFocusUpdate];
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 chromeViewController];
  [v3 setNeedsFocusUpdate];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = 1;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 allowedPressTypes];
    v5 = [v4 containsObject:&off_1016E9410];

    if (v5)
    {
      v6 = 0;
    }
  }

  return v6;
}

@end
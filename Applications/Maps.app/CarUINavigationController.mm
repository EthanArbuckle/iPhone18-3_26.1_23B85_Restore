@interface CarUINavigationController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)preferredFocusEnvironments;
- (void)setNeedsFocusUpdate;
@end

@implementation CarUINavigationController

- (id)preferredFocusEnvironments
{
  v7.receiver = self;
  v7.super_class = CarUINavigationController;
  preferredFocusEnvironments = [(CarUINavigationController *)&v7 preferredFocusEnvironments];
  if ([(CarUINavigationController *)self isNavigationBarHidden])
  {
    v4 = [NSPredicate predicateWithBlock:&stru_10164D258];
    v5 = [preferredFocusEnvironments filteredArrayUsingPredicate:v4];

    preferredFocusEnvironments = v5;
  }

  return preferredFocusEnvironments;
}

- (void)setNeedsFocusUpdate
{
  v4.receiver = self;
  v4.super_class = CarUINavigationController;
  [(CarUINavigationController *)&v4 setNeedsFocusUpdate];
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  [chromeViewController setNeedsFocusUpdate];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  v6 = 1;
  if (objc_opt_isKindOfClass())
  {
    allowedPressTypes = [beginCopy allowedPressTypes];
    v5 = [allowedPressTypes containsObject:&off_1016E9410];

    if (v5)
    {
      v6 = 0;
    }
  }

  return v6;
}

@end
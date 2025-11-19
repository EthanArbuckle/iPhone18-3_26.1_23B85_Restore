@interface OBWelcomeController
+ (void)setAdditionalScaleForAnimation:(double)a3 headerView:(id)a4;
+ (void)setStandardBuddyScaleForAnimation:(id)a3;
- (id)buddy_animationController:(id)a3;
- (id)buddy_animationController:(id)a3 animatedStates:(id)a4 startAtFirstState:(BOOL)a5;
- (id)bundleUrlForPackageName:(id)a3;
- (void)markPaneToAnimateHeaderOnNextAppearance;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)setAdditionalScaleForAnimation:(double)a3;
@end

@implementation OBWelcomeController

- (id)buddy_animationController:(id)a3 animatedStates:(id)a4 startAtFirstState:(BOOL)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a5;
  v16 = 0;
  if (a5)
  {
    v7 = [v18 firstObject];
    v8 = v16;
    v16 = v7;
  }

  v9 = [OBAnimationController alloc];
  v10 = [(OBWelcomeController *)v20 bundleUrlForPackageName:location[0]];
  v11 = [(OBWelcomeController *)v20 headerView];
  v12 = [v11 animationView];
  v15 = [v9 initWithUrlToPackage:v10 animationView:v12 animatedStates:v18 startAtFirstState:v16];

  [(OBWelcomeController *)v20 setStandardBuddyScaleForAnimation];
  v13 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (id)buddy_animationController:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v10[0] = v3;
  v4 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.5];
  v10[1] = v4;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v5 = [(OBWelcomeController *)v9 buddy_animationController:location[0] animatedStates:v7 startAtFirstState:1];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)bundleUrlForPackageName:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v3 URLForResource:location[0] withExtension:@"ca"];

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to find url to package %@:", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v9 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (void)setAdditionalScaleForAnimation:(double)a3
{
  v3 = objc_opt_class();
  v4 = [(OBWelcomeController *)self headerView];
  [v3 setAdditionalScaleForAnimation:v4 headerView:a3];
}

+ (void)setStandardBuddyScaleForAnimation:(id)a3
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [v4 setAdditionalScaleForAnimation:location[0] headerView:0.0666666667];
  objc_storeStrong(location, 0);
}

+ (void)setAdditionalScaleForAnimation:(double)a3 headerView:(id)a4
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = +[BYDevice currentDevice];
  v5 = [v4 size];

  if (v5 == 2)
  {
    v11 = v11 / 2.0;
  }

  v6 = [v10 animationView];
  [v6 defaultScale];
  v8 = v7 + v11;
  v9 = [v10 animationView];
  [v9 setScale:v8];

  objc_storeStrong(&v10, 0);
}

- (void)markPaneToAnimateHeaderOnNextAppearance
{
  v2 = [(OBWelcomeController *)self navigationController];
  v3 = [v2 topViewController];
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v4 = 0;
  if (v3 == self)
  {
    v16 = [(OBWelcomeController *)self navigationController];
    v15 = 1;
    v14 = [v16 viewControllers];
    v13 = 1;
    v12 = [v14 firstObject];
    v11 = 1;
    v4 = v12 == self;
  }

  if (v11)
  {
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (!v4)
  {
    v9 = 0;
    isKindOfClass = 0;
    if (objc_opt_respondsToSelector())
    {
      v10 = [(OBWelcomeController *)self navigationController];
      v9 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v9)
    {
    }

    if (isKindOfClass)
    {
      v6 = [(OBWelcomeController *)self navigationController];
      [v6 addDelegateObserver:self];

      v7 = [(OBWelcomeController *)self headerView];
      v8 = [v7 animationView];
      [v8 setAlpha:0.0];
    }
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if (v14 == v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(OBWelcomeController *)v14 animationController];
    [v7 stopAnimation];

    v8 = [(OBWelcomeController *)v14 headerView];
    v9 = [v8 animationView];
    [v9 setAlpha:1.0];

    v10 = [(OBWelcomeController *)v14 animationController];
    [v10 startAnimation];

    v11 = [(OBWelcomeController *)v14 navigationController];
    [v11 removeDelegateObserver:v14];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end
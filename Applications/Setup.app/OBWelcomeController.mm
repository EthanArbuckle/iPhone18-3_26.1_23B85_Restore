@interface OBWelcomeController
+ (void)setAdditionalScaleForAnimation:(double)animation headerView:(id)view;
+ (void)setStandardBuddyScaleForAnimation:(id)animation;
- (id)buddy_animationController:(id)controller;
- (id)buddy_animationController:(id)controller animatedStates:(id)states startAtFirstState:(BOOL)state;
- (id)bundleUrlForPackageName:(id)name;
- (void)markPaneToAnimateHeaderOnNextAppearance;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)setAdditionalScaleForAnimation:(double)animation;
@end

@implementation OBWelcomeController

- (id)buddy_animationController:(id)controller animatedStates:(id)states startAtFirstState:(BOOL)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v18 = 0;
  objc_storeStrong(&v18, states);
  stateCopy = state;
  v16 = 0;
  if (state)
  {
    firstObject = [v18 firstObject];
    v8 = v16;
    v16 = firstObject;
  }

  v9 = [OBAnimationController alloc];
  v10 = [(OBWelcomeController *)selfCopy bundleUrlForPackageName:location[0]];
  headerView = [(OBWelcomeController *)selfCopy headerView];
  animationView = [headerView animationView];
  v15 = [v9 initWithUrlToPackage:v10 animationView:animationView animatedStates:v18 startAtFirstState:v16];

  [(OBWelcomeController *)selfCopy setStandardBuddyScaleForAnimation];
  v13 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v13;
}

- (id)buddy_animationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v10[0] = v3;
  v4 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.5];
  v10[1] = v4;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v5 = [(OBWelcomeController *)selfCopy buddy_animationController:location[0] animatedStates:v7 startAtFirstState:1];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)bundleUrlForPackageName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
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

- (void)setAdditionalScaleForAnimation:(double)animation
{
  v3 = objc_opt_class();
  headerView = [(OBWelcomeController *)self headerView];
  [v3 setAdditionalScaleForAnimation:headerView headerView:animation];
}

+ (void)setStandardBuddyScaleForAnimation:(id)animation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animation);
  [selfCopy setAdditionalScaleForAnimation:location[0] headerView:0.0666666667];
  objc_storeStrong(location, 0);
}

+ (void)setAdditionalScaleForAnimation:(double)animation headerView:(id)view
{
  selfCopy = self;
  v12 = a2;
  animationCopy = animation;
  v10 = 0;
  objc_storeStrong(&v10, view);
  v4 = +[BYDevice currentDevice];
  v5 = [v4 size];

  if (v5 == 2)
  {
    animationCopy = animationCopy / 2.0;
  }

  animationView = [v10 animationView];
  [animationView defaultScale];
  v8 = v7 + animationCopy;
  animationView2 = [v10 animationView];
  [animationView2 setScale:v8];

  objc_storeStrong(&v10, 0);
}

- (void)markPaneToAnimateHeaderOnNextAppearance
{
  navigationController = [(OBWelcomeController *)self navigationController];
  topViewController = [navigationController topViewController];
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v4 = 0;
  if (topViewController == self)
  {
    navigationController2 = [(OBWelcomeController *)self navigationController];
    v15 = 1;
    viewControllers = [navigationController2 viewControllers];
    v13 = 1;
    firstObject = [viewControllers firstObject];
    v11 = 1;
    v4 = firstObject == self;
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
      navigationController3 = [(OBWelcomeController *)self navigationController];
      v9 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v9)
    {
    }

    if (isKindOfClass)
    {
      navigationController4 = [(OBWelcomeController *)self navigationController];
      [navigationController4 addDelegateObserver:self];

      headerView = [(OBWelcomeController *)self headerView];
      animationView = [headerView animationView];
      [animationView setAlpha:0.0];
    }
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v12 = 0;
  objc_storeStrong(&v12, viewController);
  if (selfCopy == v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    animationController = [(OBWelcomeController *)selfCopy animationController];
    [animationController stopAnimation];

    headerView = [(OBWelcomeController *)selfCopy headerView];
    animationView = [headerView animationView];
    [animationView setAlpha:1.0];

    animationController2 = [(OBWelcomeController *)selfCopy animationController];
    [animationController2 startAnimation];

    navigationController = [(OBWelcomeController *)selfCopy navigationController];
    [navigationController removeDelegateObserver:selfCopy];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end
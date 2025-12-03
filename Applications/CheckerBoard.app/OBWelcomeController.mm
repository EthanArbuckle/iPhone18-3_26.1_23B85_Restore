@interface OBWelcomeController
+ (void)setAdditionalScaleForAnimation:(double)animation headerView:(id)view;
- (id)animationController:(id)controller;
- (id)animationController:(id)controller animatedStates:(id)states startAtFirstState:(BOOL)state;
- (id)bundleUrlForPackageName:(id)name;
- (void)setAdditionalScaleForAnimation:(double)animation;
@end

@implementation OBWelcomeController

- (id)animationController:(id)controller animatedStates:(id)states startAtFirstState:(BOOL)state
{
  stateCopy = state;
  controllerCopy = controller;
  statesCopy = states;
  v10 = statesCopy;
  if (stateCopy)
  {
    firstObject = [statesCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v12 = [OBAnimationController alloc];
  v13 = [(OBWelcomeController *)self bundleUrlForPackageName:controllerCopy];
  headerView = [(OBWelcomeController *)self headerView];
  animationView = [headerView animationView];
  v16 = [v12 initWithUrlToPackage:v13 animationView:animationView animatedStates:v10 startAtFirstState:firstObject];

  [(OBWelcomeController *)self setStandardScaleForAnimation];

  return v16;
}

- (id)animationController:(id)controller
{
  controllerCopy = controller;
  v5 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v10[0] = v5;
  v6 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.5];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = [(OBWelcomeController *)self animationController:controllerCopy animatedStates:v7 startAtFirstState:1];

  return v8;
}

- (id)bundleUrlForPackageName:(id)name
{
  nameCopy = name;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 URLForResource:nameCopy withExtension:@"ca"];

  if (!v5)
  {
    sub_100046BB0(nameCopy);
  }

  return v5;
}

- (void)setAdditionalScaleForAnimation:(double)animation
{
  v5 = objc_opt_class();
  headerView = [(OBWelcomeController *)self headerView];
  [v5 setAdditionalScaleForAnimation:headerView headerView:animation];
}

+ (void)setAdditionalScaleForAnimation:(double)animation headerView:(id)view
{
  viewCopy = view;
  animationView = [viewCopy animationView];
  [animationView defaultScale];
  v7 = v6 + animation;
  animationView2 = [viewCopy animationView];

  [animationView2 setScale:v7];
}

@end
@interface CHNavigationTracker
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (CHNavigationTracker)initWithTabBarController:(id)controller fitnessAppContext:(id)context workoutController:(id)workoutController;
- (id)_viewControllerAtIndex:(int64_t)index;
- (void)dealloc;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
@end

@implementation CHNavigationTracker

- (CHNavigationTracker)initWithTabBarController:(id)controller fitnessAppContext:(id)context workoutController:(id)workoutController
{
  controllerCopy = controller;
  contextCopy = context;
  workoutControllerCopy = workoutController;
  v17.receiver = self;
  v17.super_class = CHNavigationTracker;
  v12 = [(CHNavigationTracker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tabBarController, controller);
    [(UITabBarController *)v13->_tabBarController setDelegate:v13];
    v13->_tabIndexBeingDeselected = -1;
    objc_storeStrong(&v13->_fitnessAppContext, context);
    v14 = [[CHWorkoutTabTracker alloc] initWithTabBarController:v13->_tabBarController workoutController:workoutControllerCopy];
    workoutTabTracker = v13->_workoutTabTracker;
    v13->_workoutTabTracker = v14;
  }

  return v13;
}

- (void)dealloc
{
  workoutTabTracker = self->_workoutTabTracker;
  self->_workoutTabTracker = 0;

  v4.receiver = self;
  v4.super_class = CHNavigationTracker;
  [(CHNavigationTracker *)&v4 dealloc];
}

- (id)_viewControllerAtIndex:(int64_t)index
{
  if (index < 0 || (-[UITabBarController viewControllers](self->_tabBarController, "viewControllers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= index))
  {
    v8 = 0;
  }

  else
  {
    viewControllers = [(UITabBarController *)self->_tabBarController viewControllers];
    v8 = [viewControllers objectAtIndexedSubscript:index];
  }

  return v8;
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  selectedIndex = [controllerCopy selectedIndex];
  viewControllers = [controllerCopy viewControllers];

  v10 = [viewControllers indexOfObject:viewControllerCopy];
  if (selectedIndex == v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [viewControllerCopy performSelector:"scrollToTop"];
  }

  self->_tabIndexBeingDeselected = selectedIndex;

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  tabIndexBeingDeselected = self->_tabIndexBeingDeselected;
  viewControllers = [controller viewControllers];
  v9 = [viewControllers indexOfObject:viewControllerCopy];

  _HKInitializeLogging();
  v10 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[CHNav] Tab index selected: %ld", &v19, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userActivity = [viewControllerCopy userActivity];
    [userActivity becomeCurrent];

    if (tabIndexBeingDeselected != v9)
    {
      [(CHWorkoutTabTracker *)self->_workoutTabTracker workoutTabDidBecomeActive];
LABEL_11:
      seymourNavigationController2 = [(CHNavigationTracker *)self _viewControllerAtIndex:tabIndexBeingDeselected];
      seymourNavigationController = [(CHFitnessAppContext *)self->_fitnessAppContext seymourNavigationController];
      v16 = seymourNavigationController;
      if (seymourNavigationController == viewControllerCopy)
      {
        [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabSelectedWithSelection:1];
        v17 = +[NSUserDefaults standardUserDefaults];
        v18 = +[_TtC10FitnessApp23DiscoverySheetConstants hasVisitedSeymourTabKey];
        [v17 setBool:1 forKey:v18];
      }

      else if (seymourNavigationController == seymourNavigationController2)
      {
        [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabDeselected];
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = [(CHNavigationTracker *)self _viewControllerAtIndex:tabIndexBeingDeselected];
    userActivity2 = [v12 userActivity];
    [userActivity2 resignCurrent];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CHWorkoutTabTracker *)self->_workoutTabTracker workoutTabDidBecomeInactive];
    }

    if (tabIndexBeingDeselected != v9)
    {
      goto LABEL_11;
    }
  }

  seymourNavigationController2 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourNavigationController];
  if (seymourNavigationController2 == viewControllerCopy)
  {
    [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabSelectedWithSelection:2];
  }

LABEL_16:
}

@end
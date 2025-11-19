@interface CHNavigationTracker
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (CHNavigationTracker)initWithTabBarController:(id)a3 fitnessAppContext:(id)a4 workoutController:(id)a5;
- (id)_viewControllerAtIndex:(int64_t)a3;
- (void)dealloc;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
@end

@implementation CHNavigationTracker

- (CHNavigationTracker)initWithTabBarController:(id)a3 fitnessAppContext:(id)a4 workoutController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CHNavigationTracker;
  v12 = [(CHNavigationTracker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tabBarController, a3);
    [(UITabBarController *)v13->_tabBarController setDelegate:v13];
    v13->_tabIndexBeingDeselected = -1;
    objc_storeStrong(&v13->_fitnessAppContext, a4);
    v14 = [[CHWorkoutTabTracker alloc] initWithTabBarController:v13->_tabBarController workoutController:v11];
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

- (id)_viewControllerAtIndex:(int64_t)a3
{
  if (a3 < 0 || (-[UITabBarController viewControllers](self->_tabBarController, "viewControllers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(UITabBarController *)self->_tabBarController viewControllers];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 selectedIndex];
  v9 = [v7 viewControllers];

  v10 = [v9 indexOfObject:v6];
  if (v8 == v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 performSelector:"scrollToTop"];
  }

  self->_tabIndexBeingDeselected = v8;

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a4;
  tabIndexBeingDeselected = self->_tabIndexBeingDeselected;
  v8 = [a3 viewControllers];
  v9 = [v8 indexOfObject:v6];

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
    v11 = [v6 userActivity];
    [v11 becomeCurrent];

    if (tabIndexBeingDeselected != v9)
    {
      [(CHWorkoutTabTracker *)self->_workoutTabTracker workoutTabDidBecomeActive];
LABEL_11:
      v14 = [(CHNavigationTracker *)self _viewControllerAtIndex:tabIndexBeingDeselected];
      v15 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourNavigationController];
      v16 = v15;
      if (v15 == v6)
      {
        [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabSelectedWithSelection:1];
        v17 = +[NSUserDefaults standardUserDefaults];
        v18 = +[_TtC10FitnessApp23DiscoverySheetConstants hasVisitedSeymourTabKey];
        [v17 setBool:1 forKey:v18];
      }

      else if (v15 == v14)
      {
        [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabDeselected];
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = [(CHNavigationTracker *)self _viewControllerAtIndex:tabIndexBeingDeselected];
    v13 = [v12 userActivity];
    [v13 resignCurrent];

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

  v14 = [(CHFitnessAppContext *)self->_fitnessAppContext seymourNavigationController];
  if (v14 == v6)
  {
    [(CHFitnessAppContext *)self->_fitnessAppContext seymourTabSelectedWithSelection:2];
  }

LABEL_16:
}

@end
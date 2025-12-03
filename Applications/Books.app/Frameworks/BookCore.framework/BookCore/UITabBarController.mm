@interface UITabBarController
- (UITabBarAppearance)bc_preferredTabBarScrollEdgeAppearance;
- (id)im_visibleChildViewControllers;
- (void)bc_setPreferredTabBarScrollEdgeAppearance:(id)appearance;
- (void)bc_setSelectedIndex:(int64_t)index;
- (void)im_updateTabBarVisibleWithTransitionCoordinator:(id)coordinator;
@end

@implementation UITabBarController

- (id)im_visibleChildViewControllers
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v3 = _selectedViewControllerInTabBar;
  if (_selectedViewControllerInTabBar)
  {
    v6 = _selectedViewControllerInTabBar;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (UITabBarAppearance)bc_preferredTabBarScrollEdgeAppearance
{
  tabBar = [(UITabBarController *)self tabBar];
  scrollEdgeAppearance = [tabBar scrollEdgeAppearance];

  return scrollEdgeAppearance;
}

- (void)bc_setPreferredTabBarScrollEdgeAppearance:(id)appearance
{
  appearanceCopy = appearance;
  tabBar = [(UITabBarController *)self tabBar];
  [tabBar setScrollEdgeAppearance:appearanceCopy];
}

- (void)bc_setSelectedIndex:(int64_t)index
{
  if (index < 0)
  {
    v7 = 0;
  }

  else
  {
    viewControllers = [(UITabBarController *)self viewControllers];
    if ([viewControllers count] <= index)
    {
      v7 = 0;
    }

    else
    {
      viewControllers2 = [(UITabBarController *)self viewControllers];
      v7 = [viewControllers2 objectAtIndexedSubscript:index];
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_CEA94;
  v9[3] = &unk_2CA070;
  v10 = v7;
  v8 = v7;
  [(UITabBarController *)self im_enumerateVisibleChildrenConformingToProtocol:0 block:v9];
  [(UITabBarController *)self setSelectedIndex:index];
}

- (void)im_updateTabBarVisibleWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_157818;
  v7[3] = &unk_2C7CD0;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (coordinatorCopy)
  {
    [coordinatorCopy animateAlongsideTransition:0 completion:v5];
  }

  else
  {
    (v5[2])(v5, 0);
  }
}

@end
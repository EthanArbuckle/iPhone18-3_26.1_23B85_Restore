@interface IMSegmentedViewController
- (IMSegmentedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIViewController)selectedViewController;
- (id)viewControllerAtIndex:(int64_t)index;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)reconcileChildViewControllersWithOldViewControllers:(id)controllers newViewControllers:(id)viewControllers;
- (void)selectDefaultIndex;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSelectedIndex:(int64_t)index animated:(BOOL)animated;
- (void)setSelectedIndex:(int64_t)index withTransition:(id)transition force:(BOOL)force;
- (void)setViewControllers:(id)controllers;
- (void)showViewController:(id)controller sendAppearanceMessages:(BOOL)messages;
- (void)viewDidLoad;
@end

@implementation IMSegmentedViewController

- (IMSegmentedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = IMSegmentedViewController;
  result = [(IMViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  [(IMViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = IMSegmentedViewController;
  [(IMViewController *)&v3 dealloc];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  selectedViewController = [(IMSegmentedViewController *)self selectedViewController];
  [selectedViewController setEditing:editingCopy animated:animatedCopy];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = IMSegmentedViewController;
  [(IMSegmentedViewController *)&v4 viewDidLoad];
  selectedViewController = [(IMSegmentedViewController *)self selectedViewController];
  [(IMSegmentedViewController *)self showViewController:selectedViewController sendAppearanceMessages:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [(IMSegmentedViewController *)self viewControllers];
  v3 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        v6 &= [*(*(&v9 + 1) + 8 * i) supportedInterfaceOrientations];
      }

      v4 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 30;
  }

  return v6;
}

- (UIViewController)selectedViewController
{
  selectedIndex = [(IMSegmentedViewController *)self selectedIndex];

  return [(IMSegmentedViewController *)self viewControllerAtIndex:selectedIndex];
}

- (void)setViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (self->_viewControllers != controllersCopy)
  {
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(IMSegmentedViewController *)self reconcileChildViewControllersWithOldViewControllers:self->_viewControllers newViewControllers:controllersCopy];
    objc_storeStrong(&self->_viewControllers, controllers);
    controllersCopy = [(IMSegmentedViewController *)self selectDefaultIndex];
  }

  _objc_release_x1(controllersCopy);
}

- (void)setSelectedIndex:(int64_t)index animated:(BOOL)animated
{
  if (animated)
  {
    defaultTransition = [(IMSegmentedViewController *)self defaultTransition];
  }

  else
  {
    defaultTransition = 0;
  }

  v7 = defaultTransition;
  [(IMSegmentedViewController *)self setSelectedIndex:index withTransition:defaultTransition];
}

- (void)setSelectedIndex:(int64_t)index withTransition:(id)transition force:(BOOL)force
{
  transitionCopy = transition;
  if (self->_selectedIndex != index)
  {
    v12 = transitionCopy;
    v8 = [(IMSegmentedViewController *)self viewControllerAtIndex:index];
    selectedViewController = [(IMSegmentedViewController *)self selectedViewController];
    selectedIndex = [(IMSegmentedViewController *)self selectedIndex];
    self->_selectedIndex = index;
    if (selectedViewController)
    {
      index = [(IMViewController *)self transitionFromViewController:selectedViewController toViewController:v8 transition:v12 reverse:selectedIndex > index];
    }

    else if ([(IMSegmentedViewController *)self isViewLoaded])
    {
      [(IMSegmentedViewController *)self showViewController:v8 sendAppearanceMessages:1];
    }

    transitionCopy = v12;
  }
}

- (void)selectDefaultIndex
{
  viewControllers = [(IMSegmentedViewController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4)
  {

    [(IMSegmentedViewController *)self setSelectedIndex:0 withTransition:0 force:1];
  }
}

- (id)viewControllerAtIndex:(int64_t)index
{
  if (index < 0 || (-[IMSegmentedViewController viewControllers](self, "viewControllers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= index))
  {
    v8 = 0;
  }

  else
  {
    viewControllers = [(IMSegmentedViewController *)self viewControllers];
    v8 = [viewControllers objectAtIndex:index];
  }

  return v8;
}

- (void)reconcileChildViewControllersWithOldViewControllers:(id)controllers newViewControllers:(id)viewControllers
{
  controllersCopy = controllers;
  viewControllersCopy = viewControllers;
  v8 = [[NSMutableArray alloc] initWithArray:viewControllersCopy];
  [v8 removeObjectsInArray:controllersCopy];
  v9 = [[NSMutableArray alloc] initWithArray:controllersCopy];
  [v9 removeObjectsInArray:viewControllersCopy];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(IMSegmentedViewController *)self addChildViewController:*(*(&v24 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) removeFromParentViewController];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)showViewController:(id)controller sendAppearanceMessages:(BOOL)messages
{
  v17 = [(IMSegmentedViewController *)self viewIfLoaded:controller];
  selectedViewController = [(IMSegmentedViewController *)self selectedViewController];
  [v17 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [selectedViewController view];
  [view setFrame:{v7, v9, v11, v13}];

  view2 = [selectedViewController view];
  [view2 setAutoresizingMask:18];

  view3 = [selectedViewController view];
  [v17 addSubview:view3];
}

@end
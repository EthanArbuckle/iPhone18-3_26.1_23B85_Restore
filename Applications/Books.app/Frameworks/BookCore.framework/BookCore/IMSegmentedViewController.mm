@interface IMSegmentedViewController
- (IMSegmentedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIViewController)selectedViewController;
- (id)viewControllerAtIndex:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)reconcileChildViewControllersWithOldViewControllers:(id)a3 newViewControllers:(id)a4;
- (void)selectDefaultIndex;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelectedIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelectedIndex:(int64_t)a3 withTransition:(id)a4 force:(BOOL)a5;
- (void)setViewControllers:(id)a3;
- (void)showViewController:(id)a3 sendAppearanceMessages:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation IMSegmentedViewController

- (IMSegmentedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = IMSegmentedViewController;
  result = [(IMViewController *)&v5 initWithNibName:a3 bundle:a4];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(IMSegmentedViewController *)self selectedViewController];
  [v6 setEditing:v5 animated:v4];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = IMSegmentedViewController;
  [(IMSegmentedViewController *)&v4 viewDidLoad];
  v3 = [(IMSegmentedViewController *)self selectedViewController];
  [(IMSegmentedViewController *)self showViewController:v3 sendAppearanceMessages:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(IMSegmentedViewController *)self viewControllers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v6 &= [*(*(&v9 + 1) + 8 * i) supportedInterfaceOrientations];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(IMSegmentedViewController *)self selectedIndex];

  return [(IMSegmentedViewController *)self viewControllerAtIndex:v3];
}

- (void)setViewControllers:(id)a3
{
  v5 = a3;
  if (self->_viewControllers != v5)
  {
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(IMSegmentedViewController *)self reconcileChildViewControllersWithOldViewControllers:self->_viewControllers newViewControllers:v5];
    objc_storeStrong(&self->_viewControllers, a3);
    v5 = [(IMSegmentedViewController *)self selectDefaultIndex];
  }

  _objc_release_x1(v5);
}

- (void)setSelectedIndex:(int64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v6 = [(IMSegmentedViewController *)self defaultTransition];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(IMSegmentedViewController *)self setSelectedIndex:a3 withTransition:v6];
}

- (void)setSelectedIndex:(int64_t)a3 withTransition:(id)a4 force:(BOOL)a5
{
  v7 = a4;
  if (self->_selectedIndex != a3)
  {
    v12 = v7;
    v8 = [(IMSegmentedViewController *)self viewControllerAtIndex:a3];
    v9 = [(IMSegmentedViewController *)self selectedViewController];
    v10 = [(IMSegmentedViewController *)self selectedIndex];
    self->_selectedIndex = a3;
    if (v9)
    {
      v11 = [(IMViewController *)self transitionFromViewController:v9 toViewController:v8 transition:v12 reverse:v10 > a3];
    }

    else if ([(IMSegmentedViewController *)self isViewLoaded])
    {
      [(IMSegmentedViewController *)self showViewController:v8 sendAppearanceMessages:1];
    }

    v7 = v12;
  }
}

- (void)selectDefaultIndex
{
  v3 = [(IMSegmentedViewController *)self viewControllers];
  v4 = [v3 count];

  if (v4)
  {

    [(IMSegmentedViewController *)self setSelectedIndex:0 withTransition:0 force:1];
  }
}

- (id)viewControllerAtIndex:(int64_t)a3
{
  if (a3 < 0 || (-[IMSegmentedViewController viewControllers](self, "viewControllers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(IMSegmentedViewController *)self viewControllers];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (void)reconcileChildViewControllersWithOldViewControllers:(id)a3 newViewControllers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithArray:v7];
  [v8 removeObjectsInArray:v6];
  v9 = [[NSMutableArray alloc] initWithArray:v6];
  [v9 removeObjectsInArray:v7];
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

- (void)showViewController:(id)a3 sendAppearanceMessages:(BOOL)a4
{
  v17 = [(IMSegmentedViewController *)self viewIfLoaded:a3];
  v5 = [(IMSegmentedViewController *)self selectedViewController];
  [v17 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [v5 view];
  [v15 setAutoresizingMask:18];

  v16 = [v5 view];
  [v17 addSubview:v16];
}

@end
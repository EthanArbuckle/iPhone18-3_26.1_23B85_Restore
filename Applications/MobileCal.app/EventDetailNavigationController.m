@interface EventDetailNavigationController
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EventDetailNavigationController

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = EventDetailNavigationController;
  [(EventDetailNavigationController *)&v6 viewWillDisappear:a3];
  v4 = [(EventDetailNavigationController *)self doneBlock];

  if (v4)
  {
    v5 = [(EventDetailNavigationController *)self doneBlock];
    (v5)[2](v5, self, 0);
  }
}

- (CGSize)preferredContentSize
{
  v3 = [(EventDetailNavigationController *)self viewControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(EventDetailNavigationController *)self viewControllers];
    v6 = [v5 objectAtIndexedSubscript:0];

    [v6 preferredContentSize];
    width = v7;
    height = v9;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (EKEvent)event
{
  v3 = [(EventDetailNavigationController *)self viewControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(EventDetailNavigationController *)self viewControllers];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = 0;
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 performSelector:"event"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
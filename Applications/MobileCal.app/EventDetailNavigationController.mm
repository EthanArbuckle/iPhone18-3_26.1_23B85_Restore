@interface EventDetailNavigationController
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EventDetailNavigationController

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = EventDetailNavigationController;
  [(EventDetailNavigationController *)&v6 viewWillDisappear:disappear];
  doneBlock = [(EventDetailNavigationController *)self doneBlock];

  if (doneBlock)
  {
    doneBlock2 = [(EventDetailNavigationController *)self doneBlock];
    (doneBlock2)[2](doneBlock2, self, 0);
  }
}

- (CGSize)preferredContentSize
{
  viewControllers = [(EventDetailNavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4)
  {
    viewControllers2 = [(EventDetailNavigationController *)self viewControllers];
    v6 = [viewControllers2 objectAtIndexedSubscript:0];

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
  viewControllers = [(EventDetailNavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4)
  {
    viewControllers2 = [(EventDetailNavigationController *)self viewControllers];
    v6 = [viewControllers2 objectAtIndexedSubscript:0];

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
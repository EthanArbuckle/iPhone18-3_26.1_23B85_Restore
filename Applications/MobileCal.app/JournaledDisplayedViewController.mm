@interface JournaledDisplayedViewController
- (UIViewController)presentingViewController;
- (id)description;
@end

@implementation JournaledDisplayedViewController

- (id)description
{
  if (self->_displayType)
  {
    v8.receiver = self;
    v8.super_class = JournaledDisplayedViewController;
    v3 = [(JournaledDisplayedViewController *)&v8 description];
    viewController = self->_viewController;
    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    v6 = [NSString stringWithFormat:@"%@ Recorded PRESENTATION of %@ by %@ ", v3, viewController, WeakRetained];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = JournaledDisplayedViewController;
    v3 = [(JournaledDisplayedViewController *)&v9 description];
    v6 = [NSString stringWithFormat:@"%@ Recorded PUSH of %@", v3, self->_viewController];
  }

  return v6;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end
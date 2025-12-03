@interface BKWelcomeNavigationController
- (BKWelcomeNavigationControllerDelegate)bkDelegate;
- (BOOL)shouldAutorotate;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BKWelcomeNavigationController

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = BKWelcomeNavigationController;
  [(BKWelcomeNavigationController *)&v3 viewDidAppear:appear];
}

- (unint64_t)supportedInterfaceOrientations
{
  topViewController = [(BKWelcomeNavigationController *)self topViewController];
  if (topViewController)
  {
    topViewController2 = [(BKWelcomeNavigationController *)self topViewController];
    supportedInterfaceOrientations = [topViewController2 supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = 30;
  }

  return supportedInterfaceOrientations;
}

- (BOOL)shouldAutorotate
{
  topViewController = [(BKWelcomeNavigationController *)self topViewController];
  if (topViewController)
  {
    topViewController2 = [(BKWelcomeNavigationController *)self topViewController];
    shouldAutorotate = [topViewController2 shouldAutorotate];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKWelcomeNavigationController;
    shouldAutorotate = [(BKWelcomeNavigationController *)&v7 shouldAutorotate];
  }

  return shouldAutorotate;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  topViewController = [(BKWelcomeNavigationController *)self topViewController];
  if (topViewController)
  {
    topViewController2 = [(BKWelcomeNavigationController *)self topViewController];
    preferredInterfaceOrientationForPresentation = [topViewController2 preferredInterfaceOrientationForPresentation];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKWelcomeNavigationController;
    preferredInterfaceOrientationForPresentation = [(BKWelcomeNavigationController *)&v7 preferredInterfaceOrientationForPresentation];
  }

  return preferredInterfaceOrientationForPresentation;
}

- (BKWelcomeNavigationControllerDelegate)bkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bkDelegate);

  return WeakRetained;
}

@end
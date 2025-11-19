@interface BKWelcomeNavigationController
- (BKWelcomeNavigationControllerDelegate)bkDelegate;
- (BOOL)shouldAutorotate;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BKWelcomeNavigationController

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BKWelcomeNavigationController;
  [(BKWelcomeNavigationController *)&v3 viewDidAppear:a3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(BKWelcomeNavigationController *)self topViewController];
  if (v3)
  {
    v4 = [(BKWelcomeNavigationController *)self topViewController];
    v5 = [v4 supportedInterfaceOrientations];
  }

  else
  {
    v5 = 30;
  }

  return v5;
}

- (BOOL)shouldAutorotate
{
  v3 = [(BKWelcomeNavigationController *)self topViewController];
  if (v3)
  {
    v4 = [(BKWelcomeNavigationController *)self topViewController];
    v5 = [v4 shouldAutorotate];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKWelcomeNavigationController;
    v5 = [(BKWelcomeNavigationController *)&v7 shouldAutorotate];
  }

  return v5;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v3 = [(BKWelcomeNavigationController *)self topViewController];
  if (v3)
  {
    v4 = [(BKWelcomeNavigationController *)self topViewController];
    v5 = [v4 preferredInterfaceOrientationForPresentation];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKWelcomeNavigationController;
    v5 = [(BKWelcomeNavigationController *)&v7 preferredInterfaceOrientationForPresentation];
  }

  return v5;
}

- (BKWelcomeNavigationControllerDelegate)bkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bkDelegate);

  return WeakRetained;
}

@end
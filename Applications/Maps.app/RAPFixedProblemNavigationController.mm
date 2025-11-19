@interface RAPFixedProblemNavigationController
+ (id)fixedProblemNavigationControllerWithProblemStatusResponse:(id)a3;
- (void)handleDone:(id)a3;
@end

@implementation RAPFixedProblemNavigationController

- (void)handleDone:(id)a3
{
  v3 = [(RAPFixedProblemNavigationController *)self doneHandler];
  v3[2]();
}

+ (id)fixedProblemNavigationControllerWithProblemStatusResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RAPFixedProblemViewController);
  [(RAPFixedProblemViewController *)v4 setProblemStatusResponse:v3];

  v5 = [[RAPFixedProblemNavigationController alloc] initWithRootViewController:v4];
  [(RAPFixedProblemNavigationController *)v5 setFixedProblemViewController:v4];

  return v5;
}

@end
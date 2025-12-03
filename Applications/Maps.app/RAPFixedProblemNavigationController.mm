@interface RAPFixedProblemNavigationController
+ (id)fixedProblemNavigationControllerWithProblemStatusResponse:(id)response;
- (void)handleDone:(id)done;
@end

@implementation RAPFixedProblemNavigationController

- (void)handleDone:(id)done
{
  doneHandler = [(RAPFixedProblemNavigationController *)self doneHandler];
  doneHandler[2]();
}

+ (id)fixedProblemNavigationControllerWithProblemStatusResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(RAPFixedProblemViewController);
  [(RAPFixedProblemViewController *)v4 setProblemStatusResponse:responseCopy];

  v5 = [[RAPFixedProblemNavigationController alloc] initWithRootViewController:v4];
  [(RAPFixedProblemNavigationController *)v5 setFixedProblemViewController:v4];

  return v5;
}

@end
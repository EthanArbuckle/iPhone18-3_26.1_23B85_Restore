@interface HORotatableNavigationController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation HORotatableNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  if (![(HORotatableNavigationController *)self isBeingPresented])
  {
    return 30;
  }

  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end
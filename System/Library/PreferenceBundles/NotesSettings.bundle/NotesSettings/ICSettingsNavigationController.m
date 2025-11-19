@interface ICSettingsNavigationController
- (ICSettingsNavigationController)initWithRootViewController:(id)a3 supportedInterfaceOrientations:(unint64_t)a4;
@end

@implementation ICSettingsNavigationController

- (ICSettingsNavigationController)initWithRootViewController:(id)a3 supportedInterfaceOrientations:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = ICSettingsNavigationController;
  result = [(ICSettingsNavigationController *)&v6 initWithRootViewController:a3];
  if (result)
  {
    result->_supportedInterfaceOrientationsMask = a4;
  }

  return result;
}

@end
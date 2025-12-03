@interface ICSettingsNavigationController
- (ICSettingsNavigationController)initWithRootViewController:(id)controller supportedInterfaceOrientations:(unint64_t)orientations;
@end

@implementation ICSettingsNavigationController

- (ICSettingsNavigationController)initWithRootViewController:(id)controller supportedInterfaceOrientations:(unint64_t)orientations
{
  v6.receiver = self;
  v6.super_class = ICSettingsNavigationController;
  result = [(ICSettingsNavigationController *)&v6 initWithRootViewController:controller];
  if (result)
  {
    result->_supportedInterfaceOrientationsMask = orientations;
  }

  return result;
}

@end
@interface QLNavigationState
- (UINavigationController)navigationController;
@end

@implementation QLNavigationState

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end
@interface ControlContaineeViewController
- (ActionCoordination)delegate;
@end

@implementation ControlContaineeViewController

- (ActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface WaitingTransition
- (ContaineeProtocol)oldViewController;
@end

@implementation WaitingTransition

- (ContaineeProtocol)oldViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_oldViewController);

  return WeakRetained;
}

@end
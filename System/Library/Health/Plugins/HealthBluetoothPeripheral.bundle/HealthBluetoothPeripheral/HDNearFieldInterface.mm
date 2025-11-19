@interface HDNearFieldInterface
- (HDNearFieldInterfaceDelegate)delegate;
@end

@implementation HDNearFieldInterface

- (HDNearFieldInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
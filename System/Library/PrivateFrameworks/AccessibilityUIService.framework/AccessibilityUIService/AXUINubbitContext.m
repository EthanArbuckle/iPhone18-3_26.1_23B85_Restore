@interface AXUINubbitContext
- (AXUINubbitDelegate)delegate;
@end

@implementation AXUINubbitContext

- (AXUINubbitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
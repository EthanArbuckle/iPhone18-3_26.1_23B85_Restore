@interface CTXPCListener
- (CTXPCListenerDelegate)delegate;
@end

@implementation CTXPCListener

- (CTXPCListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
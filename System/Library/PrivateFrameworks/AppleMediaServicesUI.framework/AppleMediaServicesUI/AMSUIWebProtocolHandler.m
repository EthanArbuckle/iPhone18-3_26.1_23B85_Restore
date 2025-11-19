@interface AMSUIWebProtocolHandler
- (AMSUIWebProtocolDelegate)delegate;
@end

@implementation AMSUIWebProtocolHandler

- (AMSUIWebProtocolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
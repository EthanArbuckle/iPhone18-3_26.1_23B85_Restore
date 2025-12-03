@interface _MSRemoteViewController
- (MSViewServiceHostProtocol)host;
- (void)requestDismiss;
@end

@implementation _MSRemoteViewController

- (void)requestDismiss
{
  host = [(_MSRemoteViewController *)self host];
  [host requestDismiss];
}

- (MSViewServiceHostProtocol)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end
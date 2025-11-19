@interface _MSRemoteViewController
- (MSViewServiceHostProtocol)host;
- (void)requestDismiss;
@end

@implementation _MSRemoteViewController

- (void)requestDismiss
{
  v2 = [(_MSRemoteViewController *)self host];
  [v2 requestDismiss];
}

- (MSViewServiceHostProtocol)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end
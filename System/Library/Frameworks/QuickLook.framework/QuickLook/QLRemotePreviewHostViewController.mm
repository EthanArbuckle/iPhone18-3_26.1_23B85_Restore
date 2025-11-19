@interface QLRemotePreviewHostViewController
- (QLRemoteItemViewController)remoteItemViewController;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation QLRemotePreviewHostViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = [(QLRemotePreviewHostViewController *)self remoteItemViewController];
  [v5 viewServiceDidTerminateWithError:v4];

  extension = self->_extension;
  request = self->_request;

  [(NSExtension *)extension cancelExtensionRequestWithIdentifier:request];
}

- (QLRemoteItemViewController)remoteItemViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteItemViewController);

  return WeakRetained;
}

@end
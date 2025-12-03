@interface QLRemotePreviewHostViewController
- (QLRemoteItemViewController)remoteItemViewController;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation QLRemotePreviewHostViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  remoteItemViewController = [(QLRemotePreviewHostViewController *)self remoteItemViewController];
  [remoteItemViewController viewServiceDidTerminateWithError:errorCopy];

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
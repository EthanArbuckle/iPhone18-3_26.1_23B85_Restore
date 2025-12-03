@interface SKRemoteReviewViewController
- (SKRemoteReviewViewControllerDelegate)delegate;
- (SKStoreReviewViewController)reviewViewController;
- (void)didFinishWithResult:(id)result error:(id)error;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SKRemoteReviewViewController

- (void)didFinishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  reviewViewController = [(SKRemoteReviewViewController *)self reviewViewController];
  unsignedIntegerValue = [resultCopy unsignedIntegerValue];

  [reviewViewController _didFinishWithResult:unsignedIntegerValue error:errorCopy];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(SKRemoteReviewViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(SKRemoteReviewViewController *)self delegate];
    [delegate2 remoteReviewViewControllerTerminatedWithError:errorCopy];
  }
}

- (SKRemoteReviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SKStoreReviewViewController)reviewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_reviewViewController);

  return WeakRetained;
}

@end
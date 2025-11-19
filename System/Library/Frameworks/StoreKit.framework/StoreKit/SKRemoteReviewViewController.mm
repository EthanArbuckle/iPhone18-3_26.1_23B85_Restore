@interface SKRemoteReviewViewController
- (SKRemoteReviewViewControllerDelegate)delegate;
- (SKStoreReviewViewController)reviewViewController;
- (void)didFinishWithResult:(id)a3 error:(id)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SKRemoteReviewViewController

- (void)didFinishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SKRemoteReviewViewController *)self reviewViewController];
  v8 = [v7 unsignedIntegerValue];

  [v9 _didFinishWithResult:v8 error:v6];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v6 = a3;
  v4 = [(SKRemoteReviewViewController *)self delegate];

  if (v4)
  {
    v5 = [(SKRemoteReviewViewController *)self delegate];
    [v5 remoteReviewViewControllerTerminatedWithError:v6];
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
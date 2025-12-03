@interface SKCloudServiceSetupRemoteViewController
- (SKCloudServiceSetupRemoteViewControllerDelegate)delegate;
- (void)didFinishLoadingWithSuccess:(BOOL)success error:(id)error;
- (void)dismissCloudServiceSetupViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissSafariViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)overrideCreditCardPresentationWithCompletion:(id)completion;
- (void)overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object;
- (void)presentSafariViewControllerWithURL:(id)l animated:(BOOL)animated completion:(id)completion;
@end

@implementation SKCloudServiceSetupRemoteViewController

- (void)didFinishLoadingWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  delegate = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [delegate cloudServiceSetupRemoteViewController:self didFinishLoadingWithSuccess:successCopy error:errorCopy];
}

- (void)dismissCloudServiceSetupViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  delegate = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [delegate cloudServiceSetupRemoteViewController:self requestsDismissalWithAnimation:animatedCopy completion:completionCopy];
}

- (void)dismissSafariViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  delegate = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [delegate cloudServiceSetupRemoteViewController:self requestsDismissingSafariViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)overrideCreditCardPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [delegate overrideCreditCardPresentationWithCompletion:completionCopy];
}

- (void)overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object
{
  objectCopy = object;
  delegate = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [delegate overrideRedeemCameraPerformAction:action withObject:objectCopy];
}

- (void)presentSafariViewControllerWithURL:(id)l animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  lCopy = l;
  delegate = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [delegate cloudServiceSetupRemoteViewController:self requestsPresentingSafariViewControllerWithURL:lCopy animated:animatedCopy completion:completionCopy];
}

- (SKCloudServiceSetupRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
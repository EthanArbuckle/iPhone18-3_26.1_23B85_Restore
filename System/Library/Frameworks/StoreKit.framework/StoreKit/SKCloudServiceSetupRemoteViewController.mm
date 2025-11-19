@interface SKCloudServiceSetupRemoteViewController
- (SKCloudServiceSetupRemoteViewControllerDelegate)delegate;
- (void)didFinishLoadingWithSuccess:(BOOL)a3 error:(id)a4;
- (void)dismissCloudServiceSetupViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissSafariViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)overrideCreditCardPresentationWithCompletion:(id)a3;
- (void)overrideRedeemCameraPerformAction:(int64_t)a3 withObject:(id)a4;
- (void)presentSafariViewControllerWithURL:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SKCloudServiceSetupRemoteViewController

- (void)didFinishLoadingWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [v7 cloudServiceSetupRemoteViewController:self didFinishLoadingWithSuccess:v4 error:v6];
}

- (void)dismissCloudServiceSetupViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [v7 cloudServiceSetupRemoteViewController:self requestsDismissalWithAnimation:v4 completion:v6];
}

- (void)dismissSafariViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [v7 cloudServiceSetupRemoteViewController:self requestsDismissingSafariViewControllerAnimated:v4 completion:v6];
}

- (void)overrideCreditCardPresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [v5 overrideCreditCardPresentationWithCompletion:v4];
}

- (void)overrideRedeemCameraPerformAction:(int64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [v7 overrideRedeemCameraPerformAction:a3 withObject:v6];
}

- (void)presentSafariViewControllerWithURL:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SKCloudServiceSetupRemoteViewController *)self delegate];
  [v10 cloudServiceSetupRemoteViewController:self requestsPresentingSafariViewControllerWithURL:v9 animated:v5 completion:v8];
}

- (SKCloudServiceSetupRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
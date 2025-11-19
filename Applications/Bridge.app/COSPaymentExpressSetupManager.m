@interface COSPaymentExpressSetupManager
- (CGSize)setupAssistantCredentialCardArtSize;
- (COSPaymentExpressSetupManager)init;
- (COSPaymentExpressSetupManagerDelegate)delegate;
- (id)expressWalletPasses;
- (id)passSnapshotForCredential:(id)a3;
- (void)configureExpressSetupProvisioningContextWithCompletion:(id)a3;
- (void)expressSetupAssistantViewControllerWithCompletion:(id)a3;
- (void)peerPaymentAddAssociatedAccountViewController:(id)a3 didFinishWithSuccess:(BOOL)a4 updatedPeerPaymentAccount:(id)a5;
- (void)peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:(id)a3;
- (void)setupAssistantCredentialUpdatedCardArt:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation COSPaymentExpressSetupManager

- (COSPaymentExpressSetupManager)init
{
  v5.receiver = self;
  v5.super_class = COSPaymentExpressSetupManager;
  v2 = [(COSPaymentExpressSetupManager *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.COSPaymentExpressSetupManager", &_dispatch_queue_attr_concurrent);
    [(COSPaymentExpressSetupManager *)v2 setExpressPassesQueue:v3];
  }

  return v2;
}

- (void)configureExpressSetupProvisioningContextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[COSPaymentSetupAssistantExpressController paymentSetupControllerContext];
  [(COSPaymentExpressSetupManager *)self setSetupAssistantContext:v5];

  v6 = [(COSPaymentExpressSetupManager *)self setupAssistantContext];
  [v6 setDelegate:self];

  v7 = [(COSPaymentExpressSetupManager *)self setupAssistantContext];
  [v7 setPeerPaymentDelegate:self];

  v8 = [PKPaymentSetupAssistantExpressController alloc];
  v9 = [(COSPaymentExpressSetupManager *)self setupAssistantContext];
  v10 = [v8 initWithSetupAssistantContext:v9];
  [(COSPaymentExpressSetupManager *)self setExpressController:v10];

  objc_initWeak(&location, self);
  v11 = [(COSPaymentExpressSetupManager *)self expressController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C87D0;
  v13[3] = &unk_10026B250;
  objc_copyWeak(&v15, &location);
  v12 = v4;
  v14 = v12;
  [v11 expressSetupProvisioningContext:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)expressWalletPasses
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100008C2C;
  v11 = sub_100009D08;
  v12 = 0;
  v3 = [(COSPaymentExpressSetupManager *)self expressPassesQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C8BB8;
  v6[3] = &unk_10026B278;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)passSnapshotForCredential:(id)a3
{
  v4 = a3;
  v5 = [(COSPaymentExpressSetupManager *)self provisioningContext];
  v6 = [v5 passSnapshotForCredential:v4];

  return v6;
}

- (void)expressSetupAssistantViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(COSPaymentExpressSetupManager *)self expressController];
  v5 = [(COSPaymentExpressSetupManager *)self provisioningContext];
  [v6 expressSetupFlowForSetupProvisioningContext:v5 withCompletion:v4];
}

- (CGSize)setupAssistantCredentialCardArtSize
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setupAssistantCredentialUpdatedCardArt:(id)a3
{
  v7 = a3;
  v4 = [(COSPaymentExpressSetupManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(COSPaymentExpressSetupManager *)self delegate];
    [v6 paymentExpressSetupManager:self didUpdateCardArtForSetupAssistantCredential:v7];
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v7 = a3;
  v4 = [(COSPaymentExpressSetupManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(COSPaymentExpressSetupManager *)self delegate];
    [v6 paymentExpressSetupManager:self viewControllerDidTerminateSetupFlow:v7];
  }
}

- (void)peerPaymentAddAssociatedAccountViewController:(id)a3 didFinishWithSuccess:(BOOL)a4 updatedPeerPaymentAccount:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  v9 = [(COSPaymentExpressSetupManager *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(COSPaymentExpressSetupManager *)self delegate];
    [v11 paymentExpressSetupManager:self peerPaymentAddAssociatedAccountViewController:v12 didFinishWithSuccess:v6 updatedPeerPaymentAccount:v8];
  }
}

- (void)peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:(id)a3
{
  v7 = a3;
  v4 = [(COSPaymentExpressSetupManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(COSPaymentExpressSetupManager *)self delegate];
    [v6 paymentExpressSetupManager:self peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:v7];
  }
}

- (COSPaymentExpressSetupManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
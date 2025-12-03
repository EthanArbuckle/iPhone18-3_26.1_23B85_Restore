@interface COSPaymentExpressSetupManager
- (CGSize)setupAssistantCredentialCardArtSize;
- (COSPaymentExpressSetupManager)init;
- (COSPaymentExpressSetupManagerDelegate)delegate;
- (id)expressWalletPasses;
- (id)passSnapshotForCredential:(id)credential;
- (void)configureExpressSetupProvisioningContextWithCompletion:(id)completion;
- (void)expressSetupAssistantViewControllerWithCompletion:(id)completion;
- (void)peerPaymentAddAssociatedAccountViewController:(id)controller didFinishWithSuccess:(BOOL)success updatedPeerPaymentAccount:(id)account;
- (void)peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:(id)setup;
- (void)setupAssistantCredentialUpdatedCardArt:(id)art;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
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

- (void)configureExpressSetupProvisioningContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[COSPaymentSetupAssistantExpressController paymentSetupControllerContext];
  [(COSPaymentExpressSetupManager *)self setSetupAssistantContext:v5];

  setupAssistantContext = [(COSPaymentExpressSetupManager *)self setupAssistantContext];
  [setupAssistantContext setDelegate:self];

  setupAssistantContext2 = [(COSPaymentExpressSetupManager *)self setupAssistantContext];
  [setupAssistantContext2 setPeerPaymentDelegate:self];

  v8 = [PKPaymentSetupAssistantExpressController alloc];
  setupAssistantContext3 = [(COSPaymentExpressSetupManager *)self setupAssistantContext];
  v10 = [v8 initWithSetupAssistantContext:setupAssistantContext3];
  [(COSPaymentExpressSetupManager *)self setExpressController:v10];

  objc_initWeak(&location, self);
  expressController = [(COSPaymentExpressSetupManager *)self expressController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C87D0;
  v13[3] = &unk_10026B250;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [expressController expressSetupProvisioningContext:v13];

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
  expressPassesQueue = [(COSPaymentExpressSetupManager *)self expressPassesQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C8BB8;
  v6[3] = &unk_10026B278;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(expressPassesQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)passSnapshotForCredential:(id)credential
{
  credentialCopy = credential;
  provisioningContext = [(COSPaymentExpressSetupManager *)self provisioningContext];
  v6 = [provisioningContext passSnapshotForCredential:credentialCopy];

  return v6;
}

- (void)expressSetupAssistantViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  expressController = [(COSPaymentExpressSetupManager *)self expressController];
  provisioningContext = [(COSPaymentExpressSetupManager *)self provisioningContext];
  [expressController expressSetupFlowForSetupProvisioningContext:provisioningContext withCompletion:completionCopy];
}

- (CGSize)setupAssistantCredentialCardArtSize
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setupAssistantCredentialUpdatedCardArt:(id)art
{
  artCopy = art;
  delegate = [(COSPaymentExpressSetupManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(COSPaymentExpressSetupManager *)self delegate];
    [delegate2 paymentExpressSetupManager:self didUpdateCardArtForSetupAssistantCredential:artCopy];
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  flowCopy = flow;
  delegate = [(COSPaymentExpressSetupManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(COSPaymentExpressSetupManager *)self delegate];
    [delegate2 paymentExpressSetupManager:self viewControllerDidTerminateSetupFlow:flowCopy];
  }
}

- (void)peerPaymentAddAssociatedAccountViewController:(id)controller didFinishWithSuccess:(BOOL)success updatedPeerPaymentAccount:(id)account
{
  successCopy = success;
  controllerCopy = controller;
  accountCopy = account;
  delegate = [(COSPaymentExpressSetupManager *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(COSPaymentExpressSetupManager *)self delegate];
    [delegate2 paymentExpressSetupManager:self peerPaymentAddAssociatedAccountViewController:controllerCopy didFinishWithSuccess:successCopy updatedPeerPaymentAccount:accountCopy];
  }
}

- (void)peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:(id)setup
{
  setupCopy = setup;
  delegate = [(COSPaymentExpressSetupManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(COSPaymentExpressSetupManager *)self delegate];
    [delegate2 paymentExpressSetupManager:self peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:setupCopy];
  }
}

- (COSPaymentExpressSetupManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
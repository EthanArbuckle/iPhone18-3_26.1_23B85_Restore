@interface SKRemoteAccountPageViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (SKAccountPageViewController)accountPageViewController;
- (id)disconnect;
- (void)didFinishLoading;
- (void)didPrepareWithResult:(id)a3 error:(id)a4;
- (void)dismissBridgedViewController;
- (void)dismissViewControllerWithResult:(id)a3 error:(id)a4;
- (void)financeInterruptionResolved:(BOOL)a3;
- (void)overrideCreditCardPresentationWithCompletion:(id)a3;
- (void)overrideRedeemCameraPerformAction:(int64_t)a3 withObject:(id)a4;
- (void)overrideRedeemCameraWithCompletion:(id)a3;
- (void)popBridgedViewControllersToIndex:(unint64_t)a3;
- (void)presentBridgedViewController;
- (void)pushBridgedViewControllerAnimated:(BOOL)a3 options:(id)a4;
- (void)setAccountPageViewController:(id)a3;
- (void)setBridgedNavigationItemWithOptions:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SKRemoteAccountPageViewController

+ (id)exportedInterface
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29ED200];
  v3 = MEMORY[0x1E695DFD8];
  getSKUIRedeemClass();
  v7[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_overrideRedeemCameraWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)serviceViewControllerInterface
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2A06538];
  v3 = MEMORY[0x1E695DFD8];
  getSKUIRedeemClass();
  v7[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_performRedeemOperationWithCode_cameraRecognized_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _dismissViewControllerWithResult:0 error:v4];
}

- (void)didPrepareWithResult:(id)a3 error:(id)a4
{
  v11 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);

  if (WeakRetained)
  {
    pendingPrepareError = objc_loadWeakRetained(&self->_accountPageViewController);
    [pendingPrepareError _didPrepareWithResult:objc_msgSend(v11 error:{"BOOLValue"), v7}];
  }

  else
  {
    objc_storeStrong(&self->_pendingPrepareResult, a3);
    v10 = v7;
    pendingPrepareError = self->_pendingPrepareError;
    self->_pendingPrepareError = v10;
  }
}

- (void)setAccountPageViewController:(id)a3
{
  objc_storeWeak(&self->_accountPageViewController, a3);
  if (*&self->_pendingPrepareResult != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
    [WeakRetained _didPrepareWithResult:-[NSNumber BOOLValue](self->_pendingPrepareResult error:{"BOOLValue"), self->_pendingPrepareError}];

    pendingPrepareResult = self->_pendingPrepareResult;
    self->_pendingPrepareResult = 0;

    pendingPrepareError = self->_pendingPrepareError;
    self->_pendingPrepareError = 0;
  }
}

- (void)didFinishLoading
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _didFinishLoading];
}

- (void)dismissViewControllerWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  v8 = [v7 BOOLValue];

  [WeakRetained _dismissViewControllerWithResult:v8 error:v6];
}

- (void)financeInterruptionResolved:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _financeInterruptionResolved:v3];
}

- (void)overrideCreditCardPresentationWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _overrideCreditCardPresentationWithCompletion:v4];
}

- (void)overrideRedeemCameraPerformAction:(int64_t)a3 withObject:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _overrideRedeemCameraPerformAction:a3 withObject:v6];
}

- (void)overrideRedeemCameraWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _overrideRedeemCameraWithCompletion:v4];
}

- (void)setBridgedNavigationItemWithOptions:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _setBridgedNavigationItemWithOptions:v4];
}

- (void)pushBridgedViewControllerAnimated:(BOOL)a3 options:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _pushBridgedViewControllerAnimated:v4 options:v6];
}

- (void)popBridgedViewControllersToIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _popBridgedViewControllersToIndex:a3];
}

- (void)presentBridgedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _presentBridgedViewController];
}

- (void)dismissBridgedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _dismissBridgedViewController];
}

- (id)disconnect
{
  v3 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v3 dismissPresentingBridgedViewController];
  v6.receiver = self;
  v6.super_class = SKRemoteAccountPageViewController;
  v4 = [(_UIRemoteViewController *)&v6 disconnect];

  return v4;
}

- (SKAccountPageViewController)accountPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);

  return WeakRetained;
}

@end
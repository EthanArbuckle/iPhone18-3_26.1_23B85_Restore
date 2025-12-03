@interface SKRemoteAccountPageViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (SKAccountPageViewController)accountPageViewController;
- (id)disconnect;
- (void)didFinishLoading;
- (void)didPrepareWithResult:(id)result error:(id)error;
- (void)dismissBridgedViewController;
- (void)dismissViewControllerWithResult:(id)result error:(id)error;
- (void)financeInterruptionResolved:(BOOL)resolved;
- (void)overrideCreditCardPresentationWithCompletion:(id)completion;
- (void)overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object;
- (void)overrideRedeemCameraWithCompletion:(id)completion;
- (void)popBridgedViewControllersToIndex:(unint64_t)index;
- (void)presentBridgedViewController;
- (void)pushBridgedViewControllerAnimated:(BOOL)animated options:(id)options;
- (void)setAccountPageViewController:(id)controller;
- (void)setBridgedNavigationItemWithOptions:(id)options;
- (void)viewServiceDidTerminateWithError:(id)error;
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

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _dismissViewControllerWithResult:0 error:errorCopy];
}

- (void)didPrepareWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);

  if (WeakRetained)
  {
    pendingPrepareError = objc_loadWeakRetained(&self->_accountPageViewController);
    [pendingPrepareError _didPrepareWithResult:objc_msgSend(resultCopy error:{"BOOLValue"), errorCopy}];
  }

  else
  {
    objc_storeStrong(&self->_pendingPrepareResult, result);
    v10 = errorCopy;
    pendingPrepareError = self->_pendingPrepareError;
    self->_pendingPrepareError = v10;
  }
}

- (void)setAccountPageViewController:(id)controller
{
  objc_storeWeak(&self->_accountPageViewController, controller);
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

- (void)dismissViewControllerWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  bOOLValue = [resultCopy BOOLValue];

  [WeakRetained _dismissViewControllerWithResult:bOOLValue error:errorCopy];
}

- (void)financeInterruptionResolved:(BOOL)resolved
{
  resolvedCopy = resolved;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _financeInterruptionResolved:resolvedCopy];
}

- (void)overrideCreditCardPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _overrideCreditCardPresentationWithCompletion:completionCopy];
}

- (void)overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object
{
  objectCopy = object;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _overrideRedeemCameraPerformAction:action withObject:objectCopy];
}

- (void)overrideRedeemCameraWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _overrideRedeemCameraWithCompletion:completionCopy];
}

- (void)setBridgedNavigationItemWithOptions:(id)options
{
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _setBridgedNavigationItemWithOptions:optionsCopy];
}

- (void)pushBridgedViewControllerAnimated:(BOOL)animated options:(id)options
{
  animatedCopy = animated;
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _pushBridgedViewControllerAnimated:animatedCopy options:optionsCopy];
}

- (void)popBridgedViewControllersToIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);
  [WeakRetained _popBridgedViewControllersToIndex:index];
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
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy dismissPresentingBridgedViewController];
  v6.receiver = self;
  v6.super_class = SKRemoteAccountPageViewController;
  disconnect = [(_UIRemoteViewController *)&v6 disconnect];

  return disconnect;
}

- (SKAccountPageViewController)accountPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_accountPageViewController);

  return WeakRetained;
}

@end
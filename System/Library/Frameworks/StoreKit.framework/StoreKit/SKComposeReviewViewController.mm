@interface SKComposeReviewViewController
- (SKComposeReviewDelegate)delegate;
- (SKComposeReviewViewController)initWithCompositionURL:(id)a3;
- (SKComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_addRemoteView;
- (void)_didFinishWithResult:(BOOL)a3 error:(id)a4;
- (void)_didPrepareWithResult:(BOOL)a3 error:(id)a4;
- (void)_requestRemoteViewController;
- (void)_tearDownAfterError:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)prepareWithCompletionBlock:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SKComposeReviewViewController

- (SKComposeReviewViewController)initWithCompositionURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKComposeReviewViewController;
  v5 = [(SKComposeReviewViewController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    compositionURL = v5->_compositionURL;
    v5->_compositionURL = v6;
  }

  return v5;
}

- (SKComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SKComposeReviewViewController;
  v4 = [(SKComposeReviewViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A066B8];
    serviceProxy = v4->_serviceProxy;
    v4->_serviceProxy = v5;

    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      [(SKComposeReviewViewController *)v4 setModalPresentationStyle:2];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKRemoteComposeReviewViewController *)self->_remoteViewController setComposeReviewViewController:0];
  [(SKUIServiceComposeReviewViewController *)self->_serviceProxy setInvocationTarget:0];
  v4.receiver = self;
  v4.super_class = SKComposeReviewViewController;
  [(SKComposeReviewViewController *)&v4 dealloc];
}

- (void)prepareWithCompletionBlock:(id)a3
{
  if (self->_prepareBlock)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];

    [v3 raise:v4 format:@"Double prepare"];
  }

  else
  {
    v6 = [a3 copy];
    prepareBlock = self->_prepareBlock;
    self->_prepareBlock = v6;

    [(SKComposeReviewViewController *)self _requestRemoteViewController];
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v3];

  [(SKComposeReviewViewController *)self setView:v4];
  [(SKComposeReviewViewController *)self _addRemoteView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIServiceComposeReviewViewController *)self->_serviceProxy loadReviewWithURL:self->_compositionURL];
  v5.receiver = self;
  v5.super_class = SKComposeReviewViewController;
  [(SKComposeReviewViewController *)&v5 viewDidAppear:v3];
}

- (void)_didFinishWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  if (self->_prepareBlock)
  {

    [(SKComposeReviewViewController *)self _didPrepareWithResult:a3 error:a4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained(&self->_delegate);
    v10 = v8;
    if (v7)
    {
      [v8 reviewComposeViewController:self didFinishSubmitting:v4];
    }

    else
    {
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        return;
      }

      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 reviewComposeViewControllerDidFinish:self];
    }
  }
}

- (void)_didPrepareWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v8 = a4;
  if (v4)
  {
    [(SKComposeReviewViewController *)self _addRemoteView];
  }

  [(SKComposeReviewViewController *)self _endDelayingPresentation];
  prepareBlock = self->_prepareBlock;
  if (prepareBlock)
  {
    prepareBlock[2](prepareBlock, v4, v8);
    v7 = self->_prepareBlock;
    self->_prepareBlock = 0;
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_tearDownAfterError:(id)a3
{
  if (self->_prepareBlock)
  {
    [(SKComposeReviewViewController *)self _didFinishWithResult:0 error:a3];
  }

  else
  {
    [(SKComposeReviewViewController *)self dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_addRemoteView
{
  if (self->_remoteViewController && [(SKComposeReviewViewController *)self isViewLoaded])
  {
    v4 = [(SKComposeReviewViewController *)self view];
    v3 = [(SKRemoteComposeReviewViewController *)self->_remoteViewController view];
    [v4 bounds];
    [v3 setFrame:?];
    [v3 setAutoresizingMask:18];
    [v4 addSubview:v3];
  }
}

- (void)_requestRemoteViewController
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SKComposeReviewViewController__requestRemoteViewController__block_invoke;
  v6[3] = &unk_1E7B27A78;
  v6[4] = self;
  [(SKComposeReviewViewController *)self _beginDelayingPresentation:v6 cancellationHandler:10.0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SKComposeReviewViewController__requestRemoteViewController__block_invoke_2;
  v5[3] = &unk_1E7B27C90;
  v5[4] = self;
  v3 = [SKRemoteComposeReviewViewController requestViewController:@"ServiceComposeReviewViewController" fromServiceWithBundleIdentifier:@"com.apple.ios.StoreKitUIService" connectionHandler:v5];
  cancelRequest = self->_cancelRequest;
  self->_cancelRequest = v3;
}

uint64_t __61__SKComposeReviewViewController__requestRemoteViewController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError();
  [v1 _didPrepareWithResult:0 error:v2];

  return 0;
}

void __61__SKComposeReviewViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  if (v12)
  {
    objc_storeStrong((*(a1 + 32) + 1016), a2);
    [*(*(a1 + 32) + 1016) setComposeReviewViewController:?];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1024);
    v9 = [*(v7 + 1016) serviceViewControllerProxy];
    [v8 setInvocationTarget:v9];

    [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1016)];
  }

  else
  {
    NSLog(&cfstr_CouldNotReques.isa, v6);
    [*(a1 + 32) _didPrepareWithResult:0 error:v6];
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    [*(a1 + 32) _endDelayingPresentation];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 992);
  *(v10 + 992) = 0;
}

- (SKComposeReviewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
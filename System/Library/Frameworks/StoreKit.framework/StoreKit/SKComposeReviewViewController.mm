@interface SKComposeReviewViewController
- (SKComposeReviewDelegate)delegate;
- (SKComposeReviewViewController)initWithCompositionURL:(id)l;
- (SKComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_addRemoteView;
- (void)_didFinishWithResult:(BOOL)result error:(id)error;
- (void)_didPrepareWithResult:(BOOL)result error:(id)error;
- (void)_requestRemoteViewController;
- (void)_tearDownAfterError:(id)error;
- (void)dealloc;
- (void)loadView;
- (void)prepareWithCompletionBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SKComposeReviewViewController

- (SKComposeReviewViewController)initWithCompositionURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SKComposeReviewViewController;
  v5 = [(SKComposeReviewViewController *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    compositionURL = v5->_compositionURL;
    v5->_compositionURL = v6;
  }

  return v5;
}

- (SKComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = SKComposeReviewViewController;
  v4 = [(SKComposeReviewViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[SKInvocationQueueProxy alloc] initWithProtocol:&unk_1F2A066B8];
    serviceProxy = v4->_serviceProxy;
    v4->_serviceProxy = v5;

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(SKComposeReviewViewController *)v4 setModalPresentationStyle:2];
    }
  }

  return v4;
}

- (void)dealloc
{
  invoke = [(_UIAsyncInvocation *)self->_cancelRequest invoke];
  [(SKRemoteComposeReviewViewController *)self->_remoteViewController setComposeReviewViewController:0];
  [(SKUIServiceComposeReviewViewController *)self->_serviceProxy setInvocationTarget:0];
  v4.receiver = self;
  v4.super_class = SKComposeReviewViewController;
  [(SKComposeReviewViewController *)&v4 dealloc];
}

- (void)prepareWithCompletionBlock:(id)block
{
  if (self->_prepareBlock)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];

    [v3 raise:v4 format:@"Double prepare"];
  }

  else
  {
    v6 = [block copy];
    prepareBlock = self->_prepareBlock;
    self->_prepareBlock = v6;

    [(SKComposeReviewViewController *)self _requestRemoteViewController];
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [(SKComposeReviewViewController *)self setView:v4];
  [(SKComposeReviewViewController *)self _addRemoteView];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIServiceComposeReviewViewController *)self->_serviceProxy loadReviewWithURL:self->_compositionURL];
  v5.receiver = self;
  v5.super_class = SKComposeReviewViewController;
  [(SKComposeReviewViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)_didFinishWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  if (self->_prepareBlock)
  {

    [(SKComposeReviewViewController *)self _didPrepareWithResult:result error:error];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained(&self->_delegate);
    v10 = v8;
    if (v7)
    {
      [v8 reviewComposeViewController:self didFinishSubmitting:resultCopy];
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

- (void)_didPrepareWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    [(SKComposeReviewViewController *)self _addRemoteView];
  }

  [(SKComposeReviewViewController *)self _endDelayingPresentation];
  prepareBlock = self->_prepareBlock;
  if (prepareBlock)
  {
    prepareBlock[2](prepareBlock, resultCopy, errorCopy);
    v7 = self->_prepareBlock;
    self->_prepareBlock = 0;
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_tearDownAfterError:(id)error
{
  if (self->_prepareBlock)
  {
    [(SKComposeReviewViewController *)self _didFinishWithResult:0 error:error];
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
    view = [(SKComposeReviewViewController *)self view];
    view2 = [(SKRemoteComposeReviewViewController *)self->_remoteViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
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
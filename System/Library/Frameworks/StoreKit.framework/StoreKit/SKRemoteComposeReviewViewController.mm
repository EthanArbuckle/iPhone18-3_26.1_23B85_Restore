@interface SKRemoteComposeReviewViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (SKComposeReviewViewController)composeReviewViewController;
- (SKRemoteComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_keyboardVisibilityDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)didFinishWithResult:(id)result error:(id)error;
- (void)didPrepareWithResult:(id)result error:(id)error;
- (void)promptForStarRating;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SKRemoteComposeReviewViewController

- (SKRemoteComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SKRemoteComposeReviewViewController;
  v4 = [(SKRemoteComposeReviewViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x1E69DDF70] object:0];
    [defaultCenter addObserver:v4 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x1E69DDF78] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  v4.receiver = self;
  v4.super_class = SKRemoteComposeReviewViewController;
  [(SKRemoteComposeReviewViewController *)&v4 dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  LOBYTE(orientation) = [WeakRetained shouldAutorotateToInterfaceOrientation:orientation];

  return orientation;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  [WeakRetained _tearDownAfterError:errorCopy];
}

- (void)_keyboardVisibilityDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v25 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

  if (v25)
  {
    view = [(SKRemoteComposeReviewViewController *)self view];
    [v25 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow = [mEMORY[0x1E69DC668] keyWindow];
    [view convertRect:keyWindow fromView:{v7, v9, v11, v13}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v17 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
  }

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy clientKeyboardFrameChanged:{v17, v19, v21, v23}];
}

- (void)didFinishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  bOOLValue = [resultCopy BOOLValue];

  [WeakRetained _didFinishWithResult:bOOLValue error:errorCopy];
}

- (void)didPrepareWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  bOOLValue = [resultCopy BOOLValue];

  [WeakRetained _didPrepareWithResult:bOOLValue error:errorCopy];
}

- (void)promptForStarRating
{
  objc_initWeak(&location, self);
  v3 = +[SKStarRatingAlertController starRatingAlertController];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __58__SKRemoteComposeReviewViewController_promptForStarRating__block_invoke;
  v7 = &unk_1E7B28668;
  objc_copyWeak(&v8, &location);
  [v3 setCompletion:&v4];
  [(SKRemoteComposeReviewViewController *)self presentViewController:v3 animated:1 completion:0, v4, v5, v6, v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __58__SKRemoteComposeReviewViewController_promptForStarRating__block_invoke(uint64_t a1, char a2, float a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained serviceViewControllerProxy];
  v7 = v5;
  if (a2)
  {
    *&v6 = a3;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    [v7 finishStarRatingPromptWithRating:v8];
  }

  else
  {
    [v5 finishStarRatingPromptWithRating:0];
  }
}

- (SKComposeReviewViewController)composeReviewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);

  return WeakRetained;
}

@end
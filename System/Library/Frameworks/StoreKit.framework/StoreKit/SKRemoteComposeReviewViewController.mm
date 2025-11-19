@interface SKRemoteComposeReviewViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (SKComposeReviewViewController)composeReviewViewController;
- (SKRemoteComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_keyboardVisibilityDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)didFinishWithResult:(id)a3 error:(id)a4;
- (void)didPrepareWithResult:(id)a3 error:(id)a4;
- (void)promptForStarRating;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SKRemoteComposeReviewViewController

- (SKRemoteComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKRemoteComposeReviewViewController;
  v4 = [(SKRemoteComposeReviewViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x1E69DDF70] object:0];
    [v5 addObserver:v4 selector:sel__keyboardVisibilityDidChangeNotification_ name:*MEMORY[0x1E69DDF78] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];

  v4.receiver = self;
  v4.super_class = SKRemoteComposeReviewViewController;
  [(SKRemoteComposeReviewViewController *)&v4 dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  LOBYTE(a3) = [WeakRetained shouldAutorotateToInterfaceOrientation:a3];

  return a3;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  [WeakRetained _tearDownAfterError:v4];
}

- (void)_keyboardVisibilityDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v25 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  if (v25)
  {
    v5 = [(SKRemoteComposeReviewViewController *)self view];
    [v25 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    v15 = [v14 keyWindow];
    [v5 convertRect:v15 fromView:{v7, v9, v11, v13}];
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

  v24 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v24 clientKeyboardFrameChanged:{v17, v19, v21, v23}];
}

- (void)didFinishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  v8 = [v7 BOOLValue];

  [WeakRetained _didFinishWithResult:v8 error:v6];
}

- (void)didPrepareWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_composeReviewViewController);
  v8 = [v7 BOOLValue];

  [WeakRetained _didPrepareWithResult:v8 error:v6];
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
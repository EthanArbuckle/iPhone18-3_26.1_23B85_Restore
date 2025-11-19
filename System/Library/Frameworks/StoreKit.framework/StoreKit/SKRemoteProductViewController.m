@interface SKRemoteProductViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (SKStoreProductViewController)productViewController;
- (void)didFinish;
- (void)didFinishDismissal;
- (void)didFinishWithResult:(id)a3;
- (void)didReceiveTitle:(id)a3;
- (void)loadDidFinishWithResult:(id)a3 error:(id)a4;
- (void)presentPageWithRequest:(id)a3 animated:(id)a4;
- (void)promptForStarRating;
- (void)setStatusBarHidden:(id)a3 withAnimation:(id)a4;
- (void)setStatusBarStyle:(id)a3 animated:(id)a4;
- (void)userDidInteractWithProduct:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SKRemoteProductViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  LOBYTE(a3) = [WeakRetained shouldAutorotateToInterfaceOrientation:a3];

  return a3;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  [WeakRetained _resetRemoteViewController];
}

- (void)didFinish
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  [WeakRetained _didFinish];
}

- (void)didFinishDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  [WeakRetained _didFinishDismissal];
}

- (void)didFinishWithResult:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  v5 = [v4 integerValue];

  [WeakRetained _didFinishWithResult:v5];
}

- (void)userDidInteractWithProduct:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  v5 = [v4 integerValue];

  [WeakRetained _userDidInteractWithProduct:v5];
}

- (void)didReceiveTitle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  [WeakRetained setTitle:v4];
}

- (void)loadDidFinishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  v8 = [v7 BOOLValue];

  [WeakRetained _loadDidFinishWithResult:v8 error:v6];
}

- (void)presentPageWithRequest:(id)a3 animated:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [[SKStorePageRequest alloc] initWithXPCEncoding:v7];

  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  v9 = [v6 BOOLValue];

  [WeakRetained _presentPageWithRequest:v10 animated:v9];
}

- (void)promptForStarRating
{
  objc_initWeak(&location, self);
  v3 = +[SKStarRatingAlertController starRatingAlertController];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __52__SKRemoteProductViewController_promptForStarRating__block_invoke;
  v7 = &unk_1E7B28668;
  objc_copyWeak(&v8, &location);
  [v3 setCompletion:&v4];
  [(SKRemoteProductViewController *)self presentViewController:v3 animated:1 completion:0, v4, v5, v6, v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __52__SKRemoteProductViewController_promptForStarRating__block_invoke(uint64_t a1, char a2, float a3)
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

- (void)setStatusBarHidden:(id)a3 withAnimation:(id)a4
{
  v5 = MEMORY[0x1E69DC668];
  v6 = a4;
  v7 = a3;
  v10 = [v5 sharedApplication];
  v8 = [v7 BOOLValue];

  v9 = [v6 integerValue];
  [v10 setStatusBarHidden:v8 withAnimation:v9];
}

- (void)setStatusBarStyle:(id)a3 animated:(id)a4
{
  v5 = MEMORY[0x1E69DC668];
  v6 = a4;
  v7 = a3;
  v10 = [v5 sharedApplication];
  v8 = [v7 integerValue];

  v9 = [v6 BOOLValue];
  [v10 setStatusBarStyle:v8 animated:v9];
}

- (SKStoreProductViewController)productViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);

  return WeakRetained;
}

@end
@interface SKRemoteProductViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (SKStoreProductViewController)productViewController;
- (void)didFinish;
- (void)didFinishDismissal;
- (void)didFinishWithResult:(id)result;
- (void)didReceiveTitle:(id)title;
- (void)loadDidFinishWithResult:(id)result error:(id)error;
- (void)presentPageWithRequest:(id)request animated:(id)animated;
- (void)promptForStarRating;
- (void)setStatusBarHidden:(id)hidden withAnimation:(id)animation;
- (void)setStatusBarStyle:(id)style animated:(id)animated;
- (void)userDidInteractWithProduct:(id)product;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SKRemoteProductViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  LOBYTE(orientation) = [WeakRetained shouldAutorotateToInterfaceOrientation:orientation];

  return orientation;
}

- (void)viewServiceDidTerminateWithError:(id)error
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

- (void)didFinishWithResult:(id)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  integerValue = [resultCopy integerValue];

  [WeakRetained _didFinishWithResult:integerValue];
}

- (void)userDidInteractWithProduct:(id)product
{
  productCopy = product;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  integerValue = [productCopy integerValue];

  [WeakRetained _userDidInteractWithProduct:integerValue];
}

- (void)didReceiveTitle:(id)title
{
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  [WeakRetained setTitle:titleCopy];
}

- (void)loadDidFinishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  bOOLValue = [resultCopy BOOLValue];

  [WeakRetained _loadDidFinishWithResult:bOOLValue error:errorCopy];
}

- (void)presentPageWithRequest:(id)request animated:(id)animated
{
  animatedCopy = animated;
  requestCopy = request;
  v10 = [[SKStorePageRequest alloc] initWithXPCEncoding:requestCopy];

  WeakRetained = objc_loadWeakRetained(&self->_productViewController);
  bOOLValue = [animatedCopy BOOLValue];

  [WeakRetained _presentPageWithRequest:v10 animated:bOOLValue];
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

- (void)setStatusBarHidden:(id)hidden withAnimation:(id)animation
{
  v5 = MEMORY[0x1E69DC668];
  animationCopy = animation;
  hiddenCopy = hidden;
  sharedApplication = [v5 sharedApplication];
  bOOLValue = [hiddenCopy BOOLValue];

  integerValue = [animationCopy integerValue];
  [sharedApplication setStatusBarHidden:bOOLValue withAnimation:integerValue];
}

- (void)setStatusBarStyle:(id)style animated:(id)animated
{
  v5 = MEMORY[0x1E69DC668];
  animatedCopy = animated;
  styleCopy = style;
  sharedApplication = [v5 sharedApplication];
  integerValue = [styleCopy integerValue];

  bOOLValue = [animatedCopy BOOLValue];
  [sharedApplication setStatusBarStyle:integerValue animated:bOOLValue];
}

- (SKStoreProductViewController)productViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productViewController);

  return WeakRetained;
}

@end
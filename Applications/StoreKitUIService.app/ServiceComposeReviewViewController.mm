@interface ServiceComposeReviewViewController
- (BOOL)composeReviewViewController:(id)a3 shouldSubmitReview:(id)a4;
- (void)_dismissWithError:(id)a3;
- (void)_presentAlertForDialog:(id)a3;
- (void)_willAppearInRemoteViewController;
- (void)alertController:(id)a3 alertDidFinishWithButton:(id)a4;
- (void)clientKeyboardFrameChanged:(CGRect)a3;
- (void)composeReviewViewController:(id)a3 didFailWithDialog:(id)a4;
- (void)composeReviewViewControllerDidSubmit:(id)a3;
- (void)dealloc;
- (void)finishStarRatingPromptWithRating:(id)a3;
- (void)loadReviewWithURL:(id)a3;
- (void)loadView;
@end

@implementation ServiceComposeReviewViewController

- (void)dealloc
{
  [(ServiceAlertController *)self->_alertController setDelegate:0];
  [(SKUIComposeReviewViewController *)self->_underlyingViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = ServiceComposeReviewViewController;
  [(ServiceComposeReviewViewController *)&v3 dealloc];
}

- (void)loadView
{
  v8 = objc_alloc_init(UIView);
  underlyingViewController = self->_underlyingViewController;
  if (!underlyingViewController)
  {
    v4 = objc_alloc_init(SKUIComposeReviewViewController);
    v5 = self->_underlyingViewController;
    self->_underlyingViewController = v4;

    [(SKUIComposeReviewViewController *)self->_underlyingViewController setDelegate:self];
    v6 = objc_alloc_init(SUClientInterface);
    [(SKUIComposeReviewViewController *)self->_underlyingViewController setClientInterface:v6];
    [(ServiceComposeReviewViewController *)self addChildViewController:self->_underlyingViewController];

    underlyingViewController = self->_underlyingViewController;
  }

  v7 = [(SKUIComposeReviewViewController *)underlyingViewController view];
  [v7 setAutoresizingMask:18];
  [v8 bounds];
  [v7 setFrame:?];
  [v8 addSubview:v7];
  [(ServiceComposeReviewViewController *)self setView:v8];
}

- (void)_willAppearInRemoteViewController
{
  v9 = 0u;
  v10 = 0u;
  [(ServiceComposeReviewViewController *)self _hostAuditToken];
  v7 = v9;
  v8 = v10;
  if (sub_10000D270(&v7, @"com.apple.ios.StoreKit.compose-review") || (v7 = v9, v8 = v10, sub_10000D270(&v7, kSSITunesStorePrivateEntitlement)))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = SSError();
    v4 = 0;
  }

  v5 = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
  v6 = [NSNumber numberWithBool:v4];
  [v5 didPrepareWithResult:v6 error:v3];
}

- (void)alertController:(id)a3 alertDidFinishWithButton:(id)a4
{
  if (self->_dismissAfterDialog)
  {
    self->_dismissAfterDialog = 0;
    [(ServiceComposeReviewViewController *)self _dismissWithError:0, a4];
  }
}

- (void)composeReviewViewController:(id)a3 didFailWithDialog:(id)a4
{
  if (a4)
  {
    self->_dismissAfterDialog = 1;
    [(ServiceComposeReviewViewController *)self _presentAlertForDialog:a4];
  }

  else
  {
    [(ServiceComposeReviewViewController *)self _dismissWithError:0];
  }
}

- (BOOL)composeReviewViewController:(id)a3 shouldSubmitReview:(id)a4
{
  [a4 rating];
  v6 = v5;
  if (v5 < 0.00000011921)
  {
    v7 = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
    [v7 promptForStarRating];
  }

  return v6 >= 0.00000011921;
}

- (void)composeReviewViewControllerDidSubmit:(id)a3
{
  v4 = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
  v3 = [NSNumber numberWithBool:1];
  [v4 didFinishWithResult:v3 error:0];
}

- (void)finishStarRatingPromptWithRating:(id)a3
{
  if (a3)
  {
    underlyingViewController = self->_underlyingViewController;
    [a3 floatValue];
    [(SKUIComposeReviewViewController *)underlyingViewController setRating:?];
    v5 = self->_underlyingViewController;

    [(SKUIComposeReviewViewController *)v5 submitReview];
  }
}

- (void)loadReviewWithURL:(id)a3
{
  v4 = a3;
  v5 = [SSWeakReference weakReferenceWithObject:self];
  underlyingViewController = self->_underlyingViewController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023550;
  v8[3] = &unk_100051E30;
  v9 = v5;
  v7 = v5;
  [(SKUIComposeReviewViewController *)underlyingViewController loadReviewWithURL:v4 completionBlock:v8];
}

- (void)clientKeyboardFrameChanged:(CGRect)a3
{
  v3 = [NSValue valueWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = SKUIRemoteKeyboardFrameChangedNotification;
    v7 = SKUIRemoteKeyboardFrameKey;
    v8 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [v4 postNotificationName:v5 object:0 userInfo:v6];
  }
}

- (void)_dismissWithError:(id)a3
{
  v4 = a3;
  v6 = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
  v5 = [NSNumber numberWithBool:0];
  [v6 didFinishWithResult:v5 error:v4];
}

- (void)_presentAlertForDialog:(id)a3
{
  v4 = a3;
  alertController = self->_alertController;
  v10 = v4;
  if (!alertController)
  {
    v6 = [ServiceAlertController alloc];
    v7 = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
    v8 = [(ServiceAlertController *)v6 initWithRemoteViewControllerProxy:v7];
    v9 = self->_alertController;
    self->_alertController = v8;

    [(ServiceAlertController *)self->_alertController setDelegate:self];
    v4 = v10;
    alertController = self->_alertController;
  }

  [(ServiceAlertController *)alertController presentAlertForDialog:v4];
}

@end
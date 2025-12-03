@interface ServiceComposeReviewViewController
- (BOOL)composeReviewViewController:(id)controller shouldSubmitReview:(id)review;
- (void)_dismissWithError:(id)error;
- (void)_presentAlertForDialog:(id)dialog;
- (void)_willAppearInRemoteViewController;
- (void)alertController:(id)controller alertDidFinishWithButton:(id)button;
- (void)clientKeyboardFrameChanged:(CGRect)changed;
- (void)composeReviewViewController:(id)controller didFailWithDialog:(id)dialog;
- (void)composeReviewViewControllerDidSubmit:(id)submit;
- (void)dealloc;
- (void)finishStarRatingPromptWithRating:(id)rating;
- (void)loadReviewWithURL:(id)l;
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

  view = [(SKUIComposeReviewViewController *)underlyingViewController view];
  [view setAutoresizingMask:18];
  [v8 bounds];
  [view setFrame:?];
  [v8 addSubview:view];
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

  _clientViewControllerProxy = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
  v6 = [NSNumber numberWithBool:v4];
  [_clientViewControllerProxy didPrepareWithResult:v6 error:v3];
}

- (void)alertController:(id)controller alertDidFinishWithButton:(id)button
{
  if (self->_dismissAfterDialog)
  {
    self->_dismissAfterDialog = 0;
    [(ServiceComposeReviewViewController *)self _dismissWithError:0, button];
  }
}

- (void)composeReviewViewController:(id)controller didFailWithDialog:(id)dialog
{
  if (dialog)
  {
    self->_dismissAfterDialog = 1;
    [(ServiceComposeReviewViewController *)self _presentAlertForDialog:dialog];
  }

  else
  {
    [(ServiceComposeReviewViewController *)self _dismissWithError:0];
  }
}

- (BOOL)composeReviewViewController:(id)controller shouldSubmitReview:(id)review
{
  [review rating];
  v6 = v5;
  if (v5 < 0.00000011921)
  {
    _clientViewControllerProxy = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
    [_clientViewControllerProxy promptForStarRating];
  }

  return v6 >= 0.00000011921;
}

- (void)composeReviewViewControllerDidSubmit:(id)submit
{
  _clientViewControllerProxy = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
  v3 = [NSNumber numberWithBool:1];
  [_clientViewControllerProxy didFinishWithResult:v3 error:0];
}

- (void)finishStarRatingPromptWithRating:(id)rating
{
  if (rating)
  {
    underlyingViewController = self->_underlyingViewController;
    [rating floatValue];
    [(SKUIComposeReviewViewController *)underlyingViewController setRating:?];
    v5 = self->_underlyingViewController;

    [(SKUIComposeReviewViewController *)v5 submitReview];
  }
}

- (void)loadReviewWithURL:(id)l
{
  lCopy = l;
  v5 = [SSWeakReference weakReferenceWithObject:self];
  underlyingViewController = self->_underlyingViewController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023550;
  v8[3] = &unk_100051E30;
  v9 = v5;
  v7 = v5;
  [(SKUIComposeReviewViewController *)underlyingViewController loadReviewWithURL:lCopy completionBlock:v8];
}

- (void)clientKeyboardFrameChanged:(CGRect)changed
{
  v3 = [NSValue valueWithRect:changed.origin.x, changed.origin.y, changed.size.width, changed.size.height];
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

- (void)_dismissWithError:(id)error
{
  errorCopy = error;
  _clientViewControllerProxy = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
  v5 = [NSNumber numberWithBool:0];
  [_clientViewControllerProxy didFinishWithResult:v5 error:errorCopy];
}

- (void)_presentAlertForDialog:(id)dialog
{
  dialogCopy = dialog;
  alertController = self->_alertController;
  v10 = dialogCopy;
  if (!alertController)
  {
    v6 = [ServiceAlertController alloc];
    _clientViewControllerProxy = [(ServiceComposeReviewViewController *)self _clientViewControllerProxy];
    v8 = [(ServiceAlertController *)v6 initWithRemoteViewControllerProxy:_clientViewControllerProxy];
    v9 = self->_alertController;
    self->_alertController = v8;

    [(ServiceAlertController *)self->_alertController setDelegate:self];
    dialogCopy = v10;
    alertController = self->_alertController;
  }

  [(ServiceAlertController *)alertController presentAlertForDialog:dialogCopy];
}

@end
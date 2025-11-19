@interface VSASDDialogObserver
- (UIViewController)presenterViewController;
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)startListening;
- (void)stopListening;
@end

@implementation VSASDDialogObserver

- (void)startListening
{
  v3 = +[ASDNotificationCenter defaultCenter];
  [v3 setDialogObserver:self];
}

- (void)stopListening
{
  v2 = +[ASDNotificationCenter defaultCenter];
  [v2 setDialogObserver:0];
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = v6;
  v9 = v7;
  VSPerformBlockOnMainThread();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = v6;
  v9 = v7;
  VSPerformBlockOnMainThread();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (UIViewController)presenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);

  return WeakRetained;
}

@end
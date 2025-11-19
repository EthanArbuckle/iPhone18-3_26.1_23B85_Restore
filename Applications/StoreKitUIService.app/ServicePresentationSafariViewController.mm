@interface ServicePresentationSafariViewController
- (ServiceBridgedPresentationControllerProxy)proxyHandler;
- (ServicePresentationSafariViewController)initWithSafariViewController:(id)a3 proxyHandler:(id)a4;
- (void)_setChildViewController:(id)a3;
- (void)loadView;
@end

@implementation ServicePresentationSafariViewController

- (ServicePresentationSafariViewController)initWithSafariViewController:(id)a3 proxyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ServicePresentationSafariViewController;
  v8 = [(ServicePresentationSafariViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_proxyHandler, v7);
    [(ServicePresentationSafariViewController *)v9 setModalPresentationStyle:2];
    [(ServicePresentationSafariViewController *)v9 _setChildViewController:v6];
  }

  return v9;
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  [v4 setOpaque:0];
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];

  [(ServicePresentationSafariViewController *)self setView:v4];
}

- (void)_setChildViewController:(id)a3
{
  v9 = a3;
  [v9 willMoveToParentViewController:self];
  v4 = [v9 view];
  v5 = [(ServicePresentationSafariViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  v6 = [v9 view];
  [v6 setAutoresizingMask:18];

  [(ServicePresentationSafariViewController *)self addChildViewController:v9];
  v7 = [(ServicePresentationSafariViewController *)self view];
  v8 = [v9 view];
  [v7 addSubview:v8];

  [v9 didMoveToParentViewController:self];
}

- (ServiceBridgedPresentationControllerProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end
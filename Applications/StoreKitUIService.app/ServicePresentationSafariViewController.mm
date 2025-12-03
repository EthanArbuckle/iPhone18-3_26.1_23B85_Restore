@interface ServicePresentationSafariViewController
- (ServiceBridgedPresentationControllerProxy)proxyHandler;
- (ServicePresentationSafariViewController)initWithSafariViewController:(id)controller proxyHandler:(id)handler;
- (void)_setChildViewController:(id)controller;
- (void)loadView;
@end

@implementation ServicePresentationSafariViewController

- (ServicePresentationSafariViewController)initWithSafariViewController:(id)controller proxyHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = ServicePresentationSafariViewController;
  v8 = [(ServicePresentationSafariViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_proxyHandler, handlerCopy);
    [(ServicePresentationSafariViewController *)v9 setModalPresentationStyle:2];
    [(ServicePresentationSafariViewController *)v9 _setChildViewController:controllerCopy];
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

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:self];
  view = [controllerCopy view];
  view2 = [(ServicePresentationSafariViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [controllerCopy view];
  [view3 setAutoresizingMask:18];

  [(ServicePresentationSafariViewController *)self addChildViewController:controllerCopy];
  view4 = [(ServicePresentationSafariViewController *)self view];
  view5 = [controllerCopy view];
  [view4 addSubview:view5];

  [controllerCopy didMoveToParentViewController:self];
}

- (ServiceBridgedPresentationControllerProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end
@interface ServicePresentationViewController
- (CGRect)presentationBounds;
- (ServiceBridgedPresentationControllerProxy)proxyHandler;
- (ServicePresentationViewController)initWithChildViewController:(id)controller animated:(BOOL)animated presentationBounds:(CGRect)bounds proxyHandler:(id)handler;
- (void)_correctPopover:(id)popover;
- (void)_presentChildViewController;
- (void)loadView;
@end

@implementation ServicePresentationViewController

- (ServicePresentationViewController)initWithChildViewController:(id)controller animated:(BOOL)animated presentationBounds:(CGRect)bounds proxyHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  controllerCopy = controller;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = ServicePresentationViewController;
  v16 = [(ServicePresentationViewController *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_childViewController, controller);
    v17->_animated = animated;
    v17->_presentationBounds.origin.x = x;
    v17->_presentationBounds.origin.y = y;
    v17->_presentationBounds.size.width = width;
    v17->_presentationBounds.size.height = height;
    objc_storeWeak(&v17->_proxyHandler, handlerCopy);
    [(ServicePresentationViewController *)v17 setModalPresentationStyle:5];
  }

  return v17;
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];

  [v4 setUserInteractionEnabled:0];
  [(ServicePresentationViewController *)self setView:v4];
}

- (void)_presentChildViewController
{
  childViewController = [(ServicePresentationViewController *)self childViewController];
  if (childViewController)
  {
    v4 = childViewController;
    [(ServicePresentationViewController *)self _correctPopover:childViewController];
    [(ServicePresentationViewController *)self presentViewController:v4 animated:[(ServicePresentationViewController *)self animated] completion:0];
  }

  _objc_release_x1();
}

- (void)_correctPopover:(id)popover
{
  rect_8 = [popover popoverPresentationController];
  sourceView = [rect_8 sourceView];
  window = [sourceView window];
  if (rect_8 && sourceView && window)
  {
    superview = [sourceView superview];
    [sourceView frame];
    [superview convertRect:window toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    view = [(ServicePresentationViewController *)self view];
    [view bounds];
    v17 = v16;
    [(ServicePresentationViewController *)self presentationBounds];
    v19 = v8 + v17 - v18;

    view2 = [(ServicePresentationViewController *)self view];
    [view2 bounds];
    v22 = v21;
    [(ServicePresentationViewController *)self presentationBounds];
    v24 = v10 + v22 - v23;

    view3 = [(ServicePresentationViewController *)self view];
    [rect_8 setSourceView:view3];

    [rect_8 sourceRect];
    rect = v26;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v19;
    v39.origin.x = v19;
    v39.origin.y = v24;
    v39.size.width = v12;
    v39.size.height = v14;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v33;
    v40.origin.y = v24;
    v40.size.width = v12;
    v40.size.height = v14;
    MinY = CGRectGetMinY(v40);
    v41.origin.x = rect;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    v42 = CGRectOffset(v41, MinX, MinY);
    [rect_8 setSourceRect:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
  }
}

- (CGRect)presentationBounds
{
  x = self->_presentationBounds.origin.x;
  y = self->_presentationBounds.origin.y;
  width = self->_presentationBounds.size.width;
  height = self->_presentationBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (ServiceBridgedPresentationControllerProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end
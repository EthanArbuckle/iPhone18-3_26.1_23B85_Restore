@interface BCMessageViewControllerProvider
- (BCMessageViewControllerProvider)initWithRequest:(id)request placement:(id)placement style:(int64_t)style messageType:(int64_t)type;
- (BCMessageViewControllerProviderDelegate)delegate;
- (UIViewController)viewController;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
@end

@implementation BCMessageViewControllerProvider

- (BCMessageViewControllerProvider)initWithRequest:(id)request placement:(id)placement style:(int64_t)style messageType:(int64_t)type
{
  requestCopy = request;
  placementCopy = placement;
  v18.receiver = self;
  v18.super_class = BCMessageViewControllerProvider;
  v13 = [(BCMessageViewControllerProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_request, request);
    v15 = [placementCopy copy];
    placement = v14->_placement;
    v14->_placement = v15;

    v14->_userInterfaceStyle = style;
    v14->_messageType = type;
  }

  return v14;
}

- (UIViewController)viewController
{
  if (!self->_viewController)
  {
    style = [(AMSDialogRequest *)self->_request style];
    if (style == &dword_4)
    {
      v4 = [[BCAMSUIBubbleTipViewController alloc] initWithRequest:self->_request placement:self->_placement messageType:self->_messageType];
      [(BCAMSUIBubbleTipViewController *)v4 setDelegate:self];
      if ([(BCMessageViewControllerProvider *)self userInterfaceStyle])
      {
        [(BCAMSUIBubbleTipViewController *)v4 setOverrideUserInterfaceStyle:[(BCMessageViewControllerProvider *)self userInterfaceStyle]];
      }
    }

    else
    {
      if (style != (&dword_0 + 3))
      {
        goto LABEL_8;
      }

      v4 = [[BCAMSUIBannerMessageViewController alloc] initWithRequest:self->_request placement:self->_placement];
      [(BCAMSUIBubbleTipViewController *)v4 setDelegate:self];
    }

    viewController = self->_viewController;
    self->_viewController = v4;
  }

LABEL_8:
  v6 = self->_viewController;

  return v6;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  resultCopy = result;
  controllerCopy = controller;
  originalRequest = [resultCopy originalRequest];
  selectedActionIdentifier = [resultCopy selectedActionIdentifier];
  v9 = [originalRequest locateActionWithIdentifier:selectedActionIdentifier];

  deepLink = [v9 deepLink];

  delegate = [(BCMessageViewControllerProvider *)self delegate];
  v12 = delegate;
  if (deepLink)
  {
    deepLink2 = [v9 deepLink];
    [v12 messageViewController:self didSelectActionWithURL:deepLink2];
  }

  else
  {
    [delegate messageViewControllerDidSelectCancel:self];
  }

  shouldAutomaticallyReportMetrics = [controllerCopy shouldAutomaticallyReportMetrics];
  if ((shouldAutomaticallyReportMetrics & 1) == 0)
  {
    v15 = [AMSEngagement alloc];
    v16 = +[BUBag defaultBag];
    v17 = [v15 initWithBag:v16];
    [v17 handleDialogResult:resultCopy];
  }

  viewController = [(BCMessageViewControllerProvider *)self viewController];
  v19 = BUProtocolCast();

  [v19 reportActionTriggered:v9];
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1741C0;
  v8[3] = &unk_2C7BE8;
  v8[4] = self;
  errorCopy = error;
  v9 = errorCopy;
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_174214;
      block[3] = &unk_2C8398;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (BCMessageViewControllerProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
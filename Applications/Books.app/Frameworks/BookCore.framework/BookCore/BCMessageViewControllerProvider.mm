@interface BCMessageViewControllerProvider
- (BCMessageViewControllerProvider)initWithRequest:(id)a3 placement:(id)a4 style:(int64_t)a5 messageType:(int64_t)a6;
- (BCMessageViewControllerProviderDelegate)delegate;
- (UIViewController)viewController;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
@end

@implementation BCMessageViewControllerProvider

- (BCMessageViewControllerProvider)initWithRequest:(id)a3 placement:(id)a4 style:(int64_t)a5 messageType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = BCMessageViewControllerProvider;
  v13 = [(BCMessageViewControllerProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_request, a3);
    v15 = [v12 copy];
    placement = v14->_placement;
    v14->_placement = v15;

    v14->_userInterfaceStyle = a5;
    v14->_messageType = a6;
  }

  return v14;
}

- (UIViewController)viewController
{
  if (!self->_viewController)
  {
    v3 = [(AMSDialogRequest *)self->_request style];
    if (v3 == &dword_4)
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
      if (v3 != (&dword_0 + 3))
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

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v20 = a4;
  v6 = a3;
  v7 = [v20 originalRequest];
  v8 = [v20 selectedActionIdentifier];
  v9 = [v7 locateActionWithIdentifier:v8];

  v10 = [v9 deepLink];

  v11 = [(BCMessageViewControllerProvider *)self delegate];
  v12 = v11;
  if (v10)
  {
    v13 = [v9 deepLink];
    [v12 messageViewController:self didSelectActionWithURL:v13];
  }

  else
  {
    [v11 messageViewControllerDidSelectCancel:self];
  }

  v14 = [v6 shouldAutomaticallyReportMetrics];
  if ((v14 & 1) == 0)
  {
    v15 = [AMSEngagement alloc];
    v16 = +[BUBag defaultBag];
    v17 = [v15 initWithBag:v16];
    [v17 handleDialogResult:v20];
  }

  v18 = [(BCMessageViewControllerProvider *)self viewController];
  v19 = BUProtocolCast();

  [v19 reportActionTriggered:v9];
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1741C0;
  v8[3] = &unk_2C7BE8;
  v8[4] = self;
  v4 = a4;
  v9 = v4;
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
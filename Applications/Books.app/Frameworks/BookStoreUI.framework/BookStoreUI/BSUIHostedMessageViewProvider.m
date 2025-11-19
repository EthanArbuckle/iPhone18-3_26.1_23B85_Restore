@interface BSUIHostedMessageViewProvider
- (BSUIHostedMessageViewProvider)initWithRequest:(id)a3 identifier:(id)a4 delegate:(id)a5;
- (BSUIHostedMessageViewProviderDelegate)delegate;
- (id)hostedViewProviderCreateViewController;
- (void)_dismiss;
- (void)hostedViewProviderCustomizeViewController:(id)a3 withAnchorPoint:(CGPoint)a4;
- (void)hostedViewProviderDidChangeVisibility:(BOOL)a3 viewController:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4;
- (void)messageViewControllerDidSelectCancel:(id)a3;
@end

@implementation BSUIHostedMessageViewProvider

- (BSUIHostedMessageViewProvider)initWithRequest:(id)a3 identifier:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = BSUIHostedMessageViewProvider;
  v12 = [(BSUIHostedMessageViewProvider *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_identifier, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = [BCMessageViewControllerProvider alloc];
    request = v13->_request;
    v16 = [(TUIHostingIdentifier *)v13->_identifier identifier];
    v17 = [v14 initWithRequest:request placement:v16];
    messageViewControllerProvider = v13->_messageViewControllerProvider;
    v13->_messageViewControllerProvider = v17;

    [(BCMessageViewControllerProvider *)v13->_messageViewControllerProvider setDelegate:v13];
  }

  return v13;
}

- (id)hostedViewProviderCreateViewController
{
  v3 = [(BCMessageViewControllerProvider *)self->_messageViewControllerProvider viewController];
  objc_opt_class();
  v7 = &OBJC_PROTOCOL___BCAMSUITrackable;
  v8 = &OBJC_PROTOCOL___AMSUIMessageViewController;
  v4 = BUClassAndProtocolCast();

  if (v4)
  {
    [v4 setIsOnScreen:{0, &OBJC_PROTOCOL___BCAMSUITrackable, &OBJC_PROTOCOL___AMSUIMessageViewController}];
    [v4 setShouldAutomaticallyReportMetrics:0];
  }

  v5 = [(BCMessageViewControllerProvider *)self->_messageViewControllerProvider viewController:v7];

  return v5;
}

- (void)_dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeProviderForIdentifier:self->_identifier];
}

- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 viewController];
  v9 = [v8 modalPresentationStyle];

  if (v9 == &dword_4 + 3)
  {
    objc_initWeak(&location, self);
    v10 = [v6 viewController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2238C;
    v13[3] = &unk_386F40;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    [v10 dismissViewControllerAnimated:1 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [v7 absoluteString];
    [WeakRetained hostedMessageViewDidTriggerAction:v12];
  }
}

- (void)messageViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = [v4 viewController];
  v6 = [v5 modalPresentationStyle];

  if (v6 == &dword_4 + 3)
  {
    objc_initWeak(&location, self);
    v7 = [v4 viewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_22528;
    v8[3] = &unk_387698;
    objc_copyWeak(&v9, &location);
    [v7 dismissViewControllerAnimated:1 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BSUIHostedMessageViewProvider *)self _dismiss];
  }
}

- (void)hostedViewProviderDidChangeVisibility:(BOOL)a3 viewController:(id)a4
{
  v4 = a3;
  v6 = [(BCMessageViewControllerProvider *)self->_messageViewControllerProvider viewController:a3];
  objc_opt_class();
  v9 = BUClassAndProtocolCast();

  [v9 setIsOnScreen:{v4, &OBJC_PROTOCOL___BCAMSUITrackable, &OBJC_PROTOCOL___AMSUIMessageViewController}];
  if (v4)
  {
    [v9 enqueueImpressionMetrics];
    v7 = [(BSUIHostedMessageViewProvider *)self delegate];
    v8 = [(TUIHostingIdentifier *)self->_identifier identifier];
    [v7 hostedMessageViewDidBecomeVisible:v8];
  }
}

- (void)hostedViewProviderCustomizeViewController:(id)a3 withAnchorPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  objc_opt_class();
  v14 = BUDynamicCast();

  v7 = v14;
  if (v14)
  {
    if (y == 0.0)
    {
      v8 = 0;
      v9 = 0;
    }

    else if (y == 1.0)
    {
      v8 = 1;
      v9 = 1;
    }

    else if (x == 0.0)
    {
      v8 = 0;
      v9 = 2;
    }

    else
    {
      if (x != 1.0)
      {
        goto LABEL_16;
      }

      v8 = 0;
      v9 = 3;
    }

    if (y == 0.0)
    {
      v8 = 1;
    }

    v10 = fabs(x);
    v11 = fabs(y);
    if (v8)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = [[AMSUIBubbleTipInlineAnchorInfo alloc] initWithArrowDirection:v9 relativeArrowOffset:v12];
    [v14 setInlineAnchorInfo:v13];

    v7 = v14;
  }

LABEL_16:
}

- (BSUIHostedMessageViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
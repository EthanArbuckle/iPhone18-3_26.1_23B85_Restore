@interface BSUIHostedMessageViewProvider
- (BSUIHostedMessageViewProvider)initWithRequest:(id)request identifier:(id)identifier delegate:(id)delegate;
- (BSUIHostedMessageViewProviderDelegate)delegate;
- (id)hostedViewProviderCreateViewController;
- (void)_dismiss;
- (void)hostedViewProviderCustomizeViewController:(id)controller withAnchorPoint:(CGPoint)point;
- (void)hostedViewProviderDidChangeVisibility:(BOOL)visibility viewController:(id)controller;
- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l;
- (void)messageViewControllerDidSelectCancel:(id)cancel;
@end

@implementation BSUIHostedMessageViewProvider

- (BSUIHostedMessageViewProvider)initWithRequest:(id)request identifier:(id)identifier delegate:(id)delegate
{
  requestCopy = request;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = BSUIHostedMessageViewProvider;
  v12 = [(BSUIHostedMessageViewProvider *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [BCMessageViewControllerProvider alloc];
    request = v13->_request;
    identifier = [(TUIHostingIdentifier *)v13->_identifier identifier];
    v17 = [v14 initWithRequest:request placement:identifier];
    messageViewControllerProvider = v13->_messageViewControllerProvider;
    v13->_messageViewControllerProvider = v17;

    [(BCMessageViewControllerProvider *)v13->_messageViewControllerProvider setDelegate:v13];
  }

  return v13;
}

- (id)hostedViewProviderCreateViewController
{
  viewController = [(BCMessageViewControllerProvider *)self->_messageViewControllerProvider viewController];
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

- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  viewController = [controllerCopy viewController];
  modalPresentationStyle = [viewController modalPresentationStyle];

  if (modalPresentationStyle == &dword_4 + 3)
  {
    objc_initWeak(&location, self);
    viewController2 = [controllerCopy viewController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2238C;
    v13[3] = &unk_386F40;
    objc_copyWeak(&v15, &location);
    v14 = lCopy;
    [viewController2 dismissViewControllerAnimated:1 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    absoluteString = [lCopy absoluteString];
    [WeakRetained hostedMessageViewDidTriggerAction:absoluteString];
  }
}

- (void)messageViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  viewController = [cancelCopy viewController];
  modalPresentationStyle = [viewController modalPresentationStyle];

  if (modalPresentationStyle == &dword_4 + 3)
  {
    objc_initWeak(&location, self);
    viewController2 = [cancelCopy viewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_22528;
    v8[3] = &unk_387698;
    objc_copyWeak(&v9, &location);
    [viewController2 dismissViewControllerAnimated:1 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BSUIHostedMessageViewProvider *)self _dismiss];
  }
}

- (void)hostedViewProviderDidChangeVisibility:(BOOL)visibility viewController:(id)controller
{
  visibilityCopy = visibility;
  v6 = [(BCMessageViewControllerProvider *)self->_messageViewControllerProvider viewController:visibility];
  objc_opt_class();
  v9 = BUClassAndProtocolCast();

  [v9 setIsOnScreen:{visibilityCopy, &OBJC_PROTOCOL___BCAMSUITrackable, &OBJC_PROTOCOL___AMSUIMessageViewController}];
  if (visibilityCopy)
  {
    [v9 enqueueImpressionMetrics];
    delegate = [(BSUIHostedMessageViewProvider *)self delegate];
    identifier = [(TUIHostingIdentifier *)self->_identifier identifier];
    [delegate hostedMessageViewDidBecomeVisible:identifier];
  }
}

- (void)hostedViewProviderCustomizeViewController:(id)controller withAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
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
@interface _XPCInternalRequestToken
- (ASDSupportedDialogHandlers)supportedDialogHandlers;
- (void)deliverAlertPresentationRequest:(id)request resultHandler:(id)handler;
- (void)deliverAuthenticateRequest:(id)request withResultHandler:(id)handler;
- (void)deliverDialogRequest:(id)request withResultHandler:(id)handler;
- (void)deliverEngagementRequest:(id)request withResultHandler:(id)handler;
- (void)deliverViewPresentationRequest:(id)request resultHandler:(id)handler;
@end

@implementation _XPCInternalRequestToken

- (void)deliverAlertPresentationRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithDescription();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)deliverAuthenticateRequest:(id)request withResultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  options = [requestCopy options];
  proxyAppBundleID = [options proxyAppBundleID];
  if (proxyAppBundleID || ([options proxyAppName], (proxyAppBundleID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    processInfo2 = proxyAppBundleID;
  }

  else
  {
    processInfo = [(_XPCInternalRequestToken *)self processInfo];

    if (!processInfo)
    {
      goto LABEL_5;
    }

    processInfo2 = [(_XPCInternalRequestToken *)self processInfo];
    bundleIdentifier = [processInfo2 bundleIdentifier];
    sub_1002BE938(requestCopy, bundleIdentifier);
  }

LABEL_5:
  v11 = +[BagService appstoredService];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003FA9E0;
  v16[3] = &unk_10051D998;
  v17 = requestCopy;
  v18 = handlerCopy;
  v12 = requestCopy;
  v13 = handlerCopy;
  [v11 recentBagWithCompletionHandler:v16];
}

- (void)deliverDialogRequest:(id)request withResultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];

  present = [v8 present];
  [present addFinishBlock:handlerCopy];
}

- (void)deliverEngagementRequest:(id)request withResultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithDescription();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)deliverViewPresentationRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithDescription();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (ASDSupportedDialogHandlers)supportedDialogHandlers
{
  initForInternalClient = [[ASDSupportedDialogHandlers alloc] initForInternalClient];

  return initForInternalClient;
}

@end
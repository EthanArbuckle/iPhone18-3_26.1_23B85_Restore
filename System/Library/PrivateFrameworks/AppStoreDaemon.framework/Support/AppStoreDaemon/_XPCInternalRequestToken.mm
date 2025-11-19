@interface _XPCInternalRequestToken
- (ASDSupportedDialogHandlers)supportedDialogHandlers;
- (void)deliverAlertPresentationRequest:(id)a3 resultHandler:(id)a4;
- (void)deliverAuthenticateRequest:(id)a3 withResultHandler:(id)a4;
- (void)deliverDialogRequest:(id)a3 withResultHandler:(id)a4;
- (void)deliverEngagementRequest:(id)a3 withResultHandler:(id)a4;
- (void)deliverViewPresentationRequest:(id)a3 resultHandler:(id)a4;
@end

@implementation _XPCInternalRequestToken

- (void)deliverAlertPresentationRequest:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = ASDErrorWithDescription();
  (*(a4 + 2))(v5, 0, v6);
}

- (void)deliverAuthenticateRequest:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 options];
  v9 = [v8 proxyAppBundleID];
  if (v9 || ([v8 proxyAppName], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
  }

  else
  {
    v14 = [(_XPCInternalRequestToken *)self processInfo];

    if (!v14)
    {
      goto LABEL_5;
    }

    v10 = [(_XPCInternalRequestToken *)self processInfo];
    v15 = [v10 bundleIdentifier];
    sub_1002BE938(v6, v15);
  }

LABEL_5:
  v11 = +[BagService appstoredService];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003FA9E0;
  v16[3] = &unk_10051D998;
  v17 = v6;
  v18 = v7;
  v12 = v6;
  v13 = v7;
  [v11 recentBagWithCompletionHandler:v16];
}

- (void)deliverDialogRequest:(id)a3 withResultHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v6];

  v7 = [v8 present];
  [v7 addFinishBlock:v5];
}

- (void)deliverEngagementRequest:(id)a3 withResultHandler:(id)a4
{
  v5 = a4;
  v6 = ASDErrorWithDescription();
  (*(a4 + 2))(v5, 0, v6);
}

- (void)deliverViewPresentationRequest:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = ASDErrorWithDescription();
  (*(a4 + 2))(v5, 0, v6);
}

- (ASDSupportedDialogHandlers)supportedDialogHandlers
{
  v2 = [[ASDSupportedDialogHandlers alloc] initForInternalClient];

  return v2;
}

@end
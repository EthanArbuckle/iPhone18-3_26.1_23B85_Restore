@interface InteractiveRequestPresenter
- (void)presentAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)presentEngagementRequest:(id)request withClientInfo:(id)info resultHandler:(id)handler;
@end

@implementation InteractiveRequestPresenter

- (void)presentAuthenticateRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  if (sub_1002BE7B8(requestCopy))
  {
    +[BagService appstoredSandboxService];
  }

  else
  {
    +[BagService appstoredService];
  }
  v9 = ;
  amsBag = [v9 amsBag];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100311AB0;
  v22 = sub_100311AC0;
  v23 = [[AMSAuthenticateTask alloc] initWithRequest:requestCopy bag:amsBag];
  [v19[5] setDelegate:self];
  performAuthentication = [v19[5] performAuthentication];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003129DC;
  v14[3] = &unk_100522DC0;
  v12 = requestCopy;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  v17 = &v18;
  [performAuthentication addFinishBlock:v14];

  _Block_object_dispose(&v18, 8);
}

- (void)presentEngagementRequest:(id)request withClientInfo:(id)info resultHandler:(id)handler
{
  requestCopy = request;
  infoCopy = info;
  handlerCopy = handler;
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100311AB0;
  v22 = sub_100311AC0;
  v23 = [[AMSSystemEngagementTask alloc] initWithRequest:requestCopy];
  [v19[5] setClientInfo:infoCopy];
  present = [v19[5] present];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10031305C;
  v14[3] = &unk_100522E10;
  v12 = requestCopy;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  v17 = &v18;
  [present addFinishBlock:v14];

  _Block_object_dispose(&v18, 8);
}

@end
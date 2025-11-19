@interface InteractiveRequestPresenter
- (void)presentAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)presentEngagementRequest:(id)a3 withClientInfo:(id)a4 resultHandler:(id)a5;
@end

@implementation InteractiveRequestPresenter

- (void)presentAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  if (sub_1002BE7B8(v6))
  {
    +[BagService appstoredSandboxService];
  }

  else
  {
    +[BagService appstoredService];
  }
  v9 = ;
  v10 = [v9 amsBag];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100311AB0;
  v22 = sub_100311AC0;
  v23 = [[AMSAuthenticateTask alloc] initWithRequest:v6 bag:v10];
  [v19[5] setDelegate:self];
  v11 = [v19[5] performAuthentication];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003129DC;
  v14[3] = &unk_100522DC0;
  v12 = v6;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  v17 = &v18;
  [v11 addFinishBlock:v14];

  _Block_object_dispose(&v18, 8);
}

- (void)presentEngagementRequest:(id)a3 withClientInfo:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100311AB0;
  v22 = sub_100311AC0;
  v23 = [[AMSSystemEngagementTask alloc] initWithRequest:v7];
  [v19[5] setClientInfo:v8];
  v11 = [v19[5] present];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10031305C;
  v14[3] = &unk_100522E10;
  v12 = v7;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  v17 = &v18;
  [v11 addFinishBlock:v14];

  _Block_object_dispose(&v18, 8);
}

@end
@interface CallerRequestPresenter
- (void)presentAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)presentDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)presentEngagementRequest:(id)a3 withClientInfo:(id)a4 resultHandler:(id)a5;
@end

@implementation CallerRequestPresenter

- (void)presentAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  v9 = [(XPCNotificationClient *)self->_notificationClient processInfo];

  if (v9)
  {
    v10 = [(XPCNotificationClient *)self->_notificationClient processInfo];
    v11 = [v6 options];
    [v11 setClientInfo:v10];
  }

  notificationClient = self->_notificationClient;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100311C5C;
  v15[3] = &unk_10051E040;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [(XPCNotificationClient *)notificationClient deliverAuthenticateRequest:v14 withResultHandler:v15];
}

- (void)presentDialogRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  notificationClient = self->_notificationClient;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100311EB8;
  v12[3] = &unk_10051E068;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(XPCNotificationClient *)notificationClient deliverDialogRequest:v11 withResultHandler:v12];
}

- (void)presentEngagementRequest:(id)a3 withClientInfo:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  notificationClient = self->_notificationClient;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003120E8;
  v12[3] = &unk_10051F1C8;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(XPCNotificationClient *)notificationClient deliverEngagementRequest:v11 withResultHandler:v12];
}

@end
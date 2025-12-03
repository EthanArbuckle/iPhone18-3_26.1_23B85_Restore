@interface CallerRequestPresenter
- (void)presentAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)presentDialogRequest:(id)request resultHandler:(id)handler;
- (void)presentEngagementRequest:(id)request withClientInfo:(id)info resultHandler:(id)handler;
@end

@implementation CallerRequestPresenter

- (void)presentAuthenticateRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  processInfo = [(XPCNotificationClient *)self->_notificationClient processInfo];

  if (processInfo)
  {
    processInfo2 = [(XPCNotificationClient *)self->_notificationClient processInfo];
    options = [requestCopy options];
    [options setClientInfo:processInfo2];
  }

  notificationClient = self->_notificationClient;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100311C5C;
  v15[3] = &unk_10051E040;
  v16 = requestCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = requestCopy;
  [(XPCNotificationClient *)notificationClient deliverAuthenticateRequest:v14 withResultHandler:v15];
}

- (void)presentDialogRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

  notificationClient = self->_notificationClient;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100311EB8;
  v12[3] = &unk_10051E068;
  v13 = requestCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = requestCopy;
  [(XPCNotificationClient *)notificationClient deliverDialogRequest:v11 withResultHandler:v12];
}

- (void)presentEngagementRequest:(id)request withClientInfo:(id)info resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  notificationClient = self->_notificationClient;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003120E8;
  v12[3] = &unk_10051F1C8;
  v13 = requestCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = requestCopy;
  [(XPCNotificationClient *)notificationClient deliverEngagementRequest:v11 withResultHandler:v12];
}

@end
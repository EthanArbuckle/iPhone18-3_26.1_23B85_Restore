@interface RequestBrokerClient
- (id)description;
- (void)cancelAllRequestsWithErrorHandler:(id)handler;
- (void)submitRequest:(id)request delegate:(id)delegate withReplyHandler:(id)handler;
@end

@implementation RequestBrokerClient

- (id)description
{
  v8.receiver = self;
  v8.super_class = RequestBrokerClient;
  v3 = [(RequestBrokerClient *)&v8 description];
  if (self)
  {
    client = self->_client;
  }

  else
  {
    client = 0;
  }

  clientID = [(XPCClient *)client clientID];
  v6 = [NSString stringWithFormat:@"%@: %@", v3, clientID];

  return v6;
}

- (void)cancelAllRequestsWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling all system applications for: %{public}@", buf, 0xCu);
  }

  v6 = sub_1003C27BC();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003EDA4C;
  v8[3] = &unk_10051B2D0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v6 asyncModifyUsingTransaction:&stru_100528148 completion:v8];
}

- (void)submitRequest:(id)request delegate:(id)delegate withReplyHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  delegateCopy = delegate;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = requestCopy;
    v15 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received request: %{public}@ from: %{public}@", &v13, 0x16u);
  }

  v12 = sub_1002317B0([RequestProxy alloc], self, requestCopy, delegateCopy);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v12, 0);
  }
}

@end
@interface RequestBrokerClient
- (id)description;
- (void)cancelAllRequestsWithErrorHandler:(id)a3;
- (void)submitRequest:(id)a3 delegate:(id)a4 withReplyHandler:(id)a5;
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

  v5 = [(XPCClient *)client clientID];
  v6 = [NSString stringWithFormat:@"%@: %@", v3, v5];

  return v6;
}

- (void)cancelAllRequestsWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling all system applications for: %{public}@", buf, 0xCu);
  }

  v6 = sub_1003C27BC();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003EDA4C;
  v8[3] = &unk_10051B2D0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 asyncModifyUsingTransaction:&stru_100528148 completion:v8];
}

- (void)submitRequest:(id)a3 delegate:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received request: %{public}@ from: %{public}@", &v13, 0x16u);
  }

  v12 = sub_1002317B0([RequestProxy alloc], self, v8, v10);
  if (v9)
  {
    v9[2](v9, v12, 0);
  }
}

@end
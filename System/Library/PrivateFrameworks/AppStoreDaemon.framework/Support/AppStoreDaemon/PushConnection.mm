@interface PushConnection
- (NSString)description;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
@end

@implementation PushConnection

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v6 = sub_100342358([PushRawMessage alloc], messageCopy);

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138543618;
    *&v12[4] = objc_opt_class();
    *&v12[12] = 2114;
    *&v12[14] = v6;
    v8 = *&v12[4];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received incoming message: %{public}@", v12, 0x16u);
  }

  sub_1001D4048(PushConnection, v6, 1);
  if (v6)
  {
    v9 = v6[1];
    if (v9 == 2)
    {
      v10 = 56;
      goto LABEL_10;
    }

    if (v9 == 1)
    {
      v10 = 48;
LABEL_10:
      sub_100239BE4(*(&self->super.isa + v10), v6);
      goto LABEL_11;
    }
  }

  if (self)
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    goto LABEL_12;
  }

  WeakRetained = 0;
LABEL_12:
  [WeakRetained pushConnection:self didReceiveRawMessage:{v6, *v12, *&v12[16]}];

  sub_1001D4048(PushConnection, v6, 2);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  appStoreMessageHistory = self->_appStoreMessageHistory;
  if (appStoreMessageHistory)
  {
    objc_setProperty_atomic_copy(appStoreMessageHistory, v5, tokenCopy, 32);
  }

  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  currentToken = self->_currentToken;
  v10 = ASDLogHandleForCategory();
  v11 = v10;
  if (currentToken && currentToken == tokenCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = sub_100229BF8(tokenCopy);
      environment = self->_environment;
      v20 = 138544130;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = environment;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] [%@] Skipping re-registering of active token: %{public}@ for environment: %{public}@", &v20, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = sub_100229BF8(tokenCopy);
      v19 = self->_environment;
      v20 = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = v8;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Received new public token: %{public}@ for environment: %{public}@", &v20, 0x2Au);
    }

    sub_1001D34F8(self, 0, 0, 0, self->_environment, 0, v8);
    sub_1001D34F8(self, 0, 0, 0, self->_environment, 1, v8);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  topicCopy = topic;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = sub_100229BF8(tokenCopy);
    environment = self->_environment;
    v19 = 138544130;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = topicCopy;
    v25 = 2114;
    v26 = environment;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Received new token: %{public}@ for topic: %{public}@ environment: %{public}@", &v19, 0x2Au);
  }

  v16 = sub_100342434(PushRawMessage, topicCopy);
  if (v16 == 2)
  {
    testFlightMessageHistory = self->_testFlightMessageHistory;
    if (testFlightMessageHistory)
    {
      objc_setProperty_atomic_copy(testFlightMessageHistory, v15, tokenCopy, 32);
    }
  }

  else if (!self)
  {
    WeakRetained = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_8:
  [WeakRetained pushConnection:self didReceiveToken:tokenCopy forTopic:v16];
}

- (NSString)description
{
  environment = self->_environment;
  publicToken = [(APSConnection *)self->_connection publicToken];
  v4 = sub_100229CF0(publicToken);
  v5 = [NSString stringWithFormat:@"%@/%@", environment, v4];

  return v5;
}

@end
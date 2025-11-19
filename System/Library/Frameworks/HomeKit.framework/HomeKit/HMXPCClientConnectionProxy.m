@interface HMXPCClientConnectionProxy
- (HMXPCClientConnectionProxy)initWithUserInfo:(id)a3 refreshHandler:(id)a4;
- (void)handleMessage:(id)a3;
- (void)handleMessage:(id)a3 responseHandler:(id)a4;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation HMXPCClientConnectionProxy

- (void)handleMessage:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  [v7 setResponseHandler:v6];

  v9 = [v7 copy];
  v8 = [(HMFMessageTransport *)self delegate];
  [v8 messageTransport:self didReceiveMessage:v9];
}

- (void)handleMessage:(id)a3
{
  v8 = a3;
  v4 = [v8 name];
  v5 = [v4 isEqualToString:@"HMXPCClientInitiateRefreshConfigMessage"];

  if (v5)
  {
    v6 = [(HMXPCClientConnectionProxy *)self refreshHandler];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [(HMXPCClientConnectionProxy *)self refreshHandler];
    v7[2]();
  }

  else
  {
    v7 = [(HMFMessageTransport *)self delegate];
    [v7 messageTransport:self didReceiveMessage:v8];
  }

LABEL_6:
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [v6 responseHandler];
  [(HMXPCClientConnectionProxy *)self handleMessage:v6 responseHandler:v7];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
    v8 = v9;
  }
}

- (HMXPCClientConnectionProxy)initWithUserInfo:(id)a3 refreshHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMXPCClientConnectionProxy;
  v8 = [(HMXPCClientConnectionProxy *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v9;

    v11 = _Block_copy(v7);
    refreshHandler = v8->_refreshHandler;
    v8->_refreshHandler = v11;
  }

  return v8;
}

@end
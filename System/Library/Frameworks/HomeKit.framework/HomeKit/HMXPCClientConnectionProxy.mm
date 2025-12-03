@interface HMXPCClientConnectionProxy
- (HMXPCClientConnectionProxy)initWithUserInfo:(id)info refreshHandler:(id)handler;
- (void)handleMessage:(id)message;
- (void)handleMessage:(id)message responseHandler:(id)handler;
- (void)sendMessage:(id)message completionHandler:(id)handler;
@end

@implementation HMXPCClientConnectionProxy

- (void)handleMessage:(id)message responseHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [message mutableCopy];
  [v7 setResponseHandler:handlerCopy];

  v9 = [v7 copy];
  delegate = [(HMFMessageTransport *)self delegate];
  [delegate messageTransport:self didReceiveMessage:v9];
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  v5 = [name isEqualToString:@"HMXPCClientInitiateRefreshConfigMessage"];

  if (v5)
  {
    refreshHandler = [(HMXPCClientConnectionProxy *)self refreshHandler];

    if (!refreshHandler)
    {
      goto LABEL_6;
    }

    refreshHandler2 = [(HMXPCClientConnectionProxy *)self refreshHandler];
    refreshHandler2[2]();
  }

  else
  {
    refreshHandler2 = [(HMFMessageTransport *)self delegate];
    [refreshHandler2 messageTransport:self didReceiveMessage:messageCopy];
  }

LABEL_6:
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  responseHandler = [messageCopy responseHandler];
  [(HMXPCClientConnectionProxy *)self handleMessage:messageCopy responseHandler:responseHandler];

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v8 = handlerCopy;
  }
}

- (HMXPCClientConnectionProxy)initWithUserInfo:(id)info refreshHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HMXPCClientConnectionProxy;
  v8 = [(HMXPCClientConnectionProxy *)&v14 init];
  if (v8)
  {
    v9 = [infoCopy copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v9;

    v11 = _Block_copy(handlerCopy);
    refreshHandler = v8->_refreshHandler;
    v8->_refreshHandler = v11;
  }

  return v8;
}

@end
@interface ServiceAlertProxy
- (ServiceAlertProxy)init;
- (ServiceAlertProxyDelegate)delegate;
- (void)_closeReceiverConnection;
- (void)_disconnect;
- (void)_handleMessage:(id)message connection:(id)connection;
- (void)dealloc;
- (void)finishWithResponse:(id)response;
- (void)setResponseConnection:(id)connection;
@end

@implementation ServiceAlertProxy

- (ServiceAlertProxy)init
{
  v12.receiver = self;
  v12.super_class = ServiceAlertProxy;
  v2 = [(ServiceAlertProxy *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSXPCConnection);
    receiverConnection = v2->_receiverConnection;
    v2->_receiverConnection = v3;

    createXPCEndpoint = [(SSXPCConnection *)v2->_receiverConnection createXPCEndpoint];
    receiverEndpoint = v2->_receiverEndpoint;
    v2->_receiverEndpoint = createXPCEndpoint;

    objc_initWeak(&location, v2);
    v7 = v2->_receiverConnection;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000B3C8;
    v9[3] = &unk_1000515C8;
    objc_copyWeak(&v10, &location);
    [(SSXPCConnection *)v7 setMessageBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(SSXPCConnection *)self->_receiverConnection setMessageBlock:0];
  [(SSXPCConnection *)self->_responseConnection setDisconnectBlock:0];
  v3.receiver = self;
  v3.super_class = ServiceAlertProxy;
  [(ServiceAlertProxy *)&v3 dealloc];
}

- (void)finishWithResponse:(id)response
{
  responseConnection = self->_responseConnection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B5D4;
  v4[3] = &unk_1000515F0;
  v4[4] = self;
  [(SSXPCConnection *)responseConnection sendMessage:response withReply:v4];
}

- (void)setResponseConnection:(id)connection
{
  connectionCopy = connection;
  responseConnection = self->_responseConnection;
  if (responseConnection != connectionCopy)
  {
    [(SSXPCConnection *)responseConnection setDisconnectBlock:0];
    objc_storeStrong(&self->_responseConnection, connection);
    objc_initWeak(&location, self);
    v7 = self->_responseConnection;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000B754;
    v8[3] = &unk_100051060;
    objc_copyWeak(&v9, &location);
    [(SSXPCConnection *)v7 setDisconnectBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_closeReceiverConnection
{
  [(SSXPCConnection *)self->_receiverConnection setDisconnectBlock:0];
  [(SSXPCConnection *)self->_receiverConnection setMessageBlock:0];
  receiverConnection = self->_receiverConnection;
  self->_receiverConnection = 0;

  receiverEndpoint = self->_receiverEndpoint;
  self->_receiverEndpoint = 0;
}

- (void)_disconnect
{
  [(ServiceAlertProxy *)self _closeReceiverConnection];
  delegate = [(ServiceAlertProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alertProxyDidCancel:self];
  }
}

- (void)_handleMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  delegate = [(ServiceAlertProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate alertProxy:self didReceiveMessage:messageCopy];
  }
}

- (ServiceAlertProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
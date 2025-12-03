@interface CKLogicalDeviceScopedDaemonProxy
+ (NSXPCInterface)CKXPCClientToDaemonLogicalDeviceScopedInterface;
+ (NSXPCInterface)CKXPCDaemonToClientLogicalDeviceScopedInterface;
- (CKLogicalDeviceContext)deviceContext;
- (CKLogicalDeviceScopedDaemonProxy)initWithDeviceContext:(id)context;
- (CKXPCConnection)connection;
- (void)addClouddThrottle:(id)throttle;
- (void)allClouddThrottlesWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation CKLogicalDeviceScopedDaemonProxy

+ (NSXPCInterface)CKXPCClientToDaemonLogicalDeviceScopedInterface
{
  if (qword_1ED4B6230 != -1)
  {
    dispatch_once(&qword_1ED4B6230, &unk_1EFA2F248);
  }

  v3 = qword_1ED4B6228;

  return v3;
}

+ (NSXPCInterface)CKXPCDaemonToClientLogicalDeviceScopedInterface
{
  if (qword_1ED4B6240 != -1)
  {
    dispatch_once(&qword_1ED4B6240, &unk_1EFA2F268);
  }

  v3 = qword_1ED4B6238;

  return v3;
}

- (CKLogicalDeviceScopedDaemonProxy)initWithDeviceContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = CKLogicalDeviceScopedDaemonProxy;
  v5 = [(CKLogicalDeviceScopedDaemonProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceContext, contextCopy);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v7 = objc_msgSend_connectionInterruptedObserver(self, v5, v6);
  objc_msgSend_removeObserver_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKLogicalDeviceScopedDaemonProxy;
  [(CKLogicalDeviceScopedDaemonProxy *)&v9 dealloc];
}

- (CKXPCConnection)connection
{
  v3 = objc_msgSend_deviceContext(self, a2, v2);
  v6 = objc_msgSend_connection(v3, v4, v5);

  return v6;
}

- (void)allClouddThrottlesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1883ED948;
  v10[4] = sub_1883EF5DC;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1885AB0B0;
  v7[3] = &unk_1E70BE788;
  v9 = v10;
  v5 = handlerCopy;
  v8 = v5;
  objc_msgSend__getLogicalDeviceScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v6, 1, &unk_1EFA2F1C8, v7);

  _Block_object_dispose(v10, 8);
}

- (void)addClouddThrottle:(id)throttle
{
  throttleCopy = throttle;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1885AB20C;
  v7[3] = &unk_1E70BE7B0;
  v8 = throttleCopy;
  v5 = throttleCopy;
  objc_msgSend__getLogicalDeviceScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v6, 1, &unk_1EFA2F1E8, v7);
}

- (CKLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

@end
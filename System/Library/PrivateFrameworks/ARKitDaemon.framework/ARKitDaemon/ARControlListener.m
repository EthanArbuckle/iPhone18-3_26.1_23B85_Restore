@interface ARControlListener
- (ARControlListener)initWithDelegate:(id)a3 controlClass:(Class)a4 isInProcess:(BOOL)a5;
- (ARControlListenerDelegate)delegate;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
@end

@implementation ARControlListener

- (ARControlListener)initWithDelegate:(id)a3 controlClass:(Class)a4 isInProcess:(BOOL)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = ARControlListener;
  v9 = [(ARControlListener *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_controlClass = a4;
    v11 = ARCreateNonFixedPriorityConcurrentDispatchQueue();
    concurrentConnectionTargetQueue = v10->_concurrentConnectionTargetQueue;
    v10->_concurrentConnectionTargetQueue = v11;

    v13 = [(objc_class *)v10->_controlClass performSelector:sel_serviceName];
    if (a5)
    {
      v14 = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v13];
    }

    listener = v10->_listener;
    v10->_listener = v14;

    v16 = ARCreateNonFixedPriorityDispatchQueue();
    listenerQueue = v10->_listenerQueue;
    v10->_listenerQueue = v16;

    [(NSXPCListener *)v10->_listener _setQueue:v10->_listenerQueue];
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    [(NSXPCListener *)v10->_listener resume];
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ARControlListener;
  [(ARControlListener *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ARLogDaemon_1();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v32 = v8;
    v33 = 2048;
    v34 = self;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Listener received request for control", buf, 0x16u);
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [v5 serviceName];
  v11 = [v9 stringWithFormat:@"com.apple.arkit.daemonControlConnectionQueue.%@", v10];

  v12 = [v11 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create_with_target_V2(v12, v13, self->_concurrentConnectionTargetQueue);

  [v5 _setQueue:v14];
  v15 = [objc_alloc(self->_controlClass) initWithConnection:v5];
  if (!v15)
  {
    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARControlListener listener:shouldAcceptNewConnection:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion;
    v21 = _ARLogDaemon_1();
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543618;
        v32 = v24;
        v33 = 2048;
        v34 = self;
        v25 = "%{public}@ <%p>: Failed to create control.";
        v26 = v22;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_23D391000, v26, v27, v25, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v24 = NSStringFromClass(v28);
      *buf = 138543618;
      v32 = v24;
      v33 = 2048;
      v34 = self;
      v25 = "Error: %{public}@ <%p>: Failed to create control.";
      v26 = v22;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v16 = _ARLogDaemon_1();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v32 = v18;
    v33 = 2048;
    v34 = self;
    _os_log_impl(&dword_23D391000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Accepted connection for control.", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDiscoverControl:v15];

  [v5 resume];
LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
  return v15 != 0;
}

- (ARControlListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
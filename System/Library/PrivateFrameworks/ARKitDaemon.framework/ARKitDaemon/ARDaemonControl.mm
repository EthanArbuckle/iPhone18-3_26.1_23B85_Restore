@interface ARDaemonControl
- (ARDaemonControl)initWithConnection:(id)a3;
- (ARServer)server;
- (ARServerStatusLogging)statusLogger;
- (void)interruptionHandler;
- (void)invalidationHandler;
@end

@implementation ARDaemonControl

- (ARDaemonControl)initWithConnection:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v16.receiver = self;
    v16.super_class = ARDaemonControl;
    v6 = [(ARDaemonControl *)&v16 init];
    if (v6)
    {
      [v5 setExportedObject:v6];
      v7 = [MEMORY[0x277CE5358] controlInterface];
      [v5 setExportedInterface:v7];

      v8 = [MEMORY[0x277CE5358] controlProxyInterface];
      [v5 setRemoteObjectInterface:v8];

      objc_initWeak(&location, v6);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __38__ARDaemonControl_initWithConnection___block_invoke;
      v13[3] = &unk_278BCBB68;
      objc_copyWeak(&v14, &location);
      [v5 setInterruptionHandler:v13];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__ARDaemonControl_initWithConnection___block_invoke_2;
      v11[3] = &unk_278BCBB68;
      objc_copyWeak(&v12, &location);
      [v5 setInvalidationHandler:v11];
      objc_storeStrong(&v6->_connection, a3);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __38__ARDaemonControl_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

void __38__ARDaemonControl_initWithConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler];
}

- (void)interruptionHandler
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ARLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Control interrupted", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidationHandler
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _ARLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Control invalidated", &v8, 0x16u);
  }

  connection = self->_connection;
  self->_connection = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (ARServerStatusLogging)statusLogger
{
  WeakRetained = objc_loadWeakRetained(&self->_statusLogger);

  return WeakRetained;
}

- (ARServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end
@interface ATLockdownListener
- (ATLockdownListener)initWithServiceName:(id)a3;
- (BOOL)start;
- (void)_handleNewConnection:(id)a3;
- (void)stop;
@end

@implementation ATLockdownListener

- (void)_handleNewConnection:(id)a3
{
  v5 = a3;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__3429;
  v7[4] = __Block_byref_object_dispose__3430;
  v8 = self;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__ATLockdownListener__handleNewConnection___block_invoke;
  handler[3] = &unk_2784E5080;
  handler[5] = v7;
  handler[6] = a2;
  handler[4] = v8;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_resume(v5);
  _Block_object_dispose(v7, 8);
}

void __43__ATLockdownListener__handleNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x223DED350]() == MEMORY[0x277D86468])
  {
    if (lockdown_copy_checkin_info())
    {
      v4 = _ATLogCategoryFramework();
      if (os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v18 = v5;
        v19 = 2114;
        v20 = v3;
        _os_log_impl(&dword_223819000, &v4->super.super, OS_LOG_TYPE_INFO, "%{public}@ received unexpected connection event %{public}@", buf, 0x16u);
      }

LABEL_14:

      goto LABEL_15;
    }

    v4 = [[ATLockdownSocket alloc] initWithLockdownInfo:0];
    v6 = [*(a1 + 32) serviceName];
    v7 = [v6 isEqualToString:@"com.apple.atc"];

    if (v7)
    {
      v8 = ATLegacyMessageLink;
    }

    else
    {
      v9 = [*(a1 + 32) serviceName];
      v10 = [v9 isEqualToString:@"com.apple.atc2"];

      if (!v10)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = *(a1 + 48);
        v14 = *(a1 + 32);
        v15 = [v14 serviceName];
        [v12 handleFailureInMethod:v13 object:v14 file:@"ATLockdownListener.m" lineNumber:78 description:{@"Unknown service name %@", v15}];

        v11 = 0;
        goto LABEL_11;
      }

      v8 = ATLockdownMessageLink;
    }

    v11 = [[v8 alloc] initWithSocket:v4];
LABEL_11:
    v16 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v16 listener:*(a1 + 32) didReceiveMessageLinkRequest:v11];
    }

    CFRelease(0);

    goto LABEL_14;
  }

LABEL_15:
}

- (void)stop
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (BOOL)start
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = serviceName;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting lockdown listener with service %{public}@", buf, 0x16u);
  }

  v5 = [(NSString *)self->_serviceName UTF8String];
  mach_service = xpc_connection_create_mach_service(v5, MEMORY[0x277D85CD0], 1uLL);
  connection = self->_connection;
  self->_connection = mach_service;

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v12 = __Block_byref_object_copy__3429;
  v13 = __Block_byref_object_dispose__3430;
  v14 = self;
  v8 = self->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __27__ATLockdownListener_start__block_invoke;
  handler[3] = &unk_2784E5058;
  handler[4] = buf;
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_resume(self->_connection);
  _Block_object_dispose(buf, 8);

  return 1;
}

void __27__ATLockdownListener_start__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x223DED350]() == MEMORY[0x277D86450])
  {
    [*(*(*(a1 + 32) + 8) + 40) _handleNewConnection:v3];
  }

  else
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_INFO, "%{public}@ received unhandled service event %{public}@", &v6, 0x16u);
    }
  }
}

- (ATLockdownListener)initWithServiceName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATLockdownListener;
  v6 = [(ATLockdownListener *)&v9 init];
  if (v6)
  {
    if (([&unk_2836F5338 containsObject:v5] & 1) == 0)
    {
      v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown service name" userInfo:0];
      objc_exception_throw(v8);
    }

    objc_storeStrong(&v6->_serviceName, a3);
  }

  return v6;
}

@end
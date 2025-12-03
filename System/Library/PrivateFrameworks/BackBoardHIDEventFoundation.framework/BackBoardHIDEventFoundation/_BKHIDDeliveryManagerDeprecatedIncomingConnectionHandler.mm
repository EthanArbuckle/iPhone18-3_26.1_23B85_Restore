@interface _BKHIDDeliveryManagerDeprecatedIncomingConnectionHandler
- (void)handleIncomingDeliveryManagerConnection:(id)connection;
- (void)initWithDeliveryManagerProvider:(void *)provider;
@end

@implementation _BKHIDDeliveryManagerDeprecatedIncomingConnectionHandler

- (void)handleIncomingDeliveryManagerConnection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = self->_deliveryManagerProvider;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"no delivery manager provider"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2114;
      v28 = @"BKHIDEventDeliveryManagerServer.m";
      v29 = 1024;
      v30 = 314;
      v31 = 2114;
      v32 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDD688);
  }

  v6 = v5;
  auditToken = [connectionCopy auditToken];
  v8 = [(BKHIDEventDeliveryManagerProvider *)v6 deliveryManagerForAuditToken:auditToken];

  if (!v8)
  {
    v14 = MEMORY[0x277CCACA8];
    auditToken2 = [connectionCopy auditToken];
    v16 = [v14 stringWithFormat:@"failed to provide delivery manager for auditToken: %@", auditToken2];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2114;
      v28 = @"BKHIDEventDeliveryManagerServer.m";
      v29 = 1024;
      v30 = 320;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDD790);
  }

  [connectionCopy acceptConnectionWithMappedObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithDeliveryManagerProvider:(void *)provider
{
  v3 = a2;
  v4 = v3;
  if (provider)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithDeliveryManagerProvider_ object:provider file:@"BKHIDEventDeliveryManagerServer.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"deliveryManagerProvider"}];
    }

    v8.receiver = provider;
    v8.super_class = _BKHIDDeliveryManagerDeprecatedIncomingConnectionHandler;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    provider = v5;
    if (v5)
    {
      *(v5 + 1) = v4;
    }
  }

  return provider;
}

@end
@interface DiagnosticsTransport
- (DiagnosticsTransport)init;
- (void)setListeningPort:(const char *)port;
- (void)shutdown;
@end

@implementation DiagnosticsTransport

- (DiagnosticsTransport)init
{
  v7.receiver = self;
  v7.super_class = DiagnosticsTransport;
  v2 = [(DiagnosticsTransport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.diagnostics_transport.queue", v3);
    transport_queue = v2->transport_queue;
    v2->transport_queue = v4;

    [(DiagnosticsTransport *)v2 setListeningPort:"com.apple.symptom_diagnostics"];
  }

  return v2;
}

- (void)setListeningPort:(const char *)port
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    portCopy = port;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsTransport started for service %s", buf, 0xCu);
  }

  if (self->listener)
  {
    v6 = xpcLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      listener = self->listener;
      *buf = 134217984;
      portCopy = listener;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "DiagnosticsTransport: already initialized: %p", buf, 0xCu);
    }
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCAE98]);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:port];
    v10 = [v8 initWithMachServiceName:v9];
    v11 = self->listener;
    self->listener = v10;

    v12 = [[DiagnosticsServiceImpl alloc] initWithQueue:self->transport_queue];
    service = self->service;
    self->service = v12;

    v14 = self->listener;
    if (v14 && self->service)
    {
      [(NSXPCListener *)v14 setDelegate:?];
      v15 = dispatch_time(0, 500000000);
      transport_queue = self->transport_queue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __41__DiagnosticsTransport_setListeningPort___block_invoke;
      v19[3] = &unk_278CF0220;
      v19[4] = self;
      v19[5] = port;
      dispatch_after(v15, transport_queue, v19);
    }

    else
    {
      self->listener = 0;

      v17 = xpcLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "DiagnosticsTransport: failing to create the diagnostics channel", buf, 2u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __41__DiagnosticsTransport_setListeningPort___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) resume];
  v2 = xpcLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "started listener for service %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  if (self->listener)
  {
    [(DiagnosticsServiceImpl *)self->service shutdown];
    service = self->service;
    self->service = 0;

    listener = self->listener;
    self->listener = 0;
  }
}

@end
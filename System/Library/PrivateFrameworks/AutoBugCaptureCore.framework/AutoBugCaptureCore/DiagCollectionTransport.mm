@interface DiagCollectionTransport
- (DiagCollectionTransport)init;
- (void)dealloc;
- (void)setListeningPort:(const char *)port;
- (void)shutdown;
@end

@implementation DiagCollectionTransport

- (DiagCollectionTransport)init
{
  v7.receiver = self;
  v7.super_class = DiagCollectionTransport;
  v2 = [(DiagCollectionTransport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.autobugcapture.collection_transport", v3);
    transport_queue = v2->transport_queue;
    v2->transport_queue = v4;

    [(DiagCollectionTransport *)v2 setListeningPort:"com.apple.symptom_diagnostics_collection"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = xpcLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "deallocating DiagCollectionTransport", buf, 2u);
  }

  [(DiagCollectionTransport *)self shutdown];
  v4.receiver = self;
  v4.super_class = DiagCollectionTransport;
  [(DiagCollectionTransport *)&v4 dealloc];
}

- (void)setListeningPort:(const char *)port
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = xpcLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    portCopy3 = port;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagCollectionTransport started for service %s", &v19, 0xCu);
  }

  if (self->listener)
  {
    v6 = xpcLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      listener = self->listener;
      v19 = 134217984;
      portCopy3 = listener;
      v8 = "listener already initialized: %p";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&dword_241804000, v9, v10, v8, &v19, 0xCu);
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCAE98]);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:port];
    v13 = [v11 initWithMachServiceName:v12];
    v14 = self->listener;
    self->listener = v13;

    v15 = [[DiagCollectionServiceImpl alloc] initWithQueue:self->transport_queue];
    service = self->service;
    self->service = v15;

    v17 = self->listener;
    if (v17 && self->service)
    {
      [(NSXPCListener *)v17 setDelegate:?];
      [(NSXPCListener *)self->listener resume];
      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        portCopy3 = port;
        v8 = "started listener for service %s";
        v9 = v6;
        v10 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_12;
      }
    }

    else
    {
      self->listener = 0;

      v6 = xpcLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        portCopy3 = port;
        v8 = "failed to create listener for service %s";
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  if (self->listener)
  {
    v3 = xpcLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "shutting down service listener", v6, 2u);
    }

    [(DiagCollectionServiceImpl *)self->service shutdown];
    service = self->service;
    self->service = 0;

    listener = self->listener;
    self->listener = 0;
  }
}

@end
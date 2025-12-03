@interface NWNetworkAgentSession
- (BOOL)setupReadSource;
- (NWNetworkAgentSession)init;
- (NWNetworkAgentSession)initWithFileDescriptor:(int)descriptor;
- (NWNetworkAgentSession)initWithFileDescriptor:(int)descriptor queue:(id)queue;
- (NWNetworkAgentSession)initWithQueue:(id)queue;
- (id)registrationForAgentUUID:(id)d;
- (int)dupSessionFileDescriptor;
- (void)addRegistration:(id)registration;
- (void)dealloc;
- (void)readMessageFromFD;
- (void)removeRegistration:(id)registration;
- (void)unregisterAll;
@end

@implementation NWNetworkAgentSession

- (void)dealloc
{
  [(NWNetworkAgentSession *)self unregisterAll];
  readSource = [(NWNetworkAgentSession *)self readSource];

  if (readSource)
  {
    readSource2 = [(NWNetworkAgentSession *)self readSource];
    dispatch_source_cancel(readSource2);

    [(NWNetworkAgentSession *)self setReadSource:0];
  }

  v5.receiver = self;
  v5.super_class = NWNetworkAgentSession;
  [(NWNetworkAgentSession *)&v5 dealloc];
}

- (void)unregisterAll
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NWNetworkAgentSession *)self sessionFileDescriptorIsValid])
  {
    nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentSession *)self sessionFD], 0, 29, 0, 0, 0, 0);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  registrations = [(NWNetworkAgentSession *)self registrations];
  v4 = [registrations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(registrations);
        }

        [*(*(&v9 + 1) + 8 * v7++) unregisterNetworkAgentInternal];
      }

      while (v5 != v7);
      v5 = [registrations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  registrations2 = [(NWNetworkAgentSession *)self registrations];
  [registrations2 removeAllObjects];
}

- (int)dupSessionFileDescriptor
{
  if (![(NWNetworkAgentSession *)self sessionFileDescriptorIsValid])
  {
    return -1;
  }

  sessionFD = [(NWNetworkAgentSession *)self sessionFD];

  return dup(sessionFD);
}

- (id)registrationForAgentUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  registrations = [(NWNetworkAgentSession *)self registrations];
  v6 = [registrations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(registrations);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        networkAgent = [v9 networkAgent];
        agentUUID = [networkAgent agentUUID];
        v12 = [agentUUID isEqual:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [registrations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeRegistration:(id)registration
{
  registrationCopy = registration;
  registrations = [(NWNetworkAgentSession *)self registrations];
  [registrations removeObject:registrationCopy];
}

- (void)addRegistration:(id)registration
{
  registrationCopy = registration;
  registrations = [(NWNetworkAgentSession *)self registrations];
  [registrations addObject:registrationCopy];
}

- (NWNetworkAgentSession)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NWNetworkAgentSession queue", v3);
  v5 = [(NWNetworkAgentSession *)self initWithQueue:v4];

  return v5;
}

- (NWNetworkAgentSession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = nw_network_agent_open_control_socket();
  if ((v5 & 0x80000000) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NWNetworkAgentSession *)self initWithFileDescriptor:v5 queue:queueCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (NWNetworkAgentSession)initWithFileDescriptor:(int)descriptor
{
  v3 = *&descriptor;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("NWNetworkAgentSession queue", v5);
  v7 = [(NWNetworkAgentSession *)self initWithFileDescriptor:v3 queue:v6];

  return v7;
}

- (NWNetworkAgentSession)initWithFileDescriptor:(int)descriptor queue:(id)queue
{
  v34 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v13, &type, &v28))
    {
      goto LABEL_31;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
        v16 = "%{public}s called with null queue";
LABEL_29:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v23 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (!v23)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
        v16 = "%{public}s called with null queue, no backtrace";
        goto LABEL_29;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
        v16 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:

LABEL_31:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_40;
  }

  v27.receiver = self;
  v27.super_class = NWNetworkAgentSession;
  v8 = [(NWNetworkAgentSession *)&v27 init];
  if (!v8)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v18, &type, &v28))
    {
LABEL_37:
      if (v18)
      {
        free(v18);
      }

      self = 0;
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
        v21 = "%{public}s [super init] failed";
LABEL_35:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v28 == 1)
      {
        v24 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v25 = os_log_type_enabled(v19, type);
        if (v24)
        {
          if (v25)
          {
            *buf = 136446466;
            v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
            v32 = 2082;
            v33 = v24;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v24);
          goto LABEL_37;
        }

        if (!v25)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
        v21 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_35;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v31 = "[NWNetworkAgentSession initWithFileDescriptor:queue:]";
        v21 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  self = v8;
  v8->_sessionFD = descriptor;
  objc_storeStrong(&v8->_queue, queue);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  registrations = self->_registrations;
  self->_registrations = v9;

  if (![(NWNetworkAgentSession *)self setupReadSource])
  {
LABEL_40:
    selfCopy = 0;
    goto LABEL_41;
  }

  self = self;
  selfCopy = self;
LABEL_41:

  return selfCopy;
}

- (BOOL)setupReadSource
{
  v36 = *MEMORY[0x1E69E9840];
  sessionFD = [(NWNetworkAgentSession *)self sessionFD];
  if ((sessionFD & 0x80000000) == 0)
  {
    v4 = sessionFD;
    queue = [(NWNetworkAgentSession *)self queue];
    v6 = dispatch_source_create(MEMORY[0x1E69E96F8], v4, 0, queue);

    v7 = v6 != 0;
    if (v6)
    {
      objc_initWeak(location, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __40__NWNetworkAgentSession_setupReadSource__block_invoke;
      handler[3] = &__block_descriptor_36_e5_v8__0l;
      v30 = v4;
      dispatch_source_set_cancel_handler(v6, handler);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __40__NWNetworkAgentSession_setupReadSource__block_invoke_2;
      v26[3] = &unk_1E6A3BCC8;
      objc_copyWeak(&v28, location);
      v8 = v6;
      v27 = v8;
      dispatch_source_set_event_handler(v8, v26);
      dispatch_resume(v8);
      [(NWNetworkAgentSession *)self setReadSource:v8];

      objc_destroyWeak(&v28);
      objc_destroyWeak(location);
LABEL_12:

      return v7;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *location = 136446210;
    *&location[4] = "[NWNetworkAgentSession setupReadSource]";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v10, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *location = 136446210;
          *&location[4] = "[NWNetworkAgentSession setupReadSource]";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s dispatch_source_create failed", location, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *location = 136446466;
            *&location[4] = "[NWNetworkAgentSession setupReadSource]";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", location, 0x16u);
          }

          free(backtrace_string);
          if (!v10)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v16)
        {
          *location = 136446210;
          *&location[4] = "[NWNetworkAgentSession setupReadSource]";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s dispatch_source_create failed, no backtrace", location, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v11, type))
        {
          *location = 136446210;
          *&location[4] = "[NWNetworkAgentSession setupReadSource]";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s dispatch_source_create failed, backtrace limit exceeded", location, 0xCu);
        }
      }
    }

    if (!v10)
    {
LABEL_11:
      close(v4);
      goto LABEL_12;
    }

LABEL_10:
    free(v10);
    goto LABEL_11;
  }

  v18 = __nwlog_obj();
  *location = 136446210;
  *&location[4] = "[NWNetworkAgentSession setupReadSource]";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v19, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *location = 136446210;
        *&location[4] = "[NWNetworkAgentSession setupReadSource]";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null (sessionSocket >= 0)", location, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v20, type);
      if (v22)
      {
        if (v24)
        {
          *location = 136446466;
          *&location[4] = "[NWNetworkAgentSession setupReadSource]";
          v34 = 2082;
          v35 = v22;
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null (sessionSocket >= 0), dumping backtrace:%{public}s", location, 0x16u);
        }

        free(v22);
        goto LABEL_42;
      }

      if (v24)
      {
        *location = 136446210;
        *&location[4] = "[NWNetworkAgentSession setupReadSource]";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null (sessionSocket >= 0), no backtrace", location, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *location = 136446210;
        *&location[4] = "[NWNetworkAgentSession setupReadSource]";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null (sessionSocket >= 0), backtrace limit exceeded", location, 0xCu);
      }
    }
  }

LABEL_42:
  if (v19)
  {
    free(v19);
  }

  return 0;
}

void __40__NWNetworkAgentSession_setupReadSource__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained readSource];
    v4 = *(a1 + 32);

    WeakRetained = v5;
    if (v3 == v4)
    {
      [v5 readMessageFromFD];
      WeakRetained = v5;
    }
  }
}

- (void)readMessageFromFD
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NWNetworkAgentSession *)self sessionFileDescriptorIsValid])
  {
    v21 = 0;
    v3 = nw_network_agent_ctl_copy_received_agent_message([(NWNetworkAgentSession *)self sessionFD], &v21);
    if (!v3)
    {
      if (v21)
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v23 = "[NWNetworkAgentSession readMessageFromFD]";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Network agent session failed to read message", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v3 + 12];
    if (v5)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      registrations = [(NWNetworkAgentSession *)self registrations];
      v7 = [registrations countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(registrations);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            registeredUUID = [v11 registeredUUID];
            v13 = [v5 isEqual:registeredUUID];

            if (v13)
            {
              [v11 handleMessageWithType:*v4 payload:v4 + 32 payloadLength:*(v4 + 7)];
              goto LABEL_21;
            }
          }

          v8 = [registrations countByEnumeratingWithState:&v17 objects:v26 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      registrations = gLogObj;
      if (!os_log_type_enabled(registrations, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136446466;
      v23 = "[NWNetworkAgentSession readMessageFromFD]";
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}s Failed to find registration for agent UUID %@";
      v15 = registrations;
      v16 = 22;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      registrations = gLogObj;
      if (!os_log_type_enabled(registrations, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        free(v4);
LABEL_22:

        return;
      }

      *buf = 136446210;
      v23 = "[NWNetworkAgentSession readMessageFromFD]";
      v14 = "%{public}s Failed to parse agent UUID from message";
      v15 = registrations;
      v16 = 12;
    }

    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_21;
  }
}

@end
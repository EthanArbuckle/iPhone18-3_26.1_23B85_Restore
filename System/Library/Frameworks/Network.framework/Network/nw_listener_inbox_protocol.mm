@interface nw_listener_inbox_protocol
- (BOOL)cancel;
- (id)description;
- (void)initWithProtocol:(void *)protocol delegate:;
@end

@implementation nw_listener_inbox_protocol

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70274;
  v10 = __Block_byref_object_dispose__70275;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__nw_listener_inbox_protocol_description__block_invoke;
  v5[3] = &unk_1E6A3D738;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->super._lock);
  __41__nw_listener_inbox_protocol_description__block_invoke(v5);
  os_unfair_lock_unlock(&self->super._lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)cancel
{
  p_listen_protocol = &self->_listen_protocol;
  protocol_handler = self->_listen_protocol.protocol_handler;
  if (protocol_handler)
  {
    (protocol_handler->callbacks->remove_listen_handler)();
  }

  p_listen_protocol->handle = 0;
  return 0;
}

- (void)initWithProtocol:(void *)protocol delegate:
{
  v24 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  if (!self)
  {
    goto LABEL_15;
  }

  v19.receiver = self;
  v19.super_class = nw_listener_inbox_protocol;
  v6 = objc_msgSendSuper2(&v19, sel_initWithDelegate_, protocolCopy);
  self = v6;
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v21 = "[nw_listener_inbox_protocol initWithProtocol:delegate:]";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v9, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "[nw_listener_inbox_protocol initWithProtocol:delegate:]";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s [super initWithDelegate:] failed", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v21 = "[nw_listener_inbox_protocol initWithProtocol:delegate:]";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v14, "%{public}s [super initWithDelegate:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        if (v15)
        {
          *buf = 136446210;
          v21 = "[nw_listener_inbox_protocol initWithProtocol:delegate:]";
          _os_log_impl(&dword_181A37000, v10, v14, "%{public}s [super initWithDelegate:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "[nw_listener_inbox_protocol initWithProtocol:delegate:]";
          _os_log_impl(&dword_181A37000, v10, v16, "%{public}s [super initWithDelegate:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
LABEL_14:
      self = 0;
      goto LABEL_15;
    }

LABEL_13:
    free(v9);
    goto LABEL_14;
  }

  v6[8] = nw_listen_protocol_new_flow;
  v6[9] = nw_listen_protocol_disconnected;
  v6[13] = v6;
  v6[10] = v6 + 8;
  if (((*(*(a2 + 24) + 232))(a2) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "[nw_listener_inbox_protocol initWithProtocol:delegate:]";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Failed to add input handler to listening protocol", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:

  return self;
}

@end
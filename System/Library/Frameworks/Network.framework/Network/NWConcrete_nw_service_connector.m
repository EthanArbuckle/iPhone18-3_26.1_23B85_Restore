@interface NWConcrete_nw_service_connector
- (NSString)description;
- (NWConcrete_nw_service_connector)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_service_connector

- (NSString)description
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v5 = __nwlog_obj();
    *cStr = 136446210;
    *&cStr[4] = "nw_service_connector_copy_description";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v6, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *cStr = 136446210;
          *&cStr[4] = "nw_service_connector_copy_description";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null serviceConnector", cStr, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v10 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *cStr = 136446466;
            *&cStr[4] = "nw_service_connector_copy_description";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", cStr, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v11)
        {
          *cStr = 136446210;
          *&cStr[4] = "nw_service_connector_copy_description";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null serviceConnector, no backtrace", cStr, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *cStr = 136446210;
          *&cStr[4] = "nw_service_connector_copy_description";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null serviceConnector, backtrace limit exceeded", cStr, 0xCu);
        }
      }
    }

LABEL_23:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_25;
  }

  *cStr = 0;
  state = self->state;
  if (state > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1E6A34C88[state];
  }

  asprintf(cStr, "[SC%llu port %u %s]", self->uniqueID, self->localPortHBO, v3);
  if (*cStr)
  {
    v4 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], *cStr, 0x8000100u, *MEMORY[0x1E695E488]);
    goto LABEL_26;
  }

LABEL_25:
  v4 = 0;
LABEL_26:

  return v4;
}

- (void)dealloc
{
  localPrivKey = self->localPrivKey;
  if (localPrivKey)
  {
    CFRelease(localPrivKey);
    self->localPrivKey = 0;
  }

  retryAddrInUseTimer = self->retryAddrInUseTimer;
  if (retryAddrInUseTimer)
  {
    nw_queue_cancel_source(retryAddrInUseTimer, a2);
    self->retryAddrInUseTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = NWConcrete_nw_service_connector;
  [(NWConcrete_nw_service_connector *)&v5 dealloc];
}

- (NWConcrete_nw_service_connector)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_service_connector;
  v2 = [(NWConcrete_nw_service_connector *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_service_connector init]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_service_connector init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_service_connector init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_service_connector init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_service_connector init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

@end
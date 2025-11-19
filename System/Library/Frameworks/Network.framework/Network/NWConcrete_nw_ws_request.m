@interface NWConcrete_nw_ws_request
- (NWConcrete_nw_ws_request)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_ws_request

- (void)dealloc
{
  path = self->path;
  if (path)
  {
    free(path);
    self->path = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_ws_request;
  [(NWConcrete_nw_ws_request *)&v4 dealloc];
}

- (NWConcrete_nw_ws_request)init
{
  v27 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = NWConcrete_nw_ws_request;
  v2 = [(NWConcrete_nw_ws_request *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->path = 0;
    v4 = xpc_array_create(0, 0);
    subprotocols = v3->subprotocols;
    v3->subprotocols = v4;

    v6 = xpc_array_create(0, 0);
    header_names = v3->header_names;
    v3->header_names = v6;

    v8 = xpc_array_create(0, 0);
    header_values = v3->header_values;
    v3->header_values = v8;

    v10 = v3;
    goto LABEL_3;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v24 = "[NWConcrete_nw_ws_request init]";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "[NWConcrete_nw_ws_request init]";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "[NWConcrete_nw_ws_request init]";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "[NWConcrete_nw_ws_request init]";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "[NWConcrete_nw_ws_request init]";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v13)
  {
    free(v13);
  }

LABEL_3:

  return v3;
}

@end
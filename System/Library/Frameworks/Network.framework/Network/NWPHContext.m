@interface NWPHContext
- (NWPHContext)initWithRequest:(id)a3 onConnection:(id)a4;
- (int)pid;
@end

@implementation NWPHContext

- (int)pid
{
  v2 = [(NWPHContext *)self connection];
  pid = xpc_connection_get_pid(v2);

  return pid;
}

- (NWPHContext)initWithRequest:(id)a3 onConnection:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = NWPHContext;
  v8 = [(NWPHContext *)&v31 init];
  if (v8)
  {
    reply = xpc_dictionary_create_reply(v6);
    if (reply)
    {
      [(NWPHContext *)v8 setConnection:v7];
      [(NWPHContext *)v8 setRequest:v6];
      [(NWPHContext *)v8 setReply:reply];
      v10 = v8;
LABEL_16:

      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v33 = "[NWPHContext initWithRequest:onConnection:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v12, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v15 = "%{public}s xpc_dictionary_create_reply failed";
LABEL_20:
        v20 = v13;
        v21 = v14;
        goto LABEL_21;
      }

      if (v29 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v15 = "%{public}s xpc_dictionary_create_reply failed, backtrace limit exceeded";
        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
LABEL_22:

          if (!v12)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        *buf = 136446210;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v15 = "%{public}s xpc_dictionary_create_reply failed, no backtrace";
        v20 = v13;
        v21 = v17;
LABEL_21:
        _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
        goto LABEL_22;
      }

      if (v18)
      {
        *buf = 136446466;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s xpc_dictionary_create_reply failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v12)
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

LABEL_14:
    free(v12);
    goto LABEL_15;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v33 = "[NWPHContext initWithRequest:onConnection:]";
  v23 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v23, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v26 = "%{public}s [super init] failed";
LABEL_39:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v29 == 1)
      {
        v27 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v28 = os_log_type_enabled(v24, type);
        if (v27)
        {
          if (v28)
          {
            *buf = 136446466;
            v33 = "[NWPHContext initWithRequest:onConnection:]";
            v34 = 2082;
            v35 = v27;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v27);
          goto LABEL_41;
        }

        if (!v28)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v26 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_39;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v33 = "[NWPHContext initWithRequest:onConnection:]";
        v26 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_40:
  }

LABEL_41:
  if (v23)
  {
    free(v23);
  }

  v10 = 0;
LABEL_17:

  return v10;
}

@end
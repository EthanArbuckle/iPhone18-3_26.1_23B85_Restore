@interface NWConcrete_nw_http_proxy_connection_pair
- (void)dealloc;
@end

@implementation NWConcrete_nw_http_proxy_connection_pair

- (void)dealloc
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(self + 4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s self->inbound_connection must be nil when dealloc is called", buf, 0xCu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
    v22 = 12;
    v21 = buf;
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v5, &type, &v24))
    {
LABEL_9:
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s self->inbound_connection must be nil when dealloc is called", buf, 0xCu);
      }

LABEL_8:

      goto LABEL_9;
    }

    if (v24 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
        _os_log_impl(&dword_181A37000, v6, v19, "%{public}s self->inbound_connection must be nil when dealloc is called, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_8;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v14 = type;
    v15 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
        _os_log_impl(&dword_181A37000, v6, v14, "%{public}s self->inbound_connection must be nil when dealloc is called, no backtrace", buf, 0xCu);
      }

      goto LABEL_8;
    }

    if (v15)
    {
      *buf = 136446466;
      v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
      v28 = 2082;
      v29 = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s self->inbound_connection must be nil when dealloc is called, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v5)
    {
LABEL_10:
      free(v5);
    }
  }

LABEL_11:
  if (!*(self + 5))
  {
    goto LABEL_21;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s self->outbound_connection must be nil when dealloc is called", buf, 0xCu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446210;
  v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
  v22 = 12;
  v21 = buf;
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v10, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s self->outbound_connection must be nil when dealloc is called", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v11, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
          v28 = 2082;
          v29 = v16;
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s self->outbound_connection must be nil when dealloc is called, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        if (v10)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
        _os_log_impl(&dword_181A37000, v11, v17, "%{public}s self->outbound_connection must be nil when dealloc is called, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_http_proxy_connection_pair dealloc]";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s self->outbound_connection must be nil when dealloc is called, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v10)
  {
LABEL_20:
    free(v10);
  }

LABEL_21:
  v23.receiver = self;
  v23.super_class = NWConcrete_nw_http_proxy_connection_pair;
  [(NWConcrete_nw_http_proxy_connection_pair *)&v23 dealloc:v21];
}

@end
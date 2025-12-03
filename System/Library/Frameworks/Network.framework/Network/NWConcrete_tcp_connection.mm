@interface NWConcrete_tcp_connection
- (char)initWithParameters:(char *)parameters;
- (void)dealloc;
@end

@implementation NWConcrete_tcp_connection

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    tc_id = self->tc_id;
    *buf = 136446466;
    v21 = "[NWConcrete_tcp_connection dealloc]";
    v22 = 2048;
    v23 = tc_id;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %llu", buf, 0x16u);
  }

  if (self->tc_internally_retained_object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v21 = "[NWConcrete_tcp_connection dealloc]";
    v16 = 12;
    v15 = buf;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v21 = "[NWConcrete_tcp_connection dealloc]";
        v9 = "%{public}s over-release of tcp_connection_t. Object should not be internally retained while deallocating";
LABEL_18:
        v13 = v7;
        v14 = v8;
        goto LABEL_19;
      }

      if (v18 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v21 = "[NWConcrete_tcp_connection dealloc]";
        v9 = "%{public}s over-release of tcp_connection_t. Object should not be internally retained while deallocating, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_20:

          if (!v6)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        *buf = 136446210;
        v21 = "[NWConcrete_tcp_connection dealloc]";
        v9 = "%{public}s over-release of tcp_connection_t. Object should not be internally retained while deallocating, no backtrace";
        v13 = v7;
        v14 = v11;
LABEL_19:
        _os_log_impl(&dword_181A37000, v13, v14, v9, buf, 0xCu);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446466;
        v21 = "[NWConcrete_tcp_connection dealloc]";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s over-release of tcp_connection_t. Object should not be internally retained while deallocating, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (v6)
    {
LABEL_14:
      free(v6);
    }
  }

LABEL_15:
  v17.receiver = self;
  v17.super_class = NWConcrete_tcp_connection;
  [(NWConcrete_tcp_connection *)&v17 dealloc:v15];
}

- (char)initWithParameters:(char *)parameters
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!parameters)
  {
    goto LABEL_39;
  }

  v33.receiver = parameters;
  v33.super_class = NWConcrete_tcp_connection;
  v4 = objc_msgSendSuper2(&v33, sel_init);
  if (!v4)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v35 = "[NWConcrete_tcp_connection initWithParameters:]";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v25, &type, &v31))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v35 = "[NWConcrete_tcp_connection initWithParameters:]";
        v28 = "%{public}s [super init] failed";
LABEL_58:
        _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "[NWConcrete_tcp_connection initWithParameters:]";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (!v30)
        {
          goto LABEL_59;
        }

        *buf = 136446210;
        v35 = "[NWConcrete_tcp_connection initWithParameters:]";
        v28 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_58;
      }

      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v35 = "[NWConcrete_tcp_connection initWithParameters:]";
        v28 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_58;
      }
    }

LABEL_59:

LABEL_60:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_38;
  }

  parameters = v4;
  *(v4 + 28) = 16;
  if (v3)
  {
    v5 = _nw_parameters_copy(v3);
    v6 = *(parameters + 6);
    *(parameters + 6) = v5;

    v7 = *(parameters + 6);
    if (!v7)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      *buf = 136446210;
      v35 = "[NWConcrete_tcp_connection initWithParameters:]";
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v9, &type, &v31))
      {
        goto LABEL_35;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v35 = "[NWConcrete_tcp_connection initWithParameters:]";
          v12 = "%{public}s nw_parameters_copy failed";
LABEL_32:
          v21 = v10;
          v22 = v11;
LABEL_33:
          _os_log_impl(&dword_181A37000, v21, v22, v12, buf, 0xCu);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      if (v31 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v35 = "[NWConcrete_tcp_connection initWithParameters:]";
          v12 = "%{public}s nw_parameters_copy failed, backtrace limit exceeded";
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v35 = "[NWConcrete_tcp_connection initWithParameters:]";
          v36 = 2082;
          v37 = v16;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s nw_parameters_copy failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
LABEL_35:
        if (!v9)
        {
LABEL_37:

LABEL_38:
          parameters = 0;
          goto LABEL_39;
        }

LABEL_36:
        free(v9);
        goto LABEL_37;
      }

      if (!v18)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v35 = "[NWConcrete_tcp_connection initWithParameters:]";
      v12 = "%{public}s nw_parameters_copy failed, no backtrace";
      goto LABEL_44;
    }
  }

  else
  {
    secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
    v14 = *(parameters + 6);
    *(parameters + 6) = secure_tcp;

    v7 = *(parameters + 6);
    if (!v7)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      *buf = 136446210;
      v35 = "[NWConcrete_tcp_connection initWithParameters:]";
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v9, &type, &v31))
      {
        goto LABEL_35;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v35 = "[NWConcrete_tcp_connection initWithParameters:]";
          v12 = "%{public}s nw_parameters_create failed";
          goto LABEL_32;
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v31 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v35 = "[NWConcrete_tcp_connection initWithParameters:]";
          v12 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v19 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v17 = type;
      v20 = os_log_type_enabled(v10, type);
      if (v19)
      {
        if (v20)
        {
          *buf = 136446466;
          v35 = "[NWConcrete_tcp_connection initWithParameters:]";
          v36 = 2082;
          v37 = v19;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        if (!v9)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (!v20)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v35 = "[NWConcrete_tcp_connection initWithParameters:]";
      v12 = "%{public}s nw_parameters_create failed, no backtrace";
LABEL_44:
      v21 = v10;
      v22 = v17;
      goto LABEL_33;
    }
  }

  _nw_parameters_set_data_mode(v7, 2);
  nw_parameters_set_https_proxy_is_opaque(*(parameters + 6), 1);
  nw_parameters_set_no_fullstack_fallback(*(parameters + 6), 1);
  if ((nw_parameters_get_indefinite_set(*(parameters + 6)) & 1) == 0)
  {
    nw_parameters_set_indefinite(*(parameters + 6));
  }

  parameters[156] = 0;
  *(parameters + 116) = 0xFFFFFFFFLL;
LABEL_39:

  return parameters;
}

@end
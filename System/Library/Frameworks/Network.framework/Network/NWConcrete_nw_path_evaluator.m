@interface NWConcrete_nw_path_evaluator
- (NSString)description;
- (NWConcrete_nw_path_evaluator)init;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation NWConcrete_nw_path_evaluator

- (NWConcrete_nw_path_evaluator)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_path_evaluator;
  v2 = [(NWConcrete_nw_path_evaluator *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_path_evaluator init]";
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
        v18 = "[NWConcrete_nw_path_evaluator init]";
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
          v18 = "[NWConcrete_nw_path_evaluator init]";
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
        v18 = "[NWConcrete_nw_path_evaluator init]";
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
        v18 = "[NWConcrete_nw_path_evaluator init]";
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

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v22 = "[NWConcrete_nw_path_evaluator dealloc]";
    v23 = 1042;
    v24 = 16;
    v25 = 2098;
    v26 = self + 80;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public,uuid}.16P", buf, 0x1Cu);
  }

  v4 = nw_parameters_copy_context(*(self + 1));
  v5 = nw_path_shared_necp_fd(v4);

  if ((v5 & 0x80000000) == 0 && !uuid_is_null(self + 80) && necp_client_action())
  {
    v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = v7;
    if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v22 = "[NWConcrete_nw_path_evaluator dealloc]";
        v23 = 1024;
        v24 = 2;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_5;
    }

    *buf = 136446466;
    v22 = "[NWConcrete_nw_path_evaluator dealloc]";
    v23 = 1024;
    v24 = v6;
    v17 = 18;
    v16 = buf;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446466;
        v22 = "[NWConcrete_nw_path_evaluator dealloc]";
        v23 = 1024;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d", buf, 0x12u);
      }

LABEL_15:

LABEL_16:
      if (!v9)
      {
        goto LABEL_5;
      }

LABEL_17:
      free(v9);
      goto LABEL_5;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446466;
        v22 = "[NWConcrete_nw_path_evaluator dealloc]";
        v23 = 1024;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
      }

      goto LABEL_15;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v13 = type;
    v14 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v22 = "[NWConcrete_nw_path_evaluator dealloc]";
        v23 = 1024;
        v24 = v6;
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, no backtrace", buf, 0x12u);
      }

      goto LABEL_15;
    }

    if (v14)
    {
      *buf = 136446722;
      v22 = "[NWConcrete_nw_path_evaluator dealloc]";
      v23 = 1024;
      v24 = v6;
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s NECP_CLIENT_ACTION_REMOVE error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(backtrace_string);
    if (v9)
    {
      goto LABEL_17;
    }
  }

LABEL_5:
  v18.receiver = self;
  v18.super_class = NWConcrete_nw_path_evaluator;
  [(NWConcrete_nw_path_evaluator *)&v18 dealloc:v16];
}

- (id)redactedDescription
{
  v2 = nw_path_evaluator_copy_description_level(self, 2);
  if (v2)
  {
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v2, 0x8000100u, *MEMORY[0x1E695E488]);
  }

  return v2;
}

- (NSString)description
{
  v2 = nw_path_evaluator_copy_description(self);
  if (v2)
  {
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v2, 0x8000100u, *MEMORY[0x1E695E488]);
  }

  return v2;
}

@end
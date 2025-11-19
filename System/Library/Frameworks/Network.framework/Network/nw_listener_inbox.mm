@interface nw_listener_inbox
- (BOOL)cancel;
- (BOOL)resume;
- (BOOL)suspend;
- (nw_listener_inbox)initWithDelegate:(id)a3;
@end

@implementation nw_listener_inbox

- (BOOL)resume
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(self + 60);
  if (v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136446466;
      v7 = "[nw_listener_inbox resume]";
      v8 = 2114;
      v9 = self;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s Resuming %{public}@", &v6, 0x16u);
    }

    *(self + 60) &= ~1u;
  }

  return v2 & 1;
}

- (BOOL)cancel
{
  v22 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446466;
  v17 = "[nw_listener_inbox cancel]";
  v18 = 2114;
  v19 = self;
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v4, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_17;
      }

      *buf = 136446466;
      v17 = "[nw_listener_inbox cancel]";
      v18 = 2114;
      v19 = self;
      v7 = "%{public}s %{public}@ empty cancel";
LABEL_15:
      v12 = v5;
      v13 = v6;
      goto LABEL_16;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_17;
      }

      *buf = 136446466;
      v17 = "[nw_listener_inbox cancel]";
      v18 = 2114;
      v19 = self;
      v7 = "%{public}s %{public}@ empty cancel, backtrace limit exceeded";
      goto LABEL_15;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v9 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
LABEL_17:

        if (!v4)
        {
          return 0;
        }

        goto LABEL_11;
      }

      *buf = 136446466;
      v17 = "[nw_listener_inbox cancel]";
      v18 = 2114;
      v19 = self;
      v7 = "%{public}s %{public}@ empty cancel, no backtrace";
      v12 = v5;
      v13 = v9;
LABEL_16:
      _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0x16u);
      goto LABEL_17;
    }

    if (v10)
    {
      *buf = 136446722;
      v17 = "[nw_listener_inbox cancel]";
      v18 = 2114;
      v19 = self;
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v9, "%{public}s %{public}@ empty cancel, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(backtrace_string);
  }

  if (v4)
  {
LABEL_11:
    free(v4);
  }

  return 0;
}

- (BOOL)suspend
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(self + 60);
  if ((v2 & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136446466;
      v7 = "[nw_listener_inbox suspend]";
      v8 = 2114;
      v9 = self;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s Suspending %{public}@", &v6, 0x16u);
    }

    *(self + 60) |= 1u;
  }

  return (v2 & 1) == 0;
}

- (nw_listener_inbox)initWithDelegate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v20.receiver = self;
  v20.super_class = nw_listener_inbox;
  v6 = [(nw_listener_inbox *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = v7;
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "[nw_listener_inbox initWithDelegate:]";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v22 = "[nw_listener_inbox initWithDelegate:]";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "[nw_listener_inbox initWithDelegate:]";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "[nw_listener_inbox initWithDelegate:]";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v22 = "[nw_listener_inbox initWithDelegate:]";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v11)
  {
    free(v11);
  }

LABEL_3:

  return v7;
}

@end
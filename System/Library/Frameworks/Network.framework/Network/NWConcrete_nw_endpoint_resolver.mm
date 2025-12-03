@interface NWConcrete_nw_endpoint_resolver
- (BOOL)applyWithHandler:(id)handler toChildren:(id)children;
- (NWConcrete_nw_endpoint_resolver)init;
- (void)cancelWithHandler:(id)handler forced:(BOOL)forced;
- (void)dealloc;
- (void)startWithHandler:(id)handler;
- (void)updatePathWithHandler:(id)handler;
@end

@implementation NWConcrete_nw_endpoint_resolver

- (NWConcrete_nw_endpoint_resolver)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_endpoint_resolver;
  v2 = [(NWConcrete_nw_endpoint_resolver *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_endpoint_resolver init]";
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
        v18 = "[NWConcrete_nw_endpoint_resolver init]";
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
          v18 = "[NWConcrete_nw_endpoint_resolver init]";
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
        v18 = "[NWConcrete_nw_endpoint_resolver init]";
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
        v18 = "[NWConcrete_nw_endpoint_resolver init]";
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
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_endpoint_resolver;
  [(NWConcrete_nw_endpoint_resolver *)&v2 dealloc];
}

- (BOOL)applyWithHandler:(id)handler toChildren:(id)children
{
  v50 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  childrenCopy = children;
  if (!handlerCopy)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v15, &type, &v40))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v28, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v40 != 1)
    {
      v16 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v34, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v32, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v33)
    {
      *buf = 136446466;
      v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v32, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(backtrace_string);
    goto LABEL_40;
  }

  v8 = handlerCopy;
  v9 = v8[29];

  if (v9 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (v9 > 5)
    {
      v14 = "unknown-mode";
    }

    else
    {
      v14 = off_1E6A31018[v9];
    }

    *buf = 136446722;
    v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
    v44 = 2082;
    v45 = v14;
    v46 = 2082;
    v47 = "resolver";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v15, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          if (v9 > 5)
          {
            v18 = "unknown-mode";
          }

          else
          {
            v18 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
          v44 = 2082;
          v45 = v18;
          v46 = 2082;
          v47 = "resolver";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v40 == 1)
      {
        v19 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v20 = type;
        v21 = os_log_type_enabled(v16, type);
        if (v19)
        {
          if (v21)
          {
            if (v9 > 5)
            {
              v22 = "unknown-mode";
            }

            else
            {
              v22 = off_1E6A31018[v9];
            }

            *buf = 136446978;
            v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
            v44 = 2082;
            v45 = v22;
            v46 = 2082;
            v47 = "resolver";
            v48 = 2082;
            v49 = v19;
            _os_log_impl(&dword_181A37000, v16, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v19);
          if (!v15)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        if (v21)
        {
          if (v9 > 5)
          {
            v25 = "unknown-mode";
          }

          else
          {
            v25 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
          v44 = 2082;
          v45 = v25;
          v46 = 2082;
          v47 = "resolver";
          _os_log_impl(&dword_181A37000, v16, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v23 = type;
        if (os_log_type_enabled(v16, type))
        {
          if (v9 > 5)
          {
            v24 = "unknown-mode";
          }

          else
          {
            v24 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
          v44 = 2082;
          v45 = v24;
          v46 = 2082;
          v47 = "resolver";
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_39;
    }

LABEL_40:
    if (!v15)
    {
LABEL_42:
      v12 = 1;
      goto LABEL_43;
    }

LABEL_41:
    free(v15);
    goto LABEL_42;
  }

  if (!childrenCopy)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v15, &type, &v40))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null applyBlock", buf, 0xCu);
      }

LABEL_39:

      goto LABEL_40;
    }

    if (v40 != 1)
    {
      v16 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v37, "%{public}s called with null applyBlock, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v35 = type;
    v36 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null applyBlock, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v36)
    {
      *buf = 136446466;
      v43 = "[NWConcrete_nw_endpoint_resolver applyWithHandler:toChildren:]";
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null applyBlock, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  child_endpoint_handlers = self->child_endpoint_handlers;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__NWConcrete_nw_endpoint_resolver_applyWithHandler_toChildren___block_invoke;
  aBlock[3] = &unk_1E6A3CD30;
  v11 = childrenCopy;
  v39 = v11;
  if (child_endpoint_handlers)
  {
    v12 = _nw_array_apply(child_endpoint_handlers, aBlock);
    v11 = v39;
  }

  else
  {
    v12 = 1;
  }

LABEL_43:
  return v12;
}

- (void)updatePathWithHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v4 = handlerCopy;
  if (!handlerCopy)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v9, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
          _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          *buf = 136446210;
          v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
          _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v24)
      {
        *buf = 136446466;
        v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_36:
    if (!v9)
    {
      goto LABEL_38;
    }

LABEL_37:
    free(v9);
    goto LABEL_38;
  }

  v5 = handlerCopy;
  mode = v5->mode;

  if (mode == 1)
  {
    nw_endpoint_resolver_update_path_resolver_locked(v5);
    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (mode > 5)
  {
    v8 = "unknown-mode";
  }

  else
  {
    v8 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
  v30 = 2082;
  v31 = v8;
  v32 = 2082;
  v33 = "resolver";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v9, &type, &v26))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      if (mode > 5)
      {
        v12 = "unknown-mode";
      }

      else
      {
        v12 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
      v30 = 2082;
      v31 = v12;
      v32 = 2082;
      v33 = "resolver";
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v26 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v17 = type;
    if (os_log_type_enabled(v10, type))
    {
      if (mode > 5)
      {
        v18 = "unknown-mode";
      }

      else
      {
        v18 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
      v30 = 2082;
      v31 = v18;
      v32 = 2082;
      v33 = "resolver";
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_35;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(v10, type);
  if (!v13)
  {
    if (v15)
    {
      if (mode > 5)
      {
        v19 = "unknown-mode";
      }

      else
      {
        v19 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
      v30 = 2082;
      v31 = v19;
      v32 = 2082;
      v33 = "resolver";
      _os_log_impl(&dword_181A37000, v10, v14, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_35;
  }

  if (v15)
  {
    if (mode > 5)
    {
      v16 = "unknown-mode";
    }

    else
    {
      v16 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v29 = "[NWConcrete_nw_endpoint_resolver updatePathWithHandler:]";
    v30 = 2082;
    v31 = v16;
    v32 = 2082;
    v33 = "resolver";
    v34 = 2082;
    v35 = v13;
    _os_log_impl(&dword_181A37000, v10, v14, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v13);
  if (v9)
  {
    goto LABEL_37;
  }

LABEL_38:
}

- (void)cancelWithHandler:(id)handler forced:(BOOL)forced
{
  forcedCopy = forced;
  v51 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!handlerCopy)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v24, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_50;
      }

      if (v41 != 1)
      {
        v25 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v25, v40, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_50;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v25, type);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_50;
      }

      if (v39)
      {
        *buf = 136446466;
        v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
        v45 = 2082;
        v46 = backtrace_string;
        _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_51:
    if (!v24)
    {
      goto LABEL_53;
    }

LABEL_52:
    free(v24);
    goto LABEL_53;
  }

  v8 = handlerCopy;
  v9 = v8[29];

  if (v9 == 1)
  {
    for (i = 0; ; ++i)
    {
      child_endpoint_handlers = self->child_endpoint_handlers;
      if (!child_endpoint_handlers)
      {
        break;
      }

      count = _nw_array_get_count(child_endpoint_handlers);
      child_endpoint_handlers = self->child_endpoint_handlers;
      if (i >= count)
      {
        break;
      }

      if (child_endpoint_handlers)
      {
        v14 = _nw_array_get_object_at_index(child_endpoint_handlers, i);
        v11 = v14;
        if (v14)
        {
          nw_endpoint_handler_cancel(v14, forcedCopy, 0);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    self->child_endpoint_handlers = 0;

    failed_child_endpoint_handlers = self->failed_child_endpoint_handlers;
    self->failed_child_endpoint_handlers = 0;

    resolver = self->resolver;
    if (resolver)
    {
      nw_resolver_cancel(resolver);
      v20 = self->resolver;
      self->resolver = 0;
    }

    self->last_resolver_status = 0;
    child_timer = self->child_timer;
    if (child_timer)
    {
      nw_queue_cancel_source(child_timer, v18);
      self->child_timer = 0;
    }

    trigger_agent_timer = self->trigger_agent_timer;
    if (trigger_agent_timer)
    {
      nw_queue_cancel_source(trigger_agent_timer, v18);
      self->trigger_agent_timer = 0;
    }

    desperate_ivan_timer = self->desperate_ivan_timer;
    if (desperate_ivan_timer)
    {
      nw_queue_cancel_source(desperate_ivan_timer, v18);
      self->desperate_ivan_timer = 0;
    }

    goto LABEL_53;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (v9 > 5)
  {
    v16 = "unknown-mode";
  }

  else
  {
    v16 = off_1E6A31018[v9];
  }

  *buf = 136446722;
  v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
  v45 = 2082;
  v46 = v16;
  v47 = 2082;
  v48 = "resolver";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (!__nwlog_fault(v24, &type, &v41))
  {
    goto LABEL_51;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = type;
    if (os_log_type_enabled(v25, type))
    {
      if (v9 > 5)
      {
        v27 = "unknown-mode";
      }

      else
      {
        v27 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
      v45 = 2082;
      v46 = v27;
      v47 = 2082;
      v48 = "resolver";
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_50:

    goto LABEL_51;
  }

  if (v41 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v32 = type;
    if (os_log_type_enabled(v25, type))
    {
      if (v9 > 5)
      {
        v33 = "unknown-mode";
      }

      else
      {
        v33 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
      v45 = 2082;
      v46 = v33;
      v47 = 2082;
      v48 = "resolver";
      _os_log_impl(&dword_181A37000, v25, v32, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_50;
  }

  v28 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  v29 = type;
  v30 = os_log_type_enabled(v25, type);
  if (!v28)
  {
    if (v30)
    {
      if (v9 > 5)
      {
        v34 = "unknown-mode";
      }

      else
      {
        v34 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
      v45 = 2082;
      v46 = v34;
      v47 = 2082;
      v48 = "resolver";
      _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_50;
  }

  if (v30)
  {
    if (v9 > 5)
    {
      v31 = "unknown-mode";
    }

    else
    {
      v31 = off_1E6A31018[v9];
    }

    *buf = 136446978;
    v44 = "[NWConcrete_nw_endpoint_resolver cancelWithHandler:forced:]";
    v45 = 2082;
    v46 = v31;
    v47 = 2082;
    v48 = "resolver";
    v49 = 2082;
    v50 = v28;
    _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v28);
  if (v24)
  {
    goto LABEL_52;
  }

LABEL_53:
}

- (void)startWithHandler:(id)handler
{
  v118 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!handlerCopy)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
    v21 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v106 = 0;
    if (!__nwlog_fault(v21, type, &v106))
    {
      goto LABEL_82;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v71 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
        _os_log_impl(&dword_181A37000, v22, v71, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v106 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v73 = type[0];
      v74 = os_log_type_enabled(v22, type[0]);
      if (backtrace_string)
      {
        if (v74)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v73, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_82;
      }

      if (v74)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
        _os_log_impl(&dword_181A37000, v22, v73, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v75 = type[0];
      if (os_log_type_enabled(v22, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
        _os_log_impl(&dword_181A37000, v22, v75, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_81:

    goto LABEL_82;
  }

  v6 = handlerCopy;
  v7 = v6[29];

  if (v7 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (v7 > 5)
    {
      v20 = "unknown-mode";
    }

    else
    {
      v20 = off_1E6A31018[v7];
    }

    *buf = 136446722;
    *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
    *&buf[12] = 2082;
    *&buf[14] = v20;
    v108 = 2082;
    v109 = "resolver";
    v21 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v106 = 0;
    if (__nwlog_fault(v21, type, &v106))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type[0];
        if (os_log_type_enabled(v22, type[0]))
        {
          if (v7 > 5)
          {
            v24 = "unknown-mode";
          }

          else
          {
            v24 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v24;
          v108 = 2082;
          v109 = "resolver";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v106 == 1)
      {
        v25 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v26 = type[0];
        v27 = os_log_type_enabled(v22, type[0]);
        if (v25)
        {
          if (v27)
          {
            if (v7 > 5)
            {
              v28 = "unknown-mode";
            }

            else
            {
              v28 = off_1E6A31018[v7];
            }

            *buf = 136446978;
            *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = v28;
            v108 = 2082;
            v109 = "resolver";
            v110 = 2082;
            v111 = v25;
            _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v25);
          if (!v21)
          {
            goto LABEL_84;
          }

LABEL_83:
          free(v21);
          goto LABEL_84;
        }

        if (v27)
        {
          if (v7 > 5)
          {
            v40 = "unknown-mode";
          }

          else
          {
            v40 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          v108 = 2082;
          v109 = "resolver";
          _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(v22, type[0]))
        {
          if (v7 > 5)
          {
            v30 = "unknown-mode";
          }

          else
          {
            v30 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v30;
          v108 = 2082;
          v109 = "resolver";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_81;
    }

LABEL_82:
    if (!v21)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v8 = v6;
  v9 = v8[30];

  if (v9 == 1)
  {
    v10 = v8;
    v11 = *(v10 + 284);
    v97 = v10;

    if ((v11 & 0x40) != 0)
    {
      goto LABEL_62;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_61:

LABEL_62:
      v43 = v97;
      os_unfair_lock_lock(v43 + 28);
      v96 = *(v43 + 8);
      os_unfair_lock_unlock(v43 + 28);

      v44 = v43;
      v45 = (v97[71] & 1) == 0;

      if (v45)
      {
        nw_path_assert_required_agents(v96);
        asserted_agent_uuids = self->asserted_agent_uuids;
        self->asserted_agent_uuids = 0;

        v47 = xpc_array_create(0, 0);
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __52__NWConcrete_nw_endpoint_resolver_startWithHandler___block_invoke;
        v103[3] = &unk_1E6A30D30;
        v48 = v47;
        v104 = v48;
        _nw_path_enumerate_required_network_agent_uuids(v96, v103);
        if (xpc_array_get_count(v48))
        {
          objc_storeStrong(&self->asserted_agent_uuids, v47);
        }
      }

      v49 = v44;
      v50 = v49[4];

      v51 = v49;
      v52 = v96;
      v53 = v50;
      if (v52)
      {
        v54 = [NWConcrete_nw_resolver alloc];
        v55 = v52;
        v56 = _nw_path_copy_endpoint(v55);

        v57 = [(NWConcrete_nw_resolver *)v54 initWithEndpoint:v56 parameters:v53 path:v55 log_str:v51 + 184];
        goto LABEL_68;
      }

      v76 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_resolver_create_with_path_parameters_and_log_string";
      v77 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v106 = 0;
      if (__nwlog_fault(v77, type, &v106))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v78 = __nwlog_obj();
          v79 = type[0];
          if (os_log_type_enabled(v78, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_with_path_parameters_and_log_string";
            _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null path", buf, 0xCu);
          }
        }

        else
        {
          if (v106 == 1)
          {
            v84 = __nw_create_backtrace_string();
            v85 = __nwlog_obj();
            v92 = type[0];
            v86 = os_log_type_enabled(v85, type[0]);
            if (v84)
            {
              if (v86)
              {
                *buf = 136446466;
                *&buf[4] = "nw_resolver_create_with_path_parameters_and_log_string";
                *&buf[12] = 2082;
                *&buf[14] = v84;
                _os_log_impl(&dword_181A37000, v85, v92, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v84);
            }

            else
            {
              if (v86)
              {
                *buf = 136446210;
                *&buf[4] = "nw_resolver_create_with_path_parameters_and_log_string";
                _os_log_impl(&dword_181A37000, v85, v92, "%{public}s called with null path, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_130;
          }

          v78 = __nwlog_obj();
          v90 = type[0];
          if (os_log_type_enabled(v78, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_create_with_path_parameters_and_log_string";
            _os_log_impl(&dword_181A37000, v78, v90, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_130:
      if (v77)
      {
        free(v77);
      }

      v57 = 0;
LABEL_68:

      objc_storeStrong(&self->resolver, v57);
      self->last_resolver_status = 0;
      v58 = v51;
      v8[30] = 2;

      v59 = nw_endpoint_handler_copy_endpoint(v58);
      v60 = nw_endpoint_get_type(v59);
      if (v60 == (nw_endpoint_type_url|nw_endpoint_type_address))
      {
        v61 = 6;
      }

      else
      {
        v61 = 1;
      }

      if (v60 == nw_endpoint_type_bonjour_service)
      {
        v62 = 3;
      }

      else
      {
        v62 = v61;
      }

      v58->event.domain = 2;
      v58->event.event = v62;
      nw_endpoint_handler_report(v58, 0, &v58->event.domain, 0);
      *type = 0;
      *buf = 0;
      *&buf[8] = 0;
      if (nw_path_get_vpn_config_uuid(v52, buf, type, 1, 1))
      {
        nw_endpoint_resolver_setup_trigger_agent_timer(v58, 0);
      }

      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __52__NWConcrete_nw_endpoint_resolver_startWithHandler___block_invoke_2;
      v101[3] = &unk_1E6A30D58;
      v63 = v58;
      v102 = v63;
      v64 = v57;
      v65 = v101;
      if (v64)
      {
        os_unfair_lock_lock(v64 + 3);
        v66 = _Block_copy(v65);
        v67 = v64[24];
        v64[24] = v66;

        os_unfair_lock_unlock(v64 + 3);
LABEL_78:

        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __52__NWConcrete_nw_endpoint_resolver_startWithHandler___block_invoke_3;
        v98[3] = &unk_1E6A30D80;
        v68 = v63;
        v99 = v68;
        v69 = v64;
        v100 = v69;
        nw_resolver_set_update_handler(v69, 0, v98);
        nw_endpoint_resolver_update_path_resolver_locked(v68);

        goto LABEL_84;
      }

      v80 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_resolver_set_alternative_handler";
      v81 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v106 = 0;
      if (__nwlog_fault(v81, type, &v106))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v82 = __nwlog_obj();
          v83 = type[0];
          if (os_log_type_enabled(v82, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_set_alternative_handler";
            _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null resolver", buf, 0xCu);
          }
        }

        else
        {
          if (v106 == 1)
          {
            v87 = __nw_create_backtrace_string();
            v88 = __nwlog_obj();
            v93 = type[0];
            v89 = os_log_type_enabled(v88, type[0]);
            if (v87)
            {
              if (v89)
              {
                *buf = 136446466;
                *&buf[4] = "nw_resolver_set_alternative_handler";
                *&buf[12] = 2082;
                *&buf[14] = v87;
                _os_log_impl(&dword_181A37000, v88, v93, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v87);
            }

            else
            {
              if (v89)
              {
                *buf = 136446210;
                *&buf[4] = "nw_resolver_set_alternative_handler";
                _os_log_impl(&dword_181A37000, v88, v93, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_136;
          }

          v82 = __nwlog_obj();
          v91 = type[0];
          if (os_log_type_enabled(v82, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_resolver_set_alternative_handler";
            _os_log_impl(&dword_181A37000, v82, v91, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_136:
      if (v81)
      {
        free(v81);
      }

      goto LABEL_78;
    }

    v13 = v97;

    v14 = v13;
    v15 = *(v97 + 284);

    if (v15)
    {
      v16 = "dry-run ";
    }

    else
    {
      v16 = "";
    }

    v17 = nw_endpoint_handler_copy_endpoint(v14);
    v18 = v17;
    v95 = v16;
    if (v17)
    {
      logging_description = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v31 = v13 + 184;

    v32 = v14;
    v33 = v32;
    v34 = v8[30];
    if (v34 > 5)
    {
      v35 = "unknown-state";
    }

    else
    {
      v35 = off_1E6A31048[v34];
    }

    v36 = v33;
    v37 = v36;
    v38 = v6[29];
    if (v38 > 2)
    {
      switch(v38)
      {
        case 3:
          v39 = "proxy";
          goto LABEL_60;
        case 4:
          v39 = "fallback";
          goto LABEL_60;
        case 5:
          v39 = "transform";
          goto LABEL_60;
      }
    }

    else
    {
      switch(v38)
      {
        case 0:
          v39 = "path";
          goto LABEL_60;
        case 1:
          v39 = "resolver";
          goto LABEL_60;
        case 2:
          v39 = nw_endpoint_flow_mode_string(v36[33]);
LABEL_60:

          v41 = v37;
          os_unfair_lock_lock(v41 + 28);
          v42 = v41[8];
          os_unfair_lock_unlock(v41 + 28);

          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_resolver startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v31;
          v108 = 2082;
          v109 = v95;
          v110 = 2082;
          v111 = logging_description;
          v112 = 2082;
          v113 = v35;
          v114 = 2082;
          v115 = v39;
          v116 = 2114;
          v117 = v42;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          goto LABEL_61;
      }
    }

    v39 = "unknown-mode";
    goto LABEL_60;
  }

LABEL_84:
}

@end
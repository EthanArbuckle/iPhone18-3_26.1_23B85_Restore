@interface NWConcrete_nw_endpoint_proxy
- (BOOL)applyWithHandler:(id)a3 toChildren:(id)a4;
- (NWConcrete_nw_endpoint_proxy)init;
- (void)cancelWithHandler:(id)a3 forced:(BOOL)a4;
- (void)dealloc;
- (void)startWithHandler:(id)a3;
- (void)updatePathWithHandler:(id)a3;
@end

@implementation NWConcrete_nw_endpoint_proxy

- (NWConcrete_nw_endpoint_proxy)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_endpoint_proxy;
  v2 = [(NWConcrete_nw_endpoint_proxy *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_endpoint_proxy init]";
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
        v18 = "[NWConcrete_nw_endpoint_proxy init]";
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
          v18 = "[NWConcrete_nw_endpoint_proxy init]";
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
        v18 = "[NWConcrete_nw_endpoint_proxy init]";
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
        v18 = "[NWConcrete_nw_endpoint_proxy init]";
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
  v2.super_class = NWConcrete_nw_endpoint_proxy;
  [(NWConcrete_nw_endpoint_proxy *)&v2 dealloc];
}

- (BOOL)applyWithHandler:(id)a3 toChildren:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
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
        v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
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
        v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
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
        v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v32, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v33)
    {
      *buf = 136446466;
      v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v32, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(backtrace_string);
    goto LABEL_40;
  }

  v8 = v6;
  v9 = v8[29];

  if (v9 != 3)
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
    v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
    v44 = 2082;
    v45 = v14;
    v46 = 2082;
    v47 = "proxy";
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
          v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
          v44 = 2082;
          v45 = v18;
          v46 = 2082;
          v47 = "proxy";
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
            v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
            v44 = 2082;
            v45 = v22;
            v46 = 2082;
            v47 = "proxy";
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
          v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
          v44 = 2082;
          v45 = v25;
          v46 = 2082;
          v47 = "proxy";
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
          v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
          v44 = 2082;
          v45 = v24;
          v46 = 2082;
          v47 = "proxy";
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

  if (!v7)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
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
        v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
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
        v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
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
        v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null applyBlock, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v36)
    {
      *buf = 136446466;
      v43 = "[NWConcrete_nw_endpoint_proxy applyWithHandler:toChildren:]";
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null applyBlock, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  child_endpoint_handlers = self->child_endpoint_handlers;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__NWConcrete_nw_endpoint_proxy_applyWithHandler_toChildren___block_invoke;
  aBlock[3] = &unk_1E6A3CD30;
  v11 = v7;
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

- (void)updatePathWithHandler:(id)a3
{
  v126 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v79 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v114 = 0;
    if (!__nwlog_fault(v22, type, &v114))
    {
      goto LABEL_95;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v80 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v23, v80, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v114 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v82 = type[0];
      v83 = os_log_type_enabled(v23, type[0]);
      if (backtrace_string)
      {
        if (v83)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v82, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_95;
      }

      if (v83)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v23, v82, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v90 = type[0];
      if (os_log_type_enabled(v23, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v23, v90, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_94:

    goto LABEL_95;
  }

  v6 = v4;
  v7 = v6[29];

  if (v7 != 3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (v7 > 5)
    {
      v21 = "unknown-mode";
    }

    else
    {
      v21 = off_1E6A31018[v7];
    }

    *buf = 136446722;
    *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    *&buf[22] = 2082;
    v120 = "proxy";
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v114 = 0;
    if (__nwlog_fault(v22, type, &v114))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          if (v7 > 5)
          {
            v25 = "unknown-mode";
          }

          else
          {
            v25 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v25;
          *&buf[22] = 2082;
          v120 = "proxy";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v114 == 1)
      {
        v37 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v38 = type[0];
        v39 = os_log_type_enabled(v23, type[0]);
        if (v37)
        {
          if (v39)
          {
            if (v7 > 5)
            {
              v40 = "unknown-mode";
            }

            else
            {
              v40 = off_1E6A31018[v7];
            }

            *buf = 136446978;
            *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = v40;
            *&buf[22] = 2082;
            v120 = "proxy";
            *v121 = 2082;
            *&v121[2] = v37;
            _os_log_impl(&dword_181A37000, v23, v38, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v37);
          if (!v22)
          {
            goto LABEL_97;
          }

LABEL_96:
          free(v22);
          goto LABEL_97;
        }

        if (v39)
        {
          if (v7 > 5)
          {
            v43 = "unknown-mode";
          }

          else
          {
            v43 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v43;
          *&buf[22] = 2082;
          v120 = "proxy";
          _os_log_impl(&dword_181A37000, v23, v38, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v41 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          if (v7 > 5)
          {
            v42 = "unknown-mode";
          }

          else
          {
            v42 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          *&buf[22] = 2082;
          v120 = "proxy";
          _os_log_impl(&dword_181A37000, v23, v41, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_94;
    }

LABEL_95:
    if (!v22)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v8 = v6;
  os_unfair_lock_lock(v8 + 28);
  v9 = *(v8 + 8);
  os_unfair_lock_unlock(v8 + 28);

  should_use_proxy = nw_endpoint_proxy_unsatisfied_handler_should_use_proxy(v9);
  if ((should_use_proxy & 1) == 0)
  {
    v26 = v8;
    v27 = *(v26 + 284);

    if ((v27 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v26))
      {
        goto LABEL_80;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v26);
        v84 = nw_endpoint_handler_dry_run_string(v26);
        v85 = nw_endpoint_handler_copy_endpoint(v26);
        logging_description = nw_endpoint_get_logging_description(v85);
        v87 = nw_endpoint_handler_state_string(v26);
        v88 = nw_endpoint_handler_mode_string(v26);
        v89 = nw_endpoint_handler_copy_current_path(v26);
        *buf = 136447746;
        *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
        *&buf[12] = 2082;
        *&buf[14] = id_string;
        *&buf[22] = 2082;
        v120 = v84;
        *v121 = 2082;
        *&v121[2] = logging_description;
        *&v121[10] = 2082;
        *&v121[12] = v87;
        v122 = 2082;
        v123 = v88;
        v124 = 2114;
        v125 = v89;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resetting due to disallowed proxy settings", buf, 0x48u);
      }

      goto LABEL_79;
    }

    v28 = v26;
    v29 = *(v26 + 284);

    if ((v29 & 0x40) != 0)
    {
LABEL_80:
      nw_endpoint_handler_reset_mode(v26, 1);
      goto LABEL_97;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v30 = gconnectionLogObj;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
LABEL_79:

      goto LABEL_80;
    }

    v31 = v28;

    v32 = v31;
    v33 = *(v26 + 284);

    if (v33)
    {
      v34 = "dry-run ";
    }

    else
    {
      v34 = "";
    }

    v35 = nw_endpoint_handler_copy_endpoint(v32);
    v36 = v35;
    if (v35)
    {
      v112 = _nw_endpoint_get_logging_description(v35);
    }

    else
    {
      v112 = "<NULL>";
    }

    log = v34;
    v44 = v31 + 184;

    v45 = v32;
    v46 = v45;
    v47 = v45[30];
    if (v47 > 5)
    {
      v48 = "unknown-state";
    }

    else
    {
      v48 = off_1E6A31048[v47];
    }

    v49 = v46;
    v50 = v49;
    v51 = v6[29];
    if (v51 > 2)
    {
      switch(v51)
      {
        case 3:
          v52 = "proxy";
          goto LABEL_78;
        case 4:
          v52 = "fallback";
          goto LABEL_78;
        case 5:
          v52 = "transform";
          goto LABEL_78;
      }
    }

    else
    {
      switch(v51)
      {
        case 0:
          v52 = "path";
          goto LABEL_78;
        case 1:
          v52 = "resolver";
          goto LABEL_78;
        case 2:
          v52 = nw_endpoint_flow_mode_string(v49[33]);
LABEL_78:

          v65 = v50;
          os_unfair_lock_lock(v8 + 28);
          v66 = *(v8 + 8);
          os_unfair_lock_unlock(v8 + 28);

          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v44;
          *&buf[22] = 2082;
          v120 = log;
          *v121 = 2082;
          *&v121[2] = v112;
          *&v121[10] = 2082;
          *&v121[12] = v48;
          v122 = 2082;
          v123 = v52;
          v124 = 2114;
          v125 = v66;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resetting due to disallowed proxy settings", buf, 0x48u);

          goto LABEL_79;
      }
    }

    v52 = "unknown-mode";
    goto LABEL_78;
  }

  if ((*(self + 97) & 0x10) == 0 && (*(self + 97) & 0x40) == 0 && !self->connected_child)
  {
    v11 = v8;
    os_unfair_lock_lock(v8 + 28);
    v12 = *(v8 + 8);
    os_unfair_lock_unlock(v8 + 28);

    v13 = nw_path_copy_proxy_configs(v12);
    v111 = v13;
    if (v13)
    {
      v14 = self->path_proxy_configs;
      v15 = v13;
      v16 = v15;
      if (v14 == v15)
      {

        goto LABEL_91;
      }

      if (v14 && (count = _nw_array_get_count(v14), count == _nw_array_get_count(v16)))
      {
        *type = 0;
        v116 = type;
        v117 = 0x2020000000;
        v118 = 1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL35nw_endpoint_proxy_configs_are_equalPU22objcproto11OS_nw_array8NSObjectS1__block_invoke;
        v120 = &unk_1E6A3BB28;
        v18 = v16;
        *v121 = v18;
        *&v121[8] = type;
        _nw_array_apply(v14, buf);
        v19 = *(v116 + 24);

        _Block_object_dispose(type, 8);
        if (v19)
        {
          goto LABEL_91;
        }
      }

      else
      {
      }

      v67 = v11;
      v67[70] = 0;

      v67[20] = 393220;
      nw_endpoint_handler_report(v67, 0, v67 + 40, 0);
      v68 = v67;
      LOBYTE(v67) = (v68[71] & 0x20) == 0;

      if (v67)
      {
        v69 = v68;
        v70 = (v68[71] & 0x40) == 0;

        if (!v70)
        {
LABEL_89:
          v78 = v68;
          v78[30] = 1;

          [(NWConcrete_nw_endpoint_proxy *)self cancelWithHandler:v78 forced:1];
          [(NWConcrete_nw_endpoint_proxy *)self startWithHandler:v78];
          goto LABEL_91;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v71 = gconnectionLogObj;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = nw_endpoint_handler_get_id_string(v69);
          v73 = nw_endpoint_handler_dry_run_string(v69);
          logb = v71;
          v104 = nw_endpoint_handler_copy_endpoint(v69);
          v74 = nw_endpoint_get_logging_description(v104);
          v75 = nw_endpoint_handler_state_string(v69);
          v76 = nw_endpoint_handler_mode_string(v69);
          v77 = nw_endpoint_handler_copy_current_path(v69);
          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v72;
          *&buf[22] = 2082;
          v120 = v73;
          *v121 = 2082;
          *&v121[2] = v74;
          *&v121[10] = 2082;
          *&v121[12] = v75;
          v122 = 2082;
          v123 = v76;
          v124 = 2114;
          v125 = v77;
          v71 = logb;
          _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] restarting due to changing proxy settings", buf, 0x48u);
        }
      }

      else
      {
        if (nw_endpoint_handler_get_logging_disabled(v68))
        {
          goto LABEL_89;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v98 = gconnectionLogObj;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          logd = nw_endpoint_handler_get_id_string(v68);
          v105 = nw_endpoint_handler_dry_run_string(v68);
          v99 = nw_endpoint_handler_copy_endpoint(v68);
          v100 = nw_endpoint_get_logging_description(v99);
          v101 = nw_endpoint_handler_state_string(v68);
          v102 = nw_endpoint_handler_mode_string(v68);
          v103 = nw_endpoint_handler_copy_current_path(v68);
          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = logd;
          *&buf[22] = 2082;
          v120 = v105;
          *v121 = 2082;
          *&v121[2] = v100;
          *&v121[10] = 2082;
          *&v121[12] = v101;
          v122 = 2082;
          v123 = v102;
          v124 = 2114;
          v125 = v103;
          v71 = v98;
          _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] restarting due to changing proxy settings", buf, 0x48u);
        }

        else
        {
          v71 = v98;
        }
      }

      goto LABEL_89;
    }

    v53 = v11;
    v53[70] = 1;

    v53[20] = 393220;
    nw_endpoint_handler_report(v53, 0, v53 + 40, 0);
    v54 = v53;
    LOBYTE(v53) = *(v54 + 284);

    if ((v53 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v54))
      {
        goto LABEL_68;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v91 = gconnectionLogObj;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        logc = nw_endpoint_handler_get_id_string(v54);
        v92 = nw_endpoint_handler_dry_run_string(v54);
        v93 = nw_endpoint_handler_copy_endpoint(v54);
        v94 = nw_endpoint_get_logging_description(v93);
        v95 = nw_endpoint_handler_state_string(v54);
        v96 = nw_endpoint_handler_mode_string(v54);
        v97 = nw_endpoint_handler_copy_current_path(v54);
        *buf = 136447746;
        *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
        *&buf[12] = 2082;
        *&buf[14] = logc;
        *&buf[22] = 2082;
        v120 = v92;
        *v121 = 2082;
        *&v121[2] = v94;
        *&v121[10] = 2082;
        *&v121[12] = v95;
        v122 = 2082;
        v123 = v96;
        v124 = 2114;
        v125 = v97;
        v57 = v91;
        _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resetting due to losing proxy settings", buf, 0x48u);
      }

      else
      {
        v57 = v91;
      }
    }

    else
    {
      v55 = v54;
      v56 = *(v54 + 284);

      if ((v56 & 0x40) != 0)
      {
LABEL_68:
        nw_endpoint_handler_reset_mode(v54, 1);
LABEL_91:

        goto LABEL_97;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v57 = gconnectionLogObj;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = nw_endpoint_handler_get_id_string(v55);
        v59 = nw_endpoint_handler_dry_run_string(v55);
        loga = v57;
        v60 = nw_endpoint_handler_copy_endpoint(v55);
        v61 = nw_endpoint_get_logging_description(v60);
        v62 = nw_endpoint_handler_state_string(v55);
        v63 = nw_endpoint_handler_mode_string(v55);
        v64 = nw_endpoint_handler_copy_current_path(v55);
        *buf = 136447746;
        *&buf[4] = "[NWConcrete_nw_endpoint_proxy updatePathWithHandler:]";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 2082;
        v120 = v59;
        *v121 = 2082;
        *&v121[2] = v61;
        *&v121[10] = 2082;
        *&v121[12] = v62;
        v122 = 2082;
        v123 = v63;
        v124 = 2114;
        v125 = v64;
        v57 = loga;
        _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resetting due to losing proxy settings", buf, 0x48u);
      }
    }

    goto LABEL_68;
  }

LABEL_97:
}

- (void)cancelWithHandler:(id)a3 forced:(BOOL)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v21, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v53 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v22, v53, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_70;
      }

      if (v63 != 1)
      {
        v22 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v22, v57, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_70;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v55 = type;
      v56 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v56)
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v22, v55, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_70;
      }

      if (v56)
      {
        *buf = 136446466;
        v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
        v67 = 2082;
        v68 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v55, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_71:
    if (!v21)
    {
      goto LABEL_73;
    }

LABEL_72:
    free(v21);
    goto LABEL_73;
  }

  v8 = v6;
  v9 = v8[29];

  if (v9 == 3)
  {
    v10 = v8;
    v11 = *(v10 + 284);

    if ((v11 & 0x40) != 0)
    {
LABEL_54:
      child_endpoint_handlers = self->child_endpoint_handlers;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__NWConcrete_nw_endpoint_proxy_cancelWithHandler_forced___block_invoke;
      aBlock[3] = &__block_descriptor_33_e35_B24__0Q8__NSObject_OS_nw_object__16l;
      v62 = a4;
      if (child_endpoint_handlers)
      {
        _nw_array_apply(child_endpoint_handlers, aBlock);
        v43 = self->child_endpoint_handlers;
      }

      else
      {
        v43 = 0;
      }

      self->child_endpoint_handlers = 0;

      failed_child_endpoint_handlers = self->failed_child_endpoint_handlers;
      self->failed_child_endpoint_handlers = 0;

      pac_resolvers = self->pac_resolvers;
      self->pac_resolvers = 0;

      custom_proxy_configs = self->custom_proxy_configs;
      self->custom_proxy_configs = 0;

      path_proxy_configs = self->path_proxy_configs;
      self->path_proxy_configs = 0;

      parsed_proxy_configs = self->parsed_proxy_configs;
      self->parsed_proxy_configs = 0;

      url = self->url;
      if (url)
      {
        CFRelease(url);
        self->url = 0;
      }

      child_timer = self->child_timer;
      if (child_timer)
      {
        nw_queue_cancel_source(child_timer, v49);
        self->child_timer = 0;
      }

      goto LABEL_73;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_53:

      goto LABEL_54;
    }

    v13 = v10;

    v14 = v13;
    v15 = *(v10 + 284);

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
    if (v17)
    {
      logging_description = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v58 = (v13 + 46);
    v59 = v16;

    v31 = v14;
    v32 = v31;
    v33 = v31[30];
    if (v33 > 5)
    {
      v34 = "unknown-state";
    }

    else
    {
      v34 = off_1E6A31048[v33];
    }

    v35 = v32;
    v36 = v35;
    v37 = v8[29];
    if (v37 > 2)
    {
      switch(v37)
      {
        case 3:
          v38 = "proxy";
          goto LABEL_52;
        case 4:
          v38 = "fallback";
          goto LABEL_52;
        case 5:
          v38 = "transform";
          goto LABEL_52;
      }
    }

    else
    {
      switch(v37)
      {
        case 0:
          v38 = "path";
          goto LABEL_52;
        case 1:
          v38 = "resolver";
          goto LABEL_52;
        case 2:
          v38 = nw_endpoint_flow_mode_string(v35[33]);
LABEL_52:

          v40 = v36;
          os_unfair_lock_lock(v40 + 28);
          v41 = v40[8];
          os_unfair_lock_unlock(v40 + 28);

          *buf = 136447746;
          v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
          v67 = 2082;
          v68 = v58;
          v69 = 2082;
          v70 = v59;
          v71 = 2082;
          v72 = logging_description;
          v73 = 2082;
          v74 = v34;
          v75 = 2082;
          v76 = v38;
          v77 = 2114;
          v78 = v41;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          goto LABEL_53;
      }
    }

    v38 = "unknown-mode";
    goto LABEL_52;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  if (v9 > 5)
  {
    v20 = "unknown-mode";
  }

  else
  {
    v20 = off_1E6A31018[v9];
  }

  *buf = 136446722;
  v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
  v67 = 2082;
  v68 = v20;
  v69 = 2082;
  v70 = "proxy";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v63 = 0;
  if (!__nwlog_fault(v21, &type, &v63))
  {
    goto LABEL_71;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    if (os_log_type_enabled(v22, type))
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
      v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
      v67 = 2082;
      v68 = v24;
      v69 = 2082;
      v70 = "proxy";
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_70:

    goto LABEL_71;
  }

  if (v63 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v29 = type;
    if (os_log_type_enabled(v22, type))
    {
      if (v9 > 5)
      {
        v30 = "unknown-mode";
      }

      else
      {
        v30 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
      v67 = 2082;
      v68 = v30;
      v69 = 2082;
      v70 = "proxy";
      _os_log_impl(&dword_181A37000, v22, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_70;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v22, type);
  if (!v25)
  {
    if (v27)
    {
      if (v9 > 5)
      {
        v39 = "unknown-mode";
      }

      else
      {
        v39 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
      v67 = 2082;
      v68 = v39;
      v69 = 2082;
      v70 = "proxy";
      _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_70;
  }

  if (v27)
  {
    if (v9 > 5)
    {
      v28 = "unknown-mode";
    }

    else
    {
      v28 = off_1E6A31018[v9];
    }

    *buf = 136446978;
    v66 = "[NWConcrete_nw_endpoint_proxy cancelWithHandler:forced:]";
    v67 = 2082;
    v68 = v28;
    v69 = 2082;
    v70 = "proxy";
    v71 = 2082;
    v72 = v25;
    _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v25);
  if (v21)
  {
    goto LABEL_72;
  }

LABEL_73:
}

- (void)startWithHandler:(id)a3
{
  v299 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v213 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
    v214 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v271) = 0;
    if (__nwlog_fault(v214, type, &v271))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v215 = __nwlog_obj();
        v216 = type[0];
        if (os_log_type_enabled(v215, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          _os_log_impl(&dword_181A37000, v215, v216, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v271 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v215 = __nwlog_obj();
        v218 = type[0];
        v219 = os_log_type_enabled(v215, type[0]);
        if (backtrace_string)
        {
          if (v219)
          {
            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v215, v218, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_307;
        }

        if (v219)
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          _os_log_impl(&dword_181A37000, v215, v218, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v215 = __nwlog_obj();
        v220 = type[0];
        if (os_log_type_enabled(v215, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          _os_log_impl(&dword_181A37000, v215, v220, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_307:
    if (v214)
    {
      free(v214);
    }

    v5 = 0;
    goto LABEL_277;
  }

  v6 = v4;
  v7 = v6[29];

  if (v7 != 3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = v5;
    if (v7 > 5)
    {
      v22 = "unknown-mode";
    }

    else
    {
      v22 = off_1E6A31018[v7];
    }

    *buf = 136446722;
    *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
    *&buf[12] = 2082;
    *&buf[14] = v22;
    *&buf[22] = 2082;
    v290 = "proxy";
    v23 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v271) = 0;
    if (__nwlog_fault(v23, type, &v271))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          if (v7 > 5)
          {
            v26 = "unknown-mode";
          }

          else
          {
            v26 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          *&buf[22] = 2082;
          v290 = "proxy";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v271 == 1)
      {
        v27 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v28 = type[0];
        v29 = os_log_type_enabled(v24, type[0]);
        if (v27)
        {
          if (v29)
          {
            if (v7 > 5)
            {
              v30 = "unknown-mode";
            }

            else
            {
              v30 = off_1E6A31018[v7];
            }

            *buf = 136446978;
            *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = v30;
            *&buf[22] = 2082;
            v290 = "proxy";
            *v291 = 2082;
            *&v291[2] = v27;
            _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v27);
          if (!v23)
          {
            goto LABEL_119;
          }

          goto LABEL_118;
        }

        if (v29)
        {
          if (v7 > 5)
          {
            v42 = "unknown-mode";
          }

          else
          {
            v42 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          *&buf[22] = 2082;
          v290 = "proxy";
          _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v31 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          if (v7 > 5)
          {
            v32 = "unknown-mode";
          }

          else
          {
            v32 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          *&buf[22] = 2082;
          v290 = "proxy";
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v23)
    {
LABEL_119:
      v5 = v21;
      goto LABEL_277;
    }

LABEL_118:
    free(v23);
    goto LABEL_119;
  }

  v8 = v6;
  v9 = v8[30];

  if (v9 == 1)
  {
    v244 = v5;
    v245 = v6;
    v251 = v8;
    v10 = v8;
    v11 = *(v10 + 284);
    v262 = v10;

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
      custom_proxy_configs = self->custom_proxy_configs;
      self->custom_proxy_configs = 0;

      path_proxy_configs = self->path_proxy_configs;
      self->path_proxy_configs = 0;

      *(self + 96) &= 0x8Eu;
      v47 = nw_endpoint_handler_copy_endpoint(v262);
      v243 = v47;
      if (nw_endpoint_get_type(v47) == nw_endpoint_type_host)
      {
        v48 = v262;
        os_unfair_lock_lock(v48 + 28);
        v49 = *(v48 + 8);
        os_unfair_lock_unlock(v48 + 28);

        *type = 0;
        *buf = 0;
        *&buf[8] = 0;
        if (nw_path_get_vpn_config_uuid(v49, buf, type, 1, 1))
        {
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (nw_path_voluntary_agent_matches_address(v49, &xmmword_182BD4240))
          {
            if (type[0] == OS_LOG_TYPE_INFO && nw_endpoint_handler_trigger_agents(v48, 1))
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v48);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v48);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_74;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v52 = gconnectionLogObj;
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  id_string = nw_endpoint_handler_get_id_string(v48);
                  v230 = nw_endpoint_handler_dry_run_string(v48);
                  v231 = nw_endpoint_handler_copy_endpoint(v48);
                  logging_description = nw_endpoint_get_logging_description(v231);
                  v233 = nw_endpoint_handler_state_string(v48);
                  v234 = nw_endpoint_handler_mode_string(v48);
                  v235 = nw_endpoint_handler_copy_current_path(v48);
                  *buf = 136447746;
                  *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
                  *&buf[12] = 2082;
                  *&buf[14] = id_string;
                  *&buf[22] = 2082;
                  v290 = v230;
                  *v291 = 2082;
                  *&v291[2] = logging_description;
                  *&v291[10] = 2082;
                  *&v291[12] = v233;
                  *&v291[20] = 2082;
                  *&v291[22] = v234;
                  *&v291[30] = 2114;
                  v292 = v235;
                  _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy requires agent trigger before attempting to connect", buf, 0x48u);
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_74:
                  nw_endpoint_handler_reset_mode(v48, 0);

LABEL_276:
                  v5 = v244;
                  goto LABEL_277;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v52 = gconnectionLogObj;
                if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                {
                  v53 = nw_endpoint_handler_get_id_string(v48);
                  v54 = nw_endpoint_handler_dry_run_string(v48);
                  v55 = nw_endpoint_handler_copy_endpoint(v48);
                  v56 = nw_endpoint_get_logging_description(v55);
                  v57 = nw_endpoint_handler_state_string(v48);
                  v58 = nw_endpoint_handler_mode_string(v48);
                  v59 = nw_endpoint_handler_copy_current_path(v48);
                  *buf = 136447746;
                  *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
                  *&buf[12] = 2082;
                  *&buf[14] = v53;
                  *&buf[22] = 2082;
                  v290 = v54;
                  *v291 = 2082;
                  *&v291[2] = v56;
                  *&v291[10] = 2082;
                  *&v291[12] = v57;
                  *&v291[20] = 2082;
                  *&v291[22] = v58;
                  *&v291[30] = 2114;
                  v292 = v59;
                  _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy requires agent trigger before attempting to connect", buf, 0x48u);
                }
              }

              goto LABEL_74;
            }
          }
        }

        v47 = v243;
      }

      v256 = v47;
      if (v256)
      {
        pthread_mutex_lock(&sOutstandingPacURLMutex);
        if (nw_get_outstanding_pac_urls(void)::onceToken != -1)
        {
          dispatch_once(&nw_get_outstanding_pac_urls(void)::onceToken, &__block_literal_global_33980);
        }

        v60 = nw_get_outstanding_pac_urls(void)::gPACURLs;
        if (nw_get_outstanding_pac_urls(void)::gPACURLs)
        {
          v61 = v256;
          v62 = _nw_endpoint_get_type(v61);

          Count = CFArrayGetCount(v60);
          if (Count >= 1)
          {
            if (v62 == 2)
            {
              v64 = 0;
              alloc = *MEMORY[0x1E695E480];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v60, v64);
                v66 = CFURLCopyHostName(ValueAtIndex);
                if (v66)
                {
                  v67 = v61;
                  hostname = _nw_endpoint_get_hostname(v67);

                  if (hostname && (v69 = CFStringCreateWithCString(alloc, hostname, 0x8000100u)) != 0)
                  {
                    v70 = CFStringCompare(v66, v69, 0) == kCFCompareEqualTo;
                    CFRelease(v69);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  CFRelease(v66);
                  if (v70)
                  {
                    v71 = CFURLGetPortNumber(ValueAtIndex);
                    v72 = v67;
                    port = _nw_endpoint_get_port(v72);

                    if (port)
                    {
                      if (v71 && v71 == port)
                      {
                        break;
                      }
                    }
                  }
                }

                if (Count == ++v64)
                {
                  goto LABEL_125;
                }
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v74 = gLogObj;
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                v75 = v72;
                v76 = _nw_endpoint_get_logging_description(v75);

                *buf = 136446722;
                *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
                *&buf[12] = 2082;
                *&buf[14] = v76;
                *&buf[22] = 2114;
                v290 = ValueAtIndex;
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s Endpoint %{public}s matched PAC URL %{public}@", buf, 0x20u);
              }

              v77 = 0x80;
              goto LABEL_126;
            }

            for (i = 0; i != Count; ++i)
            {
              v83 = CFArrayGetValueAtIndex(v60, i);
              v84 = CFURLCopyHostName(v83);
              if (v84)
              {
                CFRelease(v84);
              }
            }
          }

LABEL_125:
          v77 = 0;
LABEL_126:
          pthread_mutex_unlock(&sOutstandingPacURLMutex);
          v89 = v256;
          goto LABEL_127;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v78 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
        v79 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v271) = 0;
        if (__nwlog_fault(v79, type, &v271))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v80 = gLogObj;
            v81 = type[0];
            if (os_log_type_enabled(v80, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
              _os_log_impl(&dword_181A37000, v80, v81, "%{public}s nw_get_outstanding_pac_urls failed", buf, 0xCu);
            }
          }

          else if (v271 == 1)
          {
            v85 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v80 = gLogObj;
            v86 = type[0];
            v87 = os_log_type_enabled(v80, type[0]);
            if (v85)
            {
              if (v87)
              {
                *buf = 136446466;
                *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
                *&buf[12] = 2082;
                *&buf[14] = v85;
                _os_log_impl(&dword_181A37000, v80, v86, "%{public}s nw_get_outstanding_pac_urls failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v85);
              if (!v79)
              {
                goto LABEL_125;
              }

              goto LABEL_124;
            }

            if (v87)
            {
              *buf = 136446210;
              *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
              _os_log_impl(&dword_181A37000, v80, v86, "%{public}s nw_get_outstanding_pac_urls failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v80 = gLogObj;
            v88 = type[0];
            if (os_log_type_enabled(v80, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
              _os_log_impl(&dword_181A37000, v80, v88, "%{public}s nw_get_outstanding_pac_urls failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v79)
        {
          goto LABEL_125;
        }

LABEL_124:
        free(v79);
        goto LABEL_125;
      }

      v221 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
      v222 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v271) = 0;
      if (__nwlog_fault(v222, type, &v271))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v223 = __nwlog_obj();
          v224 = type[0];
          if (os_log_type_enabled(v223, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
            _os_log_impl(&dword_181A37000, v223, v224, "%{public}s called with null endpoint", buf, 0xCu);
          }
        }

        else if (v271 == 1)
        {
          v225 = __nw_create_backtrace_string();
          v223 = __nwlog_obj();
          v226 = type[0];
          v227 = os_log_type_enabled(v223, type[0]);
          if (v225)
          {
            if (v227)
            {
              *buf = 136446466;
              *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
              *&buf[12] = 2082;
              *&buf[14] = v225;
              _os_log_impl(&dword_181A37000, v223, v226, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v225);
            goto LABEL_316;
          }

          if (v227)
          {
            *buf = 136446210;
            *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
            _os_log_impl(&dword_181A37000, v223, v226, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v223 = __nwlog_obj();
          v228 = type[0];
          if (os_log_type_enabled(v223, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_pac_resolver_endpoint_is_pac_url";
            _os_log_impl(&dword_181A37000, v223, v228, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_316:
      if (v222)
      {
        free(v222);
      }

      v89 = 0;
      v77 = 0;
LABEL_127:

      *(self + 97) = *(self + 97) & 0x7F | v77;
      v90 = v262;
      v258 = v90[4];
      v254 = v90;

      if (nw_parameters_get_privacy_proxy_fail_closed(v258))
      {
        v91 = 2;
      }

      else
      {
        v91 = 0;
      }

      *(self + 96) = *(self + 96) & 0xFD | v91;
      if (nw_parameters_get_privacy_proxy_strict_fail_closed(v258))
      {
        v92 = 4;
      }

      else
      {
        v92 = 0;
      }

      *(self + 96) = *(self + 96) & 0xFB | v92;
      if (nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts(v258))
      {
        v93 = 8;
      }

      else
      {
        v93 = 0;
      }

      *(self + 96) = *(self + 96) & 0xF7 | v93;
      if (nw_parameters_get_prohibit_privacy_proxy(v258))
      {
        *(self + 96) |= 0x10u;
      }

      v94 = v90;
      v247 = v94[5];

      v95 = nw_parameters_copy_custom_proxy_configs(v258);
      v96 = self->custom_proxy_configs;
      self->custom_proxy_configs = v95;

      v97 = self->custom_proxy_configs;
      if (v97)
      {
        *(self + 97) |= 0x40u;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v290) = 0;
        v270[0] = MEMORY[0x1E69E9820];
        v270[1] = 3221225472;
        v270[2] = __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke;
        v270[3] = &unk_1E6A39B60;
        v270[4] = buf;
        _nw_array_apply(v97, v270);
        if (*(*&buf[8] + 24) == 1)
        {
          v98 = _nw_array_create();
          v99 = self->custom_proxy_configs;
          v267[0] = MEMORY[0x1E69E9820];
          v267[1] = 3221225472;
          v267[2] = __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_2;
          v267[3] = &unk_1E6A35E80;
          v100 = v98;
          v268 = v100;
          v269 = v247;
          if (v99)
          {
            _nw_array_apply(v99, v267);
          }

          v101 = self->custom_proxy_configs;
          self->custom_proxy_configs = v100;
          v102 = v100;
        }

        _Block_object_dispose(buf, 8);
      }

      v103 = v94;
      os_unfair_lock_lock(v103 + 28);
      v104 = v103[8];
      os_unfair_lock_unlock(v103 + 28);

      v105 = nw_path_copy_proxy_configs(v104);
      v106 = self->path_proxy_configs;
      self->path_proxy_configs = v105;

      if (!self->custom_proxy_configs && self->path_proxy_configs)
      {
        v107 = _nw_array_create();
        v108 = self->path_proxy_configs;
        v263[0] = MEMORY[0x1E69E9820];
        v263[1] = 3221225472;
        v263[2] = __49__NWConcrete_nw_endpoint_proxy_startWithHandler___block_invoke_3;
        v263[3] = &unk_1E6A3B418;
        v264 = v247;
        v265 = v256;
        v109 = v107;
        v266 = v109;
        if (v108)
        {
          _nw_array_apply(v108, v263);
        }

        v110 = self->path_proxy_configs;
        self->path_proxy_configs = v109;
        v111 = v109;
      }

      if (nw_parameters_get_is_known_tracker(v258))
      {
        v112 = 32;
      }

      else
      {
        v112 = 0;
      }

      *(self + 97) = *(self + 97) & 0xDF | v112;
      v113 = v103;
      v251[30] = 2;
      v257 = v113;

      *(v257 + 20) = 65540;
      v250 = v257 + 10;
      nw_endpoint_handler_report(v257, 0, v257 + 40, 0);
      v114 = v257;
      v115 = nw_endpoint_handler_copy_proxy(v114);
      v116 = v115;
      v117 = 40;
      if (!*(v115 + 5))
      {
        v117 = 48;
      }

      v118 = *(v115 + v117);
      v119 = v114;
      v259 = v118;
      alloca = v116;
      v120 = nw_endpoint_handler_copy_proxy(v119);
      v121 = v120;
      v271 = 0;
      v272 = &v271;
      v273 = 0x2020000000;
      LOBYTE(v274) = 0;
      if (v259 && v120)
      {
        *type = MEMORY[0x1E69E9820];
        v280 = 3221225472;
        v281 = ___ZL31nw_endpoint_proxy_check_for_pacP30NWConcrete_nw_endpoint_handlerPU22objcproto11OS_nw_array8NSObject_block_invoke;
        v282 = &unk_1E6A3BB28;
        v283 = v120;
        v284 = &v271;
        _nw_array_apply(v259, type);
      }

      v122 = v119;
      v123 = (v262[71] & 0x40) == 0;

      if (!v123)
      {
LABEL_189:
        _Block_object_dispose(&v271, 8);

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v290 = __Block_byref_object_copy__26627;
        *v291 = __Block_byref_object_dispose__26628;
        *&v291[8] = 0;
        *type = MEMORY[0x1E69E9820];
        v280 = 3221225472;
        v281 = ___ZL43nw_endpoint_proxy_check_for_companion_proxyPU22objcproto11OS_nw_array8NSObject_block_invoke;
        v282 = &unk_1E6A39B60;
        v283 = buf;
        if (v259)
        {
          _nw_array_apply(v259, type);
          v143 = *(*&buf[8] + 40);
        }

        else
        {
          v143 = 0;
        }

        v249 = v143;
        _Block_object_dispose(buf, 8);

        v144 = v122;
        v145 = nw_endpoint_handler_copy_proxy(v144);
        v146 = *(v145 + 8);
        if (v146)
        {
          CFRelease(v146);
          *(v145 + 8) = 0;
        }

        v147 = v144;
        v148 = v254[4];

        v149 = nw_parameters_copy_url_endpoint(v148);
        v150 = v149;
        if (v149)
        {
          v151 = v149;
          v152 = _nw_endpoint_copy_cfurl(v151);

          *(v145 + 8) = v152;
          if (!v152)
          {
            goto LABEL_244;
          }

LABEL_235:
          v183 = CFURLCopyScheme(v152);
          v184 = v183;
          if (v183)
          {
            if (CFStringCompare(v183, @"https", 1uLL) && CFStringCompare(v184, @"wss", 1uLL))
            {
              if (CFStringCompare(v184, @"http", 1uLL) && CFStringCompare(v184, @"ws", 1uLL))
              {
                goto LABEL_243;
              }

              v185 = 1;
            }

            else
            {
              v185 = 2;
            }

            *(v145 + 98) |= v185;
LABEL_243:
            CFRelease(v184);
          }

LABEL_244:

          v186 = _nw_array_create();
          v187 = *(alloca + 7);
          *(alloca + 7) = v186;

          *(alloca + 96) &= ~0x40u;
          *(alloca + 6) = 0;
          if (*(alloca + 97) < 0)
          {
            direct = nw_proxy_config_create_direct();
            if (direct)
            {
              v212 = *(alloca + 7);
              if (v212)
              {
                _nw_array_append(v212, direct);
              }
            }
          }

          else
          {
            v188 = v147;
            direct = v254[4];

            no_proxy = nw_parameters_get_no_proxy(direct);
            prefer_no_proxy = nw_parameters_get_prefer_no_proxy(direct);
            v192 = _nw_array_create();
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke;
            aBlock[3] = &unk_1E6A3CCB8;
            v255 = v192;
            v288 = v255;
            v193 = _Block_copy(aBlock);
            v194 = *(alloca + 6);
            if (v194)
            {
              _nw_array_apply(v194, v193);
            }

            v195 = *(alloca + 5);
            if (v195)
            {
              _nw_array_apply(v195, v193);
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke_2;
            v290 = &unk_1E6A35ED0;
            v196 = v188;
            *v291 = v196;
            *&v291[8] = direct;
            v197 = v255;
            *&v291[16] = v197;
            v198 = v249;
            *&v291[24] = v198;
            if (v259)
            {
              _nw_array_apply(v259, buf);
            }

            v199 = prefer_no_proxy | no_proxy;
            if ((prefer_no_proxy | no_proxy))
            {
              v200 = nw_proxy_config_create_direct();
              if (v200)
              {
                v201 = *(alloca + 7);
                if (v201)
                {
                  _nw_array_append(v201, v200);
                }
              }
            }

            if ((no_proxy & 1) == 0)
            {
              *type = MEMORY[0x1E69E9820];
              v280 = 3221225472;
              v281 = ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke_3;
              v282 = &unk_1E6A35ED0;
              v283 = v196;
              v284 = direct;
              v285 = v197;
              v202 = v198;
              v286 = v202;
              if (v259)
              {
                _nw_array_apply(v259, type);
                v202 = v286;
              }
            }

            if ((v199 & 1) == 0 && ((*(alloca + 96) & 0x40) == 0 || nw_array_is_empty(*(alloca + 7))))
            {
              v203 = nw_proxy_config_create_direct();
              if (v203)
              {
                v204 = *(alloca + 7);
                if (v204)
                {
                  _nw_array_append(v204, v203);
                }
              }
            }

            if ((no_proxy & 1) == 0)
            {
              v271 = MEMORY[0x1E69E9820];
              v272 = 3221225472;
              v273 = ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke_4;
              v274 = &unk_1E6A35ED0;
              v275 = v196;
              v276 = direct;
              v277 = v197;
              v205 = v198;
              v278 = v205;
              if (v259)
              {
                _nw_array_apply(v259, &v271);
                v205 = v278;
              }
            }
          }

          *(v257 + 20) = 131076;
          nw_endpoint_handler_report(v147, 0, v250, 0);

          v206 = v147;
          v207 = nw_endpoint_handler_copy_proxy(v206);
          *(v257 + 20) = 196612;
          nw_endpoint_handler_report(v206, 0, v250, 0);
          *type = 0;
          v280 = type;
          v281 = 0x3032000000;
          v282 = __Block_byref_object_copy__26627;
          v283 = __Block_byref_object_dispose__26628;
          v284 = 0;
          v208 = v207[7];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke;
          v290 = &unk_1E6A35E30;
          v209 = v206;
          *v291 = v209;
          v210 = v207;
          *&v291[8] = v210;
          *&v291[16] = type;
          if (v208)
          {
            _nw_array_apply(v208, buf);
            v211 = *(v280 + 40);
            if (v211)
            {
              objc_storeStrong(v207 + 7, v211);
            }
          }

          nw_endpoint_proxy_complete_resolve(v209);

          _Block_object_dispose(type, 8);
          goto LABEL_276;
        }

        v153 = nw_endpoint_handler_copy_endpoint(v147);
        v154 = *(v145 + 97);
        type[0] = OS_LOG_TYPE_DEFAULT;
        v241 = v153;
        v155 = nw_endpoint_proxy_copy_synthesized_url(v153, v148, (v154 & 4) == 0, type);
        *(v145 + 8) = v155;
        v156 = v155 == 0;
        v157 = v147;
        v158 = *(v262 + 284);

        if (v156)
        {
          if ((v158 & 0x40) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v165 = gconnectionLogObj;
            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
            {
              v166 = nw_endpoint_handler_get_id_string(v157);
              v246 = nw_endpoint_handler_dry_run_string(v157);
              v252 = nw_endpoint_handler_copy_endpoint(v157);
              v167 = nw_endpoint_get_logging_description(v252);
              v168 = nw_endpoint_handler_state_string(v157);
              v169 = nw_endpoint_handler_mode_string(v157);
              v170 = nw_endpoint_handler_copy_current_path(v157);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_proxy_fillout_url";
              *&buf[12] = 2082;
              *&buf[14] = v166;
              *&buf[22] = 2082;
              v290 = v246;
              *v291 = 2082;
              *&v291[2] = v167;
              *&v291[10] = 2082;
              *&v291[12] = v168;
              *&v291[20] = 2082;
              *&v291[22] = v169;
              *&v291[30] = 2114;
              v292 = v170;
              _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to synthesize URL", buf, 0x48u);
            }
          }

LABEL_234:

          v152 = *(v145 + 8);
          if (!v152)
          {
            goto LABEL_244;
          }

          goto LABEL_235;
        }

        if ((v158 & 0x40) != 0)
        {
LABEL_233:
          *(v145 + 96) |= 0x80u;
          *(v145 + 97) = *(v145 + 97) & 0xFD | (2 * type[0]);
          goto LABEL_234;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v159 = gconnectionLogObj;
        if (!os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
        {
LABEL_232:

          goto LABEL_233;
        }

        log = v159;
        v239 = v157;

        v160 = v239;
        v161 = (v262[71] & 1) == 0;

        if (v161)
        {
          v162 = "";
        }

        else
        {
          v162 = "dry-run ";
        }

        v163 = nw_endpoint_handler_copy_endpoint(v160);
        v164 = v163;
        v237 = v162;
        if (v163)
        {
          v236 = _nw_endpoint_get_logging_description(v163);
        }

        else
        {
          v236 = "<NULL>";
        }

        v171 = v160;
        v172 = v171;
        v173 = v251[30];
        if (v173 > 5)
        {
          v174 = "unknown-state";
        }

        else
        {
          v174 = off_1E6A31048[v173];
        }

        v253 = v174;

        v175 = v172;
        v176 = v175;
        v177 = v245[29];
        if (v177 > 2)
        {
          switch(v177)
          {
            case 3:
              v178 = "proxy";
              goto LABEL_231;
            case 4:
              v178 = "fallback";
              goto LABEL_231;
            case 5:
              v178 = "transform";
              goto LABEL_231;
          }
        }

        else
        {
          switch(v177)
          {
            case 0:
              v178 = "path";
              goto LABEL_231;
            case 1:
              v178 = "resolver";
              goto LABEL_231;
            case 2:
              v178 = nw_endpoint_flow_mode_string(v175[33]);
LABEL_231:
              v179 = (v154 & 4) == 0;

              v180 = v176;
              os_unfair_lock_lock(v103 + 28);
              v181 = v103[8];
              os_unfair_lock_unlock(v103 + 28);

              v182 = *(v145 + 8);
              *buf = 136448514;
              *&buf[4] = "nw_endpoint_proxy_fillout_url";
              *&buf[12] = 2082;
              *&buf[14] = v239->id_str;
              *&buf[22] = 2082;
              v290 = v237;
              *v291 = 2082;
              *&v291[2] = v236;
              *&v291[10] = 2082;
              *&v291[12] = v253;
              *&v291[20] = 2082;
              *&v291[22] = v178;
              *&v291[30] = 2114;
              v292 = v181;
              v293 = 2114;
              v294 = v182;
              v295 = 1024;
              v296 = v179;
              v297 = 1024;
              v298 = type[0];
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Synthesized URL %{public}@ (allowed to override scheme: %u, overrode scheme %u)", buf, 0x5Eu);

              v159 = log;
              goto LABEL_232;
          }
        }

        v178 = "unknown-mode";
        goto LABEL_231;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v124 = gconnectionLogObj;
      if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
      {
LABEL_188:

        goto LABEL_189;
      }

      v125 = v122;

      v126 = v125;
      v127 = (v262[71] & 1) == 0;

      v128 = "dry-run ";
      if (v127)
      {
        v128 = "";
      }

      v248 = v128;
      v129 = nw_endpoint_handler_copy_endpoint(v126);
      v130 = v129;
      if (v129)
      {
        v242 = _nw_endpoint_get_logging_description(v129);
      }

      else
      {
        v242 = "<NULL>";
      }

      v131 = v126;
      v132 = v131;
      v133 = v251[30];
      if (v133 > 5)
      {
        v134 = "unknown-state";
      }

      else
      {
        v134 = off_1E6A31048[v133];
      }

      v135 = v132;
      v136 = v135;
      v137 = v245[29];
      if (v137 > 2)
      {
        switch(v137)
        {
          case 3:
            v138 = "proxy";
            break;
          case 4:
            v138 = "fallback";
            break;
          case 5:
            v138 = "transform";
            break;
          default:
LABEL_180:
            v138 = "unknown-mode";
            break;
        }
      }

      else
      {
        if (v137)
        {
          if (v137 == 1)
          {
            v138 = "resolver";
            goto LABEL_183;
          }

          if (v137 == 2)
          {
            v240 = nw_endpoint_flow_mode_string(v135[33]);
LABEL_184:

            v139 = v136;
            os_unfair_lock_lock(v103 + 28);
            v140 = v103[8];
            os_unfair_lock_unlock(v103 + 28);

            v141 = *(v272 + 24) == 0;
            *buf = 136448002;
            *&buf[4] = "nw_endpoint_proxy_check_for_pac";
            if (v141)
            {
              v142 = "does not have";
            }

            else
            {
              v142 = "has";
            }

            *&buf[12] = 2082;
            *&buf[14] = v125->id_str;
            *&buf[22] = 2082;
            v290 = v248;
            *v291 = 2082;
            *&v291[2] = v242;
            *&v291[10] = 2082;
            *&v291[12] = v134;
            *&v291[20] = 2082;
            *&v291[22] = v240;
            *&v291[30] = 2114;
            v292 = v140;
            v293 = 2080;
            v294 = v142;
            _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy %s PAC", buf, 0x52u);

            goto LABEL_188;
          }

          goto LABEL_180;
        }

        v138 = "path";
      }

LABEL_183:
      v240 = v138;
      goto LABEL_184;
    }

    v13 = v262;

    v14 = v13;
    v15 = *(v262 + 284);

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
    if (v17)
    {
      v19 = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      v19 = "<NULL>";
    }

    v33 = v13 + 184;

    v34 = v14;
    v35 = v34;
    v36 = v251[30];
    if (v36 > 5)
    {
      v37 = "unknown-state";
    }

    else
    {
      v37 = off_1E6A31048[v36];
    }

    v38 = v35;
    v39 = v38;
    v40 = v245[29];
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = "proxy";
          goto LABEL_60;
        case 4:
          v41 = "fallback";
          goto LABEL_60;
        case 5:
          v41 = "transform";
          goto LABEL_60;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v41 = "path";
          goto LABEL_60;
        case 1:
          v41 = "resolver";
          goto LABEL_60;
        case 2:
          v41 = nw_endpoint_flow_mode_string(v38[33]);
LABEL_60:

          v43 = v39;
          os_unfair_lock_lock(v43 + 28);
          v44 = v43[8];
          os_unfair_lock_unlock(v43 + 28);

          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_proxy startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v33;
          *&buf[22] = 2082;
          v290 = v16;
          *v291 = 2082;
          *&v291[2] = v19;
          *&v291[10] = 2082;
          *&v291[12] = v37;
          *&v291[20] = 2082;
          *&v291[22] = v41;
          *&v291[30] = 2114;
          v292 = v44;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          goto LABEL_61;
      }
    }

    v41 = "unknown-mode";
    goto LABEL_60;
  }

LABEL_277:
}

@end
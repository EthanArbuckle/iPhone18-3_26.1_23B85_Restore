@interface NWConcrete_nw_endpoint_fallback
- (BOOL)applyWithHandler:(id)handler toChildren:(id)children;
- (NWConcrete_nw_endpoint_fallback)init;
- (void)cancelWithHandler:(id)handler forced:(BOOL)forced;
- (void)dealloc;
- (void)startWithHandler:(id)handler;
- (void)updatePathWithHandler:(id)handler;
@end

@implementation NWConcrete_nw_endpoint_fallback

- (NWConcrete_nw_endpoint_fallback)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_endpoint_fallback;
  v2 = [(NWConcrete_nw_endpoint_fallback *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_endpoint_fallback init]";
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
        v18 = "[NWConcrete_nw_endpoint_fallback init]";
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
          v18 = "[NWConcrete_nw_endpoint_fallback init]";
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
        v18 = "[NWConcrete_nw_endpoint_fallback init]";
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
        v18 = "[NWConcrete_nw_endpoint_fallback init]";
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
  v2.super_class = NWConcrete_nw_endpoint_fallback;
  [(NWConcrete_nw_endpoint_fallback *)&v2 dealloc];
}

- (BOOL)applyWithHandler:(id)handler toChildren:(id)children
{
  v47 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  childrenCopy = children;
  if (!handlerCopy)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v13, &type, &v37))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_41;
      }

      if (v31)
      {
        *buf = 136446210;
        v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v14, v32, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  v8 = handlerCopy;
  v9 = v8[29];

  if (v9 != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (v9 > 5)
    {
      v12 = "unknown-mode";
    }

    else
    {
      v12 = off_1E6A31018[v9];
    }

    *buf = 136446722;
    v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
    v41 = 2082;
    v42 = v12;
    v43 = 2082;
    v44 = "fallback";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v13, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (v9 > 5)
          {
            v16 = "unknown-mode";
          }

          else
          {
            v16 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = v16;
          v43 = 2082;
          v44 = "fallback";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v37 == 1)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (v17)
        {
          if (v19)
          {
            if (v9 > 5)
            {
              v20 = "unknown-mode";
            }

            else
            {
              v20 = off_1E6A31018[v9];
            }

            *buf = 136446978;
            v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
            v41 = 2082;
            v42 = v20;
            v43 = 2082;
            v44 = "fallback";
            v45 = 2082;
            v46 = v17;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v17);
          if (!v13)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v19)
        {
          if (v9 > 5)
          {
            v23 = "unknown-mode";
          }

          else
          {
            v23 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = v23;
          v43 = 2082;
          v44 = "fallback";
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (v9 > 5)
          {
            v22 = "unknown-mode";
          }

          else
          {
            v22 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = v22;
          v43 = 2082;
          v44 = "fallback";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (!childrenCopy)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v13, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null applyBlock", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v14, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
            v41 = 2082;
            v42 = v33;
            _os_log_impl(&dword_181A37000, v14, v34, "%{public}s called with null applyBlock, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          if (!v13)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v35)
        {
          *buf = 136446210;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          _os_log_impl(&dword_181A37000, v14, v34, "%{public}s called with null applyBlock, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          _os_log_impl(&dword_181A37000, v14, v36, "%{public}s called with null applyBlock, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_40;
    }

LABEL_41:
    if (!v13)
    {
LABEL_43:
      v10 = 1;
      goto LABEL_44;
    }

LABEL_42:
    free(v13);
    goto LABEL_43;
  }

  if ((!self->primary_child || childrenCopy[2](childrenCopy)) && (!self->fallback_child || childrenCopy[2](childrenCopy)))
  {
    goto LABEL_43;
  }

  v10 = 0;
LABEL_44:

  return v10;
}

- (void)updatePathWithHandler:(id)handler
{
  v142 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!handlerCopy)
  {
    v84 = __nwlog_obj();
    *buf = 136446210;
    v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v126 = 0;
    if (!__nwlog_fault(v27, &type, &v126))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v28, v85, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v126 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v87 = type;
      v88 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v88)
        {
          *buf = 136446466;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v87, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_75;
      }

      if (v88)
      {
        *buf = 136446210;
        v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v28, v87, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v89 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v28, v89, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  v6 = handlerCopy;
  v7 = v6[29];

  if (v7 != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (v7 > 5)
    {
      v26 = "unknown-mode";
    }

    else
    {
      v26 = off_1E6A31018[v7];
    }

    *buf = 136446722;
    v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
    v130 = 2082;
    v131 = v26;
    v132 = 2082;
    v133 = "fallback";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v126 = 0;
    if (__nwlog_fault(v27, &type, &v126))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v28, type))
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
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = v30;
          v132 = 2082;
          v133 = "fallback";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v126 == 1)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v32 = type;
        v33 = os_log_type_enabled(v28, type);
        if (v31)
        {
          if (v33)
          {
            if (v7 > 5)
            {
              v34 = "unknown-mode";
            }

            else
            {
              v34 = off_1E6A31018[v7];
            }

            *buf = 136446978;
            v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
            v130 = 2082;
            v131 = v34;
            v132 = 2082;
            v133 = "fallback";
            v134 = 2082;
            v135 = v31;
            _os_log_impl(&dword_181A37000, v28, v32, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v31);
          if (!v27)
          {
            goto LABEL_103;
          }

LABEL_76:
          free(v27);
          goto LABEL_103;
        }

        if (v33)
        {
          if (v7 > 5)
          {
            v49 = "unknown-mode";
          }

          else
          {
            v49 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = v49;
          v132 = 2082;
          v133 = "fallback";
          _os_log_impl(&dword_181A37000, v28, v32, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v28, type))
        {
          if (v7 > 5)
          {
            v36 = "unknown-mode";
          }

          else
          {
            v36 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = v36;
          v132 = 2082;
          v133 = "fallback";
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_74;
    }

LABEL_75:
    if (!v27)
    {
      goto LABEL_103;
    }

    goto LABEL_76;
  }

  if ((*(self + 108) & 0x20) == 0 && self->fallback_interface)
  {
    v8 = v6;
    os_unfair_lock_lock(v8 + 28);
    v9 = *(v8 + 8);
    os_unfair_lock_unlock(v8 + 28);

    v125 = v9;
    fallback_interface_index = nw_path_get_fallback_interface_index(v9);
    if (fallback_interface_index)
    {
      fallback_interface = self->fallback_interface;
      if (fallback_interface)
      {
        if (fallback_interface_index == _nw_interface_get_index(fallback_interface))
        {
          goto LABEL_84;
        }
      }
    }

    fallback_timer = self->fallback_timer;
    if (fallback_timer)
    {
      nw_queue_cancel_source(fallback_timer, v10);
      self->fallback_timer = 0;
    }

    if (!self->result && self->fallback_child)
    {
      v37 = v8;
      v38 = *(v37 + 284);

      if ((v38 & 0x20) != 0)
      {
        if (nw_endpoint_handler_get_logging_disabled(v37))
        {
          goto LABEL_48;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v102 = gconnectionLogObj;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          loge = nw_endpoint_handler_get_id_string(v37);
          v103 = nw_endpoint_handler_dry_run_string(v37);
          v104 = nw_endpoint_handler_copy_endpoint(v37);
          logging_description = nw_endpoint_get_logging_description(v104);
          v106 = nw_endpoint_handler_state_string(v37);
          v107 = nw_endpoint_handler_mode_string(v37);
          v108 = nw_endpoint_handler_copy_current_path(v37);
          *buf = 136447746;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = loge;
          v132 = 2082;
          v133 = v103;
          v134 = 2082;
          v135 = logging_description;
          v136 = 2082;
          v137 = v106;
          v138 = 2082;
          v139 = v107;
          v140 = 2114;
          v141 = v108;
          v41 = v102;
          _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed, cancelling fallback attempt", buf, 0x48u);
        }

        else
        {
          v41 = v102;
        }
      }

      else
      {
        v39 = v37;
        v40 = *(v37 + 284);

        if ((v40 & 0x40) != 0)
        {
LABEL_48:
          nw_endpoint_handler_cancel(self->fallback_child, 0, 1);
          goto LABEL_84;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v41 = gconnectionLogObj;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          id_string = nw_endpoint_handler_get_id_string(v39);
          v43 = nw_endpoint_handler_dry_run_string(v39);
          loga = v41;
          v44 = nw_endpoint_handler_copy_endpoint(v39);
          v45 = nw_endpoint_get_logging_description(v44);
          v46 = nw_endpoint_handler_state_string(v39);
          v47 = nw_endpoint_handler_mode_string(v39);
          v48 = nw_endpoint_handler_copy_current_path(v39);
          *buf = 136447746;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = id_string;
          v132 = 2082;
          v133 = v43;
          v134 = 2082;
          v135 = v45;
          v136 = 2082;
          v137 = v46;
          v138 = 2082;
          v139 = v47;
          v140 = 2114;
          v141 = v48;
          v41 = loga;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed, cancelling fallback attempt", buf, 0x48u);
        }
      }

      goto LABEL_48;
    }

    v14 = v8;
    v15 = *(v14 + 284);

    if ((v15 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v14))
      {
        goto LABEL_84;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        logc = nw_endpoint_handler_get_id_string(v14);
        v90 = nw_endpoint_handler_dry_run_string(v14);
        v91 = nw_endpoint_handler_copy_endpoint(v14);
        v92 = nw_endpoint_get_logging_description(v91);
        v93 = nw_endpoint_handler_state_string(v14);
        v94 = nw_endpoint_handler_mode_string(v14);
        v95 = nw_endpoint_handler_copy_current_path(v14);
        *buf = 136447746;
        v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        v130 = 2082;
        v131 = logc;
        v132 = 2082;
        v133 = v90;
        v134 = 2082;
        v135 = v92;
        v136 = 2082;
        v137 = v93;
        v138 = 2082;
        v139 = v94;
        v140 = 2114;
        v141 = v95;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed", buf, 0x48u);
      }

      goto LABEL_83;
    }

    v16 = v14;
    v17 = *(v14 + 284);

    if ((v17 & 0x40) != 0)
    {
LABEL_84:
      if (!nw_path_fallback_is_forced(v125) || (*(self + 108) & 8) != 0)
      {
        goto LABEL_102;
      }

      v61 = v8;
      v62 = (v61[71] & 0x20) == 0;

      if (v62)
      {
        v63 = v61;
        v64 = (v61[71] & 0x40) == 0;

        if (!v64)
        {
          goto LABEL_93;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v65 = gconnectionLogObj;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = nw_endpoint_handler_get_id_string(v63);
          v67 = nw_endpoint_handler_dry_run_string(v63);
          logb = v65;
          v117 = nw_endpoint_handler_copy_endpoint(v63);
          v68 = nw_endpoint_get_logging_description(v117);
          v69 = nw_endpoint_handler_state_string(v63);
          v70 = nw_endpoint_handler_mode_string(v63);
          v71 = nw_endpoint_handler_copy_current_path(v63);
          *buf = 136447746;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = v66;
          v132 = 2082;
          v133 = v67;
          v134 = 2082;
          v135 = v68;
          v136 = 2082;
          v137 = v69;
          v138 = 2082;
          v139 = v70;
          v140 = 2114;
          v141 = v71;
          v65 = logb;
          _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Immediate fallback requested", buf, 0x48u);
        }
      }

      else
      {
        if (nw_endpoint_handler_get_logging_disabled(v61))
        {
LABEL_93:
          *(self + 108) |= 8u;
          if (!self->result)
          {
            nw_endpoint_fallback_start_fallback_child(v61);
            nw_endpoint_handler_cancel(self->primary_child, 0, 1);
            goto LABEL_102;
          }

          v72 = v61;
          v73 = (v61[71] & 0x20) == 0;

          if (v73)
          {
            v74 = v72;
            v75 = (v61[71] & 0x40) == 0;

            if (!v75)
            {
LABEL_102:

              goto LABEL_103;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v76 = gconnectionLogObj;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              v77 = nw_endpoint_handler_get_id_string(v74);
              v78 = nw_endpoint_handler_dry_run_string(v74);
              v79 = nw_endpoint_handler_copy_endpoint(v74);
              v80 = nw_endpoint_get_logging_description(v79);
              v81 = nw_endpoint_handler_state_string(v74);
              v82 = nw_endpoint_handler_mode_string(v74);
              v83 = nw_endpoint_handler_copy_current_path(v74);
              *buf = 136447746;
              v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
              v130 = 2082;
              v131 = v77;
              v132 = 2082;
              v133 = v78;
              v134 = 2082;
              v135 = v80;
              v136 = 2082;
              v137 = v81;
              v138 = 2082;
              v139 = v82;
              v140 = 2114;
              v141 = v83;
              _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Ignoring immediate fallback request since race is complete", buf, 0x48u);
            }
          }

          else
          {
            if (nw_endpoint_handler_get_logging_disabled(v72))
            {
              goto LABEL_102;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v76 = gconnectionLogObj;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              v109 = nw_endpoint_handler_get_id_string(v72);
              v110 = nw_endpoint_handler_dry_run_string(v72);
              v111 = nw_endpoint_handler_copy_endpoint(v72);
              v112 = nw_endpoint_get_logging_description(v111);
              v113 = nw_endpoint_handler_state_string(v72);
              v114 = nw_endpoint_handler_mode_string(v72);
              v115 = nw_endpoint_handler_copy_current_path(v72);
              *buf = 136447746;
              v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
              v130 = 2082;
              v131 = v109;
              v132 = 2082;
              v133 = v110;
              v134 = 2082;
              v135 = v112;
              v136 = 2082;
              v137 = v113;
              v138 = 2082;
              v139 = v114;
              v140 = 2114;
              v141 = v115;
              _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Ignoring immediate fallback request since race is complete", buf, 0x48u);
            }
          }

          goto LABEL_102;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v96 = gconnectionLogObj;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          logd = nw_endpoint_handler_get_id_string(v61);
          v118 = nw_endpoint_handler_dry_run_string(v61);
          v97 = nw_endpoint_handler_copy_endpoint(v61);
          v98 = nw_endpoint_get_logging_description(v97);
          v99 = nw_endpoint_handler_state_string(v61);
          v100 = nw_endpoint_handler_mode_string(v61);
          v101 = nw_endpoint_handler_copy_current_path(v61);
          *buf = 136447746;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = logd;
          v132 = 2082;
          v133 = v118;
          v134 = 2082;
          v135 = v98;
          v136 = 2082;
          v137 = v99;
          v138 = 2082;
          v139 = v100;
          v140 = 2114;
          v141 = v101;
          v65 = v96;
          _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Immediate fallback requested", buf, 0x48u);
        }

        else
        {
          v65 = v96;
        }
      }

      goto LABEL_93;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v18 = gconnectionLogObj;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_83:

      goto LABEL_84;
    }

    v19 = v16;

    v20 = v19;
    v21 = *(v14 + 284);

    if (v21)
    {
      v22 = "dry-run ";
    }

    else
    {
      v22 = "";
    }

    v23 = nw_endpoint_handler_copy_endpoint(v20);
    v24 = v23;
    log = v22;
    if (v23)
    {
      v116 = _nw_endpoint_get_logging_description(v23);
    }

    else
    {
      v116 = "<NULL>";
    }

    v50 = v19 + 184;

    v51 = v20;
    v52 = v51;
    v53 = v51[30];
    if (v53 > 5)
    {
      v54 = "unknown-state";
    }

    else
    {
      v54 = off_1E6A31048[v53];
    }

    v55 = v52;
    v56 = v55;
    v57 = v6[29];
    if (v57 > 2)
    {
      switch(v57)
      {
        case 3:
          v58 = "proxy";
          goto LABEL_82;
        case 4:
          v58 = "fallback";
          goto LABEL_82;
        case 5:
          v58 = "transform";
          goto LABEL_82;
      }
    }

    else
    {
      switch(v57)
      {
        case 0:
          v58 = "path";
          goto LABEL_82;
        case 1:
          v58 = "resolver";
          goto LABEL_82;
        case 2:
          v58 = nw_endpoint_flow_mode_string(v55[33]);
LABEL_82:

          v59 = v56;
          os_unfair_lock_lock(v8 + 28);
          v60 = *(v8 + 8);
          os_unfair_lock_unlock(v8 + 28);

          *buf = 136447746;
          v129 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v130 = 2082;
          v131 = v50;
          v132 = 2082;
          v133 = log;
          v134 = 2082;
          v135 = v116;
          v136 = 2082;
          v137 = v54;
          v138 = 2082;
          v139 = v58;
          v140 = 2114;
          v141 = v60;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed", buf, 0x48u);

          goto LABEL_83;
      }
    }

    v58 = "unknown-mode";
    goto LABEL_82;
  }

LABEL_103:
}

- (void)cancelWithHandler:(id)handler forced:(BOOL)forced
{
  forcedCopy = forced;
  v49 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!handlerCopy)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v22, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v23, v34, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v39 != 1)
      {
        v23 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v23, v38, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_45;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v23, v36, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v37)
      {
        *buf = 136446466;
        v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
        v43 = 2082;
        v44 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v36, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_46:
    if (!v22)
    {
      goto LABEL_48;
    }

LABEL_47:
    free(v22);
    goto LABEL_48;
  }

  v8 = handlerCopy;
  v9 = v8[29];

  if (v9 == 4)
  {
    fallback_timer = self->fallback_timer;
    if (fallback_timer)
    {
      nw_queue_cancel_source(fallback_timer, v10);
      self->fallback_timer = 0;
    }

    post_transport_timer = self->post_transport_timer;
    if (post_transport_timer)
    {
      nw_queue_cancel_source(post_transport_timer, v10);
      self->post_transport_timer = 0;
    }

    usage_cap_timer = self->usage_cap_timer;
    if (usage_cap_timer)
    {
      nw_queue_cancel_source(usage_cap_timer, v10);
      self->usage_cap_timer = 0;
    }

    primary_child = self->primary_child;
    if (primary_child)
    {
      nw_endpoint_handler_cancel(primary_child, forcedCopy, 0);
    }

    fallback_child = self->fallback_child;
    if (fallback_child)
    {
      nw_endpoint_handler_cancel(fallback_child, forcedCopy, 0);
    }

    v16 = self->primary_child;
    self->primary_child = 0;

    v17 = self->fallback_child;
    self->fallback_child = 0;

    primary_interface = self->primary_interface;
    self->primary_interface = 0;

    fallback_interface = self->fallback_interface;
    self->fallback_interface = 0;

    goto LABEL_48;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (v9 > 5)
  {
    v21 = "unknown-mode";
  }

  else
  {
    v21 = off_1E6A31018[v9];
  }

  *buf = 136446722;
  v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
  v43 = 2082;
  v44 = v21;
  v45 = 2082;
  v46 = "fallback";
  v22 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v22, &type, &v39))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    if (os_log_type_enabled(v23, type))
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
      v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
      v43 = 2082;
      v44 = v25;
      v45 = 2082;
      v46 = "fallback";
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_45:

    goto LABEL_46;
  }

  if (v39 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v30 = type;
    if (os_log_type_enabled(v23, type))
    {
      if (v9 > 5)
      {
        v31 = "unknown-mode";
      }

      else
      {
        v31 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
      v43 = 2082;
      v44 = v31;
      v45 = 2082;
      v46 = "fallback";
      _os_log_impl(&dword_181A37000, v23, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_45;
  }

  v26 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  v27 = type;
  v28 = os_log_type_enabled(v23, type);
  if (!v26)
  {
    if (v28)
    {
      if (v9 > 5)
      {
        v32 = "unknown-mode";
      }

      else
      {
        v32 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
      v43 = 2082;
      v44 = v32;
      v45 = 2082;
      v46 = "fallback";
      _os_log_impl(&dword_181A37000, v23, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_45;
  }

  if (v28)
  {
    if (v9 > 5)
    {
      v29 = "unknown-mode";
    }

    else
    {
      v29 = off_1E6A31018[v9];
    }

    *buf = 136446978;
    v42 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
    v43 = 2082;
    v44 = v29;
    v45 = 2082;
    v46 = "fallback";
    v47 = 2082;
    v48 = v26;
    _os_log_impl(&dword_181A37000, v23, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v26);
  if (v22)
  {
    goto LABEL_47;
  }

LABEL_48:
}

- (void)startWithHandler:(id)handler
{
  v295 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!handlerCopy)
  {
    v208 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
    v209 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v273[0]) = 0;
    if (__nwlog_fault(v209, type, v273))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v210 = __nwlog_obj();
        v211 = type[0];
        if (os_log_type_enabled(v210, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          _os_log_impl(&dword_181A37000, v210, v211, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (LOBYTE(v273[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v210 = __nwlog_obj();
        v213 = type[0];
        v214 = os_log_type_enabled(v210, type[0]);
        if (backtrace_string)
        {
          if (v214)
          {
            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v210, v213, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_296;
        }

        if (v214)
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          _os_log_impl(&dword_181A37000, v210, v213, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v210 = __nwlog_obj();
        v215 = type[0];
        if (os_log_type_enabled(v210, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          _os_log_impl(&dword_181A37000, v210, v215, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_296:
    if (v209)
    {
      free(v209);
    }

    v5 = 0;
    goto LABEL_244;
  }

  v6 = handlerCopy;
  v7 = v6[29];

  if (v7 != 4)
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
    *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
    *&buf[12] = 2082;
    *&buf[14] = v22;
    *&buf[22] = 2082;
    *&buf[24] = "fallback";
    v23 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v273[0]) = 0;
    if (__nwlog_fault(v23, type, v273))
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
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          *&buf[22] = 2082;
          *&buf[24] = "fallback";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (LOBYTE(v273[0]) == 1)
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
            *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = v30;
            *&buf[22] = 2082;
            *&buf[24] = "fallback";
            *&buf[32] = 2082;
            *&buf[34] = v27;
            _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v27);
          if (!v23)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        if (v29)
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
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v43;
          *&buf[22] = 2082;
          *&buf[24] = "fallback";
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
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          *&buf[22] = 2082;
          *&buf[24] = "fallback";
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v23)
    {
LABEL_106:
      v5 = v21;
      goto LABEL_244;
    }

LABEL_105:
    free(v23);
    goto LABEL_106;
  }

  v8 = v6;
  v9 = v8[30];

  if (v9 == 1)
  {
    v260 = v5;
    v261 = v8;
    v10 = v8;
    v11 = *(v10 + 284);
    v268 = v10;

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
      primary_child = self->primary_child;
      self->primary_child = 0;

      fallback_child = self->fallback_child;
      self->fallback_child = 0;

      primary_interface = self->primary_interface;
      self->primary_interface = 0;

      fallback_interface = self->fallback_interface;
      self->fallback_interface = 0;

      v262 = nw_endpoint_handler_copy_endpoint(v268);
      v50 = v268;
      os_unfair_lock_lock(v50 + 28);
      v270 = *(v50 + 8);
      os_unfair_lock_unlock(v50 + 28);

      if (nw_path_fallback_is_weak(v270))
      {
        v51 = 2;
      }

      else
      {
        v51 = 0;
      }

      *(self + 108) = *(self + 108) & 0xFD | v51;
      if (nw_path_fallback_should_not_use_timer(v270))
      {
        v52 = 4;
      }

      else
      {
        v52 = 0;
      }

      *(self + 108) = *(self + 108) & 0xFB | v52;
      if (nw_path_fallback_is_forced(v270))
      {
        v53 = 8;
      }

      else
      {
        v53 = 0;
      }

      *(self + 108) = *(self + 108) & 0xF7 | v53;
      v54 = self + 108;
      if (nw_path_fallback_is_preferred(v270))
      {
        v55 = 16;
      }

      else
      {
        v55 = 0;
      }

      *v54 = *(self + 108) & 0xEF | v55;
      v56 = v50;
      v263 = v56[4];
      v267 = v56;

      if ((*v54 & 2) != 0)
      {
        goto LABEL_115;
      }

      if (v263)
      {
        traffic_class = _nw_parameters_get_traffic_class(v263);
        if (traffic_class == 200 || traffic_class == 100)
        {
          *(self + 108) |= 2u;
          v58 = v56;
          v59 = (v268[71] & 0x20) == 0;

          if (v59)
          {
            v60 = v58;
            v61 = (v268[71] & 0x40) == 0;

            if (!v61)
            {
              goto LABEL_115;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v62 = gconnectionLogObj;
            if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              goto LABEL_114;
            }

            v63 = v60;

            v64 = v63;
            v65 = (v268[71] & 1) == 0;

            if (v65)
            {
              v66 = "";
            }

            else
            {
              v66 = "dry-run ";
            }

            v67 = nw_endpoint_handler_copy_endpoint(v64);
            v68 = v67;
            if (v67)
            {
              logging_description = _nw_endpoint_get_logging_description(v67);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v70 = v64;
            v71 = v70;
            v72 = v261[30];
            if (v72 > 5)
            {
              v73 = "unknown-state";
            }

            else
            {
              v73 = off_1E6A31048[v72];
            }

            v264 = v73;

            v74 = v71;
            v75 = v74;
            v76 = v6[29];
            if (v76 > 2)
            {
              switch(v76)
              {
                case 3:
                  v77 = "proxy";
                  break;
                case 4:
                  v77 = "fallback";
                  break;
                case 5:
                  v77 = "transform";
                  break;
                default:
LABEL_109:
                  v77 = "unknown-mode";
                  break;
              }
            }

            else
            {
              if (v76)
              {
                if (v76 == 1)
                {
                  v77 = "resolver";
                  goto LABEL_112;
                }

                if (v76 == 2)
                {
                  v256 = nw_endpoint_flow_mode_string(v74[33]);
LABEL_113:

                  v78 = v63;
                  v79 = v62;
                  v80 = v66;
                  v81 = logging_description;
                  v82 = v75;
                  os_unfair_lock_lock(v50 + 28);
                  v83 = *(v50 + 8);
                  os_unfair_lock_unlock(v50 + 28);

                  v84 = v80;
                  v62 = v79;
                  *buf = 136447746;
                  *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
                  *&buf[12] = 2082;
                  *&buf[14] = v78 + 23;
                  *&buf[22] = 2082;
                  *&buf[24] = v84;
                  *&buf[32] = 2082;
                  *&buf[34] = v81;
                  *&buf[42] = 2082;
                  *&buf[44] = v264;
                  *&buf[52] = 2082;
                  *&buf[54] = v256;
                  *&buf[62] = 2114;
                  *v293 = v83;
                  _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Overriding strong fallback to weak fallback for background traffic", buf, 0x48u);

LABEL_114:
                  goto LABEL_115;
                }

                goto LABEL_109;
              }

              v77 = "path";
            }

LABEL_112:
            v256 = v77;
            goto LABEL_113;
          }

          if ((nw_endpoint_handler_get_logging_disabled(v58) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v62 = gconnectionLogObj;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v58);
              v266 = nw_endpoint_handler_dry_run_string(v58);
              v227 = nw_endpoint_handler_copy_endpoint(v58);
              v228 = nw_endpoint_get_logging_description(v227);
              v229 = nw_endpoint_handler_state_string(v58);
              v230 = nw_endpoint_handler_mode_string(v58);
              v231 = nw_endpoint_handler_copy_current_path(v58);
              *buf = 136447746;
              *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
              *&buf[12] = 2082;
              *&buf[14] = id_string;
              *&buf[22] = 2082;
              *&buf[24] = v266;
              *&buf[32] = 2082;
              *&buf[34] = v228;
              *&buf[42] = 2082;
              *&buf[44] = v229;
              *&buf[52] = 2082;
              *&buf[54] = v230;
              *&buf[62] = 2114;
              *v293 = v231;
              _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Overriding strong fallback to weak fallback for background traffic", buf, 0x48u);
            }

            goto LABEL_114;
          }
        }

LABEL_115:
        v85 = _nw_parameters_copy(v263);
        v265 = _nw_parameters_copy(v263);
        v86 = nw_path_copy_direct_interface(v270);
        v87 = self->primary_interface;
        self->primary_interface = v86;

        v88 = v270;
        v89 = v265;
        fallback_interface_index = nw_path_get_fallback_interface_index(v270);
        if (fallback_interface_index)
        {
          if (nw_context_copy_implicit_context::onceToken[0] != -1)
          {
            dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
          }

          v91 = nw_context_copy_implicit_context::implicit_context;
          v92 = nw_path_copy_interface_with_generation(v91, fallback_interface_index, 0);

          v93 = self->fallback_interface;
          self->fallback_interface = v92;

          v94 = self->fallback_interface;
          if (v94)
          {
            v88 = v270;
            v89 = v265;
            v95 = 8 * (_nw_interface_get_type(v94) == 2);
          }

          else
          {
            v95 = 0;
            v88 = v270;
            v89 = v265;
          }

          v96 = *(self + 109) & 0xF7 | v95;
          *(self + 109) = v96;
          if ((v96 & 8) == 0)
          {
            goto LABEL_125;
          }
        }

        else if ((*(self + 109) & 8) == 0)
        {
          goto LABEL_125;
        }

        if ((*(self + 108) & 0x18) == 0)
        {
          *buf = 0;
          *&buf[8] = 0;
          nw_parameters_get_e_proc_uuid(v263);
          nw_parameters_get_pid(v263);
          nw_parameters_get_effective_bundle_id(v263);
          self->fallback_disposition = _symptoms_daemon_fallback_initial_disposition();
LABEL_126:
          if ((nw_path_update_parameters_for_fallback(v88, v89) & 1) == 0)
          {
            nw_parameters_set_required_interface_type(v89, nw_interface_type_cellular);
            nw_parameters_set_only_primary_requires_type(v89, 1);
            *(self + 108) |= 0x22u;
          }

          nw_parameters_set_fallback_applied(v85, 1);
          nw_parameters_set_fallback_applied(v89, 1);
          nw_parameters_set_is_fallback(v89, 1);
          if ((*(self + 108) & 0x10) != 0)
          {
            v97 = 4;
          }

          else if ((*(self + 108) & 4) != 0)
          {
            v97 = 1;
          }

          else if ((*(self + 108) & 2) != 0)
          {
            v97 = 2;
          }

          else
          {
            v97 = 3;
          }

          nw_parameters_set_fallback_mode(v89, v97);
          v273[0] = 0;
          v273[1] = 0;
          if (nw_path_get_client_id(v88, v273))
          {
            nw_parameters_set_parent_id_internal(v85, v273);
            nw_parameters_set_parent_id_internal(v89, v273);
          }

          if ((*(self + 108) & 8) == 0)
          {
            if ((*(self + 108) & 0x10) != 0)
            {
              inner = nw_endpoint_handler_create_inner(v262, v89, nw_endpoint_fallback_receive_report, v267, v267, 0, 0, 0);
              v89 = v85;
            }

            else
            {
              inner = nw_endpoint_handler_create_inner(v262, v85, nw_endpoint_fallback_receive_report, v267, v267, 0, 0, 0);
            }

            v110 = self->primary_child;
            self->primary_child = inner;

            v111 = nw_endpoint_handler_create_inner(v262, v89, nw_endpoint_fallback_receive_report, v267, v267, 0, 0, 0);
            v112 = self->fallback_child;
            self->fallback_child = v111;

            v252 = v267;
            v114 = nw_endpoint_handler_copy_fallback(v252);
            v115 = *(v114 + 9);
            if (v115)
            {
              nw_queue_cancel_source(v115, v113);
              *(v114 + 9) = 0;
            }

            if ((*(v114 + 108) & 4) != 0)
            {
              goto LABEL_242;
            }

            v254 = v114;
            v258 = v252;
            v116 = nw_endpoint_handler_copy_fallback(v258);
            v251 = v116;
            if ((*(v116 + 108) & 0x10) != 0)
            {
              v117 = &nw_fallback_delay_max_limit_ms;
              v118 = &nw_setting_tcpconn_fallback_delay_cap_ms;
            }

            else
            {
              if ((*(v116 + 108) & 2) != 0)
              {
                if ((*(v116 + 108) & 0x20) != 0)
                {
                  int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_weak_fallback_delay, 200);
                  v184 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_delay_cap_ms, 500);
                  v120 = v184;
                  if (int64_with_default <= 0x7FFFFFFFFFFFFFFELL && 2 * int64_with_default < v184)
                  {
                    v120 = 2 * int64_with_default;
                  }
                }

                else
                {
                  v119 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_weak_fallback_delay, 0);
                  if ((v119 - 0x8637BD05AF6) >= 0xFFFFF79C842FA50BLL)
                  {
                    goto LABEL_160;
                  }

                  v134 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_wifi_advantage_per_rtt_ms, 175);
                  if (v134 <= 0)
                  {
                    v135 = 175;
                  }

                  else
                  {
                    v135 = v134;
                  }

                  v136 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_delay_cap_ms, 500);
                  *&v293[16] = 0u;
                  v294 = 0u;
                  if ((v136 - 1) >= 0x8637BD05AF5)
                  {
                    v137 = 500;
                  }

                  else
                  {
                    v137 = v136;
                  }

                  *v293 = 0uLL;
                  memset(buf, 0, sizeof(buf));
                  if (nw_endpoint_handler_fillout_route_stats(v258, buf))
                  {
                    v138 = (DWORD2(v294) + 2 * HIDWORD(v294)) >> 5;
                  }

                  else
                  {
                    v138 = 0;
                  }

                  v250 = v138;
                  if (nw_endpoint_handler_fillout_route_stats(*(v251 + 5), buf) && (v188 = DWORD2(v294) + 2 * HIDWORD(v294), v188 > 0x1F))
                  {
                    v197 = v188 >> 5;
                  }

                  else if (nw_endpoint_handler_get_logging_disabled(v258))
                  {
                    v197 = 200;
                  }

                  else
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v189 = gconnectionLogObj;
                    if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                    {
                      v190 = nw_endpoint_handler_get_id_string(v258);
                      v191 = nw_endpoint_handler_dry_run_string(v258);
                      v247 = v85;
                      v192 = v190;
                      v245 = nw_endpoint_handler_copy_endpoint(v258);
                      v193 = nw_endpoint_get_logging_description(v245);
                      v194 = nw_endpoint_handler_state_string(v258);
                      v195 = nw_endpoint_handler_mode_string(v258);
                      v196 = nw_endpoint_handler_copy_current_path(v258);
                      *type = 136448002;
                      v275 = "nw_endpoint_fallback_get_timeout_nanos";
                      v276 = 2082;
                      v277 = v192;
                      v278 = 2082;
                      v279 = v191;
                      v280 = 2082;
                      v281 = v193;
                      v282 = 2082;
                      v283 = v194;
                      v284 = 2082;
                      v285 = v195;
                      v286 = 2114;
                      v287 = v196;
                      v288 = 2048;
                      v289 = 200;
                      _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No RTT information for fallback interface, will use a default value %llums", type, 0x52u);

                      v85 = v247;
                    }

                    v197 = 200;
                    v138 = v250;
                  }

                  v198 = v138 - v197;
                  if (v138 - v197 <= v135)
                  {
                    v198 = v135;
                  }

                  if (v138 <= v197)
                  {
                    v198 = v135;
                  }

                  v199 = 2 * v198;
                  if (2 * v198 >= v137)
                  {
                    v199 = v137;
                  }

                  if (v198 >= 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v120 = v137;
                  }

                  else
                  {
                    v120 = v199;
                  }

                  if ((nw_endpoint_handler_get_logging_disabled(v258) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v200 = gconnectionLogObj;
                    if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
                    {
                      v246 = v120;
                      v201 = nw_endpoint_handler_get_id_string(v258);
                      v202 = nw_endpoint_handler_dry_run_string(v258);
                      v248 = v85;
                      v203 = nw_endpoint_handler_copy_endpoint(v258);
                      v204 = nw_endpoint_get_logging_description(v203);
                      v205 = nw_endpoint_handler_state_string(v258);
                      v206 = nw_endpoint_handler_mode_string(v258);
                      v207 = nw_endpoint_handler_copy_current_path(v258);
                      *type = 136448258;
                      v275 = "nw_endpoint_fallback_get_timeout_nanos";
                      v276 = 2082;
                      v277 = v201;
                      v278 = 2082;
                      v279 = v202;
                      v280 = 2082;
                      v281 = v204;
                      v282 = 2082;
                      v283 = v205;
                      v284 = 2082;
                      v285 = v206;
                      v286 = 2114;
                      v287 = v207;
                      v288 = 2048;
                      v289 = v250;
                      v290 = 2048;
                      v291 = v197;
                      _os_log_impl(&dword_181A37000, v200, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Primary RTT: %llums, fallback RTT: %llums", type, 0x5Cu);

                      v120 = v246;
                      v85 = v248;
                    }
                  }
                }

LABEL_161:
                if ((nw_endpoint_handler_get_logging_disabled(v258) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v121 = gconnectionLogObj;
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
                  {
                    v122 = nw_endpoint_handler_get_id_string(v258);
                    v123 = nw_endpoint_handler_dry_run_string(v258);
                    v124 = nw_endpoint_handler_copy_endpoint(v258);
                    v125 = v124;
                    if (v124)
                    {
                      v249 = _nw_endpoint_get_logging_description(v124);
                    }

                    else
                    {
                      v249 = "<NULL>";
                    }

                    v139 = v85;
                    v140 = nw_endpoint_handler_state_string(v258);
                    v141 = v120;
                    v142 = nw_endpoint_handler_mode_string(v258);
                    v143 = nw_endpoint_handler_copy_current_path(v258);
                    v144 = v143;
                    v145 = *(v251 + 108);
                    v146 = ", weak";
                    *buf = 136448258;
                    *&buf[4] = "nw_endpoint_fallback_get_timeout_nanos";
                    *&buf[12] = 2082;
                    if ((v145 & 2) == 0)
                    {
                      v146 = ", strong";
                    }

                    *&buf[14] = v122;
                    *&buf[22] = 2082;
                    *&buf[24] = v123;
                    *&buf[32] = 2082;
                    *&buf[34] = v249;
                    *&buf[42] = 2082;
                    *&buf[44] = v140;
                    v85 = v139;
                    *&buf[52] = 2082;
                    *&buf[54] = v142;
                    v120 = v141;
                    *&buf[62] = 2114;
                    *v293 = v143;
                    *&v293[8] = 2048;
                    *&v293[10] = v141;
                    *&v293[18] = 2082;
                    *&v293[20] = v146;
                    _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting %llums fallback timer%{public}s", buf, 0x5Cu);
                  }
                }

                v254[3] = 1000000 * v120;
                minimize_logging = nw_endpoint_handler_get_minimize_logging(v258);
                logging_disabled = nw_endpoint_handler_get_logging_disabled(v258);
                if (minimize_logging)
                {
                  if (logging_disabled)
                  {
LABEL_205:
                    v160 = nw_endpoint_handler_copy_context(v258);
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = ___ZL32nw_endpoint_fallback_start_timerP30NWConcrete_nw_endpoint_handler_block_invoke;
                    *&buf[24] = &unk_1E6A3D868;
                    *&buf[32] = v258;
                    v254[9] = nw_queue_context_create_source(v160, 2, 3, 0, buf, 0);

                    if (v254[9])
                    {
                      v161 = mach_continuous_time();
                      if (v161 <= 1)
                      {
                        v162 = 1;
                      }

                      else
                      {
                        v162 = v161;
                      }

                      v254[12] = v162;
                      v163 = v254[9];
                      v164 = dispatch_time(0x8000000000000000, v254[3]);
                      nw_queue_set_timer_values(v163, v164, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                      nw_queue_activate_source(v254[9], v165);
LABEL_241:

                      v114 = v254;
LABEL_242:

                      goto LABEL_243;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v166 = gLogObj;
                    *type = 136446210;
                    v275 = "nw_endpoint_fallback_start_timer";
                    v167 = _os_log_send_and_compose_impl();

                    v272 = OS_LOG_TYPE_ERROR;
                    v271 = 0;
                    if (__nwlog_fault(v167, &v272, &v271))
                    {
                      if (v272 == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v168 = gLogObj;
                        v169 = v272;
                        if (os_log_type_enabled(v168, v272))
                        {
                          *type = 136446210;
                          v275 = "nw_endpoint_fallback_start_timer";
                          _os_log_impl(&dword_181A37000, v168, v169, "%{public}s nw_queue_context_create_source(timer) failed", type, 0xCu);
                        }
                      }

                      else if (v271 == 1)
                      {
                        v170 = __nw_create_backtrace_string();
                        if (v170)
                        {
                          v171 = v170;
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v172 = gLogObj;
                          v173 = v272;
                          if (os_log_type_enabled(v172, v272))
                          {
                            *type = 136446466;
                            v275 = "nw_endpoint_fallback_start_timer";
                            v276 = 2082;
                            v277 = v171;
                            _os_log_impl(&dword_181A37000, v172, v173, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", type, 0x16u);
                          }

                          free(v171);
                          goto LABEL_239;
                        }

                        v168 = __nwlog_obj();
                        v186 = v272;
                        if (os_log_type_enabled(v168, v272))
                        {
                          *type = 136446210;
                          v275 = "nw_endpoint_fallback_start_timer";
                          _os_log_impl(&dword_181A37000, v168, v186, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", type, 0xCu);
                        }
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v168 = gLogObj;
                        v185 = v272;
                        if (os_log_type_enabled(v168, v272))
                        {
                          *type = 136446210;
                          v275 = "nw_endpoint_fallback_start_timer";
                          _os_log_impl(&dword_181A37000, v168, v185, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", type, 0xCu);
                        }
                      }
                    }

LABEL_239:
                    if (v167)
                    {
                      free(v167);
                    }

                    goto LABEL_241;
                  }

                  v232 = v85;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v149 = gconnectionLogObj;
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
                  {
                    v233 = nw_endpoint_handler_get_id_string(v258);
                    v234 = nw_endpoint_handler_dry_run_string(v258);
                    v235 = nw_endpoint_handler_copy_endpoint(v258);
                    v236 = nw_endpoint_get_logging_description(v235);
                    v237 = nw_endpoint_handler_state_string(v258);
                    v238 = nw_endpoint_handler_mode_string(v258);
                    v239 = nw_endpoint_handler_copy_current_path(v258);
                    v240 = v254[3] / 0xF4240uLL;
                    *buf = 136448002;
                    *&buf[4] = "nw_endpoint_fallback_start_timer";
                    *&buf[12] = 2082;
                    *&buf[14] = v233;
                    *&buf[22] = 2082;
                    *&buf[24] = v234;
                    *&buf[32] = 2082;
                    *&buf[34] = v236;
                    *&buf[42] = 2082;
                    *&buf[44] = v237;
                    *&buf[52] = 2082;
                    *&buf[54] = v238;
                    *&buf[62] = 2114;
                    *v293 = v239;
                    *&v293[8] = 2048;
                    *&v293[10] = v240;
                    _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting fallback endpoint in %llums", buf, 0x52u);

                    v85 = v232;
                  }
                }

                else
                {
                  if (logging_disabled)
                  {
                    goto LABEL_205;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v149 = gconnectionLogObj;
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
                  {
                    v150 = nw_endpoint_handler_get_id_string(v258);
                    v151 = nw_endpoint_handler_dry_run_string(v258);
                    v152 = nw_endpoint_handler_copy_endpoint(v258);
                    v153 = v152;
                    if (v152)
                    {
                      v154 = _nw_endpoint_get_logging_description(v152);
                    }

                    else
                    {
                      v154 = "<NULL>";
                    }

                    v155 = v85;
                    v156 = nw_endpoint_handler_state_string(v258);
                    v157 = nw_endpoint_handler_mode_string(v258);
                    v158 = nw_endpoint_handler_copy_current_path(v258);
                    v159 = v254[3] / 0xF4240uLL;
                    *buf = 136448002;
                    *&buf[4] = "nw_endpoint_fallback_start_timer";
                    *&buf[12] = 2082;
                    *&buf[14] = v150;
                    *&buf[22] = 2082;
                    *&buf[24] = v151;
                    *&buf[32] = 2082;
                    *&buf[34] = v154;
                    *&buf[42] = 2082;
                    *&buf[44] = v156;
                    v85 = v155;
                    *&buf[52] = 2082;
                    *&buf[54] = v157;
                    *&buf[62] = 2114;
                    *v293 = v158;
                    *&v293[8] = 2048;
                    *&v293[10] = v159;
                    _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting fallback endpoint in %llums", buf, 0x52u);
                  }
                }

                goto LABEL_205;
              }

              v117 = &nw_default_strong_fallback_delay_ms;
              v118 = &nw_setting_tcpconn_strong_fallback_delay;
            }

            v119 = networkd_settings_get_int64_with_default(*v118, *v117);
LABEL_160:
            v120 = v119;
            goto LABEL_161;
          }

          v99 = v267;
          v100 = (v268[71] & 0x20) == 0;

          if (!v100)
          {
            if (nw_endpoint_handler_get_logging_disabled(v99))
            {
              goto LABEL_228;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v103 = gconnectionLogObj;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              v220 = nw_endpoint_handler_get_id_string(v99);
              v259 = nw_endpoint_handler_dry_run_string(v99);
              v221 = nw_endpoint_handler_copy_endpoint(v99);
              v222 = nw_endpoint_get_logging_description(v221);
              v223 = nw_endpoint_handler_state_string(v99);
              v224 = nw_endpoint_handler_mode_string(v99);
              v225 = nw_endpoint_handler_copy_current_path(v99);
              *buf = 136447746;
              *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
              *&buf[12] = 2082;
              *&buf[14] = v220;
              *&buf[22] = 2082;
              *&buf[24] = v259;
              *&buf[32] = 2082;
              *&buf[34] = v222;
              *&buf[42] = 2082;
              *&buf[44] = v223;
              *&buf[52] = 2082;
              *&buf[54] = v224;
              *&buf[62] = 2114;
              *v293 = v225;
              _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback advisory is forced", buf, 0x48u);
            }

            goto LABEL_227;
          }

          v101 = v99;
          v102 = (v268[71] & 0x40) == 0;

          if (!v102)
          {
LABEL_228:
            v181 = nw_endpoint_handler_create_inner(v262, v265, nw_endpoint_fallback_receive_report, v99, v99, 0, 0, 0);
            v182 = self->primary_child;
            self->primary_child = v181;

LABEL_243:
            v187 = v267;
            v261[30] = 2;

            *(v187 + 20) = 65541;
            nw_endpoint_handler_report(v187, 0, v187 + 40, 0);
            nw_endpoint_handler_start(self->primary_child);

            v5 = v260;
            goto LABEL_244;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v103 = gconnectionLogObj;
          if (!os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
LABEL_227:

            goto LABEL_228;
          }

          v104 = v101;

          v105 = v104;
          v106 = (v268[71] & 1) == 0;

          if (v106)
          {
            v107 = "";
          }

          else
          {
            v107 = "dry-run ";
          }

          v108 = nw_endpoint_handler_copy_endpoint(v105);
          v109 = v108;
          if (v108)
          {
            v257 = _nw_endpoint_get_logging_description(v108);
          }

          else
          {
            v257 = "<NULL>";
          }

          v126 = v105;
          v127 = v126;
          v128 = v261[30];
          if (v128 > 5)
          {
            v129 = "unknown-state";
          }

          else
          {
            v129 = off_1E6A31048[v128];
          }

          v255 = v129;

          v130 = v127;
          v131 = v130;
          v132 = v6[29];
          if (v132 > 2)
          {
            switch(v132)
            {
              case 3:
                v133 = "proxy";
                break;
              case 4:
                v133 = "fallback";
                break;
              case 5:
                v133 = "transform";
                break;
              default:
LABEL_222:
                v133 = "unknown-mode";
                break;
            }
          }

          else
          {
            if (v132)
            {
              if (v132 == 1)
              {
                v133 = "resolver";
                goto LABEL_225;
              }

              if (v132 == 2)
              {
                v253 = nw_endpoint_flow_mode_string(v130[33]);
LABEL_226:

                v174 = v104;
                v175 = v103;
                v176 = v107;
                v177 = v85;
                v178 = v131;
                os_unfair_lock_lock(v50 + 28);
                v179 = *(v50 + 8);
                os_unfair_lock_unlock(v50 + 28);

                v85 = v177;
                v180 = v176;
                v103 = v175;
                *buf = 136447746;
                *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
                *&buf[12] = 2082;
                *&buf[14] = v174 + 23;
                *&buf[22] = 2082;
                *&buf[24] = v180;
                *&buf[32] = 2082;
                *&buf[34] = v257;
                *&buf[42] = 2082;
                *&buf[44] = v255;
                *&buf[52] = 2082;
                *&buf[54] = v253;
                *&buf[62] = 2114;
                *v293 = v179;
                _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback advisory is forced", buf, 0x48u);

                goto LABEL_227;
              }

              goto LABEL_222;
            }

            v133 = "path";
          }

LABEL_225:
          v253 = v133;
          goto LABEL_226;
        }

LABEL_125:
        self->fallback_disposition = 1;
        goto LABEL_126;
      }

      v216 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_parameters_traffic_class_is_background";
      v217 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v273[0]) = 0;
      if (__nwlog_fault(v217, type, v273))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v218 = __nwlog_obj();
          v219 = type[0];
          if (os_log_type_enabled(v218, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_traffic_class_is_background";
            _os_log_impl(&dword_181A37000, v218, v219, "%{public}s called with null parameters", buf, 0xCu);
          }
        }

        else if (LOBYTE(v273[0]) == 1)
        {
          v241 = __nw_create_backtrace_string();
          v218 = __nwlog_obj();
          v242 = type[0];
          v243 = os_log_type_enabled(v218, type[0]);
          if (v241)
          {
            if (v243)
            {
              *buf = 136446466;
              *&buf[4] = "nw_parameters_traffic_class_is_background";
              *&buf[12] = 2082;
              *&buf[14] = v241;
              _os_log_impl(&dword_181A37000, v218, v242, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v241);
            goto LABEL_321;
          }

          if (v243)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_traffic_class_is_background";
            _os_log_impl(&dword_181A37000, v218, v242, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v218 = __nwlog_obj();
          v244 = type[0];
          if (os_log_type_enabled(v218, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_traffic_class_is_background";
            _os_log_impl(&dword_181A37000, v218, v244, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_321:
      if (v217)
      {
        free(v217);
      }

      goto LABEL_115;
    }

    v13 = v268;

    v14 = v13;
    v15 = *(v268 + 284);

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

    v269 = v6;
    v33 = v13 + 184;

    v34 = v14;
    v35 = v34;
    v36 = v261[30];
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
    v40 = v269[29];
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = v16;
          v42 = "proxy";
          goto LABEL_60;
        case 4:
          v41 = v16;
          v42 = "fallback";
          goto LABEL_60;
        case 5:
          v41 = v16;
          v42 = "transform";
          goto LABEL_60;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v41 = v16;
          v42 = "path";
          goto LABEL_60;
        case 1:
          v41 = v16;
          v42 = "resolver";
          goto LABEL_60;
        case 2:
          v41 = v16;
          v42 = nw_endpoint_flow_mode_string(v38[33]);
LABEL_60:

          v44 = v39;
          os_unfair_lock_lock(v44 + 28);
          v45 = v44[8];
          os_unfair_lock_unlock(v44 + 28);

          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v33;
          *&buf[22] = 2082;
          *&buf[24] = v41;
          *&buf[32] = 2082;
          *&buf[34] = v19;
          *&buf[42] = 2082;
          *&buf[44] = v37;
          *&buf[52] = 2082;
          *&buf[54] = v42;
          *&buf[62] = 2114;
          *v293 = v45;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          v6 = v269;
          goto LABEL_61;
      }
    }

    v41 = v16;
    v42 = "unknown-mode";
    goto LABEL_60;
  }

LABEL_244:
}

@end
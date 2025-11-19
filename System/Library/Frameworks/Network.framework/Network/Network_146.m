uint64_t nw_protocol_default_reset(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (!a1)
  {
    *buf = 136446210;
    v25 = "nw_protocol_default_reset";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v4, &type, &v22))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_reset";
      v8 = "%{public}s called with null protocol";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v21 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_protocol_default_reset";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v4)
        {
          goto LABEL_28;
        }

        return 0;
      }

      if (!v21)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_reset";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_reset";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v14 = v18;
    v15 = v19;
    v16 = 12;
    goto LABEL_26;
  }

  identifier = a1->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v25 = "nw_protocol_default_reset";
  v26 = 2082;
  v27 = identifier;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v4, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v7 = a1->identifier;
      if (!v7)
      {
        v7 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_reset";
      v26 = 2082;
      v27 = v7;
      v8 = "%{public}s Reset is not supported on default callback for %{public}s";
LABEL_25:
      v14 = v5;
      v15 = v6;
      v16 = 22;
LABEL_26:
      _os_log_impl(&dword_181A37000, v14, v15, v8, buf, v16);
      goto LABEL_27;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v12 = a1->identifier;
      if (!v12)
      {
        v12 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_reset";
      v26 = 2082;
      v27 = v12;
      v8 = "%{public}s Reset is not supported on default callback for %{public}s, backtrace limit exceeded";
      goto LABEL_25;
    }

    v9 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_27;
      }

      v13 = a1->identifier;
      if (!v13)
      {
        v13 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_reset";
      v26 = 2082;
      v27 = v13;
      v8 = "%{public}s Reset is not supported on default callback for %{public}s, no backtrace";
      goto LABEL_25;
    }

    if (v10)
    {
      v11 = a1->identifier;
      if (!v11)
      {
        v11 = "invalid";
      }

      *buf = 136446722;
      v25 = "nw_protocol_default_reset";
      v26 = 2082;
      v27 = v11;
      v28 = 2082;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Reset is not supported on default callback for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v9);
  }

LABEL_27:
  if (v4)
  {
LABEL_28:
    free(v4);
  }

  return 0;
}

void nw_protocol_default_connected(nw_protocol *a1, nw_protocol *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        connected = callbacks->connected;
        if (connected)
        {

          connected();
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_default_connected";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_connected";
      v8 = "%{public}s called with null protocol";
      goto LABEL_21;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_connected";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_default_connected";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_default_connected";
      v8 = "%{public}s called with null protocol, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }
}

uint64_t nw_protocol_default_get_output_interface(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_default_get_output_interface";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v5, &type, &v11))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_get_output_interface";
      v8 = "%{public}s called with null protocol";
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v14 = "nw_protocol_default_get_output_interface";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v10)
      {
LABEL_22:
        if (v5)
        {
          free(v5);
        }

        return 0;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_get_output_interface";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_get_output_interface";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_22;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 0;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_output_interface = callbacks->get_output_interface;
  if (!get_output_interface)
  {
    return 0;
  }

  return get_output_interface();
}

void nw_protocol_default_link_state(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {
        v3 = *(v2 + 104);
        if (v3)
        {

          v3();
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_default_link_state";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v13 = "nw_protocol_default_link_state";
      v7 = "%{public}s called with null protocol";
      goto LABEL_21;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v13 = "nw_protocol_default_link_state";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v13 = "nw_protocol_default_link_state";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "nw_protocol_default_link_state";
      v7 = "%{public}s called with null protocol, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_22:
  if (v4)
  {
    free(v4);
  }
}

uint64_t nw_protocol_default_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (!a1)
  {
    *buf = 136446210;
    v25 = "nw_protocol_default_finalize_output_frames";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v4, &type, &v22))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_finalize_output_frames";
      v8 = "%{public}s called with null protocol";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v21 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_protocol_default_finalize_output_frames";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v4)
        {
          goto LABEL_28;
        }

        return 0;
      }

      if (!v21)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_finalize_output_frames";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_finalize_output_frames";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v14 = v18;
    v15 = v19;
    v16 = 12;
    goto LABEL_26;
  }

  identifier = a1->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v25 = "nw_protocol_default_finalize_output_frames";
  v26 = 2082;
  v27 = identifier;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v4, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v7 = a1->identifier;
      if (!v7)
      {
        v7 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_finalize_output_frames";
      v26 = 2082;
      v27 = v7;
      v8 = "%{public}s Default protocol handler does not support finalize_output_frames for %{public}s";
LABEL_25:
      v14 = v5;
      v15 = v6;
      v16 = 22;
LABEL_26:
      _os_log_impl(&dword_181A37000, v14, v15, v8, buf, v16);
      goto LABEL_27;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v12 = a1->identifier;
      if (!v12)
      {
        v12 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_finalize_output_frames";
      v26 = 2082;
      v27 = v12;
      v8 = "%{public}s Default protocol handler does not support finalize_output_frames for %{public}s, backtrace limit exceeded";
      goto LABEL_25;
    }

    v9 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_27;
      }

      v13 = a1->identifier;
      if (!v13)
      {
        v13 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_finalize_output_frames";
      v26 = 2082;
      v27 = v13;
      v8 = "%{public}s Default protocol handler does not support finalize_output_frames for %{public}s, no backtrace";
      goto LABEL_25;
    }

    if (v10)
    {
      v11 = a1->identifier;
      if (!v11)
      {
        v11 = "invalid";
      }

      *buf = 136446722;
      v25 = "nw_protocol_default_finalize_output_frames";
      v26 = 2082;
      v27 = v11;
      v28 = 2082;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Default protocol handler does not support finalize_output_frames for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v9);
  }

LABEL_27:
  if (v4)
  {
LABEL_28:
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_default_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (!a1)
  {
    *buf = 136446210;
    v29 = "nw_protocol_default_get_output_frames";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v29 = "nw_protocol_default_get_output_frames";
      v12 = "%{public}s called with null protocol";
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v25 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v29 = "nw_protocol_default_get_output_frames";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v8)
        {
          goto LABEL_28;
        }

        return 0;
      }

      if (!v25)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v29 = "nw_protocol_default_get_output_frames";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v29 = "nw_protocol_default_get_output_frames";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v18 = v22;
    v19 = v23;
    v20 = 12;
    goto LABEL_26;
  }

  identifier = a1->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v29 = "nw_protocol_default_get_output_frames";
  v30 = 2082;
  v31 = identifier;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v8, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v11 = a1->identifier;
      if (!v11)
      {
        v11 = "invalid";
      }

      *buf = 136446466;
      v29 = "nw_protocol_default_get_output_frames";
      v30 = 2082;
      v31 = v11;
      v12 = "%{public}s Default protocol handler does not support get_output_frames for %{public}s";
LABEL_25:
      v18 = v9;
      v19 = v10;
      v20 = 22;
LABEL_26:
      _os_log_impl(&dword_181A37000, v18, v19, v12, buf, v20);
      goto LABEL_27;
    }

    if (v26 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v16 = a1->identifier;
      if (!v16)
      {
        v16 = "invalid";
      }

      *buf = 136446466;
      v29 = "nw_protocol_default_get_output_frames";
      v30 = 2082;
      v31 = v16;
      v12 = "%{public}s Default protocol handler does not support get_output_frames for %{public}s, backtrace limit exceeded";
      goto LABEL_25;
    }

    v13 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v14 = os_log_type_enabled(gLogObj, type);
    if (!v13)
    {
      if (!v14)
      {
        goto LABEL_27;
      }

      v17 = a1->identifier;
      if (!v17)
      {
        v17 = "invalid";
      }

      *buf = 136446466;
      v29 = "nw_protocol_default_get_output_frames";
      v30 = 2082;
      v31 = v17;
      v12 = "%{public}s Default protocol handler does not support get_output_frames for %{public}s, no backtrace";
      goto LABEL_25;
    }

    if (v14)
    {
      v15 = a1->identifier;
      if (!v15)
      {
        v15 = "invalid";
      }

      *buf = 136446722;
      v29 = "nw_protocol_default_get_output_frames";
      v30 = 2082;
      v31 = v15;
      v32 = 2082;
      v33 = v13;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Default protocol handler does not support get_output_frames for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v13);
  }

LABEL_27:
  if (v8)
  {
LABEL_28:
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_default_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (a1)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      identifier = "invalid";
      if (a1->identifier)
      {
        identifier = a1->identifier;
      }

      *buf = 136446466;
      v19 = "nw_protocol_default_get_input_frames";
      v20 = 2082;
      v21 = identifier;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Default protocol handler does not support get_input_frames for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  *buf = 136446210;
  v19 = "nw_protocol_default_get_input_frames";
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_get_input_frames";
      v13 = "%{public}s called with null protocol";
      goto LABEL_20;
    }

    if (v16 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_get_input_frames";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v15 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        v19 = "nw_protocol_default_get_input_frames";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_protocol_default_get_input_frames";
      v13 = "%{public}s called with null protocol, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    }
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

  return 0;
}

uint64_t nw_protocol_default_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (!a1)
  {
    *buf = 136446210;
    v25 = "nw_protocol_default_remove_input_handler";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v4, &type, &v22))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_remove_input_handler";
      v8 = "%{public}s called with null protocol";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v21 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_protocol_default_remove_input_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v4)
        {
          goto LABEL_28;
        }

        return 0;
      }

      if (!v21)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_remove_input_handler";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_remove_input_handler";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v14 = v18;
    v15 = v19;
    v16 = 12;
    goto LABEL_26;
  }

  identifier = a1->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v25 = "nw_protocol_default_remove_input_handler";
  v26 = 2082;
  v27 = identifier;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v4, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v7 = a1->identifier;
      if (!v7)
      {
        v7 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_remove_input_handler";
      v26 = 2082;
      v27 = v7;
      v8 = "%{public}s Default protocol handler does not support remove_input_handler for %{public}s";
LABEL_25:
      v14 = v5;
      v15 = v6;
      v16 = 22;
LABEL_26:
      _os_log_impl(&dword_181A37000, v14, v15, v8, buf, v16);
      goto LABEL_27;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v12 = a1->identifier;
      if (!v12)
      {
        v12 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_remove_input_handler";
      v26 = 2082;
      v27 = v12;
      v8 = "%{public}s Default protocol handler does not support remove_input_handler for %{public}s, backtrace limit exceeded";
      goto LABEL_25;
    }

    v9 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_27;
      }

      v13 = a1->identifier;
      if (!v13)
      {
        v13 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_remove_input_handler";
      v26 = 2082;
      v27 = v13;
      v8 = "%{public}s Default protocol handler does not support remove_input_handler for %{public}s, no backtrace";
      goto LABEL_25;
    }

    if (v10)
    {
      v11 = a1->identifier;
      if (!v11)
      {
        v11 = "invalid";
      }

      *buf = 136446722;
      v25 = "nw_protocol_default_remove_input_handler";
      v26 = 2082;
      v27 = v11;
      v28 = 2082;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Default protocol handler does not support remove_input_handler for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v9);
  }

LABEL_27:
  if (v4)
  {
LABEL_28:
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_default_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_default_replace_input_handler";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v6, &type, &v28))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null protocol";
      goto LABEL_65;
    }

    if (v28 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v24 = os_log_type_enabled(v21, type);
    if (!backtrace_string)
    {
      if (!v24)
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_65;
    }

    if (!v24)
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v31 = "nw_protocol_default_replace_input_handler";
    v32 = 2082;
    v33 = backtrace_string;
    v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_51;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_default_replace_input_handler";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v6, &type, &v28))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null old_input_handler";
      goto LABEL_65;
    }

    if (v28 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null old_input_handler, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v26 = os_log_type_enabled(v21, type);
    if (!backtrace_string)
    {
      if (!v26)
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null old_input_handler, no backtrace";
      goto LABEL_65;
    }

    if (!v26)
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v31 = "nw_protocol_default_replace_input_handler";
    v32 = 2082;
    v33 = backtrace_string;
    v25 = "%{public}s called with null old_input_handler, dumping backtrace:%{public}s";
LABEL_51:
    _os_log_impl(&dword_181A37000, v21, v22, v25, buf, 0x16u);
    goto LABEL_52;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_default_replace_input_handler";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v6, &type, &v28))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null new_input_handler";
      goto LABEL_65;
    }

    if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v27 = os_log_type_enabled(v21, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v31 = "nw_protocol_default_replace_input_handler";
          v32 = 2082;
          v33 = backtrace_string;
          v25 = "%{public}s called with null new_input_handler, dumping backtrace:%{public}s";
          goto LABEL_51;
        }

LABEL_52:
        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v27)
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null new_input_handler, no backtrace";
    }

    else
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v31 = "nw_protocol_default_replace_input_handler";
      v10 = "%{public}s called with null new_input_handler, backtrace limit exceeded";
    }

LABEL_65:
    v18 = v21;
    v19 = v22;
    v20 = 12;
    goto LABEL_22;
  }

  if (a1->default_input_handler != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    default_input_handler = a1->default_input_handler;
    *buf = 136446722;
    v31 = "nw_protocol_default_replace_input_handler";
    v32 = 2048;
    v33 = default_input_handler;
    v34 = 2048;
    v35 = a2;
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v6, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v9 = a1->default_input_handler;
          *buf = 136446722;
          v31 = "nw_protocol_default_replace_input_handler";
          v32 = 2048;
          v33 = v9;
          v34 = 2048;
          v35 = a2;
          v10 = "%{public}s Old input handler does not match (%p != %p)";
LABEL_21:
          v18 = v7;
          v19 = v8;
          v20 = 32;
LABEL_22:
          _os_log_impl(&dword_181A37000, v18, v19, v10, buf, v20);
        }
      }

      else if (v28 == 1)
      {
        v13 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        v14 = os_log_type_enabled(gLogObj, type);
        if (v13)
        {
          if (v14)
          {
            v15 = a1->default_input_handler;
            *buf = 136446978;
            v31 = "nw_protocol_default_replace_input_handler";
            v32 = 2048;
            v33 = v15;
            v34 = 2048;
            v35 = a2;
            v36 = 2082;
            v37 = v13;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v13);
          goto LABEL_23;
        }

        if (v14)
        {
          v17 = a1->default_input_handler;
          *buf = 136446722;
          v31 = "nw_protocol_default_replace_input_handler";
          v32 = 2048;
          v33 = v17;
          v34 = 2048;
          v35 = a2;
          v10 = "%{public}s Old input handler does not match (%p != %p), no backtrace";
          goto LABEL_21;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v16 = a1->default_input_handler;
          *buf = 136446722;
          v31 = "nw_protocol_default_replace_input_handler";
          v32 = 2048;
          v33 = v16;
          v34 = 2048;
          v35 = a2;
          v10 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
          goto LABEL_21;
        }
      }
    }

LABEL_23:
    if (v6)
    {
      free(v6);
    }

    return 0;
  }

  nw_protocol_set_input_handler(a1, a3);
  if (!a3->output_handler)
  {
    nw_protocol_set_output_handler(a3, a1);
  }

  return 1;
}

uint64_t nw_protocol_default_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (!a1)
  {
    *buf = 136446210;
    v25 = "nw_protocol_default_add_input_handler";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v4, &type, &v22))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_add_input_handler";
      v8 = "%{public}s called with null protocol";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v21 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_protocol_default_add_input_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v4)
        {
          goto LABEL_28;
        }

        return 0;
      }

      if (!v21)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_add_input_handler";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v25 = "nw_protocol_default_add_input_handler";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    v14 = v18;
    v15 = v19;
    v16 = 12;
    goto LABEL_26;
  }

  identifier = a1->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v25 = "nw_protocol_default_add_input_handler";
  v26 = 2082;
  v27 = identifier;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v4, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v7 = a1->identifier;
      if (!v7)
      {
        v7 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_add_input_handler";
      v26 = 2082;
      v27 = v7;
      v8 = "%{public}s Default protocol handler does not support add_input_handler for %{public}s";
LABEL_25:
      v14 = v5;
      v15 = v6;
      v16 = 22;
LABEL_26:
      _os_log_impl(&dword_181A37000, v14, v15, v8, buf, v16);
      goto LABEL_27;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      v12 = a1->identifier;
      if (!v12)
      {
        v12 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_add_input_handler";
      v26 = 2082;
      v27 = v12;
      v8 = "%{public}s Default protocol handler does not support add_input_handler for %{public}s, backtrace limit exceeded";
      goto LABEL_25;
    }

    v9 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_27;
      }

      v13 = a1->identifier;
      if (!v13)
      {
        v13 = "invalid";
      }

      *buf = 136446466;
      v25 = "nw_protocol_default_add_input_handler";
      v26 = 2082;
      v27 = v13;
      v8 = "%{public}s Default protocol handler does not support add_input_handler for %{public}s, no backtrace";
      goto LABEL_25;
    }

    if (v10)
    {
      v11 = a1->identifier;
      if (!v11)
      {
        v11 = "invalid";
      }

      *buf = 136446722;
      v25 = "nw_protocol_default_add_input_handler";
      v26 = 2082;
      v27 = v11;
      v28 = 2082;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Default protocol handler does not support add_input_handler for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v9);
  }

LABEL_27:
  if (v4)
  {
LABEL_28:
    free(v4);
  }

  return 0;
}

void nw_protocol_http_cookie_create::$_2::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v94[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v21 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v90[0] = 0;
    if (!__nwlog_fault(v21, type, v90))
    {
      goto LABEL_113;
    }

    if (type[0] == 17)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null protocol";
    }

    else if (v90[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type[0];
      v30 = os_log_type_enabled(v22, type[0]);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "operator()";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_113:
        if (!v21)
        {
          return;
        }

        goto LABEL_114;
      }

      if (!v30)
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_112;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v21 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v90[0] = 0;
    if (!__nwlog_fault(v21, type, v90))
    {
      goto LABEL_113;
    }

    if (type[0] != 17)
    {
      if (v90[0] != 1)
      {
        v22 = __nwlog_obj();
        v23 = type[0];
        if (!os_log_type_enabled(v22, type[0]))
        {
          goto LABEL_113;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v24 = "%{public}s called with null http_cookie, backtrace limit exceeded";
        goto LABEL_112;
      }

      v31 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type[0];
      v32 = os_log_type_enabled(v22, type[0]);
      if (!v31)
      {
        if (!v32)
        {
          goto LABEL_113;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v24 = "%{public}s called with null http_cookie, no backtrace";
        goto LABEL_112;
      }

      if (!v32)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      v33 = "%{public}s called with null http_cookie, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v22 = __nwlog_obj();
    v23 = type[0];
    if (!os_log_type_enabled(v22, type[0]))
    {
      goto LABEL_113;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v24 = "%{public}s called with null http_cookie";
LABEL_112:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_113;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v21 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v90[0] = 0;
    if (!__nwlog_fault(v21, type, v90))
    {
      goto LABEL_113;
    }

    if (type[0] == 17)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null metadata";
      goto LABEL_112;
    }

    if (v90[0] != 1)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_112;
    }

    v31 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type[0];
    v34 = os_log_type_enabled(v22, type[0]);
    if (!v31)
    {
      if (!v34)
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_112;
    }

    if (!v34)
    {
      goto LABEL_67;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v31;
    v33 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_66:
    _os_log_impl(&dword_181A37000, v22, v23, v33, buf, 0x16u);
    goto LABEL_67;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v21 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v90[0] = 0;
    if (!__nwlog_fault(v21, type, v90))
    {
      goto LABEL_113;
    }

    if (type[0] == 17)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null completion";
      goto LABEL_112;
    }

    if (v90[0] != 1)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_112;
    }

    v31 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type[0];
    v35 = os_log_type_enabled(v22, type[0]);
    if (!v31)
    {
      if (!v35)
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v24 = "%{public}s called with null completion, no backtrace";
      goto LABEL_112;
    }

    if (v35)
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      v33 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

LABEL_67:
    free(v31);
    if (!v21)
    {
      return;
    }

LABEL_114:
    free(v21);
    return;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v86 = __Block_byref_object_copy__16369;
  v87 = __Block_byref_object_dispose__16370;
  object = nw_http_metadata_copy_request(a3);
  v89 |= 1u;
  v7 = *(*&buf[8] + 40);
  if (!v7)
  {
    __nwlog_obj();
    *type = 136446210;
    *&type[4] = "operator()";
    v25 = _os_log_send_and_compose_impl();
    v90[0] = 16;
    v74[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v25, v90, v74))
    {
      goto LABEL_118;
    }

    if (v90[0] == 17)
    {
      v26 = __nwlog_obj();
      v27 = v90[0];
      if (!os_log_type_enabled(v26, v90[0]))
      {
        goto LABEL_118;
      }

      *type = 136446210;
      *&type[4] = "operator()";
      v28 = "%{public}s called with null request";
    }

    else if (v74[0] == OS_LOG_TYPE_INFO)
    {
      v36 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = v90[0];
      v37 = os_log_type_enabled(v26, v90[0]);
      if (v36)
      {
        if (v37)
        {
          *type = 136446466;
          *&type[4] = "operator()";
          *&type[12] = 2082;
          *&type[14] = v36;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null request, dumping backtrace:%{public}s", type, 0x16u);
        }

        free(v36);
        goto LABEL_118;
      }

      if (!v37)
      {
LABEL_118:
        if (v25)
        {
          free(v25);
        }

        goto LABEL_25;
      }

      *type = 136446210;
      *&type[4] = "operator()";
      v28 = "%{public}s called with null request, no backtrace";
    }

    else
    {
      v26 = __nwlog_obj();
      v27 = v90[0];
      if (!os_log_type_enabled(v26, v90[0]))
      {
        goto LABEL_118;
      }

      *type = 136446210;
      *&type[4] = "operator()";
      v28 = "%{public}s called with null request, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v26, v27, v28, type, 0xCu);
    goto LABEL_118;
  }

  v8 = v7;
  is_safe = _nw_http_request_is_safe();

  *(v5 + 360) = *(v5 + 360) & 0xFE | is_safe;
  if ((nw_http_fields_have_field_with_name(*(*&buf[8] + 40), "Cookie") & 1) == 0)
  {
    parameters = nw_protocol_get_parameters(*(v5 + 48));
    if (parameters)
    {
      v11 = os_retain(parameters);
    }

    else
    {
      v11 = 0;
    }

    v12 = nw_parameters_copy_protocol_options_legacy(v11, v5);
    v13 = nw_http_cookie_options_copy_cookie_storage(v12);
    v14 = nw_parameters_copy_url_endpoint(v11);
    if (!v13)
    {
LABEL_16:
      if (!v14)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v15 = v12;
    v16 = v15;
    if (v15)
    {
      v17 = nw_protocol_copy_http_cookie_definition_onceToken;
      v18 = v15;
      if (v17 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
      }

      v19 = nw_protocol_options_matches_definition(v18, nw_protocol_copy_http_cookie_definition_http_cookie_definition);

      if (v19)
      {
        *v90 = 0;
        *&v90[8] = v90;
        *&v90[16] = 0x2020000000;
        LOBYTE(v91) = 0;
        *type = MEMORY[0x1E69E9820];
        *&type[8] = 3221225472;
        *&type[16] = __nw_http_cookie_options_get_should_not_send_cookies_block_invoke;
        v81 = &unk_1E6A3A858;
        v82 = v90;
        nw_protocol_options_access_handle(v18, type);
        v20 = *(*&v90[8] + 24);
        _Block_object_dispose(v90, 8);

        if (v20)
        {
          goto LABEL_16;
        }

LABEL_136:
        if (!v14)
        {
          goto LABEL_19;
        }

        if (nw_endpoint_get_type(v14) == nw_endpoint_type_url)
        {
          cfa = nw_endpoint_copy_cfurl(v14);
          if (cfa)
          {
            v79[0] = 0;
            v79[1] = v79;
            v79[2] = 0x2000000000;
            *v74 = MEMORY[0x1E69E9820];
            v75 = 0x40000000;
            v76 = ___ZZ30nw_protocol_http_cookie_createENK3__2clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke;
            v77 = &__block_descriptor_tmp_15_16376;
            v78 = v5;
            v79[3] = 0;
            *type = MEMORY[0x1E69E9820];
            *&type[8] = 0x40000000;
            *&type[16] = __nw_http_diag_log_for_level_block_invoke;
            v81 = &unk_1E6A303F0;
            LODWORD(v83) = 2;
            BYTE4(v83) = 0;
            v82 = v74;
            os_unfair_lock_lock(&lock);
            (*&type[16])(type);
            os_unfair_lock_unlock(&lock);
            v70 = nw_parameters_copy_main_document_cfurl(v11);
            v50 = nw_http_cookie_options_copy_site_for_cookies(v16);
            is_top_level_navigation = nw_http_cookie_options_get_is_top_level_navigation(v16);
            v65 = *(v5 + 360);
            cookie_partition_identifier = nw_http_cookie_options_get_cookie_partition_identifier(v16);
            v51 = v16;
            v52 = v50;
            allow_only_partitioned_cookies = nw_http_cookie_options_get_allow_only_partitioned_cookies(v51);
            *type = MEMORY[0x1E69E9820];
            *&type[8] = 0x40000000;
            *&type[16] = ___ZZ30nw_protocol_http_cookie_createENK3__2clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke_16;
            v81 = &unk_1E6A2D8C8;
            v82 = v79;
            v83 = buf;
            v84 = v5;
            v54 = v13;
            v55 = type;
            v66 = v54;
            v71 = v54[1];
            if (v52)
            {
              v63 = v55;
              v56 = v52;
              v94[0] = v52;
              v93[0] = @"_kCFHTTPCookiePolicyPropertySiteForCookies";
              v93[1] = @"_kCFHTTPCookiePolicyPropertyIsTopLevelNavigation";
              v57 = [MEMORY[0x1E696AD98] numberWithBool:is_top_level_navigation];
              v94[1] = v57;
              v93[2] = @"_kCFHTTPCookiePolicyPropertyIsSafeRequest";
              v58 = [MEMORY[0x1E696AD98] numberWithBool:v65 & 1];
              v94[2] = v58;
              v93[3] = @"_kCFHTTPCookiePolicyPropertyAllowOnlyPartitionedCookies";
              v59 = [MEMORY[0x1E696AD98] numberWithBool:allow_only_partitioned_cookies];
              v94[3] = v59;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:4];

              v52 = v56;
              v55 = v63;
            }

            else
            {
              v60 = 0;
            }

            if (cookie_partition_identifier)
            {
              v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
            }

            else
            {
              v61 = 0;
            }

            *v90 = MEMORY[0x1E69E9820];
            *&v90[8] = 3221225472;
            *&v90[16] = __nw_http_cookie_enumerate_block_invoke;
            v91 = &unk_1E6A3BC60;
            v62 = v55;
            v92 = v62;
            [v71 _getCookiesForURL:cfa mainDocumentURL:v70 partition:v61 policyProperties:v60 completionHandler:v90];

            if (v52)
            {
              CFRelease(v52);
            }

            if (v70)
            {
              CFRelease(v70);
            }

            _Block_object_dispose(v79, 8);
            CFRelease(cfa);
          }
        }

LABEL_17:
        os_release(v14);
LABEL_18:
        if (!v13)
        {
LABEL_20:
          if (v12)
          {
            os_release(v12);
          }

          if (v11)
          {
            os_release(v11);
          }

          goto LABEL_24;
        }

LABEL_19:
        os_release(v13);
        goto LABEL_20;
      }

      v42 = __nwlog_obj();
      *v90 = 136446210;
      *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
      cf = _os_log_send_and_compose_impl();

      v74[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v94[0]) = 0;
      v39 = cf;
      if (__nwlog_fault(cf, v74, v94))
      {
        if (v74[0] == OS_LOG_TYPE_FAULT)
        {
          v40 = __nwlog_obj();
          v43 = v74[0];
          if (os_log_type_enabled(v40, v74[0]))
          {
            *v90 = 136446210;
            *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
            _os_log_impl(&dword_181A37000, v40, v43, "%{public}s protocol options are not http_cookie", v90, 0xCu);
          }

LABEL_125:

          goto LABEL_132;
        }

        if (LOBYTE(v94[0]) != 1)
        {
          v40 = __nwlog_obj();
          v49 = v74[0];
          if (os_log_type_enabled(v40, v74[0]))
          {
            *v90 = 136446210;
            *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
            _os_log_impl(&dword_181A37000, v40, v49, "%{public}s protocol options are not http_cookie, backtrace limit exceeded", v90, 0xCu);
          }

          goto LABEL_125;
        }

        v44 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v69 = v74[0];
        v47 = os_log_type_enabled(v45, v74[0]);
        if (v44)
        {
          if (v47)
          {
            *v90 = 136446466;
            *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
            *&v90[12] = 2082;
            *&v90[14] = v44;
            _os_log_impl(&dword_181A37000, v45, v69, "%{public}s protocol options are not http_cookie, dumping backtrace:%{public}s", v90, 0x16u);
          }

LABEL_103:

          free(v44);
LABEL_132:
          v39 = cf;
          goto LABEL_133;
        }

        if (v47)
        {
          *v90 = 136446210;
          *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
          _os_log_impl(&dword_181A37000, v45, v69, "%{public}s protocol options are not http_cookie, no backtrace", v90, 0xCu);
        }

        goto LABEL_131;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      *v90 = 136446210;
      *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
      cf = _os_log_send_and_compose_impl();

      v74[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v94[0]) = 0;
      v39 = cf;
      if (__nwlog_fault(cf, v74, v94))
      {
        if (v74[0] == OS_LOG_TYPE_FAULT)
        {
          v40 = __nwlog_obj();
          v41 = v74[0];
          if (os_log_type_enabled(v40, v74[0]))
          {
            *v90 = 136446210;
            *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null options", v90, 0xCu);
          }

          goto LABEL_125;
        }

        if (LOBYTE(v94[0]) != 1)
        {
          v40 = __nwlog_obj();
          v48 = v74[0];
          if (os_log_type_enabled(v40, v74[0]))
          {
            *v90 = 136446210;
            *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
            _os_log_impl(&dword_181A37000, v40, v48, "%{public}s called with null options, backtrace limit exceeded", v90, 0xCu);
          }

          goto LABEL_125;
        }

        v44 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v68 = v74[0];
        v46 = os_log_type_enabled(v45, v74[0]);
        if (v44)
        {
          if (v46)
          {
            *v90 = 136446466;
            *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
            *&v90[12] = 2082;
            *&v90[14] = v44;
            _os_log_impl(&dword_181A37000, v45, v68, "%{public}s called with null options, dumping backtrace:%{public}s", v90, 0x16u);
          }

          goto LABEL_103;
        }

        if (v46)
        {
          *v90 = 136446210;
          *&v90[4] = "nw_http_cookie_options_get_should_not_send_cookies";
          _os_log_impl(&dword_181A37000, v45, v68, "%{public}s called with null options, no backtrace", v90, 0xCu);
        }

LABEL_131:

        goto LABEL_132;
      }
    }

LABEL_133:
    if (v39)
    {
      free(v39);
    }

    goto LABEL_136;
  }

LABEL_24:
  (*(a5 + 16))(a5, 1);
LABEL_25:
  _Block_object_dispose(buf, 8);
  if (v89)
  {
    if (object)
    {
      os_release(object);
    }
  }
}

uint64_t __Block_byref_object_copy__16369(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__16370(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZZ30nw_protocol_http_cookie_createENK3__2clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32) + 114;
    v4 = 136446466;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s%sAdding request cookies:", &v4, 0x16u);
  }
}

void ___ZZ30nw_protocol_http_cookie_createENK3__2clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke_16(void *a1, char *__s, const char *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v16, 0, sizeof(v16));
  if (!__s)
  {
    goto LABEL_13;
  }

  v6 = strlen(__s);
  std::string::append(&v16, __s, v6);
  std::string::append(&v16, "=", 1uLL);
  if (a3)
  {
    v7 = strlen(a3);
    std::string::append(&v16, a3, v7);
  }

  v8 = *(a1[4] + 8);
  v9 = *(v8 + 24);
  size = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
    if (v16.__r_.__value_.__l.__size_ + v9 > 0x3202A)
    {
      goto LABEL_13;
    }
  }

  else if ((v9 + SHIBYTE(v16.__r_.__value_.__r.__words[2])) > 0x3202A)
  {
    goto LABEL_13;
  }

  *(v8 + 24) = v9 + size + 2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZZ30nw_protocol_http_cookie_createENK3__2clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke_2;
  v15[3] = &__block_descriptor_tmp_18_16380;
  v15[4] = a1[6];
  v15[5] = a3;
  v15[6] = __s;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
  v18 = &unk_1E6A303F0;
  *&v19[8] = 2;
  v20 = 0;
  *v19 = v15;
  os_unfair_lock_lock(&lock);
  (*&buf[16])(buf);
  os_unfair_lock_unlock(&lock);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v16.__r_.__value_.__r.__words[0];
  }

  nw_http_fields_append_advanced(*(*(a1[5] + 8) + 40), "Cookie", -1, v11, 0xFFFFFFFFFFFFFFFFLL, &__block_literal_global_23_16381);
  if ((*(a1[6] + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = a1[6] + 114;
      v14 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v16.__r_.__value_.__r.__words[0];
      }

      *buf = 136446978;
      *&buf[4] = "operator()_block_invoke_2";
      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v18 = " ";
      *v19 = 2080;
      *&v19[2] = v14;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sadding cookie %s", buf, 0x2Au);
    }
  }

LABEL_13:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void ___ZZ30nw_protocol_http_cookie_createENK3__2clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke_2(void *a1, uint64_t a2, char a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a1[4] + 114;
  if (a3)
  {
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v5 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v6 = a1[6];
      v15 = 136446978;
      v16 = v4;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v6;
      v21 = 2080;
      v22[0] = v7;
      v8 = "%{public}s%s├ %s: %s";
      v9 = v5;
      v10 = 42;
LABEL_10:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v11 = a1[5];
    v12 = strlen(v11);
    __nwlog_salted_hash(v11, v12, &v23);
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v13 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[6];
      v15 = 136447234;
      v16 = v4;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v14;
      v21 = 1040;
      LODWORD(v22[0]) = 9;
      WORD2(v22[0]) = 2080;
      *(v22 + 6) = &v23;
      v8 = "%{public}s%s├ %s: %.*s";
      v9 = v13;
      v10 = 48;
      goto LABEL_10;
    }
  }
}

void nw_protocol_http_cookie_create::$_1::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v131 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v22 = _os_log_send_and_compose_impl();
    v127[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v127, type))
    {
      goto LABEL_120;
    }

    if (v127[0] == 17)
    {
      v23 = __nwlog_obj();
      v24 = v127[0];
      if (!os_log_type_enabled(v23, v127[0]))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null protocol";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = v127[0];
      v27 = os_log_type_enabled(v23, v127[0]);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          *&buf[4] = "operator()";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_120:
        if (!v22)
        {
          return;
        }

        goto LABEL_121;
      }

      if (!v27)
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v23 = __nwlog_obj();
      v24 = v127[0];
      if (!os_log_type_enabled(v23, v127[0]))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_119;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v22 = _os_log_send_and_compose_impl();
    v127[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v127, type))
    {
      goto LABEL_120;
    }

    if (v127[0] != 17)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v23 = __nwlog_obj();
        v24 = v127[0];
        if (!os_log_type_enabled(v23, v127[0]))
        {
          goto LABEL_120;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v25 = "%{public}s called with null http_cookie, backtrace limit exceeded";
        goto LABEL_119;
      }

      v28 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = v127[0];
      v29 = os_log_type_enabled(v23, v127[0]);
      if (!v28)
      {
        if (!v29)
        {
          goto LABEL_120;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v25 = "%{public}s called with null http_cookie, no backtrace";
        goto LABEL_119;
      }

      if (!v29)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v28;
      v30 = "%{public}s called with null http_cookie, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v23 = __nwlog_obj();
    v24 = v127[0];
    if (!os_log_type_enabled(v23, v127[0]))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v25 = "%{public}s called with null http_cookie";
LABEL_119:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_120;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v22 = _os_log_send_and_compose_impl();
    v127[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v127, type))
    {
      goto LABEL_120;
    }

    if (v127[0] != 17)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v23 = __nwlog_obj();
        v24 = v127[0];
        if (!os_log_type_enabled(v23, v127[0]))
        {
          goto LABEL_120;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v25 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_119;
      }

      v28 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = v127[0];
      v31 = os_log_type_enabled(v23, v127[0]);
      if (!v28)
      {
        if (!v31)
        {
          goto LABEL_120;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v25 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_119;
      }

      if (!v31)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v28;
      v30 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v23 = __nwlog_obj();
    v24 = v127[0];
    if (!os_log_type_enabled(v23, v127[0]))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v25 = "%{public}s called with null other_protocol";
    goto LABEL_119;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v22 = _os_log_send_and_compose_impl();
    v127[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v127, type))
    {
      goto LABEL_120;
    }

    if (v127[0] != 17)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v23 = __nwlog_obj();
        v24 = v127[0];
        if (!os_log_type_enabled(v23, v127[0]))
        {
          goto LABEL_120;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v25 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_119;
      }

      v28 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = v127[0];
      v32 = os_log_type_enabled(v23, v127[0]);
      if (!v28)
      {
        if (!v32)
        {
          goto LABEL_120;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v25 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_119;
      }

      if (!v32)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v28;
      v30 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v23 = __nwlog_obj();
    v24 = v127[0];
    if (!os_log_type_enabled(v23, v127[0]))
    {
      goto LABEL_120;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v25 = "%{public}s called with null metadata";
    goto LABEL_119;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v22 = _os_log_send_and_compose_impl();
    v127[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v127, type))
    {
      goto LABEL_120;
    }

    if (v127[0] == 17)
    {
      v23 = __nwlog_obj();
      v24 = v127[0];
      if (!os_log_type_enabled(v23, v127[0]))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null completion";
      goto LABEL_119;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v23 = __nwlog_obj();
      v24 = v127[0];
      if (!os_log_type_enabled(v23, v127[0]))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_119;
    }

    v28 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = v127[0];
    v33 = os_log_type_enabled(v23, v127[0]);
    if (!v28)
    {
      if (!v33)
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null completion, no backtrace";
      goto LABEL_119;
    }

    if (!v33)
    {
      goto LABEL_72;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v28;
    v30 = "%{public}s called with null completion, dumping backtrace:%{public}s";
LABEL_71:
    _os_log_impl(&dword_181A37000, v23, v24, v30, buf, 0x16u);
    goto LABEL_72;
  }

  v7 = nw_http_metadata_copy_response(a3);
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v22 = _os_log_send_and_compose_impl();
    v127[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v127, type))
    {
      goto LABEL_120;
    }

    if (v127[0] == 17)
    {
      v23 = __nwlog_obj();
      v24 = v127[0];
      if (!os_log_type_enabled(v23, v127[0]))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null response";
      goto LABEL_119;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v23 = __nwlog_obj();
      v24 = v127[0];
      if (!os_log_type_enabled(v23, v127[0]))
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null response, backtrace limit exceeded";
      goto LABEL_119;
    }

    v28 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = v127[0];
    v34 = os_log_type_enabled(v23, v127[0]);
    if (!v28)
    {
      if (!v34)
      {
        goto LABEL_120;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v25 = "%{public}s called with null response, no backtrace";
      goto LABEL_119;
    }

    if (v34)
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v28;
      v30 = "%{public}s called with null response, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

LABEL_72:
    free(v28);
    if (!v22)
    {
      return;
    }

LABEL_121:
    free(v22);
    return;
  }

  v8 = v7;
  status_code = _nw_http_response_get_status_code(v8);

  if (status_code == 101 || (status_code - 100) > 0x63)
  {
    parameters = nw_protocol_get_parameters(*(v5 + 48));
    if (parameters)
    {
      v11 = os_retain(parameters);
    }

    else
    {
      v11 = 0;
    }

    v12 = nw_parameters_copy_protocol_options_legacy(v11, v5);
    v13 = nw_http_cookie_options_copy_cookie_storage(v12);
    v14 = nw_parameters_copy_url_endpoint(v11);
    object = v13;
    if (!v13)
    {
LABEL_19:
      (*(a5 + 16))(a5, 1);
      if (!v14)
      {
        v21 = v13;
        if (!v13)
        {
LABEL_229:
          if (!v12)
          {
            goto LABEL_231;
          }

          goto LABEL_230;
        }

LABEL_227:
        os_release(v21);
        if (!v12)
        {
LABEL_231:
          if (v11)
          {
            os_release(v11);
          }

          goto LABEL_233;
        }

LABEL_230:
        os_release(v12);
        goto LABEL_231;
      }

LABEL_226:
      os_release(v14);
      v21 = object;
      if (!object)
      {
        goto LABEL_229;
      }

      goto LABEL_227;
    }

    v15 = v12;
    v16 = v15;
    endpoint = v14;
    if (v15)
    {
      v17 = nw_protocol_copy_http_cookie_definition_onceToken;
      v18 = v15;
      if (v17 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
      }

      v19 = nw_protocol_options_matches_definition(v18, nw_protocol_copy_http_cookie_definition_http_cookie_definition);

      if (v19)
      {
        *v127 = 0;
        *&v127[8] = v127;
        *&v127[16] = 0x2020000000;
        LOBYTE(v128) = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_cookie_options_get_should_not_save_cookies_block_invoke;
        v118 = &unk_1E6A3A858;
        v119 = v127;
        nw_protocol_options_access_handle(v18, buf);
        v20 = *(*&v127[8] + 24);
        _Block_object_dispose(v127, 8);

        if (v20)
        {
          goto LABEL_19;
        }

LABEL_138:
        if (!v14)
        {
          (*(a5 + 16))(a5, 1);
          v21 = object;
          goto LABEL_227;
        }

        if (nw_endpoint_get_type(v14) != nw_endpoint_type_url)
        {
          goto LABEL_225;
        }

        v48 = nw_endpoint_copy_cfurl(v14);
        cookie_partition_identifier = nw_http_cookie_options_get_cookie_partition_identifier(v16);
        nw_http_cookie_options_get_allow_only_partitioned_cookies(v16);
        v50 = v8;
        if (v48)
        {
          v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nw_http_cookie_parse_block_invoke;
          v118 = &unk_1E6A39748;
          v120 = cookie_partition_identifier;
          v121 = v48;
          *v110 = v48;
          v52 = v51;
          v119 = v52;
          v53 = v50;
          v54 = buf;
          _nw_http_fields_enumerate_by_name(v53, "Set-Cookie", v54);

          if ([v52 count])
          {
            v111 = [v52 copy];
          }

          else
          {
            v111 = 0;
          }

          v14 = endpoint;
          v55 = *v110;
          if (!v111)
          {
LABEL_224:
            CFRelease(v55);
LABEL_225:
            (*(a5 + 16))(a5, 1);
            goto LABEL_226;
          }

          v56 = v16;
          if (!v16)
          {
            v58 = v56;
            v67 = __nwlog_obj();
            *v127 = 136446210;
            *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
            LODWORD(v101) = 12;
            v100 = v127;
            v68 = _os_log_send_and_compose_impl();

            v116 = OS_LOG_TYPE_ERROR;
            v115 = 0;
            if (!__nwlog_fault(v68, &v116, &v115))
            {
              goto LABEL_207;
            }

            if (v116 == OS_LOG_TYPE_FAULT)
            {
              v69 = __nwlog_obj();
              v70 = v116;
              if (os_log_type_enabled(v69, v116))
              {
                *v127 = 136446210;
                *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null options", v127, 0xCu);
              }
            }

            else if (v115 == 1)
            {
              v76 = __nw_create_backtrace_string();
              v69 = __nwlog_obj();
              v104 = v116;
              v77 = os_log_type_enabled(v69, v116);
              if (v76)
              {
                if (v77)
                {
                  *v127 = 136446466;
                  *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                  *&v127[12] = 2082;
                  *&v127[14] = v76;
                  _os_log_impl(&dword_181A37000, v69, v104, "%{public}s called with null options, dumping backtrace:%{public}s", v127, 0x16u);
                }

                free(v76);
                if (!v68)
                {
                  goto LABEL_209;
                }

                goto LABEL_208;
              }

              if (v77)
              {
                *v127 = 136446210;
                *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                _os_log_impl(&dword_181A37000, v69, v104, "%{public}s called with null options, no backtrace", v127, 0xCu);
              }
            }

            else
            {
              v69 = __nwlog_obj();
              v81 = v116;
              if (os_log_type_enabled(v69, v116))
              {
                *v127 = 136446210;
                *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                _os_log_impl(&dword_181A37000, v69, v81, "%{public}s called with null options, backtrace limit exceeded", v127, 0xCu);
              }
            }

            goto LABEL_206;
          }

          v57 = nw_protocol_copy_http_cookie_definition_onceToken;
          v58 = v56;
          v59 = v56;
          if (v57 != -1)
          {
            dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
          }

          v60 = nw_protocol_options_matches_definition(v59, nw_protocol_copy_http_cookie_definition_http_cookie_definition);

          if (v60)
          {
            *v127 = 0;
            *&v127[8] = v127;
            *&v127[16] = 0x3032000000;
            v128 = __Block_byref_object_copy__7;
            v129 = __Block_byref_object_dispose__8;
            v130 = 0;
            *type = MEMORY[0x1E69E9820];
            v123 = 3221225472;
            v124 = __nw_http_cookie_options_copy_transform_callback_block_invoke;
            v125 = &unk_1E6A3A858;
            v126 = v127;
            nw_protocol_options_access_handle(v59, type);
            aBlock = _Block_copy(*(*&v127[8] + 40));
            _Block_object_dispose(v127, 8);

            if (aBlock)
            {
              v61 = aBlock[2](aBlock, v111);
              if (v61)
              {
                v62 = CFRetain(v61);
              }

              else
              {
                v62 = 0;
              }

              CFRelease(v111);
              v102 = 0;
LABEL_211:
              v106 = nw_parameters_copy_main_document_cfurl(v11);
              v83 = nw_http_cookie_options_copy_site_for_cookies(v58);
              is_top_level_navigation = nw_http_cookie_options_get_is_top_level_navigation(v58);
              v85 = *(v5 + 360);
              v103 = object;
              v112 = v62;
              if (v62)
              {
                if (v83)
                {
                  *v127 = v83;
                  *type = @"_kCFHTTPCookiePolicyPropertySiteForCookies";
                  v123 = @"_kCFHTTPCookiePolicyPropertyIsTopLevelNavigation";
                  v86 = [MEMORY[0x1E696AD98] numberWithBool:is_top_level_navigation];
                  *&v127[8] = v86;
                  v124 = @"_kCFHTTPCookiePolicyPropertyIsSafeRequest";
                  v87 = [MEMORY[0x1E696AD98] numberWithBool:v85 & 1];
                  v125 = @"_kCFHTTPCookiePolicyPropertyAllowHTTPOnlyOverwrite";
                  *&v127[16] = v87;
                  v128 = MEMORY[0x1E695E118];
                  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:type count:4];

                  v89 = v103;
                  v90 = v106;
                }

                else
                {
                  v88 = 0;
                  v89 = v103;
                  v90 = v106;
                }

                [v89[1] _setCookies:v112 forURL:*v110 mainDocumentURL:v90 policyProperties:{v88, v100, v101}];

LABEL_216:
                if (v83)
                {
                  CFRelease(v83);
                }

                v14 = endpoint;
                if (v90)
                {
                  CFRelease(v90);
                }

                v55 = *v110;
                if ((v102 & 1) == 0)
                {
                  _Block_release(aBlock);
                }

                if (v112)
                {
                  CFRelease(v112);
                }

                goto LABEL_224;
              }

              v91 = __nwlog_obj();
              *v127 = 136446210;
              *&v127[4] = "nw_http_cookie_set";
              v92 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v116 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v92, type, &v116))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v93 = __nwlog_obj();
                  v94 = type[0];
                  if (os_log_type_enabled(v93, type[0]))
                  {
                    *v127 = 136446210;
                    *&v127[4] = "nw_http_cookie_set";
                    _os_log_impl(&dword_181A37000, v93, v94, "%{public}s called with null cookies", v127, 0xCu);
                  }
                }

                else
                {
                  if (v116 == OS_LOG_TYPE_INFO)
                  {
                    v95 = __nw_create_backtrace_string();
                    v96 = __nwlog_obj();
                    v97 = type[0];
                    v98 = os_log_type_enabled(v96, type[0]);
                    if (v95)
                    {
                      if (v98)
                      {
                        *v127 = 136446466;
                        *&v127[4] = "nw_http_cookie_set";
                        *&v127[12] = 2082;
                        *&v127[14] = v95;
                        _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null cookies, dumping backtrace:%{public}s", v127, 0x16u);
                      }

                      free(v95);
                    }

                    else
                    {
                      if (v98)
                      {
                        *v127 = 136446210;
                        *&v127[4] = "nw_http_cookie_set";
                        _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null cookies, no backtrace", v127, 0xCu);
                      }
                    }

                    goto LABEL_252;
                  }

                  v93 = __nwlog_obj();
                  v99 = type[0];
                  if (os_log_type_enabled(v93, type[0]))
                  {
                    *v127 = 136446210;
                    *&v127[4] = "nw_http_cookie_set";
                    _os_log_impl(&dword_181A37000, v93, v99, "%{public}s called with null cookies, backtrace limit exceeded", v127, 0xCu);
                  }
                }
              }

LABEL_252:
              if (v92)
              {
                free(v92);
              }

              v89 = v103;
              v90 = v106;
              goto LABEL_216;
            }

LABEL_210:
            aBlock = 0;
            v102 = 1;
            v62 = v111;
            goto LABEL_211;
          }

          v71 = __nwlog_obj();
          *v127 = 136446210;
          *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
          LODWORD(v101) = 12;
          v100 = v127;
          v68 = _os_log_send_and_compose_impl();

          v116 = OS_LOG_TYPE_ERROR;
          v115 = 0;
          if (__nwlog_fault(v68, &v116, &v115))
          {
            if (v116 == OS_LOG_TYPE_FAULT)
            {
              v69 = __nwlog_obj();
              v72 = v116;
              if (os_log_type_enabled(v69, v116))
              {
                *v127 = 136446210;
                *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                _os_log_impl(&dword_181A37000, v69, v72, "%{public}s protocol options are not http_cookie", v127, 0xCu);
              }

LABEL_206:

              goto LABEL_207;
            }

            if (v115 != 1)
            {
              v69 = __nwlog_obj();
              v82 = v116;
              if (os_log_type_enabled(v69, v116))
              {
                *v127 = 136446210;
                *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                _os_log_impl(&dword_181A37000, v69, v82, "%{public}s protocol options are not http_cookie, backtrace limit exceeded", v127, 0xCu);
              }

              goto LABEL_206;
            }

            v78 = __nw_create_backtrace_string();
            v69 = __nwlog_obj();
            v105 = v116;
            v79 = os_log_type_enabled(v69, v116);
            if (!v78)
            {
              if (v79)
              {
                *v127 = 136446210;
                *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
                _os_log_impl(&dword_181A37000, v69, v105, "%{public}s protocol options are not http_cookie, no backtrace", v127, 0xCu);
              }

              goto LABEL_206;
            }

            if (v79)
            {
              *v127 = 136446466;
              *&v127[4] = "nw_http_cookie_options_copy_transform_callback";
              *&v127[12] = 2082;
              *&v127[14] = v78;
              _os_log_impl(&dword_181A37000, v69, v105, "%{public}s protocol options are not http_cookie, dumping backtrace:%{public}s", v127, 0x16u);
            }

            free(v78);
          }

LABEL_207:
          if (!v68)
          {
LABEL_209:

            goto LABEL_210;
          }

LABEL_208:
          free(v68);
          goto LABEL_209;
        }

        v63 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_parse";
        v64 = _os_log_send_and_compose_impl();

        v127[0] = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v64, v127, type))
        {
          if (v127[0] == 17)
          {
            v65 = __nwlog_obj();
            v66 = v127[0];
            if (os_log_type_enabled(v65, v127[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_cookie_parse";
              _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null url", buf, 0xCu);
            }
          }

          else if (type[0] == OS_LOG_TYPE_INFO)
          {
            v73 = __nw_create_backtrace_string();
            v65 = __nwlog_obj();
            v74 = v127[0];
            v75 = os_log_type_enabled(v65, v127[0]);
            if (v73)
            {
              if (v75)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_cookie_parse";
                *&buf[12] = 2082;
                *&buf[14] = v73;
                _os_log_impl(&dword_181A37000, v65, v74, "%{public}s called with null url, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v73);
              goto LABEL_198;
            }

            if (v75)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_cookie_parse";
              _os_log_impl(&dword_181A37000, v65, v74, "%{public}s called with null url, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v65 = __nwlog_obj();
            v80 = v127[0];
            if (os_log_type_enabled(v65, v127[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_cookie_parse";
              _os_log_impl(&dword_181A37000, v65, v80, "%{public}s called with null url, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_198:
        if (v64)
        {
          free(v64);
        }

        goto LABEL_225;
      }

      v39 = __nwlog_obj();
      *v127 = 136446210;
      *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
      LODWORD(v101) = 12;
      v100 = v127;
      v36 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v116 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v36, type, &v116))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v37 = __nwlog_obj();
          v40 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            *v127 = 136446210;
            *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
            _os_log_impl(&dword_181A37000, v37, v40, "%{public}s protocol options are not http_cookie", v127, 0xCu);
          }

LABEL_128:

          goto LABEL_135;
        }

        if (v116 != OS_LOG_TYPE_INFO)
        {
          v37 = __nwlog_obj();
          v47 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            *v127 = 136446210;
            *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
            _os_log_impl(&dword_181A37000, v37, v47, "%{public}s protocol options are not http_cookie, backtrace limit exceeded", v127, 0xCu);
          }

          goto LABEL_128;
        }

        v44 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v109 = type[0];
        v45 = os_log_type_enabled(v42, type[0]);
        if (v44)
        {
          if (v45)
          {
            *v127 = 136446466;
            *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
            *&v127[12] = 2082;
            *&v127[14] = v44;
            _os_log_impl(&dword_181A37000, v42, v109, "%{public}s protocol options are not http_cookie, dumping backtrace:%{public}s", v127, 0x16u);
          }

          free(v44);
          if (!v36)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        if (v45)
        {
          *v127 = 136446210;
          *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
          _os_log_impl(&dword_181A37000, v42, v109, "%{public}s protocol options are not http_cookie, no backtrace", v127, 0xCu);
        }

        goto LABEL_134;
      }
    }

    else
    {
      v35 = __nwlog_obj();
      *v127 = 136446210;
      *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
      LODWORD(v101) = 12;
      v100 = v127;
      v36 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v116 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v36, type, &v116))
      {
        goto LABEL_135;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          *v127 = 136446210;
          *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null options", v127, 0xCu);
        }

        goto LABEL_128;
      }

      if (v116 != OS_LOG_TYPE_INFO)
      {
        v37 = __nwlog_obj();
        v46 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          *v127 = 136446210;
          *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
          _os_log_impl(&dword_181A37000, v37, v46, "%{public}s called with null options, backtrace limit exceeded", v127, 0xCu);
        }

        goto LABEL_128;
      }

      v41 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v108 = type[0];
      v43 = os_log_type_enabled(v42, type[0]);
      if (!v41)
      {
        if (v43)
        {
          *v127 = 136446210;
          *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
          _os_log_impl(&dword_181A37000, v42, v108, "%{public}s called with null options, no backtrace", v127, 0xCu);
        }

LABEL_134:

        goto LABEL_135;
      }

      if (v43)
      {
        *v127 = 136446466;
        *&v127[4] = "nw_http_cookie_options_get_should_not_save_cookies";
        *&v127[12] = 2082;
        *&v127[14] = v41;
        _os_log_impl(&dword_181A37000, v42, v108, "%{public}s called with null options, dumping backtrace:%{public}s", v127, 0x16u);
      }

      free(v41);
    }

LABEL_135:
    if (!v36)
    {
LABEL_137:

      goto LABEL_138;
    }

LABEL_136:
    free(v36);
    goto LABEL_137;
  }

  (*(a5 + 16))(a5, 1);
LABEL_233:

  os_release(v8);
}

void ___ZL37nw_protocol_http_cookie_get_callbacksv_block_invoke()
{
  nw_protocol_http_cookie_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840BC0 = nw_protocol_common_replace_input_handler;
  qword_1EA840C00 = nw_protocol_common_get_input_frames;
  qword_1EA840C08 = nw_protocol_common_get_output_frames;
  qword_1EA840C10 = nw_protocol_common_finalize_output_frames;
  qword_1EA840C20 = nw_protocol_common_get_parameters;
  qword_1EA840C28 = nw_protocol_common_get_path;
  qword_1EA840C38 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840C30 = nw_protocol_common_get_local_endpoint;
  qword_1EA840C78 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840C80 = nw_protocol_common_get_output_interface;
  qword_1EA840BC8 = nw_protocol_common_connect;
  qword_1EA840BD8 = nw_protocol_common_connected;
  qword_1EA840BD0 = nw_protocol_common_disconnect;
  qword_1EA840BE0 = nw_protocol_common_disconnected;
  qword_1EA840BF0 = nw_protocol_common_input_available;
  qword_1EA840BF8 = nw_protocol_common_output_available;
  qword_1EA840C68 = nw_protocol_common_input_finished;
  qword_1EA840C70 = nw_protocol_common_output_finished;
  qword_1EA840CB8 = nw_protocol_common_input_flush;
  qword_1EA840BE8 = nw_protocol_common_error;
  qword_1EA840CB0 = nw_protocol_common_reset;
  qword_1EA840CA8 = nw_protocol_common_get_message_properties;
  qword_1EA840C90 = nw_protocol_common_copy_info;
  qword_1EA840C60 = nw_protocol_common_supports_external_data;
  qword_1EA840C88 = nw_protocol_common_waiting_for_output;
  qword_1EA840C40 = nw_protocol_common_register_notification;
  qword_1EA840C48 = nw_protocol_common_unregister_notification;
  qword_1EA840C50 = nw_protocol_common_notify;
  qword_1EA840C58 = nw_protocol_common_updated_path;
  qword_1EA840C18 = nw_protocol_common_link_state;
  qword_1EA840BB8 = nw_protocol_http_cookie_remove_input_handler;
}

double __nw_protocol_http_cookie_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_cookie_identifier::http_cookie_protocol_identifier, "http_cookie");
  *&result = 0x100000005;
  qword_1EA840FF0 = 0x100000005;
  return result;
}

void __nw_socks5_connection_validate_udp_association_block_invoke_2(id *a1)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v2 = a1[4];
  if (*(v2 + 56) != 255 && v2[20] < 0)
  {
    v19 = v2[4];
    if (v19)
    {
      v20 = v19;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      location = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __nw_connection_is_cancelled_or_failed_block_invoke;
      v52 = &unk_1E6A3D738;
      v54 = &v55;
      v21 = v20;
      v53 = v21;
      os_unfair_lock_lock(v20 + 34);
      v51(&location);
      os_unfair_lock_unlock(v20 + 34);
      LOBYTE(v20) = *(v56 + 24);

      _Block_object_dispose(&v55, 8);
      if ((v20 & 1) == 0)
      {
        v22 = *(a1[4] + 21);
        v23 = v22;
        if (v22)
        {
          v24 = v22;
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          v58 = 0;
          location = MEMORY[0x1E69E9820];
          v50 = 3221225472;
          v51 = __nw_connection_is_cancelled_or_failed_block_invoke;
          v52 = &unk_1E6A3D738;
          v54 = &v55;
          v25 = v24;
          v53 = v25;
          os_unfair_lock_lock(v24 + 34);
          v51(&location);
          os_unfair_lock_unlock(v24 + 34);
          LOBYTE(v24) = *(v56 + 24);

          _Block_object_dispose(&v55, 8);
          if ((v24 & 1) == 0)
          {
            *(v46 + 24) = 1;
          }
        }
      }
    }
  }

  if (v46[3])
  {
    v3 = *(a1[4] + 21);
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v4 = g_tcp_definition;
    v5 = nw_connection_copy_protocol_metadata(v3, v4);

    if (v5)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v6 = nw_context_copy_implicit_context::implicit_context;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __nw_socks5_connection_validate_udp_association_block_invoke_4;
      v39[3] = &unk_1E6A3B4E0;
      v40 = a1[4];
      v41 = v3;
      v42 = v5;
      nw_queue_context_async_if_needed(v6, v39);
    }

    objc_initWeak(&location, a1[4]);
    v8 = *(a1[4] + 5);
    ++*(a1[4] + 22);
    v9 = a1[4];
    v10 = v9[10];
    if (v10)
    {
      nw_queue_cancel_source(v10, v7);
      *(a1[4] + 10) = 0;
      v9 = a1[4];
    }

    v11 = *(v9 + 22);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __nw_socks5_connection_validate_udp_association_block_invoke_8;
    v34[3] = &unk_1E6A2D950;
    objc_copyWeak(&v38, &location);
    v35 = a1[5];
    v37 = a1[6];
    v12 = v8;
    v36 = v12;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __nw_socks5_connection_validate_udp_association_block_invoke_4_11;
    v26[3] = &unk_1E6A2D9A0;
    objc_copyWeak(&v32, &location);
    v27 = a1[5];
    v30 = a1[6];
    v13 = v12;
    v28 = v13;
    v31 = &v45;
    v33 = v11;
    v14 = v3;
    v29 = v14;
    source = nw_queue_context_create_source(0, 2, 3, 0, v34, v26);
    v16 = dispatch_time(0x8000000000000000, 5000000000);
    nw_queue_set_timer_values(source, v16, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    nw_queue_activate_source(source, v17);
    *(a1[4] + 10) = source;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v38);

    objc_destroyWeak(&location);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_connection_validate_udp_association_block_invoke_3;
    block[3] = &unk_1E6A3CE48;
    v18 = a1[5];
    v44 = a1[6];
    dispatch_async(v18, block);
    v14 = v44;
  }

  _Block_object_dispose(&v45, 8);
}

void sub_18244587C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 - 176));

  _Block_object_dispose((v4 - 208), 8);
  _Unwind_Resume(a1);
}

void __nw_socks5_connection_validate_udp_association_block_invoke_4(uint64_t a1)
{
  v28[2] = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136446722;
    v24 = "nw_socks5_connection_validate_udp_association_block_invoke_4";
    v25 = 2114;
    v26 = v3;
    v27 = 2114;
    v28[0] = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ enabling keep alives for %{public}@", buf, 0x20u);
  }

  if (nw_tcp_reset_keepalives(*(a1 + 48), 1, 5, 1, 1))
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = *(a1 + 32);
    *buf = 136446722;
    v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
    v25 = 2114;
    v26 = v7;
    v27 = 1024;
    LODWORD(v28[0]) = v5;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v8, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 32);
        *buf = 136446722;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v11;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        v12 = "%{public}s %{public}@ error enabling keep alives %{darwin.errno}d";
LABEL_18:
        v18 = v9;
        v19 = v10;
        goto LABEL_19;
      }

      if (v21 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_20;
        }

        v17 = *(a1 + 32);
        *buf = 136446722;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v17;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        v12 = "%{public}s %{public}@ error enabling keep alives %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_20:

          if (!v8)
          {
            return;
          }

LABEL_14:
          free(v8);
          return;
        }

        v20 = *(a1 + 32);
        *buf = 136446722;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v20;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        v12 = "%{public}s %{public}@ error enabling keep alives %{darwin.errno}d, no backtrace";
        v18 = v9;
        v19 = v14;
LABEL_19:
        _os_log_impl(&dword_181A37000, v18, v19, v12, buf, 0x1Cu);
        goto LABEL_20;
      }

      if (v15)
      {
        v16 = *(a1 + 32);
        *buf = 136446978;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v16;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        WORD2(v28[0]) = 2082;
        *(v28 + 6) = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s %{public}@ error enabling keep alives %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      return;
    }

    goto LABEL_14;
  }
}

void __nw_socks5_connection_validate_udp_association_block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __nw_socks5_connection_validate_udp_association_block_invoke_3_10;
    v9[3] = &unk_1E6A3D868;
    v5 = &v10;
    v10 = WeakRetained;
    v6 = v9;
    v7 = v4;
  }

  else
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_connection_validate_udp_association_block_invoke_2_9;
    block[3] = &unk_1E6A3CE48;
    v5 = &v12;
    v12 = *(a1 + 48);
    v6 = block;
    v7 = v8;
  }

  dispatch_async(v7, v6);
}

void __nw_socks5_connection_validate_udp_association_block_invoke_4_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_connection_validate_udp_association_block_invoke_6;
    block[3] = &unk_1E6A2D978;
    v12 = *(a1 + 64);
    v5 = &v8;
    v8 = WeakRetained;
    v13 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_socks5_connection_validate_udp_association_block_invoke_5;
    v14[3] = &unk_1E6A3CE48;
    v5 = &v15;
    v15 = *(a1 + 56);
    dispatch_async(v6, v14);
  }
}

void __nw_socks5_connection_validate_udp_association_block_invoke_6(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 56) != 255 && *(a1 + 72) == *(v2 + 88))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = v3;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_connection_is_cancelled_or_failed_block_invoke;
      v21[3] = &unk_1E6A3D738;
      v23 = &v24;
      v5 = v4;
      v22 = v5;
      os_unfair_lock_lock(v4 + 34);
      __nw_connection_is_cancelled_or_failed_block_invoke(v21);
      os_unfair_lock_unlock(v4 + 34);
      LOBYTE(v4) = *(v25 + 24);

      _Block_object_dispose(&v24, 8);
      if ((v4 & 1) == 0)
      {
        v6 = *(a1 + 40);
        if (nw_protocol_setup_tcp_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
        }

        v7 = g_tcp_definition;
        v8 = nw_connection_copy_protocol_metadata(v6, v7);

        if (nw_context_copy_implicit_context::onceToken[0] != -1)
        {
          dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
        }

        v9 = nw_context_copy_implicit_context::implicit_context;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __nw_socks5_connection_validate_udp_association_block_invoke_7;
        v17[3] = &unk_1E6A3B4E0;
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v10 = v8;
        v20 = v10;
        nw_queue_context_async_if_needed(v9, v17);

        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __nw_socks5_connection_validate_udp_association_block_invoke_12;
  block[3] = &unk_1E6A2ED20;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = v12;
  v16 = v13;
  dispatch_async(v11, block);
}

void __nw_socks5_connection_validate_udp_association_block_invoke_7(uint64_t a1)
{
  v28[2] = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136446722;
    v24 = "nw_socks5_connection_validate_udp_association_block_invoke_7";
    v25 = 2114;
    v26 = v3;
    v27 = 2114;
    v28[0] = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ disabling keep alives for %{public}@", buf, 0x20u);
  }

  if (nw_tcp_reset_keepalives(*(a1 + 48), 0, 0, 0, 0))
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = *(a1 + 32);
    *buf = 136446722;
    v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
    v25 = 2114;
    v26 = v7;
    v27 = 1024;
    LODWORD(v28[0]) = v5;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v8, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 32);
        *buf = 136446722;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v11;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        v12 = "%{public}s %{public}@ error disabling keep alives %{darwin.errno}d";
LABEL_18:
        v18 = v9;
        v19 = v10;
        goto LABEL_19;
      }

      if (v21 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_20;
        }

        v17 = *(a1 + 32);
        *buf = 136446722;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v17;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        v12 = "%{public}s %{public}@ error disabling keep alives %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_18;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_20:

          if (!v8)
          {
            return;
          }

LABEL_14:
          free(v8);
          return;
        }

        v20 = *(a1 + 32);
        *buf = 136446722;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v20;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        v12 = "%{public}s %{public}@ error disabling keep alives %{darwin.errno}d, no backtrace";
        v18 = v9;
        v19 = v14;
LABEL_19:
        _os_log_impl(&dword_181A37000, v18, v19, v12, buf, 0x1Cu);
        goto LABEL_20;
      }

      if (v15)
      {
        v16 = *(a1 + 32);
        *buf = 136446978;
        v24 = "nw_socks5_connection_validate_udp_association_block_invoke";
        v25 = 2114;
        v26 = v16;
        v27 = 1024;
        LODWORD(v28[0]) = v5;
        WORD2(v28[0]) = 2082;
        *(v28 + 6) = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s %{public}@ error disabling keep alives %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      return;
    }

    goto LABEL_14;
  }
}

void __nw_socks5_connection_validate_udp_association_block_invoke_3_10(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 80);
  if (v3)
  {
    nw_queue_cancel_source(v3, a2);
    *(*(a1 + 32) + 80) = 0;
  }
}

uint64_t __Block_byref_object_copy__16762(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_154(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56) != 255)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = v4;
    if (a2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v15 = 136446466;
        v16 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
        v17 = 2114;
        v18 = v6;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ successfully registered udp association", &v15, 0x16u);
      }

      v7 = nw_connection_create(*(a1 + 40), *(a1 + 48));
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *(v8 + 32) = v7;

      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = v11[56];
      if (v13 != 200 && v13 != 255)
      {
        v11[56] = 101;
        nw_socks5_connection_start_on_queue(v11, v12);
      }
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = 136446466;
        v16 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
        v17 = 2114;
        v18 = v14;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed to register udp association", &v15, 0x16u);
      }

      nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
    }
  }
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_156(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 32);
  if (v4->sc_state != 255)
  {
    if (!v3)
    {
      nw_socks5_connection_inner_connection_read_range_on_queue(v4, 4u, 4u);
      goto LABEL_12;
    }

    v5 = v3;
    v6 = v5[3];

    if ((v6 - 6) <= 0x3B && ((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 136446722;
        v26 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
        v27 = 2114;
        v28 = v9;
        v29 = 1024;
        v30 = v6;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write in auth reply error %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_10:
      nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = *(a1 + 32);
    *buf = 136446722;
    v26 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v27 = 2114;
    v28 = v11;
    v29 = 1024;
    v30 = v6;
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v12, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          v15 = *(a1 + 32);
          *buf = 136446722;
          v26 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v27 = 2114;
          v28 = v15;
          v29 = 1024;
          v30 = v6;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s %{public}@ write in auth reply error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v17 = type;
        v18 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v18)
          {
            v19 = *(a1 + 32);
            *buf = 136446978;
            v26 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v27 = 2114;
            v28 = v19;
            v29 = 1024;
            v30 = v6;
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v17, "%{public}s %{public}@ write in auth reply error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v18)
        {
          v22 = *(a1 + 32);
          *buf = 136446722;
          v26 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v27 = 2114;
          v28 = v22;
          v29 = 1024;
          v30 = v6;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s %{public}@ write in auth reply error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v13, type))
        {
          v21 = *(a1 + 32);
          *buf = 136446722;
          v26 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v27 = 2114;
          v28 = v21;
          v29 = 1024;
          v30 = v6;
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s %{public}@ write in auth reply error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_29:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_10;
  }

LABEL_12:
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_161(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 56) != 255)
  {
    objc_storeStrong((v4 + 176), a2);
    nw_socks5_connection_send_reply_on_queue(*(a1 + 32), 1, *(a1 + 40));
  }
}

void nw_socks5_connection_add_prefer_wifi_request(NWConcrete_nw_socks5_connection *a1)
{
  v1 = a1;
  if (!v1->sc_prefer_wifi_path_evaluator)
  {
    v2 = _nw_parameters_create();
    v3 = xpc_array_create(0, 0);
    v4 = xpc_array_create(0, 0);
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "com.apple.networkrelay");
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "PreferWiFi");
    nw_parameters_set_required_netagent_classes(v2, v3, v4);
    v5 = nw_connection_copy_parameters(&v1->sc_out_connection->super);
    effective_bundle_id = nw_parameters_get_effective_bundle_id(v5);
    if (effective_bundle_id)
    {
      nw_parameters_set_account_id(v2, effective_bundle_id);
    }

    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(0, v2);
    objc_initWeak(&location, v1);
    sc_queue = v1->sc_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL44nw_socks5_connection_add_prefer_wifi_requestP31NWConcrete_nw_socks5_connection_block_invoke;
    v9[3] = &unk_1E6A3D2D8;
    objc_copyWeak(&v10, &location);
    nw_path_evaluator_set_update_handler(evaluator_for_endpoint, sc_queue, v9);
    objc_storeStrong(&v1->sc_prefer_wifi_path_evaluator, evaluator_for_endpoint);
    nw_socks5_connection_assert_prefer_wifi(v1);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_182446FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_2;
  v3[3] = &unk_1E6A2FF20;
  v3[4] = *(a1 + 32);
  nw_resolution_report_enumerate_endpoints(a2, v3);
  return 0;
}

uint64_t ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  if (nw_endpoint_fillout_v4v6_address(a3, v5))
  {
    *(*(*(a1 + 32) + 8) + 24) += LOBYTE(v5[0]) + 3;
  }

  return 1;
}

uint64_t ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_168(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(__src, 0, sizeof(__src));
  v19 = 0;
  if (nw_endpoint_fillout_v4v6_address(a3, __src))
  {
    if (*(*(*(a1 + 40) + 8) + 24) < *(a1 + 56))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 136446722;
        v21 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        v22 = 2114;
        v23 = v5;
        v24 = 2082;
        v25 = "resolved_endpoint";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending reply tlv: %{public}s", buf, 0x20u);
      }

      v6 = *(*(*(a1 + 40) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) += nw_shoes_add_tlv(*(a1 + 48) + v6, (*(a1 + 56) - v6), 8u, LOBYTE(__src[0]), __src);
    }

    return 1;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null success_resolved_sa", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v21 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null success_resolved_sa, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v21 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null success_resolved_sa, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_socks5_connection_send_reply_on_queue_block_invoke";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null success_resolved_sa, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

  return 1;
}

uint64_t ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = _nw_array_create();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (v4)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    _nw_array_append(v4, v3);
  }

  return 1;
}

void ___ZL44nw_socks5_connection_add_prefer_wifi_requestP31NWConcrete_nw_socks5_connection_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained->sc_state != 255)
  {
    nw_socks5_connection_assert_prefer_wifi(WeakRetained);
  }
}

void nw_socks5_connection_assert_prefer_wifi(NWConcrete_nw_socks5_connection *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  sc_prefer_wifi_path_evaluator = v1->sc_prefer_wifi_path_evaluator;
  if (sc_prefer_wifi_path_evaluator)
  {
    v3 = sc_prefer_wifi_path_evaluator;
    os_unfair_lock_lock(sc_prefer_wifi_path_evaluator + 24);
    v4 = v3[6];
    os_unfair_lock_unlock(sc_prefer_wifi_path_evaluator + 24);

    status = nw_path_get_status(v4);
    if (status != nw_path_status_satisfied)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
        *&buf[12] = 2112;
        *&buf[14] = v1;
        *&buf[22] = 1024;
        *&buf[24] = status;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %@ waiting to add prefer wi-fi request (%u)", buf, 0x1Cu);
      }

      v1->sc_prefer_wifi_previous_path_status = status;
      goto LABEL_10;
    }

    if (v1->sc_prefer_wifi_previous_path_status == 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
        *&buf[12] = 2112;
        *&buf[14] = v1;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %@ ignoring path update to add prefer wi-fi request", buf, 0x16u);
      }

      goto LABEL_10;
    }

    v1->sc_prefer_wifi_previous_path_status = 1;
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZL39nw_socks5_connection_assert_prefer_wifiP31NWConcrete_nw_socks5_connection_block_invoke;
    v19[3] = &__block_descriptor_40_e47_B16__0r__netagent__16C__32c__32c__128c_II_0C__8l;
    v19[4] = uu;
    _nw_path_enumerate_network_agents(v4, v19);
    if (!uuid_is_null(uu))
    {
      memset(buf, 0, 37);
      uuid_unparse(uu, buf);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446722;
        v22 = "nw_socks5_connection_assert_prefer_wifi";
        v23 = 2112;
        v24 = v1;
        v25 = 2080;
        v26 = buf;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %@ adding prefer wi-fi request, asserting agent %s", type, 0x20u);
      }

      if ((nw_path_agent_action(v4, uu, 131) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *type = 136446722;
          v22 = "nw_socks5_connection_assert_prefer_wifi";
          v23 = 2112;
          v24 = v1;
          v25 = 2080;
          v26 = buf;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s %@ failed to assert prefer wi-fi agent(%s)", type, 0x20u);
        }
      }

      goto LABEL_10;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446722;
    *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
    *&buf[12] = 2080;
    *&buf[14] = "com.apple.networkrelay";
    *&buf[22] = 2080;
    *&buf[24] = "PreferWiFi";
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, type, &v18))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
          *&buf[12] = 2080;
          *&buf[14] = "com.apple.networkrelay";
          *&buf[22] = 2080;
          *&buf[24] = "PreferWiFi";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Unable to determine agent uuid for %s/%s", buf, 0x20u);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v15 = type[0];
        v16 = os_log_type_enabled(v10, type[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446978;
            *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
            *&buf[12] = 2080;
            *&buf[14] = "com.apple.networkrelay";
            *&buf[22] = 2080;
            *&buf[24] = "PreferWiFi";
            *&buf[32] = 2082;
            *&buf[34] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v15, "%{public}s Unable to determine agent uuid for %s/%s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_10;
          }

          goto LABEL_19;
        }

        if (v16)
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
          *&buf[12] = 2080;
          *&buf[14] = "com.apple.networkrelay";
          *&buf[22] = 2080;
          *&buf[24] = "PreferWiFi";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s Unable to determine agent uuid for %s/%s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v17 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_assert_prefer_wifi";
          *&buf[12] = 2080;
          *&buf[14] = "com.apple.networkrelay";
          *&buf[22] = 2080;
          *&buf[24] = "PreferWiFi";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s Unable to determine agent uuid for %s/%s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v9)
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_19:
    free(v9);
    goto LABEL_10;
  }

LABEL_11:
}

__n128 ___ZL39nw_socks5_connection_assert_prefer_wifiP31NWConcrete_nw_socks5_connection_block_invoke(uint64_t a1, __n128 *a2)
{
  if (!strcmp(&a2[1], "com.apple.networkrelay") && !strcmp(&a2[3], "PreferWiFi"))
  {
    result = *a2;
    **(a1 + 32) = *a2;
  }

  return result;
}

void ___ZL59nw_socks5_connection_inner_connection_read_message_on_queueP31NWConcrete_nw_socks5_connection_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = v12[3];
  }

  else
  {
    v13 = 0;
  }

  nw_socks5_connection_inner_connection_read_handler_on_queue(*(a1 + 32), v14, a4, v13, 1);
}

void ___ZL49nw_socks5_connection_drain_and_cancel_in_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvvE_block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    if (v8)
    {
      size = dispatch_data_get_size(v8);
    }

    else
    {
      size = 0;
    }

    v13 = "not_";
    v15 = 136447234;
    v16 = "nw_socks5_connection_drain_and_cancel_in_on_queue_block_invoke";
    v18 = v11;
    v17 = 2114;
    if (a4)
    {
      v13 = "is_";
    }

    v19 = 2048;
    v20 = size;
    v21 = 2082;
    v22 = v13;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}@ drained inner %zu bytes %{public}s_complete error %{public}@", &v15, 0x34u);
  }

  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = a4 ^ 1u;
  }

  nw_socks5_connection_drain_and_cancel_in_on_queue(*(a1 + 32), v14, *(a1 + 40));
}

uint64_t **nw::object::operator new()
{
  v48 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&dword_1ED411950);
  v0 = qword_1ED411930;
  if (!qword_1ED411930)
  {
    qword_1ED411930 = 72;
    Class = objc_getClass(nw_string::_class(void)::instance);
    if (Class)
    {
      v2 = Class;
      v3 = sel_registerName("dealloc");
      v4 = imp_implementationWithBlock(&__block_literal_global_17016);
      class_replaceMethod(v2, v3, v4, "");
LABEL_4:
      v0 = qword_1ED411930;
      goto LABEL_5;
    }

    __nwlog_obj();
    *buf = 136446210;
    v41 = "init";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v22, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_105;
        }

        *buf = 136446210;
        v41 = "init";
        v25 = "%{public}s called with null objc_cls";
        goto LABEL_104;
      }

      if (v38 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_105;
        }

        *buf = 136446210;
        v41 = "init";
        v25 = "%{public}s called with null objc_cls, backtrace limit exceeded";
        goto LABEL_104;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v32 = os_log_type_enabled(v23, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v41 = "init";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null objc_cls, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_105;
      }

      if (v32)
      {
        *buf = 136446210;
        v41 = "init";
        v25 = "%{public}s called with null objc_cls, no backtrace";
LABEL_104:
        _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
      }
    }

LABEL_105:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_4;
  }

LABEL_5:
  if (v0 != 72)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "get_object_from_pool";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v12, &type, &v38))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v41 = "get_object_from_pool";
      v15 = "%{public}s called with null (m_obj_size == size)";
    }

    else if (v38 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v17 = os_log_type_enabled(v13, type);
      if (v16)
      {
        if (v17)
        {
          *buf = 136446466;
          v41 = "get_object_from_pool";
          v42 = 2082;
          v43 = v16;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null (m_obj_size == size), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_59;
      }

      if (!v17)
      {
LABEL_59:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "get_object_from_pool";
      v15 = "%{public}s called with null (m_obj_size == size), no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v41 = "get_object_from_pool";
      v15 = "%{public}s called with null (m_obj_size == size), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_59;
  }

  v5 = qword_1ED411948;
  if (!qword_1ED411948)
  {
LABEL_61:
    os_unfair_lock_unlock(&dword_1ED411950);
    goto LABEL_62;
  }

  v6 = qword_1ED411928 >= 0x48;
  qword_1ED411928 -= 72;
  if (!v6)
  {
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v41 = "get_object_from_pool";
        v42 = 2082;
        v43 = "m_pool_size";
        v44 = 2048;
        v45 = qword_1ED411930;
        v46 = 2048;
        v47 = qword_1ED411928;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    qword_1ED411928 = 0;
    v5 = qword_1ED411948;
  }

  v7 = qword_1ED411940;
  v8 = *(qword_1ED411940 + 8);
  v9 = *(qword_1ED411940 + 16);
  v10 = *qword_1ED411940;
  *(v10 + 8) = v8;
  *v8 = v10;
  qword_1ED411948 = v5 - 1;
  free(v7);
  os_unfair_lock_unlock(&dword_1ED411950);
  if (!v9)
  {
LABEL_62:
    v33 = objc_getClass(nw_string::_class(void)::instance);
    if (v33)
    {
      Instance = class_createInstance(v33, 0x48uLL);
      if (Instance)
      {
        v9 = Instance;
        Instance[2] = &nw_string::_class(void)::instance;
        return v9;
      }

      __nwlog_obj();
      *buf = 136446210;
      v41 = "operator new";
      v18 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v18, &type, &v38))
      {
        goto LABEL_99;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v41 = "operator new";
          v21 = "%{public}s called with null obj";
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      if (v38 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v41 = "operator new";
          v21 = "%{public}s called with null obj, backtrace limit exceeded";
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      v27 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v37 = os_log_type_enabled(v19, type);
      if (!v27)
      {
        if (v37)
        {
          *buf = 136446210;
          v41 = "operator new";
          v21 = "%{public}s called with null obj, no backtrace";
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      if (v37)
      {
        *buf = 136446466;
        v41 = "operator new";
        v42 = 2082;
        v43 = v27;
        v29 = "%{public}s called with null obj, dumping backtrace:%{public}s";
        goto LABEL_82;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v41 = "operator new";
      v18 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v18, &type, &v38))
      {
        goto LABEL_99;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v41 = "operator new";
          v21 = "%{public}s called with null objc_cls";
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      if (v38 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v41 = "operator new";
          v21 = "%{public}s called with null objc_cls, backtrace limit exceeded";
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      v27 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v36 = os_log_type_enabled(v19, type);
      if (!v27)
      {
        if (v36)
        {
          *buf = 136446210;
          v41 = "operator new";
          v21 = "%{public}s called with null objc_cls, no backtrace";
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      if (v36)
      {
LABEL_46:
        *buf = 136446466;
        v41 = "operator new";
        v42 = 2082;
        v43 = v27;
        v29 = "%{public}s called with null objc_cls, dumping backtrace:%{public}s";
        goto LABEL_82;
      }
    }

LABEL_83:
    free(v27);
    goto LABEL_99;
  }

  if (v9[2] == &nw_string::_class(void)::instance)
  {
    v11 = objc_getClass(nw_string::_class(void)::instance);
    if (v11)
    {
      objc_constructInstance(v11, v9);
      return v9;
    }

    __nwlog_obj();
    *buf = 136446210;
    v41 = "operator new";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v18, &type, &v38))
    {
      goto LABEL_99;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "operator new";
        v21 = "%{public}s called with null objc_cls";
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    if (v38 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "operator new";
        v21 = "%{public}s called with null objc_cls, backtrace limit exceeded";
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    v27 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v30 = os_log_type_enabled(v19, type);
    if (!v27)
    {
      if (v30)
      {
        *buf = 136446210;
        v41 = "operator new";
        v21 = "%{public}s called with null objc_cls, no backtrace";
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    if (v30)
    {
      goto LABEL_46;
    }

    goto LABEL_83;
  }

  __nwlog_obj();
  *buf = 136446210;
  v41 = "operator new";
  v18 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v18, &type, &v38))
  {
    goto LABEL_99;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v38 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v41 = "operator new";
        v21 = "%{public}s called with null (obj->m_cls == cls), backtrace limit exceeded";
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    v27 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!v27)
    {
      if (v28)
      {
        *buf = 136446210;
        v41 = "operator new";
        v21 = "%{public}s called with null (obj->m_cls == cls), no backtrace";
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    if (v28)
    {
      *buf = 136446466;
      v41 = "operator new";
      v42 = 2082;
      v43 = v27;
      v29 = "%{public}s called with null (obj->m_cls == cls), dumping backtrace:%{public}s";
LABEL_82:
      _os_log_impl(&dword_181A37000, v19, v20, v29, buf, 0x16u);
      goto LABEL_83;
    }

    goto LABEL_83;
  }

  v19 = __nwlog_obj();
  v20 = type;
  if (os_log_type_enabled(v19, type))
  {
    *buf = 136446210;
    v41 = "operator new";
    v21 = "%{public}s called with null (obj->m_cls == cls)";
LABEL_98:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
  }

LABEL_99:
  if (v18)
  {
    free(v18);
  }

  return 0;
}

void ___ZN2nw6object9class_def4initEm_block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = nw::object::cls(*(a2 + 16));
  v4 = nw::object::class_def::lookup_method(v3, nw::object::__destroy_def_instance, qword_1ED411980);
  if (v5)
  {
    v6 = (v5 & 1 | v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    v9 = v4;
    v10 = (a2 + (v5 >> 1));
    if (v5)
    {
      v9 = *(*v10 + v9);
    }

    v9(v10);
    return;
  }

  nw::object::cls(*(a2 + 16));
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v20 = "bad_method_lookup";
  v21 = 2080;
  v22 = "object::destroy";
  v11 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_31;
      }

      *buf = 136446466;
      v20 = "bad_method_lookup";
      v21 = 2080;
      v22 = "object::destroy";
      v14 = "%{public}s unable to lookup %s";
      goto LABEL_30;
    }

    if (v17 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_31;
      }

      *buf = 136446466;
      v20 = "bad_method_lookup";
      v21 = 2080;
      v22 = "object::destroy";
      v14 = "%{public}s unable to lookup %s, backtrace limit exceeded";
      goto LABEL_30;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type;
    v16 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v16)
      {
        *buf = 136446722;
        v20 = "bad_method_lookup";
        v21 = 2080;
        v22 = "object::destroy";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s unable to lookup %s, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_31;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "bad_method_lookup";
      v21 = 2080;
      v22 = "object::destroy";
      v14 = "%{public}s unable to lookup %s, no backtrace";
LABEL_30:
      _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0x16u);
    }
  }

LABEL_31:
  if (v11)
  {
    free(v11);
  }
}

uint64_t NWPBBrowseDescriptorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          v11 = [a2 data];
          [v11 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v16[0] & 0x7F) << v6;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_18;
        }
      }

      v13 = [a2 hasError] ? 0 : v8;
LABEL_18:
      if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(NWPBServiceBrowse);
        objc_storeStrong((a1 + 8), v14);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NWPBServiceBrowseReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v5 = [a2 position];
    }

    while (v5 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__17198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v7 = *(a1 + 40);
  if (v7)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = __nwlog_obj();
    os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    v46 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v46);
    if (result)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    free(v46);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v47 = __nwlog_obj();
  os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
  v48 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v48);
  if (result)
  {
    goto LABEL_45;
  }

  free(v48);
LABEL_3:
  v8 = *a2;
  *v7 = v8;
  if (v8)
  {
    v9 = a2[1];
    v7[1] = v9;
    if (v9)
    {
      v10 = a2[2];
      v7[2] = v10;
      if (v10)
      {
        v11 = a2[3];
        v7[3] = v11;
        if (v11)
        {
          v12 = a2[4];
          v7[4] = v12;
          if (v12)
          {
            v13 = a2[5];
            v7[5] = v13;
            if (v13)
            {
              v14 = a2[6];
              v7[6] = v14;
              if (v14)
              {
                v15 = a2[7];
                v7[7] = v15;
                if (v15)
                {
                  v16 = a2[8];
                  v7[8] = v16;
                  if (v16)
                  {
                    v17 = a2[9];
                    v7[9] = v17;
                    if (v17)
                    {
                      v18 = a2[10];
                      v7[10] = v18;
                      if (v18)
                      {
                        v19 = a2[11];
                        v7[11] = v19;
                        if (v19)
                        {
                          v20 = a2[12];
                          v7[12] = v20;
                          if (v20)
                          {
                            v21 = a2[13];
                            v7[13] = v21;
                            if (v21)
                            {
                              v22 = a2[14];
                              v7[14] = v22;
                              if (v22)
                              {
                                v23 = a2[15];
                                v7[15] = v23;
                                if (v23)
                                {
                                  v24 = a2[16];
                                  v7[16] = v24;
                                  if (v24)
                                  {
                                    v25 = a2[17];
                                    v7[17] = v25;
                                    if (v25)
                                    {
                                      v26 = a2[18];
                                      v7[18] = v26;
                                      if (v26)
                                      {
                                        v27 = a2[19];
                                        v7[19] = v27;
                                        if (v27)
                                        {
                                          v28 = a2[20];
                                          v7[20] = v28;
                                          if (v28)
                                          {
                                            v29 = a2[21];
                                            v7[21] = v29;
                                            if (v29)
                                            {
                                              v30 = a2[22];
                                              v7[22] = v30;
                                              if (v30)
                                              {
                                                v31 = a2[23];
                                                v7[23] = v31;
                                                if (v31)
                                                {
                                                  v32 = a2[24];
                                                  v7[24] = v32;
                                                  if (v32)
                                                  {
                                                    v33 = a2[25];
                                                    v7[25] = v33;
                                                    if (v33)
                                                    {
                                                      v34 = a2[26];
                                                      v7[26] = v34;
                                                      if (v34)
                                                      {
                                                        v35 = a2[27];
                                                        v7[27] = v35;
                                                        if (v35)
                                                        {
                                                          v36 = a2[28];
                                                          v7[28] = v36;
                                                          if (v36)
                                                          {
                                                            v37 = a2[29];
                                                            v7[29] = v37;
                                                            if (v37)
                                                            {
                                                              v38 = a2[30];
                                                              v7[30] = v38;
                                                              if (v38)
                                                              {
                                                                v39 = a2[31];
                                                                v7[31] = v39;
                                                                if (v39)
                                                                {
                                                                  v40 = a2[32];
                                                                  v7[32] = v40;
                                                                  if (v40)
                                                                  {
                                                                    v41 = a2[33];
                                                                    v7[33] = v41;
                                                                    if (v41)
                                                                    {
                                                                      v42 = a2[34];
                                                                      v7[34] = v42;
                                                                      if (v42)
                                                                      {
                                                                        v43 = a2[35];
                                                                        v7[35] = v43;
                                                                        if (v43)
                                                                        {
                                                                          v7[36] = 0;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 48) + 232))
  {
    v5 = *(*(a1 + 32) + 768);
    if (v5)
    {
      if (nw_protocol_metadata_matches_definition(v3, v5))
      {
        nw_protocol_metadata_set_original(v4, *(*(a1 + 48) + 232));
      }
    }
  }

  nw_content_context_set_metadata_for_protocol(*(a1 + 40), v4);

  return 1;
}

uint64_t ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_83(uint64_t a1, uint64_t a2)
{
  nw_frame_finalize(a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

uint64_t ___ZL29nw_flow_replay_send_one_frameP30NWConcrete_nw_endpoint_handlerP16nw_flow_protocolP11nw_protocolP20nw_replay_flow_state_block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_frame_uses_external_data(v3))
  {
    v4 = nw_frame_unclaimed_length(v3);
    v6 = v4;
    v7 = *(a1 + 72);
    if (v4 < v7)
    {
      if (v4)
      {
        v18 = dispatch_data_create(*(a1 + 48), v4, 0, 0);
        nw_frame_set_external_data(v3, v18, 0);
        *(*(*(a1 + 32) + 8) + 24) += v6;
        *(*(a1 + 56) + 4) += v6;
      }

      nw_frame_claim(v3, v5, v6, 0);
      nw_frame_collapse(v3);
      nw_frame_unclaim(v3, v19, v6, 0);
      v11 = v6 >= v7;
    }

    else
    {
      if (v7)
      {
        v8 = dispatch_data_create(*(a1 + 48), *(a1 + 72), 0, 0);
        nw_frame_set_external_data(v3, v8, 0);
        *(*(*(a1 + 32) + 8) + 24) += *(a1 + 72);
        *(*(a1 + 56) + 4) += *(a1 + 72);
      }

      **(a1 + 56) = (**(a1 + 56) + 1);
      nw_frame_claim(v3, v5, *(a1 + 72), 0);
      nw_frame_collapse(v3);
      nw_frame_unclaim(v3, v9, *(a1 + 72), 0);
      if (*(a1 + 76))
      {
        v10 = 0x80;
      }

      else
      {
        v10 = 0;
      }

      v3[186] = v10 & 0x80 | v3[186] & 0x7F;
      v11 = v6 >= v7;
    }
  }

  else
  {
    LODWORD(__n) = 0;
    v12 = nw_frame_unclaimed_bytes(v3, &__n);
    v14 = __n;
    v15 = *(a1 + 72);
    if (__n < v15)
    {
      v20 = __n;
      if (__n && v12)
      {
        memcpy(v12, *(a1 + 48), __n);
        v20 = __n;
        *(*(*(a1 + 32) + 8) + 24) += __n;
        *(*(a1 + 56) + 4) += v20;
      }

      nw_frame_claim(v3, v13, v20, 0);
      nw_frame_collapse(v3);
      nw_frame_unclaim(v3, v21, __n, 0);
    }

    else
    {
      if (v15)
      {
        memcpy(v12, *(a1 + 48), *(a1 + 72));
        *(*(*(a1 + 32) + 8) + 24) += *(a1 + 72);
      }

      **(a1 + 56) = (**(a1 + 56) + 1);
      nw_frame_claim(v3, v13, *(a1 + 72), 0);
      nw_frame_collapse(v3);
      nw_frame_unclaim(v3, v16, *(a1 + 72), 0);
      if (*(a1 + 76))
      {
        v17 = 0x80;
      }

      else
      {
        v17 = 0;
      }

      v3[186] = v17 & 0x80 | v3[186] & 0x7F;
    }

    v11 = v14 >= v15;
  }

  v22 = v11;
  nw_frame_inherit_metadata(*(*(*(a1 + 40) + 8) + 40), v3, v22);

  return 1;
}

BOOL ___ZL24__nw_signpost_is_enabledv_block_invoke_17413()
{
  result = networkd_settings_get_BOOL(nw_setting_enable_signposts);
  _nw_signposts_enabled = result;
  return result;
}

uint64_t __nw_endpoint_flow_cleanup_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  nw_hash_table_remove_node(*(*(a1 + 32) + 288), a2);
  v5 = *(a1 + 32);
  if (object != *(v5 + 128) || (*(v5 + 332) & 0x800) != 0)
  {
    nw_protocol_remove_input_handler(object, v5 + 96);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446466;
      v9 = "nw_endpoint_flow_cleanup_protocol_block_invoke";
      v10 = 2048;
      v11 = object;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Not tearing down replay selected output handler %p", &v8, 0x16u);
    }
  }

  return 1;
}

void ___ZL27nw_flow_replay_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1)
{
  v7 = nw_endpoint_handler_copy_flow(*(a1 + 32));
  if (v7)
  {
    v2 = v7[83];
    if (v2)
    {
      node = nw_hash_table_get_node(v7[83], *(a1 + 40), 0);
      if (node)
      {
        nw_hash_table_remove_node(v2, node);
        v4 = *(a1 + 40);
        if (v4)
        {
          v5 = *(v4 + 24);
          if (v5)
          {
            v6 = *(v5 + 8);
            if (v6)
            {
              v6();
            }
          }
        }
      }
    }
  }
}

uint64_t nw_flow_replay_unregister_notification(uint64_t a1, uint64_t a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 160);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = v8[29];

      if (v9 == 2)
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11)
          {
            v12 = *(v11 + 152);
            if (v12)
            {
              v13 = v12();
LABEL_17:

              return v13;
            }
          }
        }

        else
        {
          v16 = *(v5 + 288);
          if (v16)
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = ___ZL38nw_flow_replay_unregister_notificationP11nw_protocolS0_31nw_protocol_notification_type_t_block_invoke;
            v34[3] = &__block_descriptor_44_e23_B16__0__nw_hash_node__8l;
            v34[4] = a1;
            v35 = a3;
            nw_hash_table_apply(v16, v34);
            v13 = 1;
            goto LABEL_17;
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (v9 > 5)
          {
            v15 = "unknown-mode";
          }

          else
          {
            v15 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v39 = "nw_flow_replay_unregister_notification";
          v40 = 2082;
          v41 = v15;
          v42 = 2082;
          v43 = "flow";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    v22 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_flow_replay_unregister_notification";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v23, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v39 = "nw_flow_replay_unregister_notification";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v39 = "nw_flow_replay_unregister_notification";
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_54;
        }

        if (v31)
        {
          *buf = 136446210;
          v39 = "nw_flow_replay_unregister_notification";
          _os_log_impl(&dword_181A37000, v24, v30, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v39 = "nw_flow_replay_unregister_notification";
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_54:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_16;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_flow_replay_unregister_notification";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v19, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v39 = "nw_flow_replay_unregister_notification";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v20, type);
      if (v26)
      {
        if (v28)
        {
          *buf = 136446466;
          v39 = "nw_flow_replay_unregister_notification";
          v40 = 2082;
          v41 = v26;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_48;
      }

      if (v28)
      {
        *buf = 136446210;
        v39 = "nw_flow_replay_unregister_notification";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v39 = "nw_flow_replay_unregister_notification";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v19)
  {
    free(v19);
  }

  return 0;
}

uint64_t ___ZL38nw_flow_replay_unregister_notificationP11nw_protocolS0_31nw_protocol_notification_type_t_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v3 = *(object + 24);
    if (v3)
    {
      v4 = *(v3 + 152);
      if (v4)
      {
        v4();
      }
    }
  }

  return 0;
}

uint64_t nw_flow_replay_register_notification(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 160);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      v13 = v12[29];

      if (v13 == 2)
      {
        v14 = *(a1 + 32);
        if (v14)
        {
          v15 = *(v14 + 24);
          if (v15)
          {
            v16 = *(v15 + 144);
            if (v16)
            {
              v17 = v16();
LABEL_17:

              return v17;
            }
          }
        }

        else
        {
          v20 = *(v9 + 288);
          if (v20)
          {
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = ___ZL36nw_flow_replay_register_notificationP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
            v38[3] = &__block_descriptor_60_e23_B16__0__nw_hash_node__8l;
            v39 = a3;
            v38[4] = a1;
            v38[5] = a4;
            v38[6] = a5;
            nw_hash_table_apply(v20, v38);
            v17 = 1;
            goto LABEL_17;
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if (v13 > 5)
          {
            v19 = "unknown-mode";
          }

          else
          {
            v19 = off_1E6A31018[v13];
          }

          *buf = 136446722;
          v43 = "nw_flow_replay_register_notification";
          v44 = 2082;
          v45 = v19;
          v46 = 2082;
          v47 = "flow";
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }

    v26 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_flow_replay_register_notification";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v27, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v43 = "nw_flow_replay_register_notification";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v43 = "nw_flow_replay_register_notification";
            v44 = 2082;
            v45 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v34, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_54;
        }

        if (v35)
        {
          *buf = 136446210;
          v43 = "nw_flow_replay_register_notification";
          _os_log_impl(&dword_181A37000, v28, v34, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v43 = "nw_flow_replay_register_notification";
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_54:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_16;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_flow_replay_register_notification";
  v23 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v23, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v43 = "nw_flow_replay_register_notification";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v24, type);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v43 = "nw_flow_replay_register_notification";
          v44 = 2082;
          v45 = v30;
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_48;
      }

      if (v32)
      {
        *buf = 136446210;
        v43 = "nw_flow_replay_register_notification";
        _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v43 = "nw_flow_replay_register_notification";
        _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v23)
  {
    free(v23);
  }

  return 0;
}

uint64_t ___ZL36nw_flow_replay_register_notificationP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v3 = *(object + 24);
    if (v3)
    {
      v4 = *(v3 + 144);
      if (v4)
      {
        v4();
      }
    }
  }

  return 0;
}

uint64_t ___ZL25nw_flow_replay_disconnectP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v3 = *(object + 24);
    if (v3)
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        v4();
      }
    }
  }

  return 1;
}

uint64_t nw_flow_replay_connect(nw_protocol *a1, nw_protocol *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = *(handle + 20);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = v6[29];

      if (v7 == 2)
      {
        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            connect = callbacks->connect;
            if (connect)
            {
              v11 = connect();
LABEL_17:

              return v11;
            }
          }
        }

        else
        {
          v14 = *(handle + 36);
          if (v14)
          {
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = ___ZL22nw_flow_replay_connectP11nw_protocolS0__block_invoke;
            v32[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
            v32[4] = a1;
            nw_hash_table_apply(v14, v32);
            v11 = 1;
            goto LABEL_17;
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (v7 > 5)
          {
            v13 = "unknown-mode";
          }

          else
          {
            v13 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v36 = "nw_flow_replay_connect";
          v37 = 2082;
          v38 = v13;
          v39 = 2082;
          v40 = "flow";
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_flow_replay_connect";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v21, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_connect";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v36 = "nw_flow_replay_connect";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_54;
        }

        if (v29)
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_connect";
          _os_log_impl(&dword_181A37000, v22, v28, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v36 = "nw_flow_replay_connect";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_54:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_16;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_flow_replay_connect";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v17, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connect";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446466;
          v36 = "nw_flow_replay_connect";
          v37 = 2082;
          v38 = v24;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        goto LABEL_48;
      }

      if (v26)
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connect";
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v36 = "nw_flow_replay_connect";
        _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v17)
  {
    free(v17);
  }

  return 0;
}

uint64_t ___ZL22nw_flow_replay_connectP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v3 = *(object + 24);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v4();
      }
    }
  }

  return 1;
}

uint64_t nw_flow_replay_updated_path(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 160);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = v8[29];

      if (v9 == 2)
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11)
          {
            v12 = *(v11 + 168);
            if (v12)
            {
              v13 = v12();
LABEL_17:

              goto LABEL_18;
            }
          }
        }

        else
        {
          v16 = *(v5 + 288);
          if (v16)
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = ___ZL27nw_flow_replay_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke;
            v34[3] = &unk_1E6A35D48;
            v36 = a1;
            v35 = v4;
            nw_hash_table_apply(v16, v34);

            v13 = 1;
            goto LABEL_17;
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if (v9 > 5)
          {
            v15 = "unknown-mode";
          }

          else
          {
            v15 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "nw_flow_replay_updated_path";
          v41 = 2082;
          v42 = v15;
          v43 = 2082;
          v44 = "flow";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    v22 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_flow_replay_updated_path";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v23, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v40 = "nw_flow_replay_updated_path";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v40 = "nw_flow_replay_updated_path";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_54;
        }

        if (v31)
        {
          *buf = 136446210;
          v40 = "nw_flow_replay_updated_path";
          _os_log_impl(&dword_181A37000, v24, v30, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v40 = "nw_flow_replay_updated_path";
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_54:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_16;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_flow_replay_updated_path";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v19, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v40 = "nw_flow_replay_updated_path";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v20, type);
      if (v26)
      {
        if (v28)
        {
          *buf = 136446466;
          v40 = "nw_flow_replay_updated_path";
          v41 = 2082;
          v42 = v26;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_48;
      }

      if (v28)
      {
        *buf = 136446210;
        v40 = "nw_flow_replay_updated_path";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v40 = "nw_flow_replay_updated_path";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v19)
  {
    free(v19);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

uint64_t ___ZL27nw_flow_replay_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v3 = *(object + 24);
    if (v3)
    {
      v4 = *(v3 + 168);
      if (v4)
      {
        v4();
      }
    }
  }

  return 1;
}

void nw_flow_replay_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    output_handler = a1->output_handler;
    if (output_handler)
    {
      callbacks = output_handler->callbacks;
      if (callbacks && (output_finished = callbacks->output_finished) != 0)
      {

        output_finished();
      }

      else
      {
        v6 = __nwlog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          identifier = "<null>";
          if (a1->identifier)
          {
            identifier = a1->identifier;
          }

          *buf = 136446466;
          v18 = "nw_flow_replay_output_finished";
          v19 = 2082;
          v20 = identifier;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Protocol %{public}s does not support output finished", buf, 0x16u);
        }
      }
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_flow_replay_output_finished";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_flow_replay_output_finished";
        v12 = "%{public}s called with null protocol";
LABEL_26:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_flow_replay_output_finished";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v14)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v18 = "nw_flow_replay_output_finished";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_26;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_flow_replay_output_finished";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v9)
  {
    free(v9);
  }
}

BOOL ___ZL56nw_flow_replay_selected_candidate_has_early_data_to_sendP16nw_flow_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v6 = *(a1 + 40);
  v7 = *(v6 + 128);
  if (object == v7 && *extra < *(v6 + 328))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return object != v7;
}

uint64_t ___ZL35nw_flow_replay_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_hash_table_remove_node(*(*(a1 + 32) + 288), a2);
  nw_protocol_remove_input_handler(object, *(a1 + 40));
  return 1;
}

void *nw_flow_copy_flow_divert_endpoint(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    return v1;
  }

  return result;
}

void ___ZL17nw_flow_connectedP11nw_protocolS0__block_invoke_99(uint64_t a1)
{
  nw_endpoint_handler_handle_failure(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = [[NWConcrete_nw_error alloc] initWithDomain:50 code:?];
  *(v2 + 20) = 589825;
  v4 = v3;
  nw_endpoint_handler_report(v2, 0, v2 + 40, v3);
}

void ___ZL26nw_flow_passthrough_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke(uint64_t a1, NWConcrete_nw_endpoint_handler *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = nw_endpoint_handler_copy_flow(a2);
  v4 = v3;
  if (!v3)
  {
    if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
    {
      goto LABEL_39;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
    v7 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
    v8 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
    v9 = v8;
    if (v8)
    {
      logging_description = _nw_endpoint_get_logging_description(v8);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v11 = nw_endpoint_handler_state_string(*(a1 + 32));
    v12 = nw_endpoint_handler_mode_string(*(a1 + 32));
    v13 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
    *buf = 136448002;
    v62 = "nw_flow_passthrough_notify_block_invoke";
    v63 = 2082;
    v64 = id_string;
    v65 = 2082;
    v66 = v7;
    v67 = 2082;
    v68 = logging_description;
    v69 = 2082;
    v70 = v11;
    v71 = 2082;
    v72 = v12;
    v73 = 2114;
    v74 = v13;
    v75 = 2048;
    v76 = 0;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v14, &type, &v59))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          v17 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v18 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v19 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v20 = v19;
          if (v19)
          {
            v21 = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            v21 = "<NULL>";
          }

          v45 = nw_endpoint_handler_state_string(*(a1 + 32));
          v46 = v14;
          v47 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v48 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v62 = "nw_flow_passthrough_notify_block_invoke";
          v63 = 2082;
          v64 = v17;
          v65 = 2082;
          v66 = v18;
          v67 = 2082;
          v68 = v21;
          v69 = 2082;
          v70 = v45;
          v71 = 2082;
          v72 = v47;
          v14 = v46;
          v73 = 2114;
          v74 = v48;
          v75 = 2048;
          v76 = 0;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol", buf, 0x52u);
        }
      }

      else if (v59 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v23 = backtrace_string;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            v26 = nw_endpoint_handler_get_id_string(*(a1 + 32));
            v27 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
            v28 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
            v29 = v28;
            if (v28)
            {
              v30 = _nw_endpoint_get_logging_description(v28);
            }

            else
            {
              v30 = "<NULL>";
            }

            v58 = v30;

            v53 = v14;
            v54 = nw_endpoint_handler_state_string(*(a1 + 32));
            v55 = nw_endpoint_handler_mode_string(*(a1 + 32));
            v56 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
            *buf = 136448258;
            v62 = "nw_flow_passthrough_notify_block_invoke";
            v63 = 2082;
            v64 = v26;
            v65 = 2082;
            v66 = v27;
            v67 = 2082;
            v68 = v58;
            v69 = 2082;
            v70 = v54;
            v14 = v53;
            v71 = 2082;
            v72 = v55;
            v73 = 2114;
            v74 = v56;
            v75 = 2048;
            v76 = 0;
            v77 = 2082;
            v78 = v23;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol, dumping backtrace:%{public}s", buf, 0x5Cu);
          }

          free(v23);
          if (!v14)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v37 = type;
        if (os_log_type_enabled(v15, type))
        {
          v38 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v39 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v40 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v57 = v14;
          v41 = nw_endpoint_get_logging_description(v40);
          v42 = nw_endpoint_handler_state_string(*(a1 + 32));
          v43 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v44 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v62 = "nw_flow_passthrough_notify_block_invoke";
          v63 = 2082;
          v64 = v38;
          v65 = 2082;
          v66 = v39;
          v67 = 2082;
          v68 = v41;
          v69 = 2082;
          v70 = v42;
          v71 = 2082;
          v72 = v43;
          v73 = 2114;
          v74 = v44;
          v75 = 2048;
          v76 = 0;
          _os_log_impl(&dword_181A37000, v15, v37, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol, no backtrace", buf, 0x52u);

          v14 = v57;
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v31 = type;
        if (os_log_type_enabled(v15, type))
        {
          v32 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v33 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v34 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v35 = v34;
          if (v34)
          {
            v36 = _nw_endpoint_get_logging_description(v34);
          }

          else
          {
            v36 = "<NULL>";
          }

          v49 = v14;
          v50 = nw_endpoint_handler_state_string(*(a1 + 32));
          v51 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v52 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v62 = "nw_flow_passthrough_notify_block_invoke";
          v63 = 2082;
          v64 = v32;
          v65 = 2082;
          v66 = v33;
          v67 = 2082;
          v68 = v36;
          v69 = 2082;
          v70 = v50;
          v14 = v49;
          v71 = 2082;
          v72 = v51;
          v73 = 2114;
          v74 = v52;
          v75 = 2048;
          v76 = 0;
          _os_log_impl(&dword_181A37000, v15, v31, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol, backtrace limit exceeded", buf, 0x52u);
        }
      }
    }

    if (!v14)
    {
LABEL_38:
      v4 = 0;
      goto LABEL_39;
    }

LABEL_37:
    free(v14);
    goto LABEL_38;
  }

  nw_protocol_notify(v3 + 47, *(a1 + 40), 22);
LABEL_39:
}

void ___ZL14nw_flow_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke_91(uint64_t a1, NWConcrete_nw_endpoint_handler *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = nw_endpoint_handler_copy_flow(a2);
  v4 = v3;
  if (!v3)
  {
    if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
    {
      goto LABEL_39;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
    v7 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
    v8 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
    v9 = v8;
    if (v8)
    {
      logging_description = _nw_endpoint_get_logging_description(v8);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v11 = nw_endpoint_handler_state_string(*(a1 + 32));
    v12 = nw_endpoint_handler_mode_string(*(a1 + 32));
    v13 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
    *buf = 136448002;
    v62 = "nw_flow_notify_block_invoke";
    v63 = 2082;
    v64 = id_string;
    v65 = 2082;
    v66 = v7;
    v67 = 2082;
    v68 = logging_description;
    v69 = 2082;
    v70 = v11;
    v71 = 2082;
    v72 = v12;
    v73 = 2114;
    v74 = v13;
    v75 = 2048;
    v76 = 0;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v14, &type, &v59))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          v17 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v18 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v19 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v20 = v19;
          if (v19)
          {
            v21 = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            v21 = "<NULL>";
          }

          v45 = nw_endpoint_handler_state_string(*(a1 + 32));
          v46 = v14;
          v47 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v48 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v62 = "nw_flow_notify_block_invoke";
          v63 = 2082;
          v64 = v17;
          v65 = 2082;
          v66 = v18;
          v67 = 2082;
          v68 = v21;
          v69 = 2082;
          v70 = v45;
          v71 = 2082;
          v72 = v47;
          v14 = v46;
          v73 = 2114;
          v74 = v48;
          v75 = 2048;
          v76 = 0;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol", buf, 0x52u);
        }
      }

      else if (v59 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v23 = backtrace_string;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            v26 = nw_endpoint_handler_get_id_string(*(a1 + 32));
            v27 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
            v28 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
            v29 = v28;
            if (v28)
            {
              v30 = _nw_endpoint_get_logging_description(v28);
            }

            else
            {
              v30 = "<NULL>";
            }

            v58 = v30;

            v53 = v14;
            v54 = nw_endpoint_handler_state_string(*(a1 + 32));
            v55 = nw_endpoint_handler_mode_string(*(a1 + 32));
            v56 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
            *buf = 136448258;
            v62 = "nw_flow_notify_block_invoke";
            v63 = 2082;
            v64 = v26;
            v65 = 2082;
            v66 = v27;
            v67 = 2082;
            v68 = v58;
            v69 = 2082;
            v70 = v54;
            v14 = v53;
            v71 = 2082;
            v72 = v55;
            v73 = 2114;
            v74 = v56;
            v75 = 2048;
            v76 = 0;
            v77 = 2082;
            v78 = v23;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol, dumping backtrace:%{public}s", buf, 0x5Cu);
          }

          free(v23);
          if (!v14)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v37 = type;
        if (os_log_type_enabled(v15, type))
        {
          v38 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v39 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v40 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v57 = v14;
          v41 = nw_endpoint_get_logging_description(v40);
          v42 = nw_endpoint_handler_state_string(*(a1 + 32));
          v43 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v44 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v62 = "nw_flow_notify_block_invoke";
          v63 = 2082;
          v64 = v38;
          v65 = 2082;
          v66 = v39;
          v67 = 2082;
          v68 = v41;
          v69 = 2082;
          v70 = v42;
          v71 = 2082;
          v72 = v43;
          v73 = 2114;
          v74 = v44;
          v75 = 2048;
          v76 = 0;
          _os_log_impl(&dword_181A37000, v15, v37, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol, no backtrace", buf, 0x52u);

          v14 = v57;
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        v31 = type;
        if (os_log_type_enabled(v15, type))
        {
          v32 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v33 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v34 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v35 = v34;
          if (v34)
          {
            v36 = _nw_endpoint_get_logging_description(v34);
          }

          else
          {
            v36 = "<NULL>";
          }

          v49 = v14;
          v50 = nw_endpoint_handler_state_string(*(a1 + 32));
          v51 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v52 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v62 = "nw_flow_notify_block_invoke";
          v63 = 2082;
          v64 = v32;
          v65 = 2082;
          v66 = v33;
          v67 = 2082;
          v68 = v36;
          v69 = 2082;
          v70 = v50;
          v14 = v49;
          v71 = 2082;
          v72 = v51;
          v73 = 2114;
          v74 = v52;
          v75 = 2048;
          v76 = 0;
          _os_log_impl(&dword_181A37000, v15, v31, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parent flow %p exists but does not have shared protocol, backtrace limit exceeded", buf, 0x52u);
        }
      }
    }

    if (!v14)
    {
LABEL_38:
      v4 = 0;
      goto LABEL_39;
    }

LABEL_37:
    free(v14);
    goto LABEL_38;
  }

  nw_protocol_notify(v3 + 47, *(a1 + 40), 22);
LABEL_39:
}

void nw_endpoint_handler_report_data_stall(void *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_endpoint_handler_report_data_stall";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v20, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v48 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v66 = "nw_endpoint_handler_report_data_stall";
          _os_log_impl(&dword_181A37000, v21, v48, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v63 != 1)
      {
        v21 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v66 = "nw_endpoint_handler_report_data_stall";
          _os_log_impl(&dword_181A37000, v21, v59, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_69;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v57 = type;
      v58 = os_log_type_enabled(v21, type);
      if (!backtrace_string)
      {
        if (v58)
        {
          *buf = 136446210;
          v66 = "nw_endpoint_handler_report_data_stall";
          _os_log_impl(&dword_181A37000, v21, v57, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v58)
      {
        *buf = 136446466;
        v66 = "nw_endpoint_handler_report_data_stall";
        v67 = 2082;
        v68 = backtrace_string;
        _os_log_impl(&dword_181A37000, v21, v57, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_70:
    if (!v20)
    {
      goto LABEL_72;
    }

LABEL_71:
    free(v20);
    goto LABEL_72;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 2)
  {
    v5 = nw_endpoint_handler_copy_flow(v3);
    v6 = v3;
    v7 = *(v6 + 284);

    if ((v7 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v6))
      {
LABEL_55:
        v44 = *(v5 + 51);
        if (v44)
        {
          v45 = *(v44 + 24);
          if (v45)
          {
            v46 = *(v45 + 160);
            if (v46)
            {
              v46();
            }
          }
        }

        goto LABEL_72;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v6);
        v50 = nw_endpoint_handler_dry_run_string(v6);
        v51 = id_string;
        v62 = nw_endpoint_handler_copy_endpoint(v6);
        logging_description = nw_endpoint_get_logging_description(v62);
        v53 = nw_endpoint_handler_state_string(v6);
        v54 = nw_endpoint_handler_mode_string(v6);
        v55 = nw_endpoint_handler_copy_current_path(v6);
        *buf = 136447746;
        v66 = "nw_endpoint_handler_report_data_stall";
        v67 = 2082;
        v68 = v51;
        v69 = 2082;
        v70 = v50;
        v71 = 2082;
        v72 = logging_description;
        v73 = 2082;
        v74 = v53;
        v75 = 2082;
        v76 = v54;
        v77 = 2114;
        v78 = v55;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Reporting data stall to protocols", buf, 0x48u);
      }

LABEL_54:

      goto LABEL_55;
    }

    v8 = v6;
    v9 = *(v6 + 284);

    if ((v9 & 0x40) != 0)
    {
      goto LABEL_55;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_54;
    }

    v11 = v8;

    v12 = v11;
    v13 = *(v6 + 284);

    if (v13)
    {
      v14 = "dry-run ";
    }

    else
    {
      v14 = "";
    }

    v15 = nw_endpoint_handler_copy_endpoint(v12);
    v16 = v15;
    if (v15)
    {
      v17 = _nw_endpoint_get_logging_description(v15);
    }

    else
    {
      v17 = "<NULL>";
    }

    v61 = v5;
    v30 = v11 + 184;

    v31 = v12;
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
    v37 = v3->mode;
    v60 = v2;
    v38 = v17;
    if (v37 > 2)
    {
      switch(v37)
      {
        case 3:
          v39 = v14;
          v40 = "proxy";
          goto LABEL_53;
        case 4:
          v39 = v14;
          v40 = "fallback";
          goto LABEL_53;
        case 5:
          v39 = v14;
          v40 = "transform";
          goto LABEL_53;
      }
    }

    else
    {
      switch(v37)
      {
        case 0:
          v39 = v14;
          v40 = "path";
          goto LABEL_53;
        case 1:
          v39 = v14;
          v40 = "resolver";
          goto LABEL_53;
        case 2:
          v39 = v14;
          v40 = nw_endpoint_flow_mode_string(v35[33]);
LABEL_53:

          v42 = v36;
          os_unfair_lock_lock(v42 + 28);
          v43 = v42[8];
          os_unfair_lock_unlock(v42 + 28);

          *buf = 136447746;
          v66 = "nw_endpoint_handler_report_data_stall";
          v67 = 2082;
          v68 = v30;
          v69 = 2082;
          v70 = v39;
          v71 = 2082;
          v72 = v38;
          v73 = 2082;
          v74 = v34;
          v75 = 2082;
          v76 = v40;
          v77 = 2114;
          v78 = v43;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Reporting data stall to protocols", buf, 0x48u);

          v2 = v60;
          v5 = v61;

          goto LABEL_54;
      }
    }

    v39 = v14;
    v40 = "unknown-mode";
    goto LABEL_53;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (mode > 5)
  {
    v19 = "unknown-mode";
  }

  else
  {
    v19 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v66 = "nw_endpoint_handler_report_data_stall";
  v67 = 2082;
  v68 = v19;
  v69 = 2082;
  v70 = "flow";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v63 = 0;
  if (!__nwlog_fault(v20, &type, &v63))
  {
    goto LABEL_70;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = type;
    if (os_log_type_enabled(v21, type))
    {
      if (mode > 5)
      {
        v23 = "unknown-mode";
      }

      else
      {
        v23 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v66 = "nw_endpoint_handler_report_data_stall";
      v67 = 2082;
      v68 = v23;
      v69 = 2082;
      v70 = "flow";
      _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_69:

    goto LABEL_70;
  }

  if (v63 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v28 = type;
    if (os_log_type_enabled(v21, type))
    {
      if (mode > 5)
      {
        v29 = "unknown-mode";
      }

      else
      {
        v29 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v66 = "nw_endpoint_handler_report_data_stall";
      v67 = 2082;
      v68 = v29;
      v69 = 2082;
      v70 = "flow";
      _os_log_impl(&dword_181A37000, v21, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_69;
  }

  v24 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v25 = type;
  v26 = os_log_type_enabled(v21, type);
  if (!v24)
  {
    if (v26)
    {
      if (mode > 5)
      {
        v41 = "unknown-mode";
      }

      else
      {
        v41 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v66 = "nw_endpoint_handler_report_data_stall";
      v67 = 2082;
      v68 = v41;
      v69 = 2082;
      v70 = "flow";
      _os_log_impl(&dword_181A37000, v21, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_69;
  }

  if (v26)
  {
    if (mode > 5)
    {
      v27 = "unknown-mode";
    }

    else
    {
      v27 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v66 = "nw_endpoint_handler_report_data_stall";
    v67 = 2082;
    v68 = v27;
    v69 = 2082;
    v70 = "flow";
    v71 = 2082;
    v72 = v24;
    _os_log_impl(&dword_181A37000, v21, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v24);
  if (v20)
  {
    goto LABEL_71;
  }

LABEL_72:
}

uint64_t nw_protocol_trainer_bottom_inject_input(uint64_t a1, void *a2, int a3, const void *a4, size_t size, char a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v12 = 0;
      v13 = 0;
      if (a4)
      {
        v14 = size;
        if (size)
        {
          v13 = malloc_type_malloc(size, 0xFE125881uLL);
          if (!v13)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v39 = "nw_protocol_trainer_bottom_inject_input";
            v15 = _os_log_send_and_compose_impl();
            result = __nwlog_should_abort(v15);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v15);
          }

          memcpy(v13, a4, v14);
          v12 = v14;
        }
      }

      v17 = nw_frame_create(0, v13, v12, nw_protocol_trainer_frame_finalizer, a1);
      v18 = v17;
      if (a2)
      {
        nw_frame_set_metadata(v17, a2, 1, a3);
      }

      if (v13)
      {
        nw_frame_set_buffer_used_malloc(v18, 1);
      }

      if (v18)
      {
        *(v18 + 186) = *(v18 + 186) & 0xFC | a6 & 3;
        *(v18 + 16) = 0;
        v19 = *(v7 + 80);
        *(v18 + 24) = v19;
        *v19 = v18;
        *(v7 + 80) = v18 + 16;
        *(v18 + 32) = 0;
        v20 = v18 + 32;
        v21 = *(v7 + 96);
        *(v18 + 40) = v21;
        *v21 = v18;
LABEL_15:
        *(v7 + 96) = v20;
        return 1;
      }

      __nwlog_obj();
      *buf = 136446210;
      v39 = "__nw_frame_set_ecn_flag";
      v26 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v36 = 0;
      if (__nwlog_fault(v26, &type, &v36))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v39 = "__nw_frame_set_ecn_flag";
            v29 = "%{public}s called with null frame";
LABEL_60:
            _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
          }
        }

        else if (v36 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v27 = __nwlog_obj();
          v28 = type;
          v35 = os_log_type_enabled(v27, type);
          if (backtrace_string)
          {
            if (v35)
            {
              *buf = 136446466;
              v39 = "__nw_frame_set_ecn_flag";
              v40 = 2082;
              v41 = backtrace_string;
              _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_61;
          }

          if (v35)
          {
            *buf = 136446210;
            v39 = "__nw_frame_set_ecn_flag";
            v29 = "%{public}s called with null frame, no backtrace";
            goto LABEL_60;
          }
        }

        else
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v39 = "__nw_frame_set_ecn_flag";
            v29 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      if (v26)
      {
        free(v26);
      }

      MEMORY[0x10] = 0;
      MEMORY[0x18] = *(v7 + 80);
      *MEMORY[0x18] = 0;
      *(v7 + 80) = 16;
      v20 = 32;
      MEMORY[0x20] = 0;
      MEMORY[0x28] = *(v7 + 96);
      *MEMORY[0x28] = 0;
      goto LABEL_15;
    }

    __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_protocol_trainer_bottom_inject_input";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v22, &type, &v36))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v39 = "nw_protocol_trainer_bottom_inject_input";
        v25 = "%{public}s called with null trainer";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (v36 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v39 = "nw_protocol_trainer_bottom_inject_input";
        v25 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v30 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v33 = os_log_type_enabled(v23, type);
    if (!v30)
    {
      if (v33)
      {
        *buf = 136446210;
        v39 = "nw_protocol_trainer_bottom_inject_input";
        v25 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (v33)
    {
      *buf = 136446466;
      v39 = "nw_protocol_trainer_bottom_inject_input";
      v40 = 2082;
      v41 = v30;
      v32 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_protocol_trainer_bottom_inject_input";
  v22 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (!__nwlog_fault(v22, &type, &v36))
  {
    goto LABEL_55;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v36 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v39 = "nw_protocol_trainer_bottom_inject_input";
        v25 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v30 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v31 = os_log_type_enabled(v23, type);
    if (!v30)
    {
      if (v31)
      {
        *buf = 136446210;
        v39 = "nw_protocol_trainer_bottom_inject_input";
        v25 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (v31)
    {
      *buf = 136446466;
      v39 = "nw_protocol_trainer_bottom_inject_input";
      v40 = 2082;
      v41 = v30;
      v32 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
      _os_log_impl(&dword_181A37000, v23, v24, v32, buf, 0x16u);
    }

LABEL_38:
    free(v30);
    goto LABEL_55;
  }

  v23 = __nwlog_obj();
  v24 = type;
  if (os_log_type_enabled(v23, type))
  {
    *buf = 136446210;
    v39 = "nw_protocol_trainer_bottom_inject_input";
    v25 = "%{public}s called with null protocol";
LABEL_54:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
  }

LABEL_55:
  if (v22)
  {
    free(v22);
  }

  return 0;
}

void nw_protocol_trainer_frame_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_trainer_frame_finalizer";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v8, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_trainer_frame_finalizer";
      v11 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_trainer_frame_finalizer";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v8)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!v13)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_trainer_frame_finalizer";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_trainer_frame_finalizer";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_36;
  }

  v3 = a3[5];
  if (v3)
  {
    nw_frame_free_buffer(a1);
    nw_frame_reset(a1, 0, 0, 0, 0);
    v5 = (v3 + 80);
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    if (v6)
    {
      v5 = (v6 + 24);
    }

    *v5 = v7;
    *v7 = v6;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;

    os_release(a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_trainer_frame_finalizer";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v8, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_trainer_frame_finalizer";
    v11 = "%{public}s called with null trainer";
    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_trainer_frame_finalizer";
    v11 = "%{public}s called with null trainer, backtrace limit exceeded";
    goto LABEL_35;
  }

  v14 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v15 = os_log_type_enabled(v9, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_trainer_frame_finalizer";
    v11 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_35;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_trainer_frame_finalizer";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null trainer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v8)
  {
LABEL_37:
    free(v8);
  }
}

uint64_t nw_protocol_trainer_bottom_notify_input(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_trainer_bottom_notify_input";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_33;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v13 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_protocol_trainer_bottom_notify_input";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v16 = "nw_protocol_trainer_bottom_notify_input";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_32;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "nw_protocol_trainer_bottom_notify_input";
        v17 = 2082;
        v18 = backtrace_string;
        v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_22:
        _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
      }

LABEL_23:
      free(backtrace_string);
      goto LABEL_33;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v16 = "nw_protocol_trainer_bottom_notify_input";
    v8 = "%{public}s called with null protocol";
LABEL_32:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
LABEL_33:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_trainer_bottom_notify_input";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_protocol_trainer_bottom_notify_input";
      v8 = "%{public}s called with null trainer";
      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v16 = "nw_protocol_trainer_bottom_notify_input";
      v8 = "%{public}s called with null trainer, backtrace limit exceeded";
      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_protocol_trainer_bottom_notify_input";
        v17 = 2082;
        v18 = backtrace_string;
        v11 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (!v12)
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v16 = "nw_protocol_trainer_bottom_notify_input";
    v8 = "%{public}s called with null trainer, no backtrace";
    goto LABEL_32;
  }

  *(v2 + 188) = a2;
  result = *(a1 + 48);
  if (!result)
  {
    return result;
  }

  v4 = *(*(result + 24) + 64);
  if (v4)
  {
    v4();
    return 1;
  }

  return 0;
}

uint64_t nw_protocol_trainer_bottom_check_output(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_bottom_check_output";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v18, &type, &v30))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_check_output";
        v21 = "%{public}s called with null protocol";
LABEL_56:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }

LABEL_57:
      if (v18)
      {
        free(v18);
      }

      return 0;
    }

    if (v30 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_check_output";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v23 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_check_output";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v23)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_trainer_bottom_check_output";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v24 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_46:
      _os_log_impl(&dword_181A37000, v19, v20, v24, buf, 0x16u);
    }

LABEL_47:
    free(backtrace_string);
    goto LABEL_57;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_trainer_bottom_check_output";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v18, &type, &v30))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_check_output";
        v21 = "%{public}s called with null trainer";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v30 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_check_output";
        v21 = "%{public}s called with null trainer, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v25 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_trainer_bottom_check_output";
        v21 = "%{public}s called with null trainer, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v25)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_trainer_bottom_check_output";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v24 = "%{public}s called with null trainer, dumping backtrace:%{public}s";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v3 = *(v2 + 136);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v33 = __Block_byref_object_copy__18111;
  v34 = __Block_byref_object_dispose__18112;
  object = 0;
  v36 = -1;
  if (v3)
  {
    if (!*(v3 + 112) || (*(v3 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v3, *(v3 + 88)))
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v6 = *(v3 + 52);
      v5 = *(v3 + 56);
      if (v6)
      {
        v7 = (v6 - (v5 + *(v3 + 60)));
      }

      else
      {
        v7 = 0;
      }

      v9 = *(v3 + 112) + v5;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v27 = __nw_protocol_trainer_bottom_check_output_block_invoke;
    v28 = &unk_1E6A2DE40;
    v29 = buf;
    v10 = *(v3 + 64);
    if (v10)
    {
      do
      {
        while (1)
        {
          v11 = *v10;
          v12 = v10[6];
          if (v12)
          {
            break;
          }

          v10 = *v10;
          if (!v11)
          {
            goto LABEL_23;
          }
        }

        _nw_protocol_metadata_is_ip(v12);
        if (v27(v26, v10[6]))
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        v10 = v11;
      }

      while (!v13);
    }

LABEL_23:
    v8 = (*(a2 + 16))(a2, *(*&buf[8] + 40), v9, v7);
    v14 = (v2 + 144);
    v15 = *(v3 + 32);
    v16 = *(v3 + 40);
    if (v15)
    {
      v14 = (v15 + 40);
    }

    *v14 = v16;
    *v16 = v15;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    nw_frame_finalize(v3);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(buf, 8);
  if ((v36 & 1) != 0 && object)
  {
    os_release(object);
  }

  return v8;
}

uint64_t __Block_byref_object_copy__18111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__18112(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}
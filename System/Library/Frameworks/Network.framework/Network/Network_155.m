uint64_t nw_connection_modify_connected_protocol_stack(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_connection_modify_connected_protocol_stack_internal(v3, v4, 0);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_modify_connected_protocol_stack";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_modify_connected_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null modifier", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_modify_connected_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null modifier, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_connection_modify_connected_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null modifier, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_modify_connected_protocol_stack";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null modifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_modify_connected_protocol_stack";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_modify_connected_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_modify_connected_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_connection_modify_connected_protocol_stack";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_modify_connected_protocol_stack";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

void nw_connection_append_and_start_application_protocol(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_append_and_start_application_protocol";
    v7 = _os_log_send_and_compose_impl();

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_append_and_start_application_protocol";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_append_and_start_application_protocol";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v26 = "nw_connection_append_and_start_application_protocol";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_append_and_start_application_protocol";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_append_and_start_application_protocol_block_invoke;
    v20[3] = &unk_1E6A3D760;
    v21 = v3;
    v22 = v5;
    nw_connection_async_if_needed(v21, v20);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_append_and_start_application_protocol";
  v7 = _os_log_send_and_compose_impl();

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_append_and_start_application_protocol";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_append_and_start_application_protocol";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_append_and_start_application_protocol";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_append_and_start_application_protocol";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_connection_append_and_start_application_protocol_block_invoke(uint64_t a1)
{
  *&v39[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) != 3)
  {
    v6 = *(v2 + 16);
    if (!v6 || _nw_parameters_get_logging_disabled(v6))
    {
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    v8 = *(*(a1 + 32) + 448);
    *buf = 136446466;
    v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
    v38 = 1024;
    *v39 = v8;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v9, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          v12 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
          v38 = 1024;
          *v39 = v12;
          v13 = "%{public}s [C%u] Connection is not ready, cannot add new protocol";
LABEL_43:
          v23 = v10;
          v24 = v11;
LABEL_44:
          _os_log_impl(&dword_181A37000, v23, v24, v13, buf, 0x12u);
          goto LABEL_45;
        }

        goto LABEL_45;
      }

      if (v34 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          v22 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
          v38 = 1024;
          *v39 = v22;
          v13 = "%{public}s [C%u] Connection is not ready, cannot add new protocol, backtrace limit exceeded";
          goto LABEL_43;
        }

LABEL_45:

        if (!v9)
        {
          return;
        }

        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      v19 = type;
      v20 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          v31 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
          v38 = 1024;
          *v39 = v31;
          v13 = "%{public}s [C%u] Connection is not ready, cannot add new protocol, no backtrace";
          v23 = v10;
          v24 = v19;
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v20)
      {
        v21 = *(*(a1 + 32) + 448);
        *buf = 136446722;
        v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
        v38 = 1024;
        *v39 = v21;
        v39[2] = 2082;
        *&v39[3] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s [C%u] Connection is not ready, cannot add new protocol, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      return;
    }

LABEL_46:
    v25 = v9;
    goto LABEL_47;
  }

  if ((*(v2 + 109) & 0x40) != 0)
  {
    if (nw_endpoint_handler_append_and_start_application_protocol(*(v2 + 144), *(a1 + 40)))
    {
      return;
    }

    v14 = *(*(a1 + 32) + 16);
    if (v14 && !_nw_parameters_get_logging_disabled(v14))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
        v38 = 1024;
        *v39 = v16;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Failed to append and start new protocol, cancelling connection", buf, 0x12u);
      }
    }

    v17 = *(*(a1 + 32) + 144);
    if (v17)
    {
      nw_endpoint_handler_cancel(v17, 0, 0);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v27, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
        v30 = "%{public}s Connection has no parent endpoint handler";
LABEL_64:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v33 = os_log_type_enabled(v28, type);
      if (v32)
      {
        if (v33)
        {
          *buf = 136446466;
          v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
          v38 = 2082;
          *v39 = v32;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Connection has no parent endpoint handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        goto LABEL_66;
      }

      if (v33)
      {
        *buf = 136446210;
        v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
        v30 = "%{public}s Connection has no parent endpoint handler, no backtrace";
        goto LABEL_64;
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
        v30 = "%{public}s Connection has no parent endpoint handler, backtrace limit exceeded";
        goto LABEL_64;
      }
    }

LABEL_66:
    if (!v27)
    {
      return;
    }

    v25 = v27;
LABEL_47:
    free(v25);
    return;
  }

  v3 = *(v2 + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v37 = "nw_connection_append_and_start_application_protocol_block_invoke";
      v38 = 1024;
      *v39 = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] No connected endpoint handler found, cannot add new protocol", buf, 0x12u);
    }
  }
}

void nw_connection_prepend_application_protocol(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_prepend_application_protocol";
    v7 = _os_log_send_and_compose_impl();

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_prepend_application_protocol";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_prepend_application_protocol";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v26 = "nw_connection_prepend_application_protocol";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_prepend_application_protocol";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_prepend_application_protocol_block_invoke;
    v20[3] = &unk_1E6A3D760;
    v21 = v3;
    v22 = v5;
    nw_connection_async_if_needed(v21, v20);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_prepend_application_protocol";
  v7 = _os_log_send_and_compose_impl();

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_prepend_application_protocol";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_prepend_application_protocol";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_prepend_application_protocol";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_prepend_application_protocol";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_connection_prepend_application_protocol_block_invoke(uint64_t a1)
{
  *&v39[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) != 3)
  {
    if (nw_endpoint_handler_prepend_application_protocol(*(v2 + 144), *(a1 + 40)))
    {
      return;
    }

    v11 = *(*(a1 + 32) + 16);
    if (v11 && !_nw_parameters_get_logging_disabled(v11))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v37 = "nw_connection_prepend_application_protocol_block_invoke";
        v38 = 1024;
        *v39 = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Failed to append and start new protocol, cancelling connection", buf, 0x12u);
      }
    }

    v14 = *(*(a1 + 32) + 144);
    if (v14)
    {
      nw_endpoint_handler_cancel(v14, 0, 0);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    v37 = "nw_connection_prepend_application_protocol_block_invoke";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v24, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v37 = "nw_connection_prepend_application_protocol_block_invoke";
          v27 = "%{public}s Connection has no parent endpoint handler";
LABEL_54:
          v32 = v25;
          v33 = v26;
LABEL_55:
          _os_log_impl(&dword_181A37000, v32, v33, v27, buf, 0xCu);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      if (v34 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v37 = "nw_connection_prepend_application_protocol_block_invoke";
          v27 = "%{public}s Connection has no parent endpoint handler, backtrace limit exceeded";
          goto LABEL_54;
        }

LABEL_56:

        goto LABEL_57;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v29 = type;
      v30 = os_log_type_enabled(v25, type);
      if (!backtrace_string)
      {
        if (!v30)
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v37 = "nw_connection_prepend_application_protocol_block_invoke";
        v27 = "%{public}s Connection has no parent endpoint handler, no backtrace";
        v32 = v25;
        v33 = v29;
        goto LABEL_55;
      }

      if (v30)
      {
        *buf = 136446466;
        v37 = "nw_connection_prepend_application_protocol_block_invoke";
        v38 = 2082;
        *v39 = backtrace_string;
        _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Connection has no parent endpoint handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_57:
    if (v24)
    {
      v22 = v24;
      goto LABEL_39;
    }

    return;
  }

  v3 = *(v2 + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    v5 = *(*(a1 + 32) + 448);
    *buf = 136446466;
    v37 = "nw_connection_prepend_application_protocol_block_invoke";
    v38 = 1024;
    *v39 = v5;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v6, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          v9 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v37 = "nw_connection_prepend_application_protocol_block_invoke";
          v38 = 1024;
          *v39 = v9;
          v10 = "%{public}s [C%u] Connection became ready, ignoring prepended application protocol";
LABEL_35:
          v20 = v7;
          v21 = v8;
LABEL_36:
          _os_log_impl(&dword_181A37000, v20, v21, v10, buf, 0x12u);
          goto LABEL_37;
        }

        goto LABEL_37;
      }

      if (v34 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          v19 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v37 = "nw_connection_prepend_application_protocol_block_invoke";
          v38 = 1024;
          *v39 = v19;
          v10 = "%{public}s [C%u] Connection became ready, ignoring prepended application protocol, backtrace limit exceeded";
          goto LABEL_35;
        }

LABEL_37:

        if (!v6)
        {
          return;
        }

        goto LABEL_38;
      }

      v15 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      v16 = type;
      v17 = os_log_type_enabled(v7, type);
      if (!v15)
      {
        if (v17)
        {
          v31 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v37 = "nw_connection_prepend_application_protocol_block_invoke";
          v38 = 1024;
          *v39 = v31;
          v10 = "%{public}s [C%u] Connection became ready, ignoring prepended application protocol, no backtrace";
          v20 = v7;
          v21 = v16;
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v17)
      {
        v18 = *(*(a1 + 32) + 448);
        *buf = 136446722;
        v37 = "nw_connection_prepend_application_protocol_block_invoke";
        v38 = 1024;
        *v39 = v18;
        v39[2] = 2082;
        *&v39[3] = v15;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s [C%u] Connection became ready, ignoring prepended application protocol, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v15);
    }

    if (!v6)
    {
      return;
    }

LABEL_38:
    v22 = v6;
LABEL_39:
    free(v22);
  }
}

void __nw_connection_start_tls_block_invoke(uint64_t a1)
{
  *&v41[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 3)
  {
    if ((*(v2 + 109) & 0x40) == 0)
    {
      v3 = *(v2 + 16);
      if (v3 && !_nw_parameters_get_logging_disabled(v3))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v4 = gconnectionLogObj;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v39 = "nw_connection_start_tls_block_invoke";
          v40 = 1024;
          *v41 = v5;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] No connected endpoint handler found", buf, 0x12u);
        }
      }

      return;
    }

    if (nw_endpoint_start_tls_while_connected(*(v2 + 144)))
    {
      return;
    }

    v10 = *(*(a1 + 32) + 16);
    if (v10 && !_nw_parameters_get_logging_disabled(v10))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v39 = "nw_connection_start_tls_block_invoke";
        v40 = 1024;
        *v41 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Failed to start TLS, cancelling connection", buf, 0x12u);
      }
    }

    v13 = *(*(a1 + 32) + 144);
    if (v13)
    {
      nw_endpoint_handler_cancel(v13, 0, 0);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    *buf = 136446210;
    v39 = "nw_connection_start_tls_block_invoke";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v26, &type, &v36))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v39 = "nw_connection_start_tls_block_invoke";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Connection has no parent endpoint handler", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v27, type);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          v39 = "nw_connection_start_tls_block_invoke";
          v40 = 2082;
          *v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v32, "%{public}s Connection has no parent endpoint handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_74;
      }

      if (v33)
      {
        *buf = 136446210;
        v39 = "nw_connection_start_tls_block_invoke";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s Connection has no parent endpoint handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v39 = "nw_connection_start_tls_block_invoke";
        _os_log_impl(&dword_181A37000, v27, v35, "%{public}s Connection has no parent endpoint handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_74:
    if (!v26)
    {
      return;
    }

    v20 = v26;
    goto LABEL_76;
  }

  v6 = *(v2 + 16);
  if (*(v2 + 144))
  {
    if (v6 && !_nw_parameters_get_logging_disabled(v6))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v39 = "nw_connection_start_tls_block_invoke";
        v40 = 1024;
        *v41 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Connection is not ready yet, setting TLS on parameters", buf, 0x12u);
      }
    }

    v9 = nw_endpoint_handler_copy_parameters(*(*(a1 + 32) + 144));
    nw_parameters_set_tls(v9, 1);
    nw_parameters_set_tls_session_id(v9);

    return;
  }

  if (!v6 || _nw_parameters_get_logging_disabled(v6))
  {
    return;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v14 = gconnectionLogObj;
  v15 = *(*(a1 + 32) + 448);
  *buf = 136446466;
  v39 = "nw_connection_start_tls_block_invoke";
  v40 = 1024;
  *v41 = v15;
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (!__nwlog_fault(v16, &type, &v36))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    v18 = type;
    if (os_log_type_enabled(v17, type))
    {
      v19 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v39 = "nw_connection_start_tls_block_invoke";
      v40 = 1024;
      *v41 = v19;
      _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [C%u] No parent endpoint handler found", buf, 0x12u);
    }

LABEL_39:

LABEL_40:
    if (!v16)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v36 != 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    v29 = type;
    if (os_log_type_enabled(v17, type))
    {
      v30 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v39 = "nw_connection_start_tls_block_invoke";
      v40 = 1024;
      *v41 = v30;
      _os_log_impl(&dword_181A37000, v17, v29, "%{public}s [C%u] No parent endpoint handler found, backtrace limit exceeded", buf, 0x12u);
    }

    goto LABEL_39;
  }

  v21 = __nw_create_backtrace_string();
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v17 = gconnectionLogObj;
  v22 = type;
  v23 = os_log_type_enabled(v17, type);
  if (!v21)
  {
    if (v23)
    {
      v34 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v39 = "nw_connection_start_tls_block_invoke";
      v40 = 1024;
      *v41 = v34;
      _os_log_impl(&dword_181A37000, v17, v22, "%{public}s [C%u] No parent endpoint handler found, no backtrace", buf, 0x12u);
    }

    goto LABEL_39;
  }

  if (v23)
  {
    v24 = *(*(a1 + 32) + 448);
    *buf = 136446722;
    v39 = "nw_connection_start_tls_block_invoke";
    v40 = 1024;
    *v41 = v24;
    v41[2] = 2082;
    *&v41[3] = v21;
    _os_log_impl(&dword_181A37000, v17, v22, "%{public}s [C%u] No parent endpoint handler found, dumping backtrace:%{public}s", buf, 0x1Cu);
  }

  free(v21);
  if (v16)
  {
LABEL_41:
    v20 = v16;
LABEL_76:
    free(v20);
  }
}

void nw_connection_set_adaptive_read_handler(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_connection_set_adaptive_read_handler_block_invoke;
    v15[3] = &unk_1E6A3D908;
    v16 = v5;
    v18 = a2;
    v17 = v6;
    nw_connection_async_if_needed(v16, v15);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_connection_set_adaptive_read_handler";
  v8 = _os_log_send_and_compose_impl();

  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &v20, &v19))
  {
    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_adaptive_read_handler";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v20;
      v13 = os_log_type_enabled(v9, v20);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_connection_set_adaptive_read_handler";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_connection_set_adaptive_read_handler";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_adaptive_read_handler";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void __nw_connection_set_adaptive_read_handler_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 144);
  v4 = v1;
  if (!v3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_handler_set_adaptive_read_handler";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v12, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_adaptive_read_handler";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v29 != 1)
      {
        v13 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_adaptive_read_handler";
          _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_adaptive_read_handler";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v27)
      {
        *buf = 136446466;
        v32 = "nw_endpoint_handler_set_adaptive_read_handler";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_38:
    if (!v12)
    {
      goto LABEL_40;
    }

LABEL_39:
    free(v12);
    goto LABEL_40;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = _Block_copy(v4);
    v9 = *(v7 + 127);
    *(v7 + 127) = v8;

    *(v7 + 252) = v2;
    if ((*(v7 + 33) & 4) != 0)
    {
      nw_endpoint_handler_register_adaptive_read_handler(v5);
    }

    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (mode > 5)
  {
    v11 = "unknown-mode";
  }

  else
  {
    v11 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v32 = "nw_endpoint_handler_set_adaptive_read_handler";
  v33 = 2082;
  v34 = v11;
  v35 = 2082;
  v36 = "flow";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v12, &type, &v29))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      if (mode > 5)
      {
        v15 = "unknown-mode";
      }

      else
      {
        v15 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_adaptive_read_handler";
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v13, type))
    {
      if (mode > 5)
      {
        v21 = "unknown-mode";
      }

      else
      {
        v21 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_adaptive_read_handler";
      v33 = 2082;
      v34 = v21;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v13, type);
  if (!v16)
  {
    if (v18)
    {
      if (mode > 5)
      {
        v22 = "unknown-mode";
      }

      else
      {
        v22 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_adaptive_read_handler";
      v33 = 2082;
      v34 = v22;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    if (mode > 5)
    {
      v19 = "unknown-mode";
    }

    else
    {
      v19 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v32 = "nw_endpoint_handler_set_adaptive_read_handler";
    v33 = 2082;
    v34 = v19;
    v35 = 2082;
    v36 = "flow";
    v37 = 2082;
    v38 = v16;
    _os_log_impl(&dword_181A37000, v13, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v16);
  if (v12)
  {
    goto LABEL_39;
  }

LABEL_40:
}

void nw_connection_set_adaptive_write_handler(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_connection_set_adaptive_write_handler_block_invoke;
    v15[3] = &unk_1E6A3D908;
    v16 = v5;
    v18 = a2;
    v17 = v6;
    nw_connection_async_if_needed(v16, v15);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_connection_set_adaptive_write_handler";
  v8 = _os_log_send_and_compose_impl();

  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &v20, &v19))
  {
    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_adaptive_write_handler";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v20;
      v13 = os_log_type_enabled(v9, v20);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_connection_set_adaptive_write_handler";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_connection_set_adaptive_write_handler";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_adaptive_write_handler";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void __nw_connection_set_adaptive_write_handler_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 144);
  v4 = v1;
  if (!v3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_handler_set_adaptive_write_handler";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v12, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_adaptive_write_handler";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v29 != 1)
      {
        v13 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_adaptive_write_handler";
          _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_adaptive_write_handler";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v27)
      {
        *buf = 136446466;
        v32 = "nw_endpoint_handler_set_adaptive_write_handler";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_38:
    if (!v12)
    {
      goto LABEL_40;
    }

LABEL_39:
    free(v12);
    goto LABEL_40;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = _Block_copy(v4);
    v9 = *(v7 + 128);
    *(v7 + 128) = v8;

    *(v7 + 253) = v2;
    if ((*(v7 + 33) & 4) != 0)
    {
      nw_endpoint_handler_register_adaptive_write_handler(v5);
    }

    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (mode > 5)
  {
    v11 = "unknown-mode";
  }

  else
  {
    v11 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v32 = "nw_endpoint_handler_set_adaptive_write_handler";
  v33 = 2082;
  v34 = v11;
  v35 = 2082;
  v36 = "flow";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v12, &type, &v29))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      if (mode > 5)
      {
        v15 = "unknown-mode";
      }

      else
      {
        v15 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_adaptive_write_handler";
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v13, type))
    {
      if (mode > 5)
      {
        v21 = "unknown-mode";
      }

      else
      {
        v21 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_adaptive_write_handler";
      v33 = 2082;
      v34 = v21;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v13, type);
  if (!v16)
  {
    if (v18)
    {
      if (mode > 5)
      {
        v22 = "unknown-mode";
      }

      else
      {
        v22 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_adaptive_write_handler";
      v33 = 2082;
      v34 = v22;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    if (mode > 5)
    {
      v19 = "unknown-mode";
    }

    else
    {
      v19 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v32 = "nw_endpoint_handler_set_adaptive_write_handler";
    v33 = 2082;
    v34 = v19;
    v35 = 2082;
    v36 = "flow";
    v37 = 2082;
    v38 = v16;
    _os_log_impl(&dword_181A37000, v13, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v16);
  if (v12)
  {
    goto LABEL_39;
  }

LABEL_40:
}

void nw_connection_set_excessive_keepalive_handler(void *a1, int a2, int a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (v7)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_connection_set_excessive_keepalive_handler_block_invoke;
    v17[3] = &unk_1E6A3B530;
    v18 = v7;
    v20 = a2;
    v21 = a3;
    v19 = v8;
    nw_connection_async_if_needed(v18, v17);

    goto LABEL_3;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_connection_set_excessive_keepalive_handler";
  v10 = _os_log_send_and_compose_impl();

  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v10, &v23, &v22))
  {
    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v23;
      if (os_log_type_enabled(v11, v23))
      {
        *buf = 136446210;
        v25 = "nw_connection_set_excessive_keepalive_handler";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = v23;
      v15 = os_log_type_enabled(v11, v23);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v25 = "nw_connection_set_excessive_keepalive_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v15)
      {
        *buf = 136446210;
        v25 = "nw_connection_set_excessive_keepalive_handler";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = v23;
      if (os_log_type_enabled(v11, v23))
      {
        *buf = 136446210;
        v25 = "nw_connection_set_excessive_keepalive_handler";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }

LABEL_3:
}

void __nw_connection_set_excessive_keepalive_handler_block_invoke(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = a1[6];
  v3 = *(a1[4] + 144);
  v4 = v1;
  if (!v3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_handler_set_keepalive_handler";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v12, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_keepalive_handler";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v29 != 1)
      {
        v13 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_keepalive_handler";
          _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v32 = "nw_endpoint_handler_set_keepalive_handler";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v27)
      {
        *buf = 136446466;
        v32 = "nw_endpoint_handler_set_keepalive_handler";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_38:
    if (!v12)
    {
      goto LABEL_40;
    }

LABEL_39:
    free(v12);
    goto LABEL_40;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = _Block_copy(v4);
    v9 = *(v7 + 129);
    *(v7 + 129) = v8;

    *(v7 + 996) = vrev64_s32(v2);
    if ((*(v7 + 33) & 4) != 0)
    {
      nw_endpoint_handler_register_keepalive_handler(v5);
    }

    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (mode > 5)
  {
    v11 = "unknown-mode";
  }

  else
  {
    v11 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v32 = "nw_endpoint_handler_set_keepalive_handler";
  v33 = 2082;
  v34 = v11;
  v35 = 2082;
  v36 = "flow";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v12, &type, &v29))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      if (mode > 5)
      {
        v15 = "unknown-mode";
      }

      else
      {
        v15 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_keepalive_handler";
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v13, type))
    {
      if (mode > 5)
      {
        v21 = "unknown-mode";
      }

      else
      {
        v21 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_keepalive_handler";
      v33 = 2082;
      v34 = v21;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v13, type);
  if (!v16)
  {
    if (v18)
    {
      if (mode > 5)
      {
        v22 = "unknown-mode";
      }

      else
      {
        v22 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v32 = "nw_endpoint_handler_set_keepalive_handler";
      v33 = 2082;
      v34 = v22;
      v35 = 2082;
      v36 = "flow";
      _os_log_impl(&dword_181A37000, v13, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    if (mode > 5)
    {
      v19 = "unknown-mode";
    }

    else
    {
      v19 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v32 = "nw_endpoint_handler_set_keepalive_handler";
    v33 = 2082;
    v34 = v19;
    v35 = 2082;
    v36 = "flow";
    v37 = 2082;
    v38 = v16;
    _os_log_impl(&dword_181A37000, v13, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v16);
  if (v12)
  {
    goto LABEL_39;
  }

LABEL_40:
}

void nw_connection_set_low_throughput_handler(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_connection_set_low_throughput_handler_block_invoke;
    v15[3] = &unk_1E6A3D908;
    v16 = v5;
    v17 = v6;
    v18 = a2;
    nw_connection_async_if_needed(v16, v15);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_connection_set_low_throughput_handler";
  v8 = _os_log_send_and_compose_impl();

  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &v20, &v19))
  {
    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_low_throughput_handler";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v20;
      v13 = os_log_type_enabled(v9, v20);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_connection_set_low_throughput_handler";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_connection_set_low_throughput_handler";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v20;
      if (os_log_type_enabled(v9, v20))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_low_throughput_handler";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

void __nw_connection_set_low_throughput_handler_block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 384);
  *(v3 + 384) = v2;

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  if (!v5)
  {
    v12 = v6;
    v13 = v12;
    if (v12)
    {
      nw_context_assert_queue(v12[3]);
      v15 = v13[46];
      if (v15)
      {
        nw_queue_cancel_source(v15, v14);
        *(v13 + 22) = 0u;
        *(v13 + 23) = 0u;
        *(v13 + 21) = 0u;
      }

LABEL_14:

      return;
    }

    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_stop_throughput_monitor_on_nw_queue";
    v43 = _os_log_send_and_compose_impl();

    v56[0] = OS_LOG_TYPE_ERROR;
    v61[0] = 0;
    if (__nwlog_fault(v43, v56, v61))
    {
      if (v56[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = v56[0];
        if (os_log_type_enabled(v44, v56[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_stop_throughput_monitor_on_nw_queue";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v61[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v50 = v56[0];
        v51 = os_log_type_enabled(v44, v56[0]);
        if (backtrace_string)
        {
          if (v51)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_stop_throughput_monitor_on_nw_queue";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v50, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_91;
        }

        if (v51)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_stop_throughput_monitor_on_nw_queue";
          _os_log_impl(&dword_181A37000, v44, v50, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v53 = v56[0];
        if (os_log_type_enabled(v44, v56[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_stop_throughput_monitor_on_nw_queue";
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_91:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = v7;
  if (!v7)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
    v39 = _os_log_send_and_compose_impl();

    v56[0] = OS_LOG_TYPE_ERROR;
    v61[0] = 0;
    if (__nwlog_fault(v39, v56, v61))
    {
      if (v56[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = v56[0];
        if (os_log_type_enabled(v40, v56[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v61[0] == 1)
      {
        v46 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v47 = v56[0];
        v48 = os_log_type_enabled(v40, v56[0]);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
            *&buf[12] = 2082;
            *&buf[14] = v46;
            _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_86;
        }

        if (v48)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
          _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v52 = v56[0];
        if (os_log_type_enabled(v40, v56[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
          _os_log_impl(&dword_181A37000, v40, v52, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_86:
    if (v39)
    {
      free(v39);
    }

    goto LABEL_56;
  }

  nw_context_assert_queue(v7[3]);
  if ((*(v8 + 109) & 0x40) == 0)
  {
    v9 = v8[2];
    if (v9 && !_nw_parameters_get_logging_disabled(v9))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v8 + 112);
        *buf = 136446466;
        *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection does not have a connected handler", buf, 0x12u);
      }
    }

    goto LABEL_56;
  }

  v16 = v8;
  v17 = v16[2];

  multipath = nw_parameters_get_multipath(v17);
  if (multipath)
  {
    v19 = v16[2];
    if (v19 && !_nw_parameters_get_logging_disabled(v19))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v20 = gconnectionLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(v16 + 112);
        *buf = 136446466;
        *&buf[4] = "nw_connection_start_throughput_monitor_on_nw_queue";
        *&buf[12] = 1024;
        *&buf[14] = v21;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s [C%u] MPTCP incompatible with minimum throughput", buf, 0x12u);
      }
    }

    goto LABEL_56;
  }

  *(v16 + 94) = v5;
  if (!v16[46])
  {
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    v66 = 0u;
    v67 = 0u;
    memset(buf, 0, sizeof(buf));
    v22 = v16;
    nw_context_assert_queue(v8[3]);
    v23 = v22;
    if (nw_parameters_get_ip_protocol(v16[2]) == 6)
    {
      v24 = nw_endpoint_handler_fillout_tcp_info(v23[18], buf);

      if (v24)
      {
        v23[42] = (*(&v68[2] + 12) + *(v68 + 12));
        v25 = mach_continuous_time();
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        v23[43] = v26;
        v27 = v8[3];
        *v56 = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = __nw_connection_start_throughput_monitor_on_nw_queue_block_invoke;
        v59 = &unk_1E6A3D868;
        v60 = v23;
        source = nw_queue_context_create_source(v27, 2, 3, 0, v56, 0);
        if (source)
        {
          v29 = dispatch_time(0x8000000000000000, 1000000000);
          if (*source)
          {
            dispatch_source_set_timer(*source, v29, 0x3B9ACA00uLL, 0xF4240uLL);
          }

          else
          {
            *(source + 32) = v29;
            *(source + 40) = 1000000000;
            if (*(source + 48) == 1 && *(source + 49) == 1)
            {
              nw_queue_source_run_timer(source, v29);
            }
          }

          nw_queue_activate_source(source, v29);
          v16[46] = source;
LABEL_55:

          goto LABEL_56;
        }

        v30 = __nwlog_obj();
        *v61 = 136446210;
        v62 = "nw_connection_start_throughput_monitor_on_nw_queue";
        v31 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v54 = 0;
        if (__nwlog_fault(v31, &type, &v54))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v32 = __nwlog_obj();
            v33 = type;
            if (os_log_type_enabled(v32, type))
            {
              *v61 = 136446210;
              v62 = "nw_connection_start_throughput_monitor_on_nw_queue";
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s nw_queue_context_create_source(timer) failed", v61, 0xCu);
            }
          }

          else if (v54 == 1)
          {
            v34 = __nw_create_backtrace_string();
            v32 = __nwlog_obj();
            v35 = type;
            v36 = os_log_type_enabled(v32, type);
            if (v34)
            {
              if (v36)
              {
                *v61 = 136446466;
                v62 = "nw_connection_start_throughput_monitor_on_nw_queue";
                v63 = 2082;
                v64 = v34;
                _os_log_impl(&dword_181A37000, v32, v35, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", v61, 0x16u);
              }

              free(v34);
              goto LABEL_53;
            }

            if (v36)
            {
              *v61 = 136446210;
              v62 = "nw_connection_start_throughput_monitor_on_nw_queue";
              _os_log_impl(&dword_181A37000, v32, v35, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", v61, 0xCu);
            }
          }

          else
          {
            v32 = __nwlog_obj();
            v37 = type;
            if (os_log_type_enabled(v32, type))
            {
              *v61 = 136446210;
              v62 = "nw_connection_start_throughput_monitor_on_nw_queue";
              _os_log_impl(&dword_181A37000, v32, v37, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", v61, 0xCu);
            }
          }
        }

LABEL_53:
        if (v31)
        {
          free(v31);
        }

        goto LABEL_55;
      }
    }

    else
    {
    }
  }

LABEL_56:
}

void nw_connection_set_metadata_changed_handler(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_connection_set_metadata_changed_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_connection_set_metadata_changed_handler";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v29 = "nw_connection_set_metadata_changed_handler";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v9);
        goto LABEL_4;
      }

      if (v16)
      {
        *buf = 136446210;
        v29 = "nw_connection_set_metadata_changed_handler";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_connection_set_metadata_changed_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v6)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __nw_connection_set_metadata_changed_handler_block_invoke;
    v22[3] = &unk_1E6A39AE8;
    v23 = v5;
    v24 = v6;
    v25 = v7;
    nw_connection_async_if_needed(v23, v22);

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_connection_set_metadata_changed_handler";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v9, &type, &v26))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v29 = "nw_connection_set_metadata_changed_handler";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v26 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v29 = "nw_connection_set_metadata_changed_handler";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v29 = "nw_connection_set_metadata_changed_handler";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19)
  {
    *buf = 136446466;
    v29 = "nw_connection_set_metadata_changed_handler";
    v30 = 2082;
    v31 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_connection_set_metadata_changed_handler_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v3[33];
  v5 = v3;
  v6 = v2;
  if (!v6)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_connection_get_metadata_changed_registration_on_nw_queue";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v15, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v40 = "nw_connection_get_metadata_changed_registration_on_nw_queue";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else
      {
        if (v37 == 1)
        {
          v34 = v4;
          backtrace_string = __nw_create_backtrace_string();
          v19 = __nwlog_obj();
          v20 = type;
          v21 = os_log_type_enabled(v19, type);
          if (backtrace_string)
          {
            if (v21)
            {
              *buf = 136446466;
              v40 = "nw_connection_get_metadata_changed_registration_on_nw_queue";
              v41 = 2082;
              v42 = backtrace_string;
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            v4 = v34;
            free(backtrace_string);
          }

          else
          {
            if (v21)
            {
              *buf = 136446210;
              v40 = "nw_connection_get_metadata_changed_registration_on_nw_queue";
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }

            v4 = v34;
          }

          goto LABEL_28;
        }

        v16 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v40 = "nw_connection_get_metadata_changed_registration_on_nw_queue";
          _os_log_impl(&dword_181A37000, v16, v22, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_30;
  }

  nw_context_assert_queue(v5[3]);
  v7 = v3 + 33;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (nw_protocol_definition_is_equal_unsafe(v7[2], v6))
    {

      v8 = *(a1 + 48);
      if (v8)
      {
        if (v8 != v7[3])
        {
          v9 = _Block_copy(v8);
          v10 = v7[3];
          v7[3] = v9;
        }
      }

      else
      {
        v11 = *v7;
        v12 = v7[1];
        if (*v7)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = (*(a1 + 32) + 272);
        }

        *v13 = v12;
        *v12 = v11;
        *v7 = 0;
        v7[1] = 0;
      }

      goto LABEL_34;
    }
  }

LABEL_30:

  v23 = malloc_type_calloc(1uLL, 0x20uLL, 0xC8A864A2uLL);
  if (!v23)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v40 = "nw_connection_set_metadata_changed_handler_block_invoke";
    v41 = 2048;
    v42 = 1;
    v43 = 2048;
    v44 = 32;
    v25 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v25))
    {
      __break(1u);
      return;
    }

    free(v25);
  }

  objc_storeStrong(v23 + 2, *(a1 + 40));
  v26 = _Block_copy(*(a1 + 48));
  v27 = v23[3];
  v23[3] = v26;

  *v23 = 0;
  v23[1] = *(*(a1 + 32) + 272);
  **(*(a1 + 32) + 272) = v23;
  *(*(a1 + 32) + 272) = v23;
LABEL_34:
  v28 = *(*(a1 + 32) + 264);
  if (gLogDatapath == 1)
  {
    v31 = __nwlog_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = _Block_copy(*(a1 + 48));
      identifier = nw_protocol_definition_get_identifier(*(a1 + 40));
      *buf = 136447234;
      v40 = "nw_connection_set_metadata_changed_handler_block_invoke";
      v41 = 2048;
      v42 = v32;
      v43 = 2082;
      v44 = identifier;
      v45 = 1024;
      v46 = v4 == 0;
      v47 = 1024;
      v48 = v28 == 0;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s Set metadata changed handler: %p for protocol: %{public}s, was empty: %u now empty: %u", buf, 0x2Cu);
    }
  }

  if (v4 || !v28)
  {
    if (v4)
    {
      if (!v28)
      {
        nw_endpoint_handler_set_metadata_changed_handler(*(*(a1 + 32) + 144), 0);
      }
    }
  }

  else
  {
    v29 = *(a1 + 32);
    v30 = v29[18];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __nw_connection_set_metadata_changed_handler_block_invoke_51;
    v35[3] = &unk_1E6A2EE28;
    v36 = v29;
    nw_endpoint_handler_set_metadata_changed_handler(v30, v35);
  }
}

void __nw_connection_set_metadata_changed_handler_block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = v9;
  if (!v7)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v19, &type, &v47))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_81:
        if (!v19)
        {
          goto LABEL_13;
        }

LABEL_82:
        free(v19);
        goto LABEL_13;
      }

      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v40, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_80:

    goto LABEL_81;
  }

  if (!v8)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v19, &type, &v47))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null protocol", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v47 != 1)
    {
      v20 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v41, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_80;
    }

    v31 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v20, type);
    if (!v31)
    {
      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v33)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v19, &type, &v47))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null metadata", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v47 != 1)
    {
      v20 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v42, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_80;
    }

    v31 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v34 = type;
    v35 = os_log_type_enabled(v20, type);
    if (!v31)
    {
      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }

      goto LABEL_80;
    }

    if (v35)
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_48:

    free(v31);
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_82;
  }

  nw_context_assert_queue(v7[3]);
  v11 = v7;
  v12 = v8;
  nw_context_assert_queue(v7[3]);
  v13 = (v11 + 33);
  while (1)
  {
    v13 = *v13;
    if (!v13)
    {
      break;
    }

    if (nw_protocol_definition_is_equal_unsafe(*(v13 + 2), v12))
    {

      v14 = _Block_copy(*(v13 + 3));
      v15 = v14;
      if (v14)
      {
        v16 = *(v11 + 48);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL56nw_connection_deliver_metadata_changed_event_on_nw_queueP24NWConcrete_nw_connectionPU36objcproto25OS_nw_protocol_definition8NSObjectPU34objcproto23OS_nw_protocol_metadataS1__block_invoke;
        *&buf[24] = &unk_1E6A3D710;
        v51 = v14;
        v50 = v10;
        nw_connection_async_client(v11, v16, buf);

LABEL_9:
        goto LABEL_13;
      }

      v36 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
      v37 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v47 = 0;
      if (__nwlog_fault(v37, &type, &v47))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null handler_copy", buf, 0xCu);
          }

          goto LABEL_85;
        }

        if (v47 == 1)
        {
          v43 = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v44 = type;
          v45 = os_log_type_enabled(v38, type);
          if (v43)
          {
            if (v45)
            {
              *buf = 136446466;
              *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
              *&buf[12] = 2082;
              *&buf[14] = v43;
              _os_log_impl(&dword_181A37000, v38, v44, "%{public}s called with null handler_copy, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v43);
            goto LABEL_86;
          }

          if (v45)
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
            _os_log_impl(&dword_181A37000, v38, v44, "%{public}s called with null handler_copy, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v46 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
            _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null handler_copy, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_85:
      }

LABEL_86:
      if (v37)
      {
        free(v37);
      }

      goto LABEL_9;
    }
  }

  v17 = v11[2];
  if (v17 && !_nw_parameters_get_logging_disabled(v17) && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v26 = gconnectionLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(v11 + 112);
      *buf = 136446722;
      *&buf[4] = "nw_connection_deliver_metadata_changed_event_on_nw_queue";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      *&buf[18] = 2082;
      *&buf[20] = nw_protocol_definition_get_identifier(v12);
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] %{public}s does not have handler registered, ignoring metadata change notification", buf, 0x1Cu);
    }
  }

LABEL_13:
}

void nw_connection_get_parent_uuid(void *a1, unsigned __int8 *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_get_parent_uuid";
    v5 = _os_log_send_and_compose_impl();

    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v5, &v22, &v21))
    {
      goto LABEL_38;
    }

    if (v22 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v22;
      if (os_log_type_enabled(v6, v22))
      {
        *buf = 136446210;
        v24 = "nw_connection_get_parent_uuid";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null out_uuid", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = v22;
      v12 = os_log_type_enabled(v6, v22);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v24 = "nw_connection_get_parent_uuid";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v24 = "nw_connection_get_parent_uuid";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = v22;
      if (os_log_type_enabled(v6, v22))
      {
        *buf = 136446210;
        v24 = "nw_connection_get_parent_uuid";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null out_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  uuid_clear(a2);
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_connection_get_parent_uuid_block_invoke;
    v18[3] = &unk_1E6A3AC58;
    v20 = a2;
    v19 = v3;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_get_parent_uuid_block_invoke(v18);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_connection_get_parent_uuid";
  v5 = _os_log_send_and_compose_impl();

  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v5, &v22, &v21))
  {
    goto LABEL_38;
  }

  if (v22 == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = v22;
    if (os_log_type_enabled(v6, v22))
    {
      *buf = 136446210;
      v24 = "nw_connection_get_parent_uuid";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21 != 1)
  {
    v6 = __nwlog_obj();
    v17 = v22;
    if (os_log_type_enabled(v6, v22))
    {
      *buf = 136446210;
      v24 = "nw_connection_get_parent_uuid";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = v22;
  v15 = os_log_type_enabled(v6, v22);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v24 = "nw_connection_get_parent_uuid";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v24 = "nw_connection_get_parent_uuid";
    v25 = 2082;
    v26 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

__n128 __nw_connection_get_parent_uuid_block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 468);
  result = *v1;
  **(a1 + 40) = *v1;
  return result;
}

void nw_connection_set_group_uuid(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_connection_set_group_uuid";
    v6 = _os_log_send_and_compose_impl();

    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &v23, &v22))
    {
      goto LABEL_38;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v23;
      if (os_log_type_enabled(v7, v23))
      {
        *buf = 136446210;
        v25 = "nw_connection_set_group_uuid";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null in_uuid", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = v23;
      v13 = os_log_type_enabled(v7, v23);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v25 = "nw_connection_set_group_uuid";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null in_uuid, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v25 = "nw_connection_set_group_uuid";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null in_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = v23;
      if (os_log_type_enabled(v7, v23))
      {
        *buf = 136446210;
        v25 = "nw_connection_set_group_uuid";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null in_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nw_connection_set_group_uuid_block_invoke;
    v19[3] = &unk_1E6A3AC58;
    v20 = v3;
    v21 = a2;
    os_unfair_lock_lock(v4 + 34);
    __nw_connection_set_group_uuid_block_invoke(v19);
    os_unfair_lock_unlock(v4 + 34);

    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_connection_set_group_uuid";
  v6 = _os_log_send_and_compose_impl();

  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v6, &v23, &v22))
  {
    goto LABEL_38;
  }

  if (v23 == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = v23;
    if (os_log_type_enabled(v7, v23))
    {
      *buf = 136446210;
      v25 = "nw_connection_set_group_uuid";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v22 != 1)
  {
    v7 = __nwlog_obj();
    v18 = v23;
    if (os_log_type_enabled(v7, v23))
    {
      *buf = 136446210;
      v25 = "nw_connection_set_group_uuid";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = v23;
  v16 = os_log_type_enabled(v7, v23);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v25 = "nw_connection_set_group_uuid";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v25 = "nw_connection_set_group_uuid";
    v26 = 2082;
    v27 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

__n128 __nw_connection_set_group_uuid_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *v1;
  *(*(a1 + 32) + 484) = *v1;
  return result;
}

void nw_connection_get_group_uuid(void *a1, unsigned __int8 *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_get_group_uuid";
    v5 = _os_log_send_and_compose_impl();

    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v5, &v22, &v21))
    {
      goto LABEL_38;
    }

    if (v22 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v22;
      if (os_log_type_enabled(v6, v22))
      {
        *buf = 136446210;
        v24 = "nw_connection_get_group_uuid";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null out_uuid", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = v22;
      v12 = os_log_type_enabled(v6, v22);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v24 = "nw_connection_get_group_uuid";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v24 = "nw_connection_get_group_uuid";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = v22;
      if (os_log_type_enabled(v6, v22))
      {
        *buf = 136446210;
        v24 = "nw_connection_get_group_uuid";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null out_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  uuid_clear(a2);
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_connection_get_group_uuid_block_invoke;
    v18[3] = &unk_1E6A3AC58;
    v20 = a2;
    v19 = v3;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_get_group_uuid_block_invoke(v18);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_connection_get_group_uuid";
  v5 = _os_log_send_and_compose_impl();

  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v5, &v22, &v21))
  {
    goto LABEL_38;
  }

  if (v22 == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = v22;
    if (os_log_type_enabled(v6, v22))
    {
      *buf = 136446210;
      v24 = "nw_connection_get_group_uuid";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21 != 1)
  {
    v6 = __nwlog_obj();
    v17 = v22;
    if (os_log_type_enabled(v6, v22))
    {
      *buf = 136446210;
      v24 = "nw_connection_get_group_uuid";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = v22;
  v15 = os_log_type_enabled(v6, v22);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v24 = "nw_connection_get_group_uuid";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v24 = "nw_connection_get_group_uuid";
    v25 = 2082;
    v26 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

__n128 __nw_connection_get_group_uuid_block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 484);
  result = *v1;
  **(a1 + 40) = *v1;
  return result;
}

int *nw_protocol_demux_identifier()
{
  if (nw_protocol_demux_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_demux_identifier::onceToken, &__block_literal_global_26036);
  }

  return &nw_protocol_demux_identifier::identifier;
}

void *nw_protocol_demux_copy_definition()
{
  if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
  }

  result = nw_protocol_demux_copy_definition::definition;
  if (nw_protocol_demux_copy_definition::definition)
  {

    return os_retain(result);
  }

  return result;
}

void *nw_protocol_demux_create(const nw_protocol_identifier *a1, nw_object *a2, nw_endpoint *a3, nw_parameters *a4)
{
  v4 = a4;
  if (nw_protocol_demux_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_demux_identifier::onceToken, &__block_literal_global_26036);
    v4 = a4;
  }

  if (nw_protocol_demux_callbacks(void)::onceToken != -1)
  {
    v8 = v4;
    dispatch_once(&nw_protocol_demux_callbacks(void)::onceToken, &__block_literal_global_21);
    v4 = v8;
  }

  v5 = nw_protocol_new(112, v4, &nw_protocol_demux_identifier::identifier, nw_protocol_demux_callbacks(void)::callbacks);
  *v5 = 0;
  v5[1] = v5;
  return v5 - 12;
}

void ___ZL27nw_protocol_demux_callbacksv_block_invoke()
{
  nw_protocol_demux_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_add_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_remove_input_handler);
  nw_protocol_callbacks_set_connect(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_connect);
  nw_protocol_callbacks_set_connected(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_common_connected);
  nw_protocol_callbacks_set_disconnect(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_disconnect);
  nw_protocol_callbacks_set_disconnected(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_disconnected);
  nw_protocol_callbacks_set_supports_external_data(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_supports_external_data);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_finalize_output_frames);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_demux_callbacks(void)::callbacks, nw_protocol_demux_get_input_frames);
  v0 = nw_protocol_demux_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_input_available(v0, nw_protocol_demux_input_available);
}

void nw_protocol_demux_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_demux_input_available";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v2, &type, &v30))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v33 = "nw_protocol_demux_input_available";
      v26 = "%{public}s called with null protocol";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v28 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v33 = "nw_protocol_demux_input_available";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_45;
        }

        return;
      }

      if (!v28)
      {
LABEL_64:
        if (!v2)
        {
          return;
        }

        goto LABEL_45;
      }

      *buf = 136446210;
      v33 = "nw_protocol_demux_input_available";
      v26 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v33 = "nw_protocol_demux_input_available";
      v26 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
    goto LABEL_64;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v33 = "nw_protocol_demux_input_available";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (!__nwlog_fault(v8, &type, &v30))
      {
        goto LABEL_32;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v33 = "nw_protocol_demux_input_available";
        v11 = "%{public}s called with null demux";
      }

      else
      {
        if (v30 == 1)
        {
          v13 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          v16 = os_log_type_enabled(gLogObj, type);
          if (v13)
          {
            if (v16)
            {
              *buf = 136446466;
              v33 = "nw_protocol_demux_input_available";
              v34 = 2082;
              v35 = v13;
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v13);
            goto LABEL_32;
          }

          if (!v16)
          {
LABEL_32:
            if (v8)
            {
              free(v8);
            }

            goto LABEL_34;
          }

          *buf = 136446210;
          v33 = "nw_protocol_demux_input_available";
          v11 = "%{public}s called with null demux, no backtrace";
          v17 = v14;
          v18 = v15;
LABEL_31:
          _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
          goto LABEL_32;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v33 = "nw_protocol_demux_input_available";
        v11 = "%{public}s called with null demux, backtrace limit exceeded";
      }

      v17 = v9;
      v18 = v10;
      goto LABEL_31;
    }

    v7 = *a1[1].flow_id;
  }

  BYTE1(v7[1].output_handler_context) = 1;
  nw_protocol_input_available_quiet(a1->default_input_handler->flow_id, a1);
  if (BYTE1(v7[1].output_handler_context) == 1)
  {
    default_input_handler = v7[1].default_input_handler;
    if (default_input_handler)
    {
      if (LODWORD(default_input_handler->default_input_handler))
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 0x40000000;
        v29[2] = ___ZL33nw_protocol_demux_input_availableP11nw_protocolS0__block_invoke;
        v29[3] = &__block_descriptor_tmp_40;
        v29[4] = v7 + 96;
        nw_hash_table_apply(default_input_handler, v29);
      }
    }
  }

  BYTE1(v7[1].output_handler_context) = 0;
LABEL_34:
  if ((v5 & 1) == 0)
  {
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = *v2[1].flow_id;
          if (v22)
          {
            *v2[1].flow_id = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v2[1].flow_id[8])
          {
            v23 = *v2[1].flow_id;
            if (v23)
            {
              _Block_release(v23);
            }
          }

LABEL_45:
          free(v2);
        }
      }
    }
  }
}

uint64_t ___ZL33nw_protocol_demux_input_availableP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 - 96;
  }

  else
  {
    v5 = 0;
  }

  nw_protocol_input_available(object, v5);
  return *(*(a1 + 32) + 25);
}

uint64_t nw_protocol_demux_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_demux_get_input_frames";
    v46 = _os_log_send_and_compose_impl();
    LOBYTE(v71) = 16;
    LOBYTE(v67) = 0;
    if (__nwlog_fault(v46, &v71, &v67))
    {
      if (v71 == 17)
      {
        v47 = __nwlog_obj();
        v48 = v71;
        if (os_log_type_enabled(v47, v71))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_demux_get_input_frames";
          v49 = "%{public}s called with null protocol";
LABEL_85:
          _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
        }
      }

      else if (v67 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = v71;
        v51 = os_log_type_enabled(v47, v71);
        if (backtrace_string)
        {
          if (v51)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_demux_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_86;
        }

        if (v51)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_demux_get_input_frames";
          v49 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_85;
        }
      }

      else
      {
        v47 = __nwlog_obj();
        v48 = v71;
        if (os_log_type_enabled(v47, v71))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_demux_get_input_frames";
          v49 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_85;
        }
      }
    }

LABEL_86:
    if (v46)
    {
      free(v46);
    }

    return 0;
  }

  v11 = a1;
  handle = a1->handle;
  v13 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v14 = 1;
    goto LABEL_11;
  }

  v13 = *a1[1].flow_id;
  if (v13)
  {
LABEL_6:
    callbacks = v13[1].callbacks;
    v14 = 0;
    if (callbacks)
    {
      v13[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v14 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v16 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v16 = *a1[1].flow_id;
LABEL_18:
    BYTE1(v16[1].output_handler_context) = 0;
    output_handler = a1->output_handler;
    if (nw_protocol_get_input_handler(a1) == a2)
    {
      output_handler_context = 0;
      p_output_handler = &v16[1].output_handler;
      if (v16[1].output_handler)
      {
        goto LABEL_21;
      }
    }

    else
    {
      output_handler_context = nw_protocol_get_output_handler_context(a2);
      if (!output_handler_context)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_demux_get_input_frames";
          *&buf[12] = 2080;
          *&buf[14] = v16 + 122;
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %s No valid node found", buf, 0x16u);
          result = 0;
        }

        goto LABEL_46;
      }

      p_output_handler = (output_handler_context + 32);
      if (*(output_handler_context + 32))
      {
LABEL_21:
        result = nw_frame_array_fill_from_pending_array(p_output_handler, a6, a4, a5);
        goto LABEL_46;
      }
    }

    default_input_handler = v16[1].default_input_handler;
    if (default_input_handler && LODWORD(default_input_handler->default_input_handler))
    {
      v52 = p_output_handler;
      v53 = output_handler_context;
      v75[0] = 0;
      v75[1] = v75;
      nw_protocol_get_input_frames(output_handler, v11, a3, a4, a5, v75);
      v26 = v75[0];
      if (v75[0])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v77 = 0;
        v71 = 0;
        v72 = &v71;
        v73 = 0x2000000000;
        v74 = 0;
        v67 = 0;
        v68 = &v67;
        v69 = 0x2000000000;
        v70 = 0;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 0x40000000;
        v56 = ___ZL34nw_protocol_demux_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v57 = &unk_1E6A2F1C8;
        v62 = &v16[1].output_handler;
        v63 = v53;
        v58 = &v67;
        v59 = buf;
        v64 = a6;
        v65 = a2;
        v66 = v11;
        v60 = &v71;
        v61 = v75;
        do
        {
          if (!v26)
          {
            break;
          }

          v27 = *(v26 + 32);
          v28 = (v56)(v55);
          v26 = v27;
        }

        while ((v28 & 1) != 0);
        if (*(*&buf[8] + 24) == 1)
        {
          v29 = v16[1].default_input_handler;
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 0x40000000;
          v54[2] = ___ZL34nw_protocol_demux_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_38;
          v54[3] = &__block_descriptor_tmp_39_26068;
          v54[4] = v16 + 96;
          nw_hash_table_apply(v29, v54);
        }

        if (*(v72 + 24) == 1)
        {
          input_handler = nw_protocol_get_input_handler(v11);
          nw_protocol_input_available(input_handler, v16);
        }

        v31 = *(v68 + 6);
        if (!v31)
        {
          if (((*(*&buf[8] + 24) & 1) != 0 || *(v72 + 24) == 1) && *v52)
          {
            v31 = nw_frame_array_fill_from_pending_array(v52, a6, a4, a5);
          }

          else
          {
            v31 = 0;
          }
        }

        v45 = v31;
        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(&v71, 8);
        _Block_object_dispose(buf, 8);
        result = v45;
        if ((v14 & 1) == 0)
        {
          goto LABEL_55;
        }

        return result;
      }

      result = 0;
    }

    else
    {
      result = nw_protocol_get_input_frames(output_handler, v11, a3, a4, a5, a6);
    }

LABEL_46:
    if (v14)
    {
      return result;
    }

    goto LABEL_55;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_demux_get_input_frames";
  v17 = _os_log_send_and_compose_impl();
  LOBYTE(v71) = 16;
  LOBYTE(v67) = 0;
  if (!__nwlog_fault(v17, &v71, &v67))
  {
    goto LABEL_52;
  }

  if (v71 == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = v71;
    if (!os_log_type_enabled(gLogObj, v71))
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_demux_get_input_frames";
    v20 = "%{public}s called with null demux";
LABEL_50:
    v37 = v18;
    v38 = v19;
LABEL_51:
    _os_log_impl(&dword_181A37000, v37, v38, v20, buf, 0xCu);
    goto LABEL_52;
  }

  if (v67 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = v71;
    if (!os_log_type_enabled(gLogObj, v71))
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_demux_get_input_frames";
    v20 = "%{public}s called with null demux, backtrace limit exceeded";
    goto LABEL_50;
  }

  v32 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  v34 = v71;
  v35 = os_log_type_enabled(gLogObj, v71);
  if (v32)
  {
    if (v35)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_demux_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v32;
      _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v32);
  }

  else if (v35)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_demux_get_input_frames";
    v20 = "%{public}s called with null demux, no backtrace";
    v37 = v33;
    v38 = v34;
    goto LABEL_51;
  }

LABEL_52:
  if (v17)
  {
    free(v17);
  }

  result = 0;
  if ((v14 & 1) == 0)
  {
LABEL_55:
    v39 = v11->handle;
    if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v11 = *v11[1].flow_id) != 0)
    {
      v40 = v11[1].callbacks;
      if (v40)
      {
        v41 = (v40 - 1);
        v11[1].callbacks = v41;
        if (!v41)
        {
          v42 = result;
          v43 = *v11[1].flow_id;
          if (v43)
          {
            *v11[1].flow_id = 0;
            v43[2](v43);
            _Block_release(v43);
          }

          if (v11[1].flow_id[8])
          {
            v44 = *v11[1].flow_id;
            if (v44)
            {
              _Block_release(v44);
            }
          }

          free(v11);
          return v42;
        }
      }
    }
  }

  return result;
}

uint64_t ___ZL34nw_protocol_demux_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_unclaimed_bytes";
    v7 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v7, type, &v37))
    {
      goto LABEL_23;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_unclaimed_bytes";
      v10 = "%{public}s called with null frame";
    }

    else if (v37 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type[0];
      v12 = os_log_type_enabled(v8, type[0]);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_unclaimed_bytes";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v12)
      {
LABEL_23:
        if (v7)
        {
          free(v7);
        }

        goto LABEL_25;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_unclaimed_bytes";
      v10 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_unclaimed_bytes";
      v10 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_23;
  }

  v4 = *(a2 + 112);
  if (!v4)
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
LABEL_25:
    LODWORD(v4) = 0;
    goto LABEL_26;
  }

  LODWORD(v4) = *(a2 + 52);
  v5 = *(a2 + 56);
  if (v4)
  {
    LODWORD(v4) = v4 - (v5 + *(a2 + 60));
  }

  v6 = *(a2 + 112) + v5;
LABEL_27:
  v14 = (a2 + 32);
  v13 = *(a2 + 32);
  v15 = *(a2 + 40);
  if (v13)
  {
    *(v13 + 40) = v15;
  }

  else
  {
    *(*(a1 + 56) + 8) = v15;
  }

  *v15 = v13;
  *v14 = 0;
  *(a2 + 40) = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v43 = 0;
  v16 = *(a1 + 64);
  v17 = *(v16 + 16);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = ___ZL34nw_protocol_demux_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_2;
  v30[3] = &unk_1E6A2F1A0;
  v36 = v4;
  v32 = v6;
  v30[4] = buf;
  v33 = *(a1 + 72);
  v34 = a2;
  v35 = v16;
  v31 = *(a1 + 32);
  nw_hash_table_apply(v17, v30);
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v18 = *(a1 + 88);
    if (v18 == nw_protocol_get_input_handler(*(a1 + 96)))
    {
      if (gLogDatapath)
      {
        v27 = __nwlog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 64);
          if (v28)
          {
            v29 = (v28 + 26);
          }

          else
          {
            v29 = "";
          }

          *type = 136446466;
          v39 = "nw_protocol_demux_get_input_frames_block_invoke";
          v40 = 2080;
          v41 = v29;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %s Received frame for default input handler", type, 0x16u);
        }
      }

      v21 = *(a1 + 80);
      *(a2 + 32) = 0;
      v22 = *(v21 + 8);
      *(a2 + 40) = v22;
      *v22 = a2;
      *(v21 + 8) = v14;
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    else
    {
      if (gLogDatapath)
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 64);
          if (v25)
          {
            v26 = (v25 + 26);
          }

          else
          {
            v26 = "";
          }

          *type = 136446466;
          v39 = "nw_protocol_demux_get_input_frames_block_invoke";
          v40 = 2080;
          v41 = v26;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %s Received frame for default input handler, pending", type, 0x16u);
        }
      }

      v19 = *(a1 + 64);
      *(a2 + 32) = 0;
      v20 = *(v19 + 8);
      *(a2 + 40) = v20;
      *v20 = a2;
      *(v19 + 8) = v14;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  _Block_object_dispose(buf, 8);
  return 1;
}

uint64_t ___ZL34nw_protocol_demux_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_38(uint64_t a1, uint64_t a2)
{
  if (*nw_hash_node_get_extra(a2))
  {
    object = nw_hash_node_get_object(a2);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5 - 96;
    }

    else
    {
      v6 = 0;
    }

    nw_protocol_input_available(object, v6);
  }

  return 1;
}

BOOL ___ZL34nw_protocol_demux_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  for (i = *(extra + 16); i; i = *i)
  {
    v6 = *(i + 9);
    if (*(i + 9))
    {
      v7 = *(i + 8);
      if (*(a1 + 96) >= (v7 + v6))
      {
        v8 = (*(a1 + 56) + v7);
        for (j = i + 50; ; ++j)
        {
          v10 = *v8++;
          if (((*(j - 30) ^ v10) & *j) != 0)
          {
            break;
          }

          if (!--v6)
          {
            *(*(*(a1 + 32) + 8) + 24) = 1;
            if (*(a1 + 64) == a2)
            {
              v13 = *(a1 + 72);
              v14 = *(a1 + 80);
              *(v14 + 32) = 0;
              v15 = *(v13 + 8);
              *(v14 + 40) = v15;
              *v15 = v14;
              *(v13 + 8) = v14 + 32;
              if (gLogDatapath == 1)
              {
                v20 = __nwlog_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v21 = *(a1 + 88);
                  if (v21)
                  {
                    v22 = (v21 + 26);
                  }

                  else
                  {
                    v22 = "";
                  }

                  v23 = 136446466;
                  v24 = "nw_protocol_demux_get_input_frames_block_invoke_2";
                  v25 = 2080;
                  v26 = v22;
                  _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %s Found frame matching pattern", &v23, 0x16u);
                }
              }

              ++*(*(*(a1 + 40) + 8) + 24);
            }

            else
            {
              v11 = *(a1 + 80);
              *(v11 + 32) = 0;
              v12 = *(extra + 8);
              *(v11 + 40) = v12;
              *v12 = v11;
              *(extra + 8) = v11 + 32;
              if (gLogDatapath == 1)
              {
                v17 = __nwlog_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  v18 = *(a1 + 88);
                  if (v18)
                  {
                    v19 = (v18 + 26);
                  }

                  else
                  {
                    v19 = "";
                  }

                  v23 = 136446466;
                  v24 = "nw_protocol_demux_get_input_frames_block_invoke";
                  v25 = 2080;
                  v26 = v19;
                  _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %s Found frame matching pattern, pending", &v23, 0x16u);
                }
              }

              *(*(*(a1 + 48) + 8) + 24) = 1;
            }

            return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
          }
        }
      }
    }
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

uint64_t nw_protocol_demux_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_demux_finalize_output_frames";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v25, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_protocol_demux_finalize_output_frames";
          v28 = "%{public}s called with null protocol";
LABEL_55:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v31 == 1)
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
            v34 = "nw_protocol_demux_finalize_output_frames";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_56;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "nw_protocol_demux_finalize_output_frames";
          v28 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_55;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_protocol_demux_finalize_output_frames";
          v28 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_55;
        }
      }
    }

LABEL_56:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v4 = *a1[1].flow_id) != 0)
  {
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = a1->handle;
  if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle)
  {
    result = nw_protocol_finalize_output_frames(a1->output_handler->flow_id, a2);
    if (v5)
    {
      return result;
    }

    goto LABEL_28;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v34 = "nw_protocol_demux_finalize_output_frames";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v8, &type, &v31))
  {
    goto LABEL_25;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    v34 = "nw_protocol_demux_finalize_output_frames";
    v11 = "%{public}s called with null demux";
LABEL_23:
    v17 = v9;
    v18 = v10;
LABEL_24:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_25;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    v34 = "nw_protocol_demux_finalize_output_frames";
    v11 = "%{public}s called with null demux, backtrace limit exceeded";
    goto LABEL_23;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v34 = "nw_protocol_demux_finalize_output_frames";
      v35 = 2082;
      v36 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

  else if (v16)
  {
    *buf = 136446210;
    v34 = "nw_protocol_demux_finalize_output_frames";
    v11 = "%{public}s called with null demux, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_24;
  }

LABEL_25:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_28:
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = result;
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
            if (v24)
            {
              _Block_release(v24);
            }
          }

          free(v2);
          return v22;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_demux_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_demux_get_output_frames";
    v29 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v29, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_demux_get_output_frames";
          v32 = "%{public}s called with null protocol";
LABEL_55:
          _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v34 = os_log_type_enabled(v30, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_protocol_demux_get_output_frames";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_56;
        }

        if (v34)
        {
          *buf = 136446210;
          v38 = "nw_protocol_demux_get_output_frames";
          v32 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_55;
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_demux_get_output_frames";
          v32 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_55;
        }
      }
    }

LABEL_56:
    if (v29)
    {
      free(v29);
    }

    return 0;
  }

  v6 = a1;
  handle = a1->handle;
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v8 = *a1[1].flow_id) != 0)
  {
    callbacks = v8[1].callbacks;
    v9 = 0;
    if (callbacks)
    {
      v8[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = a1->handle;
  if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle)
  {
    result = nw_protocol_get_output_frames(a1->output_handler->flow_id, a1, a3, a4, a5, a6);
    if (v9)
    {
      return result;
    }

    goto LABEL_28;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v38 = "nw_protocol_demux_get_output_frames";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v12, &type, &v35))
  {
    goto LABEL_25;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    v38 = "nw_protocol_demux_get_output_frames";
    v15 = "%{public}s called with null demux";
LABEL_23:
    v21 = v13;
    v22 = v14;
LABEL_24:
    _os_log_impl(&dword_181A37000, v21, v22, v15, buf, 0xCu);
    goto LABEL_25;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    v38 = "nw_protocol_demux_get_output_frames";
    v15 = "%{public}s called with null demux, backtrace limit exceeded";
    goto LABEL_23;
  }

  v17 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v19 = type;
  v20 = os_log_type_enabled(gLogObj, type);
  if (v17)
  {
    if (v20)
    {
      *buf = 136446466;
      v38 = "nw_protocol_demux_get_output_frames";
      v39 = 2082;
      v40 = v17;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v17);
  }

  else if (v20)
  {
    *buf = 136446210;
    v38 = "nw_protocol_demux_get_output_frames";
    v15 = "%{public}s called with null demux, no backtrace";
    v21 = v18;
    v22 = v19;
    goto LABEL_24;
  }

LABEL_25:
  if (v12)
  {
    free(v12);
  }

  result = 0;
  if ((v9 & 1) == 0)
  {
LABEL_28:
    v23 = v6->handle;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
    {
      v24 = v6[1].callbacks;
      if (v24)
      {
        v25 = (v24 - 1);
        v6[1].callbacks = v25;
        if (!v25)
        {
          v26 = result;
          v27 = *v6[1].flow_id;
          if (v27)
          {
            *v6[1].flow_id = 0;
            v27[2](v27);
            _Block_release(v27);
          }

          if (v6[1].flow_id[8])
          {
            v28 = *v6[1].flow_id;
            if (v28)
            {
              _Block_release(v28);
            }
          }

          free(v6);
          return v26;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_demux_supports_external_data(nw_protocol *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_demux_supports_external_data";
    v24 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v24, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v33 = "nw_protocol_demux_supports_external_data";
          v27 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v29 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v33 = "nw_protocol_demux_supports_external_data";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v29)
        {
          *buf = 136446210;
          v33 = "nw_protocol_demux_supports_external_data";
          v27 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v33 = "nw_protocol_demux_supports_external_data";
          v27 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v24)
    {
      free(v24);
    }

    output_handler_context = 0;
    return output_handler_context & 1;
  }

  v1 = a1;
  handle = a1->handle;
  v3 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v4 = 1;
    goto LABEL_11;
  }

  v3 = *a1[1].flow_id;
  if (v3)
  {
LABEL_6:
    callbacks = v3[1].callbacks;
    v4 = 0;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v4 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v6 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v6 = *a1[1].flow_id;
LABEL_18:
    output_handler_context = v6[1].output_handler_context;
    if (v4)
    {
      return output_handler_context & 1;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v33 = "nw_protocol_demux_supports_external_data";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v7, &type, &v30))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v33 = "nw_protocol_demux_supports_external_data";
    v10 = "%{public}s called with null demux";
LABEL_27:
    v16 = v8;
    v17 = v9;
LABEL_28:
    _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
    goto LABEL_29;
  }

  if (v30 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v33 = "nw_protocol_demux_supports_external_data";
    v10 = "%{public}s called with null demux, backtrace limit exceeded";
    goto LABEL_27;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(gLogObj, type);
  if (v12)
  {
    if (v15)
    {
      *buf = 136446466;
      v33 = "nw_protocol_demux_supports_external_data";
      v34 = 2082;
      v35 = v12;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
  }

  else if (v15)
  {
    *buf = 136446210;
    v33 = "nw_protocol_demux_supports_external_data";
    v10 = "%{public}s called with null demux, no backtrace";
    v16 = v13;
    v17 = v14;
    goto LABEL_28;
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }

  output_handler_context = 0;
  if ((v4 & 1) == 0)
  {
LABEL_32:
    v18 = v1->handle;
    if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v19 = v1[1].callbacks;
      if (v19)
      {
        v20 = (v19 - 1);
        v1[1].callbacks = v20;
        if (!v20)
        {
          v21 = *v1[1].flow_id;
          if (v21)
          {
            *v1[1].flow_id = 0;
            v21[2](v21);
            _Block_release(v21);
          }

          if (v1[1].flow_id[8])
          {
            v22 = *v1[1].flow_id;
            if (v22)
            {
              _Block_release(v22);
            }
          }

          free(v1);
        }
      }
    }
  }

  return output_handler_context & 1;
}

void nw_protocol_demux_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_demux_disconnected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v2, &type, &v32))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v35 = "nw_protocol_demux_disconnected";
      v27 = "%{public}s called with null protocol";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v30 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          v35 = "nw_protocol_demux_disconnected";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_44;
        }

        return;
      }

      if (!v30)
      {
LABEL_65:
        if (!v2)
        {
          return;
        }

        goto LABEL_44;
      }

      *buf = 136446210;
      v35 = "nw_protocol_demux_disconnected";
      v27 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v35 = "nw_protocol_demux_disconnected";
      v27 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_65;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v35 = "nw_protocol_demux_disconnected";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v32 = 0;
      if (!__nwlog_fault(v8, &type, &v32))
      {
        goto LABEL_31;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v35 = "nw_protocol_demux_disconnected";
        v11 = "%{public}s called with null demux";
      }

      else
      {
        if (v32 == 1)
        {
          v14 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          v17 = os_log_type_enabled(gLogObj, type);
          if (v14)
          {
            if (v17)
            {
              *buf = 136446466;
              v35 = "nw_protocol_demux_disconnected";
              v36 = 2082;
              v37 = v14;
              _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v14);
            goto LABEL_31;
          }

          if (!v17)
          {
LABEL_31:
            if (v8)
            {
              free(v8);
            }

            goto LABEL_33;
          }

          *buf = 136446210;
          v35 = "nw_protocol_demux_disconnected";
          v11 = "%{public}s called with null demux, no backtrace";
          v18 = v15;
          v19 = v16;
LABEL_30:
          _os_log_impl(&dword_181A37000, v18, v19, v11, buf, 0xCu);
          goto LABEL_31;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v35 = "nw_protocol_demux_disconnected";
        v11 = "%{public}s called with null demux, backtrace limit exceeded";
      }

      v18 = v9;
      v19 = v10;
      goto LABEL_30;
    }

    v7 = *a1[1].flow_id;
  }

  if (gLogDatapath == 1)
  {
    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v35 = "nw_protocol_demux_disconnected";
      v36 = 2080;
      v37 = &v7[1].output_handler_context + 2;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %s Disconnected from output handler", buf, 0x16u);
    }
  }

  nw_protocol_remove_instance(v2);
  default_input_handler = v7[1].default_input_handler;
  if (default_input_handler)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = ___ZL30nw_protocol_demux_disconnectedP11nw_protocolS0__block_invoke;
    v31[3] = &__block_descriptor_tmp_34_26122;
    v31[4] = v7 + 96;
    nw_hash_table_apply(default_input_handler, v31);
  }

  input_handler = nw_protocol_get_input_handler(v7);
  nw_protocol_disconnected_quiet(input_handler, v2);
LABEL_33:
  if ((v5 & 1) == 0)
  {
    v20 = v2->handle;
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v21 = v2[1].callbacks;
      if (v21)
      {
        v22 = (v21 - 1);
        v2[1].callbacks = v22;
        if (!v22)
        {
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
            if (v24)
            {
              _Block_release(v24);
            }
          }

LABEL_44:
          free(v2);
        }
      }
    }
  }
}

uint64_t ___ZL30nw_protocol_demux_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 - 96;
  }

  else
  {
    v5 = 0;
  }

  nw_protocol_disconnected(object, v5);
  return 1;
}

void nw_protocol_demux_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_demux_disconnect";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v3, &type, &v29))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v32 = "nw_protocol_demux_disconnect";
      v26 = "%{public}s called with null protocol";
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v28 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v32 = "nw_protocol_demux_disconnect";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_43;
        }

        return;
      }

      if (!v28)
      {
LABEL_62:
        if (!v3)
        {
          return;
        }

        goto LABEL_43;
      }

      *buf = 136446210;
      v32 = "nw_protocol_demux_disconnect";
      v26 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v32 = "nw_protocol_demux_disconnect";
      v26 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
    goto LABEL_62;
  }

  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *a1[1].flow_id;
  if (v5)
  {
LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  handle = a1->handle;
LABEL_11:
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    a1 = *a1[1].flow_id;
LABEL_18:
    if (nw_protocol_get_input_handler(a1) == a2)
    {
      output_handler = nw_protocol_get_output_handler(v3);
      nw_protocol_disconnect_quiet(output_handler, v3);
    }

    else
    {
      nw_protocol_disconnected_quiet(a2, v3);
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v32 = "nw_protocol_demux_disconnect";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v8, &type, &v29))
  {
    goto LABEL_30;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    *buf = 136446210;
    v32 = "nw_protocol_demux_disconnect";
    v11 = "%{public}s called with null demux";
LABEL_28:
    v17 = v9;
    v18 = v10;
LABEL_29:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_30;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    *buf = 136446210;
    v32 = "nw_protocol_demux_disconnect";
    v11 = "%{public}s called with null demux, backtrace limit exceeded";
    goto LABEL_28;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v32 = "nw_protocol_demux_disconnect";
      v33 = 2082;
      v34 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
    goto LABEL_30;
  }

  if (v16)
  {
    *buf = 136446210;
    v32 = "nw_protocol_demux_disconnect";
    v11 = "%{public}s called with null demux, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_29;
  }

LABEL_30:
  if (v8)
  {
    free(v8);
  }

LABEL_32:
  if ((v6 & 1) == 0)
  {
    v19 = v3->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v20 = v3[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v3[1].callbacks = v21;
        if (!v21)
        {
          v22 = *v3[1].flow_id;
          if (v22)
          {
            *v3[1].flow_id = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v3[1].flow_id[8])
          {
            v23 = *v3[1].flow_id;
            if (v23)
            {
              _Block_release(v23);
            }
          }

LABEL_43:
          free(v3);
        }
      }
    }
  }
}

uint64_t nw_protocol_demux_connect(nw_protocol *a1, nw_protocol *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v6 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v8 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v37 = "nw_protocol_demux_connect";
        v9 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v34 = 0;
        if (!__nwlog_fault(v9, &type, &v34))
        {
          goto LABEL_33;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v37 = "nw_protocol_demux_connect";
          v12 = "%{public}s called with null demux";
        }

        else
        {
          if (v34 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v18 = type;
            v19 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v19)
              {
                *buf = 136446466;
                v37 = "nw_protocol_demux_connect";
                v38 = 2082;
                v39 = backtrace_string;
                _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_33;
            }

            if (!v19)
            {
LABEL_33:
              if (v9)
              {
                free(v9);
              }

              goto LABEL_35;
            }

            *buf = 136446210;
            v37 = "nw_protocol_demux_connect";
            v12 = "%{public}s called with null demux, no backtrace";
            v20 = v17;
            v21 = v18;
LABEL_32:
            _os_log_impl(&dword_181A37000, v20, v21, v12, buf, 0xCu);
            goto LABEL_33;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_33;
          }

          *buf = 136446210;
          v37 = "nw_protocol_demux_connect";
          v12 = "%{public}s called with null demux, backtrace limit exceeded";
        }

        v20 = v10;
        v21 = v11;
        goto LABEL_32;
      }

      v8 = *a1[1].flow_id;
    }

    if (nw_protocol_get_input_handler(v8) != a2)
    {
      nw_protocol_connected_quiet(a2, v3);
      result = 1;
      goto LABEL_36;
    }

    result = nw_protocol_get_output_handler(v8);
    if (!result)
    {
LABEL_36:
      if ((v6 & 1) == 0)
      {
        v22 = v3->handle;
        if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
        {
          v23 = v3[1].callbacks;
          if (v23)
          {
            v24 = (v23 - 1);
            v3[1].callbacks = v24;
            if (!v24)
            {
              v25 = result;
              v26 = *v3[1].flow_id;
              if (v26)
              {
                *v3[1].flow_id = 0;
                v26[2](v26);
                _Block_release(v26);
              }

              if (v3[1].flow_id[8])
              {
                v27 = *v3[1].flow_id;
                if (v27)
                {
                  _Block_release(v27);
                }
              }

              free(v3);
              return v25;
            }
          }
        }
      }

      return result;
    }

    v14 = *(result + 24);
    if (v14 && *(v14 + 24))
    {
      output_handler = nw_protocol_get_output_handler(v8);
      result = nw_protocol_connect(output_handler, v8);
      goto LABEL_36;
    }

LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_protocol_demux_connect";
  v28 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v28, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_demux_connect";
        v31 = "%{public}s called with null protocol";
LABEL_64:
        _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v33 = os_log_type_enabled(v29, type);
      if (v32)
      {
        if (v33)
        {
          *buf = 136446466;
          v37 = "nw_protocol_demux_connect";
          v38 = 2082;
          v39 = v32;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
        goto LABEL_65;
      }

      if (v33)
      {
        *buf = 136446210;
        v37 = "nw_protocol_demux_connect";
        v31 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_64;
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_demux_connect";
        v31 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  if (v28)
  {
    free(v28);
  }

  return 0;
}

uint64_t nw_protocol_demux_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    handle = a1->handle;
    v7 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v7 = *a1[1].flow_id;
    if (v7)
    {
LABEL_6:
      callbacks = v7[1].callbacks;
      v8 = 0;
      if (callbacks)
      {
        v7[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v8 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v10 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v43 = "nw_protocol_demux_remove_input_handler";
        v11 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (!__nwlog_fault(v11, &type, &v40))
        {
          goto LABEL_44;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_44;
          }

          *buf = 136446210;
          v43 = "nw_protocol_demux_remove_input_handler";
          v14 = "%{public}s called with null demux";
        }

        else
        {
          if (v40 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            v21 = type;
            v22 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v22)
              {
                *buf = 136446466;
                v43 = "nw_protocol_demux_remove_input_handler";
                v44 = 2082;
                v45 = backtrace_string;
                _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_44;
            }

            if (!v22)
            {
LABEL_44:
              if (v11)
              {
                free(v11);
              }

              goto LABEL_46;
            }

            *buf = 136446210;
            v43 = "nw_protocol_demux_remove_input_handler";
            v14 = "%{public}s called with null demux, no backtrace";
            v25 = v20;
            v26 = v21;
LABEL_43:
            _os_log_impl(&dword_181A37000, v25, v26, v14, buf, 0xCu);
            goto LABEL_44;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_44;
          }

          *buf = 136446210;
          v43 = "nw_protocol_demux_remove_input_handler";
          v14 = "%{public}s called with null demux, backtrace limit exceeded";
        }

        v25 = v12;
        v26 = v13;
        goto LABEL_43;
      }

      v10 = *a1[1].flow_id;
    }

    if (a2)
    {
      if (a2->output_handler == a1)
      {
        nw_protocol_set_output_handler(a2, 0);
      }

      if (nw_protocol_get_input_handler(v5) == a2)
      {
        nw_protocol_set_input_handler(v5, 0);
        if (nw_protocol_get_output_handler(v5))
        {
          output_handler = nw_protocol_get_output_handler(v5);
          nw_protocol_remove_input_handler(output_handler, v5);
          nw_protocol_set_output_handler(v5, 0);
        }

        if (a3)
        {
          default_input_handler = v10[1].default_input_handler;
          if (default_input_handler && LODWORD(default_input_handler->default_input_handler))
          {
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 0x40000000;
            v39[2] = ___ZL38nw_protocol_demux_remove_input_handlerP11nw_protocolS0_b_block_invoke;
            v39[3] = &__block_descriptor_tmp_25_26153;
            v39[4] = v10 + 96;
            nw_hash_table_apply(default_input_handler, v39);
            result = 1;
          }

          else
          {
            nw_protocol_demux_destroy(&v10[1].output_handler);
            result = 1;
          }
        }

        else
        {
          result = 1;
        }

        goto LABEL_47;
      }

      output_handler_context = a2->output_handler_context;
      if (output_handler_context)
      {
        a2->output_handler_context = 0;
        nw_protocol_set_output_handler(a2, 0);
        result = nw_protocol_demux_destroy_entry(&v10[1].output_handler, output_handler_context);
        if (a3)
        {
          v17 = result;
          if (!nw_protocol_get_input_handler(v5))
          {
            v18 = v10[1].default_input_handler;
            if (!v18 || !LODWORD(v18->default_input_handler))
            {
              nw_protocol_demux_destroy(&v10[1].output_handler);
            }
          }

          result = v17;
        }

        goto LABEL_47;
      }
    }

LABEL_46:
    result = 0;
LABEL_47:
    if ((v8 & 1) == 0)
    {
      v27 = v5->handle;
      if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v5 = *v5[1].flow_id) != 0)
      {
        v28 = v5[1].callbacks;
        if (v28)
        {
          v29 = (v28 - 1);
          v5[1].callbacks = v29;
          if (!v29)
          {
            v30 = result;
            v31 = *v5[1].flow_id;
            if (v31)
            {
              *v5[1].flow_id = 0;
              v31[2](v31);
              _Block_release(v31);
            }

            if (v5[1].flow_id[8])
            {
              v32 = *v5[1].flow_id;
              if (v32)
              {
                _Block_release(v32);
              }
            }

            free(v5);
            return v30;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_protocol_demux_remove_input_handler";
  v33 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v33, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_demux_remove_input_handler";
        v36 = "%{public}s called with null protocol";
LABEL_77:
        _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v38 = os_log_type_enabled(v34, type);
      if (v37)
      {
        if (v38)
        {
          *buf = 136446466;
          v43 = "nw_protocol_demux_remove_input_handler";
          v44 = 2082;
          v45 = v37;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_78;
      }

      if (v38)
      {
        *buf = 136446210;
        v43 = "nw_protocol_demux_remove_input_handler";
        v36 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_77;
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_demux_remove_input_handler";
        v36 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_77;
      }
    }
  }

LABEL_78:
  if (v33)
  {
    free(v33);
  }

  return 0;
}

void nw_protocol_demux_destroy(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_demux_destroy";
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v18, &type, &v34))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v37 = "nw_protocol_demux_destroy";
      v21 = "%{public}s called with null demux";
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v24 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v37 = "nw_protocol_demux_destroy";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_52;
      }

      if (!v24)
      {
LABEL_52:
        if (v18)
        {
          free(v18);
        }

        return;
      }

      *buf = 136446210;
      v37 = "nw_protocol_demux_destroy";
      v21 = "%{public}s called with null demux, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v37 = "nw_protocol_demux_destroy";
      v21 = "%{public}s called with null demux, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_52;
  }

  v2 = *(a1 - 7);
  if (v2 != &nw_protocol_ref_counted_handle && (v2 != &nw_protocol_ref_counted_additional_handle || (*(a1 - 4) + 96) != a1))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v37 = "nw_protocol_demux_destroy";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v3))
    {
      __break(1u);
      return;
    }

    free(v3);
  }

  if (gLogDatapath == 1)
  {
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v37 = "nw_protocol_demux_destroy";
      v38 = 2080;
      v39 = a1 + 26;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %s Destroying protocol", buf, 0x16u);
    }
  }

  v4 = a1[2];
  if (v4)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = ___ZL25nw_protocol_demux_destroyP8nw_demux_block_invoke;
    v33[3] = &__block_descriptor_tmp_26_26176;
    v33[4] = a1;
    nw_hash_table_apply(v4, v33);
    v6 = a1[2];
    if (v6)
    {
      _nw_hash_table_release(v6, v5);
      a1[2] = 0;
    }
  }

  v7 = *a1;
  if (*a1)
  {
    while (1)
    {
      while (1)
      {
        if (!v7)
        {
          goto LABEL_32;
        }

        v8 = v7[10];
        v9 = v7[4];
        if (!v8)
        {
          break;
        }

        v10 = v7[11];
        v7[10] = 0;
        v7[11] = 0;
        v8(v7, 0, v10);
        v7 = v9;
      }

      __nwlog_obj();
      *buf = 136446210;
      v37 = "__nw_frame_finalize";
      v11 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      v32 = v11;
      if (__nwlog_fault(v11, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          log = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_29;
          }

          *buf = 136446210;
          v37 = "__nw_frame_finalize";
          v12 = v29;
          v13 = log;
          v14 = "%{public}s called with null frame->finalizer";
LABEL_28:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
          goto LABEL_29;
        }

        if (v34 != 1)
        {
          v31 = __nwlog_obj();
          logb = type;
          if (!os_log_type_enabled(v31, type))
          {
            goto LABEL_29;
          }

          *buf = 136446210;
          v37 = "__nw_frame_finalize";
          v12 = v31;
          v13 = logb;
          v14 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
          goto LABEL_28;
        }

        v30 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v25 = type;
        v15 = os_log_type_enabled(loga, type);
        v16 = v30;
        if (!v30)
        {
          if (!v15)
          {
            goto LABEL_29;
          }

          *buf = 136446210;
          v37 = "__nw_frame_finalize";
          v12 = loga;
          v13 = v25;
          v14 = "%{public}s called with null frame->finalizer, no backtrace";
          goto LABEL_28;
        }

        if (v15)
        {
          *buf = 136446466;
          v37 = "__nw_frame_finalize";
          v38 = 2082;
          v39 = v30;
          _os_log_impl(&dword_181A37000, loga, v25, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
          v16 = v30;
        }

        free(v16);
      }

LABEL_29:
      if (v32)
      {
        free(v32);
      }

      v7 = v9;
    }
  }

LABEL_32:
  nw_protocol_remove_instance((a1 - 12));
  if (nw_protocol_get_output_handler((a1 - 12)))
  {
    output_handler = nw_protocol_get_output_handler((a1 - 12));
    nw_protocol_remove_input_handler(output_handler, (a1 - 12));
    nw_protocol_set_output_handler((a1 - 12), 0);
  }

  nw_protocol_destroy(a1, 0);
}

uint64_t ___ZL38nw_protocol_demux_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 - 96;
  }

  else
  {
    v5 = 0;
  }

  nw_protocol_disconnected(object, v5);
  return 1;
}

uint64_t nw_protocol_demux_destroy_entry(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v5 = *extra;
  if (*extra)
  {
    while (1)
    {
      while (1)
      {
        if (!v5)
        {
          goto LABEL_22;
        }

        v6 = v5[10];
        v7 = v5[4];
        if (!v6)
        {
          break;
        }

        v8 = v5[11];
        v5[10] = 0;
        v5[11] = 0;
        v6(v5, 0, v8);
        v5 = v7;
      }

      __nwlog_obj();
      *buf = 136446210;
      v41 = "__nw_frame_finalize";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      v37 = v9;
      if (__nwlog_fault(v9, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v34 = __nwlog_obj();
          log = type;
          if (!os_log_type_enabled(v34, type))
          {
            goto LABEL_19;
          }

          *buf = 136446210;
          v41 = "__nw_frame_finalize";
          v10 = v34;
          v11 = log;
          v12 = "%{public}s called with null frame->finalizer";
LABEL_18:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
          goto LABEL_19;
        }

        if (v38 != 1)
        {
          v36 = __nwlog_obj();
          logb = type;
          if (!os_log_type_enabled(v36, type))
          {
            goto LABEL_19;
          }

          *buf = 136446210;
          v41 = "__nw_frame_finalize";
          v10 = v36;
          v11 = logb;
          v12 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
          goto LABEL_18;
        }

        backtrace_string = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v30 = type;
        v13 = os_log_type_enabled(loga, type);
        v14 = backtrace_string;
        if (!backtrace_string)
        {
          if (!v13)
          {
            goto LABEL_19;
          }

          *buf = 136446210;
          v41 = "__nw_frame_finalize";
          v10 = loga;
          v11 = v30;
          v12 = "%{public}s called with null frame->finalizer, no backtrace";
          goto LABEL_18;
        }

        if (v13)
        {
          *buf = 136446466;
          v41 = "__nw_frame_finalize";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, loga, v30, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
          v14 = backtrace_string;
        }

        free(v14);
      }

LABEL_19:
      if (v37)
      {
        free(v37);
      }

      v5 = v7;
    }
  }

LABEL_22:
  v17 = extra[2];
  v16 = extra + 2;
  v15 = v17;
  if (v17)
  {
    do
    {
      v19 = *v15;
      v18 = v15[1];
      if (*v15)
      {
        v20 = *v15;
      }

      else
      {
        v20 = v16;
      }

      v20[1] = v18;
      *v18 = v19;
      *v15 = 0;
      v15[1] = 0;
      if (v15 != v16 + 2)
      {
        free(v15);
      }

      v15 = v19;
    }

    while (v19);
  }

  result = nw_hash_table_remove_node(*(a1 + 16), a2);
  if ((result & 1) == 0)
  {
    v22 = result;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = (a1 + 26);
    *buf = 136446466;
    v41 = "nw_protocol_demux_destroy_entry";
    v42 = 2080;
    v43 = (a1 + 26);
    v24 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v24, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446466;
          v41 = "nw_protocol_demux_destroy_entry";
          v42 = 2080;
          v43 = v23;
          v27 = "%{public}s %s nw_hash_table_remove_node failed";
LABEL_44:
          _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x16u);
        }
      }

      else if (v38 == 1)
      {
        v28 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        v29 = os_log_type_enabled(gLogObj, type);
        if (v28)
        {
          if (v29)
          {
            *buf = 136446722;
            v41 = "nw_protocol_demux_destroy_entry";
            v42 = 2080;
            v43 = v23;
            v44 = 2082;
            v45 = v28;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s %s nw_hash_table_remove_node failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v28);
          goto LABEL_45;
        }

        if (v29)
        {
          *buf = 136446466;
          v41 = "nw_protocol_demux_destroy_entry";
          v42 = 2080;
          v43 = v23;
          v27 = "%{public}s %s nw_hash_table_remove_node failed, no backtrace";
          goto LABEL_44;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446466;
          v41 = "nw_protocol_demux_destroy_entry";
          v42 = 2080;
          v43 = v23;
          v27 = "%{public}s %s nw_hash_table_remove_node failed, backtrace limit exceeded";
          goto LABEL_44;
        }
      }
    }

LABEL_45:
    if (v24)
    {
      free(v24);
    }

    return v22;
  }

  return result;
}

BOOL nw_protocol_demux_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v6 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v8 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_demux_add_input_handler";
        v9 = _os_log_send_and_compose_impl();
        LOBYTE(type) = 16;
        v51 = 0;
        if (!__nwlog_fault(v9, &type, &v51))
        {
          goto LABEL_52;
        }

        if (type == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_demux_add_input_handler";
          v12 = "%{public}s called with null demux";
        }

        else
        {
          if (v51 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            v29 = type;
            v30 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v30)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_demux_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null demux, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_52;
            }

            if (!v30)
            {
LABEL_52:
              if (v9)
              {
                free(v9);
              }

              goto LABEL_59;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_demux_add_input_handler";
            v12 = "%{public}s called with null demux, no backtrace";
            v31 = v28;
            v32 = v29;
LABEL_51:
            _os_log_impl(&dword_181A37000, v31, v32, v12, buf, 0xCu);
            goto LABEL_52;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_demux_add_input_handler";
          v12 = "%{public}s called with null demux, backtrace limit exceeded";
        }

        v31 = v10;
        v32 = v11;
        goto LABEL_51;
      }

      v8 = *a1[1].flow_id;
    }

    if (a1->default_input_handler)
    {
      if (nw_protocol_get_input_handler(a1) != a2)
      {
        if (a2 && (v13 = a2->callbacks) != 0 && v13->get_parameters)
        {
          parameters = nw_protocol_get_parameters(a2);
          v15 = nw_parameters_copy_protocol_options_legacy(parameters, v8);
          if (v15)
          {
            v16 = v15;
            default_input_handler = v8[1].default_input_handler;
            if (!default_input_handler)
            {
              default_input_handler = nw_hash_table_create_no_lock(5u, 112, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
              v8[1].default_input_handler = default_input_handler;
            }

            v51 = 0;
            v18 = nw_hash_table_add_object(default_input_handler, a2, &v51);
            v19 = v51;
            if (v51)
            {
              v20 = v18;
              extra = nw_hash_node_get_extra(v18);
              *extra = 0;
              *(extra + 8) = extra;
              *(extra + 16) = 0;
              *(extra + 24) = extra + 16;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL35nw_demux_options_copy_pattern_chainP19nw_protocol_optionsP21nw_demux_pattern_headP16nw_demux_pattern_block_invoke;
              *&v54 = &__block_descriptor_tmp_23_26190;
              *(&v54 + 1) = extra + 16;
              v55 = extra + 32;
              nw_protocol_options_access_handle(v16, buf);
              os_release(v16);
              if (gLogDatapath == 1)
              {
                v48 = __nwlog_obj();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  v49 = *(extra + 50);
                  v50 = *(extra + 48);
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_demux_add_input_handler";
                  *&buf[12] = 2080;
                  *&buf[14] = v8 + 122;
                  *&buf[22] = 1024;
                  LODWORD(v54) = v49;
                  WORD2(v54) = 1024;
                  *(&v54 + 6) = v50;
                  _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s %s Received pattern of length %u at offset %u", buf, 0x22u);
                }
              }

              nw_protocol_set_output_handler_context(a2, v20);
              nw_protocol_set_output_handler(a2, v3);
            }

            else
            {
              type = 0uLL;
              nw_protocol_get_flow_id(a2, &type);
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v41 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_demux_add_input_handler";
                *&buf[12] = 2080;
                *&buf[14] = v8 + 122;
                *&buf[22] = 1042;
                LODWORD(v54) = 16;
                WORD2(v54) = 2098;
                *(&v54 + 6) = &type;
                _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, "%{public}s %s Input handler already registered for %{public,uuid_t}.16P", buf, 0x26u);
              }

              os_release(v16);
            }

            result = v19;
            if (v6)
            {
              return result;
            }

LABEL_61:
            v35 = v3->handle;
            if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
            {
              v36 = v3[1].callbacks;
              if (v36)
              {
                v37 = (v36 - 1);
                v3[1].callbacks = v37;
                if (!v37)
                {
                  v38 = result;
                  v39 = *v3[1].flow_id;
                  if (v39)
                  {
                    *v3[1].flow_id = 0;
                    v39[2](v39);
                    _Block_release(v39);
                  }

                  if (v3[1].flow_id[8])
                  {
                    v40 = *v3[1].flow_id;
                    if (v40)
                    {
                      _Block_release(v40);
                    }
                  }

                  free(v3);
                  return v38;
                }
              }
            }

            return result;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_60;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_demux_add_input_handler";
          *&buf[12] = 2080;
          *&buf[14] = v8 + 122;
          v34 = "%{public}s %s Input handler did not provide options";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_60;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_demux_add_input_handler";
          *&buf[12] = 2080;
          *&buf[14] = v8 + 122;
          v34 = "%{public}s %s Input handler does not support parameters";
        }

        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
      }

LABEL_59:
      result = 0;
LABEL_60:
      if (v6)
      {
        return result;
      }

      goto LABEL_61;
    }

    nw_protocol_set_input_handler(a1, a2);
    if (!a2)
    {
      goto LABEL_46;
    }

    nw_protocol_set_flow_id_from_protocol(v3, a2);
    if (!a2->output_handler)
    {
      nw_protocol_set_output_handler(a2, v3);
    }

    v22 = a2->callbacks;
    if (!v22)
    {
      goto LABEL_46;
    }

    if (v22->get_parameters)
    {
      v23 = nw_protocol_get_parameters(a2);
      if (v23)
      {
        v24 = nw_parameters_copy_protocol_options_legacy(v23, v8);
        nw_protocol_options_get_log_id_str(v24, &v8[1].output_handler_context + 2, 84);
        if (v24)
        {
          os_release(v24);
        }
      }
    }

    v25 = a2->callbacks;
    if (v25 && v25->supports_external_data)
    {
      LOBYTE(v8[1].output_handler_context) = nw_protocol_supports_external_data(a2);
      result = 1;
      if (v6)
      {
        return result;
      }
    }

    else
    {
LABEL_46:
      result = 1;
      if (v6)
      {
        return result;
      }
    }

    goto LABEL_61;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_demux_add_input_handler";
  v42 = _os_log_send_and_compose_impl();
  LOBYTE(type) = 16;
  v51 = 0;
  if (__nwlog_fault(v42, &type, &v51))
  {
    if (type == 17)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_demux_add_input_handler";
        v45 = "%{public}s called with null protocol";
LABEL_92:
        _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
      }
    }

    else if (v51 == 1)
    {
      v46 = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = type;
      v47 = os_log_type_enabled(v43, type);
      if (v46)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_demux_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v46;
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v46);
        goto LABEL_93;
      }

      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_demux_add_input_handler";
        v45 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_92;
      }
    }

    else
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_demux_add_input_handler";
        v45 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_92;
      }
    }
  }

LABEL_93:
  if (v42)
  {
    free(v42);
  }

  return 0;
}

void nw_demux_copy_pattern_chain(uint64_t **a1, void *a2, _WORD *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_demux_copy_pattern_chain";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v12, &type, &v20))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v23 = "nw_demux_copy_pattern_chain";
      v15 = "%{public}s called with null old_head";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v23 = "nw_demux_copy_pattern_chain";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null old_head, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v12)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!v17)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v23 = "nw_demux_copy_pattern_chain";
      v15 = "%{public}s called with null old_head, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v23 = "nw_demux_copy_pattern_chain";
      v15 = "%{public}s called with null old_head, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_41;
  }

  if (a2)
  {
    for (i = *a1; i; i = *i)
    {
      if (!a3 || *a2)
      {
        v6 = malloc_type_calloc(1uLL, 0x50uLL, 0x1AB53305uLL);
        if (!v6)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v23 = "nw_demux_copy_pattern_chain";
          v24 = 2048;
          v25 = 1;
          v26 = 2048;
          v27 = 80;
          v11 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort(v11))
          {
            __break(1u);
          }

          free(v11);
        }

        v6[8] = *(i + 8);
        v7 = *(i + 9);
        v6[9] = v7;
        memcpy(v6 + 10, i + 20, v7);
        memcpy(v6 + 25, i + 50, *(i + 9));
        *v6 = 0;
        v8 = a2[1];
        *(v6 + 1) = v8;
        *v8 = v6;
      }

      else
      {
        a3[8] = *(i + 8);
        v9 = *(i + 9);
        a3[9] = v9;
        memcpy(a3 + 10, i + 20, v9);
        memcpy(a3 + 25, i + 50, *(i + 9));
        *a3 = 0;
        v10 = a2[1];
        *(a3 + 1) = v10;
        *v10 = a3;
        v6 = a3;
      }

      a2[1] = v6;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_demux_copy_pattern_chain";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v12, &type, &v20))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v23 = "nw_demux_copy_pattern_chain";
    v15 = "%{public}s called with null new_head";
    goto LABEL_40;
  }

  if (v20 != 1)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v23 = "nw_demux_copy_pattern_chain";
    v15 = "%{public}s called with null new_head, backtrace limit exceeded";
    goto LABEL_40;
  }

  v18 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v14 = type;
  v19 = os_log_type_enabled(v13, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v23 = "nw_demux_copy_pattern_chain";
    v15 = "%{public}s called with null new_head, no backtrace";
    goto LABEL_40;
  }

  if (v19)
  {
    *buf = 136446466;
    v23 = "nw_demux_copy_pattern_chain";
    v24 = 2082;
    v25 = v18;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null new_head, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v12)
  {
LABEL_42:
    free(v12);
  }
}

void *nw_demux_options_deserialize(_BOOL8 a1, _BYTE *a2, char *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_demux_options_deserialize";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v4, &type, &v21))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      v7 = "%{public}s called with null serialized_buffer";
      goto LABEL_53;
    }

    if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v18 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_demux_options_deserialize";
          v25 = 2082;
          v26 = backtrace_string;
          v19 = "%{public}s called with null serialized_buffer, dumping backtrace:%{public}s";
LABEL_43:
          _os_log_impl(&dword_181A37000, v15, v16, v19, buf, 0x16u);
        }

LABEL_44:
        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v18)
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      v7 = "%{public}s called with null serialized_buffer, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      v7 = "%{public}s called with null serialized_buffer, backtrace limit exceeded";
    }

LABEL_53:
    v12 = v15;
    v13 = v16;
    v14 = 12;
    goto LABEL_22;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v24 = "nw_demux_options_deserialize";
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = 1;
      v4 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v21 = 0;
      if (__nwlog_fault(v4, &type, &v21))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v5 = gLogObj;
          v6 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v24 = "nw_demux_options_deserialize";
            v25 = 2048;
            v26 = a3;
            v27 = 2048;
            v28 = 1;
            v7 = "%{public}s serialized_length %zu, expected %zu";
LABEL_21:
            v12 = v5;
            v13 = v6;
            v14 = 32;
LABEL_22:
            _os_log_impl(&dword_181A37000, v12, v13, v7, buf, v14);
          }
        }

        else if (v21 == 1)
        {
          v10 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v5 = gLogObj;
          v6 = type;
          v11 = os_log_type_enabled(gLogObj, type);
          if (v10)
          {
            if (v11)
            {
              *buf = 136446978;
              v24 = "nw_demux_options_deserialize";
              v25 = 2048;
              v26 = a3;
              v27 = 2048;
              v28 = 1;
              v29 = 2082;
              v30 = v10;
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s serialized_length %zu, expected %zu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v10);
            goto LABEL_23;
          }

          if (v11)
          {
            *buf = 136446722;
            v24 = "nw_demux_options_deserialize";
            v25 = 2048;
            v26 = a3;
            v27 = 2048;
            v28 = 1;
            v7 = "%{public}s serialized_length %zu, expected %zu, no backtrace";
            goto LABEL_21;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v5 = gLogObj;
          v6 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v24 = "nw_demux_options_deserialize";
            v25 = 2048;
            v26 = a3;
            v27 = 2048;
            v28 = 1;
            v7 = "%{public}s serialized_length %zu, expected %zu, backtrace limit exceeded";
            goto LABEL_21;
          }
        }
      }

LABEL_23:
      if (v4)
      {
        free(v4);
      }

      return 0;
    }

    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_demux_options_deserialize";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v4, &type, &v21))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      v7 = "%{public}s called with null serialized_length";
      goto LABEL_53;
    }

    if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v20 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v24 = "nw_demux_options_deserialize";
          v25 = 2082;
          v26 = backtrace_string;
          v19 = "%{public}s called with null serialized_length, dumping backtrace:%{public}s";
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      v7 = "%{public}s called with null serialized_length, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      v7 = "%{public}s called with null serialized_length, backtrace limit exceeded";
    }

    goto LABEL_53;
  }

  if (*a2 == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    a1 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    if (a1)
    {
      *buf = 136446210;
      v24 = "nw_demux_options_deserialize";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s deserializing empty demux from non-empty", buf, 0xCu);
    }
  }

  return nw_demux_allocate_options(a1);
}

void *nw_demux_allocate_options(nw_protocol_definition *a1)
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0xDAC0472BuLL);
  if (result)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v2 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v2);
  if (!result)
  {
    free(v2);
    result = 0;
LABEL_4:
    *result = 0;
    result[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

_BYTE *nw_demux_options_serialize(nw_protocol_definition *a1, _WORD *a2, unint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_demux_options_serialize";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_demux_options_serialize";
        v10 = "%{public}s called with null existing_handle";
LABEL_37:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }

LABEL_38:
      if (v7)
      {
        free(v7);
      }

      return 0;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_demux_options_serialize";
        v10 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_demux_options_serialize";
        v10 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_demux_options_serialize";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null existing_handle, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    }

LABEL_28:
    free(backtrace_string);
    goto LABEL_38;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_demux_options_serialize";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_demux_options_serialize";
        v10 = "%{public}s called with null out_length";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_demux_options_serialize";
        v10 = "%{public}s called with null out_length, backtrace limit exceeded";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_demux_options_serialize";
        v10 = "%{public}s called with null out_length, no backtrace";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_demux_options_serialize";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null out_length, dumping backtrace:%{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v4 = a2;
  result = malloc_type_calloc(1uLL, 1uLL, 0x114CDA1AuLL);
  if (result)
  {
    goto LABEL_6;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v18 = "nw_demux_options_serialize";
  v19 = 2048;
  v20 = 1;
  v21 = 2048;
  v22 = 1;
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (result)
  {
    __break(1u);
  }

  else
  {
    free(v6);
    result = 0;
LABEL_6:
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4[9])
      {
        *result = 1;
        break;
      }
    }

    *a3 = 1;
  }

  return result;
}

uint64_t nw_demux_compare_options(uint64_t a1, void *a2, void *a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_demux_compare_options";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_demux_compare_options";
      v16 = "%{public}s called with null handle1";
      goto LABEL_51;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_demux_compare_options";
      v16 = "%{public}s called with null handle1, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v18 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v18)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_demux_compare_options";
      v16 = "%{public}s called with null handle1, no backtrace";
      goto LABEL_51;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_demux_compare_options";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null handle1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_52:
    if (!v13)
    {
      return 0;
    }

LABEL_53:
    free(v13);
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_demux_compare_options";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_demux_compare_options";
      v16 = "%{public}s called with null handle2";
      goto LABEL_51;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_demux_compare_options";
      v16 = "%{public}s called with null handle2, backtrace limit exceeded";
      goto LABEL_51;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v20 = os_log_type_enabled(v14, type);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_demux_compare_options";
        v25 = 2082;
        v26 = v19;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null handle2, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "nw_demux_compare_options";
      v16 = "%{public}s called with null handle2, no backtrace";
LABEL_51:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  if ((a4 - 2) < 3)
  {
    return 1;
  }

  v6 = a2;
  v7 = -1;
  v8 = a2;
  do
  {
    v8 = *v8;
    ++v7;
  }

  while (v8);
  v9 = -1;
  v10 = a3;
  do
  {
    v10 = *v10;
    ++v9;
  }

  while (v10);
  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  while (1)
  {
    v4 = *v4;
    v6 = *v6;
    v11 = !v6 || v4 == 0;
    result = v11;
    if (v11)
    {
      break;
    }

    if (*(v6 + 8) == *(v4 + 8))
    {
      v12 = *(v6 + 9);
      if (v12 == *(v4 + 9) && !memcmp(v6 + 20, v4 + 20, *(v6 + 9)) && !memcmp(v6 + 50, v4 + 50, v12))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

BOOL nw_demux_option_is_equal(nw_protocol_definition *a1, void **a2, void **a3)
{
  v3 = a3;
  v4 = a2;
  v5 = -1;
  v6 = a2;
  do
  {
    v6 = *v6;
    ++v5;
  }

  while (v6);
  v7 = -1;
  v8 = a3;
  do
  {
    v8 = *v8;
    ++v7;
  }

  while (v8);
  if (v5 != v7)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  while (1)
  {
    v3 = *v3;
    v4 = *v4;
    v9 = !v4 || v3 == 0;
    result = v9;
    if (v9)
    {
      break;
    }

    if (*(v4 + 8) == *(v3 + 8))
    {
      v11 = *(v4 + 9);
      if (v11 == *(v3 + 9) && !memcmp(v4 + 20, v3 + 20, *(v4 + 9)) && !memcmp(v4 + 50, v3 + 50, v11))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

void nw_demux_deallocate_options(nw_protocol_definition *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2 + 16;
      do
      {
        v6 = *v3;
        v5 = *(v3 + 1);
        if (*v3)
        {
          v7 = *v3;
        }

        else
        {
          v7 = a2;
        }

        *(v7 + 1) = v5;
        *v5 = v6;
        *v3 = 0;
        *(v3 + 1) = 0;
        if (v3 != v4)
        {
          free(v3);
        }

        v3 = v6;
      }

      while (v6);
    }

    free(a2);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_demux_free_pattern_chain";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v8, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v17 = "nw_demux_free_pattern_chain";
      v11 = "%{public}s called with null head";
      goto LABEL_26;
    }

    if (v14 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v17 = "nw_demux_free_pattern_chain";
      v11 = "%{public}s called with null head, backtrace limit exceeded";
      goto LABEL_26;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_demux_free_pattern_chain";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null head, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_27;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_demux_free_pattern_chain";
      v11 = "%{public}s called with null head, no backtrace";
LABEL_26:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_27:
  if (v8)
  {
    free(v8);
  }
}

void *nw_demux_copy_options(nw_protocol_definition *a1, uint64_t **a2)
{
  v3 = malloc_type_calloc(1uLL, 0x60uLL, 0xEBA4AB3DuLL);
  if (!v3)
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();
    __nwlog_should_abort(v7);
    __break(1u);
  }

  v4 = v3;
  *v3 = 0;
  v3[1] = v3;
  nw_demux_copy_pattern_chain(a2, v3, v3 + 8);
  return v4;
}

uint64_t nw_demux_create_options()
{
  if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
  }

  if (nw_protocol_demux_copy_definition::definition)
  {
    v0 = os_retain(nw_protocol_demux_copy_definition::definition);
    result = nw_protocol_create_options(v0);
    if (v0)
    {
      v2 = v0;
      v3 = result;
      os_release(v2);
      return v3;
    }
  }

  else
  {

    return nw_protocol_create_options(0);
  }

  return result;
}

uint64_t nw_protocol_options_is_demux(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
    {
      v9 = a1;
      dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      a1 = v9;
    }

    if (nw_protocol_demux_copy_definition::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_demux_copy_definition::definition);
      result = nw_protocol_options_matches_definition(v1, v2);
      if (v2)
      {
        v4 = result;
        os_release(v2);
        return v4;
      }
    }

    else
    {

      return nw_protocol_options_matches_definition(a1, 0);
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_demux";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_demux";
        v8 = "%{public}s called with null options";
LABEL_24:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_options_is_demux";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_demux";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_24;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_demux";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void nw_demux_options_add_pattern(void *a1, __int16 a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_demux_options_add_pattern";
    v5 = _os_log_send_and_compose_impl();
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &v19, &v18))
    {
      goto LABEL_47;
    }

    if (v19 != OS_LOG_TYPE_FAULT)
    {
      if (v18 != 1)
      {
        v6 = __nwlog_obj();
        v7 = v19;
        if (!os_log_type_enabled(v6, v19))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v21 = "nw_demux_options_add_pattern";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = v19;
      v10 = os_log_type_enabled(v6, v19);
      if (!backtrace_string)
      {
        if (!v10)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v21 = "nw_demux_options_add_pattern";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_46;
      }

      if (v10)
      {
        *buf = 136446466;
        v21 = "nw_demux_options_add_pattern";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_47;
    }

    v6 = __nwlog_obj();
    v7 = v19;
    if (!os_log_type_enabled(v6, v19))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v21 = "nw_demux_options_add_pattern";
    v8 = "%{public}s called with null options";
LABEL_46:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_47;
  }

  if (a3 < 0x1F)
  {
    if (a4)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __nw_demux_options_add_pattern_block_invoke;
      v15[3] = &__block_descriptor_tmp_10_26272;
      v16 = a2;
      v17 = a3;
      v15[4] = a4;
      v15[5] = a5;
      nw_protocol_options_access_handle(a1, v15);
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_demux_options_add_pattern";
    v5 = _os_log_send_and_compose_impl();
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v5, &v19, &v18))
    {
      if (v19 == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = v19;
        if (!os_log_type_enabled(v6, v19))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v21 = "nw_demux_options_add_pattern";
        v8 = "%{public}s called with null pattern";
        goto LABEL_46;
      }

      if (v18 != 1)
      {
        v6 = __nwlog_obj();
        v7 = v19;
        if (!os_log_type_enabled(v6, v19))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v21 = "nw_demux_options_add_pattern";
        v8 = "%{public}s called with null pattern, backtrace limit exceeded";
        goto LABEL_46;
      }

      v11 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = v19;
      v14 = os_log_type_enabled(v6, v19);
      if (!v11)
      {
        if (!v14)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v21 = "nw_demux_options_add_pattern";
        v8 = "%{public}s called with null pattern, no backtrace";
        goto LABEL_46;
      }

      if (v14)
      {
        *buf = 136446466;
        v21 = "nw_demux_options_add_pattern";
        v22 = 2082;
        v23 = v11;
        v13 = "%{public}s called with null pattern, dumping backtrace:%{public}s";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

LABEL_47:
    if (v5)
    {
      goto LABEL_48;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_demux_options_add_pattern";
  v5 = _os_log_send_and_compose_impl();
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &v19, &v18))
  {
    goto LABEL_47;
  }

  if (v19 == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = v19;
    if (!os_log_type_enabled(v6, v19))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v21 = "nw_demux_options_add_pattern";
    v8 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH)";
    goto LABEL_46;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v7 = v19;
    if (!os_log_type_enabled(v6, v19))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v21 = "nw_demux_options_add_pattern";
    v8 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), backtrace limit exceeded";
    goto LABEL_46;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = v19;
  v12 = os_log_type_enabled(v6, v19);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v21 = "nw_demux_options_add_pattern";
    v8 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), no backtrace";
    goto LABEL_46;
  }

  if (v12)
  {
    *buf = 136446466;
    v21 = "nw_demux_options_add_pattern";
    v22 = 2082;
    v23 = v11;
    v13 = "%{public}s called with null (pattern_length <= NW_DEMUX_MAX_PATTERN_LENGTH), dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v13, buf, 0x16u);
  }

LABEL_32:
  free(v11);
  if (v5)
  {
LABEL_48:
    free(v5);
  }
}
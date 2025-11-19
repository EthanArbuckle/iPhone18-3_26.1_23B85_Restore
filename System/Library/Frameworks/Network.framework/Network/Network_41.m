void nw_protocol_callbacks_set_get_output_local_endpoint(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 200) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
        v5 = "%{public}s called with null get_output_local_endpoint";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
        v5 = "%{public}s called with null get_output_local_endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_output_local_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
        v5 = "%{public}s called with null get_output_local_endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_output_local_endpoint";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_output_interface(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 208) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_output_interface";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_interface";
        v5 = "%{public}s called with null get_output_interface";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_interface";
        v5 = "%{public}s called with null get_output_interface, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_output_interface";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_output_interface, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_interface";
        v5 = "%{public}s called with null get_output_interface, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_output_interface";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_interface";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_interface";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_interface";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_output_interface";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_register_notification(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 144) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_register_notification";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_register_notification";
        v5 = "%{public}s called with null register_notification";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_register_notification";
        v5 = "%{public}s called with null register_notification, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_register_notification";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null register_notification, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_register_notification";
        v5 = "%{public}s called with null register_notification, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_register_notification";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_register_notification";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_register_notification";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_register_notification";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_register_notification";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_unregister_notification(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 152) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_unregister_notification";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_unregister_notification";
        v5 = "%{public}s called with null unregister_notification";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_unregister_notification";
        v5 = "%{public}s called with null unregister_notification, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_unregister_notification";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null unregister_notification, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_unregister_notification";
        v5 = "%{public}s called with null unregister_notification, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_unregister_notification";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_unregister_notification";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_unregister_notification";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_unregister_notification";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_unregister_notification";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

BOOL nw_socket_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_socket_add_input_handler";
    v87 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v87, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v88, type))
        {
          *buf = 136446210;
          v99 = "nw_socket_add_input_handler";
          v90 = "%{public}s called with null protocol";
LABEL_209:
          _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
        }
      }

      else if (v96 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v89 = type;
        v92 = os_log_type_enabled(v88, type);
        if (backtrace_string)
        {
          if (v92)
          {
            *buf = 136446466;
            v99 = "nw_socket_add_input_handler";
            v100 = 2082;
            v101 = backtrace_string;
            _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_210;
        }

        if (v92)
        {
          *buf = 136446210;
          v99 = "nw_socket_add_input_handler";
          v90 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_209;
        }
      }

      else
      {
        v88 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v88, type))
        {
          *buf = 136446210;
          v99 = "nw_socket_add_input_handler";
          v90 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_209;
        }
      }
    }

LABEL_210:
    if (v87)
    {
      free(v87);
    }

    return 0;
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
  v8 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v99 = "nw_socket_add_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v9, &type, &v96))
      {
        goto LABEL_88;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v99 = "nw_socket_add_input_handler";
        v12 = "%{public}s called with null socket_handler";
        goto LABEL_86;
      }

      if (v96 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v99 = "nw_socket_add_input_handler";
        v12 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        goto LABEL_86;
      }

      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      v21 = os_log_type_enabled(gLogObj, type);
      if (v18)
      {
        if (v21)
        {
          *buf = 136446466;
          v99 = "nw_socket_add_input_handler";
          v100 = 2082;
          v101 = v18;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_88;
      }

      if (v21)
      {
        *buf = 136446210;
        v99 = "nw_socket_add_input_handler";
        v12 = "%{public}s called with null socket_handler, no backtrace";
        v49 = v19;
        v50 = v20;
        goto LABEL_87;
      }

LABEL_88:
      if (v9)
      {
        free(v9);
      }

LABEL_90:
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_171;
    }

    v8 = *a1[1].flow_id;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_socket_add_input_handler";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v9, &type, &v96))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v99 = "nw_socket_add_input_handler";
      v12 = "%{public}s called with null input_protocol";
    }

    else if (v96 == 1)
    {
      v93 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v94 = os_log_type_enabled(v10, type);
      if (v93)
      {
        if (v94)
        {
          *buf = 136446466;
          v99 = "nw_socket_add_input_handler";
          v100 = 2082;
          v101 = v93;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v93);
        goto LABEL_88;
      }

      if (!v94)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v99 = "nw_socket_add_input_handler";
      v12 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v99 = "nw_socket_add_input_handler";
      v12 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

LABEL_86:
    v49 = v10;
    v50 = v11;
LABEL_87:
    _os_log_impl(&dword_181A37000, v49, v50, v12, buf, 0xCu);
    goto LABEL_88;
  }

  v13 = a2->callbacks;
  if (!v13)
  {
    goto LABEL_70;
  }

  supports_external_data = v13->supports_external_data;
  if (supports_external_data)
  {
    v15 = a2->handle;
    v16 = a2;
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = *a2[1].flow_id) != 0)
    {
      v22 = v16[1].callbacks;
      if (v22)
      {
        v16[1].callbacks = (&v22->add_input_handler + 1);
      }

      if (supports_external_data(a2))
      {
        v17 = 4096;
      }

      else
      {
        v17 = 0;
      }

      v23 = a2->handle;
      v24 = a2;
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *a2[1].flow_id) != 0)
      {
        v25 = v24[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v24[1].callbacks = v26;
          if (!v26)
          {
            v27 = *v24[1].flow_id;
            if (v27)
            {
              *v24[1].flow_id = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (v24[1].flow_id[8])
            {
              v28 = *v24[1].flow_id;
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v24);
          }
        }
      }
    }

    else
    {
      v17 = supports_external_data(a2) ? 4096 : 0;
    }

    *(&v8[6].callbacks + 5) = *(&v8[6].callbacks + 5) & 0xEFFF | v17;
    v13 = a2->callbacks;
    if (!v13)
    {
      goto LABEL_70;
    }
  }

  get_parameters = v13->get_parameters;
  if (!get_parameters)
  {
    goto LABEL_70;
  }

  v30 = a2->handle;
  v31 = a2;
  if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *a2[1].flow_id) != 0)
  {
    v33 = v31[1].callbacks;
    if (v33)
    {
      v31[1].callbacks = (&v33->add_input_handler + 1);
    }

    v32 = get_parameters(a2);
    v34 = a2->handle;
    v35 = a2;
    if (v34 == &nw_protocol_ref_counted_handle || v34 == &nw_protocol_ref_counted_additional_handle && (v35 = *a2[1].flow_id) != 0)
    {
      v36 = v35[1].callbacks;
      if (v36)
      {
        v37 = (v36 - 1);
        v35[1].callbacks = v37;
        if (!v37)
        {
          v38 = *v35[1].flow_id;
          if (v38)
          {
            *v35[1].flow_id = 0;
            v38[2](v38);
            _Block_release(v38);
          }

          if (v35[1].flow_id[8])
          {
            v39 = *v35[1].flow_id;
            if (v39)
            {
              _Block_release(v39);
            }
          }

          free(v35);
        }
      }
    }
  }

  else
  {
    v32 = get_parameters(a2);
  }

  if (!v32)
  {
LABEL_70:
    if ((*(&v8[6].callbacks + 5) & 0x80) != 0)
    {
      goto LABEL_90;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v99 = "nw_socket_add_input_handler";
      v100 = 2082;
      v101 = &v8[6].output_handler + 4;
      v44 = "%{public}s %{public}s Parameters are NULL when adding input_handler";
      goto LABEL_167;
    }

LABEL_170:
    if (v6)
    {
      return result;
    }

    goto LABEL_171;
  }

  v40 = _nw_parameters_copy_context(v32);
  output_handler_context = v8[3].output_handler_context;
  if ((output_handler_context & 1) != 0 && v8[3].default_input_handler)
  {
    v45 = v40;
    os_release(v8[3].default_input_handler);
    v40 = v45;
    output_handler_context = v8[3].output_handler_context;
  }

  v8[3].default_input_handler = v40;
  LOBYTE(v8[3].output_handler_context) = output_handler_context | 1;
  v46 = _nw_parameters_copy_default_protocol_stack(v32);
  v47 = nw_protocol_stack_copy_transport_protocol(v46);
  nw_protocol_options_get_log_id_str(v47, &v8[6].output_handler + 4, 84);
  LODWORD(v8[6].callbacks) = nw_protocol_options_get_log_id_num(v47);
  if (nw_protocol_options_is_udp(v47))
  {
    if (_nw_udp_options_get_no_metadata(v47))
    {
      v48 = 16;
    }

    else
    {
      v48 = 0;
    }

    HIBYTE(v8[6].callbacks) = HIBYTE(v8[6].callbacks) & 0xEF | v48;
  }

  else if (nw_protocol_options_is_quic(v47))
  {
    HIBYTE(v8[6].callbacks) |= 0x10u;
  }

  else if (nw_protocol_options_is_tcp(v47))
  {
    if (_nw_tcp_options_get_reset_local_port(v47))
    {
      v51 = 0x80;
    }

    else
    {
      v51 = 0;
    }

    HIBYTE(v8[6].callbacks) = v51 & 0x80 | HIBYTE(v8[6].callbacks) & 0x7F;
  }

  if (v47)
  {
    os_release(v47);
  }

  if (v46)
  {
    os_release(v46);
  }

  ip_protocol = nw_parameters_get_ip_protocol(v32);
  v53 = ip_protocol;
  v54 = v6;
  if (ip_protocol == 17)
  {
    data_mode = 1;
  }

  else if (ip_protocol == 6)
  {
    data_mode = 2;
  }

  else
  {
    data_mode = _nw_parameters_get_data_mode(v32);
  }

  LODWORD(v8[4].output_handler) = data_mode;
  if (_nw_parameters_get_logging_disabled(v32))
  {
    v56 = 128;
  }

  else
  {
    v56 = 0;
  }

  v57 = (&v8[6].callbacks + 5);
  *(&v8[6].callbacks + 5) = *(&v8[6].callbacks + 5) & 0xFF7F | v56;
  LODWORD(v8[4].identifier) = 9216;
  v58 = a2->callbacks;
  if (v58)
  {
    get_path = v58->get_path;
    if (get_path)
    {
      v60 = a2->handle;
      v61 = a2;
      if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v61 = *a2[1].flow_id) != 0)
      {
        v63 = v61[1].callbacks;
        if (v63)
        {
          v61[1].callbacks = (&v63->add_input_handler + 1);
        }

        v62 = get_path(a2);
        v64 = a2->handle;
        v65 = a2;
        if (v64 == &nw_protocol_ref_counted_handle || v64 == &nw_protocol_ref_counted_additional_handle && (v65 = *a2[1].flow_id) != 0)
        {
          v66 = v65[1].callbacks;
          if (v66)
          {
            v67 = (v66 - 1);
            v65[1].callbacks = v67;
            if (!v67)
            {
              v95 = v62;
              v68 = *v65[1].flow_id;
              if (v68)
              {
                *v65[1].flow_id = 0;
                v68[2](v68);
                _Block_release(v68);
              }

              if (v65[1].flow_id[8])
              {
                v69 = *v65[1].flow_id;
                if (v69)
                {
                  _Block_release(v69);
                }
              }

              free(v65);
              v62 = v95;
            }
          }
        }
      }

      else
      {
        v62 = get_path(a2);
      }

      if (v62)
      {
        v70 = v62;
        is_multilayer_packet_logging_enabled = _nw_path_is_multilayer_packet_logging_enabled(v70);

        if (is_multilayer_packet_logging_enabled)
        {
          if ((*v57 & 0x80) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v72 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v99 = "nw_socket_add_input_handler";
              v100 = 2082;
              v101 = &v8[6].output_handler + 4;
              _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Multilayer packet logging enabled", buf, 0x16u);
            }
          }

          *v57 |= 0x100u;
        }

        if (v53 == 17)
        {
          maximum_datagram_size = nw_path_get_maximum_datagram_size(v70);
          if (maximum_datagram_size >> 10 <= 8)
          {
            LODWORD(v8[4].identifier) = maximum_datagram_size;
          }
        }

        goto LABEL_145;
      }

      v56 = *v57 & 0x80;
    }
  }

  if (!v56)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v74 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v99 = "nw_socket_add_input_handler";
      v100 = 2082;
      v101 = &v8[6].output_handler + 4;
      _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to copy path, will not use multilayer packet logging", buf, 0x16u);
    }
  }

LABEL_145:
  nw_protocol_set_flow_id_from_protocol(v8, a2);
  v75 = a2->handle;
  v76 = a2;
  if (v75 == &nw_protocol_ref_counted_handle || v75 == &nw_protocol_ref_counted_additional_handle && (v76 = *a2[1].flow_id) != 0)
  {
    v78 = v76[1].callbacks;
    if (v78)
    {
      v76[1].callbacks = (&v78->add_input_handler + 1);
    }

    v77 = 1;
  }

  else
  {
    v77 = 0;
  }

  nw::retained_ptr<nw_protocol *>::~retained_ptr(&v8[2].callbacks);
  v8[2].callbacks = a2;
  LOBYTE(v8[2].output_handler) = v8[2].output_handler & 0xFE | v77;
  if (!nw_socket_initialize_socket(v3))
  {
    if ((*v57 & 0x80) != 0)
    {
      result = 0;
      v6 = v54;
      goto LABEL_170;
    }

    v6 = v54;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v99 = "nw_socket_add_input_handler";
      v100 = 2082;
      v101 = &v8[6].output_handler + 4;
      v44 = "%{public}s %{public}s Failed to initialize socket";
LABEL_167:
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, v44, buf, 0x16u);
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_171;
    }

    goto LABEL_170;
  }

  *&v8[4].flow_id[8] = 0x100000001;
  result = 1;
  v6 = v54;
  if (a2->output_handler || !v8)
  {
    goto LABEL_170;
  }

  nw_protocol_release(0);
  a2->output_handler = v8;
  v79 = v8->handle;
  if (v79 == &nw_protocol_ref_counted_handle || v79 == &nw_protocol_ref_counted_additional_handle && (v8 = *v8[1].flow_id) != 0)
  {
    v80 = v8[1].callbacks;
    if (v80)
    {
      v8[1].callbacks = (&v80->add_input_handler + 1);
    }
  }

  result = 1;
  if ((v54 & 1) == 0)
  {
LABEL_171:
    v81 = v3->handle;
    if (v81 == &nw_protocol_ref_counted_handle || v81 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v82 = v3[1].callbacks;
      if (v82)
      {
        v83 = (v82 - 1);
        v3[1].callbacks = v83;
        if (!v83)
        {
          v84 = result;
          v85 = *v3[1].flow_id;
          if (v85)
          {
            *v3[1].flow_id = 0;
            v85[2](v85);
            _Block_release(v85);
          }

          if (v3[1].flow_id[8])
          {
            v86 = *v3[1].flow_id;
            if (v86)
            {
              _Block_release(v86);
            }
          }

          free(v3);
          return v84;
        }
      }
    }
  }

  return result;
}

uint64_t sub_181D04844@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (v4)
  {
    *a2 = v4;
  }

  v35 = a2;
  swift_beginAccess();
  v36 = *(*(a1 + 16) + 16);
  v37 = a1;
  if (!v36)
  {
    v7 = 0;
    v8 = 0;
    v10 = MEMORY[0x1E69E7CC8];
LABEL_31:
    *(v37 + 24) = v10;

    sub_181A554F4(v7);
    result = sub_181A554F4(v8);
    *v35 = v10;
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v11 = *(v37 + 16);
    if (v9 >= v11[2])
    {
      break;
    }

    v12 = v11[v6 + 7];
    v38 = v11[v6 + 6];
    swift_beginAccess();
    v39 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_182083520(v11);
    }

    if (v9 >= v11[2])
    {
      goto LABEL_33;
    }

    LOWORD(v11[v6 + 11]) = -1;
    *(v37 + 16) = v11;
    swift_endAccess();
    if (v10[2])
    {
      v14 = sub_181CA266C(v38, v12);
      if (v15)
      {
        if (v9 >> 16)
        {
          goto LABEL_37;
        }

        v16 = *(v10[7] + 4 * v14 + 2);
        swift_beginAccess();
        v17 = *(v37 + 16);
        v18 = swift_isUniquelyReferenced_nonNull_native();
        *(v37 + 16) = v17;
        if ((v18 & 1) == 0)
        {
          v17 = sub_182083520(v17);
        }

        if (v17[2] <= v16)
        {
          goto LABEL_38;
        }

        LOWORD(v17[8 * v16 + 11]) = v9;
        *(v37 + 16) = v17;
        swift_endAccess();
      }
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v9;
    sub_181A554F4(v7);
    if (v9 == 0x10000)
    {
      goto LABEL_34;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = sub_18208C9B8;
    *(v20 + 24) = v19;
    sub_181A554F4(v8);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_181CA266C(v38, v39);
    v24 = v10[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_35;
    }

    v27 = v22;
    if (v10[3] >= v26)
    {
      if (v21)
      {
        if (v22)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_182254E38();
        if (v27)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_181CBDA98(v26, v21);
      v28 = sub_181CA266C(v38, v39);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_39;
      }

      v23 = v28;
      if (v27)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    v30 = (*(v20 + 16))();
    v10[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v10[6] + 16 * v23);
    *v31 = v38;
    v31[1] = v39;
    *(v10[7] + 4 * v23) = v30;
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_36;
    }

    v10[2] = v34;
LABEL_6:
    *(v10[7] + 4 * v23 + 2) = v9;
    v6 += 8;
    v8 = sub_18208C9D4;
    v7 = sub_18208C9B8;
    if (v36 == ++v9)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

unint64_t sub_181D04C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_182AD4268())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_181D04D28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _nw_http_request_set_header_fieldsTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 16;

  swift_beginAccess();
  v7[2] = v5;
  (*(*a2 + 80))(a3, v7, MEMORY[0x1E69E7CA8] + 8);
  swift_endAccess();
}

uint64_t sub_181D04E50(void *a1)
{
  *(*(v1 + 16) + 8) = *a1;
}

uint64_t nw_http_allocate_metadata(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x564BE5D9uLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_181D05010()
{

  return swift_deallocClassInstance();
}

void __nw_parameters_copy_custom_proxy_configs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v9 = v3;
    v5 = _nw_array_create();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v9;
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
    v10 = v3;
    _nw_array_append(v4, v3);
    v3 = v10;
  }
}

uint64_t nw_proxy_config_supports_connection(void *a1, void *a2, void *a3, void *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_connection";
    v42 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(v79[0]) = 0;
    if (!__nwlog_fault(v42, type, v79))
    {
      goto LABEL_127;
    }

    if (type[0] == 17)
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (os_log_type_enabled(v43, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null config", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (LOBYTE(v79[0]) != 1)
    {
      v43 = __nwlog_obj();
      v56 = type[0];
      if (os_log_type_enabled(v43, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v56, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v50 = type[0];
    v51 = os_log_type_enabled(v43, type[0]);
    if (!backtrace_string)
    {
      if (v51)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v50, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (v51)
    {
      *buf = 136446466;
      *&buf[4] = "nw_proxy_config_supports_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v43, v50, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_108;
  }

  if (!v8)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_connection";
    v42 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(v79[0]) = 0;
    if (!__nwlog_fault(v42, type, v79))
    {
      goto LABEL_127;
    }

    if (type[0] == 17)
    {
      v43 = __nwlog_obj();
      v46 = type[0];
      if (os_log_type_enabled(v43, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v46, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (LOBYTE(v79[0]) != 1)
    {
      v43 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v43, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v57, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v52 = type[0];
    v53 = os_log_type_enabled(v43, type[0]);
    if (!backtrace_string)
    {
      if (v53)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v52, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (v53)
    {
      *buf = 136446466;
      *&buf[4] = "nw_proxy_config_supports_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v43, v52, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_108;
  }

  if (!v9)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_connection";
    v42 = _os_log_send_and_compose_impl();

    type[0] = 16;
    LOBYTE(v79[0]) = 0;
    if (!__nwlog_fault(v42, type, v79))
    {
      goto LABEL_127;
    }

    if (type[0] == 17)
    {
      v43 = __nwlog_obj();
      v48 = type[0];
      if (os_log_type_enabled(v43, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v48, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_126:

LABEL_127:
      if (v42)
      {
        free(v42);
      }

      goto LABEL_8;
    }

    if (LOBYTE(v79[0]) != 1)
    {
      v43 = __nwlog_obj();
      v58 = type[0];
      if (os_log_type_enabled(v43, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v58, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v54 = type[0];
    v55 = os_log_type_enabled(v43, type[0]);
    if (!backtrace_string)
    {
      if (v55)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_supports_connection";
        _os_log_impl(&dword_181A37000, v43, v54, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_126;
    }

    if (v55)
    {
      *buf = 136446466;
      *&buf[4] = "nw_proxy_config_supports_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v43, v54, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_108:

    free(backtrace_string);
    goto LABEL_127;
  }

  v11 = *(v7 + 38);
  if (!v11)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_69;
  }

  if (v11 != 4)
  {
    if (_nw_parameters_get_server_mode(v9))
    {
      goto LABEL_8;
    }

    v13 = _nw_parameters_copy_default_protocol_stack(v9);
    if ((*(v7 + 38) & 0xFFFFFFFE) == 2)
    {
      if (nw_protocol_setup_tcp_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
      }

      v14 = g_tcp_definition;
      v15 = nw_protocol_stack_includes_protocol(v13, v14);

      if ((v15 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    v16 = *(v7 + 3);
    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v81) = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_supports_connection_block_invoke;
      applier[3] = &unk_1E6A324A8;
      applier[4] = v13;
      applier[5] = buf;
      xpc_array_apply(v16, applier);
      v17 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (v17)
      {
        goto LABEL_67;
      }
    }

    if (*(v7 + 38) == 1)
    {
      v18 = nw_protocol_stack_copy_transport_protocol(v13);
      v19 = v18;
      if (v18)
      {
        v20 = _nw_protocol_options_copy_definition(v18);
        if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
        }

        v21 = nw_protocol_copy_quic_connection_definition_quic_definition;
        is_equal_unsafe = nw_protocol_definition_is_equal_unsafe(v20, v21);

        if (is_equal_unsafe)
        {
          v23 = nw_protocol_copy_quic_stream_definition();

          v20 = v23;
        }

        identifier = nw_protocol_definition_get_identifier(v20);
        buf[0] = 0;
        nw_proxy_config_should_proxy_transport_at_level(v7, identifier, buf);
        if (buf[0])
        {
          v25 = "proxy-wildcard";
        }

        else
        {
          v25 = identifier;
        }

        v26 = nw_dictionary_copy_value(*(v7 + 1), v25);
        if ((*(v7 + 172) & 2) != 0 && nw_protocol_options_is_quic(v19) && (_os_feature_enabled_impl() & 1) == 0)
        {

          goto LABEL_66;
        }

        if (!v26)
        {
LABEL_66:

          goto LABEL_67;
        }
      }
    }

    if (*(v7 + 39) != 3005)
    {
      goto LABEL_37;
    }

    if (nw_proxy_config_can_use_tcp_converter(void)::onceToken != -1)
    {
      dispatch_once(&nw_proxy_config_can_use_tcp_converter(void)::onceToken, &__block_literal_global_280);
    }

    if (nw_proxy_config_can_use_tcp_converter(void)::allowed != 1)
    {
      goto LABEL_67;
    }

    if (!v10)
    {
LABEL_37:
      v28 = v8;
      v29 = _nw_endpoint_get_type(v28);

      if ((v29 - 3) <= 0xFFFFFFFD)
      {
        v12 = 0;
        if ((*(v7 + 170) & 0x10) == 0 || v29 != 3)
        {
          goto LABEL_68;
        }
      }

      if ((*(v7 + 170) & 0x20) == 0)
      {
        if ((*(v7 + 170) & 0x80) != 0 && v29 == 2)
        {
          hostname = nw_endpoint_get_hostname(v28);
          if (hostname)
          {
            if (!strchr(hostname, 46))
            {
              goto LABEL_67;
            }
          }
        }

LABEL_72:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v81) = 0;
        v39 = *(v7 + 16);
        if (v39 && (v70[0] = MEMORY[0x1E69E9820], v70[1] = 3221225472, v70[2] = __nw_proxy_config_supports_connection_block_invoke_141, v70[3] = &unk_1E6A324A8, v71 = v28, v72 = buf, xpc_array_apply(v39, v70), v71, (*(*&buf[8] + 24) & 1) != 0))
        {
          v12 = 0;
        }

        else
        {
          v40 = *(v7 + 15);
          if (v40)
          {
            *type = 0;
            *&type[8] = type;
            *&type[16] = 0x2020000000;
            v78 = 0;
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __nw_proxy_config_supports_connection_block_invoke_2_142;
            v67[3] = &unk_1E6A324A8;
            v68 = v28;
            v69 = type;
            xpc_array_apply(v40, v67);
            v12 = *(*&type[8] + 24);

            _Block_object_dispose(type, 8);
          }

          else
          {
            v12 = (*(v7 + 172) & 1) == 0;
          }
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_68;
      }

      if (v29 != 1)
      {
        goto LABEL_67;
      }

      v31 = *(v7 + 5);
      if (!v31 || nw_endpoint_get_type(v31) != nw_endpoint_type_address)
      {
        goto LABEL_67;
      }

      if (!nw_path_has_nat64_prefixes(v10) || nw_endpoint_get_address_family(v28) != 30)
      {
        goto LABEL_71;
      }

      v32 = nw_path_nat64_prefixes(v10);
      v79[0] = 0;
      v79[1] = 0;
      v75 = 0;
      v33 = v32[4];
      if (v33)
      {
        LODWORD(v79[0]) = v32[4];
        memcpy(v79 + 4, v32, v33);
        memset(buf, 0, sizeof(buf));
        v81 = 0;
        if ((nw_endpoint_fillout_v4v6_address(v28, buf) & 1) == 0)
        {
          goto LABEL_129;
        }

        if (nw_nat64_extract_v4(v79, &buf[8], &v75))
        {
          goto LABEL_63;
        }
      }

      v34 = v32[9];
      if (v34)
      {
        LODWORD(v79[0]) = v32[9];
        memcpy(v79 + 4, v32 + 5, v34);
        memset(buf, 0, sizeof(buf));
        v81 = 0;
        if (!nw_endpoint_fillout_v4v6_address(v28, buf))
        {
          goto LABEL_129;
        }

        if (nw_nat64_extract_v4(v79, &buf[8], &v75))
        {
          goto LABEL_63;
        }
      }

      v35 = v32[14];
      if (v35)
      {
        LODWORD(v79[0]) = v32[14];
        memcpy(v79 + 4, v32 + 10, v35);
        memset(buf, 0, sizeof(buf));
        v81 = 0;
        if (!nw_endpoint_fillout_v4v6_address(v28, buf))
        {
          goto LABEL_129;
        }

        if (nw_nat64_extract_v4(v79, &buf[8], &v75))
        {
          goto LABEL_63;
        }
      }

      v36 = v32[19];
      if (!v36)
      {
        goto LABEL_71;
      }

      LODWORD(v79[0]) = v32[19];
      memcpy(v79 + 4, v32 + 15, v36);
      memset(buf, 0, sizeof(buf));
      v81 = 0;
      if (nw_endpoint_fillout_v4v6_address(v28, buf))
      {
        if (nw_nat64_extract_v4(v79, &buf[8], &v75))
        {
LABEL_63:
          if (nw_endpoint_get_address_family(*(v7 + 5)) == 2)
          {
            goto LABEL_72;
          }

LABEL_67:
          v12 = 0;
LABEL_68:

          goto LABEL_69;
        }

LABEL_71:
        address_family = nw_endpoint_get_address_family(v28);
        if (address_family == nw_endpoint_get_address_family(*(v7 + 5)))
        {
          goto LABEL_72;
        }

        goto LABEL_67;
      }

LABEL_129:
      v59 = __nwlog_obj();
      *type = 136446210;
      *&type[4] = "nw_proxy_config_supports_connection";
      v60 = _os_log_send_and_compose_impl();

      v74 = OS_LOG_TYPE_ERROR;
      v73 = 0;
      if (__nwlog_fault(v60, &v74, &v73))
      {
        if (v74 == OS_LOG_TYPE_FAULT)
        {
          v61 = __nwlog_obj();
          v62 = v74;
          if (os_log_type_enabled(v61, v74))
          {
            *type = 136446210;
            *&type[4] = "nw_proxy_config_supports_connection";
            _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null success", type, 0xCu);
          }
        }

        else if (v73 == 1)
        {
          v63 = __nw_create_backtrace_string();
          v61 = __nwlog_obj();
          v64 = v74;
          v65 = os_log_type_enabled(v61, v74);
          if (v63)
          {
            if (v65)
            {
              *type = 136446466;
              *&type[4] = "nw_proxy_config_supports_connection";
              *&type[12] = 2082;
              *&type[14] = v63;
              _os_log_impl(&dword_181A37000, v61, v64, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(v63);
            goto LABEL_145;
          }

          if (v65)
          {
            *type = 136446210;
            *&type[4] = "nw_proxy_config_supports_connection";
            _os_log_impl(&dword_181A37000, v61, v64, "%{public}s called with null success, no backtrace", type, 0xCu);
          }
        }

        else
        {
          v61 = __nwlog_obj();
          v66 = v74;
          if (os_log_type_enabled(v61, v74))
          {
            *type = 136446210;
            *&type[4] = "nw_proxy_config_supports_connection";
            _os_log_impl(&dword_181A37000, v61, v66, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
          }
        }
      }

LABEL_145:
      if (v60)
      {
        free(v60);
      }

      goto LABEL_67;
    }

    v27 = nw_path_copy_direct_interface(v10);
    v19 = v27;
    if (!v27 || _nw_interface_get_type(v27))
    {

      goto LABEL_37;
    }

    goto LABEL_66;
  }

  v12 = 1;
LABEL_69:

  return v12 & 1;
}

uint64_t nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_privacy_proxy_fail_closed_for_unreachable_hosts";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_parameters_get_prohibit_privacy_proxy(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_privacy_proxy(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_privacy_proxy";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_privacy_proxy";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_prohibit_privacy_proxy";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_privacy_proxy";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_privacy_proxy";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_proxy_config_get_generation(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[41];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_generation";
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
        v15 = "nw_proxy_config_get_generation";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_proxy_config_get_generation";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_generation";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_generation";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

id nw_proxy_config_copy_fallback_proxy_config(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[11];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_copy_fallback_proxy_config";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_copy_fallback_proxy_config";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void __nw_path_copy_proxy_config_for_agent_uuid_block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v8 = a2;
  v5 = _nw_network_agent_cache_copy_proxy_config(v8, a3, *(a1 + 48), *(a1 + 40));
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t nw_endpoint_handler_get_proxy_privacy_stance(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[70];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
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
        v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_proxy_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_proxy_config_get_is_companion_proxy(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[172] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_is_companion_proxy";
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
        v15 = "nw_proxy_config_get_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_proxy_config_get_is_companion_proxy";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t _nw_endpoint_copy_cfurl_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = sub_182AD1F98();
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);
    return v10;
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t nw_parameters_get_no_proxy(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_proxy(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_proxy";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_proxy";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_no_proxy";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_no_proxy";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_proxy";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_parameters_get_prefer_no_proxy(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_prefer_no_proxy(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prefer_no_proxy";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prefer_no_proxy";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_prefer_no_proxy";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_prefer_no_proxy";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prefer_no_proxy";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_https_proxy_is_opaque(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_https_proxy_is_opaque(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_https_proxy_is_opaque";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_https_proxy_is_opaque";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_https_proxy_is_opaque";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_https_proxy_is_opaque";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_https_proxy_is_opaque";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_array_is_empty(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_array_is_empty(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_array_is_empty";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_array_is_empty";
        v6 = "%{public}s called with null array";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_array_is_empty";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_array_is_empty";
        v6 = "%{public}s called with null array, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_array_is_empty";
        v6 = "%{public}s called with null array, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 1;
}

uint64_t ___ZL40nw_endpoint_proxy_has_unresolved_proxiesP30NWConcrete_nw_endpoint_handlerPb_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  mode = nw_proxy_config_get_mode(a3);
  if ((mode & 0xFFFFFFFE) == 2)
  {
    v5 = 32;
LABEL_5:
    *(*(*(a1 + v5) + 8) + 24) = 1;
    return 1;
  }

  if (mode)
  {
    v5 = 40;
    goto LABEL_5;
  }

  return 1;
}

void nw_endpoint_set_do_not_redact(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_set_do_not_redact(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_endpoint_set_do_not_redact";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_do_not_redact";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_endpoint_set_do_not_redact";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_do_not_redact";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_do_not_redact";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void _nw_endpoint_set_do_not_redact(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_flags];
  v4 = a1;
  if ((v3 & 0x80) == 0)
  {
    *&a1[v2] = v3 | 0x80;
  }
}

nw_protocol_options_t nw_protocol_stack_copy_internet_protocol(nw_protocol_stack_t stack)
{
  v15 = *MEMORY[0x1E69E9840];
  if (stack)
  {

    return _nw_protocol_stack_copy_internet_protocol();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_stack_copy_internet_protocol";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_internet_protocol";
        v6 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_protocol_stack_copy_internet_protocol";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_internet_protocol";
        v6 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_internet_protocol";
        v6 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_parameters_set_proxy_applied(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_proxy_applied();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_proxy_applied";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_applied";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_proxy_applied";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_applied";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_applied";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_set_preferred_netagent_classes(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    _nw_parameters_clear_preferred_netagent_types(v5);
    if (v6)
    {
      Class = object_getClass(v6);
      if (v7)
      {
        v9 = MEMORY[0x1E69E9E50];
        if (Class == MEMORY[0x1E69E9E50] && object_getClass(v7) == v9)
        {
          count = xpc_array_get_count(v6);
          if (count == xpc_array_get_count(v7))
          {
            v11 = xpc_array_get_count(v6);
            if (v11)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                string = xpc_array_get_string(v6, i);
                v15 = xpc_array_get_string(v7, i);
                if (string && v15)
                {
                  _nw_parameters_add_preferred_netagent_type(v5, string, v15);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_parameters_set_preferred_netagent_classes";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v17, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_preferred_netagent_classes";
        v20 = "%{public}s called with null parameters";
LABEL_26:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v22 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v26 = "nw_parameters_set_preferred_netagent_classes";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "nw_parameters_set_preferred_netagent_classes";
        v20 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_26;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_preferred_netagent_classes";
        v20 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v17)
  {
    free(v17);
  }

LABEL_30:
}

uint64_t _nw_protocol_options_copy(uint64_t a1)
{
  v1 = sub_181AA847C(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7[1] = v1;
  (*(*(v3 + 8) + 32))(v7);
  v5 = (*(v3 + 336))(ObjectType, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t nw_protocol_options_copy(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_copy(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_copy";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_copy";
        v6 = "%{public}s called with null options";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_protocol_options_copy";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_options_copy";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_copy";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_protocol_stack_set_original_proxied_transport_protocol(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_protocol_stack_set_original_proxied_transport_protocol();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
        v5 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
        v5 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_stack_set_original_proxied_transport_protocol";
        v5 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

uint64_t sub_181D08DF0(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    a2 = sub_181AA847C(a2);
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = 0;
      a2 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v7 = 0x2000000000000000;
        a2 = v8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v7 = 0x4000000000000000;
          a2 = v9;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v7 = 0x6000000000000000;
            a2 = v10;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v7 = 0x8000000000000000;
              a2 = v11;
            }

            else
            {
              v7 = v5 | 0xA000000000000000;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0xF000000000000007;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 80) = a2;
  *(a1 + 88) = v7;
  sub_181A53008(v12, v13);
}

uint64_t nw_masque_options_get_forced_protocol(nw_protocol_options *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZL37nw_masque_options_get_forced_protocolP19nw_protocol_options_block_invoke;
    v9[3] = &unk_1E6A2F7A0;
    v9[4] = buf;
    nw_protocol_options_access_handle(a1, v9);
    v1 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    return v1;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_options_get_forced_protocol";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_forced_protocol";
        v6 = "%{public}s called with null options";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_options_get_forced_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_forced_protocol";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_forced_protocol";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_copy_effective_proxy_config(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_effective_proxy_config(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_effective_proxy_config";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_effective_proxy_config";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_effective_proxy_config";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_effective_proxy_config";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_effective_proxy_config";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_flow_passthrough_supports_external_data(nw_protocol *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_flow_passthrough_supports_external_data";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_flow_passthrough_supports_external_data";
        v7 = "%{public}s called with null protocol";
LABEL_19:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_flow_passthrough_supports_external_data";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_flow_passthrough_supports_external_data";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_flow_passthrough_supports_external_data";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:

LABEL_21:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    return 0;
  }

  return nw_protocol_supports_external_data(default_input_handler);
}

void nw_parameters_set_use_enhanced_privacy_mode(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_use_enhanced_privacy_mode();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_use_enhanced_privacy_mode";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_use_enhanced_privacy_mode";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_use_enhanced_privacy_mode";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_use_enhanced_privacy_mode";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_use_enhanced_privacy_mode";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_protocol_implementation_connect(nw_protocol *a1, nw_protocol *a2)
{
  v207 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = __nwlog_obj();
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        v7 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v190[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v7, type, v190))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v8 = __nwlog_obj();
            v9 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v196 = "nw_protocol_implementation_connect";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v190[0] == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v8 = __nwlog_obj();
            v26 = type[0];
            v27 = os_log_type_enabled(v8, type[0]);
            if (backtrace_string)
            {
              if (v27)
              {
                *buf = 136446466;
                v196 = "nw_protocol_implementation_connect";
                v197 = 2082;
                v198 = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v26, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_68;
              }

              goto LABEL_67;
            }

            if (v27)
            {
              *buf = 136446210;
              v196 = "nw_protocol_implementation_connect";
              _os_log_impl(&dword_181A37000, v8, v26, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v8 = __nwlog_obj();
            v38 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v196 = "nw_protocol_implementation_connect";
              _os_log_impl(&dword_181A37000, v8, v38, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_68:
          v10 = 0;
          goto LABEL_88;
        }

LABEL_67:
        free(v7);
        goto LABEL_68;
      }

      v5 = *a1[1].flow_id;
    }

    v10 = &v5[1].output_handler;
    v11 = v5[1].handle;
    if (!v11)
    {
      v103 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v104, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v128 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v128, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v112 = type[0];
      v113 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v113)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v112, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v113)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v112, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_123;
    }

    if (!v11[10])
    {
      v105 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v106 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v106, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v129 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v129, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v114 = type[0];
      v115 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v115)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v114, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v115)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v114, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_123;
    }

    if (!a2)
    {
      v107 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v108 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v108, "%{public}s called with null input_protocol", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v130 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v130, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v116 = type[0];
      v117 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v117)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v116, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v117)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v116, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_123;
    }

    if (a1->output_handler != a1)
    {
      if ((BYTE2(v5[7].output_handler_context) & 0x20) == 0)
      {
        if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
        {
          v119 = __nwlog_obj();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = &v5[7].output_handler_context + 7;
            v199 = 2080;
            v200 = " ";
            _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sConnect", buf, 0x20u);
          }

          v11 = v5[1].handle;
        }

        if (*(v11 + 16) == 3)
        {
          output_handler_context = a2->output_handler_context;
          if (output_handler_context)
          {
            v13 = SBYTE5(v5[7].output_handler_context);
            if (!v5[7].output_handler)
            {
LABEL_159:
              v5[7].output_handler = output_handler_context;
              if ((v13 & 0x80) == 0 && gLogDatapath == 1)
              {
                v152 = __nwlog_obj();
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                {
                  v153 = nw_protocol_flow_for_protocol(v10, a2);
                  *buf = 136446978;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v153;
                  _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRequested connect from flow %llx", buf, 0x2Au);
                }
              }

LABEL_161:
              WORD2(output_handler_context[1].identifier) |= 4u;
              output_handler = a1->output_handler;
              if (output_handler)
              {
                v80 = output_handler->handle;
                v81 = a1->output_handler;
                if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *output_handler[1].flow_id) != 0)
                {
                  callbacks = v81[1].callbacks;
                  if (callbacks)
                  {
                    v81[1].callbacks = (&callbacks->add_input_handler + 1);
                  }

                  v82 = 0;
                  *type = output_handler;
                  v194 |= 1u;
                }

                else
                {
                  *type = a1->output_handler;
                  v194 &= ~1u;
                  v82 = 1;
                }

                v84 = a1->handle;
                v85 = a1;
                if (v84 != &nw_protocol_ref_counted_handle)
                {
                  if (v84 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v85) = 0;
                    v86 = 1;
                    goto LABEL_176;
                  }

                  v85 = *a1[1].flow_id;
                  if (!v85)
                  {
                    v86 = 1;
                    goto LABEL_176;
                  }
                }

                v87 = v85[1].callbacks;
                v86 = 0;
                if (v87)
                {
                  v85[1].callbacks = (&v87->add_input_handler + 1);
                }

                LOBYTE(v85) = -1;
LABEL_176:
                *v190 = a1;
                v191 = v85;
                v88 = output_handler->callbacks;
                if (v88)
                {
                  connect = v88->connect;
                  if (connect)
                  {
                    connect(output_handler, a1);
LABEL_179:
                    if ((v86 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(v190);
                    }

                    if ((v82 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(type);
                    }

LABEL_183:
                    v90 = v5[7].output_handler;
                    if (v90)
                    {
                      v91 = *(v90 + 16);
                      extra = nw_hash_node_get_extra(v90);
                      v93 = *(extra + 52);
                      if ((v93 & 0x20) != 0)
                      {
                        if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                        {
                          v176 = extra;
                          v177 = __nwlog_obj();
                          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136446722;
                            v196 = "nw_protocol_implementation_connect";
                            v197 = 2082;
                            v198 = &v5[7].output_handler_context + 7;
                            v199 = 2080;
                            v200 = " ";
                            _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelivering deferred connected event", buf, 0x20u);
                          }

                          extra = v176;
                          v93 = *(v176 + 52);
                        }

                        *(extra + 52) = v93 & 0xFFDF;
                        v94 = v10;
                        if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == v91)
                        {
                          v95 = -2;
                        }

                        else
                        {
                          v95 = v91;
                        }

                        nw_protocol_implementation_report_connected(v94, a1, v91, v95);
                      }

                      v5[7].output_handler = 0;
                      v47 = 1;
                      goto LABEL_197;
                    }

                    if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v96 = gLogObj;
                      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136446722;
                        v196 = "nw_protocol_implementation_connect";
                        v197 = 2082;
                        v198 = &v5[7].output_handler_context + 7;
                        v199 = 2080;
                        v200 = " ";
                        _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sflow was removed during connect, ignoring", buf, 0x20u);
                      }
                    }

                    goto LABEL_196;
                  }
                }

                v131 = output_handler;
                v132 = __nwlog_obj();
                name = v131->identifier->name;
                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                if (!name)
                {
                  name = "invalid";
                }

                v197 = 2082;
                v198 = name;
                v199 = 2048;
                v134 = v131;
                v200 = v131;
                v135 = _os_log_send_and_compose_impl();

                v192 = OS_LOG_TYPE_ERROR;
                v189 = 0;
                if (__nwlog_fault(v135, &v192, &v189))
                {
                  if (v192 == OS_LOG_TYPE_FAULT)
                  {
                    v136 = __nwlog_obj();
                    v137 = v192;
                    if (os_log_type_enabled(v136, v192))
                    {
                      v138 = v134->identifier->name;
                      if (!v138)
                      {
                        v138 = "invalid";
                      }

                      *buf = 136446722;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v138;
                      v199 = 2048;
                      v200 = v134;
                      _os_log_impl(&dword_181A37000, v136, v137, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                    }
                  }

                  else if (v189 == 1)
                  {
                    v154 = __nw_create_backtrace_string();
                    v136 = __nwlog_obj();
                    v155 = v192;
                    v156 = os_log_type_enabled(v136, v192);
                    if (v154)
                    {
                      if (v156)
                      {
                        v157 = v134->identifier->name;
                        if (!v157)
                        {
                          v157 = "invalid";
                        }

                        *buf = 136446978;
                        v196 = "__nw_protocol_connect";
                        v197 = 2082;
                        v198 = v157;
                        v199 = 2048;
                        v200 = v134;
                        v201 = 2082;
                        v202 = v154;
                        _os_log_impl(&dword_181A37000, v136, v155, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v154);
                      goto LABEL_388;
                    }

                    if (v156)
                    {
                      v183 = v134->identifier->name;
                      if (!v183)
                      {
                        v183 = "invalid";
                      }

                      *buf = 136446722;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v183;
                      v199 = 2048;
                      v200 = v134;
                      _os_log_impl(&dword_181A37000, v136, v155, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v136 = __nwlog_obj();
                    v172 = v192;
                    if (os_log_type_enabled(v136, v192))
                    {
                      v173 = v134->identifier->name;
                      if (!v173)
                      {
                        v173 = "invalid";
                      }

                      *buf = 136446722;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v173;
                      v199 = 2048;
                      v200 = v134;
                      _os_log_impl(&dword_181A37000, v136, v172, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                    }
                  }
                }

LABEL_388:
                if (v135)
                {
                  free(v135);
                }

                goto LABEL_179;
              }

              v147 = __nwlog_obj();
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              v148 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v190[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v148, type, v190))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v149 = __nwlog_obj();
                  v150 = type[0];
                  if (os_log_type_enabled(v149, type[0]))
                  {
                    *buf = 136446210;
                    v196 = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v149, v150, "%{public}s called with null protocol", buf, 0xCu);
                  }
                }

                else if (v190[0] == OS_LOG_TYPE_INFO)
                {
                  v169 = __nw_create_backtrace_string();
                  v149 = __nwlog_obj();
                  v170 = type[0];
                  v171 = os_log_type_enabled(v149, type[0]);
                  if (v169)
                  {
                    if (v171)
                    {
                      *buf = 136446466;
                      v196 = "__nw_protocol_connect";
                      v197 = 2082;
                      v198 = v169;
                      _os_log_impl(&dword_181A37000, v149, v170, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v169);
                    goto LABEL_403;
                  }

                  if (v171)
                  {
                    *buf = 136446210;
                    v196 = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v149, v170, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v149 = __nwlog_obj();
                  v182 = type[0];
                  if (os_log_type_enabled(v149, type[0]))
                  {
                    *buf = 136446210;
                    v196 = "__nw_protocol_connect";
                    _os_log_impl(&dword_181A37000, v149, v182, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_403:
              if (v148)
              {
                free(v148);
              }

              goto LABEL_183;
            }

            if (v13 < 0)
            {
              v5[7].output_handler = output_handler_context;
              goto LABEL_161;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = v5[7].output_handler;
            *buf = 136447234;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = &v5[7].output_handler_context + 7;
            v199 = 2080;
            v200 = " ";
            v201 = 2048;
            v202 = v15;
            v203 = 2048;
            v204 = output_handler_context;
            v16 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v190[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v16, type, v190))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v17 = gLogObj;
                v18 = type[0];
                if (os_log_type_enabled(v17, type[0]))
                {
                  v19 = v5[7].output_handler;
                  *buf = 136447234;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v19;
                  v203 = 2048;
                  v204 = output_handler_context;
                  _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p)", buf, 0x34u);
                }
              }

              else if (v190[0] == OS_LOG_TYPE_INFO)
              {
                v54 = __nw_create_backtrace_string();
                v17 = __nwlog_obj();
                v187 = type[0];
                v55 = os_log_type_enabled(v17, type[0]);
                if (v54)
                {
                  if (v55)
                  {
                    v56 = v5[7].output_handler;
                    *buf = 136447490;
                    v196 = "nw_protocol_implementation_connect";
                    v197 = 2082;
                    v198 = &v5[7].output_handler_context + 7;
                    v199 = 2080;
                    v200 = " ";
                    v201 = 2048;
                    v202 = v56;
                    v203 = 2048;
                    v204 = output_handler_context;
                    v205 = 2082;
                    v206 = v54;
                    _os_log_impl(&dword_181A37000, v17, v187, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p), dumping backtrace:%{public}s", buf, 0x3Eu);
                  }

                  free(v54);
                  goto LABEL_156;
                }

                if (v55)
                {
                  v78 = v5[7].output_handler;
                  *buf = 136447234;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v78;
                  v203 = 2048;
                  v204 = output_handler_context;
                  _os_log_impl(&dword_181A37000, v17, v187, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p), no backtrace", buf, 0x34u);
                }
              }

              else
              {
                v17 = __nwlog_obj();
                v61 = type[0];
                if (os_log_type_enabled(v17, type[0]))
                {
                  v62 = v5[7].output_handler;
                  *buf = 136447234;
                  v196 = "nw_protocol_implementation_connect";
                  v197 = 2082;
                  v198 = &v5[7].output_handler_context + 7;
                  v199 = 2080;
                  v200 = " ";
                  v201 = 2048;
                  v202 = v62;
                  v203 = 2048;
                  v204 = output_handler_context;
                  _os_log_impl(&dword_181A37000, v17, v61, "%{public}s %{public}s%sNested connect detected (connecting_node=%p, node=%p), backtrace limit exceeded", buf, 0x34u);
                }
              }
            }

LABEL_156:
            if (v16)
            {
              free(v16);
            }

            LOBYTE(v13) = BYTE5(v5[7].output_handler_context);
            goto LABEL_159;
          }

          if (SBYTE5(v5[7].output_handler_context) < 0)
          {
            goto LABEL_88;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = &v5[7].output_handler_context + 7;
            v199 = 2080;
            v200 = " ";
            v201 = 2048;
            v202 = a2;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
          }

LABEL_72:

          goto LABEL_88;
        }

        v39 = a1->output_handler;
        if (v39)
        {
          v40 = v39->handle;
          v41 = a1->output_handler;
          if (v40 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_80;
          }

          if (v40 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v41) = 0;
            v42 = 1;
            goto LABEL_90;
          }

          v41 = *v39[1].flow_id;
          if (v41)
          {
LABEL_80:
            v45 = v41[1].callbacks;
            v42 = 0;
            if (v45)
            {
              v41[1].callbacks = (&v45->add_input_handler + 1);
            }

            LOBYTE(v41) = -1;
          }

          else
          {
            v42 = 1;
          }

LABEL_90:
          *type = v39;
          v194 = v41;
          v48 = a1->handle;
          v49 = a1;
          if (v48 != &nw_protocol_ref_counted_handle)
          {
            if (v48 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v49) = 0;
              v50 = 1;
              goto LABEL_97;
            }

            v49 = *a1[1].flow_id;
            if (!v49)
            {
              v50 = 1;
              goto LABEL_97;
            }
          }

          v51 = v49[1].callbacks;
          v50 = 0;
          if (v51)
          {
            v49[1].callbacks = (&v51->add_input_handler + 1);
          }

          LOBYTE(v49) = -1;
LABEL_97:
          *v190 = a1;
          v191 = v49;
          v52 = v39->callbacks;
          if (v52)
          {
            v53 = v52->connect;
            if (v53)
            {
              v53();
LABEL_100:
              if ((v50 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(v190);
              }

              if ((v42 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(type);
              }

              goto LABEL_196;
            }
          }

          v120 = v39;
          v121 = __nwlog_obj();
          v122 = v120->identifier->name;
          *buf = 136446722;
          v196 = "__nw_protocol_connect";
          if (!v122)
          {
            v122 = "invalid";
          }

          v197 = 2082;
          v198 = v122;
          v199 = 2048;
          v123 = v120;
          v200 = v120;
          v124 = _os_log_send_and_compose_impl();

          v192 = OS_LOG_TYPE_ERROR;
          v189 = 0;
          if (__nwlog_fault(v124, &v192, &v189))
          {
            if (v192 == OS_LOG_TYPE_FAULT)
            {
              v125 = __nwlog_obj();
              v126 = v192;
              if (os_log_type_enabled(v125, v192))
              {
                v127 = v123->identifier->name;
                if (!v127)
                {
                  v127 = "invalid";
                }

                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v127;
                v199 = 2048;
                v200 = v123;
                _os_log_impl(&dword_181A37000, v125, v126, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
              }
            }

            else if (v189 == 1)
            {
              v143 = __nw_create_backtrace_string();
              v125 = __nwlog_obj();
              v144 = v192;
              v145 = os_log_type_enabled(v125, v192);
              if (v143)
              {
                if (v145)
                {
                  v146 = v123->identifier->name;
                  if (!v146)
                  {
                    v146 = "invalid";
                  }

                  *buf = 136446978;
                  v196 = "__nw_protocol_connect";
                  v197 = 2082;
                  v198 = v146;
                  v199 = 2048;
                  v200 = v123;
                  v201 = 2082;
                  v202 = v143;
                  _os_log_impl(&dword_181A37000, v125, v144, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v143);
                goto LABEL_378;
              }

              if (v145)
              {
                v181 = v123->identifier->name;
                if (!v181)
                {
                  v181 = "invalid";
                }

                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v181;
                v199 = 2048;
                v200 = v123;
                _os_log_impl(&dword_181A37000, v125, v144, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v125 = __nwlog_obj();
              v161 = v192;
              if (os_log_type_enabled(v125, v192))
              {
                v162 = v123->identifier->name;
                if (!v162)
                {
                  v162 = "invalid";
                }

                *buf = 136446722;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v162;
                v199 = 2048;
                v200 = v123;
                _os_log_impl(&dword_181A37000, v125, v161, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

LABEL_378:
          if (v124)
          {
            free(v124);
          }

          goto LABEL_100;
        }

        v139 = __nwlog_obj();
        *buf = 136446210;
        v196 = "__nw_protocol_connect";
        v140 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v190[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v140, type, v190))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v141 = __nwlog_obj();
            v142 = type[0];
            if (os_log_type_enabled(v141, type[0]))
            {
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              _os_log_impl(&dword_181A37000, v141, v142, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v190[0] == OS_LOG_TYPE_INFO)
          {
            v158 = __nw_create_backtrace_string();
            v141 = __nwlog_obj();
            v159 = type[0];
            v160 = os_log_type_enabled(v141, type[0]);
            if (v158)
            {
              if (v160)
              {
                *buf = 136446466;
                v196 = "__nw_protocol_connect";
                v197 = 2082;
                v198 = v158;
                _os_log_impl(&dword_181A37000, v141, v159, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v158);
              goto LABEL_398;
            }

            if (v160)
            {
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              _os_log_impl(&dword_181A37000, v141, v159, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v141 = __nwlog_obj();
            v174 = type[0];
            if (os_log_type_enabled(v141, type[0]))
            {
              *buf = 136446210;
              v196 = "__nw_protocol_connect";
              _os_log_impl(&dword_181A37000, v141, v174, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_398:
        if (v140)
        {
          free(v140);
        }

        goto LABEL_196;
      }

      if (*(v11 + 16) != 3)
      {
LABEL_196:
        v47 = 1;
        goto LABEL_197;
      }

      v28 = a2->output_handler_context;
      v29 = SBYTE5(v5[7].output_handler_context);
      if (!v28)
      {
        if (v29 < 0)
        {
          goto LABEL_88;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = &v5[7].output_handler_context + 7;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a2;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
        }

        goto LABEL_72;
      }

      if ((v29 & 0x80000000) == 0 && gLogDatapath == 1)
      {
        v151 = __nwlog_obj();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = &v5[7].output_handler_context + 7;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = nw_protocol_flow_for_protocol(v10, a2);
          _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sConnect from flow %llx", buf, 0x2Au);
        }
      }

      v30 = v28[42];
      v31 = v30 | 4;
      v28[42] = v30 | 4;
      if ((v30 & 8) != 0)
      {
        if ((v30 & 0x10) != 0)
        {
          v31 = v30 | 0x24;
          v28[42] = v30 | 0x24;
        }

        goto LABEL_139;
      }

      if (*(*(v5[1].handle + 10) + 120))
      {
        v32 = a2->handle;
        v33 = a2;
        if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *a2[1].flow_id) != 0)
        {
          v66 = v33[1].callbacks;
          if (v66)
          {
            v33[1].callbacks = (&v66->add_input_handler + 1);
          }

          v34 = 0;
          *type = a2;
          v194 |= 1u;
        }

        else
        {
          *type = a2;
          v194 &= ~1u;
          v34 = 1;
        }

        v67 = a2->callbacks;
        if (v67)
        {
          get_parameters = v67->get_parameters;
          if (get_parameters)
          {
            v69 = get_parameters(a2);
            if (v34)
            {
LABEL_132:
              if (v69)
              {
                v70 = nw_parameters_copy_protocol_options(v69, v5);
                objc_storeStrong(&v5[2].callbacks, v70);
                v71 = *(v28 + 5);
                *(v28 + 5) = v70;
              }

              v28[42] |= 8u;
              v72 = *(*(v5[1].handle + 10) + 120);
              v73 = v10;
              if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == a2)
              {
                v74 = -2;
              }

              else
              {
                v74 = a2;
              }

              v72(v73, v74, v28[42] & 1);
              if (!nw_hash_table_get_node(*&v5[5].flow_id[8], a2, 8))
              {
                if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
                {
                  v77 = __nwlog_obj();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446978;
                    v196 = "nw_protocol_implementation_connect";
                    v197 = 2082;
                    v198 = &v5[7].output_handler_context + 7;
                    v199 = 2080;
                    v200 = " ";
                    v201 = 2048;
                    v202 = a2;
                    _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sinput_protocol %p no longer exists in flows_table", buf, 0x2Au);
                  }
                }

                v47 = 1;
                v10 = v73;
                goto LABEL_197;
              }

              v31 = v28[42];
LABEL_139:
              if ((v31 & 0x20) != 0)
              {
                if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                {
                  v175 = __nwlog_obj();
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446722;
                    v196 = "nw_protocol_implementation_connect";
                    v197 = 2082;
                    v198 = &v5[7].output_handler_context + 7;
                    v199 = 2080;
                    v200 = " ";
                    _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelivering deferred connected event", buf, 0x20u);
                  }

                  v31 = v28[42];
                }

                v28[42] = v31 & 0xFFDF;
                v75 = v10;
                if (nw_protocol_definition_get_message_is_stream(v5[1].handle) && v5->default_input_handler == a2)
                {
                  v76 = -2;
                }

                else
                {
                  v76 = a2;
                }

                nw_protocol_implementation_report_connected(v75, a1, a2, v76);
                v47 = 1;
                v10 = v75;
                goto LABEL_197;
              }

              goto LABEL_196;
            }

LABEL_131:
            nw::release_if_needed<nw_protocol *>(type);
            goto LABEL_132;
          }
        }

        v163 = __nwlog_obj();
        identifier = a2->identifier;
        *buf = 136446722;
        v196 = "__nw_protocol_get_parameters";
        if (!identifier)
        {
          identifier = "invalid";
        }

        v197 = 2082;
        v198 = identifier;
        v199 = 2048;
        v200 = a2;
        v165 = _os_log_send_and_compose_impl();

        v190[0] = OS_LOG_TYPE_ERROR;
        v192 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v165, v190, &v192))
        {
          if (v190[0] == OS_LOG_TYPE_FAULT)
          {
            v166 = __nwlog_obj();
            v167 = v190[0];
            if (os_log_type_enabled(v166, v190[0]))
            {
              v168 = a2->identifier;
              if (!v168)
              {
                v168 = "invalid";
              }

              *buf = 136446722;
              v196 = "__nw_protocol_get_parameters";
              v197 = 2082;
              v198 = v168;
              v199 = 2048;
              v200 = a2;
              _os_log_impl(&dword_181A37000, v166, v167, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 0x20u);
            }

LABEL_409:

            goto LABEL_410;
          }

          if (v192 != OS_LOG_TYPE_INFO)
          {
            v166 = __nwlog_obj();
            v184 = v190[0];
            if (os_log_type_enabled(v166, v190[0]))
            {
              v185 = a2->identifier;
              if (!v185)
              {
                v185 = "invalid";
              }

              *buf = 136446722;
              v196 = "__nw_protocol_get_parameters";
              v197 = 2082;
              v198 = v185;
              v199 = 2048;
              v200 = a2;
              _os_log_impl(&dword_181A37000, v166, v184, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_409;
          }

          v178 = __nw_create_backtrace_string();
          v166 = __nwlog_obj();
          v188 = v190[0];
          v179 = os_log_type_enabled(v166, v190[0]);
          if (!v178)
          {
            if (v179)
            {
              v186 = a2->identifier;
              if (!v186)
              {
                v186 = "invalid";
              }

              *buf = 136446722;
              v196 = "__nw_protocol_get_parameters";
              v197 = 2082;
              v198 = v186;
              v199 = 2048;
              v200 = a2;
              _os_log_impl(&dword_181A37000, v166, v188, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace", buf, 0x20u);
            }

            goto LABEL_409;
          }

          if (v179)
          {
            v180 = a2->identifier;
            if (!v180)
            {
              v180 = "invalid";
            }

            *buf = 136446978;
            v196 = "__nw_protocol_get_parameters";
            v197 = 2082;
            v198 = v180;
            v199 = 2048;
            v200 = a2;
            v201 = 2082;
            v202 = v178;
            _os_log_impl(&dword_181A37000, v166, v188, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v178);
        }

LABEL_410:
        if (v165)
        {
          free(v165);
        }

        v69 = 0;
        if (v34)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      }

      v57 = __nwlog_obj();
      *buf = 136446210;
      v196 = "nw_protocol_implementation_connect";
      v58 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v190[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v58, type, v190))
      {
        goto LABEL_207;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v60 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null instance->parent_definition->start", buf, 0xCu);
        }

LABEL_206:

        goto LABEL_207;
      }

      if (v190[0] != OS_LOG_TYPE_INFO)
      {
        v59 = __nwlog_obj();
        v98 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v98, "%{public}s called with null instance->parent_definition->start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_206;
      }

      v63 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v64 = type[0];
      v65 = os_log_type_enabled(v59, type[0]);
      if (!v63)
      {
        if (v65)
        {
          *buf = 136446210;
          v196 = "nw_protocol_implementation_connect";
          _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null instance->parent_definition->start, no backtrace", buf, 0xCu);
        }

        goto LABEL_206;
      }

      if (v65)
      {
        *buf = 136446466;
        v196 = "nw_protocol_implementation_connect";
        v197 = 2082;
        v198 = v63;
        _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null instance->parent_definition->start, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_123:

      free(v63);
LABEL_207:
      if (!v58)
      {
        goto LABEL_88;
      }

      v46 = v58;
      goto LABEL_87;
    }

    if (SBYTE5(v5[7].output_handler_context) < 0)
    {
LABEL_88:
      v47 = 0;
LABEL_197:

      return v47;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = &v5[7].output_handler_context + 7;
    *buf = 136446978;
    v196 = "nw_protocol_implementation_connect";
    v197 = 2082;
    v198 = &v5[7].output_handler_context + 7;
    v199 = 2080;
    v200 = " ";
    v201 = 2048;
    v202 = a1;
    v22 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v190[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v22, type, v190))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v21;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a1;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself", buf, 0x2Au);
        }
      }

      else if (v190[0] == OS_LOG_TYPE_INFO)
      {
        v35 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v36 = type[0];
        v37 = os_log_type_enabled(v23, type[0]);
        if (v35)
        {
          if (v37)
          {
            *buf = 136447234;
            v196 = "nw_protocol_implementation_connect";
            v197 = 2082;
            v198 = v21;
            v199 = 2080;
            v200 = " ";
            v201 = 2048;
            v202 = a1;
            v203 = 2082;
            v204 = v35;
            _os_log_impl(&dword_181A37000, v23, v36, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v35);
          if (!v22)
          {
            goto LABEL_88;
          }

LABEL_86:
          v46 = v22;
LABEL_87:
          free(v46);
          goto LABEL_88;
        }

        if (v37)
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v21;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a1;
          _os_log_impl(&dword_181A37000, v23, v36, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself, no backtrace", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v43 = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          *buf = 136446978;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v21;
          v199 = 2080;
          v200 = " ";
          v201 = 2048;
          v202 = a1;
          _os_log_impl(&dword_181A37000, v23, v43, "%{public}s %{public}s%sProtocol %p output_handler is pointing to itself, backtrace limit exceeded", buf, 0x2Au);
        }
      }
    }

    if (!v22)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  v99 = __nwlog_obj();
  *buf = 136446210;
  v196 = "nw_protocol_implementation_connect";
  v100 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v190[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v100, type, v190))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v101 = __nwlog_obj();
      v102 = type[0];
      if (os_log_type_enabled(v101, type[0]))
      {
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v190[0] == OS_LOG_TYPE_INFO)
    {
      v109 = __nw_create_backtrace_string();
      v101 = __nwlog_obj();
      v110 = type[0];
      v111 = os_log_type_enabled(v101, type[0]);
      if (v109)
      {
        if (v111)
        {
          *buf = 136446466;
          v196 = "nw_protocol_implementation_connect";
          v197 = 2082;
          v198 = v109;
          _os_log_impl(&dword_181A37000, v101, v110, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v109);
        goto LABEL_297;
      }

      if (v111)
      {
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        _os_log_impl(&dword_181A37000, v101, v110, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v101 = __nwlog_obj();
      v118 = type[0];
      if (os_log_type_enabled(v101, type[0]))
      {
        *buf = 136446210;
        v196 = "nw_protocol_implementation_connect";
        _os_log_impl(&dword_181A37000, v101, v118, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_297:
  if (v100)
  {
    free(v100);
  }

  return 0;
}

uint64_t ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = *(a1 + 32);
    v5 = object[5];
    v6 = object;
    if (v5 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v5 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v6) = 0;
      v7 = 1;
      goto LABEL_9;
    }

    v6 = object[8];
    if (v6)
    {
LABEL_6:
      v8 = v6[11];
      v7 = 0;
      if (v8)
      {
        v6[11] = v8 + 1;
      }

      LOBYTE(v6) = -1;
    }

    else
    {
      v7 = 1;
    }

LABEL_9:
    *v52 = object;
    v53 = v6;
    if (v4)
    {
      v9 = *(v4 + 40);
      v10 = v4;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v4 + 64)) != 0)
      {
        v13 = *(v10 + 88);
        v12 = 0;
        if (v13)
        {
          *(v10 + 88) = v13 + 1;
        }

        v11 = -1;
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      *v49 = v4;
      v50 = v11;
      v14 = object[3];
      if (v14)
      {
        v15 = *(v14 + 40);
        if (v15)
        {
          v15();
LABEL_20:
          if ((v12 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v49);
          }

LABEL_22:
          if ((v7 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v52);
          }

          return 1;
        }
      }

      v17 = object;
      v18 = __nwlog_obj();
      v19 = v17[2];
      *buf = 136446722;
      v55 = "__nw_protocol_connected";
      if (!v19)
      {
        v19 = "invalid";
      }

      v56 = 2082;
      v57 = v19;
      v58 = 2048;
      v20 = v17;
      v59 = v17;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (__nwlog_fault(v21, &type, &v48))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = v20[2];
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v24;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
          }
        }

        else if (v48 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v22 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v35)
            {
              v36 = v20[2];
              if (!v36)
              {
                v36 = "invalid";
              }

              *buf = 136446978;
              v55 = "__nw_protocol_connected";
              v56 = 2082;
              v57 = v36;
              v58 = 2048;
              v59 = v20;
              v60 = 2082;
              v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_78;
          }

          if (v35)
          {
            v47 = v20[2];
            if (!v47)
            {
              v47 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v47;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v22 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v22, type))
          {
            v44 = v20[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v44;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v43, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_78:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_20;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_protocol_connected";
    v30 = _os_log_send_and_compose_impl();

    v49[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v49, &type))
    {
      if (v49[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_connected";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v41 = v49[0];
        v42 = os_log_type_enabled(v31, v49[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v55 = "__nw_protocol_connected";
            v56 = 2082;
            v57 = v40;
            _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_88;
        }

        if (v42)
        {
          *buf = 136446210;
          v55 = "__nw_protocol_connected";
          _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v46 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_connected";
          _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_88:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_22;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v55 = "__nw_protocol_connected";
  v26 = _os_log_send_and_compose_impl();

  v52[0] = OS_LOG_TYPE_ERROR;
  v49[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v26, v52, v49))
  {
    if (v52[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_connected";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v49[0] == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = v52[0];
      v39 = os_log_type_enabled(v27, v52[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v55 = "__nw_protocol_connected";
          v56 = 2082;
          v57 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_83;
      }

      if (v39)
      {
        *buf = 136446210;
        v55 = "__nw_protocol_connected";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_connected";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_83:
  if (v26)
  {
    free(v26);
  }

  return 1;
}

void sub_181D0CE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

uint64_t nw_quic_connection_get_datagram_context_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    datagram_context_id = _nw_quic_connection_get_datagram_context_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_datagram_context_id";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_datagram_context_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  datagram_context_id = 0;
LABEL_3:

  return datagram_context_id;
}

uint64_t _nw_quic_connection_get_datagram_context_id(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 7) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_disable_ecn(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 9) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_disable_ecn_echo(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    disable_ecn_echo = _nw_quic_connection_get_disable_ecn_echo(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_disable_ecn_echo";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn_echo";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_disable_ecn_echo";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn_echo";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn_echo";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  disable_ecn_echo = 0;
LABEL_3:

  return disable_ecn_echo;
}

uint64_t network_config_get_quic_l4s_enabled()
{
  if (l4s_enabled_by_developer())
  {
    return 1;
  }

  if (l4s_disabled_by_developer())
  {
    return 0;
  }

  v1 = networkd_settings_copy_value_of_type(nw_setting_enable_quic_l4s, 0);
  v2 = v1;
  v3 = v1 && object_getClass(v1) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v2);

  return v3;
}

BOOL l4s_disabled_by_developer(void)
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
  v1 = v0;
  if (v0 && object_getClass(v0) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v1);

    if (value == 2)
    {
      return 1;
    }
  }

  else
  {
  }

  if (nw_settings_get_l4s_enabled_internal::onceToken != -1)
  {
    dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
  }

  return nw_settings_get_l4s_enabled_internal::l4s_setting == 2;
}

uint64_t nw_protocol_definition_get_variant(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[16];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_variant";
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
        v15 = "nw_protocol_definition_get_variant";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_definition_get_variant";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_variant";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_variant";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_sec_protocol_options_iterate_application_protocols(void *a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_sec_protocol_options_iterate_application_protocols";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v9, &type, &v25))
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
        v28 = "nw_sec_protocol_options_iterate_application_protocols";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v25 == 1)
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
          v28 = "nw_sec_protocol_options_iterate_application_protocols";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
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
        v28 = "nw_sec_protocol_options_iterate_application_protocols";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v28 = "nw_sec_protocol_options_iterate_application_protocols";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v6)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __nw_sec_protocol_options_iterate_application_protocols_block_invoke;
    v22[3] = &unk_1E6A3A7C8;
    v23 = v6;
    v24 = a2;
    nw_protocol_options_access_handle(v5, v22);

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_sec_protocol_options_iterate_application_protocols";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v9, &type, &v25))
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
      v28 = "nw_sec_protocol_options_iterate_application_protocols";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null alpn_iterator", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v25 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v28 = "nw_sec_protocol_options_iterate_application_protocols";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null alpn_iterator, backtrace limit exceeded", buf, 0xCu);
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
      v28 = "nw_sec_protocol_options_iterate_application_protocols";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null alpn_iterator, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19)
  {
    *buf = 136446466;
    v28 = "nw_sec_protocol_options_iterate_application_protocols";
    v29 = 2082;
    v30 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null alpn_iterator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_quic_connection_get_quic_state(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_quic_state(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_quic_state";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_quic_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_quic_state";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_quic_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_quic_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

void nw_protocol_stack_prepend_application_protocol(nw_protocol_stack_t stack, nw_protocol_options_t protocol)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = stack;
  v4 = protocol;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_stack_prepend_application_protocol";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_prepend_application_protocol";
        v10 = "%{public}s called with null stack";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_stack_prepend_application_protocol";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_prepend_application_protocol";
        v10 = "%{public}s called with null stack, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_prepend_application_protocol";
        v10 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_protocol_stack_prepend_application_protocol(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_stack_prepend_application_protocol";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_prepend_application_protocol";
      v10 = "%{public}s called with null protocol";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_prepend_application_protocol";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_prepend_application_protocol";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_stack_prepend_application_protocol";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t nw_quic_connection_get_ack_delay_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    ack_delay_size = _nw_quic_connection_get_ack_delay_size(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_ack_delay_size";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_ack_delay_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_ack_delay_size";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_ack_delay_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_ack_delay_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  ack_delay_size = 0;
LABEL_3:

  return ack_delay_size;
}

uint64_t _nw_quic_connection_get_idle_timeout(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout);

  return v6;
}

uint64_t nw_quic_connection_get_initial_max_streams_bidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_streams_bidirectional = _nw_quic_connection_get_initial_max_streams_bidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  initial_max_streams_bidirectional = 0;
LABEL_3:

  return initial_max_streams_bidirectional;
}

uint64_t _nw_quic_connection_get_initial_max_streams_unidirectional(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 56);

  return v6;
}

uint64_t nw_quic_connection_get_initial_max_data(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_data = _nw_quic_connection_get_initial_max_data(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_data";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_data";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_initial_max_data";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_data";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_data";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  initial_max_data = 0;
LABEL_3:

  return initial_max_data;
}

uint64_t _nw_quic_connection_get_initial_max_data(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);

  return v6;
}

uint64_t nw_quic_connection_get_initial_max_stream_data_bidirectional_local(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_stream_data_bidirectional_local = _nw_quic_connection_get_initial_max_stream_data_bidirectional_local(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  initial_max_stream_data_bidirectional_local = 0;
LABEL_3:

  return initial_max_stream_data_bidirectional_local;
}

uint64_t _nw_quic_connection_get_initial_max_stream_data_bidirectional_local(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return v6;
}

uint64_t nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_stream_data_bidirectional_remote = _nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  initial_max_stream_data_bidirectional_remote = 0;
LABEL_3:

  return initial_max_stream_data_bidirectional_remote;
}

uint64_t _nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 32);

  return v6;
}

uint64_t nw_quic_connection_get_initial_max_stream_data_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_stream_data_unidirectional = _nw_quic_connection_get_initial_max_stream_data_unidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  initial_max_stream_data_unidirectional = 0;
LABEL_3:

  return initial_max_stream_data_unidirectional;
}

uint64_t _nw_quic_connection_get_initial_max_stream_data_unidirectional(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 40);

  return v6;
}

BOOL nw_endpoint_flow_pre_attach_protocols(void *a1, nw_protocol *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_endpoint_flow_pre_attach_protocols";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v13, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            v53 = "nw_endpoint_flow_pre_attach_protocols";
            v54 = 2082;
            v55 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v13)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v44)
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v14, v45, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_53;
    }

LABEL_54:
    if (!v13)
    {
LABEL_56:
      v10 = 0;
      goto LABEL_57;
    }

LABEL_55:
    free(v13);
    goto LABEL_56;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (mode > 5)
    {
      v12 = "unknown-mode";
    }

    else
    {
      v12 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v53 = "nw_endpoint_flow_pre_attach_protocols";
    v54 = 2082;
    v55 = v12;
    v56 = 2082;
    v57 = "flow";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v13, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (mode > 5)
          {
            v16 = "unknown-mode";
          }

          else
          {
            v16 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          v54 = 2082;
          v55 = v16;
          v56 = 2082;
          v57 = "flow";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v50 == 1)
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
            if (mode > 5)
            {
              v20 = "unknown-mode";
            }

            else
            {
              v20 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v53 = "nw_endpoint_flow_pre_attach_protocols";
            v54 = 2082;
            v55 = v20;
            v56 = 2082;
            v57 = "flow";
            v58 = 2082;
            v59 = v17;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v17);
          if (!v13)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v19)
        {
          if (mode > 5)
          {
            v32 = "unknown-mode";
          }

          else
          {
            v32 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          v54 = 2082;
          v55 = v32;
          v56 = 2082;
          v57 = "flow";
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (mode > 5)
          {
            v30 = "unknown-mode";
          }

          else
          {
            v30 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          v54 = 2082;
          v55 = v30;
          v56 = 2082;
          v57 = "flow";
          _os_log_impl(&dword_181A37000, v14, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_53:

      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v7 = nw_endpoint_handler_copy_flow(v5);
  if ((*(v7 + 32) & 2) == 0)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_endpoint_flow_pre_attach_protocols";
    v39 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v39, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null endpoint_flow->is_leaf_flow_handler", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        v46 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v40, type);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            v53 = "nw_endpoint_flow_pre_attach_protocols";
            v54 = 2082;
            v55 = v46;
            _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null endpoint_flow->is_leaf_flow_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_91;
        }

        if (v48)
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null endpoint_flow->is_leaf_flow_handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null endpoint_flow->is_leaf_flow_handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_91:
    if (v39)
    {
      free(v39);
    }

    v10 = 0;
    goto LABEL_43;
  }

  nw_endpoint_handler_initialize_association(v5);
  nw_endpoint_flow_initialize_protocol(v5, v7 + 376, *(v7 + 32) & 1);
  if (!a2)
  {
    v21 = v5;
    os_unfair_lock_lock(&v21->lock);
    v22 = v21->current_path;
    os_unfair_lock_unlock(&v21->lock);

    v23 = v21;
    v24 = v23->parameters;

    if (nw_endpoint_flow_should_add_filter(v24, v22))
    {
      Helper_x8__ne_filter_protocol_identifier = gotLoadHelper_x8__ne_filter_protocol_identifier(v25);
      if (*(v27 + 2208))
      {
        inited = ne_filter_protocol_identifier_delayInitStub(Helper_x8__ne_filter_protocol_identifier);
      }

      else
      {
        inited = 0;
      }

      v31 = inited != 0;
      if ((*(v7 + 225) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = 1;
      if ((*(v7 + 225) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    if (v31 && v22 && (_nw_path_uses_nexus(v22) & 1) != 0)
    {
      v33 = 32 * *(v7 + 34);
      *(v7 + 33) = (v33 & 0x40 | *(v7 + 33) & 0xBF) ^ 0x40;
      if ((v33 & 0x40) == 0)
      {
        v34 = nw_endpoint_flow_setup_channel(v23);
LABEL_42:
        v10 = v34;

        goto LABEL_43;
      }

LABEL_41:
      v34 = nw_endpoint_flow_setup_protocols(v23, 0, 0, 0, 0);
      goto LABEL_42;
    }

LABEL_40:
    *(v7 + 33) &= ~0x40u;
    goto LABEL_41;
  }

  *(v7 + 34) |= 0x40u;
  v8 = nw_endpoint_handler_copy_endpoint(v5);
  v9 = *(v7 + 121);
  *(v7 + 121) = v8;

  v10 = nw_endpoint_flow_setup_protocols(v5, 0, a2, 0, 1);
LABEL_43:

LABEL_57:
  return v10;
}

uint64_t sub_181D101A4(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = *a5;
  v10 = *(sub_181AC9084() + 24);

  v11 = *(sub_181A54748() + 24);

  if (__OFADD__(v10, v11))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v115 = v10 + v11;
  v116 = v5;
  v13 = *(sub_181AC9084() + 24);

  v14 = *(sub_181A54748() + 24);

  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    goto LABEL_129;
  }

  v111 = a3;
  result = 1;
  if (v115 < 1 || v15 < 1)
  {
    return result;
  }

  v107 = a2;
  v106 = a1;
  v104 = v9;
  v16 = 0;
  v17 = v10 + v11 - v15;
  v18 = a3;
  while (1)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_116:
      __break(1u);
      return result;
    }

    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_116;
    }

    v25 = *(v18 + 16);
    v26 = v25[3];
    v27 = v16;
    v28 = __OFSUB__(v16, v26);
    v29 = v16 - v26;
    if (v29 < 0 != v28)
    {
      goto LABEL_20;
    }

    if (v28)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v29 < 0)
    {
      goto LABEL_122;
    }

    v25 = *(v18 + 24);
    v27 = v29;
    if (v29 >= v25[3])
    {
      goto LABEL_123;
    }

LABEL_20:
    v30 = v25[4] + v27;
    v31 = v25[2];
    if (v30 < v31)
    {
      v31 = 0;
    }

    v32 = &v25[2 * (v30 - v31)];
    v33 = v32[5];
    v34 = v32[6];
    if (!(v34 >> 62))
    {
      break;
    }

    if (v34 >> 62 == 1)
    {
      ObjectType = swift_getObjectType();
      v36 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_181B2C3E0(v33, v34);
      v37 = ObjectType;
      v18 = v111;
      v38 = v36(a4, v37, v34 & 0x3FFFFFFFFFFFFFFFLL);
      result = sub_181AAD084(v33, v34);
      if (v38)
      {
        goto LABEL_25;
      }
    }

LABEL_13:
    ++v16;
    ++v17;
    if (v24 == v15)
    {
      return 0;
    }
  }

  v19 = *(v33 + 56);
  v20 = ~v19 & 0x1000000000000007;
  v21 = v19 & 0x1000000000000000;
  if (v20)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22 || *(v33 + 48) != a4)
  {
    goto LABEL_13;
  }

LABEL_25:
  result = *(a4 + 16);
  if (!result)
  {
    goto LABEL_144;
  }

  result = sub_181AAC800(result, &v123);
  v39 = 0;
  v113 = v124;
  v114 = v125;
  v117 = v126;
  v109 = BYTE1(v123);
  v110 = v123;
  v112 = v123 | (BYTE1(v123) << 8);
  v105 = v124;
  v41 = v115;
  v40 = v116;
  v108 = v16;
  while (2)
  {
    if (v39 >= v41)
    {
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v43 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_120;
    }

    v44 = *(sub_181AC9084() + 24);

    v45 = __OFSUB__(v39, v44);
    v46 = v39 - v44;
    if (v46 < 0 != v45)
    {
      v47 = *(v40 + 16);
      if (v39 >= v47[3])
      {
        goto LABEL_124;
      }

      v48 = v47[4];
      if ((v39 + v48) >= v47[2])
      {
        v49 = v47[2];
      }

      else
      {
        v49 = 0;
      }

      v50 = &v47[2 * v39 + 2 * (v48 - v49)];
      v52 = v50[5];
      v51 = v50[6];
      sub_181B2C3E0(v52, v51);
      v53 = v51 >> 62;
      if (!(v51 >> 62))
      {
        goto LABEL_46;
      }

      goto LABEL_38;
    }

    if (v45)
    {
      goto LABEL_125;
    }

    result = sub_181A54748();
    if (v46 < 0)
    {
      goto LABEL_126;
    }

    if (v46 >= *(result + 24))
    {
      goto LABEL_127;
    }

    v59 = *(result + 32) + v46;
    v60 = *(result + 16);
    if (v59 < v60)
    {
      v60 = 0;
    }

    v61 = result + 16 * (v59 - v60);
    v52 = *(v61 + 40);
    v51 = *(v61 + 48);
    sub_181B2C3E0(v52, v51);

    v53 = v51 >> 62;
    if (v51 >> 62)
    {
LABEL_38:
      if (v53 == 1)
      {
        v118 = v39;
        v121 = v39 + 1;
        v54 = swift_getObjectType();
        (*((v51 & 0x3FFFFFFFFFFFFFFFLL) + 0x60))(&v123, v54, v51 & 0x3FFFFFFFFFFFFFFFLL);
        v55 = v124;
        v56 = v125;
        v57 = v126;
        v58 = v123;
        goto LABEL_47;
      }

      v42 = v113;
      sub_181F49A24(v113, v114, v117);
      sub_181AAD084(v52, v51);
      sub_181F669F0(0, 0, 0, 255);
      result = sub_181F669F0(v112, v113, v114, v117);
      v40 = v116;
      goto LABEL_28;
    }

LABEL_46:
    v118 = v39;
    v121 = v39 + 1;
    swift_beginAccess();
    v55 = *(v52 + 24);
    v56 = *(v52 + 32);
    v57 = *(v52 + 40);
    v58 = *(v52 + 16);
    sub_181F49A24(v55, v56, v57);
LABEL_47:
    v62 = v110 == v58 && v109 == (v58 >> 8);
    v63 = v117;
    if (!v62)
    {
LABEL_51:
      v42 = v113;
      v64 = v57;
      v65 = v114;
      sub_181F49A24(v113, v114, v63);
      sub_181F67190(v58, v55, v56, v64);
      sub_181AAD084(v52, v51);
      v66 = v117;
      v16 = v108;
      goto LABEL_52;
    }

    if ((v57 & 1) == 0)
    {
      v42 = v113;
      v64 = v57;
      v65 = v114;
      sub_181F49A24(v113, v114, v117);
      sub_181F67190(v58, v55, v56, v64);
      sub_181AAD084(v52, v51);
      v66 = v117;
      if ((v117 & 1) == 0)
      {
        sub_181F669F0(v112, v113, v114, v117);
        v69 = v105 == v55;
        v57 = v64;
        goto LABEL_62;
      }

LABEL_52:
      sub_181F669F0(v112, v42, v65, v66);
      sub_181F48350(v55, v56, v64);
      result = sub_181F669F0(v58, v55, v56, v64);
      v41 = v115;
      v40 = v116;
      v39 = v118;
      v43 = v121;
LABEL_28:
      ++v39;
      if (v43 == v41)
      {
        sub_181F48350(v42, v114, v117);
        return 0;
      }

      continue;
    }

    break;
  }

  if ((v117 & 1) == 0)
  {
    v63 = 0;
    goto LABEL_51;
  }

  if (v55 == v113 && v56 == v114)
  {
    sub_181F49A24(v113, v114, 1);
    sub_181F67190(v58, v113, v114, v57);
    sub_181AAD084(v52, v51);
    sub_181F669F0(v112, v113, v114, v117);
    sub_181F48350(v113, v114, 1);
    result = sub_181F669F0(v58, v113, v114, v57);
    v39 = v118;
    v43 = v121;
    v41 = v115;
    v40 = v116;
    v42 = v113;
    if (v17 != v118)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v103 = sub_182AD4268();
    sub_181F49A24(v113, v114, 1);
    sub_181F67190(v58, v55, v56, v57);
    v68 = v51;
    v69 = v103;
    sub_181AAD084(v52, v68);
    sub_181F669F0(v112, v113, v114, v117);
    v42 = v113;
LABEL_62:
    sub_181F48350(v55, v56, v57);
    result = sub_181F669F0(v58, v55, v56, v57);
    v41 = v115;
    v40 = v116;
    v39 = v118;
    v43 = v121;
    if (!v69 || v17 != v118)
    {
      goto LABEL_28;
    }
  }

  if (v107)
  {
    goto LABEL_70;
  }

  if (v106 != v39)
  {
    goto LABEL_28;
  }

  v39 = v106;
LABEL_70:
  result = sub_181F48350(v42, v114, v117);
  v70 = v104;
  if (v41 >= v43)
  {
    if (v43 == v41)
    {
      return 1;
    }

    v71 = v39;
    while (2)
    {
      if (v43 >= v41)
      {
        goto LABEL_130;
      }

      v72 = *(sub_181AC9084() + 24);

      v73 = __OFSUB__(v43, v72);
      v74 = v43 - v72;
      if (v74 < 0 != v73)
      {
        if (v43 < 0)
        {
          goto LABEL_134;
        }

        v75 = *(v40 + 16);
        if (v43 >= v75[3])
        {
          goto LABEL_135;
        }

        v76 = v75[4];
        if (v43 + v76 >= v75[2])
        {
          v77 = v75[2];
        }

        else
        {
          v77 = 0;
        }

        v78 = &v75[2 * v43 + 2 * (v76 - v77)];
        v79 = v43;
        v81 = v78[5];
        v80 = v78[6];
        result = sub_181B2C3E0(v81, v80);
      }

      else
      {
        if (v73)
        {
          goto LABEL_133;
        }

        result = sub_181A54748();
        if (v74 < 0)
        {
          goto LABEL_136;
        }

        if (v74 >= *(result + 24))
        {
          goto LABEL_137;
        }

        v79 = v43;
        v82 = *(result + 32) + v74;
        v83 = *(result + 16);
        if (v82 < v83)
        {
          v83 = 0;
        }

        v84 = result + 16 * (v82 - v83);
        v81 = *(v84 + 40);
        v80 = *(v84 + 48);
        sub_181B2C3E0(v81, v80);
      }

      v85 = v79 - v71;
      if (__OFSUB__(v79, v71))
      {
        goto LABEL_131;
      }

      v86 = v16 + v85;
      if (__OFADD__(v16, v85))
      {
        goto LABEL_132;
      }

      v87 = v79;
      v88 = *(sub_181AC9084() + 24);

      v89 = v86 - v88;
      if (v86 >= v88)
      {
        if (__OFSUB__(v86, v88))
        {
          goto LABEL_139;
        }

        result = sub_181A54748();
        if (v89 < 0)
        {
          goto LABEL_140;
        }

        if (v89 >= *(result + 24))
        {
          goto LABEL_142;
        }

        v99 = *(result + 32) + v89;
        v100 = *(result + 16);
        if (v99 < v100)
        {
          v100 = 0;
        }

        v101 = result + 16 * (v99 - v100);
        v95 = *(v101 + 40);
        v94 = *(v101 + 48);
        sub_181B2C3E0(v95, v94);

        v96 = v80 >> 62;
        if (!(v80 >> 62))
        {
          goto LABEL_111;
        }

LABEL_102:
        if (v96 == 1)
        {
          if (v94 >> 62 != 1)
          {
            goto LABEL_118;
          }

          v97 = swift_getObjectType();
          LOBYTE(v123) = v70;
          v119 = *((v80 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v122 = v97;
          sub_181B2C3E0(v95, v94);
          sub_181B2C3E0(v81, v80);
          v98 = v119(v95, v94 & 0x3FFFFFFFFFFFFFFFLL, &v123, v122, v80 & 0x3FFFFFFFFFFFFFFFLL);
          v70 = v104;
          goto LABEL_113;
        }

        sub_181AAD084(v81, v80);
        sub_181AAD084(v95, v94);
        if ((v94 & 0x8000000000000000) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v86 < 0)
        {
          goto LABEL_138;
        }

        v90 = *(v111 + 16);
        if (v86 >= v90[3])
        {
          goto LABEL_141;
        }

        v91 = v90[4] + v86;
        v92 = v90[2];
        if (v91 < v92)
        {
          v92 = 0;
        }

        v93 = &v90[2 * (v91 - v92)];
        v95 = v93[5];
        v94 = v93[6];
        sub_181B2C3E0(v95, v94);
        v96 = v80 >> 62;
        if (v80 >> 62)
        {
          goto LABEL_102;
        }

LABEL_111:
        if (v94 >> 62)
        {
LABEL_118:
          sub_181AAD084(v81, v80);
          sub_181AAD084(v95, v94);
          return 0;
        }

        sub_181B2C3E0(v95, v94);
        sub_181B2C3E0(v81, v80);
        v98 = sub_181CC4EF0(v95, v70);
LABEL_113:
        v102 = v98;
        sub_181AAD084(v95, v94);
        sub_181AAD084(v81, v80);
        sub_181AAD084(v81, v80);
        sub_181AAD084(v95, v94);
        if ((v102 & 1) == 0)
        {
          return 0;
        }
      }

      v43 = v87 + 1;
      result = 1;
      v41 = v115;
      v40 = v116;
      if (v115 == v87 + 1)
      {
        return result;
      }

      continue;
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t _nw_protocol_options_inherit_log_id(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(*a1 + 160));

  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = a2 + *(*a2 + 160);
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = (a1 + *(*a1 + 168));
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = (a2 + *(*a2 + 168));
  swift_beginAccess();
  *v11 = v10;
  v11[1] = v9;
}

void nw_protocol_instance_clear_flow_for_key(void *a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_instance_clear_flow_for_key";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v11, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v37 = "nw_protocol_instance_clear_flow_for_key";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_66:
        if (!v11)
        {
          goto LABEL_14;
        }

LABEL_67:
        free(v11);
        goto LABEL_14;
      }

      if (v18)
      {
        *buf = 136446210;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_65:

    goto LABEL_66;
  }

  if (a2)
  {
    v5 = v3[30];
    if (v5 && *(v5 + 48))
    {
      node = nw_hash_table_get_node(v5, a2, *(*(*(v4 + 1) + 80) + 264));
      if (node)
      {
        v7 = node;
        v8 = v4[413];
        if (*(node + 16))
        {
          if ((v8 & 0x80000000) == 0 && gLogDatapath == 1)
          {
            v28 = __nwlog_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = *(v7 + 32);
              *buf = 136447234;
              v37 = "nw_protocol_instance_clear_flow_for_key";
              v38 = 2082;
              v39 = v4 + 415;
              v40 = 2080;
              v41 = " ";
              v42 = 2048;
              v43 = a2;
              v44 = 2048;
              v45 = v29;
              _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemoving custom flow mapping for key %p, flow %llx", buf, 0x34u);
            }
          }

          nw_hash_table_remove_node(*(v4 + 30), v7);
          goto LABEL_14;
        }

        if (v8 < 0)
        {
          goto LABEL_14;
        }

        v24 = __nwlog_obj();
        *buf = 136446978;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        v42 = 2048;
        v43 = v7;
        v25 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v34 = 0;
        if (!__nwlog_fault(v25, &type, &v34))
        {
          goto LABEL_74;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446978;
            v37 = "nw_protocol_instance_clear_flow_for_key";
            v38 = 2082;
            v39 = v4 + 415;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v7;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}s%sobject not present from node %p", buf, 0x2Au);
          }
        }

        else if (v34 == 1)
        {
          v30 = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v31 = type;
          v32 = os_log_type_enabled(v26, type);
          if (v30)
          {
            if (v32)
            {
              *buf = 136447234;
              v37 = "nw_protocol_instance_clear_flow_for_key";
              v38 = 2082;
              v39 = v4 + 415;
              v40 = 2080;
              v41 = " ";
              v42 = 2048;
              v43 = v7;
              v44 = 2082;
              v45 = v30;
              _os_log_impl(&dword_181A37000, v26, v31, "%{public}s %{public}s%sobject not present from node %p, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v30);
            goto LABEL_74;
          }

          if (v32)
          {
            *buf = 136446978;
            v37 = "nw_protocol_instance_clear_flow_for_key";
            v38 = 2082;
            v39 = v4 + 415;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v7;
            _os_log_impl(&dword_181A37000, v26, v31, "%{public}s %{public}s%sobject not present from node %p, no backtrace", buf, 0x2Au);
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446978;
            v37 = "nw_protocol_instance_clear_flow_for_key";
            v38 = 2082;
            v39 = v4 + 415;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v7;
            _os_log_impl(&dword_181A37000, v26, v33, "%{public}s %{public}s%sobject not present from node %p, backtrace limit exceeded", buf, 0x2Au);
          }
        }

LABEL_74:
        if (v25)
        {
          free(v25);
        }

        goto LABEL_14;
      }

      if (v4[413] < 0)
      {
        goto LABEL_14;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        v42 = 2048;
        v43 = a2;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo flow found in custom flow mapping table for key %p", buf, 0x2Au);
      }
    }

    else
    {
      if (v4[413] < 0)
      {
        goto LABEL_14;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFlow mapping table is empty", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_protocol_instance_clear_flow_for_key";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v11, &type, &v34))
  {
    goto LABEL_66;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v37 = "nw_protocol_instance_clear_flow_for_key";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null key", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (v34 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v37 = "nw_protocol_instance_clear_flow_for_key";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_65;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v12, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v37 = "nw_protocol_instance_clear_flow_for_key";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null key, no backtrace", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (v21)
  {
    *buf = 136446466;
    v37 = "nw_protocol_instance_clear_flow_for_key";
    v38 = 2082;
    v39 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_67;
  }

LABEL_14:
}

uint64_t nw_protocol_instance_set_flow_for_key(void *a1, const void *a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_instance_set_flow_for_key";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v22, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v44 != 1)
      {
        v23 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v41, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v36)
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v35, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v36)
      {
        *buf = 136446466;
        v47 = "nw_protocol_instance_set_flow_for_key";
        v48 = 2082;
        v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v35, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_43;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_instance_set_flow_for_key";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v22, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null key", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v44 != 1)
      {
        v23 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v42, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v38)
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v37, "%{public}s called with null key, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v38)
      {
        *buf = 136446466;
        v47 = "nw_protocol_instance_set_flow_for_key";
        v48 = 2082;
        v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v37, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_43;
    }

    goto LABEL_50;
  }

  if (!a3)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_instance_set_flow_for_key";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v22, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v34, "%{public}s called with null flow", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v44 != 1)
      {
        v23 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v43, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v47 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v23, v39, "%{public}s called with null flow, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v40)
      {
        *buf = 136446466;
        v47 = "nw_protocol_instance_set_flow_for_key";
        v48 = 2082;
        v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v39, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_43;
    }

LABEL_50:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_27;
  }

  if (nw_protocol_definition_get_variant(v5[1]) != 3)
  {
    if (*(v6 + 413) < 0)
    {
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v47 = "nw_protocol_instance_set_flow_for_key";
      v48 = 2082;
      v49 = v6 + 415;
      v50 = 2080;
      v51 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot use custom flow mapping table on a non-multiplexing protocol", buf, 0x20u);
    }

LABEL_26:

    goto LABEL_27;
  }

  v7 = *(*(v6[1] + 10) + 264);
  if (!v7)
  {
    if (*(v6 + 413) < 0)
    {
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v47 = "nw_protocol_instance_set_flow_for_key";
      v48 = 2082;
      v49 = v6 + 415;
      v50 = 2080;
      v51 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sThe size of the key data in the protocol definition must be specified before using the custom flow map. See nw_protocol_definition_set_custom_flow_map_key_size.", buf, 0x20u);
    }

    goto LABEL_26;
  }

  if (v6[30])
  {
    goto LABEL_9;
  }

  internal = nw_hash_table_create_internal(0x1Fu, 8, nw_protocol_custom_mapping_get_key, nw_protocol_custom_mapping_key_hash, nw_protocol_custom_mapping_matches_key, nw_protocol_custom_mapping_release_object, 0);
  if (!internal)
  {
    v6[30] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v47 = "nw_protocol_instance_set_flow_for_key";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v22, &type, &v44))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v47 = "nw_protocol_instance_set_flow_for_key";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s nw_hash_table_create_no_lock failed", buf, 0xCu);
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v44 != 1)
    {
      v23 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v47 = "nw_protocol_instance_set_flow_for_key";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v47 = "nw_protocol_instance_set_flow_for_key";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s nw_hash_table_create_no_lock failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_49;
    }

    if (v27)
    {
      *buf = 136446466;
      v47 = "nw_protocol_instance_set_flow_for_key";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v26, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_43:

    free(backtrace_string);
    goto LABEL_50;
  }

  *(internal + 56) &= ~2u;
  v6[30] = internal;
LABEL_9:
  v9 = malloc_type_calloc(1uLL, v7 + 4, 0xB93A711uLL);
  if (v9)
  {
LABEL_12:
    *v9 = v7;
    memcpy(v9 + 1, a2, v7);
    type = OS_LOG_TYPE_DEFAULT;
    v13 = nw_hash_table_add_object(v6[30], v9, &type);
    if (v13)
    {
      v14 = type;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      *(v13 + 32) = a3;
      if (*(v6 + 413) < 0 || gLogDatapath != 1)
      {
        v14 = 1;
LABEL_28:

        return v14;
      }

      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447234;
        v47 = "nw_protocol_instance_set_flow_for_key";
        v48 = 2082;
        v49 = v6 + 415;
        v50 = 2080;
        v51 = " ";
        v52 = 2048;
        v53 = a2;
        v54 = 2048;
        v55 = a3;
        v17 = "%{public}s %{public}s%sAdded key %p to custom flow mapping table for flow id: %llx";
        v18 = v16;
        v19 = OS_LOG_TYPE_DEBUG;
        v20 = 52;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if ((*(v6 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v47 = "nw_protocol_instance_set_flow_for_key";
        v48 = 2082;
        v49 = v6 + 415;
        v50 = 2080;
        v51 = " ";
        v52 = 2048;
        v53 = a2;
        v17 = "%{public}s %{public}s%sFailed to add key %p to custom flow mapping table";
        v18 = v16;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 42;
LABEL_32:
        _os_log_impl(&dword_181A37000, v18, v19, v17, buf, v20);
      }

LABEL_33:

      goto LABEL_28;
    }

LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v47 = "nw_protocol_instance_set_flow_for_key";
  v48 = 2048;
  v49 = 1;
  v50 = 2048;
  v51 = (v7 + 4);
  v11 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}
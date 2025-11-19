uint64_t nw_protocol_common_supports_external_data(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_common_supports_external_data";
    v1 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v1, &type, &v14))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v17 = "nw_protocol_common_supports_external_data";
      v4 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v2 = __nwlog_obj();
      v3 = type;
      v13 = os_log_type_enabled(v2, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v17 = "nw_protocol_common_supports_external_data";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v2, v3, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v1)
        {
          goto LABEL_17;
        }

        return 0;
      }

      if (!v13)
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v17 = "nw_protocol_common_supports_external_data";
      v4 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v17 = "nw_protocol_common_supports_external_data";
      v4 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_14:
    v9 = v2;
    v10 = v3;
LABEL_15:
    _os_log_impl(&dword_181A37000, v9, v10, v4, buf, 0xCu);
    goto LABEL_16;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v17 = "nw_protocol_common_supports_external_data";
  v1 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v1, &type, &v14))
  {
    goto LABEL_16;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_16;
    }

    *buf = 136446210;
    v17 = "nw_protocol_common_supports_external_data";
    v4 = "%{public}s supports_external_data requires an input handler";
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_16;
    }

    *buf = 136446210;
    v17 = "nw_protocol_common_supports_external_data";
    v4 = "%{public}s supports_external_data requires an input handler, backtrace limit exceeded";
    goto LABEL_14;
  }

  v5 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v7 = type;
  v8 = os_log_type_enabled(gLogObj, type);
  if (v5)
  {
    if (v8)
    {
      *buf = 136446466;
      v17 = "nw_protocol_common_supports_external_data";
      v18 = 2082;
      v19 = v5;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s supports_external_data requires an input handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v5);
  }

  else if (v8)
  {
    *buf = 136446210;
    v17 = "nw_protocol_common_supports_external_data";
    v4 = "%{public}s supports_external_data requires an input handler, no backtrace";
    v9 = v6;
    v10 = v7;
    goto LABEL_15;
  }

LABEL_16:
  if (v1)
  {
LABEL_17:
    free(v1);
  }

  return 0;
}

uint64_t nw_protocol_http_messaging_get_parameters(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_messaging_get_parameters";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_messaging_get_parameters";
      v7 = "%{public}s called with null protocol";
    }

    else
    {
      if (v12 != 1)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v15 = "nw_protocol_http_messaging_get_parameters";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
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
          v15 = "nw_protocol_http_messaging_get_parameters";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v4)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (!v9)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_messaging_get_parameters";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_messaging_get_parameters";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_messaging_get_parameters";
      v7 = "%{public}s called with null http_messaging";
      goto LABEL_34;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_messaging_get_parameters";
      v7 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_34;
    }

    v10 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!v10)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http_messaging_get_parameters";
      v7 = "%{public}s called with null http_messaging, no backtrace";
      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_http_messaging_get_parameters";
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v10);
LABEL_35:
    if (!v4)
    {
      return 0;
    }

LABEL_36:
    free(v4);
    return 0;
  }

  result = handle[12];
  if (!result)
  {
    v3 = handle[6];

    return nw_protocol_get_parameters(v3);
  }

  return result;
}

uint64_t nw_protocol_common_get_local_endpoint(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 40);
      v3 = *(a1 + 48);
      if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v1 + 64)) != 0)
      {
        v14 = *(v3 + 88);
        if (v14)
        {
          v4 = 0;
          *(v3 + 88) = v14 + 1;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v4 = 0;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v4 = 1;
        v5 = *(v1 + 24);
        if (!v5)
        {
          goto LABEL_44;
        }
      }

      v15 = *(v5 + 128);
      if (v15)
      {
        result = v15(v1);
        if (v4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_44:
      __nwlog_obj();
      v25 = *(v1 + 16);
      *buf = 136446722;
      v41 = "__nw_protocol_get_local_endpoint";
      if (!v25)
      {
        v25 = "invalid";
      }

      v42 = 2082;
      v43 = v25;
      v44 = 2048;
      v45 = v1;
      v26 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v26, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_80;
          }

          v29 = *(v1 + 16);
          if (!v29)
          {
            v29 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_local_endpoint";
          v42 = 2082;
          v43 = v29;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
LABEL_79:
          _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x20u);
          goto LABEL_80;
        }

        if (v38 != 1)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_80;
          }

          v36 = *(v1 + 16);
          if (!v36)
          {
            v36 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_local_endpoint";
          v42 = 2082;
          v43 = v36;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
          goto LABEL_79;
        }

        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v32 = os_log_type_enabled(v27, type);
        if (!backtrace_string)
        {
          if (!v32)
          {
            goto LABEL_80;
          }

          v37 = *(v1 + 16);
          if (!v37)
          {
            v37 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_local_endpoint";
          v42 = 2082;
          v43 = v37;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
          goto LABEL_79;
        }

        if (v32)
        {
          if (*(v1 + 16))
          {
            v33 = *(v1 + 16);
          }

          else
          {
            v33 = "invalid";
          }

          *buf = 136446978;
          v41 = "__nw_protocol_get_local_endpoint";
          v42 = 2082;
          v43 = v33;
          v44 = 2048;
          v45 = v1;
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
      }

LABEL_80:
      if (v26)
      {
        free(v26);
      }

      result = 0;
      if (v4)
      {
        return result;
      }

LABEL_23:
      v17 = *(v1 + 40);
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
      {
        v18 = *(v1 + 88);
        if (v18)
        {
          v19 = v18 - 1;
          *(v1 + 88) = v19;
          if (!v19)
          {
            v20 = result;
            v21 = *(v1 + 64);
            if (v21)
            {
              *(v1 + 64) = 0;
              v21[2](v21);
              _Block_release(v21);
            }

            if (*(v1 + 72))
            {
              v22 = *(v1 + 64);
              if (v22)
              {
                _Block_release(v22);
              }
            }

            free(v1);
            return v20;
          }
        }
      }

      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v41 = "nw_protocol_common_get_local_endpoint";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v6, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_common_get_local_endpoint";
          v9 = "%{public}s get_local_endpoint requires a default input handler";
LABEL_36:
          v23 = v7;
          v24 = v8;
LABEL_37:
          _os_log_impl(&dword_181A37000, v23, v24, v9, buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v10 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(gLogObj, type);
        if (v10)
        {
          if (v13)
          {
            *buf = 136446466;
            v41 = "nw_protocol_common_get_local_endpoint";
            v42 = 2082;
            v43 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_local_endpoint requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v41 = "nw_protocol_common_get_local_endpoint";
          v9 = "%{public}s get_local_endpoint requires a default input handler, no backtrace";
          v23 = v11;
          v24 = v12;
          goto LABEL_37;
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
          *buf = 136446210;
          v41 = "nw_protocol_common_get_local_endpoint";
          v9 = "%{public}s get_local_endpoint requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_common_get_local_endpoint";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v6, &type, &v38))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v41 = "nw_protocol_common_get_local_endpoint";
      v9 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v38 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v41 = "nw_protocol_common_get_local_endpoint";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    v34 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v35 = os_log_type_enabled(v7, type);
    if (v34)
    {
      if (v35)
      {
        *buf = 136446466;
        v41 = "nw_protocol_common_get_local_endpoint";
        v42 = 2082;
        v43 = v34;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v34);
      goto LABEL_38;
    }

    if (v35)
    {
      *buf = 136446210;
      v41 = "nw_protocol_common_get_local_endpoint";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_http_messaging_get_remote_endpoint(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v2 = handle[6];
      if (!v2)
      {
        return handle[14];
      }

      return nw_protocol_get_remote_endpoint(v2);
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http_messaging_get_remote_endpoint";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_http_messaging_get_remote_endpoint";
        v7 = "%{public}s called with null http_messaging";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_http_messaging_get_remote_endpoint";
        v7 = "%{public}s called with null http_messaging, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_http_messaging_get_remote_endpoint";
        v7 = "%{public}s called with null http_messaging, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_http_messaging_get_remote_endpoint";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_http_messaging_get_remote_endpoint";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_http_messaging_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_protocol_http_messaging_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_http_messaging_get_remote_endpoint";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v15 = "nw_protocol_http_messaging_get_remote_endpoint";
    v7 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_36:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_common_get_path(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 40);
      v3 = *(a1 + 48);
      if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v1 + 64)) != 0)
      {
        v14 = *(v3 + 88);
        if (v14)
        {
          v4 = 0;
          *(v3 + 88) = v14 + 1;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v4 = 0;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v4 = 1;
        v5 = *(v1 + 24);
        if (!v5)
        {
          goto LABEL_44;
        }
      }

      v15 = *(v5 + 120);
      if (v15)
      {
        result = v15(v1);
        if (v4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_44:
      __nwlog_obj();
      v25 = *(v1 + 16);
      *buf = 136446722;
      v41 = "__nw_protocol_get_path";
      if (!v25)
      {
        v25 = "invalid";
      }

      v42 = 2082;
      v43 = v25;
      v44 = 2048;
      v45 = v1;
      v26 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v26, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_80;
          }

          v29 = *(v1 + 16);
          if (!v29)
          {
            v29 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_path";
          v42 = 2082;
          v43 = v29;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
LABEL_79:
          _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x20u);
          goto LABEL_80;
        }

        if (v38 != 1)
        {
          v27 = __nwlog_obj();
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_80;
          }

          v36 = *(v1 + 16);
          if (!v36)
          {
            v36 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_path";
          v42 = 2082;
          v43 = v36;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
          goto LABEL_79;
        }

        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v32 = os_log_type_enabled(v27, type);
        if (!backtrace_string)
        {
          if (!v32)
          {
            goto LABEL_80;
          }

          v37 = *(v1 + 16);
          if (!v37)
          {
            v37 = "invalid";
          }

          *buf = 136446722;
          v41 = "__nw_protocol_get_path";
          v42 = 2082;
          v43 = v37;
          v44 = 2048;
          v45 = v1;
          v30 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
          goto LABEL_79;
        }

        if (v32)
        {
          if (*(v1 + 16))
          {
            v33 = *(v1 + 16);
          }

          else
          {
            v33 = "invalid";
          }

          *buf = 136446978;
          v41 = "__nw_protocol_get_path";
          v42 = 2082;
          v43 = v33;
          v44 = 2048;
          v45 = v1;
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
      }

LABEL_80:
      if (v26)
      {
        free(v26);
      }

      result = 0;
      if (v4)
      {
        return result;
      }

LABEL_23:
      v17 = *(v1 + 40);
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
      {
        v18 = *(v1 + 88);
        if (v18)
        {
          v19 = v18 - 1;
          *(v1 + 88) = v19;
          if (!v19)
          {
            v20 = result;
            v21 = *(v1 + 64);
            if (v21)
            {
              *(v1 + 64) = 0;
              v21[2](v21);
              _Block_release(v21);
            }

            if (*(v1 + 72))
            {
              v22 = *(v1 + 64);
              if (v22)
              {
                _Block_release(v22);
              }
            }

            free(v1);
            return v20;
          }
        }
      }

      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v41 = "nw_protocol_common_get_path";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v6, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_common_get_path";
          v9 = "%{public}s get_path requires a default input handler";
LABEL_36:
          v23 = v7;
          v24 = v8;
LABEL_37:
          _os_log_impl(&dword_181A37000, v23, v24, v9, buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v10 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(gLogObj, type);
        if (v10)
        {
          if (v13)
          {
            *buf = 136446466;
            v41 = "nw_protocol_common_get_path";
            v42 = 2082;
            v43 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_path requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v41 = "nw_protocol_common_get_path";
          v9 = "%{public}s get_path requires a default input handler, no backtrace";
          v23 = v11;
          v24 = v12;
          goto LABEL_37;
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
          *buf = 136446210;
          v41 = "nw_protocol_common_get_path";
          v9 = "%{public}s get_path requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_common_get_path";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v6, &type, &v38))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v41 = "nw_protocol_common_get_path";
      v9 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v38 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v41 = "nw_protocol_common_get_path";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    v34 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v35 = os_log_type_enabled(v7, type);
    if (v34)
    {
      if (v35)
      {
        *buf = 136446466;
        v41 = "nw_protocol_common_get_path";
        v42 = 2082;
        v43 = v34;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v34);
      goto LABEL_38;
    }

    if (v35)
    {
      *buf = 136446210;
      v41 = "nw_protocol_common_get_path";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for NWBrowser.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 4) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWBrowser.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 5))
  {
    return (*a1 + 62);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFFC3 | (4 * ((*(a1 + 4) >> 2) & 0xF))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t NWEndpoint.Host.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      return IPv4Address.debugDescription.getter();
    }

    else
    {
      return IPv6Address.debugDescription.getter();
    }
  }

  else if (v0[2])
  {
    v3 = v0[1];

    MEMORY[0x1865D9CA0](v1, v3);

    MEMORY[0x1865D9CA0](37, 0xE100000000000000);
    sub_182AD3E18();

    return 0;
  }

  else
  {

    return v1;
  }
}

uint64_t IPv4Address.debugDescription.getter()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(v0 + 1);
  *&v8.sa_len = 528;
  *&v8.sa_data[2] = v1;
  *&v8.sa_data[6] = 0;

  v3 = swift_slowAlloc();
  if (getnameinfo(&v8, 0x10u, v3, 0x64u, 0, 0, 2))
  {
    v4 = 0xE100000000000000;
    v5 = 63;
  }

  else
  {
    v5 = sub_182AD3158();
    v4 = v6;
  }

  MEMORY[0x1865DF520](v3, -1, -1);
  if (v2)
  {
    MEMORY[0x1865D9CA0](v5, v4);

    MEMORY[0x1865D9CA0](37, 0xE100000000000000);
    sub_182AD3E18();

    return 0;
  }

  return v5;
}

uint64_t sub_181EDA824()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t nw_protocol_waiting_for_output_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 216) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t _nw_tcp_options_get_multipath_force_version(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  if (v5 == 2)
  {
    __break(1u);
  }

  else
  {

    return v5 & 1;
  }

  return result;
}

void nw_protocol_http_messaging_connected(nw_protocol *a1, nw_protocol *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v85 = "nw_protocol_http_messaging_connected";
    v69 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (!__nwlog_fault(v69, &type, &v82))
    {
      goto LABEL_209;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (!os_log_type_enabled(v70, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v85 = "nw_protocol_http_messaging_connected";
      v72 = "%{public}s called with null protocol";
    }

    else if (v82 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type;
      v74 = os_log_type_enabled(v70, type);
      if (backtrace_string)
      {
        if (v74)
        {
          *buf = 136446466;
          v85 = "nw_protocol_http_messaging_connected";
          v86 = 2082;
          v87 = backtrace_string;
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_209:
        if (!v69)
        {
          return;
        }

        goto LABEL_210;
      }

      if (!v74)
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v85 = "nw_protocol_http_messaging_connected";
      v72 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (!os_log_type_enabled(v70, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v85 = "nw_protocol_http_messaging_connected";
      v72 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_208;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v85 = "nw_protocol_http_messaging_connected";
    v69 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (!__nwlog_fault(v69, &type, &v82))
    {
      goto LABEL_209;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v82 != 1)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (!os_log_type_enabled(v70, type))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        v85 = "nw_protocol_http_messaging_connected";
        v72 = "%{public}s called with null http_messaging, backtrace limit exceeded";
        goto LABEL_208;
      }

      v75 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type;
      v76 = os_log_type_enabled(v70, type);
      if (!v75)
      {
        if (!v76)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        v85 = "nw_protocol_http_messaging_connected";
        v72 = "%{public}s called with null http_messaging, no backtrace";
        goto LABEL_208;
      }

      if (v76)
      {
        *buf = 136446466;
        v85 = "nw_protocol_http_messaging_connected";
        v86 = 2082;
        v87 = v75;
        v77 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
LABEL_165:
        _os_log_impl(&dword_181A37000, v70, v71, v77, buf, 0x16u);
      }

LABEL_166:
      free(v75);
      if (!v69)
      {
        return;
      }

LABEL_210:
      free(v69);
      return;
    }

    v70 = __nwlog_obj();
    v71 = type;
    if (!os_log_type_enabled(v70, type))
    {
      goto LABEL_209;
    }

    *buf = 136446210;
    v85 = "nw_protocol_http_messaging_connected";
    v72 = "%{public}s called with null http_messaging";
LABEL_208:
    _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
    goto LABEL_209;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v85 = "nw_protocol_http_messaging_connected";
    v69 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (!__nwlog_fault(v69, &type, &v82))
    {
      goto LABEL_209;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (!os_log_type_enabled(v70, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v85 = "nw_protocol_http_messaging_connected";
      v72 = "%{public}s called with null other_protocol";
      goto LABEL_208;
    }

    if (v82 != 1)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (!os_log_type_enabled(v70, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v85 = "nw_protocol_http_messaging_connected";
      v72 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_208;
    }

    v75 = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v71 = type;
    v78 = os_log_type_enabled(v70, type);
    if (!v75)
    {
      if (!v78)
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v85 = "nw_protocol_http_messaging_connected";
      v72 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_208;
    }

    if (v78)
    {
      *buf = 136446466;
      v85 = "nw_protocol_http_messaging_connected";
      v86 = 2082;
      v87 = v75;
      v77 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_165;
    }

    goto LABEL_166;
  }

  v3 = *(handle + 172);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v85 = "nw_protocol_http_messaging_connected";
        v86 = 2082;
        v87 = handle + 260;
        v88 = 2080;
        v89 = " ";
        v18 = "%{public}s %{public}s%signoring connected";
        v19 = v17;
        v20 = OS_LOG_TYPE_INFO;
LABEL_30:
        _os_log_impl(&dword_181A37000, v19, v20, v18, buf, 0x20u);
      }
    }
  }

  else
  {
    v4 = *(handle + 6);
    if (v4)
    {
      nw_protocol_connected(v4, a2);
      if (*(handle + 4) != a2)
      {
        return;
      }

      if ((*(handle + 172) & 2) == 0 && gLogDatapath == 1)
      {
        v80 = __nwlog_obj();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v85 = "nw_http_messaging_get_http_version_from_alpn";
          v86 = 2082;
          v87 = handle + 260;
          v88 = 2080;
          v89 = " ";
          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        }
      }

      v6 = nw_protocol_copy_info(*(handle + 4));
      v7 = v6;
      if (v6 && (object = _nw_array_copy_last_object(v6)) != 0)
      {
        v9 = object;
        if (nw_protocol_metadata_is_tls(object))
        {
          v10 = v9;
          v11 = sec_protocol_metadata_copy_negotiated_protocol();
          if ((*(handle + 172) & 2) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446978;
              v85 = "nw_http_messaging_get_http_version_from_alpn";
              v86 = 2082;
              v87 = handle + 260;
              v88 = 2080;
              v89 = " ";
              v90 = 2082;
              v91 = v11;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFound TLS metadata with ALPN %{public}s", buf, 0x2Au);
            }
          }

          if (v11)
          {
            if (*v11 == 104 && *(v11 + 1) == 50 && !*(v11 + 2))
            {
              v58 = 4;
            }

            else
            {
              if (strcmp(v11, "http/1.1"))
              {
                __nwlog_obj();
                *buf = 136446466;
                v85 = "nw_http_messaging_get_http_version_from_alpn";
                v86 = 2080;
                v87 = v11;
                v13 = _os_log_send_and_compose_impl();
                type = OS_LOG_TYPE_ERROR;
                v82 = 0;
                if (__nwlog_fault(v13, &type, &v82))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v14 = __nwlog_obj();
                    v15 = type;
                    if (os_log_type_enabled(v14, type))
                    {
                      *buf = 136446466;
                      v85 = "nw_http_messaging_get_http_version_from_alpn";
                      v86 = 2080;
                      v87 = v11;
                      v16 = "%{public}s Invalid TLS ALPN %s";
LABEL_125:
                      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x16u);
                    }
                  }

                  else if (v82 == 1)
                  {
                    v59 = __nw_create_backtrace_string();
                    v14 = __nwlog_obj();
                    v15 = type;
                    v60 = os_log_type_enabled(v14, type);
                    if (v59)
                    {
                      if (v60)
                      {
                        *buf = 136446722;
                        v85 = "nw_http_messaging_get_http_version_from_alpn";
                        v86 = 2080;
                        v87 = v11;
                        v88 = 2082;
                        v89 = v59;
                        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Invalid TLS ALPN %s, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v59);
                      goto LABEL_126;
                    }

                    if (v60)
                    {
                      *buf = 136446466;
                      v85 = "nw_http_messaging_get_http_version_from_alpn";
                      v86 = 2080;
                      v87 = v11;
                      v16 = "%{public}s Invalid TLS ALPN %s, no backtrace";
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v14 = __nwlog_obj();
                    v15 = type;
                    if (os_log_type_enabled(v14, type))
                    {
                      *buf = 136446466;
                      v85 = "nw_http_messaging_get_http_version_from_alpn";
                      v86 = 2080;
                      v87 = v11;
                      v16 = "%{public}s Invalid TLS ALPN %s, backtrace limit exceeded";
                      goto LABEL_125;
                    }
                  }
                }

LABEL_126:
                if (v13)
                {
                  free(v13);
                }

                v58 = 0;
                goto LABEL_129;
              }

              v58 = 3;
            }

LABEL_129:
            free(v11);
            goto LABEL_175;
          }

          v58 = 3;
LABEL_175:
          os_release(v10);
          goto LABEL_176;
        }

        if (_nw_protocol_metadata_is_quic(v9))
        {
          v10 = nw_quic_copy_sec_protocol_metadata(v9);
          v23 = sec_protocol_metadata_copy_negotiated_protocol();
          if ((*(handle + 172) & 2) == 0)
          {
            v24 = __nwlog_obj();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 136446978;
              v85 = "nw_http_messaging_get_http_version_from_alpn";
              v86 = 2082;
              v87 = handle + 260;
              v88 = 2080;
              v89 = " ";
              v90 = 2082;
              v91 = v23;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFound QUIC metadata with ALPN %{public}s", buf, 0x2Au);
            }
          }

          if (v23)
          {
            if (*v23 == 104 && v23[1] == 51 && !v23[2])
            {
              v58 = 5;
LABEL_137:
              free(v23);
              goto LABEL_174;
            }

            __nwlog_obj();
            *buf = 136446466;
            v85 = "nw_http_messaging_get_http_version_from_alpn";
            v86 = 2080;
            v87 = v23;
            v25 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v82 = 0;
            if (__nwlog_fault(v25, &type, &v82))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v26 = __nwlog_obj();
                v27 = type;
                if (os_log_type_enabled(v26, type))
                {
                  *buf = 136446466;
                  v85 = "nw_http_messaging_get_http_version_from_alpn";
                  v86 = 2080;
                  v87 = v23;
                  v28 = "%{public}s Invalid QUIC ALPN %s";
LABEL_133:
                  _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0x16u);
                }
              }

              else if (v82 == 1)
              {
                v61 = __nw_create_backtrace_string();
                v26 = __nwlog_obj();
                v27 = type;
                v62 = os_log_type_enabled(v26, type);
                if (v61)
                {
                  if (v62)
                  {
                    *buf = 136446722;
                    v85 = "nw_http_messaging_get_http_version_from_alpn";
                    v86 = 2080;
                    v87 = v23;
                    v88 = 2082;
                    v89 = v61;
                    _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Invalid QUIC ALPN %s, dumping backtrace:%{public}s", buf, 0x20u);
                  }

                  free(v61);
                  goto LABEL_134;
                }

                if (v62)
                {
                  *buf = 136446466;
                  v85 = "nw_http_messaging_get_http_version_from_alpn";
                  v86 = 2080;
                  v87 = v23;
                  v28 = "%{public}s Invalid QUIC ALPN %s, no backtrace";
                  goto LABEL_133;
                }
              }

              else
              {
                v26 = __nwlog_obj();
                v27 = type;
                if (os_log_type_enabled(v26, type))
                {
                  *buf = 136446466;
                  v85 = "nw_http_messaging_get_http_version_from_alpn";
                  v86 = 2080;
                  v87 = v23;
                  v28 = "%{public}s Invalid QUIC ALPN %s, backtrace limit exceeded";
                  goto LABEL_133;
                }
              }
            }

LABEL_134:
            if (v25)
            {
              free(v25);
            }

            v58 = 0;
            goto LABEL_137;
          }

          if (nw_protocol_waiting_for_output(*(handle + 4), handle))
          {
            v58 = 5;
            goto LABEL_174;
          }

          __nwlog_obj();
          *buf = 136446210;
          v85 = "nw_http_messaging_get_http_version_from_alpn";
          v63 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v82 = 0;
          if (__nwlog_fault(v63, &type, &v82))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v64 = __nwlog_obj();
              v65 = type;
              if (os_log_type_enabled(v64, type))
              {
                *buf = 136446210;
                v85 = "nw_http_messaging_get_http_version_from_alpn";
                v66 = "%{public}s Missing QUIC ALPN";
LABEL_170:
                _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0xCu);
              }
            }

            else if (v82 == 1)
            {
              v67 = __nw_create_backtrace_string();
              v64 = __nwlog_obj();
              v65 = type;
              v68 = os_log_type_enabled(v64, type);
              if (v67)
              {
                if (v68)
                {
                  *buf = 136446466;
                  v85 = "nw_http_messaging_get_http_version_from_alpn";
                  v86 = 2082;
                  v87 = v67;
                  _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Missing QUIC ALPN, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v67);
                goto LABEL_171;
              }

              if (v68)
              {
                *buf = 136446210;
                v85 = "nw_http_messaging_get_http_version_from_alpn";
                v66 = "%{public}s Missing QUIC ALPN, no backtrace";
                goto LABEL_170;
              }
            }

            else
            {
              v64 = __nwlog_obj();
              v65 = type;
              if (os_log_type_enabled(v64, type))
              {
                *buf = 136446210;
                v85 = "nw_http_messaging_get_http_version_from_alpn";
                v66 = "%{public}s Missing QUIC ALPN, backtrace limit exceeded";
                goto LABEL_170;
              }
            }
          }

LABEL_171:
          if (v63)
          {
            free(v63);
          }

          v58 = 0;
LABEL_174:
          if (!v10)
          {
LABEL_176:
            os_release(v9);
            os_release(v7);
            *(handle + 64) = v58;
            if (v58 > 3)
            {
              if (v58 == 4)
              {
                if (nw_protocol_http2_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
                }

                v29 = &nw_protocol_http2_identifier::http2_protocol_identifier;
                if (*(handle + 172))
                {
                  goto LABEL_58;
                }
              }

              else
              {
                if (nw_protocol_http3_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                }

                v29 = &nw_protocol_http3_identifier::http3_protocol_identifier;
                if (*(handle + 172))
                {
                  goto LABEL_58;
                }
              }

              if (nw_settings_get_http_connection_coalescing_enabled())
              {
                if (nw_endpoint_is_registered(*(handle + 14)))
                {
                  nw_endpoint_add_edges_for_instance(*(handle + 14), handle, 1);
                }

                else if ((*(handle + 172) & 2) == 0)
                {
                  v79 = __nwlog_obj();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v85 = "nw_protocol_http_messaging_connected";
                    v86 = 2082;
                    v87 = handle + 260;
                    v88 = 2080;
                    v89 = " ";
                    _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sconnection's endpoint is not registered, cannot add edges", buf, 0x20u);
                  }
                }
              }

LABEL_58:
              internal = nw_protocol_create_internal(v29, *(handle + 14), *(handle + 12), 0);
              *(handle + 19) = internal;
              *(internal + 16) = *(handle + 2);
              v31 = *(handle + 6);
              nw_protocol_set_input_handler(handle, 0);
              nw_http_messaging_add_to_version_specific_protocol(handle, v31);
              nw_protocol_add_listen_handler(*(handle + 19), (handle + 64));
              nw_protocol_replace_input_handler(*(handle + 4), handle, v31[4]);
              nw_protocol_set_output_handler(handle, 0);
              *(handle + 172) |= 0x80u;
              nw_protocol_connect(v31[4], v31);
              while (1)
              {
                v34 = *(handle + 29);
                v33 = *(handle + 30);
                v35 = v34;
                if (v34 != v33)
                {
                  while (*(v35 + 8) == 2)
                  {
                    v35 += 16;
                    if (v35 == v33)
                    {
                      v35 = *(handle + 30);
                      break;
                    }
                  }
                }

                if (v33 == v35)
                {
                  v57 = *(handle + 172);
                  if ((v57 & 0x80) != 0)
                  {
                    *(handle + 172) = v57 & 0xFF7F;
                  }

                  else
                  {
                    nw_http_messaging_destroy(handle);
                  }

                  return;
                }

                v36 = *v35;
                v37 = *(v35 + 8);
                v38 = v35 + 16;
                if (v35 + 16 != v33)
                {
                  v39 = v33 - v35 - 32;
                  if (v39 >= 0x10)
                  {
                    v40 = v35 - v34;
                    v41 = (v39 >> 4) + 1;
                    v42 = 16 * (v41 & 0x1FFFFFFFFFFFFFFELL);
                    v35 += v42;
                    v43 = v34 + v40 + 24;
                    v44 = v41 & 0x1FFFFFFFFFFFFFFELL;
                    do
                    {
                      v45 = *(v43 + 8);
                      *(v43 - 24) = *(v43 - 8);
                      *(v43 - 8) = v45;
                      LODWORD(v45) = *(v43 + 16);
                      *(v43 - 16) = *v43;
                      *v43 = v45;
                      v43 += 32;
                      v44 -= 2;
                    }

                    while (v44);
                    if (v41 == (v41 & 0x1FFFFFFFFFFFFFFELL))
                    {
                      goto LABEL_73;
                    }

                    v38 += v42;
                  }

                  do
                  {
                    *v35 = *v38;
                    *(v35 + 8) = *(v38 + 8);
                    v38 += 16;
                    v35 += 16;
                  }

                  while (v38 != v33);
                }

LABEL_73:
                *(handle + 30) = v35;
                parameters = nw_protocol_get_parameters(v36);
                if (nw_protocol_http_messaging_accept(handle, *(handle + 14), parameters) && (nw_http_messaging_add_to_version_specific_protocol(handle, v36) & 1) != 0)
                {
                  if (v37 == 1)
                  {
                    nw_protocol_connect(*(v36 + 32), v36);
                  }
                }

                else
                {
                  if ((*(handle + 172) & 2) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v47 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136446722;
                      v85 = "nw_protocol_http_messaging_connected";
                      v86 = 2082;
                      v87 = handle + 260;
                      v88 = 2080;
                      v89 = " ";
                      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sVersion specific protocol cannot accept stream", buf, 0x20u);
                    }
                  }

                  v49 = *(handle + 30);
                  v48 = *(handle + 31);
                  if (v49 < v48)
                  {
                    *v49 = v36;
                    *(v49 + 8) = 2;
                    v32 = v49 + 16;
                  }

                  else
                  {
                    v50 = *(handle + 29);
                    v51 = v49 - v50;
                    v52 = (v49 - v50) >> 4;
                    v53 = v52 + 1;
                    if ((v52 + 1) >> 60)
                    {
                      std::string::__throw_length_error[abi:nn200100]();
                    }

                    v54 = v48 - v50;
                    if (v54 >> 3 > v53)
                    {
                      v53 = v54 >> 3;
                    }

                    if (v54 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v55 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v55 = v53;
                    }

                    if (v55)
                    {
                      if (!(v55 >> 60))
                      {
                        operator new();
                      }

                      std::string::__throw_length_error[abi:nn200100]();
                    }

                    v56 = 16 * v52;
                    *v56 = v36;
                    *(v56 + 8) = 2;
                    v32 = 16 * v52 + 16;
                    memcpy(0, v50, v51);
                    *(handle + 29) = 0;
                    *(handle + 30) = v32;
                    *(handle + 31) = 0;
                    if (v50)
                    {
                      operator delete(v50);
                    }
                  }

                  *(handle + 30) = v32;
                  nw_protocol_error(v36, handle);
                  nw_protocol_disconnected(v36, handle);
                }
              }
            }

            if (!v58)
            {
              nw_protocol_http_messaging_error(handle, handle);
              nw_protocol_http_messaging_disconnected(handle, handle);
              return;
            }

LABEL_52:
            if (nw_protocol_http1_identifier::onceToken != -1)
            {
              dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
            }

            v29 = &nw_protocol_http1_identifier::http1_protocol_identifier;
            if (*(handle + 16) != *(handle + 17))
            {
              if ((*(handle + 172) & 2) == 0 && gLogDatapath == 1)
              {
                v81 = __nwlog_obj();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v85 = "nw_protocol_http_messaging_connected";
                  v86 = 2082;
                  v87 = handle + 260;
                  v88 = 2080;
                  v89 = " ";
                  _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sremoving instance since http_joining handles joining", buf, 0x20u);
                }
              }

              nw_protocol_remove_instance(handle);
            }

            goto LABEL_58;
          }

          goto LABEL_175;
        }

        os_release(v9);
      }

      else
      {
        if ((*(handle + 172) & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            v85 = "nw_http_messaging_get_http_version_from_alpn";
            v86 = 2082;
            v87 = handle + 260;
            v88 = 2080;
            v89 = " ";
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sTop metadata isn't TLS, assuming HTTP/1.1", buf, 0x20u);
          }
        }

        if (!v7)
        {
          goto LABEL_51;
        }
      }

      os_release(v7);
LABEL_51:
      *(handle + 64) = 3;
      goto LABEL_52;
    }

    if ((v3 & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v85 = "nw_protocol_http_messaging_connected";
        v86 = 2082;
        v87 = handle + 260;
        v88 = 2080;
        v89 = " ";
        v18 = "%{public}s %{public}s%sno default input handler, ignoring connected";
        v19 = v21;
        v20 = OS_LOG_TYPE_ERROR;
        goto LABEL_30;
      }
    }
  }
}

uint64_t nw_protocol_http_messaging_connect(nw_protocol *a1, nw_protocol *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v117))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null protocol";
      goto LABEL_65;
    }

    if (v117 != OS_LOG_TYPE_INFO)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v70 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (!v70)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_65;
    }

    if (!v70)
    {
      goto LABEL_137;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v71 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_136:
    _os_log_impl(&dword_181A37000, v9, v10, v71, buf, 0x16u);
    goto LABEL_137;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v117))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null http_messaging";
      goto LABEL_65;
    }

    if (v117 != OS_LOG_TYPE_INFO)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v72 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (!v72)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null http_messaging, no backtrace";
      goto LABEL_65;
    }

    if (!v72)
    {
      goto LABEL_137;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v71 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
    goto LABEL_136;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v117))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null other_protocol";
      goto LABEL_65;
    }

    if (v117 != OS_LOG_TYPE_INFO)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v73 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (!v73)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_65;
    }

    if (v73)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v71 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_136;
    }

LABEL_137:
    free(backtrace_string);
    goto LABEL_87;
  }

  if (!a1->output_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v117))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s connect requires an output handler";
    }

    else
    {
      if (v117 == OS_LOG_TYPE_INFO)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v29)
        {
          if (v32)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http_messaging_connect";
            *&buf[12] = 2082;
            *&buf[14] = v29;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s connect requires an output handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_87;
        }

        if (!v32)
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v11 = "%{public}s connect requires an output handler, no backtrace";
        v55 = v30;
        v56 = v31;
LABEL_66:
        v57 = 12;
LABEL_86:
        _os_log_impl(&dword_181A37000, v55, v56, v11, buf, v57);
        goto LABEL_87;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s connect requires an output handler, backtrace limit exceeded";
    }

LABEL_65:
    v55 = v9;
    v56 = v10;
    goto LABEL_66;
  }

  v5 = *(handle + 6);
  if (v5 != a2)
  {
    v6 = *(handle + 29);
    v7 = *(handle + 30);
    if (v6 != v7)
    {
      while (*v6 != a2)
      {
        v6 += 16;
        if (v6 == v7)
        {
          goto LABEL_26;
        }
      }
    }

    if (v6 != v7)
    {
      result = 1;
      *(v6 + 8) = 1;
      return result;
    }

LABEL_26:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v8 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v117))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v11 = "%{public}s Protocol %p isn't an input handler of http messaging";
      goto LABEL_85;
    }

    if (v117 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v11 = "%{public}s Protocol %p isn't an input handler of http messaging, backtrace limit exceeded";
      goto LABEL_85;
    }

    v53 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    v28 = type[0];
    v54 = os_log_type_enabled(gLogObj, type[0]);
    if (v53)
    {
      if (v54)
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2082;
        v122 = v53;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Protocol %p isn't an input handler of http messaging, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v53);
      goto LABEL_87;
    }

    if (v54)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v11 = "%{public}s Protocol %p isn't an input handler of http messaging, no backtrace";
LABEL_85:
      v55 = v27;
      v56 = v28;
      v57 = 22;
      goto LABEL_86;
    }

LABEL_87:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  parameters = nw_protocol_get_parameters(v5);
  v14 = _nw_parameters_shallow_copy(parameters, 1);
  v15 = handle[104];
  if ((v15 & 1) != 0 && *(handle + 12))
  {
    v16 = v14;
    os_release(*(handle + 12));
    v14 = v16;
    v15 = handle[104];
  }

  *(handle + 12) = v14;
  handle[104] = v15 | 1;
  v17 = nw_parameters_copy_protocol_options_legacy(v14, handle);
  if (!nw_http_messaging_options_is_websocket(v17))
  {
    v33 = 0;
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v18 = nw_http_messaging_options_copy_http2_options(v17);
  v19 = nw_http_messaging_options_copy_http3_options(v17);
  if (!(v18 | v19))
  {
    v33 = 0;
    *(handle + 172) |= 0x100u;
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v20 = v19;
  v21 = v17;
  v22 = v21;
  if (!v21)
  {
    v85 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
    v86 = _os_log_send_and_compose_impl();

    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v86, type, &v117))
    {
      if (type[0] == 17)
      {
        v87 = __nwlog_obj();
        v88 = type[0];
        if (os_log_type_enabled(v87, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null options", buf, 0xCu);
        }
      }

      else if (v117 == OS_LOG_TYPE_INFO)
      {
        v97 = __nw_create_backtrace_string();
        v87 = __nwlog_obj();
        v98 = type[0];
        v99 = os_log_type_enabled(v87, type[0]);
        if (v97)
        {
          if (v99)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
            *&buf[12] = 2082;
            *&buf[14] = v97;
            _os_log_impl(&dword_181A37000, v87, v98, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v97);
          goto LABEL_241;
        }

        if (v99)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v87, v98, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v87 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v87, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v87, v104, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_241:
    if (v86)
    {
      free(v86);
    }

    goto LABEL_243;
  }

  v23 = nw_protocol_copy_http_messaging_definition_onceToken;
  v24 = v21;
  if (v23 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v25 = nw_protocol_options_matches_definition(v24, nw_protocol_copy_http_messaging_definition_definition);

  if (v25)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v122 = __Block_byref_object_copy__7;
    v123 = __Block_byref_object_dispose__8;
    v124 = 0;
    *type = MEMORY[0x1E69E9820];
    *&type[8] = 3221225472;
    *&type[16] = __nw_http_messaging_options_copy_retry_with_h1_handler_block_invoke;
    v119 = &unk_1E6A3A858;
    v120 = buf;
    nw_protocol_options_access_handle(v24, type);
    v26 = _Block_copy(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);

    goto LABEL_244;
  }

LABEL_243:
  v26 = 0;
LABEL_244:

  nw_http_messaging_options_set_retry_with_h1_handler(v22, 0);
  if (v26)
  {
    v26[2](v26, *(handle + 12), &__block_literal_global_22_80755);
    _Block_release(v26);
  }

  if (v20)
  {
    os_release(v20);
  }

  if (v18)
  {
    os_release(v18);
    v33 = 1;
    if (!v17)
    {
      goto LABEL_37;
    }

LABEL_36:
    os_release(v17);
    goto LABEL_37;
  }

  v33 = 1;
  if (v17)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (!v33)
  {
    v35 = nw_parameters_copy_default_protocol_stack(*(handle + 12));
    v36 = nw_parameters_copy_protocol_options_legacy(*(handle + 12), handle);
    v37 = nw_protocol_options_copy(v36);
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v38 = nw_protocol_copy_http_messaging_definition_definition;
    nw_parameters_set_protocol_instance(v37, v39, handle);
    if (v38)
    {
      os_release(v38);
    }

    nw_protocol_stack_replace_protocol_with_handle(v35, handle, v37);
    if (nw_endpoint_is_registered(*(handle + 14)))
    {
      nw_endpoint_add_edges_for_instance(*(handle + 14), handle, 0);
    }

    v115 = v35;
    v40 = v36;
    v41 = v40;
    if (v40)
    {
      v42 = nw_protocol_copy_http_messaging_definition_onceToken;
      v43 = v40;
      if (v42 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      v44 = nw_protocol_options_matches_definition(v43, nw_protocol_copy_http_messaging_definition_definition);

      if (v44)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x2020000000;
        LOBYTE(v119) = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_messaging_options_get_early_data_enabled_block_invoke;
        v122 = &unk_1E6A3A858;
        v123 = type;
        nw_protocol_options_access_handle(v43, buf);
        v45 = *(*&type[8] + 24);
        _Block_object_dispose(type, 8);
        goto LABEL_52;
      }

      v78 = __nwlog_obj();
      *type = 136446210;
      *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
      v114 = _os_log_send_and_compose_impl();

      v117 = OS_LOG_TYPE_ERROR;
      v116 = 0;
      if (__nwlog_fault(v114, &v117, &v116))
      {
        if (v117 == OS_LOG_TYPE_FAULT)
        {
          v79 = __nwlog_obj();
          v80 = v117;
          if (os_log_type_enabled(v79, v117))
          {
            *type = 136446210;
            *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
            _os_log_impl(&dword_181A37000, v79, v80, "%{public}s protocol options are not http_messaging", type, 0xCu);
          }
        }

        else
        {
          if (v116 != 1)
          {
            v101 = __nwlog_obj();
            v102 = v117;
            if (os_log_type_enabled(v101, v117))
            {
              *type = 136446210;
              *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
              _os_log_impl(&dword_181A37000, v101, v102, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", type, 0xCu);
            }

            goto LABEL_229;
          }

          v92 = __nw_create_backtrace_string();
          v79 = __nwlog_obj();
          v113 = v117;
          v93 = os_log_type_enabled(v79, v117);
          if (v92)
          {
            if (v93)
            {
              *type = 136446466;
              *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
              *&type[12] = 2082;
              *&type[14] = v92;
              _os_log_impl(&dword_181A37000, v79, v113, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(v92);
            goto LABEL_229;
          }

          if (v93)
          {
            *type = 136446210;
            *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
            _os_log_impl(&dword_181A37000, v79, v113, "%{public}s protocol options are not http_messaging, no backtrace", type, 0xCu);
          }
        }
      }

LABEL_229:
      if (v114)
      {
        free(v114);
      }

      v45 = 0;
LABEL_52:

      v46 = v43;
      v47 = nw_protocol_copy_http_messaging_definition_onceToken;
      v48 = v46;
      if (v47 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      v49 = nw_protocol_options_matches_definition(v48, nw_protocol_copy_http_messaging_definition_definition);

      if (v49)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v122 = __Block_byref_object_copy__75915;
        v123 = __Block_byref_object_dispose__75916;
        v124 = 0;
        *type = MEMORY[0x1E69E9820];
        *&type[8] = 3221225472;
        *&type[16] = __nw_http_messaging_options_copy_storage_block_invoke;
        v119 = &unk_1E6A3A858;
        v120 = buf;
        nw_protocol_options_access_handle(v48, type);
        v50 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        goto LABEL_56;
      }

      v81 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_copy_storage";
      v82 = _os_log_send_and_compose_impl();

      v117 = OS_LOG_TYPE_ERROR;
      v116 = 0;
      if (!__nwlog_fault(v82, &v117, &v116))
      {
        goto LABEL_235;
      }

      if (v117 == OS_LOG_TYPE_FAULT)
      {
        v83 = __nwlog_obj();
        v84 = v117;
        if (os_log_type_enabled(v83, v117))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s protocol options are not http_messaging", buf, 0xCu);
        }
      }

      else if (v116 == 1)
      {
        v94 = __nw_create_backtrace_string();
        v83 = __nwlog_obj();
        v95 = v117;
        v96 = os_log_type_enabled(v83, v117);
        if (v94)
        {
          if (v96)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_copy_storage";
            *&buf[12] = 2082;
            *&buf[14] = v94;
            _os_log_impl(&dword_181A37000, v83, v95, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v94);
          goto LABEL_235;
        }

        if (v96)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          _os_log_impl(&dword_181A37000, v83, v95, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v83 = __nwlog_obj();
        v103 = v117;
        if (os_log_type_enabled(v83, v117))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          _os_log_impl(&dword_181A37000, v83, v103, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_235:
      if (v82)
      {
        free(v82);
      }

      v50 = 0;
      goto LABEL_56;
    }

    v74 = __nwlog_obj();
    *type = 136446210;
    *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
    v75 = _os_log_send_and_compose_impl();

    v117 = OS_LOG_TYPE_ERROR;
    v116 = 0;
    if (__nwlog_fault(v75, &v117, &v116))
    {
      if (v117 == OS_LOG_TYPE_FAULT)
      {
        v76 = __nwlog_obj();
        v77 = v117;
        if (os_log_type_enabled(v76, v117))
        {
          *type = 136446210;
          *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null options", type, 0xCu);
        }

LABEL_204:

        goto LABEL_205;
      }

      if (v116 != 1)
      {
        v76 = __nwlog_obj();
        v100 = v117;
        if (os_log_type_enabled(v76, v117))
        {
          *type = 136446210;
          *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
          _os_log_impl(&dword_181A37000, v76, v100, "%{public}s called with null options, backtrace limit exceeded", type, 0xCu);
        }

        goto LABEL_204;
      }

      v89 = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v90 = v117;
      v91 = os_log_type_enabled(v76, v117);
      if (!v89)
      {
        if (v91)
        {
          *type = 136446210;
          *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
          _os_log_impl(&dword_181A37000, v76, v90, "%{public}s called with null options, no backtrace", type, 0xCu);
        }

        goto LABEL_204;
      }

      if (v91)
      {
        *type = 136446466;
        *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
        *&type[12] = 2082;
        *&type[14] = v89;
        _os_log_impl(&dword_181A37000, v76, v90, "%{public}s called with null options, dumping backtrace:%{public}s", type, 0x16u);
      }

      free(v89);
    }

LABEL_205:
    if (v75)
    {
      free(v75);
    }

    v105 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_storage";
    v106 = _os_log_send_and_compose_impl();

    v117 = OS_LOG_TYPE_ERROR;
    v116 = 0;
    if (!__nwlog_fault(v106, &v117, &v116))
    {
      goto LABEL_223;
    }

    if (v117 == OS_LOG_TYPE_FAULT)
    {
      v107 = __nwlog_obj();
      v108 = v117;
      if (os_log_type_enabled(v107, v117))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_storage";
        _os_log_impl(&dword_181A37000, v107, v108, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v116 == 1)
    {
      v109 = __nw_create_backtrace_string();
      v107 = __nwlog_obj();
      v110 = v117;
      v111 = os_log_type_enabled(v107, v117);
      if (v109)
      {
        if (v111)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          *&buf[12] = 2082;
          *&buf[14] = v109;
          _os_log_impl(&dword_181A37000, v107, v110, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v109);
        goto LABEL_223;
      }

      if (v111)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_storage";
        _os_log_impl(&dword_181A37000, v107, v110, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v107 = __nwlog_obj();
      v112 = v117;
      if (os_log_type_enabled(v107, v117))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_storage";
        _os_log_impl(&dword_181A37000, v107, v112, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_223:
    if (v106)
    {
      free(v106);
    }

    v45 = 0;
    v50 = 0;
LABEL_56:

    v51 = handle[168];
    if (v51)
    {
      v58 = *(handle + 20);
      v52 = v115;
      if (v58)
      {
        os_release(v58);
        v51 = handle[168];
      }
    }

    else
    {
      v52 = v115;
    }

    *(handle + 20) = v50;
    handle[168] = v51 | 1;
    if (((v50 != 0) & v45) != 1)
    {
      goto LABEL_106;
    }

    v59 = nw_parameters_copy_protocol_options_legacy(*(handle + 12), *(handle + 4));
    if (v59)
    {
      v60 = v59;
      if (_nw_protocol_options_is_quic_connection(v60))
      {
      }

      else
      {
        is_quic_stream = _nw_protocol_options_is_quic_stream(v60);

        if (!is_quic_stream)
        {
LABEL_93:
          os_release(v60);
          v52 = v115;
LABEL_106:
          result = nw_protocol_connect(a1->output_handler->flow_id, a1);
          v68 = result;
          if (v37)
          {
            os_release(v37);
            result = v68;
          }

          if (v41)
          {
            os_release(v41);
            result = v68;
          }

          if (v52)
          {
            os_release(v52);
            return v68;
          }

          return result;
        }
      }

      nw_http_messaging_setup_early_data(handle, v41, v60);
      goto LABEL_93;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v61 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v117 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v61, type, &v117))
    {
      if (type[0] == 17)
      {
        v62 = __nwlog_obj();
        v63 = type[0];
        if (!os_log_type_enabled(v62, type[0]))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v64 = "%{public}s Output handler has no options";
        goto LABEL_103;
      }

      if (v117 != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = type[0];
        if (!os_log_type_enabled(v62, type[0]))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v64 = "%{public}s Output handler has no options, backtrace limit exceeded";
        goto LABEL_103;
      }

      v66 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = type[0];
      v67 = os_log_type_enabled(v62, type[0]);
      if (v66)
      {
        if (v67)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_messaging_connect";
          *&buf[12] = 2082;
          *&buf[14] = v66;
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Output handler has no options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
        goto LABEL_104;
      }

      if (v67)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v64 = "%{public}s Output handler has no options, no backtrace";
LABEL_103:
        _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
      }
    }

LABEL_104:
    v52 = v115;
    if (v61)
    {
      free(v61);
    }

    goto LABEL_106;
  }

  if ((*(handle + 172) & 2) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v34 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2082;
    *&buf[14] = handle + 260;
    *&buf[22] = 2080;
    v122 = " ";
    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}s%srestarting websocket to force h1", buf, 0x20u);
    return 0;
  }

  return result;
}

uint64_t nw_http_messaging_options_is_websocket(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_is_websocket";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_is_websocket";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_is_websocket";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v13)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_is_websocket";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_is_websocket";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_24;
  }

  v3 = nw_protocol_copy_http_messaging_definition_onceToken;
  v4 = v1;
  if (v3 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

  if (!v5)
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __nw_http_messaging_options_is_websocket_block_invoke;
  v16[3] = &unk_1E6A3A858;
  v16[4] = buf;
  nw_protocol_options_access_handle(v4, v16);
  v6 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_25:

  return v6 & 1;
}

void sub_181EDDEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181EDDEE0(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[16 * v4];
  if (v12 != __dst || &v12[16 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 16 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[16 * v8];
  if (v16 != v11 || v16 >= &v11[16 * v7])
  {

    memmove(v16, v11, 16 * v7);
  }
}

uint64_t nw_endpoint_is_registered(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_registered = _nw_endpoint_is_registered(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_is_registered";
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
        v16 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_is_registered";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_registered = 0;
LABEL_3:

  return is_registered;
}

uint64_t __nw_http_messaging_options_is_websocket_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 88) & 2) != 0;
  }

  return 1;
}

void nw_protocol_error(void *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
LABEL_12:
        __nwlog_obj();
        *buf = 136446210;
        v48 = "__nw_protocol_error";
        v2 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v45 = 0;
        if (!__nwlog_fault(v2, &type, &v45))
        {
          goto LABEL_104;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_error";
          v14 = "%{public}s called with null other_protocol";
          goto LABEL_103;
        }

        if (v45 != 1)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_error";
          v14 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_103;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v42 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (!v42)
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_error";
          v14 = "%{public}s called with null other_protocol, no backtrace";
LABEL_103:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_104:
          if (!v2)
          {
            goto LABEL_37;
          }

LABEL_36:
          free(v2);
          goto LABEL_37;
        }

        if (v42)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_error";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_36;
        }

LABEL_37:
        if ((v6 & 1) == 0)
        {
          v22 = *(v3 + 40);
          if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v23 = *(v3 + 88);
            if (v23)
            {
              v24 = v23 - 1;
              *(v3 + 88) = v24;
              if (!v24)
              {
                v25 = *(v3 + 64);
                if (v25)
                {
                  *(v3 + 64) = 0;
                  v25[2](v25);
                  _Block_release(v25);
                }

                if (*(v3 + 72))
                {
                  v26 = *(v3 + 64);
                  if (v26)
                  {
                    _Block_release(v26);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v15 = *(v8 + 88);
      if (v15)
      {
        v9 = 0;
        *(v8 + 88) = v15 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    v16 = *(v10 + 56);
    if (v16)
    {
      v16(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    __nwlog_obj();
    v27 = *(v3 + 16);
    *buf = 136446722;
    v48 = "__nw_protocol_error";
    if (!v27)
    {
      v27 = "invalid";
    }

    v49 = 2082;
    v50 = v27;
    v51 = 2048;
    v52 = v3;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v28, &type, &v45))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v31 = *(v3 + 16);
      if (!v31)
      {
        v31 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_error";
      v49 = 2082;
      v50 = v31;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid error callback";
    }

    else if (v45 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v37 = os_log_type_enabled(v29, type);
      if (v36)
      {
        if (v37)
        {
          v38 = *(v3 + 16);
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446978;
          v48 = "__nw_protocol_error";
          v49 = 2082;
          v50 = v38;
          v51 = 2048;
          v52 = v3;
          v53 = 2082;
          v54 = v36;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v36);
        goto LABEL_94;
      }

      if (!v37)
      {
LABEL_94:
        if (v28)
        {
          free(v28);
        }

LABEL_25:
        if ((v9 & 1) == 0)
        {
          v17 = *(v2 + 40);
          if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
          {
            v18 = *(v2 + 88);
            if (v18)
            {
              v19 = v18 - 1;
              *(v2 + 88) = v19;
              if (!v19)
              {
                v20 = *(v2 + 64);
                if (v20)
                {
                  *(v2 + 64) = 0;
                  v20[2](v20);
                  _Block_release(v20);
                }

                if (*(v2 + 72))
                {
                  v21 = *(v2 + 64);
                  if (v21)
                  {
                    _Block_release(v21);
                  }
                }

                goto LABEL_36;
              }
            }
          }
        }

        goto LABEL_37;
      }

      v44 = *(v3 + 16);
      if (!v44)
      {
        v44 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_error";
      v49 = 2082;
      v50 = v44;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v43 = *(v3 + 16);
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_error";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x20u);
    goto LABEL_94;
  }

  __nwlog_obj();
  *buf = 136446210;
  v48 = "__nw_protocol_error";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v3, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_error";
      v35 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v40 = os_log_type_enabled(v33, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_error";
          v49 = 2082;
          v50 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v3)
        {
          goto LABEL_48;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_error";
      v35 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_error";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
  }

LABEL_99:
  if (v3)
  {
LABEL_48:
    free(v3);
  }
}

void nw_flow_error(nw_protocol *a1, nw_protocol *a2, unsigned int a3)
{
  v5 = a1;
  v126 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v7 = handle[20];
  v8 = v7;
  if (!v7)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    v109 = "nw_flow_error";
    v69 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v106 = 0;
    if (__nwlog_fault(v69, &type, &v106))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (os_log_type_enabled(v70, type))
        {
          *buf = 136446210;
          v109 = "nw_flow_error";
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v106 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v70 = __nwlog_obj();
        v73 = type;
        v74 = os_log_type_enabled(v70, type);
        if (backtrace_string)
        {
          if (v74)
          {
            *buf = 136446466;
            v109 = "nw_flow_error";
            v110 = 2082;
            v111 = backtrace_string;
            _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_116;
        }

        if (v74)
        {
          *buf = 136446210;
          v109 = "nw_flow_error";
          _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v70 = __nwlog_obj();
        v84 = type;
        if (os_log_type_enabled(v70, type))
        {
          *buf = 136446210;
          v109 = "nw_flow_error";
          _os_log_impl(&dword_181A37000, v70, v84, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_116:
    if (v69)
    {
      free(v69);
    }

    goto LABEL_86;
  }

  v9 = v7;
  mode = v9->mode;

  if (mode == 2)
  {
    v11 = nw_endpoint_handler_copy_flow(v9);
    if (a3)
    {
      if (a3 >> 8 == 16776959)
      {
        dns_error = nw_error_create_dns_error(a3);
      }

      else if (a3 + 9899 > 0x63)
      {
        if (a3 + 11999 > 0x1F3)
        {
          dns_error = nw_error_create_posix_error(a3);
        }

        else
        {
          dns_error = nw_error_create_wifi_aware_error(a3);
        }
      }

      else
      {
        dns_error = nw_error_create_tls_error(a3);
      }

      v28 = handle[40];
      handle[40] = dns_error;

      v29 = handle[40];
      if (v29)
      {
        objc_storeStrong(v11 + 109, v29);
        *(v11 + 36) &= ~1u;
      }

      v30 = v9;
      v31 = *(v30 + 284);

      if ((v31 & 0x20) == 0)
      {
        v32 = v30;
        v33 = *(v30 + 284);

        if ((v33 & 0x40) != 0)
        {
          goto LABEL_81;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

        v96 = v5;
        log = v21;
        v103 = a2;
        v34 = v32;

        v35 = v34;
        v36 = *(v30 + 284);

        if (v36)
        {
          v37 = "dry-run ";
        }

        else
        {
          v37 = "";
        }

        v38 = nw_endpoint_handler_copy_endpoint(v35);
        v39 = v38;
        if (v38)
        {
          logging_description = _nw_endpoint_get_logging_description(v38);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v41 = v35;
        v42 = v41;
        v43 = v41[30];
        if (v43 > 5)
        {
          v44 = "unknown-state";
        }

        else
        {
          v44 = off_1E6A31048[v43];
        }

        v93 = v44;

        v45 = v42;
        v46 = v45;
        v47 = v9->mode;
        v92 = v34 + 184;
        v48 = logging_description;
        if (v47 > 2)
        {
          if (v47 == 3)
          {
            v49 = v11;
            v50 = "proxy";
            goto LABEL_70;
          }

          if (v47 != 4)
          {
            if (v47 == 5)
            {
              v49 = v11;
              v50 = "transform";
              goto LABEL_70;
            }

            goto LABEL_67;
          }

          v49 = v11;
          v50 = "fallback";
        }

        else
        {
          if (!v47)
          {
            v49 = v11;
            v50 = "path";
            goto LABEL_70;
          }

          if (v47 != 1)
          {
            if (v47 == 2)
            {
              v49 = v11;
              v50 = nw_endpoint_flow_mode_string(v45[33]);
              goto LABEL_70;
            }

LABEL_67:
            v49 = v11;
            v50 = "unknown-mode";
            goto LABEL_70;
          }

          v49 = v11;
          v50 = "resolver";
        }

LABEL_70:

        v59 = v46;
        os_unfair_lock_lock(v59 + 28);
        v60 = v59[8];
        os_unfair_lock_unlock(v59 + 28);

        name = "?";
        if (v103 && v103->identifier)
        {
          name = v103->identifier->name;
        }

        v11 = v49;
        v62 = handle[40];
        *buf = 136448258;
        v109 = "nw_flow_error";
        v110 = 2082;
        v111 = v92;
        v112 = 2082;
        v113 = v37;
        v114 = 2082;
        v115 = v48;
        v116 = 2082;
        v117 = v93;
        v118 = 2082;
        v119 = v50;
        v120 = 2114;
        v121 = v60;
        v122 = 2082;
        v123 = name;
        v124 = 2114;
        v125 = v62;
        v21 = log;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol (%{public}s) sent error: %{public}@", buf, 0x5Cu);

        v5 = v96;
        goto LABEL_80;
      }

      if ((nw_endpoint_handler_get_logging_disabled(v30) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          logb = v21;
          v75 = a2;
          v90 = v11;
          id_string = nw_endpoint_handler_get_id_string(v30);
          v97 = nw_endpoint_handler_dry_run_string(v30);
          v76 = nw_endpoint_handler_copy_endpoint(v30);
          v77 = nw_endpoint_get_logging_description(v76);
          v78 = nw_endpoint_handler_state_string(v30);
          v79 = nw_endpoint_handler_mode_string(v30);
          v80 = nw_endpoint_handler_copy_current_path(v30);
          v81 = v80;
          v82 = "?";
          if (v75 && v75->identifier)
          {
            v82 = v75->identifier->name;
          }

          v83 = handle[40];
          *buf = 136448258;
          v109 = "nw_flow_error";
          v110 = 2082;
          v111 = id_string;
          v112 = 2082;
          v113 = v97;
          v114 = 2082;
          v115 = v77;
          v116 = 2082;
          v117 = v78;
          v118 = 2082;
          v119 = v79;
          v120 = 2114;
          v121 = v80;
          v122 = 2082;
          v123 = v82;
          v124 = 2114;
          v125 = v83;
          _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol (%{public}s) sent error: %{public}@", buf, 0x5Cu);

          v11 = v90;
          v21 = logb;
        }

        goto LABEL_80;
      }

LABEL_81:
      default_input_handler = v5->default_input_handler;
      if (default_input_handler)
      {
        callbacks = default_input_handler->callbacks;
        if (callbacks)
        {
          error = callbacks->error;
          if (error)
          {
            error();
          }
        }
      }

      goto LABEL_86;
    }

    v15 = handle[40];
    handle[40] = 0;

    v16 = *(v11 + 109);
    *(v11 + 109) = 0;

    *(v11 + 36) &= ~1u;
    v17 = v9;
    v18 = *(v17 + 284);

    if ((v18 & 0x20) != 0)
    {
      if ((nw_endpoint_handler_get_logging_disabled(v17) & 1) == 0)
      {
        v91 = v11;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          logc = nw_endpoint_handler_get_id_string(v17);
          v98 = nw_endpoint_handler_dry_run_string(v17);
          v105 = nw_endpoint_handler_copy_endpoint(v17);
          v85 = nw_endpoint_get_logging_description(v105);
          v86 = nw_endpoint_handler_state_string(v17);
          v87 = nw_endpoint_handler_mode_string(v17);
          v88 = nw_endpoint_handler_copy_current_path(v17);
          *buf = 136447746;
          v109 = "nw_flow_error";
          v110 = 2082;
          v111 = logc;
          v112 = 2082;
          v113 = v98;
          v114 = 2082;
          v115 = v85;
          v116 = 2082;
          v117 = v86;
          v118 = 2082;
          v119 = v87;
          v120 = 2114;
          v121 = v88;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol cleared error", buf, 0x48u);

          v11 = v91;
        }

        goto LABEL_80;
      }

      goto LABEL_81;
    }

    v19 = v17;
    v20 = *(v17 + 284);

    if ((v20 & 0x40) != 0)
    {
      goto LABEL_81;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v21 = gconnectionLogObj;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_80;
    }

    v22 = v19;

    v23 = v22;
    v24 = *(v17 + 284);

    if (v24)
    {
      v25 = "dry-run ";
    }

    else
    {
      v25 = "";
    }

    v89 = v11;
    v26 = nw_endpoint_handler_copy_endpoint(v23);
    v27 = v26;
    if (v26)
    {
      v95 = _nw_endpoint_get_logging_description(v26);
    }

    else
    {
      v95 = "<NULL>";
    }

    loga = v21;
    v94 = v22 + 184;

    v51 = v23;
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
    v57 = v9->mode;
    if (v57 > 2)
    {
      switch(v57)
      {
        case 3:
          v58 = "proxy";
          goto LABEL_79;
        case 4:
          v58 = "fallback";
          goto LABEL_79;
        case 5:
          v58 = "transform";
          goto LABEL_79;
      }
    }

    else
    {
      switch(v57)
      {
        case 0:
          v58 = "path";
          goto LABEL_79;
        case 1:
          v58 = "resolver";
          goto LABEL_79;
        case 2:
          v58 = nw_endpoint_flow_mode_string(v55[33]);
LABEL_79:

          v63 = v56;
          os_unfair_lock_lock(v63 + 28);
          v64 = v63[8];
          os_unfair_lock_unlock(v63 + 28);

          *buf = 136447746;
          v109 = "nw_flow_error";
          v110 = 2082;
          v111 = v94;
          v112 = 2082;
          v113 = v25;
          v114 = 2082;
          v115 = v95;
          v116 = 2082;
          v117 = v54;
          v118 = 2082;
          v119 = v58;
          v120 = 2114;
          v121 = v64;
          v21 = loga;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol cleared error", buf, 0x48u);

          v11 = v89;
LABEL_80:

          goto LABEL_81;
      }
    }

    v58 = "unknown-mode";
    goto LABEL_79;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v14 = "unknown-mode";
    }

    else
    {
      v14 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v109 = "nw_flow_error";
    v110 = 2082;
    v111 = v14;
    v112 = 2082;
    v113 = "flow";
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_86:
}

void nw_protocol_default_error(nw_protocol *a1, nw_protocol *a2)
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
        error = callbacks->error;
        if (error)
        {

          error();
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_default_error";
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
      v14 = "nw_protocol_default_error";
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
      v14 = "nw_protocol_default_error";
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
        v14 = "nw_protocol_default_error";
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
      v14 = "nw_protocol_default_error";
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

uint64_t ___ZL28nw_protocol_purge_frame_poolP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 32) + 176);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  if (v6)
  {
    v5 = (v6 + 24);
  }

  *v5 = v7;
  *v7 = v6;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v9 - 1;
  if (!v9)
  {
    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(a1 + 32) + 160);
        v13 = 136446978;
        v14 = "nw_protocol_purge_frame_pool_block_invoke";
        v15 = 2082;
        v16 = "instance->empty_frame_pool_count";
        v17 = 2048;
        v18 = 1;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &v13, 0x2Au);
      }
    }

    *(*(a1 + 32) + 160) = 0;
  }

  return 1;
}

uint64_t ___ZL35nw_protocol_implementation_teardownP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 - 64);
    goto LABEL_3;
  }

  v16 = extra;
  v17 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_protocol_get_output_handler";
  v18 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v18, type, &v26))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol";
LABEL_32:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type[0];
        v23 = os_log_type_enabled(v19, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_34;
        }

        if (!v23)
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_32;
      }

      v19 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:
  }

LABEL_34:
  if (v18)
  {
    free(v18);
  }

  v5 = 0;
  extra = v16;
LABEL_3:
  if (*(extra + 32) != v5)
  {
    return 1;
  }

  v7 = *(extra + 40);
  if (v7)
  {
    v8 = extra;
    nw::release_if_needed<nw_protocol *>((extra + 32));
    extra = v8;
    v7 = *(v8 + 40);
  }

  *(extra + 32) = 0;
  *(extra + 40) = v7 | 1;
  v9 = (extra + 120);
  if (gLogDatapath != 1)
  {
    v10 = *v9;
    if (!*v9)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v24 = extra;
  v25 = __nwlog_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_finalize_temp_frame_array";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
  }

  extra = v24;
  v10 = *v9;
  if (*v9)
  {
LABEL_9:
    *(v10 + 40) = type;
    v11 = *(extra + 128);
    *type = v10;
    v28 = v11;
    *(extra + 120) = 0;
    *(extra + 128) = v9;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v30 = &__block_descriptor_tmp_21_49595;
    v31 = 0;
    do
    {
      v12 = *type;
      if (!*type)
      {
        break;
      }

      v13 = *(*type + 32);
      v14 = *(*type + 40);
      v15 = (v13 + 40);
      if (!v13)
      {
        v15 = &v28;
      }

      *v15 = v14;
      *v14 = v13;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  return 1;
}

void nw_protocol_instance_tear_down_path(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_instance_tear_down_path";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &type, &v24))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_tear_down_path";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_protocol_instance_tear_down_path";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_43:
        if (!v8)
        {
          goto LABEL_9;
        }

LABEL_44:
        free(v8);
        goto LABEL_9;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_tear_down_path";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_tear_down_path";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (a2)
  {
    if (*(v3 + 37))
    {
      v5 = *(v3 + 15);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_protocol_instance_tear_down_path_block_invoke;
      v21[3] = &unk_1E6A3AC58;
      v22 = v3;
      v23 = a2;
      nw_queue_context_async(v5, v21);
    }

    else if ((v3[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v27 = "nw_protocol_instance_tear_down_path";
        v28 = 2082;
        v29 = v4 + 415;
        v30 = 2080;
        v31 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path table found", buf, 0x20u);
      }
    }

    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_instance_tear_down_path";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &type, &v24))
  {
    goto LABEL_43;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_tear_down_path";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path", buf, 0xCu);
    }

    goto LABEL_42;
  }

  if (v24 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_tear_down_path";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_tear_down_path";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
    }

    goto LABEL_42;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nw_protocol_instance_tear_down_path";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_44;
  }

LABEL_9:
}

uint64_t ___ZL43nw_protocol_implementation_has_active_pathsP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  if (*(extra + 144) != 3 && !*(extra + 32))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void __nw_protocol_instance_tear_down_path_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (!v3)
  {
    if (*(v2 + 413) < 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = "";
      v15 = v13 == 0;
      if (v13)
      {
        v16 = (v13 + 415);
      }

      else
      {
        v16 = "";
      }

      v24 = 136446722;
      v25 = "nw_protocol_instance_tear_down_path_block_invoke";
      if (!v15)
      {
        v14 = " ";
      }

      v26 = 2082;
      v27 = v16;
      v28 = 2080;
      v29 = v14;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNo path table found", &v24, 0x20u);
    }

    goto LABEL_17;
  }

  node = nw_hash_table_get_node(v3, *(a1 + 40), 8);
  if (!node)
  {
    v17 = *(a1 + 32);
    if (v17 && *(v17 + 413) < 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = v18 == 0;
      if (v18)
      {
        v21 = (v18 + 415);
      }

      else
      {
        v21 = "";
      }

      v25 = "nw_protocol_instance_tear_down_path_block_invoke";
      v26 = 2082;
      v22 = " ";
      v24 = 136446978;
      if (v20)
      {
        v22 = "";
      }

      v27 = v21;
      v28 = 2080;
      v29 = v22;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNo path found for %lx", &v24, 0x2Au);
    }

LABEL_17:

    return;
  }

  v5 = node;
  nw_protocol_instance_tear_down_path_inner(*(a1 + 32), node + 32);
  if ((*(v5 + 176) | 2) == 3)
  {
    *(v5 + 176) = 2;
    v6 = *(a1 + 32);
    if ((*(v6 + 412) & 8) != 0 || !*(v6 + 16))
    {
      v11 = 0;
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = v8;
      v10 = *(*(*(v8 + 1) + 80) + 216);
      if (v10)
      {
        v10(v8, v7, 2, *(v8 + 39) == v7);
      }

      v6 = *(a1 + 32);
      v11 = 1;
    }

    nw_protocol_path_state_dispose(v6, v5 + 32);
    nw_hash_table_remove_node(*(*(a1 + 32) + 296), v5);
    v23 = *(a1 + 32);
    if ((*(v23 + 412) & 8) == 0)
    {
      if (v11)
      {

        nw_protocol_instance_update_available_paths(v23);
      }

      return;
    }
  }

  else
  {
    v23 = *(a1 + 32);
    if ((*(v23 + 412) & 8) == 0)
    {
      return;
    }
  }

  nw_protocol_implementation_destroy(v23);
}

void nw_protocol_instance_tear_down_path_inner(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
    v45 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v76) = 0;
    if (!__nwlog_fault(v45, type, &v76))
    {
      goto LABEL_127;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
        _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v76 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v60 = type[0];
      v61 = os_log_type_enabled(v46, type[0]);
      if (backtrace_string)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_127:
        if (!v45)
        {
          goto LABEL_69;
        }

LABEL_128:
        free(v45);
        goto LABEL_69;
      }

      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
        _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v46 = __nwlog_obj();
      v69 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
        _os_log_impl(&dword_181A37000, v46, v69, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_126:

    goto LABEL_127;
  }

  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v50 = __nwlog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v4 = *(a2 + 120);
    if (v4)
    {
      *(v4 + 40) = type;
      v5 = *(a2 + 128);
      *type = v4;
      v79 = v5;
      *(a2 + 120) = 0;
      *(a2 + 128) = a2 + 120;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v81 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v82) = 0;
      do
      {
        v6 = *type;
        if (!*type)
        {
          break;
        }

        v7 = *(*type + 32);
        v8 = *(*type + 40);
        v9 = (v7 + 40);
        if (!v7)
        {
          v9 = &v79;
        }

        *v9 = v8;
        *v8 = v7;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      goto LABEL_58;
    }

    if (v10 == *(v3 - 8))
    {
      goto LABEL_55;
    }

    v11 = *(v10 + 5);
    v12 = *(a2 + 32);
    if (v11 != &nw_protocol_ref_counted_handle)
    {
      if (v11 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v12) = 0;
        v13 = 1;
        goto LABEL_19;
      }

      v12 = *(v10 + 8);
      if (!v12)
      {
        v13 = 1;
        goto LABEL_19;
      }
    }

    v14 = *(v12 + 88);
    v13 = 0;
    if (v14)
    {
      *(v12 + 88) = v14 + 1;
    }

    LOBYTE(v12) = -1;
LABEL_19:
    *type = v10;
    LOBYTE(v79) = v12;
    v15 = *(v3 - 7);
    v16 = (v3 - 12);
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = *(v3 - 4)) != 0)
    {
      v19 = *(v16 + 11);
      v18 = 0;
      if (v19)
      {
        *(v16 + 11) = v19 + 1;
      }

      v17 = -1;
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    v76 = (v3 - 12);
    v77 = v17;
    v20 = *(v10 + 3);
    if (v20)
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        v22 = v21();
        if (v18)
        {
LABEL_30:
          if (v13)
          {
            if (v22)
            {
              goto LABEL_55;
            }
          }

          else
          {
            nw::release_if_needed<nw_protocol *>(type);
            if (v22)
            {
              goto LABEL_55;
            }
          }

          if ((*(v3 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v23 = gLogObj;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
            *&buf[12] = 2082;
            *&buf[14] = v3 + 415;
            *&buf[22] = 2080;
            v81 = " ";
            v24 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v76) = 0;
            if (__nwlog_fault(v24, type, &v76))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v25 = gLogObj;
                v26 = type[0];
                if (os_log_type_enabled(v25, type[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 415;
                  *&buf[22] = 2080;
                  v81 = " ";
                  _os_log_impl(&dword_181A37000, v25, v26, "%{public}s %{public}s%sUnable to remove output handler", buf, 0x20u);
                }
              }

              else if (v76 == 1)
              {
                v27 = __nw_create_backtrace_string();
                if (v27)
                {
                  v28 = v27;
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v29 = gLogObj;
                  v30 = type[0];
                  if (os_log_type_enabled(v29, type[0]))
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                    *&buf[12] = 2082;
                    *&buf[14] = v3 + 415;
                    *&buf[22] = 2080;
                    v81 = " ";
                    v82 = 2082;
                    v83 = v28;
                    _os_log_impl(&dword_181A37000, v29, v30, "%{public}s %{public}s%sUnable to remove output handler, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v28);
                  if (!v24)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_54;
                }

                v25 = __nwlog_obj();
                v32 = type[0];
                if (os_log_type_enabled(v25, type[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 415;
                  *&buf[22] = 2080;
                  v81 = " ";
                  _os_log_impl(&dword_181A37000, v25, v32, "%{public}s %{public}s%sUnable to remove output handler, no backtrace", buf, 0x20u);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v25 = gLogObj;
                v31 = type[0];
                if (os_log_type_enabled(v25, type[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 415;
                  *&buf[22] = 2080;
                  v81 = " ";
                  _os_log_impl(&dword_181A37000, v25, v31, "%{public}s %{public}s%sUnable to remove output handler, backtrace limit exceeded", buf, 0x20u);
                }
              }
            }

            if (v24)
            {
LABEL_54:
              free(v24);
            }
          }

LABEL_55:
          v33 = *(a2 + 40);
          if (v33)
          {
            nw::release_if_needed<nw_protocol *>((a2 + 32));
            v33 = *(a2 + 40);
          }

          *(a2 + 32) = 0;
          *(a2 + 40) = v33 | 1;
LABEL_58:
          if ((*(a2 + 153) & 0x40) != 0)
          {
            v34 = nw_interface_option_details_create(*(a2 + 16), a2, *(a2 + 136), *(a2 + 152), 0, -1);
            if ((*(v3 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                *&buf[12] = 2082;
                *&buf[14] = v3 + 415;
                *&buf[22] = 2080;
                v81 = " ";
                v82 = 2112;
                v83 = v34;
                _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sRemoving interface option %@", buf, 0x2Au);
              }
            }

            nw_path_flow_registration_remove_extra_interface_option(v3[35], v34);
            v36 = v3[36];
            if (v36)
            {
              v37 = nw_path_copy_for_flow_registration(v36, v3[35]);
              v38 = v3[36];
              v3[36] = v37;
            }
          }

          v39 = *(a2 + 24);
          if (v39)
          {
            nw_path_flow_registration_close(v39);
            v40 = *(a2 + 24);
            *(a2 + 24) = 0;
          }

          v41 = *(a2 + 48);
          *(a2 + 48) = 0;

          *(a2 + 56) = 0;
          uuid_clear((a2 + 64));
          v42 = *(a2 + 136);
          *(a2 + 136) = 0;

          v43 = *(a2 + 104);
          *(a2 + 104) = 0;

          goto LABEL_69;
        }

LABEL_29:
        nw::release_if_needed<nw_protocol *>(&v76);
        goto LABEL_30;
      }
    }

    v51 = v10;
    v52 = __nwlog_obj();
    v53 = *(v51 + 2);
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_remove_input_handler";
    if (!v53)
    {
      v53 = "invalid";
    }

    *&buf[12] = 2082;
    *&buf[14] = v53;
    *&buf[22] = 2048;
    v54 = v51;
    v81 = v51;
    v55 = _os_log_send_and_compose_impl();

    v75 = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (__nwlog_fault(v55, &v75, &v74))
    {
      if (v75 == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = v75;
        if (os_log_type_enabled(v56, v75))
        {
          v58 = *(v54 + 2);
          if (!v58)
          {
            v58 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v58;
          *&buf[22] = 2048;
          v81 = v54;
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 0x20u);
        }

LABEL_133:

        goto LABEL_134;
      }

      if (v74 != 1)
      {
        v56 = __nwlog_obj();
        v71 = v75;
        if (os_log_type_enabled(v56, v75))
        {
          v72 = *(v54 + 2);
          if (!v72)
          {
            v72 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v72;
          *&buf[22] = 2048;
          v81 = v54;
          _os_log_impl(&dword_181A37000, v56, v71, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_133;
      }

      v65 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v66 = v75;
      v67 = os_log_type_enabled(v56, v75);
      if (!v65)
      {
        if (v67)
        {
          v73 = *(v54 + 2);
          if (!v73)
          {
            v73 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v73;
          *&buf[22] = 2048;
          v81 = v54;
          _os_log_impl(&dword_181A37000, v56, v66, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace", buf, 0x20u);
        }

        goto LABEL_133;
      }

      if (v67)
      {
        v68 = *(v54 + 2);
        if (!v68)
        {
          v68 = "invalid";
        }

        *buf = 136446978;
        *&buf[4] = "__nw_protocol_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v68;
        *&buf[22] = 2048;
        v81 = v54;
        v82 = 2082;
        v83 = v65;
        _os_log_impl(&dword_181A37000, v56, v66, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v65);
    }

LABEL_134:
    if (v55)
    {
      free(v55);
    }

    v22 = 0;
    if (v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v48 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
  v45 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v76) = 0;
  if (!__nwlog_fault(v45, type, &v76))
  {
    goto LABEL_127;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v46 = __nwlog_obj();
    v49 = type[0];
    if (os_log_type_enabled(v46, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
      _os_log_impl(&dword_181A37000, v46, v49, "%{public}s called with null path_state", buf, 0xCu);
    }

    goto LABEL_126;
  }

  if (v76 != 1)
  {
    v46 = __nwlog_obj();
    v70 = type[0];
    if (os_log_type_enabled(v46, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
      _os_log_impl(&dword_181A37000, v46, v70, "%{public}s called with null path_state, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_126;
  }

  v62 = __nw_create_backtrace_string();
  v46 = __nwlog_obj();
  v63 = type[0];
  v64 = os_log_type_enabled(v46, type[0]);
  if (!v62)
  {
    if (v64)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
      _os_log_impl(&dword_181A37000, v46, v63, "%{public}s called with null path_state, no backtrace", buf, 0xCu);
    }

    goto LABEL_126;
  }

  if (v64)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
    *&buf[12] = 2082;
    *&buf[14] = v62;
    _os_log_impl(&dword_181A37000, v46, v63, "%{public}s called with null path_state, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v62);
  if (v45)
  {
    goto LABEL_128;
  }

LABEL_69:
}

void nw_protocol_path_state_dispose(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_path_state_dispose";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_path_state_dispose";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v24 == 1)
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
          v27 = "nw_protocol_path_state_dispose";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v11)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v11);
        goto LABEL_6;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_protocol_path_state_dispose";
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
        v27 = "nw_protocol_path_state_dispose";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (a2)
  {
    nw_protocol_instance_tear_down_path_inner(v3, a2);
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;

    v6 = *(a2 + 80);
    *(a2 + 80) = 0;

    v7 = *(a2 + 88);
    *(a2 + 88) = 0;

    v8 = *(a2 + 96);
    *(a2 + 96) = 0;

    v9 = *(a2 + 112);
    *(a2 + 112) = 0;

    *(a2 + 148) = -1;
    if (*(a2 + 40))
    {
      nw::release_if_needed<nw_protocol *>((a2 + 32));
    }

    *(a2 + 32) = 0;

    goto LABEL_6;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_path_state_dispose";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_path_state_dispose";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null path_state", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_path_state_dispose";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null path_state, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
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
      v27 = "nw_protocol_path_state_dispose";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null path_state, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_protocol_path_state_dispose";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null path_state, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_connection_read_buffer(void *a1, char *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      *v90 = 0;
      v91 = v90;
      v92 = 0x2020000000;
      v93 = 1;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __nw_connection_read_buffer_block_invoke;
      v87[3] = &unk_1E6A3D738;
      v89 = v90;
      v13 = v10;
      v88 = v13;
      os_unfair_lock_lock(v10 + 34);
      __nw_connection_read_buffer_block_invoke(v87);
      os_unfair_lock_unlock(v10 + 34);
      if (v91[24])
      {
        v86 = v13;
        v14 = v12;
        if (!a2)
        {
          v76 = __nwlog_obj();
          *buf = 136446210;
          v97 = "nw_read_request_create_with_buffer";
          v17 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v94 = 0;
          if (__nwlog_fault(v17, &type, &v94))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v18 = __nwlog_obj();
              v77 = type;
              if (os_log_type_enabled(v18, type))
              {
                *buf = 136446210;
                v97 = "nw_read_request_create_with_buffer";
                _os_log_impl(&dword_181A37000, v18, v77, "%{public}s called with null buffer", buf, 0xCu);
              }

              goto LABEL_75;
            }

            if (v94 != 1)
            {
              v18 = __nwlog_obj();
              v85 = type;
              if (os_log_type_enabled(v18, type))
              {
                *buf = 136446210;
                v97 = "nw_read_request_create_with_buffer";
                _os_log_impl(&dword_181A37000, v18, v85, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_75;
            }

            backtrace_string = __nw_create_backtrace_string();
            v18 = __nwlog_obj();
            v83 = type;
            v84 = os_log_type_enabled(v18, type);
            if (!backtrace_string)
            {
              if (v84)
              {
                *buf = 136446210;
                v97 = "nw_read_request_create_with_buffer";
                _os_log_impl(&dword_181A37000, v18, v83, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
              }

              goto LABEL_75;
            }

            if (v84)
            {
              *buf = 136446466;
              v97 = "nw_read_request_create_with_buffer";
              v98 = 2082;
              *v99 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v83, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
          }

LABEL_76:
          if (!v17)
          {
            goto LABEL_87;
          }

          goto LABEL_77;
        }

        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if (v15 > a4)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          *buf = 136446722;
          v97 = "nw_read_request_create_with_buffer";
          v98 = 2048;
          *v99 = v15;
          *&v99[8] = 2048;
          *&v99[10] = a4;
          v17 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v94 = 0;
          if (!__nwlog_fault(v17, &type, &v94))
          {
            goto LABEL_76;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = type;
            if (os_log_type_enabled(v18, type))
            {
              *buf = 136446722;
              v97 = "nw_read_request_create_with_buffer";
              v98 = 2048;
              *v99 = v15;
              *&v99[8] = 2048;
              *&v99[10] = a4;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s minlength (%zu) > max_data_count (%zu)", buf, 0x20u);
            }

LABEL_75:

            goto LABEL_76;
          }

          if (v94 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v47 = type;
            if (os_log_type_enabled(v18, type))
            {
              *buf = 136446722;
              v97 = "nw_read_request_create_with_buffer";
              v98 = 2048;
              *v99 = v15;
              *&v99[8] = 2048;
              *&v99[10] = a4;
              _os_log_impl(&dword_181A37000, v18, v47, "%{public}s minlength (%zu) > max_data_count (%zu), backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_75;
          }

          v38 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v39 = type;
          v40 = os_log_type_enabled(v18, type);
          if (!v38)
          {
            if (v40)
            {
              *buf = 136446722;
              v97 = "nw_read_request_create_with_buffer";
              v98 = 2048;
              *v99 = v15;
              *&v99[8] = 2048;
              *&v99[10] = a4;
              _os_log_impl(&dword_181A37000, v18, v39, "%{public}s minlength (%zu) > max_data_count (%zu), no backtrace", buf, 0x20u);
            }

            goto LABEL_75;
          }

          if (v40)
          {
            *buf = 136446978;
            v97 = "nw_read_request_create_with_buffer";
            v98 = 2048;
            *v99 = v15;
            *&v99[8] = 2048;
            *&v99[10] = a4;
            v100 = 2082;
            v101 = v38;
            _os_log_impl(&dword_181A37000, v18, v39, "%{public}s minlength (%zu) > max_data_count (%zu), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v38);
          if (v17)
          {
LABEL_77:
            free(v17);
          }

LABEL_87:

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          v57 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v94 = 0;
          if (__nwlog_fault(v57, &type, &v94))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v58 = gLogObj;
              v59 = type;
              if (os_log_type_enabled(v58, type))
              {
                *buf = 136446210;
                v97 = "nw_connection_read_buffer";
                _os_log_impl(&dword_181A37000, v58, v59, "%{public}s nw_read_request_create_with_buffer failed", buf, 0xCu);
              }
            }

            else if (v94 == 1)
            {
              v60 = __nw_create_backtrace_string();
              if (v60)
              {
                v61 = v60;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v62 = gLogObj;
                v63 = type;
                if (os_log_type_enabled(v62, type))
                {
                  *buf = 136446466;
                  v97 = "nw_connection_read_buffer";
                  v98 = 2082;
                  *v99 = v61;
                  _os_log_impl(&dword_181A37000, v62, v63, "%{public}s nw_read_request_create_with_buffer failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v61);
                if (!v57)
                {
                  goto LABEL_106;
                }

                goto LABEL_105;
              }

              v58 = __nwlog_obj();
              v65 = type;
              if (os_log_type_enabled(v58, type))
              {
                *buf = 136446210;
                v97 = "nw_connection_read_buffer";
                _os_log_impl(&dword_181A37000, v58, v65, "%{public}s nw_read_request_create_with_buffer failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v58 = gLogObj;
              v64 = type;
              if (os_log_type_enabled(v58, type))
              {
                *buf = 136446210;
                v97 = "nw_connection_read_buffer";
                _os_log_impl(&dword_181A37000, v58, v64, "%{public}s nw_read_request_create_with_buffer failed, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

          if (!v57)
          {
LABEL_106:
            v32 = 0;
            v31 = 0;
LABEL_107:

            goto LABEL_108;
          }

LABEL_105:
          free(v57);
          goto LABEL_106;
        }

        v27 = objc_alloc_init(NWConcrete_nw_read_request);
        if (v27)
        {
          v28 = _Block_copy(v14);
          buffer_completion = v27->buffer_completion;
          v27->buffer_completion = v28;

          objc_storeStrong(&v27->connection, a1);
          v30 = qos_class_self();
          v27->min = v15;
          v27->max = a4;
          v27->buffer = a2;
          v27->qos_class = v30;
          v27->variant = 2;
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          v31 = v27;

          nw_connection_add_read_request(v86, v31);
          v32 = 1;
          goto LABEL_107;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = gLogObj;
        *buf = 136446210;
        v97 = "nw_read_request_create_with_buffer";
        v44 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v94 = 0;
        if (__nwlog_fault(v44, &type, &v94))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v46 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v97 = "nw_read_request_create_with_buffer";
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 0xCu);
            }
          }

          else if (v94 == 1)
          {
            v48 = __nw_create_backtrace_string();
            if (v48)
            {
              v49 = v48;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v50 = gLogObj;
              v51 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446466;
                v97 = "nw_read_request_create_with_buffer";
                v98 = 2082;
                *v99 = v49;
                _os_log_impl(&dword_181A37000, v50, v51, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v49);
              if (!v44)
              {
                goto LABEL_86;
              }

              goto LABEL_85;
            }

            v45 = __nwlog_obj();
            v55 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v97 = "nw_read_request_create_with_buffer";
              _os_log_impl(&dword_181A37000, v45, v55, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v97 = "nw_read_request_create_with_buffer";
              _os_log_impl(&dword_181A37000, v45, v54, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v44)
        {
LABEL_86:

          goto LABEL_87;
        }

LABEL_85:
        free(v44);
        goto LABEL_86;
      }

      v20 = *&v13[4]._os_unfair_lock_opaque;
      if (v20 && !_nw_parameters_get_logging_disabled(v20))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        os_unfair_lock_opaque = v13[112]._os_unfair_lock_opaque;
        *buf = 136446466;
        v97 = "nw_connection_read_buffer";
        v98 = 1024;
        *v99 = os_unfair_lock_opaque;
        v23 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v94 = 0;
        if (__nwlog_fault(v23, &type, &v94))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            v25 = type;
            if (os_log_type_enabled(v24, type))
            {
              v26 = v13[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v97 = "nw_connection_read_buffer";
              v98 = 1024;
              *v99 = v26;
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [C%u] client_queue is nil", buf, 0x12u);
            }
          }

          else if (v94 == 1)
          {
            v33 = __nw_create_backtrace_string();
            if (v33)
            {
              v34 = v33;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v35 = gconnectionLogObj;
              v36 = type;
              if (os_log_type_enabled(v35, type))
              {
                v37 = v13[112]._os_unfair_lock_opaque;
                *buf = 136446722;
                v97 = "nw_connection_read_buffer";
                v98 = 1024;
                *v99 = v37;
                *&v99[4] = 2082;
                *&v99[6] = v34;
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s [C%u] client_queue is nil, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v34);
              if (!v23)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            v52 = type;
            if (os_log_type_enabled(v24, type))
            {
              v53 = v13[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v97 = "nw_connection_read_buffer";
              v98 = 1024;
              *v99 = v53;
              _os_log_impl(&dword_181A37000, v24, v52, "%{public}s [C%u] client_queue is nil, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            v41 = type;
            if (os_log_type_enabled(v24, type))
            {
              v42 = v13[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v97 = "nw_connection_read_buffer";
              v98 = 1024;
              *v99 = v42;
              _os_log_impl(&dword_181A37000, v24, v41, "%{public}s [C%u] client_queue is nil, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

        if (v23)
        {
LABEL_71:
          free(v23);
        }
      }

LABEL_72:
      v32 = 0;
LABEL_108:

      _Block_object_dispose(v90, 8);
      goto LABEL_109;
    }

    v71 = __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_connection_read_buffer";
    v68 = _os_log_send_and_compose_impl();

    v90[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, v90, &type))
    {
      if (v90[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v72 = v90[0];
        if (os_log_type_enabled(v69, v90[0]))
        {
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v72, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_154:

        goto LABEL_155;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v81 = v90[0];
        if (os_log_type_enabled(v69, v90[0]))
        {
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v81, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_154;
      }

      v73 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v78 = v90[0];
      v79 = os_log_type_enabled(v69, v90[0]);
      if (!v73)
      {
        if (v79)
        {
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v78, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_154;
      }

      if (v79)
      {
        *buf = 136446466;
        v97 = "nw_connection_read_buffer";
        v98 = 2082;
        *v99 = v73;
        _os_log_impl(&dword_181A37000, v69, v78, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_134;
    }
  }

  else
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_connection_read_buffer";
    v68 = _os_log_send_and_compose_impl();

    v90[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, v90, &type))
    {
      if (v90[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = v90[0];
        if (os_log_type_enabled(v69, v90[0]))
        {
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_154;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v80 = v90[0];
        if (os_log_type_enabled(v69, v90[0]))
        {
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_154;
      }

      v73 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v74 = v90[0];
      v75 = os_log_type_enabled(v69, v90[0]);
      if (!v73)
      {
        if (v75)
        {
          *buf = 136446210;
          v97 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v74, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_154;
      }

      if (v75)
      {
        *buf = 136446466;
        v97 = "nw_connection_read_buffer";
        v98 = 2082;
        *v99 = v73;
        _os_log_impl(&dword_181A37000, v69, v74, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_134:

      free(v73);
    }
  }

LABEL_155:
  if (v68)
  {
    free(v68);
  }

  v32 = 0;
LABEL_109:

  return v32;
}

void sub_181EE3198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_connection_read_buffer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 200))
  {
    result = 1;
  }

  else
  {
    result = nw_context_is_inline(*(v2 + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void nw_parameters_set_uid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_uid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_uid";
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
        v12 = "nw_parameters_set_uid";
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
            v12 = "nw_parameters_set_uid";
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
        v12 = "nw_parameters_set_uid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_uid";
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
}

void nw_parameters_set_e_proc_uuid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_e_proc_uuid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_e_proc_uuid";
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
        v12 = "nw_parameters_set_e_proc_uuid";
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
            v12 = "nw_parameters_set_e_proc_uuid";
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
        v12 = "nw_parameters_set_e_proc_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_e_proc_uuid";
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
}

uint64_t nw_path_get_flow_divert_unit(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    flow_divert_unit = _nw_path_get_flow_divert_unit(v1);
  }

  else
  {
    flow_divert_unit = 0;
  }

  return flow_divert_unit;
}

void __nw_socks5_server_handle_busy_changed_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __nw_socks5_server_handle_busy_changed_block_invoke_3;
  v2[3] = &unk_1E6A3D868;
  v3 = v1;
  os_unfair_lock_lock(v1 + 6);
  __nw_socks5_server_handle_busy_changed_block_invoke_3(v2);
  os_unfair_lock_unlock(v1 + 6);
}

void __nw_socks5_server_handle_busy_changed_block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  if (v3 && (*(v2 + 136) & 2) != 0)
  {
    dispatch_suspend(v3);
    *(*(a1 + 32) + 136) &= ~2u;
    v2 = *(a1 + 32);
  }

  if (!*(v2 + 132))
  {
    v4 = *(v2 + 128);
    if (v4)
    {
      IOPMAssertionRelease(v4);
      v5 = mach_continuous_time();
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(v8 + 128);
        v10 = nw_delta_nanos(*(v8 + 112), v6);
        v12 = "nw_socks5_server_handle_busy_changed_block_invoke_3";
        v13 = 2112;
        v11 = 136446978;
        v14 = v8;
        v15 = 1024;
        v16 = v9;
        v17 = 2048;
        v18 = v10 / 0x3B9ACA00;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %@ released power assertion: %u after %llus", &v11, 0x26u);
      }

      *(*(a1 + 32) + 112) = v6;
      *(*(a1 + 32) + 128) = 0;
    }
  }
}

void __nw_connection_set_interface_use_callback_block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 32) + 448);
      if (v4)
      {
        name = _nw_interface_get_name(v4);
      }

      else
      {
        name = "(null)";
      }

      v19 = 136446722;
      v20 = "nw_connection_set_interface_use_callback_block_invoke";
      v21 = 1024;
      v22 = v7;
      v23 = 2080;
      v24 = name;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [C%u] Got migration callback interface %s", &v19, 0x1Cu);
    }
  }

  v9 = _nw_interface_shallow_compare(v4, *(*(a1 + 32) + 520));
  v10 = *(*(a1 + 32) + 16);
  if (!v9)
  {
    if (!v10 || _nw_parameters_get_logging_disabled(v10))
    {
      goto LABEL_31;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v13 = gconnectionLogObj;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_30:

LABEL_31:
      (*(*(*(a1 + 32) + 512) + 16))();
      objc_storeStrong((*(a1 + 32) + 520), a2);
      *(*(a1 + 32) + 109) |= 0x80u;
      goto LABEL_32;
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 448);
    v16 = *(v14 + 520);
    if (v16)
    {
      v17 = _nw_interface_get_name(v16);
      if (v4)
      {
LABEL_26:
        v18 = _nw_interface_get_name(v4);
LABEL_29:
        v19 = 136446978;
        v20 = "nw_connection_set_interface_use_callback_block_invoke";
        v21 = 1024;
        v22 = v15;
        v23 = 2080;
        v24 = v17;
        v25 = 2080;
        v26 = v18;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [C%u] Changed from %s to %s", &v19, 0x26u);
        goto LABEL_30;
      }
    }

    else
    {
      v17 = "(null)";
      if (v4)
      {
        goto LABEL_26;
      }
    }

    v18 = "(null)";
    goto LABEL_29;
  }

  if (v10 && !_nw_parameters_get_logging_disabled(v10))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v11 = gconnectionLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 32) + 448);
      v19 = 136446466;
      v20 = "nw_connection_set_interface_use_callback_block_invoke";
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [C%u] No change in AWDL usage", &v19, 0x12u);
    }
  }

LABEL_32:
}

void nw_quic_set_keepalive(void *a1, unsigned __int16 a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_keepalive(v3, a2);
}

void nw_protocol_implementation_partial_input_frame_finalizer(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v13 = v1;
    if ((*(v1 + 102) & 0x100) == 0 || !g_channel_check_validity || (v3 = g_channel_check_validity(v1, *(v1 + 11)), v2 = v13, v3))
    {
      v4 = *(v2 + 112);
      if (v4)
      {
        free(v4);
        v2 = v13;
      }
    }

    nw_frame_reset(v2, 0, 0, 0, 0);

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null frame", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null frame, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }
}

uint64_t ___ZL62nw_protocol_instance_registrar_copy_san_list_from_tls_metadataP41NWConcrete_nw_protocol_instance_registrarP11nw_protocolPU35objcproto24OS_sec_protocol_metadata8NSObjectt_block_invoke_73(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v6;
  if (!v5)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v13, &type, &v29))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_41;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v32 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL54nw_protocol_instance_registrar_array_contains_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke;
    aBlock[3] = &unk_1E6A3BB28;
    v8 = v6;
    v27 = v8;
    v28 = buf;
    _nw_array_apply(v5, aBlock);
    v9 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v13, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v14, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v21;
          _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v13)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

LABEL_41:
  if (v13)
  {
LABEL_42:
    free(v13);
  }

LABEL_43:

LABEL_4:
  v10 = *(a1 + 32);
  if (v10 && v7)
  {
    _nw_array_append(v10, v7);
  }

LABEL_7:

  return 1;
}

uint64_t __nw_http_messaging_options_copy_transaction_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = nw_http_client_metadata_copy_current_transaction_metadata(v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return 1;
}

id nw_http_client_metadata_copy_current_transaction_metadata(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_client_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_client_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_client_metadata_copy_current_transaction_metadata_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_client", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181EE4C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_client_metadata_copy_current_transaction_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  object = *(a2 + 24);
  if (object)
  {
    object = _nw_array_copy_last_object(object);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = object;

  return 1;
}

uint64_t nw_http2_get_capsule_handling_disabled(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    capsule_handling_disabled = nw_http2_get_capsule_handling_disabled();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_capsule_handling_disabled_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    capsule_handling_disabled = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_capsule_handling_disabled";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_capsule_handling_disabled";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_capsule_handling_disabled";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_capsule_handling_disabled";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_capsule_handling_disabled";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  capsule_handling_disabled = 0;
LABEL_5:

  return capsule_handling_disabled & 1;
}

void sub_181EE4FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http2_stream_init(http2_stream *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    *(a1 + 1) = a1;
    *(a1 + 2) = 0;
    *(a1 + 3) = a1 + 16;
    *(a1 + 13) = 0;
    *(a1 + 14) = 0;
    *(a1 + 94) &= ~0x1000u;
    v2 = _nw_http_parsed_fields_create();
    v3 = *(a1 + 152);
    if ((v3 & 1) != 0 && *(a1 + 18))
    {
      v4 = v2;
      os_release(*(a1 + 18));
      v2 = v4;
      v3 = *(a1 + 152);
    }

    *(a1 + 18) = v2;
    *(a1 + 152) = v3 | 1;
    v5 = _nw_array_create();
    v6 = *(a1 + 168);
    if (v6)
    {
      if (*(a1 + 20))
      {
        v7 = v5;
        os_release(*(a1 + 20));
        v5 = v7;
        v6 = *(a1 + 168);
      }
    }

    *(a1 + 20) = v5;
    *(a1 + 168) = v6 | 1;
    *(a1 + 44) = -1;
    *(a1 + 46) = 0x200000;
    *(a1 + 94) = *(a1 + 94) & 0xFE62 | 4;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http2_stream_init";
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
        goto LABEL_24;
      }

      *buf = 136446210;
      v17 = "nw_http2_stream_init";
      v11 = "%{public}s called with null stream";
      goto LABEL_23;
    }

    if (v14 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v17 = "nw_http2_stream_init";
      v11 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_23;
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
        v17 = "nw_http2_stream_init";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_http2_stream_init";
      v11 = "%{public}s called with null stream, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }
}

uint64_t nw_protocol_add_listen_handler(void *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    v4 = a1;
    if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = a1[8]) != 0)
    {
      v15 = v4[11];
      if (v15)
      {
        v5 = 0;
        v4[11] = v15 + 1;
        if (!a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v5 = 0;
        if (!a2)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v5 = 1;
      if (!a2)
      {
LABEL_23:
        __nwlog_obj();
        *buf = 136446210;
        v43 = "__nw_protocol_add_listen_handler";
        v16 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (!__nwlog_fault(v16, &type, &v40))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (!os_log_type_enabled(v17, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v43 = "__nw_protocol_add_listen_handler";
          v19 = "%{public}s called with null listen_protocol";
          goto LABEL_80;
        }

        if (v40 != 1)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (!os_log_type_enabled(v17, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v43 = "__nw_protocol_add_listen_handler";
          v19 = "%{public}s called with null listen_protocol, backtrace limit exceeded";
          goto LABEL_80;
        }

        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v34 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v43 = "__nw_protocol_add_listen_handler";
            v44 = 2082;
            v45 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null listen_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v16)
          {
LABEL_84:
            result = 0;
            if (v5)
            {
              return result;
            }

LABEL_8:
            v9 = v2[5];
            if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
            {
              v10 = v2[11];
              if (v10)
              {
                v11 = v10 - 1;
                v2[11] = v11;
                if (!v11)
                {
                  v12 = result;
                  v13 = v2[8];
                  if (v13)
                  {
                    v2[8] = 0;
                    v13[2](v13);
                    _Block_release(v13);
                  }

                  if (v2[9])
                  {
                    v14 = v2[8];
                    if (v14)
                    {
                      _Block_release(v14);
                    }
                  }

                  free(v2);
                  return v12;
                }
              }
            }

            return result;
          }

LABEL_83:
          free(v16);
          goto LABEL_84;
        }

        if (v34)
        {
          *buf = 136446210;
          v43 = "__nw_protocol_add_listen_handler";
          v19 = "%{public}s called with null listen_protocol, no backtrace";
LABEL_80:
          v37 = v17;
          v38 = v18;
          v39 = 12;
          goto LABEL_81;
        }

        goto LABEL_82;
      }
    }

    v6 = a1[3];
    if (v6)
    {
      v7 = *(v6 + 232);
      if (v7)
      {
        result = v7(a1);
        if (v5)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

    __nwlog_obj();
    v20 = v2[2];
    *buf = 136446722;
    v43 = "__nw_protocol_add_listen_handler";
    if (!v20)
    {
      v20 = "invalid";
    }

    v44 = 2082;
    v45 = v20;
    v46 = 2048;
    v47 = v2;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v16, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_82;
        }

        v23 = v2[2];
        if (!v23)
        {
          v23 = "invalid";
        }

        *buf = 136446722;
        v43 = "__nw_protocol_add_listen_handler";
        v44 = 2082;
        v45 = v23;
        v46 = 2048;
        v47 = v2;
        v19 = "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback";
      }

      else if (v40 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v29 = os_log_type_enabled(v21, type);
        if (v28)
        {
          if (v29)
          {
            v30 = v2[2];
            if (!v30)
            {
              v30 = "invalid";
            }

            *buf = 136446978;
            v43 = "__nw_protocol_add_listen_handler";
            v44 = 2082;
            v45 = v30;
            v46 = 2048;
            v47 = v2;
            v48 = 2082;
            v49 = v28;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v28);
          goto LABEL_82;
        }

        if (!v29)
        {
          goto LABEL_82;
        }

        v36 = v2[2];
        if (!v36)
        {
          v36 = "invalid";
        }

        *buf = 136446722;
        v43 = "__nw_protocol_add_listen_handler";
        v44 = 2082;
        v45 = v36;
        v46 = 2048;
        v47 = v2;
        v19 = "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, no backtrace";
      }

      else
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_82;
        }

        v35 = v2[2];
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v43 = "__nw_protocol_add_listen_handler";
        v44 = 2082;
        v45 = v35;
        v46 = 2048;
        v47 = v2;
        v19 = "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, backtrace limit exceeded";
      }

      v37 = v21;
      v38 = v22;
      v39 = 32;
LABEL_81:
      _os_log_impl(&dword_181A37000, v37, v38, v19, buf, v39);
    }

LABEL_82:
    if (!v16)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  __nwlog_obj();
  *buf = 136446210;
  v43 = "__nw_protocol_add_listen_handler";
  v24 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v24, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v43 = "__nw_protocol_add_listen_handler";
        v27 = "%{public}s called with null protocol";
LABEL_74:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v32 = os_log_type_enabled(v25, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v43 = "__nw_protocol_add_listen_handler";
          v44 = 2082;
          v45 = v31;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_75;
      }

      if (v32)
      {
        *buf = 136446210;
        v43 = "__nw_protocol_add_listen_handler";
        v27 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_74;
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v43 = "__nw_protocol_add_listen_handler";
        v27 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_74;
      }
    }
  }

LABEL_75:
  if (v24)
  {
    free(v24);
  }

  return 0;
}

void nw_protocol_http2_connected(nw_protocol *a1, nw_protocol *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v36, &type, &v53))
    {
      goto LABEL_139;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v39 = "%{public}s called with null protocol";
    }

    else if (v53 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v43 = os_log_type_enabled(v37, type);
      if (backtrace_string)
      {
        if (v43)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_connected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_139:
        if (!v36)
        {
          return;
        }

        goto LABEL_140;
      }

      if (!v43)
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v39 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v39 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_138;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v36, &type, &v53))
    {
      goto LABEL_139;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v53 != 1)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_139;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_connected";
        v39 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_138;
      }

      v44 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v45 = os_log_type_enabled(v37, type);
      if (!v44)
      {
        if (!v45)
        {
          goto LABEL_139;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_connected";
        v39 = "%{public}s called with null http2, no backtrace";
        goto LABEL_138;
      }

      if (v45)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_connected";
        *&buf[12] = 2082;
        *&buf[14] = v44;
        v46 = "%{public}s called with null http2, dumping backtrace:%{public}s";
LABEL_110:
        _os_log_impl(&dword_181A37000, v37, v38, v46, buf, 0x16u);
      }

LABEL_111:
      free(v44);
      if (!v36)
      {
        return;
      }

LABEL_140:
      free(v36);
      return;
    }

    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_139;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v39 = "%{public}s called with null http2";
LABEL_138:
    _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
    goto LABEL_139;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v36, &type, &v53))
    {
      goto LABEL_139;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v39 = "%{public}s called with null other_protocol";
      goto LABEL_138;
    }

    if (v53 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v39 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_138;
    }

    v44 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v47 = os_log_type_enabled(v37, type);
    if (!v44)
    {
      if (!v47)
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v39 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_138;
    }

    if (v47)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_connected";
      *&buf[12] = 2082;
      *&buf[14] = v44;
      v46 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_110;
    }

    goto LABEL_111;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v40 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v56 = " ";
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v41;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

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

  if (a1->output_handler != a2)
  {
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v9;
        v10 = "%{public}s %{public}s%s<i%u> connected protocol is not our output_handler, ignoring";
LABEL_36:
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, v10, buf, 0x26u);
        return;
      }
    }

    return;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v48 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v49 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v56 = " ";
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v49;
      _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  v11 = (handle + 377);
  if ((*(handle + 377) & 0x80) != 0)
  {
    if (!*(handle + 18))
    {
      if ((handle[379] & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
        {
          v21 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v56 = " ";
          LOWORD(v57) = 1024;
          *(&v57 + 2) = v21;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> no listen handler on server, deferring processing of input and connected state until listen handler is present", buf, 0x26u);
        }
      }

      *v11 |= 0x1000u;
      return;
    }

    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v50;
        v14 = "%{public}s %{public}s%s<i%u> listen handler present, processing input without waiting";
        goto LABEL_127;
      }
    }
  }

  else if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v56 = " ";
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v13;
      v14 = "%{public}s %{public}s%s<i%u> not server, processing input without waiting";
LABEL_127:
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, v14, buf, 0x26u);
    }
  }

  v15 = *v11;
  *v11 &= ~0x1000u;
  if ((v15 & 0xC) == 0)
  {
    nw_http2_send_settings(handle);
    *v11 |= 4u;
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v51 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v52;
        _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2 tunnel is now connected", buf, 0x26u);
      }
    }

    v17 = *(handle + 14);
    if (v17)
    {
      v18 = v17;
      is_registered = _nw_endpoint_is_registered(v18);

      if (is_registered)
      {
        if (nw_settings_get_http_connection_coalescing_enabled())
        {
          nw_endpoint_add_edges_for_instance(v18, handle, 1);
        }
      }

      else if ((handle[379] & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v28 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v56 = " ";
          LOWORD(v57) = 1024;
          *(&v57 + 2) = v29;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2's remote endpoint is not registered", buf, 0x26u);
        }
      }

      goto LABEL_79;
    }

    if (handle[379])
    {
LABEL_79:
      nw_protocol_http2_process_input(handle);
      v35 = *(handle + 19);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL35nw_protocol_http2_process_connectedP17nw_protocol_http2_block_invoke;
      v56 = &__block_descriptor_tmp_49_88077;
      v57 = handle;
      nw_hash_table_apply(v35, buf);
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = *(handle + 90);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_process_connected";
    *&buf[12] = 2082;
    *&buf[14] = handle + 380;
    *&buf[22] = 2080;
    v56 = " ";
    LOWORD(v57) = 1024;
    *(&v57 + 2) = v22;
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v23, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        v25 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_77;
        }

        v26 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v26;
        v27 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint";
        goto LABEL_76;
      }

      if (v53 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        v25 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_77;
        }

        v33 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v33;
        v27 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, backtrace limit exceeded";
        goto LABEL_76;
      }

      v30 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      v25 = type;
      v31 = os_log_type_enabled(gconnectionLogObj, type);
      if (v30)
      {
        if (v31)
        {
          v32 = *(handle + 90);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v56 = " ";
          LOWORD(v57) = 1024;
          *(&v57 + 2) = v32;
          HIWORD(v57) = 2082;
          v58 = v30;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v30);
        goto LABEL_77;
      }

      if (v31)
      {
        v34 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v34;
        v27 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, no backtrace";
LABEL_76:
        _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x26u);
      }
    }

LABEL_77:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_79;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v56 = " ";
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v16;
      v10 = "%{public}s %{public}s%s<i%u> tunnel already connected or closed, ignoring connected event";
      goto LABEL_36;
    }
  }
}

void nw_http2_session_send(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 379) & 1) != 0)
  {
    goto LABEL_5;
  }

  if (gLogDatapath != 1)
  {
    goto LABEL_4;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v45 = gconnectionLogObj;
  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
  {
LABEL_4:
    if (a1)
    {
      goto LABEL_5;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http2_session_send";
    v41 = _os_log_send_and_compose_impl();
    v56[0] = 16;
    v54 = 0;
    if (__nwlog_fault(v41, v56, &v54))
    {
      if (v56[0] == 17)
      {
        v42 = __nwlog_obj();
        v43 = v56[0];
        if (!os_log_type_enabled(v42, v56[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http2_session_send";
        v44 = "%{public}s called with null http2";
        goto LABEL_107;
      }

      if (v54 != 1)
      {
        v42 = __nwlog_obj();
        v43 = v56[0];
        if (!os_log_type_enabled(v42, v56[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http2_session_send";
        v44 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_107;
      }

      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = v56[0];
      v50 = os_log_type_enabled(v42, v56[0]);
      if (backtrace_string)
      {
        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http2_session_send";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_108;
      }

      if (v50)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_session_send";
        v44 = "%{public}s called with null http2, no backtrace";
LABEL_107:
        _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
      }
    }

LABEL_108:
    if (v41)
    {
      free(v41);
    }

    return;
  }

  v46 = " ";
  v47 = *(a1 + 360);
  *&buf[4] = "nw_http2_session_send";
  *&buf[12] = 2082;
  v48 = (a1 + 380);
  *buf = 136446978;
  if (!a1)
  {
    v48 = "";
  }

  *&buf[14] = v48;
  if (!a1)
  {
    v46 = "";
  }

  *&buf[22] = 2080;
  *&buf[24] = v46;
  *&buf[32] = 1024;
  *&buf[34] = v47;
  _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
LABEL_5:
  v2 = (a1 + 377);
  if ((*(a1 + 377) & 0x100) != 0)
  {
    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v37 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v38 = *(a1 + 360);
        *buf = 136446978;
        *&buf[4] = "nw_http2_session_send";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v38;
        v39 = "%{public}s %{public}s%s<i%u> already in session send, skipping";
LABEL_76:
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, v39, buf, 0x26u);
      }
    }
  }

  else
  {
    if ((*(a1 + 377) & 0x200) == 0)
    {
      v3 = 0;
      *v2 = *(a1 + 377) | 0x100;
      v4 = a1 + 380;
      while (1)
      {
        if (!nghttp2_session_want_write())
        {
LABEL_79:
          *v2 &= ~0x100u;
          if (v3)
          {
            nw_http2_connection_close(a1);
          }

          return;
        }

        if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v33 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v34 = *(a1 + 360);
            *buf = 136446978;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 2082;
            *&buf[14] = v4;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v34;
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> nghttp2 wants to write", buf, 0x26u);
          }
        }

        *v2 &= ~0x2000u;
        v6 = nghttp2_session_send();
        if (!v6)
        {
          goto LABEL_42;
        }

        v7 = v6;
        if (v6 != -902 || (*v2 & 0x10) == 0)
        {
          break;
        }

        if ((*(a1 + 379) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v17 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 360);
            *buf = 136446978;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 2082;
            *&buf[14] = v4;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v18;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> tunnel error, send failed, closing", buf, 0x26u);
          }
        }

        v3 = 1;
        v19 = *v2;
        if ((*v2 & 0x2000) != 0)
        {
LABEL_77:
          if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v51 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v52 = *(a1 + 360);
              *buf = 136446978;
              *&buf[4] = "nw_http2_session_send";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 380;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v52;
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> cannot send any more, returning", buf, 0x26u);
            }
          }

          goto LABEL_79;
        }

LABEL_43:
        if (*(a1 + 366) < 6u)
        {
          if ((v19 & 0x4000) == 0)
          {
            *v2 = v19 | 0x4000;
            v29 = *(a1 + 344);
            v30 = *(a1 + 128);
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 0x40000000;
            v53[2] = ___ZL21nw_http2_session_sendP17nw_protocol_http2_block_invoke;
            v53[3] = &unk_1E6A3C300;
            v53[4] = v29;
            nw_queue_context_async(v30, v53);
          }
        }

        else
        {
          nw_http2_finalize_written_output_frames(a1);
        }

        nw_http2_drain_output_frames(a1);
        if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v36 = *(a1 + 360);
            *v56 = 136446978;
            v57 = "nw_http2_deliver_pending_output_available";
            v58 = 2082;
            v59 = v4;
            v60 = 2080;
            v61 = " ";
            v62 = 1024;
            v63 = v36;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", v56, 0x26u);
          }
        }

        if ((*v2 & 0x800) != 0)
        {
          *v2 &= ~0x800u;
          v5 = *(a1 + 152);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL41nw_http2_deliver_pending_output_availableP17nw_protocol_http2_block_invoke;
          *&buf[24] = &__block_descriptor_tmp_31_87115;
          *&buf[32] = a1;
          nw_hash_table_apply(v5, buf);
        }

        else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(a1 + 360);
            *v56 = 136446978;
            v57 = "nw_http2_deliver_pending_output_available";
            v58 = 2082;
            v59 = v4;
            v60 = 2080;
            v61 = " ";
            v62 = 1024;
            v63 = v32;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no streams have output available pending, nothing to do", v56, 0x26u);
          }
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = nghttp2_strerror();
      *buf = 136446722;
      *&buf[4] = "nw_http2_session_send";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2082;
      *&buf[20] = v9;
      v10 = _os_log_send_and_compose_impl();
      v56[0] = 16;
      v54 = 0;
      if (__nwlog_fault(v10, v56, &v54))
      {
        if (v56[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = v56[0];
          if (os_log_type_enabled(gLogObj, v56[0]))
          {
            v13 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            *&buf[18] = 2082;
            *&buf[20] = v13;
            v14 = v11;
            v15 = v12;
            v16 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed";
LABEL_38:
            _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x1Cu);
          }
        }

        else if (v54 == 1)
        {
          v20 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = v56[0];
          v23 = os_log_type_enabled(gLogObj, v56[0]);
          if (v20)
          {
            if (v23)
            {
              v24 = nghttp2_strerror();
              *buf = 136446978;
              *&buf[4] = "nw_http2_session_send";
              *&buf[12] = 1024;
              *&buf[14] = v7;
              *&buf[18] = 2082;
              *&buf[20] = v24;
              *&buf[28] = 2082;
              *&buf[30] = v20;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, dumping backtrace:%{public}s", buf, 0x26u);
            }

            free(v20);
            v4 = a1 + 380;
            goto LABEL_39;
          }

          v4 = a1 + 380;
          if (v23)
          {
            v28 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            *&buf[18] = 2082;
            *&buf[20] = v28;
            v14 = v21;
            v15 = v22;
            v16 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, no backtrace";
            goto LABEL_38;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = v56[0];
          if (os_log_type_enabled(gLogObj, v56[0]))
          {
            v27 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            *&buf[18] = 2082;
            *&buf[20] = v27;
            v14 = v25;
            v15 = v26;
            v16 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, backtrace limit exceeded";
            goto LABEL_38;
          }
        }
      }

LABEL_39:
      if (v10)
      {
        free(v10);
      }

      v3 = 1;
LABEL_42:
      v19 = *v2;
      if ((*v2 & 0x2000) != 0)
      {
        goto LABEL_77;
      }

      goto LABEL_43;
    }

    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v37 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a1 + 360);
        *buf = 136446978;
        *&buf[4] = "nw_http2_session_send";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v40;
        v39 = "%{public}s %{public}s%s<i%u> in mem recv, skipping";
        goto LABEL_76;
      }
    }
  }
}
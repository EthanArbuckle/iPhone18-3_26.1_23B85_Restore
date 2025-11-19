uint64_t nw_protocol_http1_copy_info(uint64_t a1, int a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http1_get_http1_protocol";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v51 = "nw_http1_get_http1_protocol";
      v22 = "%{public}s called with null protocol";
    }

    else
    {
      if (v48 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v24 = os_log_type_enabled(v20, type);
        if (!backtrace_string)
        {
          if (!v24)
          {
            goto LABEL_96;
          }

          *buf = 136446210;
          v51 = "nw_http1_get_http1_protocol";
          v22 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_95;
        }

        if (v24)
        {
          *buf = 136446466;
          v51 = "nw_http1_get_http1_protocol";
          v52 = 2082;
          v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_96;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v51 = "nw_http1_get_http1_protocol";
      v22 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_95;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http1_get_http1_protocol";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_96;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v48 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_http1_protocol";
        v22 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_95;
      }

      v25 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v26 = os_log_type_enabled(v20, type);
      if (!v25)
      {
        if (!v26)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_http1_protocol";
        v22 = "%{public}s called with null handle, no backtrace";
        goto LABEL_95;
      }

      if (!v26)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v51 = "nw_http1_get_http1_protocol";
      v52 = 2082;
      v53 = v25;
      v27 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v51 = "nw_http1_get_http1_protocol";
    v22 = "%{public}s called with null handle";
LABEL_95:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_96;
  }

  v3 = *(v2 + 24);
  v4 = *(a1 + 40);
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_98;
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http1_get_http1_protocol";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (__nwlog_fault(v19, &type, &v48))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_http1_protocol";
        v22 = "%{public}s called with null handle->http1_connection";
        goto LABEL_95;
      }

      if (v48 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_http1_protocol";
        v22 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_95;
      }

      v25 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v33 = os_log_type_enabled(v20, type);
      if (!v25)
      {
        if (!v33)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_http1_protocol";
        v22 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_95;
      }

      if (v33)
      {
        *buf = 136446466;
        v51 = "nw_http1_get_http1_protocol";
        v52 = 2082;
        v53 = v25;
        v27 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_49;
      }

LABEL_50:
      free(v25);
      if (!v19)
      {
LABEL_98:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v51 = "nw_protocol_http1_copy_info";
        v36 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v48 = 0;
        if (!__nwlog_fault(v36, &type, &v48))
        {
          goto LABEL_130;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v51 = "nw_protocol_http1_copy_info";
          v39 = "%{public}s called with null http1";
        }

        else
        {
          if (v48 == 1)
          {
            v40 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v41 = gLogObj;
            v42 = type;
            v43 = os_log_type_enabled(gLogObj, type);
            if (!v40)
            {
              if (!v43)
              {
                goto LABEL_130;
              }

              *buf = 136446210;
              v51 = "nw_protocol_http1_copy_info";
              v39 = "%{public}s called with null http1, no backtrace";
              goto LABEL_136;
            }

            if (v43)
            {
              *buf = 136446466;
              v51 = "nw_protocol_http1_copy_info";
              v52 = 2082;
              v53 = v40;
              _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v40);
LABEL_130:
            if (!v36)
            {
              return 0;
            }

LABEL_131:
            free(v36);
            return 0;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v51 = "nw_protocol_http1_copy_info";
          v39 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_128:
        v46 = v37;
        v47 = v38;
LABEL_129:
        _os_log_impl(&dword_181A37000, v46, v47, v39, buf, 0xCu);
        goto LABEL_130;
      }

LABEL_97:
      free(v19);
      goto LABEL_98;
    }

LABEL_96:
    if (!v19)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v6 = *(v2 + 8);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http1_get_http1_protocol";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v19, &type, &v48))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v51 = "nw_http1_get_http1_protocol";
      v22 = "%{public}s called with null handle->http1_stream";
      goto LABEL_95;
    }

    if (v48 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v51 = "nw_http1_get_http1_protocol";
      v22 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_95;
    }

    v25 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v32 = os_log_type_enabled(v20, type);
    if (!v25)
    {
      if (!v32)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v51 = "nw_http1_get_http1_protocol";
      v22 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_95;
    }

    if (!v32)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v51 = "nw_http1_get_http1_protocol";
    v52 = 2082;
    v53 = v25;
    v27 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v20, v21, v27, buf, 0x16u);
    goto LABEL_50;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!v7)
  {
    goto LABEL_98;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_116;
    }

    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = (v8 + 488);
      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_http1_get_stream_for_protocol";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (__nwlog_fault(v28, &type, &v48))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_stream_for_protocol";
        v31 = "%{public}s called with null handle->http1_connection";
        goto LABEL_113;
      }

      if (v48 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v51 = "nw_http1_get_stream_for_protocol";
        v31 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_113;
      }

      v34 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v35 = os_log_type_enabled(v29, type);
      if (v34)
      {
        if (v35)
        {
          *buf = 136446466;
          v51 = "nw_http1_get_stream_for_protocol";
          v52 = 2082;
          v53 = v34;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_114;
      }

      if (v35)
      {
        *buf = 136446210;
        v51 = "nw_http1_get_stream_for_protocol";
        v31 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_113:
        _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
      }
    }

LABEL_114:
    if (v28)
    {
      free(v28);
    }

LABEL_116:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v51 = "nw_protocol_http1_copy_info";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v36, &type, &v48))
    {
      goto LABEL_130;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v51 = "nw_protocol_http1_copy_info";
      v39 = "%{public}s called with null http1_stream";
      goto LABEL_128;
    }

    if (v48 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v51 = "nw_protocol_http1_copy_info";
      v39 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_128;
    }

    v44 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    v42 = type;
    v45 = os_log_type_enabled(gLogObj, type);
    if (v44)
    {
      if (v45)
      {
        *buf = 136446466;
        v51 = "nw_protocol_http1_copy_info";
        v52 = 2082;
        v53 = v44;
        _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v44);
      if (!v36)
      {
        return 0;
      }

      goto LABEL_131;
    }

    if (v45)
    {
      *buf = 136446210;
      v51 = "nw_protocol_http1_copy_info";
      v39 = "%{public}s called with null http1_stream, no backtrace";
LABEL_136:
      v46 = v41;
      v47 = v42;
      goto LABEL_129;
    }

    goto LABEL_130;
  }

  v9 = (v2 + 8);
LABEL_16:
  v10 = *v9;
  if (!*v9)
  {
    goto LABEL_116;
  }

  if (a2 == 253)
  {
    return *(v7 + 328);
  }

  v12 = *(v10 + 256);
  if (!v12)
  {
    if (a2 == 255)
    {
      goto LABEL_25;
    }

    return 0;
  }

  result = nw_protocol_common_copy_info(v12, a2);
  if (a2 != 255)
  {
    return result;
  }

  if (!result)
  {
LABEL_25:
    result = _nw_array_create();
    v14 = *(v10 + 256);
    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_26:
    v15 = *(v14 + 768);
    if (v15)
    {
      if (!result)
      {
        return result;
      }

      v16 = result;
      _nw_array_append(result, v15);
      result = v16;
    }

    goto LABEL_29;
  }

  v14 = *(v10 + 256);
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_29:
  v17 = *(v10 + 352);
  if (v17)
  {
    if (result)
    {
      v18 = result;
      _nw_array_append(result, v17);
      return v18;
    }
  }

  return result;
}

void nw_protocol_http1_notify(void *a1, uint64_t a2, int a3)
{
  v114 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_http1_protocol";
    v49 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v49, &type, &v98))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http1_get_http1_protocol";
      v52 = "%{public}s called with null protocol";
    }

    else
    {
      if (v98 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v51 = type;
        v54 = os_log_type_enabled(v50, type);
        if (!backtrace_string)
        {
          if (!v54)
          {
            goto LABEL_177;
          }

          *buf = 136446210;
          v101 = "nw_http1_get_http1_protocol";
          v52 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_176;
        }

        if (v54)
        {
          *buf = 136446466;
          v101 = "nw_http1_get_http1_protocol";
          v102 = 2082;
          v103 = backtrace_string;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_177;
      }

      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http1_get_http1_protocol";
      v52 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_176;
  }

  v3 = a1[5];
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_http1_protocol";
    v49 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v49, &type, &v98))
    {
      goto LABEL_177;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v98 != 1)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (!os_log_type_enabled(v50, type))
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_http1_protocol";
        v52 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_176;
      }

      v55 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type;
      v56 = os_log_type_enabled(v50, type);
      if (!v55)
      {
        if (!v56)
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_http1_protocol";
        v52 = "%{public}s called with null handle, no backtrace";
        goto LABEL_176;
      }

      if (!v56)
      {
        goto LABEL_104;
      }

      *buf = 136446466;
      v101 = "nw_http1_get_http1_protocol";
      v102 = 2082;
      v103 = v55;
      v57 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_103;
    }

    v50 = __nwlog_obj();
    v51 = type;
    if (!os_log_type_enabled(v50, type))
    {
      goto LABEL_177;
    }

    *buf = 136446210;
    v101 = "nw_http1_get_http1_protocol";
    v52 = "%{public}s called with null handle";
LABEL_176:
    _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
    goto LABEL_177;
  }

  v4 = *(v3 + 24);
  v5 = a1[5];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_179;
    }

    v6 = *(v3 + 16);
    if (v6)
    {
      v5 = (v6 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_http1_protocol";
    v49 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v49, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (!os_log_type_enabled(v50, type))
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_http1_protocol";
        v52 = "%{public}s called with null handle->http1_connection";
        goto LABEL_176;
      }

      if (v98 != 1)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (!os_log_type_enabled(v50, type))
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_http1_protocol";
        v52 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_176;
      }

      v55 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type;
      v63 = os_log_type_enabled(v50, type);
      if (!v55)
      {
        if (!v63)
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_http1_protocol";
        v52 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_176;
      }

      if (v63)
      {
        *buf = 136446466;
        v101 = "nw_http1_get_http1_protocol";
        v102 = 2082;
        v103 = v55;
        v57 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_103;
      }

LABEL_104:
      free(v55);
      if (!v49)
      {
LABEL_179:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v11 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v98 = 0;
        if (!__nwlog_fault(v11, &type, &v98))
        {
          goto LABEL_287;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v101 = "nw_protocol_http1_notify";
          v14 = "%{public}s called with null http1";
        }

        else
        {
          if (v98 == 1)
          {
            v80 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v81 = gLogObj;
            v82 = type;
            v83 = os_log_type_enabled(gLogObj, type);
            if (v80)
            {
              if (v83)
              {
                *buf = 136446466;
                v101 = "nw_protocol_http1_notify";
                v102 = 2082;
                v103 = v80;
                _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v80);
LABEL_287:
              if (!v11)
              {
                return;
              }

              goto LABEL_288;
            }

            if (!v83)
            {
              goto LABEL_287;
            }

            *buf = 136446210;
            v101 = "nw_protocol_http1_notify";
            v14 = "%{public}s called with null http1, no backtrace";
            v84 = v81;
            v85 = v82;
LABEL_286:
            _os_log_impl(&dword_181A37000, v84, v85, v14, buf, 0xCu);
            goto LABEL_287;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v101 = "nw_protocol_http1_notify";
          v14 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        goto LABEL_285;
      }

LABEL_178:
      free(v49);
      goto LABEL_179;
    }

LABEL_177:
    if (!v49)
    {
      goto LABEL_179;
    }

    goto LABEL_178;
  }

  v7 = *(v3 + 8);
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_http1_protocol";
    v49 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v49, &type, &v98))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http1_get_http1_protocol";
      v52 = "%{public}s called with null handle->http1_stream";
      goto LABEL_176;
    }

    if (v98 != 1)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http1_get_http1_protocol";
      v52 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_176;
    }

    v55 = __nw_create_backtrace_string();
    v50 = __nwlog_obj();
    v51 = type;
    v62 = os_log_type_enabled(v50, type);
    if (!v55)
    {
      if (!v62)
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http1_get_http1_protocol";
      v52 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_176;
    }

    if (!v62)
    {
      goto LABEL_104;
    }

    *buf = 136446466;
    v101 = "nw_http1_get_http1_protocol";
    v102 = 2082;
    v103 = v55;
    v57 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_103:
    _os_log_impl(&dword_181A37000, v50, v51, v57, buf, 0x16u);
    goto LABEL_104;
  }

  v5 = (v7 + 248);
LABEL_10:
  if (!*v5)
  {
    goto LABEL_179;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_http1_notify";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v11, &type, &v98))
    {
      goto LABEL_287;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null other_protocol";
    }

    else if (v98 == 1)
    {
      v58 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v59 = os_log_type_enabled(v12, type);
      if (v58)
      {
        if (!v59)
        {
          goto LABEL_279;
        }

        *buf = 136446466;
        v101 = "nw_protocol_http1_notify";
        v102 = 2082;
        v103 = v58;
        v60 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_278;
      }

      if (!v59)
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_285;
  }

  if (a3 > 15)
  {
    if (a3 == 21)
    {
      return;
    }

    if (a3 != 26)
    {
      if (a3 == 16)
      {
        goto LABEL_35;
      }

LABEL_31:
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v15 = (v3 + 16);
          goto LABEL_66;
        }

LABEL_270:
        __nwlog_obj();
        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v11 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v98 = 0;
        if (!__nwlog_fault(v11, &type, &v98))
        {
          goto LABEL_287;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v101 = "nw_protocol_http1_notify";
          v14 = "%{public}s called with null http1_connection";
          goto LABEL_285;
        }

        if (v98 != 1)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v101 = "nw_protocol_http1_notify";
          v14 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_285;
        }

        v58 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v97 = os_log_type_enabled(v12, type);
        if (!v58)
        {
          if (!v97)
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v101 = "nw_protocol_http1_notify";
          v14 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_285;
        }

        if (!v97)
        {
          goto LABEL_279;
        }

        goto LABEL_277;
      }

      v41 = *(v3 + 8);
      if (v41)
      {
        v15 = (v41 + 256);
LABEL_66:
        v42 = *v15;
        if (*v15)
        {
          v43 = *(v42 + 488);
          if (v43)
          {
            v34 = *(v43 + 48);
            goto LABEL_69;
          }

          if (*(v42 + 158))
          {
            return;
          }

          v36 = __nwlog_obj();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          v45 = *(v42 + 488);
          if (v45)
          {
            LODWORD(v45) = *(v45 + 424);
          }

          v46 = *(*(v42 + 480) + 372);
          v47 = *(v42 + 860);
          if (a3 > 0x1E)
          {
            v48 = "unknown";
          }

          else
          {
            v48 = off_1E6A33500[a3];
          }

          *buf = 136447746;
          v101 = "nw_protocol_http1_notify";
          v102 = 2082;
          v103 = (v42 + 74);
          v104 = 2080;
          v105 = " ";
          v106 = 1024;
          v107 = v46;
          v108 = 1024;
          v109 = v47;
          v110 = 1024;
          v111 = v45;
          v112 = 2080;
          v113 = v48;
          v30 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping notification type %s";
          goto LABEL_80;
        }

        goto LABEL_270;
      }

      __nwlog_obj();
      *buf = 136446210;
      v101 = "nw_http1_get_connection_for_protocol";
      v86 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v98 = 0;
      if (__nwlog_fault(v86, &type, &v98))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v87 = __nwlog_obj();
          v88 = type;
          if (!os_log_type_enabled(v87, type))
          {
            goto LABEL_268;
          }

          *buf = 136446210;
          v101 = "nw_http1_get_connection_for_protocol";
          v89 = "%{public}s called with null handle->http1_stream";
          goto LABEL_267;
        }

        if (v98 != 1)
        {
          v87 = __nwlog_obj();
          v88 = type;
          if (!os_log_type_enabled(v87, type))
          {
            goto LABEL_268;
          }

          *buf = 136446210;
          v101 = "nw_http1_get_connection_for_protocol";
          v89 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
          goto LABEL_267;
        }

        v92 = __nw_create_backtrace_string();
        v87 = __nwlog_obj();
        v88 = type;
        v93 = os_log_type_enabled(v87, type);
        if (v92)
        {
          if (v93)
          {
            *buf = 136446466;
            v101 = "nw_http1_get_connection_for_protocol";
            v102 = 2082;
            v103 = v92;
            _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v92);
          goto LABEL_268;
        }

        if (v93)
        {
          *buf = 136446210;
          v101 = "nw_http1_get_connection_for_protocol";
          v89 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_267:
          _os_log_impl(&dword_181A37000, v87, v88, v89, buf, 0xCu);
        }
      }

LABEL_268:
      if (v86)
      {
        free(v86);
      }

      goto LABEL_270;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v10 = (v3 + 16);
        goto LABEL_46;
      }

LABEL_234:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v11 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v98 = 0;
      if (!__nwlog_fault(v11, &type, &v98))
      {
        goto LABEL_287;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v14 = "%{public}s called with null http1_connection";
        goto LABEL_285;
      }

      if (v98 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v14 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_285;
      }

      v58 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v95 = os_log_type_enabled(v12, type);
      if (!v58)
      {
        if (!v95)
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v14 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_285;
      }

      if (!v95)
      {
        goto LABEL_279;
      }

LABEL_277:
      *buf = 136446466;
      v101 = "nw_protocol_http1_notify";
      v102 = 2082;
      v103 = v58;
      v60 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_278;
    }

    v20 = *(v3 + 8);
    if (v20)
    {
      v10 = (v20 + 256);
LABEL_46:
      v21 = *v10;
      if (*v10)
      {
        v22 = *(v21 + 488);
        if (!v22)
        {
          return;
        }

        v23 = *(v22 + 32);
        if (!v23)
        {
          return;
        }

        v24 = *(v21 + 32);
        if (v24 == v23)
        {
          return;
        }

        nw_protocol_set_output_handler(*(v21 + 488), v24);
        if (*(v22 + 158))
        {
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v26 = *(v22 + 256);
        v27 = *(*(v22 + 248) + 372);
        if (v26)
        {
          LODWORD(v26) = *(v26 + 860);
        }

        v28 = *(v22 + 424);
        v29 = *(v21 + 32);
        *buf = 136447746;
        v101 = "nw_protocol_http1_notify";
        v102 = 2082;
        v103 = (v22 + 74);
        v104 = 2080;
        v105 = " ";
        v106 = 1024;
        v107 = v27;
        v108 = 1024;
        v109 = v26;
        v110 = 1024;
        v111 = v28;
        v112 = 2048;
        v113 = v29;
        v30 = "%{public}s %{public}s%s<i%u:c%u:s%u> Output handler for stream replaced to: %p";
        v31 = v25;
LABEL_81:
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, v30, buf, 0x3Cu);
        return;
      }

      goto LABEL_234;
    }

    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_connection_for_protocol";
    v68 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v68, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = type;
        if (!os_log_type_enabled(v69, type))
        {
          goto LABEL_232;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_connection_for_protocol";
        v71 = "%{public}s called with null handle->http1_stream";
        goto LABEL_231;
      }

      if (v98 != 1)
      {
        v69 = __nwlog_obj();
        v70 = type;
        if (!os_log_type_enabled(v69, type))
        {
          goto LABEL_232;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_connection_for_protocol";
        v71 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_231;
      }

      v78 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type;
      v79 = os_log_type_enabled(v69, type);
      if (v78)
      {
        if (v79)
        {
          *buf = 136446466;
          v101 = "nw_http1_get_connection_for_protocol";
          v102 = 2082;
          v103 = v78;
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v78);
        goto LABEL_232;
      }

      if (v79)
      {
        *buf = 136446210;
        v101 = "nw_http1_get_connection_for_protocol";
        v71 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_231:
        _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0xCu);
      }
    }

LABEL_232:
    if (v68)
    {
      free(v68);
    }

    goto LABEL_234;
  }

  if (a3 <= 12)
  {
    if (a3 == 7)
    {
      return;
    }

    if (a3)
    {
      goto LABEL_31;
    }

    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_http1_notify";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v11, &type, &v98))
    {
      goto LABEL_287;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null type";
    }

    else if (v98 == 1)
    {
      v58 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v61 = os_log_type_enabled(v12, type);
      if (v58)
      {
        if (!v61)
        {
          goto LABEL_279;
        }

        *buf = 136446466;
        v101 = "nw_protocol_http1_notify";
        v102 = 2082;
        v103 = v58;
        v60 = "%{public}s called with null type, dumping backtrace:%{public}s";
        goto LABEL_278;
      }

      if (!v61)
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null type, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null type, backtrace limit exceeded";
    }

LABEL_285:
    v84 = v12;
    v85 = v13;
    goto LABEL_286;
  }

  if (a3 == 15)
  {
    if (v4 == 2)
    {
      v9 = (v3 + 8);
LABEL_40:
      v18 = *v9;
      if (v18)
      {
        v19 = *(v18 + 48);

        nw_protocol_reset(a1, v19);
        return;
      }

LABEL_217:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v11 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v98 = 0;
      if (!__nwlog_fault(v11, &type, &v98))
      {
        goto LABEL_287;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v14 = "%{public}s called with null http1_stream";
        goto LABEL_285;
      }

      if (v98 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v14 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_285;
      }

      v58 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v94 = os_log_type_enabled(v12, type);
      if (!v58)
      {
        if (!v94)
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v101 = "nw_protocol_http1_notify";
        v14 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_285;
      }

      if (v94)
      {
        goto LABEL_224;
      }

      goto LABEL_279;
    }

    if (v4 != 3)
    {
      goto LABEL_217;
    }

    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = (v8 + 488);
      goto LABEL_40;
    }

    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_stream_for_protocol";
    v64 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v64, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v65 = __nwlog_obj();
        v66 = type;
        if (!os_log_type_enabled(v65, type))
        {
          goto LABEL_215;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_stream_for_protocol";
        v67 = "%{public}s called with null handle->http1_connection";
        goto LABEL_214;
      }

      if (v98 != 1)
      {
        v65 = __nwlog_obj();
        v66 = type;
        if (!os_log_type_enabled(v65, type))
        {
          goto LABEL_215;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_stream_for_protocol";
        v67 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_214;
      }

      v76 = __nw_create_backtrace_string();
      v65 = __nwlog_obj();
      v66 = type;
      v77 = os_log_type_enabled(v65, type);
      if (v76)
      {
        if (v77)
        {
          *buf = 136446466;
          v101 = "nw_http1_get_stream_for_protocol";
          v102 = 2082;
          v103 = v76;
          _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v76);
        goto LABEL_215;
      }

      if (v77)
      {
        *buf = 136446210;
        v101 = "nw_http1_get_stream_for_protocol";
        v67 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_214:
        _os_log_impl(&dword_181A37000, v65, v66, v67, buf, 0xCu);
      }
    }

LABEL_215:
    if (v64)
    {
      free(v64);
    }

    goto LABEL_217;
  }

  if (a3 != 13)
  {
    goto LABEL_31;
  }

LABEL_35:
  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_253;
    }

    v16 = *(v3 + 16);
    if (v16)
    {
      v17 = (v16 + 488);
      goto LABEL_56;
    }

    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http1_get_stream_for_protocol";
    v72 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v72, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v73 = __nwlog_obj();
        v74 = type;
        if (!os_log_type_enabled(v73, type))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_stream_for_protocol";
        v75 = "%{public}s called with null handle->http1_connection";
        goto LABEL_250;
      }

      if (v98 != 1)
      {
        v73 = __nwlog_obj();
        v74 = type;
        if (!os_log_type_enabled(v73, type))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        v101 = "nw_http1_get_stream_for_protocol";
        v75 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_250;
      }

      v90 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type;
      v91 = os_log_type_enabled(v73, type);
      if (v90)
      {
        if (v91)
        {
          *buf = 136446466;
          v101 = "nw_http1_get_stream_for_protocol";
          v102 = 2082;
          v103 = v90;
          _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v90);
        goto LABEL_251;
      }

      if (v91)
      {
        *buf = 136446210;
        v101 = "nw_http1_get_stream_for_protocol";
        v75 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_250:
        _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
      }
    }

LABEL_251:
    if (v72)
    {
      free(v72);
    }

LABEL_253:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v101 = "nw_protocol_http1_notify";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v11, &type, &v98))
    {
      goto LABEL_287;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null http1_stream";
      goto LABEL_285;
    }

    if (v98 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_285;
    }

    v58 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v96 = os_log_type_enabled(v12, type);
    if (!v58)
    {
      if (!v96)
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v101 = "nw_protocol_http1_notify";
      v14 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_285;
    }

    if (v96)
    {
LABEL_224:
      *buf = 136446466;
      v101 = "nw_protocol_http1_notify";
      v102 = 2082;
      v103 = v58;
      v60 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_278:
      _os_log_impl(&dword_181A37000, v12, v13, v60, buf, 0x16u);
    }

LABEL_279:
    free(v58);
    if (!v11)
    {
      return;
    }

LABEL_288:
    free(v11);
    return;
  }

  v17 = (v3 + 8);
LABEL_56:
  v32 = *v17;
  if (!*v17)
  {
    goto LABEL_253;
  }

  v33 = *(v32 + 256);
  if (!v33)
  {
    if (*(v32 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v37 = *(v32 + 256);
    v38 = *(*(v32 + 248) + 372);
    if (v37)
    {
      LODWORD(v37) = *(v37 + 860);
    }

    v39 = off_1E6A33500[a3];
    v40 = *(v32 + 424);
    *buf = 136447746;
    v101 = "nw_protocol_http1_notify";
    v102 = 2082;
    v103 = (v32 + 74);
    v104 = 2080;
    v105 = " ";
    v106 = 1024;
    v107 = v38;
    v108 = 1024;
    v109 = v37;
    v110 = 1024;
    v111 = v40;
    v112 = 2080;
    v113 = v39;
    v30 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping notification type %s";
LABEL_80:
    v31 = v36;
    goto LABEL_81;
  }

  v34 = *(v33 + 32);
LABEL_69:

  nw_protocol_notify(v34, a2, a3);
}

void nw_protocol_http1_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v288 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v171 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v171, v287, v281))
    {
      goto LABEL_422;
    }

    if (v287[0] == 17)
    {
      v172 = __nwlog_obj();
      v173 = v287[0];
      if (!os_log_type_enabled(v172, v287[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v174 = "%{public}s called with null protocol";
    }

    else
    {
      if (v281[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v172 = __nwlog_obj();
        v173 = v287[0];
        v180 = os_log_type_enabled(v172, v287[0]);
        if (!backtrace_string)
        {
          if (!v180)
          {
            goto LABEL_422;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v174 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_421;
        }

        if (v180)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v172, v173, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_422;
      }

      v172 = __nwlog_obj();
      v173 = v287[0];
      if (!os_log_type_enabled(v172, v287[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v174 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_421;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v171 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v171, v287, v281))
    {
      goto LABEL_422;
    }

    if (v287[0] != 17)
    {
      if (v281[0] != OS_LOG_TYPE_INFO)
      {
        v172 = __nwlog_obj();
        v173 = v287[0];
        if (!os_log_type_enabled(v172, v287[0]))
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v174 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_421;
      }

      v181 = __nw_create_backtrace_string();
      v172 = __nwlog_obj();
      v173 = v287[0];
      v182 = os_log_type_enabled(v172, v287[0]);
      if (!v181)
      {
        if (!v182)
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v174 = "%{public}s called with null handle, no backtrace";
        goto LABEL_421;
      }

      if (!v182)
      {
        goto LABEL_302;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v181;
      v183 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_301;
    }

    v172 = __nwlog_obj();
    v173 = v287[0];
    if (!os_log_type_enabled(v172, v287[0]))
    {
      goto LABEL_422;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v174 = "%{public}s called with null handle";
LABEL_421:
    _os_log_impl(&dword_181A37000, v172, v173, v174, buf, 0xCu);
    goto LABEL_422;
  }

  v5 = *(handle + 6);
  v6 = a1->handle;
  if (v5 == 1)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_424;
    }

    v7 = *(handle + 2);
    if (v7)
    {
      v6 = (v7 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v171 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v171, v287, v281))
    {
      if (v287[0] == 17)
      {
        v172 = __nwlog_obj();
        v173 = v287[0];
        if (!os_log_type_enabled(v172, v287[0]))
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v174 = "%{public}s called with null handle->http1_connection";
        goto LABEL_421;
      }

      if (v281[0] != OS_LOG_TYPE_INFO)
      {
        v172 = __nwlog_obj();
        v173 = v287[0];
        if (!os_log_type_enabled(v172, v287[0]))
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v174 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_421;
      }

      v181 = __nw_create_backtrace_string();
      v172 = __nwlog_obj();
      v173 = v287[0];
      v203 = os_log_type_enabled(v172, v287[0]);
      if (!v181)
      {
        if (!v203)
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v174 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_421;
      }

      if (v203)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v181;
        v183 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_301;
      }

LABEL_302:
      free(v181);
      if (!v171)
      {
LABEL_424:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_error";
        v175 = _os_log_send_and_compose_impl();
        v287[0] = 16;
        v281[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v175, v287, v281))
        {
          goto LABEL_456;
        }

        if (v287[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v176 = gLogObj;
          v177 = v287[0];
          if (!os_log_type_enabled(gLogObj, v287[0]))
          {
            goto LABEL_456;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_error";
          v178 = "%{public}s called with null http1";
        }

        else
        {
          if (v281[0] == OS_LOG_TYPE_INFO)
          {
            v230 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v231 = gLogObj;
            v232 = v287[0];
            v233 = os_log_type_enabled(gLogObj, v287[0]);
            if (!v230)
            {
              if (!v233)
              {
                goto LABEL_456;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_error";
              v178 = "%{public}s called with null http1, no backtrace";
              goto LABEL_461;
            }

            if (v233)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_error";
              *&buf[12] = 2082;
              *&buf[14] = v230;
              _os_log_impl(&dword_181A37000, v231, v232, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v230);
LABEL_456:
            if (!v175)
            {
              return;
            }

            goto LABEL_457;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v176 = gLogObj;
          v177 = v287[0];
          if (!os_log_type_enabled(gLogObj, v287[0]))
          {
            goto LABEL_456;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_error";
          v178 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_454:
        v236 = v176;
        v237 = v177;
LABEL_455:
        _os_log_impl(&dword_181A37000, v236, v237, v178, buf, 0xCu);
        goto LABEL_456;
      }

LABEL_423:
      free(v171);
      goto LABEL_424;
    }

LABEL_422:
    if (!v171)
    {
      goto LABEL_424;
    }

    goto LABEL_423;
  }

  v8 = *(handle + 1);
  if (!v8)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v171 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v171, v287, v281))
    {
      goto LABEL_422;
    }

    if (v287[0] == 17)
    {
      v172 = __nwlog_obj();
      v173 = v287[0];
      if (!os_log_type_enabled(v172, v287[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v174 = "%{public}s called with null handle->http1_stream";
      goto LABEL_421;
    }

    if (v281[0] != OS_LOG_TYPE_INFO)
    {
      v172 = __nwlog_obj();
      v173 = v287[0];
      if (!os_log_type_enabled(v172, v287[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v174 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_421;
    }

    v181 = __nw_create_backtrace_string();
    v172 = __nwlog_obj();
    v173 = v287[0];
    v202 = os_log_type_enabled(v172, v287[0]);
    if (!v181)
    {
      if (!v202)
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v174 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_421;
    }

    if (!v202)
    {
      goto LABEL_302;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v181;
    v183 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_301:
    _os_log_impl(&dword_181A37000, v172, v173, v183, buf, 0x16u);
    goto LABEL_302;
  }

  v6 = (v8 + 248);
LABEL_10:
  if (!*v6)
  {
    goto LABEL_424;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_error";
    v175 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v175, v287, v281))
    {
      goto LABEL_456;
    }

    if (v287[0] == 17)
    {
      v176 = __nwlog_obj();
      v177 = v287[0];
      if (!os_log_type_enabled(v176, v287[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v178 = "%{public}s called with null other_protocol";
    }

    else if (v281[0] == OS_LOG_TYPE_INFO)
    {
      v192 = __nw_create_backtrace_string();
      v176 = __nwlog_obj();
      v177 = v287[0];
      v193 = os_log_type_enabled(v176, v287[0]);
      if (v192)
      {
        if (v193)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_error";
          *&buf[12] = 2082;
          *&buf[14] = v192;
          _os_log_impl(&dword_181A37000, v176, v177, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v192);
        if (!v175)
        {
          return;
        }

LABEL_457:
        free(v175);
        return;
      }

      if (!v193)
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v178 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v176 = __nwlog_obj();
      v177 = v287[0];
      if (!os_log_type_enabled(v176, v287[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v178 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_454;
  }

  if (v5 == 2)
  {
    v10 = *(handle + 1);
    if (v10)
    {
      v9 = (v10 + 256);
      goto LABEL_17;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v197 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v197, v287, v281))
    {
      if (v287[0] == 17)
      {
        v198 = __nwlog_obj();
        v199 = v287[0];
        if (!os_log_type_enabled(v198, v287[0]))
        {
          goto LABEL_440;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v200 = "%{public}s called with null handle->http1_stream";
        goto LABEL_439;
      }

      if (v281[0] != OS_LOG_TYPE_INFO)
      {
        v198 = __nwlog_obj();
        v199 = v287[0];
        if (!os_log_type_enabled(v198, v287[0]))
        {
          goto LABEL_440;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v200 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_439;
      }

      v204 = __nw_create_backtrace_string();
      v198 = __nwlog_obj();
      v199 = v287[0];
      v205 = os_log_type_enabled(v198, v287[0]);
      if (v204)
      {
        if (v205)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v204;
          _os_log_impl(&dword_181A37000, v198, v199, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v204);
        goto LABEL_440;
      }

      if (v205)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v200 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_439:
        _os_log_impl(&dword_181A37000, v198, v199, v200, buf, 0xCu);
      }
    }

LABEL_440:
    if (v197)
    {
      free(v197);
    }

LABEL_442:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_error";
    v175 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v175, v287, v281))
    {
      goto LABEL_456;
    }

    if (v287[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v176 = gLogObj;
      v177 = v287[0];
      if (!os_log_type_enabled(gLogObj, v287[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v178 = "%{public}s called with null http1_connection";
      goto LABEL_454;
    }

    if (v281[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v176 = gLogObj;
      v177 = v287[0];
      if (!os_log_type_enabled(gLogObj, v287[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v178 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_454;
    }

    v234 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v231 = gLogObj;
    v232 = v287[0];
    v235 = os_log_type_enabled(gLogObj, v287[0]);
    if (v234)
    {
      if (v235)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v234;
        _os_log_impl(&dword_181A37000, v231, v232, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v234);
      if (!v175)
      {
        return;
      }

      goto LABEL_457;
    }

    if (v235)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v178 = "%{public}s called with null http1_connection, no backtrace";
LABEL_461:
      v236 = v231;
      v237 = v232;
      goto LABEL_455;
    }

    goto LABEL_456;
  }

  if (v5 != 3)
  {
    goto LABEL_442;
  }

  v9 = (handle + 16);
LABEL_17:
  v11 = *v9;
  if (!*v9)
  {
    goto LABEL_442;
  }

  if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v184 = a1;
    v185 = a2;
    v186 = __nwlog_obj();
    v187 = os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG);
    a2 = v185;
    v188 = v187;
    a1 = v184;
    if (v188)
    {
      v189 = *(v11 + 488);
      v190 = *(*(v11 + 480) + 372);
      v191 = *(v11 + 860);
      if (v189)
      {
        LODWORD(v189) = *(v189 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_protocol_http1_error";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v190;
      *&buf[38] = 1024;
      *&buf[40] = v191;
      *v286 = 1024;
      *&v286[2] = v189;
      *&v286[6] = 1024;
      *&v286[8] = a3;
      _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called with error %d", buf, 0x38u);
      a1 = v184;
      a2 = v185;
    }
  }

  if (!a3)
  {
    if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(v11 + 488);
        v19 = *(*(v11 + 480) + 372);
        v20 = *(v11 + 860);
        if (v18)
        {
          LODWORD(v18) = *(v18 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v19;
        *&buf[38] = 1024;
        *&buf[40] = v20;
        *v286 = 1024;
        *&v286[2] = v18;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> suppressing error 0", buf, 0x32u);
      }
    }

    return;
  }

  if (*(v11 + 868))
  {
    if ((*(v11 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v13 = *(v11 + 488);
        v14 = *(*(v11 + 480) + 372);
        v15 = *(v11 + 860);
        if (v13)
        {
          LODWORD(v13) = *(v13 + 424);
        }

        v16 = *(v11 + 868);
        *buf = 136448002;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v14;
        *&buf[38] = 1024;
        *&buf[40] = v15;
        *v286 = 1024;
        *&v286[2] = v13;
        *&v286[6] = 1024;
        *&v286[8] = a3;
        *&v286[12] = 1024;
        *&v286[14] = v16;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> suppressing received error: %d, connection error already set to: %d", buf, 0x3Eu);
      }
    }

    return;
  }

  *(v11 + 868) = a3;
  v278 = a1;
  v279 = a2;
  if ((*(v11 + 872) & 0x2000) != 0)
  {
    if (*(v11 + 158))
    {
      goto LABEL_112;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v58 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    v59 = *(v11 + 488);
    v60 = *(*(v11 + 480) + 372);
    v61 = *(v11 + 860);
    if (v59)
    {
      LODWORD(v59) = *(v59 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v60;
    *&buf[38] = 1024;
    *&buf[40] = v61;
    *v286 = 1024;
    *&v286[2] = v59;
    v62 = "%{public}s %{public}s%s<i%u:c%u:s%u> input already finished, returning";
LABEL_111:
    _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, v62, buf, 0x32u);
    goto LABEL_112;
  }

  *(v11 + 872) |= 0x2000u;
  if ((*(v11 + 874) & 4) != 0)
  {
    if (*(v11 + 158))
    {
      goto LABEL_112;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v58 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    v63 = *(v11 + 488);
    v64 = *(*(v11 + 480) + 372);
    v65 = *(v11 + 860);
    if (v63)
    {
      LODWORD(v63) = *(v63 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v64;
    *&buf[38] = 1024;
    *&buf[40] = v65;
    *v286 = 1024;
    *&v286[2] = v63;
    v62 = "%{public}s %{public}s%s<i%u:c%u:s%u> already getting input frames, returning";
    goto LABEL_111;
  }

  v275 = a3;
  v21 = 0;
  *v281 = 0;
  v282 = v281;
  do
  {
    input_frames = nw_protocol_get_input_frames(*(v11 + 32), v11, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v281);
    v23 = *v281;
    if (!*v281)
    {
      goto LABEL_38;
    }

    v280 = v21;
    if (gLogDatapath == 1)
    {
      v56 = __nwlog_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2048;
        *&buf[24] = v281;
        *&buf[32] = 2048;
        *&buf[34] = v11 + 616;
        *&buf[42] = 1024;
        *v286 = 1;
        *&v286[4] = 1024;
        *&v286[6] = 1;
        *&v286[10] = 1024;
        *&v286[12] = 1;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
      }
    }

    v24 = 0;
    *v287 = 0;
    *&v287[8] = v287;
    do
    {
      v25 = v23;
      v26 = v23 + 32;
      v23 = *(v23 + 32);
      if (!v23 && !*(v25 + 40))
      {
        v23 = 0;
      }

      if (gLogDatapath == 1)
      {
        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = *(v25 + 52);
          if (v32)
          {
            v32 -= *(v25 + 56) + *(v25 + 60);
          }

          if (v23)
          {
            v33 = *(v23 + 52);
            if (v33)
            {
              v33 -= *(v23 + 56) + *(v23 + 60);
            }
          }

          else
          {
            v33 = 0;
          }

          *buf = 136447234;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 2048;
          *&buf[14] = v25;
          *&buf[22] = 1024;
          *&buf[24] = v32;
          *&buf[28] = 2048;
          *&buf[30] = v23;
          *&buf[38] = 1024;
          *&buf[40] = v33;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
        }
      }

      v27 = *(v25 + 32);
      v28 = *(v25 + 40);
      v29 = (v27 + 40);
      if (!v27)
      {
        v29 = &v282;
      }

      *v29 = v28;
      *v28 = v27;
      v30 = *&v287[8];
      *(v25 + 32) = 0;
      *(v25 + 40) = v30;
      *v30 = v25;
      *&v287[8] = v26;
      ++v24;
    }

    while (v23);
    if (v24)
    {
      if (gLogDatapath == 1)
      {
        v57 = __nwlog_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
        }
      }

      v34 = *v287;
      v35 = v24;
      if (!*v287)
      {
        goto LABEL_79;
      }

      v35 = v24;
      do
      {
        v36 = v34;
        v37 = (v34 + 32);
        v34 = *(v34 + 32);
        if (!v34 && !*(v36 + 40))
        {
          v34 = 0;
        }

        if (gLogDatapath == 1)
        {
          log = __nwlog_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v42 = *(v36 + 52);
            if (v42)
            {
              v42 -= *(v36 + 56) + *(v36 + 60);
            }

            if (v34)
            {
              v43 = *(v34 + 52);
              if (v43)
              {
                v43 -= *(v34 + 56) + *(v34 + 60);
              }
            }

            else
            {
              v43 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v36;
            *&buf[22] = 1024;
            *&buf[24] = v42;
            *&buf[28] = 2048;
            *&buf[30] = v34;
            *&buf[38] = 1024;
            *&buf[40] = v43;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
          }
        }

        v38 = *(v36 + 32);
        v39 = *(v36 + 40);
        v40 = (v38 + 40);
        if (!v38)
        {
          v40 = &v287[8];
        }

        *v40 = v39;
        *v39 = v38;
        *v37 = 0;
        v37[1] = 0;
        v41 = *(v11 + 624);
        *(v36 + 40) = v41;
        *v41 = v36;
        *(v11 + 624) = v37;
        --v35;
      }

      while (v34);
      if (v35)
      {
LABEL_79:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v35;
        v44 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v283 = 0;
        if (!__nwlog_fault(v44, &type, &v283))
        {
          goto LABEL_93;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          v46 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_93;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v35;
          v47 = v45;
          v48 = v46;
          v49 = "%{public}s failed to deliver all temp frames, remaining %u frames";
        }

        else if (v283 == 1)
        {
          v50 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v51 = gLogObj;
          loga = type;
          v52 = os_log_type_enabled(gLogObj, type);
          if (v50)
          {
            if (v52)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v35;
              *&buf[18] = 2082;
              *&buf[20] = v50;
              _os_log_impl(&dword_181A37000, v51, loga, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v50);
            goto LABEL_93;
          }

          if (!v52)
          {
LABEL_93:
            if (v44)
            {
              free(v44);
            }

            goto LABEL_36;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v35;
          v47 = v51;
          v48 = loga;
          v49 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          v54 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_93;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v35;
          v47 = v53;
          v48 = v54;
          v49 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x12u);
        goto LABEL_93;
      }
    }

LABEL_36:
    if (gLogDatapath == 1)
    {
      v55 = __nwlog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        *&buf[18] = 2048;
        *&buf[20] = v281;
        *&buf[28] = 2048;
        *&buf[30] = v11 + 616;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s moved %u frames from %p to %p", buf, 0x26u);
      }
    }

    v21 = v280;
LABEL_38:
    v21 += input_frames;
  }

  while (input_frames);
  if (gLogDatapath == 1)
  {
    v221 = __nwlog_obj();
    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v93 = *v281;
  if (*v281)
  {
    *(*v281 + 40) = v287;
    *v287 = v93;
    *&v287[8] = v282;
    *v281 = 0;
    v282 = v281;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_21_49595;
    buf[32] = 0;
    do
    {
      v94 = *v287;
      if (!*v287)
      {
        break;
      }

      v95 = *(*v287 + 32);
      v96 = *(*v287 + 40);
      v97 = (v95 + 40);
      if (!v95)
      {
        v97 = &v287[8];
      }

      *v97 = v96;
      *v96 = v95;
      *(v94 + 32) = 0;
      *(v94 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v98 = *(v11 + 872);
  a3 = v275;
  if ((v98 & 0x6000) == 0x2000 && !*(v11 + 616))
  {
    *(v11 + 872) = v98 | 0x4000;
    if (*(v11 + 488))
    {
      if (*(v11 + 868) && llhttp_message_needs_eof(v11 + 200))
      {
        if ((v98 & 4) == 0)
        {
          v128 = 5;
          goto LABEL_226;
        }

LABEL_414:
        if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v243 = __nwlog_obj();
          if (os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG))
          {
            v244 = *(v11 + 488);
            v245 = *(*(v11 + 480) + 372);
            v246 = *(v11 + 860);
            if (v244)
            {
              LODWORD(v244) = *(v244 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v11 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v245;
            *&buf[38] = 1024;
            *&buf[40] = v246;
            *v286 = 1024;
            *&v286[2] = v244;
            _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> signaled eof and terminated message successfully", buf, 0x32u);
            a3 = v275;
          }
        }

        *(v11 + 874) |= 1u;
        goto LABEL_151;
      }

      v133 = llhttp_finish(v11 + 200);
      v134 = *(v11 + 872);
      if ((v134 & 4) != 0)
      {
        goto LABEL_414;
      }

      v128 = v133;
      if (!v133)
      {
        goto LABEL_414;
      }

      if (v133 != 14)
      {
        goto LABEL_226;
      }

      v135 = *(v11 + 488);
      if (v135)
      {
        v128 = 14;
        if ((v134 & 1) == 0 || (*(v135 + 428) & 2) != 0 || *(v11 + 848) || *(v11 + 852))
        {
LABEL_226:
          if ((*(v11 + 158) & 1) == 0)
          {
            v136 = __nwlog_obj();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
            {
              v137 = *(v11 + 488);
              if (v137)
              {
                LODWORD(v137) = *(v137 + 424);
              }

              if (v128 >= 0x24)
              {
                abort();
              }

              v138 = *(*(v11 + 480) + 372);
              v139 = *(v11 + 860);
              v140 = off_1E6A35BE0[v128];
              *buf = 136447746;
              *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v138;
              *&buf[38] = 1024;
              *&buf[40] = v139;
              *v286 = 1024;
              *&v286[2] = v137;
              *&v286[6] = 2080;
              *&v286[8] = v140;
              _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> parser eof did not terminate full message with errno: %s, deferring input error", buf, 0x3Cu);
            }
          }

          goto LABEL_151;
        }

        if (!*(v11 + 856))
        {
          if ((v134 & 2) != 0 && *(v11 + 800))
          {
            if (!*(v11 + 808))
            {
              v229 = strdup("");
              if (!v229)
              {
                v273 = __nwlog_obj();
                os_log_type_enabled(v273, OS_LOG_TYPE_ERROR);
                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                v274 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v274))
                {
                  __break(1u);
                  return;
                }

                free(v274);
              }

              *(v11 + 808) = v229;
            }

            nw_http1_on_header_value_complete(v11 + 200);
          }

          nw_http1_on_headers_complete(v11 + 200);
          nw_http1_on_message_complete(v11 + 200);
          a3 = v275;
          goto LABEL_414;
        }

LABEL_225:
        a3 = v275;
        goto LABEL_226;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_recover_incomplete_header";
      v255 = _os_log_send_and_compose_impl();
      v287[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v255, v287, &type))
      {
        if (v287[0] == 17)
        {
          v256 = __nwlog_obj();
          v257 = v287[0];
          if (os_log_type_enabled(v256, v287[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_recover_incomplete_header";
            v258 = "%{public}s called with null http1_stream";
LABEL_553:
            _os_log_impl(&dword_181A37000, v256, v257, v258, buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v266 = __nw_create_backtrace_string();
          v256 = __nwlog_obj();
          v257 = v287[0];
          v267 = os_log_type_enabled(v256, v287[0]);
          if (v266)
          {
            if (v267)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_recover_incomplete_header";
              *&buf[12] = 2082;
              *&buf[14] = v266;
              _os_log_impl(&dword_181A37000, v256, v257, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v266);
            goto LABEL_554;
          }

          if (v267)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_recover_incomplete_header";
            v258 = "%{public}s called with null http1_stream, no backtrace";
            goto LABEL_553;
          }
        }

        else
        {
          v256 = __nwlog_obj();
          v257 = v287[0];
          if (os_log_type_enabled(v256, v287[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_recover_incomplete_header";
            v258 = "%{public}s called with null http1_stream, backtrace limit exceeded";
            goto LABEL_553;
          }
        }
      }

LABEL_554:
      if (v255)
      {
        free(v255);
      }

      v128 = 14;
      goto LABEL_225;
    }

    if ((v98 & 0x100) != 0)
    {
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v163 = __nwlog_obj();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
        {
          v164 = *(v11 + 488);
          v165 = *(*(v11 + 480) + 372);
          v166 = *(v11 + 860);
          if (v164)
          {
            LODWORD(v164) = *(v164 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v165;
          *&buf[38] = 1024;
          *&buf[40] = v166;
          *v286 = 1024;
          *&v286[2] = v164;
          _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
          a3 = v275;
        }
      }

      goto LABEL_151;
    }

    *(v11 + 872) = v98 | 0x4100;
    if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v251 = __nwlog_obj();
      if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
      {
        v252 = *(v11 + 488);
        v253 = *(*(v11 + 480) + 372);
        v254 = *(v11 + 860);
        if (v252)
        {
          LODWORD(v252) = *(v252 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v253;
        *&buf[38] = 1024;
        *&buf[40] = v254;
        *v286 = 1024;
        *&v286[2] = v252;
        _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
        a3 = v275;
      }
    }

    v141 = *(v11 + 480);
    if (!v141)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v247 = _os_log_send_and_compose_impl();
      v287[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v247, v287, &type))
      {
        goto LABEL_563;
      }

      if (v287[0] == 17)
      {
        v248 = __nwlog_obj();
        v249 = v287[0];
        if (!os_log_type_enabled(v248, v287[0]))
        {
          goto LABEL_563;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v250 = "%{public}s called with null http1";
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v259 = __nw_create_backtrace_string();
        v248 = __nwlog_obj();
        v249 = v287[0];
        v260 = os_log_type_enabled(v248, v287[0]);
        if (v259)
        {
          if (v260)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v259;
            _os_log_impl(&dword_181A37000, v248, v249, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v259);
          goto LABEL_563;
        }

        if (!v260)
        {
          goto LABEL_563;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v250 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v248 = __nwlog_obj();
        v249 = v287[0];
        if (!os_log_type_enabled(v248, v287[0]))
        {
          goto LABEL_563;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v250 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v272 = buf;
LABEL_562:
      _os_log_impl(&dword_181A37000, v248, v249, v250, v272, 0xCu);
      goto LABEL_563;
    }

    if ((*(v11 + 872) & 0x800) != 0)
    {
      if ((*(v11 + 158) & 1) != 0 || gLogDatapath != 1 || (v167 = __nwlog_obj(), !os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG)))
      {
LABEL_379:
        if (*(v11 + 488))
        {
          goto LABEL_151;
        }

LABEL_380:
        v214 = *(v11 + 784);
        if (v214)
        {
          nw_queue_set_timer_values(v214, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          if ((*(v11 + 158) & 1) == 0)
          {
            v215 = __nwlog_obj();
            if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
            {
              v216 = *(v11 + 488);
              v217 = *(*(v11 + 480) + 372);
              v218 = *(v11 + 860);
              if (v216)
              {
                LODWORD(v216) = *(v216 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_close";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v217;
              *&buf[38] = 1024;
              *&buf[40] = v218;
              *v286 = 1024;
              *&v286[2] = v216;
              _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
              a3 = v275;
            }
          }

          v219 = *(v11 + 608);
          v220 = *(v11 + 496);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
          *&buf[24] = &unk_1E6A32780;
          *&buf[32] = v219;
          nw_queue_context_async(v220, buf);
        }

        goto LABEL_151;
      }

      v168 = *(v11 + 488);
      v169 = *(*(v11 + 480) + 372);
      v170 = *(v11 + 860);
      if (v168)
      {
        LODWORD(v168) = *(v168 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v169;
      *&buf[38] = 1024;
      *&buf[40] = v170;
      *v286 = 1024;
      *&v286[2] = v168;
      _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
      goto LABEL_565;
    }

    *(v11 + 872) |= 0x800u;
    v142 = *(v141 + 368) + 1;
    *(v141 + 368) = v142;
    if (v142 == v142 << 31 >> 31)
    {
LABEL_374:
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v261 = __nwlog_obj();
        if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
        {
          v262 = *(v11 + 488);
          v263 = *(*(v11 + 480) + 372);
          v264 = *(v11 + 860);
          if (v262)
          {
            LODWORD(v262) = *(v262 + 424);
          }

          v265 = *(v141 + 368) + *(v141 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v263;
          *&buf[38] = 1024;
          *&buf[40] = v264;
          *v286 = 1024;
          *&v286[2] = v262;
          *&v286[6] = 1024;
          *&v286[8] = v265;
          _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
          a3 = v275;
        }
      }

      v211 = *(v11 + 496);
      if (!v211)
      {
        __nwlog_obj();
        *v287 = 136446210;
        *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v247 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v283 = 0;
        if (!__nwlog_fault(v247, &type, &v283))
        {
          goto LABEL_563;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v248 = __nwlog_obj();
          v249 = type;
          if (!os_log_type_enabled(v248, type))
          {
            goto LABEL_563;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v250 = "%{public}s called with null http1_connection->context";
LABEL_561:
          v272 = v287;
          goto LABEL_562;
        }

        if (v283 != 1)
        {
          v248 = __nwlog_obj();
          v249 = type;
          if (!os_log_type_enabled(v248, type))
          {
            goto LABEL_563;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v250 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_561;
        }

        v268 = __nw_create_backtrace_string();
        v248 = __nwlog_obj();
        v249 = type;
        v269 = os_log_type_enabled(v248, type);
        if (!v268)
        {
          if (!v269)
          {
            goto LABEL_563;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v250 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_561;
        }

        if (!v269)
        {
          goto LABEL_540;
        }

        *v287 = 136446466;
        *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v287[12] = 2082;
        *&v287[14] = v268;
        v270 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
        goto LABEL_539;
      }

      v212 = *(v11 + 480);
      if (v212)
      {
        v213 = *(v212 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v213;
        nw_queue_context_async(v211, buf);
        goto LABEL_379;
      }

      __nwlog_obj();
      *v287 = 136446210;
      *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v247 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v283 = 0;
      if (__nwlog_fault(v247, &type, &v283))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v248 = __nwlog_obj();
          v249 = type;
          if (!os_log_type_enabled(v248, type))
          {
            goto LABEL_563;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v250 = "%{public}s called with null http1";
          goto LABEL_561;
        }

        if (v283 != 1)
        {
          v248 = __nwlog_obj();
          v249 = type;
          if (!os_log_type_enabled(v248, type))
          {
            goto LABEL_563;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v250 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_561;
        }

        v268 = __nw_create_backtrace_string();
        v248 = __nwlog_obj();
        v249 = type;
        v271 = os_log_type_enabled(v248, type);
        if (!v268)
        {
          if (!v271)
          {
            goto LABEL_563;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v250 = "%{public}s called with null http1, no backtrace";
          goto LABEL_561;
        }

        if (!v271)
        {
          goto LABEL_540;
        }

        *v287 = 136446466;
        *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v287[12] = 2082;
        *&v287[14] = v268;
        v270 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_539:
        _os_log_impl(&dword_181A37000, v248, v249, v270, v287, 0x16u);
LABEL_540:
        free(v268);
        if (v247)
        {
LABEL_564:
          free(v247);
        }

LABEL_565:
        a3 = v275;
        if (*(v11 + 488))
        {
          goto LABEL_151;
        }

        goto LABEL_380;
      }

LABEL_563:
      if (!v247)
      {
        goto LABEL_565;
      }

      goto LABEL_564;
    }

    __nwlog_obj();
    v143 = *(v141 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v143;
    v144 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v144, v287, &type))
    {
      if (v287[0] == 17)
      {
        v145 = __nwlog_obj();
        v146 = v287[0];
        if (os_log_type_enabled(v145, v287[0]))
        {
          v147 = *(v141 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v147;
          v148 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_370:
          _os_log_impl(&dword_181A37000, v145, v146, v148, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v194 = __nw_create_backtrace_string();
        v145 = __nwlog_obj();
        v146 = v287[0];
        v195 = os_log_type_enabled(v145, v287[0]);
        if (v194)
        {
          if (v195)
          {
            v196 = *(v141 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v196;
            *&buf[42] = 2082;
            *v286 = v194;
            _os_log_impl(&dword_181A37000, v145, v146, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v194);
          a3 = v275;
          goto LABEL_371;
        }

        a3 = v275;
        if (v195)
        {
          v210 = *(v141 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v210;
          v148 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_370;
        }
      }

      else
      {
        v145 = __nwlog_obj();
        v146 = v287[0];
        if (os_log_type_enabled(v145, v287[0]))
        {
          v201 = *(v141 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v201;
          v148 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_370;
        }
      }
    }

LABEL_371:
    if (v144)
    {
      free(v144);
    }

    *(v141 + 368) = -1;
    goto LABEL_374;
  }

LABEL_151:
  v99 = *(v11 + 616);
  v100 = *(v11 + 632);
  v101 = *(v11 + 872);
  v102 = v101 & 0x204;
  if ((v101 & 0x2000) != 0)
  {
    v112 = v99 | v100;
    v113 = (v101 >> 9) & 1;
    if (v102 == 4)
    {
      v113 = 1;
    }

    if (v112)
    {
      v114 = 1;
    }

    else
    {
      v114 = v113 == 0;
    }

    if (v114)
    {
      if (v102 == 4)
      {
        goto LABEL_190;
      }

      if (v112)
      {
        goto LABEL_190;
      }

      *(v11 + 864) = 5;
      if (*(v11 + 158))
      {
        goto LABEL_190;
      }

      v103 = __nwlog_obj();
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_190;
      }

      v115 = *(v11 + 488);
      v116 = *(*(v11 + 480) + 372);
      v117 = *(v11 + 860);
      if (v115)
      {
        LODWORD(v115) = *(v115 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v116;
      *&buf[38] = 1024;
      *&buf[40] = v117;
      *v286 = 1024;
      *&v286[2] = v115;
      v107 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection error";
    }

    else
    {
      *(v11 + 864) = 4;
      if (*(v11 + 158))
      {
        goto LABEL_190;
      }

      v103 = __nwlog_obj();
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_190;
      }

      v121 = *(v11 + 488);
      v122 = *(*(v11 + 480) + 372);
      v123 = *(v11 + 860);
      if (v121)
      {
        LODWORD(v121) = *(v121 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v122;
      *&buf[38] = 1024;
      *&buf[40] = v123;
      *v286 = 1024;
      *&v286[2] = v121;
      v107 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection complete";
    }

LABEL_189:
    _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, v107, buf, 0x32u);
    goto LABEL_190;
  }

  if (v102 != 4)
  {
    if (*(v11 + 158))
    {
      goto LABEL_190;
    }

    v103 = __nwlog_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_190;
    }

    v118 = *(v11 + 488);
    v119 = *(*(v11 + 480) + 372);
    v120 = *(v11 + 860);
    if (v118)
    {
      LODWORD(v118) = *(v118 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v119;
    *&buf[38] = 1024;
    *&buf[40] = v120;
    *v286 = 1024;
    *&v286[2] = v118;
    v107 = "%{public}s %{public}s%s<i%u:c%u:s%u> no change to http1 connection state";
    goto LABEL_189;
  }

  if (v99 | v100)
  {
    if (!v99)
    {
      goto LABEL_190;
    }

    if (v100)
    {
      goto LABEL_190;
    }

    *(v11 + 864) = 3;
    if (*(v11 + 158))
    {
      goto LABEL_190;
    }

    v103 = __nwlog_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_190;
    }

    v129 = *(v11 + 488);
    v130 = *(*(v11 + 480) + 372);
    v131 = *(v11 + 860);
    if (v129)
    {
      LODWORD(v129) = *(v129 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v130;
    *&buf[38] = 1024;
    *&buf[40] = v131;
    *v286 = 1024;
    *&v286[2] = v129;
    v107 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream pending";
    goto LABEL_189;
  }

  *(v11 + 864) = 2;
  if ((*(v11 + 158) & 1) == 0)
  {
    v103 = __nwlog_obj();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
    {
      v104 = *(v11 + 488);
      v105 = *(*(v11 + 480) + 372);
      v106 = *(v11 + 860);
      if (v104)
      {
        LODWORD(v104) = *(v104 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v105;
      *&buf[38] = 1024;
      *&buf[40] = v106;
      *v286 = 1024;
      *&v286[2] = v104;
      v107 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream complete";
      goto LABEL_189;
    }
  }

LABEL_190:
  if (*(v11 + 864) == 1)
  {
    if (v21)
    {
      v124 = *(v11 + 488);
      if (v124)
      {
        nw_protocol_input_available(*(v124 + 48), v124);
      }
    }
  }

LABEL_112:
  v66 = *(v11 + 488);
  if (!v66)
  {
    if ((*(v11 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v74 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v11 + 488);
        v76 = *(*(v11 + 480) + 372);
        v77 = *(v11 + 860);
        if (v75)
        {
          LODWORD(v75) = *(v75 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v76;
        *&buf[38] = 1024;
        *&buf[40] = v77;
        *v286 = 1024;
        *&v286[2] = v75;
        *&v286[6] = 1024;
        *&v286[8] = a3;
        v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> not passing up error %d, no stream";
        v79 = v74;
        v80 = 56;
        goto LABEL_133;
      }
    }

LABEL_134:
    if (a3 != 57)
    {
      return;
    }

LABEL_135:
    v85 = *(v11 + 480);
    if (!v85)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v206 = _os_log_send_and_compose_impl();
      v287[0] = 16;
      v281[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v206, v287, v281))
      {
        goto LABEL_489;
      }

      if (v287[0] == 17)
      {
        v207 = __nwlog_obj();
        v208 = v287[0];
        if (!os_log_type_enabled(v207, v287[0]))
        {
          goto LABEL_489;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v209 = "%{public}s called with null http1";
      }

      else if (v281[0] == OS_LOG_TYPE_INFO)
      {
        v222 = __nw_create_backtrace_string();
        v207 = __nwlog_obj();
        v208 = v287[0];
        v223 = os_log_type_enabled(v207, v287[0]);
        if (v222)
        {
          if (v223)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v222;
            _os_log_impl(&dword_181A37000, v207, v208, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v222);
          goto LABEL_489;
        }

        if (!v223)
        {
          goto LABEL_489;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v209 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v207 = __nwlog_obj();
        v208 = v287[0];
        if (!os_log_type_enabled(v207, v287[0]))
        {
          goto LABEL_489;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v209 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v242 = buf;
LABEL_488:
      _os_log_impl(&dword_181A37000, v207, v208, v209, v242, 0xCu);
      goto LABEL_489;
    }

    if ((*(v11 + 872) & 0x800) != 0)
    {
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v108 = __nwlog_obj();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          v109 = *(v11 + 488);
          v110 = *(*(v11 + 480) + 372);
          v111 = *(v11 + 860);
          if (v109)
          {
            LODWORD(v109) = *(v109 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v110;
          *&buf[38] = 1024;
          *&buf[40] = v111;
          *v286 = 1024;
          *&v286[2] = v109;
          _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_253;
    }

    *(v11 + 872) |= 0x800u;
    v86 = *(v85 + 368) + 1;
    *(v85 + 368) = v86;
    if (v86 == v86 << 31 >> 31)
    {
LABEL_248:
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v224 = __nwlog_obj();
        if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
        {
          v225 = *(v11 + 488);
          v226 = *(*(v11 + 480) + 372);
          v227 = *(v11 + 860);
          if (v225)
          {
            LODWORD(v225) = *(v225 + 424);
          }

          v228 = *(v85 + 368) + *(v85 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v226;
          *&buf[38] = 1024;
          *&buf[40] = v227;
          *v286 = 1024;
          *&v286[2] = v225;
          *&v286[6] = 1024;
          *&v286[8] = v228;
          _os_log_impl(&dword_181A37000, v224, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v150 = *(v11 + 496);
      if (!v150)
      {
        __nwlog_obj();
        *v287 = 136446210;
        *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v206 = _os_log_send_and_compose_impl();
        v281[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v206, v281, &type))
        {
          goto LABEL_489;
        }

        if (v281[0] == OS_LOG_TYPE_FAULT)
        {
          v207 = __nwlog_obj();
          v208 = v281[0];
          if (!os_log_type_enabled(v207, v281[0]))
          {
            goto LABEL_489;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v209 = "%{public}s called with null http1_connection->context";
LABEL_487:
          v242 = v287;
          goto LABEL_488;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v207 = __nwlog_obj();
          v208 = v281[0];
          if (!os_log_type_enabled(v207, v281[0]))
          {
            goto LABEL_489;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v209 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_487;
        }

        v238 = __nw_create_backtrace_string();
        v207 = __nwlog_obj();
        v208 = v281[0];
        v239 = os_log_type_enabled(v207, v281[0]);
        if (!v238)
        {
          if (!v239)
          {
            goto LABEL_489;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v209 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_487;
        }

        if (v239)
        {
          *v287 = 136446466;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v287[12] = 2082;
          *&v287[14] = v238;
          v240 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_473:
          _os_log_impl(&dword_181A37000, v207, v208, v240, v287, 0x16u);
        }

LABEL_474:
        free(v238);
        if (!v206)
        {
LABEL_253:
          v153 = *(v11 + 488);
          if (v153)
          {
            if (*(v11 + 158))
            {
              goto LABEL_260;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v154 = gLogObj;
            v155 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            v153 = *(v11 + 488);
            if (v155)
            {
              v156 = *(*(v11 + 480) + 372);
              v157 = *(v11 + 860);
              if (v153)
              {
                LODWORD(v153) = *(v153 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_protocol_http1_error";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v156;
              *&buf[38] = 1024;
              *&buf[40] = v157;
              *v286 = 1024;
              *&v286[2] = v153;
              *&v286[6] = 1024;
              *&v286[8] = 57;
              _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> received %d from below, sending disconnected above", buf, 0x38u);
              v153 = *(v11 + 488);
            }

            if (v153)
            {
LABEL_260:
              v158 = *(v153 + 48);
            }

            else
            {
              v158 = 0;
            }

            nw_protocol_disconnected(v158, v278);
          }

          else if ((*(v11 + 158) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v159 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v160 = *(v11 + 488);
              v161 = *(*(v11 + 480) + 372);
              v162 = *(v11 + 860);
              if (v160)
              {
                LODWORD(v160) = *(v160 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_protocol_http1_error";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v161;
              *&buf[38] = 1024;
              *&buf[40] = v162;
              *v286 = 1024;
              *&v286[2] = v160;
              *&v286[6] = 1024;
              *&v286[8] = 57;
              _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> received %d from below, marking connection as not re-usable", buf, 0x38u);
            }
          }

          return;
        }

LABEL_490:
        free(v206);
        goto LABEL_253;
      }

      v151 = *(v11 + 480);
      if (v151)
      {
        v152 = *(v151 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v152;
        nw_queue_context_async(v150, buf);
        goto LABEL_253;
      }

      __nwlog_obj();
      *v287 = 136446210;
      *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v206 = _os_log_send_and_compose_impl();
      v281[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v206, v281, &type))
      {
        if (v281[0] == OS_LOG_TYPE_FAULT)
        {
          v207 = __nwlog_obj();
          v208 = v281[0];
          if (!os_log_type_enabled(v207, v281[0]))
          {
            goto LABEL_489;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v209 = "%{public}s called with null http1";
          goto LABEL_487;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v207 = __nwlog_obj();
          v208 = v281[0];
          if (!os_log_type_enabled(v207, v281[0]))
          {
            goto LABEL_489;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v209 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_487;
        }

        v238 = __nw_create_backtrace_string();
        v207 = __nwlog_obj();
        v208 = v281[0];
        v241 = os_log_type_enabled(v207, v281[0]);
        if (!v238)
        {
          if (!v241)
          {
            goto LABEL_489;
          }

          *v287 = 136446210;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v209 = "%{public}s called with null http1, no backtrace";
          goto LABEL_487;
        }

        if (v241)
        {
          *v287 = 136446466;
          *&v287[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v287[12] = 2082;
          *&v287[14] = v238;
          v240 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_473;
        }

        goto LABEL_474;
      }

LABEL_489:
      if (!v206)
      {
        goto LABEL_253;
      }

      goto LABEL_490;
    }

    __nwlog_obj();
    v87 = *(v85 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v87;
    v88 = _os_log_send_and_compose_impl();
    v287[0] = 16;
    v281[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v88, v287, v281))
    {
      if (v287[0] == 17)
      {
        v89 = __nwlog_obj();
        v90 = v287[0];
        if (os_log_type_enabled(v89, v287[0]))
        {
          v91 = *(v85 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v91;
          v92 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_244:
          _os_log_impl(&dword_181A37000, v89, v90, v92, buf, 0x2Au);
        }
      }

      else if (v281[0] == OS_LOG_TYPE_INFO)
      {
        v125 = __nw_create_backtrace_string();
        v89 = __nwlog_obj();
        v90 = v287[0];
        v126 = os_log_type_enabled(v89, v287[0]);
        if (v125)
        {
          if (v126)
          {
            v127 = *(v85 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v127;
            *&buf[42] = 2082;
            *v286 = v125;
            _os_log_impl(&dword_181A37000, v89, v90, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v125);
          goto LABEL_245;
        }

        if (v126)
        {
          v149 = *(v85 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v149;
          v92 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_244;
        }
      }

      else
      {
        v89 = __nwlog_obj();
        v90 = v287[0];
        if (os_log_type_enabled(v89, v287[0]))
        {
          v132 = *(v85 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v132;
          v92 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_244;
        }
      }
    }

LABEL_245:
    if (v88)
    {
      free(v88);
    }

    *(v85 + 368) = -1;
    goto LABEL_248;
  }

  if (*(v11 + 874))
  {
    v67 = *(v11 + 158);
    goto LABEL_128;
  }

  v67 = *(v11 + 158);
  if ((*(v11 + 872) & 4) != 0)
  {
LABEL_128:
    if ((v67 & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v81 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v82 = *(v11 + 488);
        v83 = *(*(v11 + 480) + 372);
        v84 = *(v11 + 860);
        if (v82)
        {
          LODWORD(v82) = *(v82 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v83;
        *&buf[38] = 1024;
        *&buf[40] = v84;
        *v286 = 1024;
        *&v286[2] = v82;
        v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> not passing up error because stream finished";
        v79 = v81;
        v80 = 50;
LABEL_133:
        _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, v78, buf, v80);
        goto LABEL_134;
      }
    }

    goto LABEL_134;
  }

  if (*(v11 + 158))
  {
    v72 = v279;
    goto LABEL_121;
  }

  v68 = __nwlog_obj();
  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);
  v66 = *(v11 + 488);
  if (v69)
  {
    v70 = *(*(v11 + 480) + 372);
    v71 = *(v11 + 860);
    if (v66)
    {
      LODWORD(v66) = *(v66 + 424);
    }

    *buf = 136447746;
    *&buf[4] = "nw_protocol_http1_error";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v70;
    *&buf[38] = 1024;
    *&buf[40] = v71;
    *v286 = 1024;
    *&v286[2] = v66;
    *&v286[6] = 1024;
    *&v286[8] = a3;
    _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> passing up error: %d", buf, 0x38u);
    v66 = *(v11 + 488);
  }

  v72 = v279;
  if (v66)
  {
LABEL_121:
    v73 = *(v66 + 48);
  }

  else
  {
    v73 = 0;
  }

  nw_protocol_error(v73, v72);
  if (a3 == 57)
  {
    goto LABEL_135;
  }
}

uint64_t nw_http1_on_header_value_complete(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_http1_on_header_value_complete";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v28, &type, &v38))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v38 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v41 = "nw_http1_on_header_value_complete";
          v31 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v33 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v41 = "nw_http1_on_header_value_complete";
          v31 = "%{public}s called with null parser, no backtrace";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (!v33)
      {
        goto LABEL_74;
      }

      *buf = 136446466;
      v41 = "nw_http1_on_header_value_complete";
      v42 = 2082;
      v43 = backtrace_string;
      v34 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_73;
    }

    v29 = __nwlog_obj();
    v30 = type;
    if (!os_log_type_enabled(v29, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v41 = "nw_http1_on_header_value_complete";
    v31 = "%{public}s called with null parser";
LABEL_91:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_92;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_http1_on_header_value_complete";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v28, &type, &v38))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v38 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v41 = "nw_http1_on_header_value_complete";
          v31 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v35 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v35)
        {
          *buf = 136446210;
          v41 = "nw_http1_on_header_value_complete";
          v31 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (!v35)
      {
        goto LABEL_74;
      }

      *buf = 136446466;
      v41 = "nw_http1_on_header_value_complete";
      v42 = 2082;
      v43 = backtrace_string;
      v34 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_73;
    }

    v29 = __nwlog_obj();
    v30 = type;
    if (!os_log_type_enabled(v29, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v41 = "nw_http1_on_header_value_complete";
    v31 = "%{public}s called with null http1_connection";
    goto LABEL_91;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_http1_on_header_value_complete";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v28, &type, &v38))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v41 = "nw_http1_on_header_value_complete";
      v31 = "%{public}s called with null http1_stream";
      goto LABEL_91;
    }

    if (v38 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v41 = "nw_http1_on_header_value_complete";
        v31 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v36 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v41 = "nw_http1_on_header_value_complete";
        v31 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (!v36)
    {
      goto LABEL_74;
    }

    *buf = 136446466;
    v41 = "nw_http1_on_header_value_complete";
    v42 = 2082;
    v43 = backtrace_string;
    v34 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_73:
    _os_log_impl(&dword_181A37000, v29, v30, v34, buf, 0x16u);
    goto LABEL_74;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_http1_on_header_value_complete";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v28, &type, &v38))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v41 = "nw_http1_on_header_value_complete";
        v31 = "%{public}s called with null parsed_fields";
        goto LABEL_91;
      }

LABEL_92:
      if (v28)
      {
        free(v28);
      }

      return 0xFFFFFFFFLL;
    }

    if (v38 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v41 = "nw_http1_on_header_value_complete";
        v31 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v37 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v41 = "nw_http1_on_header_value_complete";
        v31 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v37)
    {
      *buf = 136446466;
      v41 = "nw_http1_on_header_value_complete";
      v42 = 2082;
      v43 = backtrace_string;
      v34 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_73;
    }

LABEL_74:
    free(backtrace_string);
    goto LABEL_92;
  }

  v4 = *(v1 + 808);
  v5 = *(v1 + 844);
  if (v5)
  {
    v6 = &v4[v5];
    while (1)
    {
      v7 = *v4;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }

      ++v4;
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        v9 = 0;
        v4 = v6;
        goto LABEL_23;
      }
    }

    while (1)
    {
      v10 = (v5 - 1);
      v11 = v4[v10];
      if (v11 != 32 && v11 != 9)
      {
        break;
      }

      LODWORD(v5) = v5 - 1;
      if (!v10)
      {
        LODWORD(v5) = 0;
        break;
      }
    }

    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

LABEL_23:
  v13 = *(v1 + 840);
  if ((*(*(v1 + 480) + 376) & 1) != 0 && v13 == 4 && !strncasecmp(*(v1 + 800), "Host", v13))
  {
    v14 = ":authority";
    v15 = v3;
    v16 = -1;
  }

  else
  {
    v14 = *(v1 + 800);
    v15 = v3;
    v16 = v13;
  }

  if ((nw_http_parsed_fields_add(v15, v14, v16, v4, v9, 0) & 1) == 0)
  {
    if (*(v1 + 840))
    {
      if (*(v1 + 844))
      {
        if ((*(v1 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v18 = *(v1 + 488);
            v19 = *(*(v1 + 480) + 372);
            v20 = *(v1 + 860);
            if (v18)
            {
              LODWORD(v18) = *(v18 + 424);
            }

            v21 = *(v1 + 840);
            v22 = *(v1 + 800);
            v23 = *(v1 + 844);
            v24 = *(v1 + 808);
            *buf = 136448515;
            v41 = "nw_http1_on_header_value_complete";
            v42 = 2082;
            v43 = (v1 + 74);
            v44 = 2080;
            v45 = " ";
            v46 = 1024;
            v47 = v19;
            v48 = 1024;
            v49 = v20;
            v50 = 1024;
            v51 = v18;
            v52 = 1040;
            v53 = v21;
            v54 = 2085;
            v55 = v22;
            v56 = 1040;
            v57 = v23;
            v58 = 2085;
            v59 = v24;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> discarded invalid header %{sensitive}.*s with value %{sensitive}.*s", buf, 0x52u);
          }
        }
      }
    }
  }

  v25 = *(v1 + 800);
  if (v25)
  {
    free(v25);
    *(v1 + 800) = 0;
  }

  *(v1 + 840) = 0;
  v26 = *(v1 + 808);
  if (v26)
  {
    free(v26);
    *(v1 + 808) = 0;
  }

  result = 0;
  *(v1 + 844) = 0;
  return result;
}

uint64_t nw_http1_on_headers_complete(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v60 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v80[0]) = 0;
    if (!__nwlog_fault(v60, type, v80))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null parser";
      goto LABEL_149;
    }

    if (LOBYTE(v80[0]) != 1)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null parser, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type[0];
    v65 = os_log_type_enabled(v61, type[0]);
    if (!backtrace_string)
    {
      if (!v65)
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null parser, no backtrace";
      goto LABEL_149;
    }

    if (!v65)
    {
      goto LABEL_127;
    }

    *applier = 136446466;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v66 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_126:
    _os_log_impl(&dword_181A37000, v61, v62, v66, applier, 0x16u);
    goto LABEL_127;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v60 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v80[0]) = 0;
    if (!__nwlog_fault(v60, type, v80))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null http1_connection";
      goto LABEL_149;
    }

    if (LOBYTE(v80[0]) != 1)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type[0];
    v67 = os_log_type_enabled(v61, type[0]);
    if (!backtrace_string)
    {
      if (!v67)
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_149;
    }

    if (!v67)
    {
      goto LABEL_127;
    }

    *applier = 136446466;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v66 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
    goto LABEL_126;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v60 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v80[0]) = 0;
    if (!__nwlog_fault(v60, type, v80))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null http1_stream";
      goto LABEL_149;
    }

    if (LOBYTE(v80[0]) != 1)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type[0];
    v68 = os_log_type_enabled(v61, type[0]);
    if (!backtrace_string)
    {
      if (!v68)
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_149;
    }

    if (!v68)
    {
      goto LABEL_127;
    }

    *applier = 136446466;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v66 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
    goto LABEL_126;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v60 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v80[0]) = 0;
    if (!__nwlog_fault(v60, type, v80))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null parsed_fields";
      goto LABEL_149;
    }

    if (LOBYTE(v80[0]) != 1)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (!os_log_type_enabled(v61, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v63 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v62 = type[0];
    v69 = os_log_type_enabled(v61, type[0]);
    if (backtrace_string)
    {
      if (v69)
      {
        *applier = 136446466;
        *&applier[4] = "nw_http1_on_headers_complete";
        *&applier[12] = 2082;
        *&applier[14] = backtrace_string;
        v66 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
        goto LABEL_126;
      }

LABEL_127:
      free(backtrace_string);
      goto LABEL_150;
    }

    if (!v69)
    {
      goto LABEL_150;
    }

    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v63 = "%{public}s called with null parsed_fields, no backtrace";
LABEL_149:
    _os_log_impl(&dword_181A37000, v61, v62, v63, applier, 0xCu);
LABEL_150:
    if (v60)
    {
      free(v60);
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 74) && *(a1 + 75))
  {
    v4 = *(a1 + 82);
    if ((v4 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (*(v1 + 158))
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v4 = *(a1 + 82);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (*(a1 + 72) == 1 || (v10 = *(a1 + 84), (v10 - 100) < 0x64) || v10 == 204 || v10 == 304 || (v4 & 0x40) != 0)
  {
    if (*(v1 + 158))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v4 & 0x208) == 0x200)
  {
    goto LABEL_10;
  }

  if ((v4 & 0x28) != 0)
  {
    if (*(v1 + 158))
    {
      goto LABEL_27;
    }

LABEL_26:
    if (gLogDatapath == 1)
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v70 = *(v1 + 488);
        v71 = *(*(v1 + 480) + 372);
        v72 = *(v1 + 860);
        if (v70)
        {
          LODWORD(v70) = *(v70 + 424);
        }

        *applier = 136447490;
        *&applier[4] = "nw_http1_on_headers_complete";
        *&applier[12] = 2082;
        *&applier[14] = v1 + 74;
        *&applier[22] = 2080;
        v92 = " ";
        LOWORD(v93) = 1024;
        *(&v93 + 2) = v71;
        HIWORD(v93) = 1024;
        LODWORD(v94) = v72;
        WORD2(v94) = 1024;
        *(&v94 + 6) = v70;
        v9 = "%{public}s %{public}s%s<i%u:c%u:s%u> http (headers) should keep alive";
LABEL_132:
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, v9, applier, 0x32u);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  if (*(v1 + 158))
  {
    goto LABEL_27;
  }

LABEL_11:
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(v1 + 488);
      v7 = *(*(v1 + 480) + 372);
      v8 = *(v1 + 860);
      if (v6)
      {
        LODWORD(v6) = *(v6 + 424);
      }

      *applier = 136447490;
      *&applier[4] = "nw_http1_on_headers_complete";
      *&applier[12] = 2082;
      *&applier[14] = v1 + 74;
      *&applier[22] = 2080;
      v92 = " ";
      LOWORD(v93) = 1024;
      *(&v93 + 2) = v7;
      HIWORD(v93) = 1024;
      LODWORD(v94) = v8;
      WORD2(v94) = 1024;
      *(&v94 + 6) = v6;
      v9 = "%{public}s %{public}s%s<i%u:c%u:s%u> http (headers) should not keep alive";
      goto LABEL_132;
    }
  }

LABEL_27:
  v11 = *(*(v2 + 248) + 376);
  v12 = v3;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    _nw_http_parsed_fields_copy_response(v12);
    v15 = v14;

    if (v15)
    {
      v16 = v15;
      status_code = _nw_http_response_get_status_code(v16);

      if (*(v2 + 416))
      {
        v18 = v16;
        _nw_http_response_set_reason_phrase();

        v19 = *(v2 + 416);
        if (v19)
        {
          free(v19);
          *(v2 + 416) = 0;
        }
      }

      if ((*(*(v2 + 248) + 376) & 8) != 0)
      {
        v20 = nw_http_metadata_copy_request(*(v2 + 384));
        if (status_code == 101)
        {
          if (v20)
          {
            v21 = v20;
            v22 = v20;
            v23 = _nw_http_fields_copy_value_by_name();

            if (v23)
            {
              v79 = 0;
              v24 = asprintf(&v79, "%s%s", v23, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
              free(v23);
              if (v24 != -1)
              {
                *md = 0;
                v89 = 0;
                v90 = 0;
                CC_SHA1(v79, v24, md);
                if (v79)
                {
                  free(v79);
                  v79 = 0;
                }

                v25 = dispatch_data_create(md, 0x14uLL, 0, *MEMORY[0x1E69E9658]);
                v26 = dispatch_data_create_with_transform();
                *__s1 = 0;
                v86 = 0;
                memset(v87, 0, sizeof(v87));
                *type = 0;
                v82 = type;
                v83 = 0x2000000000;
                v84 = 0;
                v80[0] = 0;
                v80[1] = v80;
                v80[2] = 0x2000000000;
                v80[3] = __s1;
                if (v26)
                {
                  *applier = MEMORY[0x1E69E9820];
                  *&applier[8] = 0x40000000;
                  *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
                  v92 = &unk_1E6A34348;
                  *&v94 = v80;
                  *(&v94 + 1) = 28;
                  v93 = type;
                  v27 = v26;
                  dispatch_data_apply(v26, applier);
                  _Block_object_dispose(v80, 8);
                  _Block_object_dispose(type, 8);
                  dispatch_release(v27);
                }

                else
                {
                  _Block_object_dispose(v80, 8);
                  _Block_object_dispose(type, 8);
                }

                if (v25)
                {
                  dispatch_release(v25);
                }

                v57 = v16;
                v58 = _nw_http_fields_copy_value_by_name();

                if (!v58)
                {
                  goto LABEL_88;
                }

                v59 = strcmp(__s1, v58);
                free(v58);
                v20 = v21;
                if (v59)
                {
                  goto LABEL_88;
                }

                goto LABEL_59;
              }

              if ((*(v1 + 158) & 1) != 0 || (v49 = __nwlog_obj(), !os_log_type_enabled(v49, OS_LOG_TYPE_ERROR)))
              {
LABEL_88:
                os_release(v22);
LABEL_89:
                os_release(v16);
                return 0xFFFFFFFFLL;
              }

              v54 = *(v1 + 488);
              v55 = *(*(v1 + 480) + 372);
              v56 = *(v1 + 860);
              if (v54)
              {
                LODWORD(v54) = *(v54 + 424);
              }

              *applier = 136447490;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              *&applier[12] = 2082;
              *&applier[14] = v1 + 74;
              *&applier[22] = 2080;
              v92 = " ";
              LOWORD(v93) = 1024;
              *(&v93 + 2) = v55;
              HIWORD(v93) = 1024;
              LODWORD(v94) = v56;
              WORD2(v94) = 1024;
              *(&v94 + 6) = v54;
              v53 = "%{public}s %{public}s%s<i%u:c%u:s%u> failed to concatenate client key";
            }

            else
            {
              if (*(v1 + 158))
              {
                goto LABEL_88;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v49 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              v50 = *(v1 + 488);
              v51 = *(*(v1 + 480) + 372);
              v52 = *(v1 + 860);
              if (v50)
              {
                LODWORD(v50) = *(v50 + 424);
              }

              *applier = 136447490;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              *&applier[12] = 2082;
              *&applier[14] = v1 + 74;
              *&applier[22] = 2080;
              v92 = " ";
              LOWORD(v93) = 1024;
              *(&v93 + 2) = v51;
              HIWORD(v93) = 1024;
              LODWORD(v94) = v52;
              WORD2(v94) = 1024;
              *(&v94 + 6) = v50;
              v53 = "%{public}s %{public}s%s<i%u:c%u:s%u> missing expected request header sec_websocket_key";
            }

            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, v53, applier, 0x32u);
            goto LABEL_88;
          }

          __nwlog_obj();
          *applier = 136446210;
          *&applier[4] = "nw_http1_verify_sec_websocket_accept";
          v73 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v80[0]) = 0;
          if (__nwlog_fault(v73, type, v80))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v74 = __nwlog_obj();
              v75 = type[0];
              if (!os_log_type_enabled(v74, type[0]))
              {
                goto LABEL_166;
              }

              *applier = 136446210;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              v76 = "%{public}s called with null request";
              goto LABEL_165;
            }

            if (LOBYTE(v80[0]) != 1)
            {
              v74 = __nwlog_obj();
              v75 = type[0];
              if (!os_log_type_enabled(v74, type[0]))
              {
                goto LABEL_166;
              }

              *applier = 136446210;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              v76 = "%{public}s called with null request, backtrace limit exceeded";
              goto LABEL_165;
            }

            v77 = __nw_create_backtrace_string();
            v74 = __nwlog_obj();
            v75 = type[0];
            v78 = os_log_type_enabled(v74, type[0]);
            if (v77)
            {
              if (v78)
              {
                *applier = 136446466;
                *&applier[4] = "nw_http1_verify_sec_websocket_accept";
                *&applier[12] = 2082;
                *&applier[14] = v77;
                _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null request, dumping backtrace:%{public}s", applier, 0x16u);
              }

              free(v77);
              goto LABEL_166;
            }

            if (v78)
            {
              *applier = 136446210;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              v76 = "%{public}s called with null request, no backtrace";
LABEL_165:
              _os_log_impl(&dword_181A37000, v74, v75, v76, applier, 0xCu);
            }
          }

LABEL_166:
          if (v73)
          {
            free(v73);
          }

          goto LABEL_89;
        }

        if (v20)
        {
LABEL_59:
          os_release(v20);
        }
      }

      metadata_for_response = nw_http_create_metadata_for_response(v16);
      v42 = *(v2 + 376);
      if ((v42 & 1) != 0 && *(v2 + 368))
      {
        v43 = metadata_for_response;
        os_release(*(v2 + 368));
        metadata_for_response = v43;
        v42 = *(v2 + 376);
      }

      *(v2 + 368) = metadata_for_response;
      *(v2 + 376) = v42 | 1;
      os_release(v16);
      nw_http_metadata_set_version(*(v2 + 368), 3);
      if ((status_code - 100) <= 0x63 && status_code != 101)
      {
        goto LABEL_65;
      }

      goto LABEL_46;
    }

    if (*(v1 + 158))
    {
      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v34 = *(v1 + 488);
    v35 = *(*(v1 + 480) + 372);
    v36 = *(v1 + 860);
    if (v34)
    {
      LODWORD(v34) = *(v34 + 424);
    }

    *applier = 136447490;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = v1 + 74;
    *&applier[22] = 2080;
    v92 = " ";
    LOWORD(v93) = 1024;
    *(&v93 + 2) = v35;
    HIWORD(v93) = 1024;
    LODWORD(v94) = v36;
    WORD2(v94) = 1024;
    *(&v94 + 6) = v34;
    v37 = "%{public}s %{public}s%s<i%u:c%u:s%u> invalid response received";
LABEL_57:
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, v37, applier, 0x32u);
    return 0xFFFFFFFFLL;
  }

  _nw_http_parsed_fields_copy_request(v12);
  v29 = v28;

  if (!v29)
  {
    if (*(v1 + 158))
    {
      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v38 = *(v1 + 488);
    v39 = *(*(v1 + 480) + 372);
    v40 = *(v1 + 860);
    if (v38)
    {
      LODWORD(v38) = *(v38 + 424);
    }

    *applier = 136447490;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = v1 + 74;
    *&applier[22] = 2080;
    v92 = " ";
    LOWORD(v93) = 1024;
    *(&v93 + 2) = v39;
    HIWORD(v93) = 1024;
    LODWORD(v94) = v40;
    WORD2(v94) = 1024;
    *(&v94 + 6) = v38;
    v37 = "%{public}s %{public}s%s<i%u:c%u:s%u> invalid request received";
    goto LABEL_57;
  }

  metadata_for_request = nw_http_create_metadata_for_request(v29);
  v31 = *(v2 + 376);
  if ((v31 & 1) != 0 && *(v2 + 368))
  {
    v32 = metadata_for_request;
    os_release(*(v2 + 368));
    metadata_for_request = v32;
    v31 = *(v2 + 376);
  }

  *(v2 + 368) = metadata_for_request;
  *(v2 + 376) = v31 | 1;
  os_release(v29);
  nw_http_metadata_set_version(*(v2 + 368), 3);
LABEL_46:
  *(v2 + 428) |= 2u;
LABEL_65:
  nw_http_transaction_metadata_set_inbound_message(*(v2 + 352), *(v2 + 368), v2 + 74);
  if (*(*(v2 + 248) + 376))
  {
    return 21;
  }

  v44 = *(v2 + 384);
  if (!v44)
  {
    return 21;
  }

  v45 = nw_http_metadata_copy_request(v44);
  result = 21;
  if (v45)
  {
    v47 = v45;
    has_method = _nw_http_request_has_method(v47);

    os_release(v47);
    if (has_method)
    {
      return 1;
    }

    else
    {
      return 21;
    }
  }

  return result;
}

uint64_t nw_http1_on_message_complete(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v13 = __nwlog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(v2 + 488);
          v15 = *(*(v2 + 480) + 372);
          v16 = *(v2 + 860);
          if (v14)
          {
            LODWORD(v14) = *(v14 + 424);
          }

          *buf = 136447490;
          v29 = "nw_http1_on_message_complete";
          v30 = 2082;
          v31 = (v2 + 74);
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v15;
          v36 = 1024;
          v37 = v16;
          v38 = 1024;
          v39 = v14;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> message is complete", buf, 0x32u);
        }
      }

      v3 = nw_http_parsed_fields_copy_trailer_fields(*(*(v2 + 488) + 400));
      if (nw_http_fields_get_count(v3))
      {
        if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = *(v2 + 488);
            v19 = *(*(v2 + 480) + 372);
            v20 = *(v2 + 860);
            if (v18)
            {
              LODWORD(v18) = *(v18 + 424);
            }

            *buf = 136447490;
            v29 = "nw_http1_on_message_complete";
            v30 = 2082;
            v31 = (v2 + 74);
            v32 = 2080;
            v33 = " ";
            v34 = 1024;
            v35 = v19;
            v36 = 1024;
            v37 = v20;
            v38 = 1024;
            v39 = v18;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> received trailer fields", buf, 0x32u);
          }
        }

        nw_http_metadata_set_trailer_fields(*(*(v2 + 488) + 368), v3);
      }

      *(v2 + 872) |= 4u;
      if (*(a1 + 74) && *(a1 + 75))
      {
        v4 = *(a1 + 82);
        if ((v4 & 2) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = *(a1 + 82);
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (*(a1 + 72) == 1 || (v6 = *(a1 + 84), (v6 - 100) < 0x64) || v6 == 204 || v6 == 304 || (v4 & 0x40) != 0)
      {
        if (gLogDatapath)
        {
          goto LABEL_60;
        }

        goto LABEL_26;
      }

      if ((v4 & 0x208) != 0x200)
      {
        if ((v4 & 0x28) != 0)
        {
          if (gLogDatapath)
          {
LABEL_60:
            v25 = __nwlog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              v29 = "nw_http1_on_message_complete";
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s http should keep alive", buf, 0xCu);
            }
          }

LABEL_26:
          v5 = *(v2 + 872) | 8;
          goto LABEL_27;
        }

        if (gLogDatapath)
        {
          goto LABEL_32;
        }

        goto LABEL_15;
      }

LABEL_14:
      if (gLogDatapath)
      {
LABEL_32:
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v29 = "nw_http1_on_message_complete";
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s http should not keep alive", buf, 0xCu);
        }
      }

LABEL_15:
      v5 = *(v2 + 872) & 0xFFF7;
LABEL_27:
      *(v2 + 872) = v5;
      nw_http_transaction_metadata_mark_inbound_message_end(*(*(v2 + 488) + 352));
      if (v3)
      {
        os_release(v3);
      }

      return 0;
    }

    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http1_on_message_complete";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_http1_on_message_complete";
        v12 = "%{public}s called with null http1_connection";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_http1_on_message_complete";
        v12 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v24 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v29 = "nw_http1_on_message_complete";
        v12 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v24)
    {
      *buf = 136446466;
      v29 = "nw_http1_on_message_complete";
      v30 = 2082;
      v31 = backtrace_string;
      v23 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_http1_on_message_complete";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v9, &type, &v26))
  {
    goto LABEL_71;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_http1_on_message_complete";
        v12 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v22 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v29 = "nw_http1_on_message_complete";
        v12 = "%{public}s called with null parser, no backtrace";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_http1_on_message_complete";
      v30 = 2082;
      v31 = backtrace_string;
      v23 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_58:
      _os_log_impl(&dword_181A37000, v10, v11, v23, buf, 0x16u);
    }

LABEL_59:
    free(backtrace_string);
    goto LABEL_71;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v29 = "nw_http1_on_message_complete";
    v12 = "%{public}s called with null parser";
LABEL_70:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
  }

LABEL_71:
  if (v9)
  {
    free(v9);
  }

  return 0xFFFFFFFFLL;
}

void ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke(uint64_t a1)
{
  v697 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v4 = v1;
  v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v674 = v1;
  if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v274 = __nwlog_obj();
    v275 = os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG);
    v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v4 = v674;
    if (v275)
    {
      v276 = *(v674 + 372);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream_async_block_invoke";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v674 + 74;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v276;
      _os_log_impl(&dword_181A37000, v274, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> space opened in connection pool, checking for pending streams", buf, 0x26u);
      v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v4 = v674;
    }
  }

  v6 = *(v4 + 248);
  if (!v6)
  {
    if (*(v4 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v29 = *(v674 + 372);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v674 + 74;
    HIWORD(buf[2]) = 2080;
    v695 = " ";
    *v696 = 1024;
    *&v696[2] = v29;
    v28 = "%{public}s %{public}s%s<i%u> no pending streams, nothing to do";
LABEL_40:
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, v28, buf, 0x26u);
    return;
  }

  v673 = *(v4 + 248);
  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v386 = __nwlog_obj();
    v387 = os_log_type_enabled(v386, OS_LOG_TYPE_DEBUG);
    v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v4 = v674;
    if (v387)
    {
      v388 = v6 + 74;
      v389 = *(v6 + 256);
      v390 = *(*(v6 + 248) + 372);
      if (v389)
      {
        LODWORD(v389) = *(v389 + 860);
      }

      v6 = v673;
      v391 = *(v673 + 424);
      LODWORD(buf[0]) = 136448002;
      *(buf + 4) = "nw_http1_get_next_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v388;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v390;
      *&v696[6] = 1024;
      *&v696[8] = v389;
      *&v696[12] = 1024;
      *&v696[14] = v391;
      *&v696[18] = 1024;
      *&v696[20] = v391;
      *&v696[24] = 2048;
      *&v696[26] = v673;
      _os_log_impl(&dword_181A37000, v386, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> found stream %u (%p)", buf, 0x42u);
      v4 = v674;
      v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }
  }

  v7 = *(v4 + 208);
  if (v7)
  {
    v8 = 0;
    v9 = v4 + 74;
    *&v3 = 136447234;
    do
    {
      v10 = v7;
      v7 = *(v7 + 592);
      if ((*(v10 + 872) & 0x800) == 0)
      {
        if ((*(v4 + 158) & 1) != 0 || BYTE1(v5[82].isa) != 1)
        {
          v8 = v10;
        }

        else
        {
          v667 = v9;
          v669 = v3;
          v11 = __nwlog_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = *(v674 + 372);
            LODWORD(buf[0]) = v669;
            *(buf + 4) = "nw_http1_get_next_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v667;
            HIWORD(buf[2]) = 2080;
            v695 = " ";
            *v696 = 1024;
            *&v696[2] = v12;
            *&v696[6] = 2048;
            *&v696[8] = v10;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> found idle connection connection %p", buf, 0x30u);
            v9 = v667;
            v3 = v669;
            v4 = v674;
            v8 = v10;
            v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

          else
          {
            v8 = v10;
            v4 = v674;
            v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            v3 = v669;
            v9 = v667;
          }
        }
      }
    }

    while (v7);
    v6 = v673;
    if (v8)
    {
      v668 = v9;
      v670 = v3;
      if ((*(v8 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
      {
        v491 = v5;
        v492 = __nwlog_obj();
        v493 = os_log_type_enabled(v492, OS_LOG_TYPE_DEBUG);
        v5 = v491;
        v4 = v674;
        if (v493)
        {
          v494 = *(v8 + 488);
          v495 = *(*(v8 + 480) + 372);
          v496 = *(v8 + 860);
          if (v494)
          {
            LODWORD(v494) = *(v494 + 424);
          }

          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v8 + 74;
          HIWORD(buf[2]) = 2080;
          v695 = " ";
          *v696 = 1024;
          *&v696[2] = v495;
          *&v696[6] = 1024;
          *&v696[8] = v496;
          *&v696[12] = 1024;
          *&v696[14] = v494;
          *&v696[18] = 2048;
          *&v696[20] = v8;
          _os_log_impl(&dword_181A37000, v492, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
          v6 = v673;
          v4 = v674;
          v5 = v491;
        }
      }

      if ((*(v8 + 874) & 8) == 0)
      {
        v13 = v5;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_remove_idle_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v8;
        v14 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (__nwlog_fault(v14, type, aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            v16 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v8;
              v17 = "%{public}s connection %p not in idle list, cannot remove";
LABEL_155:
              _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x16u);
            }
          }

          else if (aBlock[0] == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v16 = type[0];
            v54 = os_log_type_enabled(v15, type[0]);
            if (backtrace_string)
            {
              if (v54)
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_remove_idle_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v8;
                HIWORD(buf[2]) = 2082;
                v695 = backtrace_string;
                _os_log_impl(&dword_181A37000, v15, v16, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              goto LABEL_156;
            }

            if (v54)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v8;
              v17 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
              goto LABEL_155;
            }
          }

          else
          {
            v15 = __nwlog_obj();
            v16 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v8;
              v17 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

LABEL_156:
        if (v14)
        {
          free(v14);
        }

        v6 = v673;
        v4 = v674;
        v5 = v13;
        goto LABEL_192;
      }

      v35 = *(v8 + 592);
      v36 = *(v8 + 600);
      v37 = (v4 + 216);
      if (v35)
      {
        v37 = (v35 + 600);
      }

      *v37 = v36;
      *v36 = v35;
      *(v8 + 592) = 0u;
      v38 = *(v4 + 340);
      *(v4 + 340) = v38 - 1;
      if (v38)
      {
LABEL_186:
        *(v8 + 874) &= ~8u;
        if ((*(v8 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
        {
          v502 = v5;
          v503 = __nwlog_obj();
          v504 = os_log_type_enabled(v503, OS_LOG_TYPE_DEBUG);
          v5 = v502;
          v4 = v674;
          if (v504)
          {
            v505 = *(v8 + 488);
            v506 = *(*(v8 + 480) + 372);
            v507 = *(v8 + 860);
            if (v505)
            {
              LODWORD(v505) = *(v505 + 424);
            }

            v508 = *(v674 + 340);
            LODWORD(buf[0]) = 136448002;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v8 + 74;
            HIWORD(buf[2]) = 2080;
            v695 = " ";
            *v696 = 1024;
            *&v696[2] = v506;
            *&v696[6] = 1024;
            *&v696[8] = v507;
            *&v696[12] = 1024;
            *&v696[14] = v505;
            *&v696[18] = 2048;
            *&v696[20] = v8;
            *&v696[28] = 1024;
            *&v696[30] = v508;
            _os_log_impl(&dword_181A37000, v503, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
            v4 = v674;
            v6 = v673;
            v5 = v502;
          }
        }

        if (*(v8 + 784))
        {
          if ((*(v8 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
          {
            v517 = v5;
            v518 = __nwlog_obj();
            v519 = os_log_type_enabled(v518, OS_LOG_TYPE_DEBUG);
            v5 = v517;
            if (v519)
            {
              v520 = *(v8 + 488);
              v521 = *(*(v8 + 480) + 372);
              v522 = *(v8 + 860);
              if (v520)
              {
                LODWORD(v520) = *(v520 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v8 + 74;
              HIWORD(buf[2]) = 2080;
              v695 = " ";
              *v696 = 1024;
              *&v696[2] = v521;
              *&v696[6] = 1024;
              *&v696[8] = v522;
              *&v696[12] = 1024;
              *&v696[14] = v520;
              *&v696[18] = 2048;
              *&v696[20] = v8;
              _os_log_impl(&dword_181A37000, v518, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
              v6 = v673;
              v5 = v517;
            }
          }

          v140 = v5;
          nw_queue_cancel_source(*(v8 + 784), v2);
          v5 = v140;
          *(v8 + 784) = 0;
          v4 = v674;
        }

LABEL_192:
        if ((*(v4 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
        {
          v497 = v5;
          v498 = __nwlog_obj();
          v499 = os_log_type_enabled(v498, OS_LOG_TYPE_DEBUG);
          v5 = v497;
          v4 = v674;
          if (v499)
          {
            v500 = *(v674 + 372);
            v501 = *(v6 + 424);
            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v668;
            HIWORD(buf[2]) = 2080;
            v695 = " ";
            *v696 = 1024;
            *&v696[2] = v500;
            *&v696[6] = 1024;
            *&v696[8] = v501;
            *&v696[12] = 2048;
            *&v696[14] = v6;
            _os_log_impl(&dword_181A37000, v498, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
            v5 = v497;
            v4 = v674;
          }
        }

        if ((*(v6 + 428) & 0x2000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v6;
          v141 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v141, type, aBlock))
          {
            goto LABEL_221;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v142 = gLogObj;
            v143 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_221;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v6;
            v144 = "%{public}s stream %p not in pending list, cannot remove";
          }

          else if (aBlock[0] == 1)
          {
            v157 = __nw_create_backtrace_string();
            v142 = __nwlog_obj();
            v143 = type[0];
            v158 = os_log_type_enabled(v142, type[0]);
            if (v157)
            {
              if (v158)
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_remove_pending_stream";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v6;
                HIWORD(buf[2]) = 2082;
                v695 = v157;
                _os_log_impl(&dword_181A37000, v142, v143, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v157);
              goto LABEL_221;
            }

            if (!v158)
            {
LABEL_221:
              if (v141)
              {
                free(v141);
              }

              goto LABEL_233;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v6;
            v144 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
          }

          else
          {
            v142 = __nwlog_obj();
            v143 = type[0];
            if (!os_log_type_enabled(v142, type[0]))
            {
              goto LABEL_221;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v6;
            v144 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v142, v143, v144, buf, 0x16u);
          goto LABEL_221;
        }

        v145 = *(v6 + 296);
        v146 = *(v6 + 304);
        v147 = (v4 + 256);
        if (v145)
        {
          v147 = (v145 + 304);
        }

        *v147 = v146;
        *v146 = v145;
        *(v6 + 296) = 0;
        *(v6 + 304) = 0;
        v148 = *(v4 + 348);
        *(v4 + 348) = v148 - 1;
        if (v148)
        {
LABEL_231:
          *(v6 + 428) &= ~0x2000u;
          if ((*(v6 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
          {
            v509 = __nwlog_obj();
            if (os_log_type_enabled(v509, OS_LOG_TYPE_DEBUG))
            {
              v510 = v6 + 74;
              v511 = *(v6 + 256);
              v512 = *(*(v6 + 248) + 372);
              if (v511)
              {
                LODWORD(v511) = *(v511 + 860);
              }

              v6 = v673;
              v513 = *(v673 + 424);
              v514 = *(v674 + 348);
              LODWORD(buf[0]) = 136448258;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v510;
              HIWORD(buf[2]) = 2080;
              v695 = " ";
              *v696 = 1024;
              *&v696[2] = v512;
              *&v696[6] = 1024;
              *&v696[8] = v511;
              *&v696[12] = 1024;
              *&v696[14] = v513;
              *&v696[18] = 1024;
              *&v696[20] = v513;
              *&v696[24] = 2048;
              *&v696[26] = v673;
              *&v696[34] = 1024;
              *&v696[36] = v514;
              _os_log_impl(&dword_181A37000, v509, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
            }
          }

LABEL_233:
          if (*(v6 + 248))
          {
            if (*(v8 + 488))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v164 = *(v8 + 488);
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v8;
              HIWORD(buf[2]) = 2048;
              v695 = v164;
              v165 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              aBlock[0] = 0;
              if (!__nwlog_fault(v165, type, aBlock))
              {
                goto LABEL_271;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v166 = gLogObj;
                v167 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_271;
                }

                v168 = *(v8 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v8;
                HIWORD(buf[2]) = 2048;
                v695 = v168;
                v169 = "%{public}s Connection %p already has a stream (%p)";
              }

              else if (aBlock[0] == 1)
              {
                v173 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v166 = gLogObj;
                v167 = type[0];
                v174 = os_log_type_enabled(gLogObj, type[0]);
                if (v173)
                {
                  if (v174)
                  {
                    v175 = *(v8 + 488);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v8;
                    HIWORD(buf[2]) = 2048;
                    v695 = v175;
                    *v696 = 2082;
                    *&v696[2] = v173;
                    _os_log_impl(&dword_181A37000, v166, v167, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v173);
                  goto LABEL_271;
                }

                if (!v174)
                {
LABEL_271:
                  if (v165)
                  {
                    free(v165);
                  }

LABEL_409:
                  *(v6 + 428) |= 0x8000u;
                  v270 = *(v6 + 352);
                  buf[0] = MEMORY[0x1E69E9820];
                  buf[1] = 0x40000000;
                  buf[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke;
                  v695 = &__block_descriptor_tmp_55_42980;
                  *v696 = v6;
                  nw_http_transaction_metadata_set_event_handler(v270, buf);
                  if (*(v6 + 428))
                  {
                    nw_http_transaction_metadata_set_first_on_connection(*(v6 + 352));
                    nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v8 + 768));
                  }

                  nw_http_transaction_metadata_set_connection_metadata(*(v6 + 352), *(v8 + 768));
                  nw_protocol_connected(*(v6 + 48), v6);
                  return;
                }

                v192 = *(v8 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v8;
                HIWORD(buf[2]) = 2048;
                v695 = v192;
                v169 = "%{public}s Connection %p already has a stream (%p), no backtrace";
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v166 = gLogObj;
                v167 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_271;
                }

                v176 = *(v8 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v8;
                HIWORD(buf[2]) = 2048;
                v695 = v176;
                v169 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v166, v167, v169, buf, 0x20u);
              goto LABEL_271;
            }

            *(v6 + 256) = v8;
            *(v8 + 488) = v6;
            v170 = *(v6 + 320);
            if (v170)
            {
              v171 = os_retain(v170);
              v172 = *(v8 + 744);
              if ((v172 & 1) == 0)
              {
                goto LABEL_252;
              }
            }

            else
            {
              v171 = 0;
              v172 = *(v8 + 744);
              if ((v172 & 1) == 0)
              {
                goto LABEL_252;
              }
            }

            v177 = *(v8 + 736);
            if (v177)
            {
              os_release(v177);
              v172 = *(v8 + 744);
            }

LABEL_252:
            *(v8 + 736) = v171;
            *(v8 + 744) = v172 | 1;
            if ((*(*(v6 + 248) + 376) & 2) == 0)
            {
              goto LABEL_381;
            }

            v178 = nw_parameters_copy_default_protocol_stack(*(v6 + 320));
            *aBlock = 0;
            *&aBlock[8] = aBlock;
            *&aBlock[16] = 0x2000000000;
            LOBYTE(v689) = 0;
            buf[0] = 0;
            buf[1] = buf;
            buf[2] = 0x3802000000;
            v695 = __Block_byref_object_copy__42960;
            *v696 = __Block_byref_object_dispose__42961;
            *&v696[8] = 0;
            v696[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v682 = 0x40000000;
            v683 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
            v684 = &unk_1E6A32930;
            v685 = aBlock;
            v686 = buf;
            v687 = v6;
            nw_protocol_stack_iterate_application_protocols(v178, type);
            if (*(buf[1] + 40))
            {
              v179 = v8;
              while (1)
              {
                v179 = *(v179 + 32);
                if (!v179)
                {
                  break;
                }

                if (nw_protocol_is_tls_over_stream(v179))
                {
                  v180 = *(buf[1] + 40);
                  v181 = nw_protocol_boringssl_copy_definition();
                  nw_parameters_set_protocol_instance(v180, v182, v179);
                  if (v181)
                  {
                    os_release(v181);
                  }

                  v183 = 1;
                  goto LABEL_375;
                }
              }

              __nwlog_obj();
              LODWORD(v693[0]) = 136446210;
              *(v693 + 4) = "nw_http1_stream_associate_with_connection";
              v188 = _os_log_send_and_compose_impl();
              v676[0] = OS_LOG_TYPE_ERROR;
              v680 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v188, v676, &v680))
              {
                goto LABEL_371;
              }

              if (v676[0] == OS_LOG_TYPE_FAULT)
              {
                v189 = __nwlog_obj();
                v190 = v676[0];
                if (os_log_type_enabled(v189, v676[0]))
                {
                  LODWORD(v693[0]) = 136446210;
                  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                  v191 = "%{public}s tls should have been in the stack but could not find it";
LABEL_370:
                  _os_log_impl(&dword_181A37000, v189, v190, v191, v693, 0xCu);
                }
              }

              else if (v680 == OS_LOG_TYPE_INFO)
              {
                v195 = __nw_create_backtrace_string();
                v189 = __nwlog_obj();
                v190 = v676[0];
                v196 = os_log_type_enabled(v189, v676[0]);
                if (v195)
                {
                  if (v196)
                  {
                    LODWORD(v693[0]) = 136446466;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(v693[1]) = 2082;
                    *(&v693[1] + 6) = v195;
                    _os_log_impl(&dword_181A37000, v189, v190, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v693, 0x16u);
                  }

                  free(v195);
                  goto LABEL_371;
                }

                if (v196)
                {
                  LODWORD(v693[0]) = 136446210;
                  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                  v191 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                  goto LABEL_370;
                }
              }

              else
              {
                v189 = __nwlog_obj();
                v190 = v676[0];
                if (os_log_type_enabled(v189, v676[0]))
                {
                  LODWORD(v693[0]) = 136446210;
                  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                  v191 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                  goto LABEL_370;
                }
              }

LABEL_371:
              if (v188)
              {
                free(v188);
              }

              v183 = 0;
LABEL_374:
              v6 = v673;
LABEL_375:
              _Block_object_dispose(buf, 8);
              if ((v696[16] & 1) != 0 && *&v696[8])
              {
                os_release(*&v696[8]);
              }

              _Block_object_dispose(aBlock, 8);
              if (v178)
              {
                os_release(v178);
              }

              if (!v183)
              {
                goto LABEL_409;
              }

LABEL_381:
              v241 = *(v6 + 32);
              if (!v241 || v241 == *(v8 + 32))
              {
LABEL_399:
                nw_protocol_set_output_handler(v6, *(v8 + 32));
                nw_protocol_set_input_handler(v8, *(v6 + 48));
                *v6 = *v8;
                v258 = *(v6 + 96);
                v259 = *(v6 + 112);
                v260 = *(v6 + 128);
                *(v8 + 144) = *(v6 + 144);
                v261 = *(v6 + 80);
                *(v8 + 64) = *(v6 + 64);
                *(v8 + 80) = v261;
                *(v8 + 112) = v259;
                *(v8 + 128) = v260;
                *(v8 + 96) = v258;
                *(v8 + 872) &= 0xFFD7u;
                *(v8 + 864) = 1;
                if ((*(v8 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v262 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    v263 = *(v8 + 488);
                    v264 = *(*(v8 + 480) + 372);
                    v265 = *(v8 + 860);
                    if (v263)
                    {
                      LODWORD(v263) = *(v263 + 424);
                    }

                    LODWORD(buf[0]) = 136447490;
                    *(buf + 4) = "nw_http1_update_connection_input_state";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v8 + 74;
                    HIWORD(buf[2]) = 2080;
                    v695 = " ";
                    *v696 = 1024;
                    *&v696[2] = v264;
                    *&v696[6] = 1024;
                    *&v696[8] = v265;
                    *&v696[12] = 1024;
                    *&v696[14] = v263;
                    _os_log_impl(&dword_181A37000, v262, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                  }
                }

                if ((*(v6 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v266 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v267 = *(v6 + 256);
                    v268 = *(*(v6 + 248) + 372);
                    if (v267)
                    {
                      LODWORD(v267) = *(v267 + 860);
                    }

                    v269 = *(v6 + 424);
                    LODWORD(buf[0]) = 136448002;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v6 + 74;
                    HIWORD(buf[2]) = 2080;
                    v695 = " ";
                    *v696 = 1024;
                    *&v696[2] = v268;
                    *&v696[6] = 1024;
                    *&v696[8] = v267;
                    *&v696[12] = 1024;
                    *&v696[14] = v269;
                    *&v696[18] = 2048;
                    *&v696[20] = v6;
                    *&v696[28] = 2048;
                    *&v696[30] = v8;
                    _os_log_impl(&dword_181A37000, v266, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                  }
                }

                goto LABEL_409;
              }

              __nwlog_obj();
              v242 = *(v6 + 32);
              v243 = *(v8 + 32);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v242;
              HIWORD(buf[2]) = 2048;
              v695 = v6;
              *v696 = 2048;
              *&v696[2] = v243;
              v244 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              LOBYTE(v693[0]) = 0;
              if (__nwlog_fault(v244, aBlock, v693))
              {
                if (aBlock[0] == 17)
                {
                  v245 = __nwlog_obj();
                  v246 = aBlock[0];
                  if (!os_log_type_enabled(v245, aBlock[0]))
                  {
                    goto LABEL_397;
                  }

                  v247 = *(v6 + 32);
                  v248 = *(v8 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v247;
                  HIWORD(buf[2]) = 2048;
                  v695 = v6;
                  *v696 = 2048;
                  *&v696[2] = v248;
                  v249 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                  goto LABEL_396;
                }

                if (LOBYTE(v693[0]) != 1)
                {
                  v245 = __nwlog_obj();
                  v246 = aBlock[0];
                  if (!os_log_type_enabled(v245, aBlock[0]))
                  {
                    goto LABEL_397;
                  }

                  v254 = *(v6 + 32);
                  v255 = *(v8 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v254;
                  HIWORD(buf[2]) = 2048;
                  v695 = v6;
                  *v696 = 2048;
                  *&v696[2] = v255;
                  v249 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                  goto LABEL_396;
                }

                v250 = __nw_create_backtrace_string();
                v245 = __nwlog_obj();
                v246 = aBlock[0];
                v251 = os_log_type_enabled(v245, aBlock[0]);
                if (v250)
                {
                  if (v251)
                  {
                    v252 = *(v6 + 32);
                    v253 = *(v8 + 32);
                    LODWORD(buf[0]) = v670;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v252;
                    HIWORD(buf[2]) = 2048;
                    v695 = v6;
                    *v696 = 2048;
                    *&v696[2] = v253;
                    *&v696[10] = 2082;
                    *&v696[12] = v250;
                    _os_log_impl(&dword_181A37000, v245, v246, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v250);
                  goto LABEL_397;
                }

                if (v251)
                {
                  v256 = *(v6 + 32);
                  v257 = *(v8 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v256;
                  HIWORD(buf[2]) = 2048;
                  v695 = v6;
                  *v696 = 2048;
                  *&v696[2] = v257;
                  v249 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_396:
                  _os_log_impl(&dword_181A37000, v245, v246, v249, buf, 0x2Au);
                }
              }

LABEL_397:
              if (v244)
              {
                free(v244);
              }

              goto LABEL_399;
            }

            __nwlog_obj();
            LODWORD(v693[0]) = 136446210;
            *(v693 + 4) = "nw_http1_stream_associate_with_connection";
            v184 = _os_log_send_and_compose_impl();
            v676[0] = OS_LOG_TYPE_ERROR;
            v680 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v184, v676, &v680))
            {
              if (v676[0] == OS_LOG_TYPE_FAULT)
              {
                v185 = __nwlog_obj();
                v186 = v676[0];
                if (os_log_type_enabled(v185, v676[0]))
                {
                  LODWORD(v693[0]) = 136446210;
                  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                  v187 = "%{public}s unable to find tls options";
LABEL_359:
                  _os_log_impl(&dword_181A37000, v185, v186, v187, v693, 0xCu);
                }
              }

              else if (v680 == OS_LOG_TYPE_INFO)
              {
                v193 = __nw_create_backtrace_string();
                v185 = __nwlog_obj();
                v186 = v676[0];
                v194 = os_log_type_enabled(v185, v676[0]);
                if (v193)
                {
                  if (v194)
                  {
                    LODWORD(v693[0]) = 136446466;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(v693[1]) = 2082;
                    *(&v693[1] + 6) = v193;
                    _os_log_impl(&dword_181A37000, v185, v186, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v693, 0x16u);
                  }

                  free(v193);
                  goto LABEL_360;
                }

                if (v194)
                {
                  LODWORD(v693[0]) = 136446210;
                  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                  v187 = "%{public}s unable to find tls options, no backtrace";
                  goto LABEL_359;
                }
              }

              else
              {
                v185 = __nwlog_obj();
                v186 = v676[0];
                if (os_log_type_enabled(v185, v676[0]))
                {
                  LODWORD(v693[0]) = 136446210;
                  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                  v187 = "%{public}s unable to find tls options, backtrace limit exceeded";
                  goto LABEL_359;
                }
              }
            }

LABEL_360:
            if (v184)
            {
              free(v184);
            }

            v183 = 1;
            goto LABEL_374;
          }

          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v487 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v487, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v488 = __nwlog_obj();
              v489 = type[0];
              if (os_log_type_enabled(v488, type[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v490 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_835:
                _os_log_impl(&dword_181A37000, v488, v489, v490, buf, 0xCu);
              }
            }

            else if (aBlock[0] == 1)
            {
              v515 = __nw_create_backtrace_string();
              v488 = __nwlog_obj();
              v489 = type[0];
              v516 = os_log_type_enabled(v488, type[0]);
              if (v515)
              {
                if (v516)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v515;
                  _os_log_impl(&dword_181A37000, v488, v489, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v515);
                goto LABEL_836;
              }

              if (v516)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v490 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                goto LABEL_835;
              }
            }

            else
            {
              v488 = __nwlog_obj();
              v489 = type[0];
              if (os_log_type_enabled(v488, type[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v490 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                goto LABEL_835;
              }
            }
          }

LABEL_836:
          if (v487)
          {
            free(v487);
          }

          v6 = v673;
          goto LABEL_409;
        }

        v149 = v5;
        v150 = v4;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v151 = *(v150 + 348);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->pending_stream_count";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v151;
        v152 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (__nwlog_fault(v152, type, aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v153 = __nwlog_obj();
            v154 = type[0];
            if (os_log_type_enabled(v153, type[0]))
            {
              v155 = *(v674 + 348);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v695 = 1;
              *v696 = 2048;
              *&v696[2] = v155;
              v156 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_227:
              _os_log_impl(&dword_181A37000, v153, v154, v156, buf, 0x2Au);
            }
          }

          else if (aBlock[0] == 1)
          {
            v159 = __nw_create_backtrace_string();
            v153 = __nwlog_obj();
            v154 = type[0];
            v160 = os_log_type_enabled(v153, type[0]);
            if (v159)
            {
              if (v160)
              {
                v161 = *(v674 + 348);
                LODWORD(buf[0]) = v670;
                *(buf + 4) = "nw_http1_remove_pending_stream";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = "http1->pending_stream_count";
                HIWORD(buf[2]) = 2048;
                v695 = 1;
                *v696 = 2048;
                *&v696[2] = v161;
                *&v696[10] = 2082;
                *&v696[12] = v159;
                _os_log_impl(&dword_181A37000, v153, v154, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v159);
              goto LABEL_228;
            }

            if (v160)
            {
              v163 = *(v674 + 348);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v695 = 1;
              *v696 = 2048;
              *&v696[2] = v163;
              v156 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_227;
            }
          }

          else
          {
            v153 = __nwlog_obj();
            v154 = type[0];
            if (os_log_type_enabled(v153, type[0]))
            {
              v162 = *(v674 + 348);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v695 = 1;
              *v696 = 2048;
              *&v696[2] = v162;
              v156 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_227;
            }
          }
        }

LABEL_228:
        if (v152)
        {
          free(v152);
        }

        *(v674 + 348) = 0;
        v6 = v673;
        v5 = v149;
        goto LABEL_231;
      }

      v39 = v5;
      v40 = v4;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = *(v40 + 340);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = "http1->idle_connections_count";
      HIWORD(buf[2]) = 2048;
      v695 = 1;
      *v696 = 2048;
      *&v696[2] = v41;
      v42 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      aBlock[0] = 0;
      if (__nwlog_fault(v42, type, aBlock))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (os_log_type_enabled(v43, type[0]))
          {
            v45 = *(v674 + 340);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v695 = 1;
            *v696 = 2048;
            *&v696[2] = v45;
            v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_182:
            _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x2Au);
          }
        }

        else if (aBlock[0] == 1)
        {
          v66 = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = type[0];
          v67 = os_log_type_enabled(v43, type[0]);
          if (v66)
          {
            if (v67)
            {
              v68 = *(v674 + 340);
              LODWORD(buf[0]) = v670;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->idle_connections_count";
              HIWORD(buf[2]) = 2048;
              v695 = 1;
              *v696 = 2048;
              *&v696[2] = v68;
              *&v696[10] = 2082;
              *&v696[12] = v66;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v66);
            goto LABEL_183;
          }

          if (v67)
          {
            v139 = *(v674 + 340);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v695 = 1;
            *v696 = 2048;
            *&v696[2] = v139;
            v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_182;
          }
        }

        else
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (os_log_type_enabled(v43, type[0]))
          {
            v120 = *(v674 + 340);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v695 = 1;
            *v696 = 2048;
            *&v696[2] = v120;
            v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_182;
          }
        }
      }

LABEL_183:
      if (v42)
      {
        free(v42);
      }

      v4 = v674;
      *(v674 + 340) = 0;
      v6 = v673;
      v5 = v39;
      goto LABEL_186;
    }
  }

  if ((*(v4 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
  {
    v444 = v5;
    v445 = __nwlog_obj();
    v446 = os_log_type_enabled(v445, OS_LOG_TYPE_DEBUG);
    v5 = v444;
    v4 = v674;
    if (v446)
    {
      v447 = *(v674 + 372);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_get_next_idle_connection";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v674 + 74;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v447;
      _os_log_impl(&dword_181A37000, v445, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no idle connections", buf, 0x26u);
      v5 = v444;
      v4 = v674;
    }
  }

  if (*(v6 + 256))
  {
    if (*(v6 + 158))
    {
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    v4 = v674;
    if (!v19)
    {
      goto LABEL_34;
    }

    v20 = *(v6 + 256);
    v21 = *(*(v6 + 248) + 372);
    if (v20)
    {
      LODWORD(v20) = *(v20 + 860);
    }

    v22 = *(v6 + 424);
    LODWORD(buf[0]) = 136447490;
    *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v6 + 74;
    HIWORD(buf[2]) = 2080;
    v695 = " ";
    *v696 = 1024;
    *&v696[2] = v21;
    *&v696[6] = 1024;
    *&v696[8] = v20;
    *&v696[12] = 1024;
    *&v696[14] = v22;
    v23 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
    v24 = v18;
    v25 = 50;
LABEL_33:
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, v23, buf, v25);
    v4 = v674;
LABEL_34:
    if (*(v4 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v27 = *(v674 + 372);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v674 + 74;
    HIWORD(buf[2]) = 2080;
    v695 = " ";
    *v696 = 1024;
    *&v696[2] = v27;
    v28 = "%{public}s %{public}s%s<i%u> cannot make new connection, waiting for other requests to finish";
    goto LABEL_40;
  }

  if ((*(v6 + 428) & 0x10) != 0)
  {
    if (!*(v6 + 32))
    {
      if (*(v6 + 158))
      {
        goto LABEL_34;
      }

      if (BYTE1(v5[82].isa) != 1)
      {
        goto LABEL_34;
      }

      v61 = __nwlog_obj();
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
      v4 = v674;
      if (!v62)
      {
        goto LABEL_34;
      }

      v63 = *(v6 + 256);
      v64 = *(*(v6 + 248) + 372);
      if (v63)
      {
        LODWORD(v63) = *(v63 + 860);
      }

      v65 = *(v673 + 424);
      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v6 + 74;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v64;
      *&v696[6] = 1024;
      *&v696[8] = v63;
      *&v696[12] = 1024;
      *&v696[14] = v65;
      *&v696[18] = 2048;
      *&v696[20] = v673;
      v23 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
      v24 = v61;
      v25 = 60;
      goto LABEL_33;
    }

    if ((*(v6 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
    {
      v527 = v5;
      v528 = __nwlog_obj();
      v529 = os_log_type_enabled(v528, OS_LOG_TYPE_DEBUG);
      v5 = v527;
      if (v529)
      {
        v530 = v6 + 74;
        v531 = *(v6 + 256);
        v532 = *(*(v6 + 248) + 372);
        if (v531)
        {
          LODWORD(v531) = *(v531 + 860);
        }

        v6 = v673;
        v533 = *(v673 + 424);
        v534 = *(v673 + 32);
        LODWORD(buf[0]) = 136448002;
        *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v530;
        HIWORD(buf[2]) = 2080;
        v695 = " ";
        *v696 = 1024;
        *&v696[2] = v532;
        *&v696[6] = 1024;
        *&v696[8] = v531;
        *&v696[12] = 1024;
        *&v696[14] = v533;
        *&v696[18] = 2048;
        *&v696[20] = v673;
        *&v696[28] = 2048;
        *&v696[30] = v534;
        _os_log_impl(&dword_181A37000, v528, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
        v5 = v527;
      }
    }

    v47 = *(v6 + 32);
    v671 = v47;
    if (v47)
    {
      v48 = *(v6 + 336);
      if (v48)
      {
        v49 = *(v6 + 320);
        if (v49)
        {
          v50 = v5;
          v51 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
          v52 = v51;
          if (v51)
          {
            bzero(v51, 0x370uLL);
            nw_http1_connection::nw_http1_connection(v52);
          }

          else
          {
            v69 = __nwlog_obj();
            os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "nw_http1_connection_create";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = 1;
            HIWORD(buf[2]) = 2048;
            v695 = 880;
            v70 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v70))
            {
              goto LABEL_1122;
            }

            free(v70);
            bzero(0, 0x370uLL);
            nw_http1_connection::nw_http1_connection(0);
            v71 = __nwlog_obj();
            os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v72 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v72))
            {
              goto LABEL_1122;
            }

            free(v72);
            v6 = v673;
          }

          v73 = v674;
          if (nw_protocol_http1_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
            v73 = v674;
          }

          *(v52 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
          if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
            v73 = v674;
          }

          *(v52 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
          *(v52 + 184) = 3;
          *(v52 + 176) = v52;
          *(v52 + 40) = v52 + 160;
          *(v52 + 480) = v73;
          nw_protocol_set_output_handler(v52, v47);
          v74 = os_retain(v48);
          v75 = *(v52 + 760);
          if ((v75 & 1) != 0 && *(v52 + 752))
          {
            v76 = v74;
            os_release(*(v52 + 752));
            v74 = v76;
            v75 = *(v52 + 760);
          }

          *(v52 + 752) = v74;
          *(v52 + 760) = v75 | 1;
          v77 = os_retain(v49);
          v78 = *(v52 + 744);
          if ((v78 & 1) != 0 && *(v52 + 736))
          {
            v79 = v77;
            os_release(*(v52 + 736));
            v77 = v79;
            v78 = *(v52 + 744);
          }

          *(v52 + 736) = v77;
          *(v52 + 744) = v78 | 1;
          v80 = _nw_parameters_copy_context(v49);
          v81 = *(v52 + 504);
          if (v81)
          {
            v82 = v674;
            if (*(v52 + 496))
            {
              v83 = v80;
              os_release(*(v52 + 496));
              v82 = v674;
              v80 = v83;
              v81 = *(v52 + 504);
            }
          }

          else
          {
            v82 = v674;
          }

          *(v52 + 496) = v80;
          *(v52 + 504) = v81 | 1;
          *(v52 + 192) = *(v82 + 192);
          *type = MEMORY[0x1E69E9820];
          v682 = 0x40000000;
          v683 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
          v684 = &__block_descriptor_tmp_43_43000;
          v685 = v52;
          metadata = nw_http_connection_create_metadata(v80, type, 0);
          v85 = *(v52 + 776);
          if ((v85 & 1) != 0 && *(v52 + 768))
          {
            v86 = metadata;
            os_release(*(v52 + 768));
            metadata = v86;
            v85 = *(v52 + 776);
          }

          *(v52 + 768) = metadata;
          *(v52 + 776) = v85 | 1;
          nw_http_connection_metadata_set_version(metadata, 3);
          nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v52 + 768), *(v674 + 312));
          *(v52 + 616) = 0;
          *(v52 + 624) = v52 + 616;
          *(v52 + 632) = 0;
          *(v52 + 640) = v52 + 632;
          *(v52 + 648) = 0;
          *(v52 + 656) = v52 + 648;
          *(v52 + 664) = 0;
          *(v52 + 672) = v52 + 664;
          *(v52 + 680) = 0;
          *(v52 + 688) = v52 + 680;
          nw_frame_cache_init(v52 + 696, v52, 256, 0x40000, 16);
          v87 = *(v52 + 480);
          if (v87)
          {
            *(v52 + 360) = 0u;
            *(v52 + 376) = 0u;
            *(v52 + 392) = 0u;
            *(v52 + 408) = 0u;
            *(v52 + 424) = 0u;
            *(v52 + 440) = 0u;
            *(v52 + 328) = 0u;
            *(v52 + 344) = 0u;
            *(v52 + 296) = nw_http1_on_message_begin;
            *(v52 + 384) = nw_http1_on_message_complete;
            *(v52 + 368) = nw_http1_on_headers_complete;
            *(v52 + 472) = nw_http1_on_reset;
            *(v52 + 320) = nw_http1_on_method;
            *(v52 + 408) = nw_http1_on_method_complete;
            *(v52 + 304) = nw_http1_on_url;
            *(v52 + 392) = nw_http1_on_url_complete;
            *(v52 + 312) = nw_http1_on_status;
            *(v52 + 400) = nw_http1_on_status_complete;
            *(v52 + 336) = nw_http1_on_header_field;
            *(v52 + 424) = nw_http1_on_header_field_complete;
            *(v52 + 344) = nw_http1_on_header_value;
            *(v52 + 432) = nw_http1_on_header_value_complete;
            *(v52 + 376) = nw_http1_on_body;
            *(v52 + 456) = nw_http1_on_chunk_header;
            *(v52 + 464) = nw_http1_on_chunk_complete;
            v88 = *(v87 + 376);
            *(v52 + 248) = 0u;
            *(v52 + 200) = 0u;
            *(v52 + 264) = 0u;
            *(v52 + 232) = 0u;
            *(v52 + 216) = 0u;
            if (v88)
            {
              v89 = 1;
            }

            else
            {
              v89 = 2;
            }

            *(v52 + 272) = v89;
            *(v52 + 280) = 0;
            *(v52 + 288) = v52 + 296;
            *(v52 + 278) = 16131;
            *(v52 + 248) = v52;
            *(v52 + 256) = 237;
            if ((*(v52 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v90 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v91 = *(v52 + 488);
                v92 = *(*(v52 + 480) + 372);
                v93 = *(v52 + 860);
                if (v91)
                {
                  LODWORD(v91) = *(v91 + 424);
                }

                LODWORD(buf[0]) = 136448258;
                *(buf + 4) = "nw_http1_connection_log_parser_version";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v52 + 74;
                HIWORD(buf[2]) = 2080;
                v695 = " ";
                *v696 = 1024;
                *&v696[2] = v92;
                *&v696[6] = 1024;
                *&v696[8] = v93;
                *&v696[12] = 1024;
                *&v696[14] = v91;
                *&v696[18] = 1024;
                *&v696[20] = 9;
                *&v696[24] = 1024;
                *&v696[26] = 2;
                *&v696[30] = 1024;
                *&v696[32] = 1;
                _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
              }
            }

            goto LABEL_120;
          }

          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_parser_init";
          v535 = _os_log_send_and_compose_impl();
          LOBYTE(v693[0]) = 16;
          v676[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v535, v693, v676))
          {
            if (LOBYTE(v693[0]) == 17)
            {
              v536 = __nwlog_obj();
              v537 = v693[0];
              if (os_log_type_enabled(v536, v693[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v538 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1031:
                _os_log_impl(&dword_181A37000, v536, v537, v538, buf, 0xCu);
              }
            }

            else if (v676[0] == OS_LOG_TYPE_INFO)
            {
              v608 = __nw_create_backtrace_string();
              v536 = __nwlog_obj();
              v537 = v693[0];
              v609 = os_log_type_enabled(v536, v693[0]);
              if (v608)
              {
                if (v609)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_connection_parser_init";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v608;
                  _os_log_impl(&dword_181A37000, v536, v537, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v608);
                goto LABEL_1032;
              }

              if (v609)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v538 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                goto LABEL_1031;
              }
            }

            else
            {
              v536 = __nwlog_obj();
              v537 = v693[0];
              if (os_log_type_enabled(v536, v693[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v538 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                goto LABEL_1031;
              }
            }
          }

LABEL_1032:
          if (v535)
          {
            free(v535);
          }

          v6 = v673;
LABEL_120:
          buf[0] = 0;
          buf[1] = buf;
          buf[2] = 0x2000000000;
          v695 = v52;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
          v689 = &unk_1E6A32758;
          *v690 = buf;
          *(v52 + 608) = _Block_copy(aBlock);
          _Block_object_dispose(buf, 8);
          if ((*(v52 + 158) & 1) == 0 && BYTE1(v50[82].isa) == 1)
          {
            v547 = __nwlog_obj();
            if (os_log_type_enabled(v547, OS_LOG_TYPE_DEBUG))
            {
              v548 = *(v52 + 488);
              v549 = *(*(v52 + 480) + 372);
              v550 = *(v52 + 860);
              if (v548)
              {
                LODWORD(v548) = *(v548 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_connection_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v52 + 74;
              HIWORD(buf[2]) = 2080;
              v695 = " ";
              *v696 = 1024;
              *&v696[2] = v549;
              *&v696[6] = 1024;
              *&v696[8] = v550;
              *&v696[12] = 1024;
              *&v696[14] = v548;
              *&v696[18] = 2048;
              *&v696[20] = v52;
              _os_log_impl(&dword_181A37000, v547, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
              v6 = v673;
            }
          }

          nw_protocol_replace_input_handler(v47, v6, v52);
          *v52 = *v47;
          v94 = *(v52 + 736);
          if (v94)
          {
            v95 = v674;
            v96 = v50;
            if (!*(v52 + 528))
            {
              v97 = _nw_parameters_copy_context(*(v52 + 736));
              buf[0] = nw_path_copy_flow_registration(v97, v52);
              v98 = (v52 + 560);
              nw::retained_ptr<nw_endpoint *>::operator=(v52 + 560, buf);
              v99 = *(v52 + 560);
              if (v99)
              {
                v100 = nw_path_flow_registration_copy_endpoint(v99);
                v101 = nw_path_flow_registration_copy_parameters(*v98);
                buf[0] = nw_endpoint_copy_association_with_evaluator(v100, v101, 0);
                nw::retained_ptr<nw_endpoint *>::operator=(v52 + 528, buf);
                if (*(v52 + 528))
                {
                  buf[0] = nw_protocol_instance_stub_create(v52);
                  nw::retained_ptr<nw_endpoint *>::operator=(v52 + 544, buf);
                  nw_association_register_internal(*(v52 + 528), v94, *(v52 + 544), 0, 0, &__block_literal_global_69_43019);
                  v102 = nw_association_copy_current_path(*(v52 + 528), v101);
                  if (v102)
                  {
                    v103 = v102;
                    v104 = nw_path_copy_for_flow_registration(v102, *v98);
                    if (v104)
                    {
                      v105 = v104;
                      if (*(v52 + 512) != v104)
                      {
                        buf[0] = os_retain(v104);
                        nw::retained_ptr<nw_endpoint *>::operator=(v52 + 512, buf);
                      }

                      if (nw_path_has_flows(v105))
                      {
                        v106 = 4096;
                      }

                      else
                      {
                        v106 = 0;
                      }

                      *(v52 + 872) = *(v52 + 872) & 0xEFFF | v106;
                      v107 = _nw_parameters_copy_effective_proxy_config(v94);
                      if (v107)
                      {
                        v108 = v107;
                        if (nw_path_has_proxy_config(v103, v107))
                        {
                          buf[0] = os_retain(v108);
                          nw::retained_ptr<nw_endpoint *>::operator=(v52 + 576, buf);
                        }

                        os_release(v108);
                      }

                      os_release(v105);
                    }

                    os_release(v103);
                  }
                }

                if (v101)
                {
                  os_release(v101);
                }

                v6 = v673;
                if (v100)
                {
                  os_release(v100);
                }
              }

              v95 = v674;
              v96 = v50;
              if (v97)
              {
                os_release(v97);
                v96 = v50;
                v95 = v674;
              }
            }

            v109 = *(v52 + 512);
            if (v109)
            {
LABEL_146:
              v110 = _nw_path_uses_interface_type(v109, 2u);
              v96 = v50;
              v95 = v674;
              if (v110)
              {
                *(v52 + 192) = 1000;
              }
            }

LABEL_148:
            v111 = *(v95 + 336) + 1;
            *(v95 + 336) = v111;
            v112 = v671;
            if (v111 == v111 << 31 >> 31)
            {
              goto LABEL_296;
            }

            v113 = v95;
            __nwlog_obj();
            v114 = *(v113 + 336);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->connections_count";
            HIWORD(buf[2]) = 2048;
            v695 = 1;
            *v696 = 2048;
            *&v696[2] = v114;
            v115 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v115, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v116 = __nwlog_obj();
                v117 = type[0];
                if (os_log_type_enabled(v116, type[0]))
                {
                  v118 = *(v674 + 336);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->connections_count";
                  HIWORD(buf[2]) = 2048;
                  v695 = 1;
                  *v696 = 2048;
                  *&v696[2] = v118;
                  v119 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_292:
                  _os_log_impl(&dword_181A37000, v116, v117, v119, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v121 = __nw_create_backtrace_string();
                v116 = __nwlog_obj();
                v117 = type[0];
                v122 = os_log_type_enabled(v116, type[0]);
                if (v121)
                {
                  if (v122)
                  {
                    v123 = *(v674 + 336);
                    LODWORD(buf[0]) = 136447234;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v695 = 1;
                    *v696 = 2048;
                    *&v696[2] = v123;
                    *&v696[10] = 2082;
                    *&v696[12] = v121;
                    _os_log_impl(&dword_181A37000, v116, v117, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v121);
                  v6 = v673;
                  goto LABEL_293;
                }

                v6 = v673;
                if (v122)
                {
                  v197 = *(v674 + 336);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->connections_count";
                  HIWORD(buf[2]) = 2048;
                  v695 = 1;
                  *v696 = 2048;
                  *&v696[2] = v197;
                  v119 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_292;
                }
              }

              else
              {
                v116 = __nwlog_obj();
                v117 = type[0];
                if (os_log_type_enabled(v116, type[0]))
                {
                  v136 = *(v674 + 336);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->connections_count";
                  HIWORD(buf[2]) = 2048;
                  v695 = 1;
                  *v696 = 2048;
                  *&v696[2] = v136;
                  v119 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_292;
                }
              }
            }

LABEL_293:
            if (v115)
            {
              free(v115);
            }

            v95 = v674;
            *(v674 + 336) = -1;
            v96 = v50;
            v112 = v671;
LABEL_296:
            v198 = *(v95 + 360) + 1;
            *(v95 + 360) = v198;
            if (v198 == v198 << 31 >> 31)
            {
              goto LABEL_314;
            }

            v199 = v95;
            __nwlog_obj();
            v200 = *(v199 + 360);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->next_connection_log_num";
            HIWORD(buf[2]) = 2048;
            v695 = 1;
            *v696 = 2048;
            *&v696[2] = v200;
            v201 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v201, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v202 = __nwlog_obj();
                v203 = type[0];
                if (os_log_type_enabled(v202, type[0]))
                {
                  v204 = *(v674 + 360);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->next_connection_log_num";
                  HIWORD(buf[2]) = 2048;
                  v695 = 1;
                  *v696 = 2048;
                  *&v696[2] = v204;
                  v205 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_310:
                  _os_log_impl(&dword_181A37000, v202, v203, v205, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v206 = __nw_create_backtrace_string();
                v202 = __nwlog_obj();
                v203 = type[0];
                v207 = os_log_type_enabled(v202, type[0]);
                if (v206)
                {
                  if (v207)
                  {
                    v208 = *(v674 + 360);
                    LODWORD(buf[0]) = 136447234;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->next_connection_log_num";
                    HIWORD(buf[2]) = 2048;
                    v695 = 1;
                    *v696 = 2048;
                    *&v696[2] = v208;
                    *&v696[10] = 2082;
                    *&v696[12] = v206;
                    _os_log_impl(&dword_181A37000, v202, v203, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v206);
                  v6 = v673;
                  goto LABEL_311;
                }

                v6 = v673;
                if (v207)
                {
                  v210 = *(v674 + 360);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->next_connection_log_num";
                  HIWORD(buf[2]) = 2048;
                  v695 = 1;
                  *v696 = 2048;
                  *&v696[2] = v210;
                  v205 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_310;
                }
              }

              else
              {
                v202 = __nwlog_obj();
                v203 = type[0];
                if (os_log_type_enabled(v202, type[0]))
                {
                  v209 = *(v674 + 360);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->next_connection_log_num";
                  HIWORD(buf[2]) = 2048;
                  v695 = 1;
                  *v696 = 2048;
                  *&v696[2] = v209;
                  v205 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_310;
                }
              }
            }

LABEL_311:
            if (v201)
            {
              free(v201);
            }

            LODWORD(v198) = -1;
            *(v674 + 360) = -1;
            v96 = v50;
            v112 = v671;
LABEL_314:
            *(v52 + 860) = v198;
            if ((*(v52 + 158) & 1) == 0 && BYTE1(v96[82].isa) == 1)
            {
              v551 = __nwlog_obj();
              if (os_log_type_enabled(v551, OS_LOG_TYPE_DEBUG))
              {
                v552 = *(v52 + 488);
                v553 = *(*(v52 + 480) + 372);
                v554 = *(v52 + 860);
                if (v552)
                {
                  LODWORD(v552) = *(v552 + 424);
                }

                v555 = *(v674 + 336);
                LODWORD(buf[0]) = 136448002;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v52 + 74;
                HIWORD(buf[2]) = 2080;
                v695 = " ";
                *v696 = 1024;
                *&v696[2] = v553;
                *&v696[6] = 1024;
                *&v696[8] = v554;
                *&v696[12] = 1024;
                *&v696[14] = v552;
                *&v696[18] = 2048;
                *&v696[20] = v52;
                *&v696[28] = 1024;
                *&v696[30] = v555;
                _os_log_impl(&dword_181A37000, v551, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                v6 = v673;
                v112 = v671;
              }
            }

            if (*(v6 + 248))
            {
              if (*(v52 + 488))
              {
                __nwlog_obj();
                v211 = *(v52 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v52;
                HIWORD(buf[2]) = 2048;
                v695 = v211;
                v212 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                LOBYTE(v693[0]) = 0;
                if (!__nwlog_fault(v212, aBlock, v693))
                {
                  goto LABEL_349;
                }

                if (aBlock[0] == 17)
                {
                  v213 = __nwlog_obj();
                  v214 = aBlock[0];
                  if (!os_log_type_enabled(v213, aBlock[0]))
                  {
                    goto LABEL_349;
                  }

                  v215 = *(v52 + 488);
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v52;
                  HIWORD(buf[2]) = 2048;
                  v695 = v215;
                  v216 = "%{public}s Connection %p already has a stream (%p)";
                }

                else if (LOBYTE(v693[0]) == 1)
                {
                  v223 = __nw_create_backtrace_string();
                  v213 = __nwlog_obj();
                  v214 = aBlock[0];
                  v224 = os_log_type_enabled(v213, aBlock[0]);
                  if (v223)
                  {
                    if (v224)
                    {
                      v225 = *(v52 + 488);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v52;
                      HIWORD(buf[2]) = 2048;
                      v695 = v225;
                      *v696 = 2082;
                      *&v696[2] = v223;
                      _os_log_impl(&dword_181A37000, v213, v214, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v223);
                    v6 = v673;
LABEL_349:
                    if (v212)
                    {
                      free(v212);
                      if (*(v6 + 158))
                      {
                        goto LABEL_661;
                      }

                      goto LABEL_657;
                    }

LABEL_656:
                    if (*(v6 + 158))
                    {
                      goto LABEL_661;
                    }

LABEL_657:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v422 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      v423 = *(v6 + 256);
                      v424 = *(*(v6 + 248) + 372);
                      if (v423)
                      {
                        LODWORD(v423) = *(v423 + 860);
                      }

                      v425 = *(v6 + 424);
                      LODWORD(buf[0]) = 136448258;
                      *(buf + 4) = "nw_http1_start_new_connection_for_stream";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v6 + 74;
                      HIWORD(buf[2]) = 2080;
                      v695 = " ";
                      *v696 = 1024;
                      *&v696[2] = v424;
                      *&v696[6] = 1024;
                      *&v696[8] = v423;
                      *&v696[12] = 1024;
                      *&v696[14] = v425;
                      *&v696[18] = 2048;
                      *&v696[20] = v52;
                      *&v696[28] = 1024;
                      *&v696[30] = v425;
                      *&v696[34] = 2048;
                      *&v696[36] = v6;
                      _os_log_impl(&dword_181A37000, v422, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                    }

LABEL_661:
                    *(v6 + 428) |= 1u;
                    v426 = nw_protocol_copy_info(v112);
                    v427 = v426;
                    if (v426)
                    {
                      object = _nw_array_copy_last_object(v426);
                      v429 = object;
                      if (object)
                      {
                        if (nw_protocol_metadata_is_tls(object))
                        {
                          v429 = v429;
                          nw_http_connection_metadata_set_sec_metadata(*(v52 + 768), v429);
                          os_release(v429);
                          nw_protocol_connect(v112, v52);
                          goto LABEL_674;
                        }

                        v430 = 0;
LABEL_668:
                        if (v52)
                        {
                          nw_protocol_connect(v112, v52);
                          goto LABEL_670;
                        }

                        __nwlog_obj();
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_get_output_protocol";
                        v556 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v556, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v557 = __nwlog_obj();
                            v558 = type[0];
                            if (os_log_type_enabled(v557, type[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v559 = "%{public}s called with null connection";
LABEL_1049:
                              _os_log_impl(&dword_181A37000, v557, v558, v559, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v614 = __nw_create_backtrace_string();
                            v557 = __nwlog_obj();
                            v558 = type[0];
                            v615 = os_log_type_enabled(v557, type[0]);
                            if (v614)
                            {
                              if (v615)
                              {
                                LODWORD(buf[0]) = 136446466;
                                *(buf + 4) = "nw_http1_get_output_protocol";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = v614;
                                _os_log_impl(&dword_181A37000, v557, v558, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v614);
                              goto LABEL_1050;
                            }

                            if (v615)
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v559 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1049;
                            }
                          }

                          else
                          {
                            v557 = __nwlog_obj();
                            v558 = type[0];
                            if (os_log_type_enabled(v557, type[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v559 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1049;
                            }
                          }
                        }

LABEL_1050:
                        if (v556)
                        {
                          free(v556);
                        }

                        nw_protocol_connect(v671, 0);
                        v6 = v673;
LABEL_670:
                        if (v429)
                        {
                          v431 = v430;
                        }

                        else
                        {
                          v431 = 1;
                        }

                        if (v431)
                        {
LABEL_675:
                          if (v427)
                          {
                            os_release(v427);
                          }

                          *(v6 + 428) &= ~0x10u;
                          v432 = *(v674 + 352);
                          *(v674 + 352) = v432 - 1;
                          if (v432)
                          {
                            return;
                          }

                          __nwlog_obj();
                          v433 = *(v674 + 352);
                          LODWORD(buf[0]) = 136446978;
                          *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = "http1->pending_output_handler_count";
                          HIWORD(buf[2]) = 2048;
                          v695 = 1;
                          *v696 = 2048;
                          *&v696[2] = v433;
                          v434 = _os_log_send_and_compose_impl();
                          type[0] = OS_LOG_TYPE_ERROR;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v434, type, aBlock))
                          {
                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              v435 = __nwlog_obj();
                              v436 = type[0];
                              if (os_log_type_enabled(v435, type[0]))
                              {
                                v437 = *(v674 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v695 = 1;
                                *v696 = 2048;
                                *&v696[2] = v437;
                                v438 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_691:
                                _os_log_impl(&dword_181A37000, v435, v436, v438, buf, 0x2Au);
                              }
                            }

                            else if (aBlock[0] == 1)
                            {
                              v439 = __nw_create_backtrace_string();
                              v435 = __nwlog_obj();
                              v436 = type[0];
                              v440 = os_log_type_enabled(v435, type[0]);
                              if (v439)
                              {
                                if (v440)
                                {
                                  v441 = *(v674 + 352);
                                  LODWORD(buf[0]) = 136447234;
                                  *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                  WORD2(buf[1]) = 2082;
                                  *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                  HIWORD(buf[2]) = 2048;
                                  v695 = 1;
                                  *v696 = 2048;
                                  *&v696[2] = v441;
                                  *&v696[10] = 2082;
                                  *&v696[12] = v439;
                                  _os_log_impl(&dword_181A37000, v435, v436, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                                }

                                free(v439);
                                goto LABEL_692;
                              }

                              if (v440)
                              {
                                v443 = *(v674 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v695 = 1;
                                *v696 = 2048;
                                *&v696[2] = v443;
                                v438 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                                goto LABEL_691;
                              }
                            }

                            else
                            {
                              v435 = __nwlog_obj();
                              v436 = type[0];
                              if (os_log_type_enabled(v435, type[0]))
                              {
                                v442 = *(v674 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v695 = 1;
                                *v696 = 2048;
                                *&v696[2] = v442;
                                v438 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                                goto LABEL_691;
                              }
                            }
                          }

LABEL_692:
                          if (v434)
                          {
                            free(v434);
                          }

                          *(v674 + 352) = 0;
                          return;
                        }

LABEL_674:
                        os_release(v429);
                        goto LABEL_675;
                      }
                    }

                    else
                    {
                      v429 = 0;
                    }

                    v430 = 1;
                    goto LABEL_668;
                  }

                  v6 = v673;
                  if (!v224)
                  {
                    goto LABEL_349;
                  }

                  v235 = *(v52 + 488);
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v52;
                  HIWORD(buf[2]) = 2048;
                  v695 = v235;
                  v216 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                }

                else
                {
                  v213 = __nwlog_obj();
                  v214 = aBlock[0];
                  if (!os_log_type_enabled(v213, aBlock[0]))
                  {
                    goto LABEL_349;
                  }

                  v226 = *(v52 + 488);
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v52;
                  HIWORD(buf[2]) = 2048;
                  v695 = v226;
                  v216 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                }

                _os_log_impl(&dword_181A37000, v213, v214, v216, buf, 0x20u);
                goto LABEL_349;
              }

              *(v6 + 256) = v52;
              *(v52 + 488) = v6;
              v217 = *(v6 + 320);
              if (v217)
              {
                v217 = os_retain(v217);
              }

              buf[0] = v217;
              nw::retained_ptr<nw_endpoint *>::operator=(v52 + 736, buf);
              if ((*(*(v6 + 248) + 376) & 2) == 0)
              {
LABEL_628:
                v393 = *(v6 + 32);
                if (!v393 || v393 == *(v52 + 32))
                {
LABEL_646:
                  nw_protocol_set_output_handler(v6, *(v52 + 32));
                  nw_protocol_set_input_handler(v52, *(v6 + 48));
                  *v6 = *v52;
                  v410 = *(v6 + 96);
                  v411 = *(v6 + 112);
                  v412 = *(v6 + 128);
                  *(v52 + 144) = *(v6 + 144);
                  v413 = *(v6 + 80);
                  *(v52 + 64) = *(v6 + 64);
                  *(v52 + 80) = v413;
                  *(v52 + 112) = v411;
                  *(v52 + 128) = v412;
                  *(v52 + 96) = v410;
                  *(v52 + 872) &= 0xFFD7u;
                  *(v52 + 864) = 1;
                  if ((*(v52 + 158) & 1) == 0)
                  {
                    v414 = __nwlog_obj();
                    if (os_log_type_enabled(v414, OS_LOG_TYPE_DEBUG))
                    {
                      v415 = *(v52 + 488);
                      v416 = *(*(v52 + 480) + 372);
                      v417 = *(v52 + 860);
                      if (v415)
                      {
                        LODWORD(v415) = *(v415 + 424);
                      }

                      LODWORD(buf[0]) = 136447490;
                      *(buf + 4) = "nw_http1_update_connection_input_state";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v52 + 74;
                      HIWORD(buf[2]) = 2080;
                      v695 = " ";
                      *v696 = 1024;
                      *&v696[2] = v416;
                      *&v696[6] = 1024;
                      *&v696[8] = v417;
                      *&v696[12] = 1024;
                      *&v696[14] = v415;
                      _os_log_impl(&dword_181A37000, v414, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                    }
                  }

                  if ((*(v6 + 158) & 1) == 0)
                  {
                    v418 = __nwlog_obj();
                    if (os_log_type_enabled(v418, OS_LOG_TYPE_INFO))
                    {
                      v419 = *(v6 + 256);
                      v420 = *(*(v6 + 248) + 372);
                      if (v419)
                      {
                        LODWORD(v419) = *(v419 + 860);
                      }

                      v421 = *(v6 + 424);
                      LODWORD(buf[0]) = 136448002;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v6 + 74;
                      HIWORD(buf[2]) = 2080;
                      v695 = " ";
                      *v696 = 1024;
                      *&v696[2] = v420;
                      *&v696[6] = 1024;
                      *&v696[8] = v419;
                      *&v696[12] = 1024;
                      *&v696[14] = v421;
                      *&v696[18] = 2048;
                      *&v696[20] = v6;
                      *&v696[28] = 2048;
                      *&v696[30] = v52;
                      _os_log_impl(&dword_181A37000, v418, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                    }
                  }

                  goto LABEL_656;
                }

                __nwlog_obj();
                v394 = *(v6 + 32);
                v395 = *(v52 + 32);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v394;
                HIWORD(buf[2]) = 2048;
                v695 = v6;
                *v696 = 2048;
                *&v696[2] = v395;
                v396 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                LOBYTE(v693[0]) = 0;
                if (__nwlog_fault(v396, aBlock, v693))
                {
                  if (aBlock[0] == 17)
                  {
                    v397 = __nwlog_obj();
                    v398 = aBlock[0];
                    if (!os_log_type_enabled(v397, aBlock[0]))
                    {
                      goto LABEL_644;
                    }

                    v399 = *(v6 + 32);
                    v400 = *(v52 + 32);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v399;
                    HIWORD(buf[2]) = 2048;
                    v695 = v6;
                    *v696 = 2048;
                    *&v696[2] = v400;
                    v401 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                    goto LABEL_643;
                  }

                  if (LOBYTE(v693[0]) != 1)
                  {
                    v397 = __nwlog_obj();
                    v398 = aBlock[0];
                    if (!os_log_type_enabled(v397, aBlock[0]))
                    {
                      goto LABEL_644;
                    }

                    v406 = *(v6 + 32);
                    v407 = *(v52 + 32);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v406;
                    HIWORD(buf[2]) = 2048;
                    v695 = v6;
                    *v696 = 2048;
                    *&v696[2] = v407;
                    v401 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                    goto LABEL_643;
                  }

                  v402 = __nw_create_backtrace_string();
                  v397 = __nwlog_obj();
                  v398 = aBlock[0];
                  v403 = os_log_type_enabled(v397, aBlock[0]);
                  if (v402)
                  {
                    if (v403)
                    {
                      v404 = *(v673 + 32);
                      v405 = *(v52 + 32);
                      LODWORD(buf[0]) = 136447234;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v404;
                      HIWORD(buf[2]) = 2048;
                      v695 = v673;
                      *v696 = 2048;
                      *&v696[2] = v405;
                      *&v696[10] = 2082;
                      *&v696[12] = v402;
                      _os_log_impl(&dword_181A37000, v397, v398, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v402);
                    v6 = v673;
                    goto LABEL_644;
                  }

                  v6 = v673;
                  if (v403)
                  {
                    v408 = *(v673 + 32);
                    v409 = *(v52 + 32);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v408;
                    HIWORD(buf[2]) = 2048;
                    v695 = v673;
                    *v696 = 2048;
                    *&v696[2] = v409;
                    v401 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_643:
                    _os_log_impl(&dword_181A37000, v397, v398, v401, buf, 0x2Au);
                  }
                }

LABEL_644:
                if (v396)
                {
                  free(v396);
                }

                goto LABEL_646;
              }

              v218 = nw_parameters_copy_default_protocol_stack(*(v6 + 320));
              *aBlock = 0;
              *&aBlock[8] = aBlock;
              *&aBlock[16] = 0x2000000000;
              LOBYTE(v689) = 0;
              buf[0] = 0;
              buf[1] = buf;
              buf[2] = 0x3802000000;
              v695 = __Block_byref_object_copy__42960;
              *v696 = __Block_byref_object_dispose__42961;
              *&v696[8] = 0;
              v696[16] |= 1u;
              *type = MEMORY[0x1E69E9820];
              v682 = 0x40000000;
              v683 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
              v684 = &unk_1E6A32930;
              v685 = aBlock;
              v686 = buf;
              v687 = v6;
              nw_protocol_stack_iterate_application_protocols(v218, type);
              if (*(buf[1] + 40))
              {
                v219 = v52;
                while (1)
                {
                  v219 = *(v219 + 32);
                  if (!v219)
                  {
                    break;
                  }

                  if (nw_protocol_is_tls_over_stream(v219))
                  {
                    v220 = *(buf[1] + 40);
                    v221 = nw_protocol_boringssl_copy_definition();
                    nw_parameters_set_protocol_instance(v220, v222, v219);
                    if (v221)
                    {
                      os_release(v221);
                    }

                    goto LABEL_615;
                  }
                }

                __nwlog_obj();
                LODWORD(v693[0]) = 136446210;
                *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                v231 = _os_log_send_and_compose_impl();
                v676[0] = OS_LOG_TYPE_ERROR;
                v680 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v231, v676, &v680))
                {
                  goto LABEL_619;
                }

                if (v676[0] == OS_LOG_TYPE_FAULT)
                {
                  v232 = __nwlog_obj();
                  v233 = v676[0];
                  if (os_log_type_enabled(v232, v676[0]))
                  {
                    LODWORD(v693[0]) = 136446210;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    v234 = "%{public}s tls should have been in the stack but could not find it";
LABEL_618:
                    _os_log_impl(&dword_181A37000, v232, v233, v234, v693, 0xCu);
                  }
                }

                else if (v680 == OS_LOG_TYPE_INFO)
                {
                  v271 = __nw_create_backtrace_string();
                  v232 = __nwlog_obj();
                  v233 = v676[0];
                  v272 = os_log_type_enabled(v232, v676[0]);
                  if (v271)
                  {
                    if (v272)
                    {
                      LODWORD(v693[0]) = 136446466;
                      *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(v693[1]) = 2082;
                      *(&v693[1] + 6) = v271;
                      _os_log_impl(&dword_181A37000, v232, v233, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v693, 0x16u);
                    }

                    free(v271);
                    v112 = v671;
                    goto LABEL_619;
                  }

                  v112 = v671;
                  if (v272)
                  {
                    LODWORD(v693[0]) = 136446210;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    v234 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                    goto LABEL_618;
                  }
                }

                else
                {
                  v232 = __nwlog_obj();
                  v233 = v676[0];
                  if (os_log_type_enabled(v232, v676[0]))
                  {
                    LODWORD(v693[0]) = 136446210;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    v234 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                    goto LABEL_618;
                  }
                }

LABEL_619:
                if (v231)
                {
                  free(v231);
                }

                v392 = 0;
                goto LABEL_622;
              }

              __nwlog_obj();
              LODWORD(v693[0]) = 136446210;
              *(v693 + 4) = "nw_http1_stream_associate_with_connection";
              v227 = _os_log_send_and_compose_impl();
              v676[0] = OS_LOG_TYPE_ERROR;
              v680 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v227, v676, &v680))
              {
                if (v676[0] == OS_LOG_TYPE_FAULT)
                {
                  v228 = __nwlog_obj();
                  v229 = v676[0];
                  if (os_log_type_enabled(v228, v676[0]))
                  {
                    LODWORD(v693[0]) = 136446210;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    v230 = "%{public}s unable to find tls options";
LABEL_612:
                    _os_log_impl(&dword_181A37000, v228, v229, v230, v693, 0xCu);
                  }
                }

                else if (v680 == OS_LOG_TYPE_INFO)
                {
                  v239 = __nw_create_backtrace_string();
                  v228 = __nwlog_obj();
                  v229 = v676[0];
                  v240 = os_log_type_enabled(v228, v676[0]);
                  if (v239)
                  {
                    if (v240)
                    {
                      LODWORD(v693[0]) = 136446466;
                      *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(v693[1]) = 2082;
                      *(&v693[1] + 6) = v239;
                      _os_log_impl(&dword_181A37000, v228, v229, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v693, 0x16u);
                    }

                    free(v239);
                    v112 = v671;
                  }

                  else
                  {
                    v112 = v671;
                    if (v240)
                    {
                      LODWORD(v693[0]) = 136446210;
                      *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                      v230 = "%{public}s unable to find tls options, no backtrace";
                      goto LABEL_612;
                    }
                  }
                }

                else
                {
                  v228 = __nwlog_obj();
                  v229 = v676[0];
                  if (os_log_type_enabled(v228, v676[0]))
                  {
                    LODWORD(v693[0]) = 136446210;
                    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
                    v230 = "%{public}s unable to find tls options, backtrace limit exceeded";
                    goto LABEL_612;
                  }
                }
              }

              if (v227)
              {
                free(v227);
              }

LABEL_615:
              v392 = 1;
LABEL_622:
              v6 = v673;
              _Block_object_dispose(buf, 8);
              if ((v696[16] & 1) != 0 && *&v696[8])
              {
                os_release(*&v696[8]);
              }

              _Block_object_dispose(aBlock, 8);
              if (v218)
              {
                os_release(v218);
              }

              if (!v392)
              {
                goto LABEL_656;
              }

              goto LABEL_628;
            }

            __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            v543 = _os_log_send_and_compose_impl();
            aBlock[0] = 16;
            LOBYTE(v693[0]) = 0;
            if (!__nwlog_fault(v543, aBlock, v693))
            {
              goto LABEL_1045;
            }

            if (aBlock[0] == 17)
            {
              v544 = __nwlog_obj();
              v545 = aBlock[0];
              if (!os_log_type_enabled(v544, aBlock[0]))
              {
                goto LABEL_1045;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v546 = "%{public}s called with null http1_stream->protocol_http1";
            }

            else if (LOBYTE(v693[0]) == 1)
            {
              v612 = __nw_create_backtrace_string();
              v544 = __nwlog_obj();
              v545 = aBlock[0];
              v613 = os_log_type_enabled(v544, aBlock[0]);
              if (v612)
              {
                if (v613)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v612;
                  _os_log_impl(&dword_181A37000, v544, v545, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v612);
                goto LABEL_1045;
              }

              if (!v613)
              {
LABEL_1045:
                if (v543)
                {
                  free(v543);
                }

                goto LABEL_1027;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v546 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
            }

            else
            {
              v544 = __nwlog_obj();
              v545 = aBlock[0];
              if (!os_log_type_enabled(v544, aBlock[0]))
              {
                goto LABEL_1045;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v546 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v544, v545, v546, buf, 0xCu);
            goto LABEL_1045;
          }

          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_http1_set_up_association";
          v539 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v539, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v540 = __nwlog_obj();
              v541 = type[0];
              if (!os_log_type_enabled(v540, type[0]))
              {
                goto LABEL_1038;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v542 = "%{public}s called with null parameters";
LABEL_1037:
              _os_log_impl(&dword_181A37000, v540, v541, v542, buf, 0xCu);
              goto LABEL_1038;
            }

            if (aBlock[0] != 1)
            {
              v540 = __nwlog_obj();
              v541 = type[0];
              if (!os_log_type_enabled(v540, type[0]))
              {
                goto LABEL_1038;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v542 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1037;
            }

            v610 = __nw_create_backtrace_string();
            v540 = __nwlog_obj();
            v541 = type[0];
            v611 = os_log_type_enabled(v540, type[0]);
            if (!v610)
            {
              if (!v611)
              {
                goto LABEL_1038;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v542 = "%{public}s called with null parameters, no backtrace";
              goto LABEL_1037;
            }

            if (v611)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v610;
              _os_log_impl(&dword_181A37000, v540, v541, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v610);
          }

LABEL_1038:
          if (v539)
          {
            free(v539);
          }

          v6 = v673;
          v95 = v674;
          v96 = v50;
          v109 = *(v52 + 512);
          if (v109)
          {
            goto LABEL_146;
          }

          goto LABEL_148;
        }

        __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v523 = _os_log_send_and_compose_impl();
        LOBYTE(v693[0]) = 16;
        v676[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v523, v693, v676))
        {
          if (LOBYTE(v693[0]) == 17)
          {
            v524 = __nwlog_obj();
            v525 = v693[0];
            if (!os_log_type_enabled(v524, v693[0]))
            {
              goto LABEL_992;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v526 = "%{public}s called with null parameters";
            goto LABEL_991;
          }

          if (v676[0] != OS_LOG_TYPE_INFO)
          {
            v524 = __nwlog_obj();
            v525 = v693[0];
            if (!os_log_type_enabled(v524, v693[0]))
            {
              goto LABEL_992;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v526 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_991;
          }

          v583 = __nw_create_backtrace_string();
          v524 = __nwlog_obj();
          v525 = v693[0];
          v586 = os_log_type_enabled(v524, v693[0]);
          if (!v583)
          {
            if (!v586)
            {
              goto LABEL_992;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v526 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_991;
          }

          if (v586)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_create";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v583;
            v585 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
            goto LABEL_872;
          }

          goto LABEL_873;
        }

LABEL_992:
        if (!v523)
        {
          goto LABEL_994;
        }

        goto LABEL_993;
      }

      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v523 = _os_log_send_and_compose_impl();
      LOBYTE(v693[0]) = 16;
      v676[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v523, v693, v676))
      {
        goto LABEL_992;
      }

      if (LOBYTE(v693[0]) != 17)
      {
        if (v676[0] != OS_LOG_TYPE_INFO)
        {
          v524 = __nwlog_obj();
          v525 = v693[0];
          if (!os_log_type_enabled(v524, v693[0]))
          {
            goto LABEL_992;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v526 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_991;
        }

        v583 = __nw_create_backtrace_string();
        v524 = __nwlog_obj();
        v525 = v693[0];
        v584 = os_log_type_enabled(v524, v693[0]);
        if (!v583)
        {
          if (!v584)
          {
            goto LABEL_992;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v526 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_991;
        }

        if (v584)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v583;
          v585 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_872:
          _os_log_impl(&dword_181A37000, v524, v525, v585, buf, 0x16u);
        }

LABEL_873:
        free(v583);
        if (!v523)
        {
LABEL_994:
          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v643 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v643, type, aBlock))
          {
            goto LABEL_1008;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v644 = __nwlog_obj();
            v645 = type[0];
            if (!os_log_type_enabled(v644, type[0]))
            {
              goto LABEL_1008;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v646 = "%{public}s called with null http1_connection";
          }

          else if (aBlock[0] == 1)
          {
            v647 = __nw_create_backtrace_string();
            v644 = __nwlog_obj();
            v645 = type[0];
            v648 = os_log_type_enabled(v644, type[0]);
            if (v647)
            {
              if (v648)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v647;
                _os_log_impl(&dword_181A37000, v644, v645, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v647);
LABEL_1008:
              if (v643)
              {
                free(v643);
              }

              __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v649 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              LOBYTE(v693[0]) = 0;
              if (!__nwlog_fault(v649, aBlock, v693))
              {
                goto LABEL_1024;
              }

              if (aBlock[0] == 17)
              {
                v650 = __nwlog_obj();
                v651 = aBlock[0];
                if (os_log_type_enabled(v650, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v652 = "%{public}s called with null http1_connection";
LABEL_1023:
                  _os_log_impl(&dword_181A37000, v650, v651, v652, buf, 0xCu);
                }
              }

              else if (LOBYTE(v693[0]) == 1)
              {
                v653 = __nw_create_backtrace_string();
                v650 = __nwlog_obj();
                v651 = aBlock[0];
                v654 = os_log_type_enabled(v650, aBlock[0]);
                if (v653)
                {
                  if (v654)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v653;
                    _os_log_impl(&dword_181A37000, v650, v651, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v653);
                  goto LABEL_1024;
                }

                if (v654)
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v652 = "%{public}s called with null http1_connection, no backtrace";
                  goto LABEL_1023;
                }
              }

              else
              {
                v650 = __nwlog_obj();
                v651 = aBlock[0];
                if (os_log_type_enabled(v650, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v652 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  goto LABEL_1023;
                }
              }

LABEL_1024:
              if (v649)
              {
                free(v649);
              }

              v52 = 0;
LABEL_1027:
              v6 = v673;
              v112 = v671;
              if (*(v673 + 158))
              {
                goto LABEL_661;
              }

              goto LABEL_657;
            }

            if (!v648)
            {
              goto LABEL_1008;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v646 = "%{public}s called with null http1_connection, no backtrace";
          }

          else
          {
            v644 = __nwlog_obj();
            v645 = type[0];
            if (!os_log_type_enabled(v644, type[0]))
            {
              goto LABEL_1008;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v646 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v644, v645, v646, buf, 0xCu);
          goto LABEL_1008;
        }

LABEL_993:
        free(v523);
        goto LABEL_994;
      }

      v524 = __nwlog_obj();
      v525 = v693[0];
      if (!os_log_type_enabled(v524, v693[0]))
      {
        goto LABEL_992;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v526 = "%{public}s called with null endpoint";
    }

    else
    {
      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v523 = _os_log_send_and_compose_impl();
      LOBYTE(v693[0]) = 16;
      v676[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v523, v693, v676))
      {
        goto LABEL_992;
      }

      if (LOBYTE(v693[0]) != 17)
      {
        if (v676[0] != OS_LOG_TYPE_INFO)
        {
          v524 = __nwlog_obj();
          v525 = v693[0];
          if (!os_log_type_enabled(v524, v693[0]))
          {
            goto LABEL_992;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v526 = "%{public}s called with null output_handler, backtrace limit exceeded";
          goto LABEL_991;
        }

        v581 = __nw_create_backtrace_string();
        v524 = __nwlog_obj();
        v525 = v693[0];
        v582 = os_log_type_enabled(v524, v693[0]);
        if (!v581)
        {
          if (!v582)
          {
            goto LABEL_992;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v526 = "%{public}s called with null output_handler, no backtrace";
          goto LABEL_991;
        }

        if (v582)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v581;
          _os_log_impl(&dword_181A37000, v524, v525, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v581);
        goto LABEL_992;
      }

      v524 = __nwlog_obj();
      v525 = v693[0];
      if (!os_log_type_enabled(v524, v693[0]))
      {
        goto LABEL_992;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v526 = "%{public}s called with null output_handler";
    }

LABEL_991:
    _os_log_impl(&dword_181A37000, v524, v525, v526, buf, 0xCu);
    goto LABEL_992;
  }

  if (*(v4 + 336) + *(v4 + 352) >= (*(v4 + 368) + *(v4 + 364)))
  {
    if (*(v6 + 158))
    {
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v55 = gLogObj;
    v56 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    v4 = v674;
    if (!v56)
    {
      goto LABEL_34;
    }

    v57 = *(v6 + 256);
    v58 = *(*(v6 + 248) + 372);
    if (v57)
    {
      LODWORD(v57) = *(v57 + 860);
    }

    v59 = *(v6 + 424);
    v60 = *(v674 + 364);
    LODWORD(buf[0]) = 136447746;
    *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v6 + 74;
    HIWORD(buf[2]) = 2080;
    v695 = " ";
    *v696 = 1024;
    *&v696[2] = v58;
    *&v696[6] = 1024;
    *&v696[8] = v57;
    *&v696[12] = 1024;
    *&v696[14] = v59;
    *&v696[18] = 1024;
    *&v696[20] = v60;
    v23 = "%{public}s %{public}s%s<i%u:c%u:s%u> already at max connection width %u, cannot create new connection";
    v24 = v55;
    v25 = 56;
    goto LABEL_33;
  }

  if ((*(v6 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
  {
    v560 = v5;
    v561 = __nwlog_obj();
    v562 = os_log_type_enabled(v561, OS_LOG_TYPE_DEBUG);
    v5 = v560;
    v4 = v674;
    if (v562)
    {
      v563 = v6 + 74;
      v564 = *(v6 + 256);
      v565 = *(*(v6 + 248) + 372);
      if (v564)
      {
        LODWORD(v564) = *(v564 + 860);
      }

      v6 = v673;
      v566 = *(v673 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v563;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v565;
      *&v696[6] = 1024;
      *&v696[8] = v564;
      *&v696[12] = 1024;
      *&v696[14] = v566;
      _os_log_impl(&dword_181A37000, v561, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> width allows new connection, creating", buf, 0x32u);
      v4 = v674;
      v5 = v560;
    }
  }

  if ((*(v6 + 428) & 0x2000) != 0)
  {
    if ((*(v4 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
    {
      v616 = v5;
      v617 = __nwlog_obj();
      v618 = os_log_type_enabled(v617, OS_LOG_TYPE_DEBUG);
      v5 = v616;
      v4 = v674;
      if (v618)
      {
        v619 = *(v674 + 372);
        v620 = *(v6 + 424);
        LODWORD(buf[0]) = 136447490;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v674 + 74;
        HIWORD(buf[2]) = 2080;
        v695 = " ";
        *v696 = 1024;
        *&v696[2] = v619;
        *&v696[6] = 1024;
        *&v696[8] = v620;
        *&v696[12] = 2048;
        *&v696[14] = v6;
        _os_log_impl(&dword_181A37000, v617, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
        v5 = v616;
        v4 = v674;
      }
    }

    if ((*(v6 + 428) & 0x2000) == 0)
    {
      v30 = v5;
      __nwlog_obj();
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v6;
      v31 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      aBlock[0] = 0;
      if (__nwlog_fault(v31, type, aBlock))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v32 = __nwlog_obj();
          v33 = type[0];
          if (os_log_type_enabled(v32, type[0]))
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v6;
            v34 = "%{public}s stream %p not in pending list, cannot remove";
LABEL_420:
            _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x16u);
          }
        }

        else if (aBlock[0] == 1)
        {
          v137 = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v33 = type[0];
          v138 = os_log_type_enabled(v32, type[0]);
          if (v137)
          {
            if (v138)
            {
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v6;
              HIWORD(buf[2]) = 2082;
              v695 = v137;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v137);
            goto LABEL_421;
          }

          if (v138)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v6;
            v34 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
            goto LABEL_420;
          }
        }

        else
        {
          v32 = __nwlog_obj();
          v33 = type[0];
          if (os_log_type_enabled(v32, type[0]))
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v6;
            v34 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
            goto LABEL_420;
          }
        }
      }

LABEL_421:
      if (v31)
      {
        free(v31);
      }

      v5 = v30;
      goto LABEL_440;
    }

    v124 = *(v6 + 296);
    v125 = *(v6 + 304);
    v126 = (v4 + 256);
    if (v124)
    {
      v126 = (v124 + 304);
    }

    *v126 = v125;
    *v125 = v124;
    *(v6 + 296) = 0;
    *(v6 + 304) = 0;
    v127 = *(v4 + 348);
    *(v4 + 348) = v127 - 1;
    if (v127)
    {
      goto LABEL_438;
    }

    v128 = v5;
    v129 = v4;
    __nwlog_obj();
    v130 = *(v129 + 348);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->pending_stream_count";
    HIWORD(buf[2]) = 2048;
    v695 = 1;
    *v696 = 2048;
    *&v696[2] = v130;
    v131 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (__nwlog_fault(v131, type, aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v132 = __nwlog_obj();
        v133 = type[0];
        if (os_log_type_enabled(v132, type[0]))
        {
          v134 = *(v674 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v695 = 1;
          *v696 = 2048;
          *&v696[2] = v134;
          v135 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_434:
          _os_log_impl(&dword_181A37000, v132, v133, v135, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v236 = __nw_create_backtrace_string();
        v132 = __nwlog_obj();
        v133 = type[0];
        v237 = os_log_type_enabled(v132, type[0]);
        if (v236)
        {
          if (v237)
          {
            v238 = *(v674 + 348);
            LODWORD(buf[0]) = 136447234;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v695 = 1;
            *v696 = 2048;
            *&v696[2] = v238;
            *&v696[10] = 2082;
            *&v696[12] = v236;
            _os_log_impl(&dword_181A37000, v132, v133, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v236);
          goto LABEL_435;
        }

        if (v237)
        {
          v277 = *(v674 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v695 = 1;
          *v696 = 2048;
          *&v696[2] = v277;
          v135 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_434;
        }
      }

      else
      {
        v132 = __nwlog_obj();
        v133 = type[0];
        if (os_log_type_enabled(v132, type[0]))
        {
          v273 = *(v674 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v695 = 1;
          *v696 = 2048;
          *&v696[2] = v273;
          v135 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_434;
        }
      }
    }

LABEL_435:
    if (v131)
    {
      free(v131);
    }

    *(v674 + 348) = 0;
    v6 = v673;
    v5 = v128;
LABEL_438:
    *(v6 + 428) &= ~0x2000u;
    if ((*(v6 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
    {
      v635 = v5;
      v636 = __nwlog_obj();
      v637 = os_log_type_enabled(v636, OS_LOG_TYPE_DEBUG);
      v5 = v635;
      if (v637)
      {
        v638 = v6 + 74;
        v639 = *(v6 + 256);
        v640 = *(*(v6 + 248) + 372);
        if (v639)
        {
          LODWORD(v639) = *(v639 + 860);
        }

        v6 = v673;
        v641 = *(v673 + 424);
        v642 = *(v674 + 348);
        LODWORD(buf[0]) = 136448258;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v638;
        HIWORD(buf[2]) = 2080;
        v695 = " ";
        *v696 = 1024;
        *&v696[2] = v640;
        *&v696[6] = 1024;
        *&v696[8] = v639;
        *&v696[12] = 1024;
        *&v696[14] = v641;
        *&v696[18] = 1024;
        *&v696[20] = v641;
        *&v696[24] = 2048;
        *&v696[26] = v673;
        *&v696[34] = 1024;
        *&v696[36] = v642;
        _os_log_impl(&dword_181A37000, v636, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
        v5 = v635;
      }
    }
  }

LABEL_440:
  if (!*(v6 + 32))
  {
    v283 = nw_parameters_copy_default_protocol_stack(*(v6 + 320));
    *v676 = 0;
    v677 = v676;
    v678 = 0x2000000000;
    v679 = 0;
    buf[0] = 0;
    buf[1] = buf;
    buf[2] = 0x3802000000;
    v695 = __Block_byref_object_copy__42960;
    *v696 = __Block_byref_object_dispose__42961;
    *&v696[8] = 0;
    v696[16] |= 1u;
    *type = MEMORY[0x1E69E9820];
    v682 = 0x40000000;
    v683 = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke;
    v684 = &unk_1E6A328B8;
    v685 = v676;
    v686 = buf;
    v687 = v6;
    nw_protocol_stack_iterate_application_protocols(v283, type);
    v284 = *(buf[1] + 40);
    if (v284)
    {
      v285 = v284;
      *aBlock = 0;
      *&aBlock[8] = aBlock;
      *&aBlock[16] = 0x2000000000;
      LOBYTE(v689) = 0;
      v693[0] = MEMORY[0x1E69E9820];
      v693[1] = 0x40000000;
      v693[2] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2;
      v693[3] = &unk_1E6A328E0;
      v693[4] = aBlock;
      nw_sec_protocol_options_iterate_application_protocols(v285, 1, v693);
      if (*(*&aBlock[8] + 24) == 1)
      {
        sec_protocol_options_clear_tls_application_protocols();
        sec_protocol_options_add_tls_application_protocol(v285, "http/1.1");
      }

      _Block_object_dispose(aBlock, 8);
      os_release(v285);
    }

    nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(v283, v6);
    *(v6 + 428) |= 0x10u;
    v286 = *(v674 + 352) + 1;
    *(v674 + 352) = v286;
    if (v286 == v286 << 31 >> 31)
    {
LABEL_597:
      v384 = *(v6 + 312);
      v385 = *(v6 + 264);
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 0x40000000;
      *&aBlock[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76;
      v689 = &unk_1E6A32908;
      *v690 = v384;
      nw_queue_context_async(v385, aBlock);
      _Block_object_dispose(buf, 8);
      if ((v696[16] & 1) != 0 && *&v696[8])
      {
        os_release(*&v696[8]);
      }

      _Block_object_dispose(v676, 8);
      if (v283)
      {
        goto LABEL_759;
      }

      return;
    }

    __nwlog_obj();
    v287 = *(v674 + 352);
    *aBlock = 136446978;
    *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
    *&aBlock[12] = 2082;
    *&aBlock[14] = "http1->pending_output_handler_count";
    *&aBlock[22] = 2048;
    v689 = 1;
    *v690 = 2048;
    *&v690[2] = v287;
    v288 = _os_log_send_and_compose_impl();
    v680 = OS_LOG_TYPE_ERROR;
    v675 = 0;
    if (__nwlog_fault(v288, &v680, &v675))
    {
      if (v680 == OS_LOG_TYPE_FAULT)
      {
        v289 = __nwlog_obj();
        v290 = v680;
        if (os_log_type_enabled(v289, v680))
        {
          v291 = *(v674 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v689 = 1;
          *v690 = 2048;
          *&v690[2] = v291;
          v292 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_593:
          _os_log_impl(&dword_181A37000, v289, v290, v292, aBlock, 0x2Au);
        }
      }

      else if (v675 == 1)
      {
        v335 = __nw_create_backtrace_string();
        v289 = __nwlog_obj();
        v290 = v680;
        v336 = os_log_type_enabled(v289, v680);
        if (v335)
        {
          if (v336)
          {
            v337 = *(v674 + 352);
            *aBlock = 136447234;
            *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
            *&aBlock[12] = 2082;
            *&aBlock[14] = "http1->pending_output_handler_count";
            *&aBlock[22] = 2048;
            v689 = 1;
            *v690 = 2048;
            *&v690[2] = v337;
            v691 = 2082;
            v692 = v335;
            _os_log_impl(&dword_181A37000, v289, v290, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
          }

          free(v335);
          goto LABEL_594;
        }

        if (v336)
        {
          v383 = *(v674 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v689 = 1;
          *v690 = 2048;
          *&v690[2] = v383;
          v292 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_593;
        }
      }

      else
      {
        v289 = __nwlog_obj();
        v290 = v680;
        if (os_log_type_enabled(v289, v680))
        {
          v339 = *(v674 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v689 = 1;
          *v690 = 2048;
          *&v690[2] = v339;
          v292 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_593;
        }
      }
    }

LABEL_594:
    if (v288)
    {
      free(v288);
    }

    *(v674 + 352) = -1;
    v6 = v673;
    goto LABEL_597;
  }

  if ((*(v6 + 158) & 1) == 0 && BYTE1(v5[82].isa) == 1)
  {
    v575 = __nwlog_obj();
    if (os_log_type_enabled(v575, OS_LOG_TYPE_DEBUG))
    {
      v576 = v6 + 74;
      v577 = *(v6 + 256);
      v578 = *(*(v6 + 248) + 372);
      if (v577)
      {
        LODWORD(v577) = *(v577 + 860);
      }

      v6 = v673;
      v579 = *(v673 + 424);
      v580 = *(v673 + 32);
      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_establish_new_connection_for_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v576;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v578;
      *&v696[6] = 1024;
      *&v696[8] = v577;
      *&v696[12] = 1024;
      *&v696[14] = v579;
      *&v696[18] = 2048;
      *&v696[20] = v580;
      _os_log_impl(&dword_181A37000, v575, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using already established output handler %p", buf, 0x3Cu);
    }
  }

  v278 = *(v6 + 32);
  v672 = v278;
  if (!v278)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    v567 = _os_log_send_and_compose_impl();
    LOBYTE(v693[0]) = 16;
    v676[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v567, v693, v676))
    {
      goto LABEL_1066;
    }

    if (LOBYTE(v693[0]) == 17)
    {
      v568 = __nwlog_obj();
      v569 = v693[0];
      if (!os_log_type_enabled(v568, v693[0]))
      {
        goto LABEL_1066;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v570 = "%{public}s called with null output_handler";
    }

    else if (v676[0] == OS_LOG_TYPE_INFO)
    {
      v621 = __nw_create_backtrace_string();
      v568 = __nwlog_obj();
      v569 = v693[0];
      v622 = os_log_type_enabled(v568, v693[0]);
      if (v621)
      {
        if (v622)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v621;
          _os_log_impl(&dword_181A37000, v568, v569, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v621);
LABEL_1066:
        if (!v567)
        {
          goto LABEL_1068;
        }

        goto LABEL_1067;
      }

      if (!v622)
      {
        goto LABEL_1066;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v570 = "%{public}s called with null output_handler, no backtrace";
    }

    else
    {
      v568 = __nwlog_obj();
      v569 = v693[0];
      if (!os_log_type_enabled(v568, v693[0]))
      {
        goto LABEL_1066;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v570 = "%{public}s called with null output_handler, backtrace limit exceeded";
    }

    goto LABEL_1065;
  }

  v279 = *(v6 + 336);
  if (!v279)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    v567 = _os_log_send_and_compose_impl();
    LOBYTE(v693[0]) = 16;
    v676[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v567, v693, v676))
    {
      goto LABEL_1066;
    }

    if (LOBYTE(v693[0]) != 17)
    {
      if (v676[0] != OS_LOG_TYPE_INFO)
      {
        v568 = __nwlog_obj();
        v569 = v693[0];
        if (!os_log_type_enabled(v568, v693[0]))
        {
          goto LABEL_1066;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v570 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_1065;
      }

      v625 = __nw_create_backtrace_string();
      v568 = __nwlog_obj();
      v569 = v693[0];
      v626 = os_log_type_enabled(v568, v693[0]);
      if (!v625)
      {
        if (!v626)
        {
          goto LABEL_1066;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v570 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_1065;
      }

      if (v626)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_connection_create";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v625;
        v627 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_939:
        _os_log_impl(&dword_181A37000, v568, v569, v627, buf, 0x16u);
      }

LABEL_940:
      free(v625);
      if (!v567)
      {
LABEL_1068:
        __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        v655 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (!__nwlog_fault(v655, type, aBlock))
        {
          goto LABEL_1082;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v656 = __nwlog_obj();
          v657 = type[0];
          if (!os_log_type_enabled(v656, type[0]))
          {
            goto LABEL_1082;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v658 = "%{public}s called with null http1_connection";
        }

        else if (aBlock[0] == 1)
        {
          v659 = __nw_create_backtrace_string();
          v656 = __nwlog_obj();
          v657 = type[0];
          v660 = os_log_type_enabled(v656, type[0]);
          if (v659)
          {
            if (v660)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v659;
              _os_log_impl(&dword_181A37000, v656, v657, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v659);
LABEL_1082:
            if (v655)
            {
              free(v655);
            }

            __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            v661 = _os_log_send_and_compose_impl();
            aBlock[0] = 16;
            LOBYTE(v693[0]) = 0;
            if (!__nwlog_fault(v661, aBlock, v693))
            {
              goto LABEL_1098;
            }

            if (aBlock[0] == 17)
            {
              v662 = __nwlog_obj();
              v663 = aBlock[0];
              if (os_log_type_enabled(v662, aBlock[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v664 = "%{public}s called with null http1_connection";
LABEL_1097:
                _os_log_impl(&dword_181A37000, v662, v663, v664, buf, 0xCu);
              }
            }

            else if (LOBYTE(v693[0]) == 1)
            {
              v665 = __nw_create_backtrace_string();
              v662 = __nwlog_obj();
              v663 = aBlock[0];
              v666 = os_log_type_enabled(v662, aBlock[0]);
              if (v665)
              {
                if (v666)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v665;
                  _os_log_impl(&dword_181A37000, v662, v663, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v665);
                goto LABEL_1098;
              }

              if (v666)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v664 = "%{public}s called with null http1_connection, no backtrace";
                goto LABEL_1097;
              }
            }

            else
            {
              v662 = __nwlog_obj();
              v663 = aBlock[0];
              if (os_log_type_enabled(v662, aBlock[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v664 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                goto LABEL_1097;
              }
            }

LABEL_1098:
            if (v661)
            {
              free(v661);
            }

            v282 = 0;
            v478 = 1;
LABEL_1120:
            v324 = v673;
            v278 = v672;
            if (*(v673 + 158))
            {
              goto LABEL_748;
            }

            goto LABEL_744;
          }

          if (!v660)
          {
            goto LABEL_1082;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v658 = "%{public}s called with null http1_connection, no backtrace";
        }

        else
        {
          v656 = __nwlog_obj();
          v657 = type[0];
          if (!os_log_type_enabled(v656, type[0]))
          {
            goto LABEL_1082;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v658 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v656, v657, v658, buf, 0xCu);
        goto LABEL_1082;
      }

LABEL_1067:
      free(v567);
      goto LABEL_1068;
    }

    v568 = __nwlog_obj();
    v569 = v693[0];
    if (!os_log_type_enabled(v568, v693[0]))
    {
      goto LABEL_1066;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    v570 = "%{public}s called with null endpoint";
LABEL_1065:
    _os_log_impl(&dword_181A37000, v568, v569, v570, buf, 0xCu);
    goto LABEL_1066;
  }

  v280 = *(v6 + 320);
  if (!v280)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    v567 = _os_log_send_and_compose_impl();
    LOBYTE(v693[0]) = 16;
    v676[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v567, v693, v676))
    {
      goto LABEL_1066;
    }

    if (LOBYTE(v693[0]) == 17)
    {
      v568 = __nwlog_obj();
      v569 = v693[0];
      if (!os_log_type_enabled(v568, v693[0]))
      {
        goto LABEL_1066;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v570 = "%{public}s called with null parameters";
      goto LABEL_1065;
    }

    if (v676[0] != OS_LOG_TYPE_INFO)
    {
      v568 = __nwlog_obj();
      v569 = v693[0];
      if (!os_log_type_enabled(v568, v693[0]))
      {
        goto LABEL_1066;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v570 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_1065;
    }

    v625 = __nw_create_backtrace_string();
    v568 = __nwlog_obj();
    v569 = v693[0];
    v628 = os_log_type_enabled(v568, v693[0]);
    if (!v625)
    {
      if (!v628)
      {
        goto LABEL_1066;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v570 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_1065;
    }

    if (v628)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_connection_create";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v625;
      v627 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_939;
    }

    goto LABEL_940;
  }

  v281 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
  v282 = v281;
  if (v281)
  {
    bzero(v281, 0x370uLL);
    nw_http1_connection::nw_http1_connection(v282);
    goto LABEL_460;
  }

  v293 = __nwlog_obj();
  os_log_type_enabled(v293, OS_LOG_TYPE_ERROR);
  LODWORD(buf[0]) = 136446722;
  *(buf + 4) = "nw_http1_connection_create";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = 1;
  HIWORD(buf[2]) = 2048;
  v695 = 880;
  v294 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v294) || (free(v294), bzero(0, 0x370uLL), nw_http1_connection::nw_http1_connection(0), v295 = __nwlog_obj(), os_log_type_enabled(v295, OS_LOG_TYPE_ERROR), LODWORD(buf[0]) = 136446210, *(buf + 4) = "nw_http1_connection_create", v296 = _os_log_send_and_compose_impl(), __nwlog_should_abort(v296)))
  {
LABEL_1122:
    __break(1u);
    return;
  }

  free(v296);
  v6 = v673;
LABEL_460:
  v297 = v674;
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    v297 = v674;
  }

  *(v282 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
  if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
    v297 = v674;
  }

  *(v282 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
  *(v282 + 184) = 3;
  *(v282 + 176) = v282;
  *(v282 + 40) = v282 + 160;
  *(v282 + 480) = v297;
  nw_protocol_set_output_handler(v282, v278);
  buf[0] = os_retain(v279);
  nw::retained_ptr<nw_endpoint *>::operator=(v282 + 752, buf);
  buf[0] = os_retain(v280);
  nw::retained_ptr<nw_endpoint *>::operator=(v282 + 736, buf);
  buf[0] = _nw_parameters_copy_context(v280);
  nw::retained_ptr<nw_endpoint *>::operator=(v282 + 496, buf);
  *(v282 + 192) = *(v297 + 192);
  v298 = *(v282 + 496);
  *type = MEMORY[0x1E69E9820];
  v682 = 0x40000000;
  v683 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
  v684 = &__block_descriptor_tmp_43_43000;
  v685 = v282;
  buf[0] = nw_http_connection_create_metadata(v298, type, 0);
  nw::retained_ptr<nw_endpoint *>::operator=(v282 + 768, buf);
  nw_http_connection_metadata_set_version(*(v282 + 768), 3);
  nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v282 + 768), *(v297 + 312));
  *(v282 + 616) = 0;
  *(v282 + 624) = v282 + 616;
  *(v282 + 632) = 0;
  *(v282 + 640) = v282 + 632;
  *(v282 + 648) = 0;
  *(v282 + 656) = v282 + 648;
  *(v282 + 664) = 0;
  *(v282 + 672) = v282 + 664;
  *(v282 + 680) = 0;
  *(v282 + 688) = v282 + 680;
  nw_frame_cache_init(v282 + 696, v282, 256, 0x40000, 16);
  v299 = *(v282 + 480);
  if (v299)
  {
    *(v282 + 360) = 0u;
    *(v282 + 376) = 0u;
    *(v282 + 392) = 0u;
    *(v282 + 408) = 0u;
    *(v282 + 424) = 0u;
    *(v282 + 440) = 0u;
    *(v282 + 328) = 0u;
    *(v282 + 344) = 0u;
    *(v282 + 296) = nw_http1_on_message_begin;
    *(v282 + 384) = nw_http1_on_message_complete;
    *(v282 + 368) = nw_http1_on_headers_complete;
    *(v282 + 472) = nw_http1_on_reset;
    *(v282 + 320) = nw_http1_on_method;
    *(v282 + 408) = nw_http1_on_method_complete;
    *(v282 + 304) = nw_http1_on_url;
    *(v282 + 392) = nw_http1_on_url_complete;
    *(v282 + 312) = nw_http1_on_status;
    *(v282 + 400) = nw_http1_on_status_complete;
    *(v282 + 336) = nw_http1_on_header_field;
    *(v282 + 424) = nw_http1_on_header_field_complete;
    *(v282 + 344) = nw_http1_on_header_value;
    *(v282 + 432) = nw_http1_on_header_value_complete;
    *(v282 + 376) = nw_http1_on_body;
    *(v282 + 456) = nw_http1_on_chunk_header;
    *(v282 + 464) = nw_http1_on_chunk_complete;
    v300 = *(v299 + 376);
    *(v282 + 248) = 0u;
    *(v282 + 200) = 0u;
    *(v282 + 264) = 0u;
    *(v282 + 232) = 0u;
    *(v282 + 216) = 0u;
    if (v300)
    {
      v301 = 1;
    }

    else
    {
      v301 = 2;
    }

    *(v282 + 272) = v301;
    *(v282 + 280) = 0;
    *(v282 + 288) = v282 + 296;
    *(v282 + 278) = 16131;
    *(v282 + 248) = v282;
    *(v282 + 256) = 237;
    if ((*(v282 + 158) & 1) == 0)
    {
      v302 = __nwlog_obj();
      if (os_log_type_enabled(v302, OS_LOG_TYPE_DEBUG))
      {
        v303 = *(v282 + 488);
        v304 = *(*(v282 + 480) + 372);
        v305 = *(v282 + 860);
        if (v303)
        {
          LODWORD(v303) = *(v303 + 424);
        }

        LODWORD(buf[0]) = 136448258;
        *(buf + 4) = "nw_http1_connection_log_parser_version";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v282 + 74;
        HIWORD(buf[2]) = 2080;
        v695 = " ";
        *v696 = 1024;
        *&v696[2] = v304;
        *&v696[6] = 1024;
        *&v696[8] = v305;
        *&v696[12] = 1024;
        *&v696[14] = v303;
        *&v696[18] = 1024;
        *&v696[20] = 9;
        *&v696[24] = 1024;
        *&v696[26] = 2;
        *&v696[30] = 1024;
        *&v696[32] = 1;
        _os_log_impl(&dword_181A37000, v302, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
      }
    }

    goto LABEL_473;
  }

  __nwlog_obj();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "nw_http1_connection_parser_init";
  v587 = _os_log_send_and_compose_impl();
  LOBYTE(v693[0]) = 16;
  v676[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v587, v693, v676))
  {
    if (LOBYTE(v693[0]) == 17)
    {
      v588 = __nwlog_obj();
      v589 = v693[0];
      if (os_log_type_enabled(v588, v693[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_parser_init";
        v590 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1103:
        _os_log_impl(&dword_181A37000, v588, v589, v590, buf, 0xCu);
      }
    }

    else if (v676[0] == OS_LOG_TYPE_INFO)
    {
      v629 = __nw_create_backtrace_string();
      v588 = __nwlog_obj();
      v589 = v693[0];
      v630 = os_log_type_enabled(v588, v693[0]);
      if (v629)
      {
        if (v630)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_parser_init";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v629;
          _os_log_impl(&dword_181A37000, v588, v589, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v629);
        goto LABEL_1104;
      }

      if (v630)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_parser_init";
        v590 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
        goto LABEL_1103;
      }
    }

    else
    {
      v588 = __nwlog_obj();
      v589 = v693[0];
      if (os_log_type_enabled(v588, v693[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_parser_init";
        v590 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
        goto LABEL_1103;
      }
    }
  }

LABEL_1104:
  if (v587)
  {
    free(v587);
  }

  v6 = v673;
LABEL_473:
  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x2000000000;
  v695 = v282;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 0x40000000;
  *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
  v689 = &unk_1E6A32758;
  *v690 = buf;
  *(v282 + 608) = _Block_copy(aBlock);
  _Block_object_dispose(buf, 8);
  if ((*(v282 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v599 = __nwlog_obj();
    if (os_log_type_enabled(v599, OS_LOG_TYPE_DEBUG))
    {
      v600 = *(v282 + 488);
      v601 = *(*(v282 + 480) + 372);
      v602 = *(v282 + 860);
      if (v600)
      {
        LODWORD(v600) = *(v600 + 424);
      }

      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_connection_create";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v282 + 74;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v601;
      *&v696[6] = 1024;
      *&v696[8] = v602;
      *&v696[12] = 1024;
      *&v696[14] = v600;
      *&v696[18] = 2048;
      *&v696[20] = v282;
      _os_log_impl(&dword_181A37000, v599, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
      v6 = v673;
    }
  }

  nw_protocol_replace_input_handler(v278, v6, v282);
  *v282 = *v278;
  v306 = *(v282 + 736);
  if (!v306)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_set_up_association";
    v591 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v591, type, aBlock))
    {
      goto LABEL_1110;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v592 = __nwlog_obj();
      v593 = type[0];
      if (!os_log_type_enabled(v592, type[0]))
      {
        goto LABEL_1110;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_set_up_association";
      v594 = "%{public}s called with null parameters";
    }

    else if (aBlock[0] == 1)
    {
      v631 = __nw_create_backtrace_string();
      v592 = __nwlog_obj();
      v593 = type[0];
      v632 = os_log_type_enabled(v592, type[0]);
      if (v631)
      {
        if (v632)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_protocol_http1_set_up_association";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v631;
          _os_log_impl(&dword_181A37000, v592, v593, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v631);
LABEL_1110:
        if (v591)
        {
          free(v591);
        }

        v307 = v674;
        v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v321 = *(v282 + 512);
        if (v321)
        {
          goto LABEL_499;
        }

        goto LABEL_501;
      }

      if (!v632)
      {
        goto LABEL_1110;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_set_up_association";
      v594 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v592 = __nwlog_obj();
      v593 = type[0];
      if (!os_log_type_enabled(v592, type[0]))
      {
        goto LABEL_1110;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_set_up_association";
      v594 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v592, v593, v594, buf, 0xCu);
    goto LABEL_1110;
  }

  v307 = v674;
  v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (!*(v282 + 528))
  {
    v309 = _nw_parameters_copy_context(*(v282 + 736));
    buf[0] = nw_path_copy_flow_registration(v309, v282);
    v310 = (v282 + 560);
    nw::retained_ptr<nw_endpoint *>::operator=(v282 + 560, buf);
    v311 = *(v282 + 560);
    if (v311)
    {
      v312 = nw_path_flow_registration_copy_endpoint(v311);
      v313 = nw_path_flow_registration_copy_parameters(*v310);
      buf[0] = nw_endpoint_copy_association_with_evaluator(v312, v313, 0);
      nw::retained_ptr<nw_endpoint *>::operator=(v282 + 528, buf);
      if (*(v282 + 528))
      {
        buf[0] = nw_protocol_instance_stub_create(v282);
        nw::retained_ptr<nw_endpoint *>::operator=(v282 + 544, buf);
        nw_association_register_internal(*(v282 + 528), v306, *(v282 + 544), 0, 0, &__block_literal_global_69_43019);
        v314 = nw_association_copy_current_path(*(v282 + 528), v313);
        if (v314)
        {
          v315 = v314;
          v316 = nw_path_copy_for_flow_registration(v314, *v310);
          if (v316)
          {
            v317 = v316;
            if (*(v282 + 512) != v316)
            {
              buf[0] = os_retain(v316);
              nw::retained_ptr<nw_endpoint *>::operator=(v282 + 512, buf);
            }

            if (nw_path_has_flows(v317))
            {
              v318 = 4096;
            }

            else
            {
              v318 = 0;
            }

            *(v282 + 872) = *(v282 + 872) & 0xEFFF | v318;
            v319 = _nw_parameters_copy_effective_proxy_config(v306);
            if (v319)
            {
              v320 = v319;
              if (nw_path_has_proxy_config(v315, v319))
              {
                buf[0] = os_retain(v320);
                nw::retained_ptr<nw_endpoint *>::operator=(v282 + 576, buf);
              }

              os_release(v320);
            }

            os_release(v317);
          }

          os_release(v315);
        }
      }

      if (v313)
      {
        os_release(v313);
      }

      v278 = v672;
      if (v312)
      {
        os_release(v312);
      }
    }

    v307 = v674;
    v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    if (v309)
    {
      os_release(v309);
      v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v307 = v674;
    }
  }

  v321 = *(v282 + 512);
  if (v321)
  {
LABEL_499:
    v322 = _nw_path_uses_interface_type(v321, 2u);
    v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v307 = v674;
    if (v322)
    {
      *(v282 + 192) = 1000;
    }
  }

LABEL_501:
  v323 = *(v307 + 336) + 1;
  *(v307 + 336) = v323;
  v324 = v673;
  if (v323 == v323 << 31 >> 31)
  {
    goto LABEL_526;
  }

  v325 = v307;
  __nwlog_obj();
  v326 = *(v325 + 336);
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = "http1->connections_count";
  HIWORD(buf[2]) = 2048;
  v695 = 1;
  *v696 = 2048;
  *&v696[2] = v326;
  v327 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (__nwlog_fault(v327, type, aBlock))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v328 = __nwlog_obj();
      v329 = type[0];
      if (os_log_type_enabled(v328, type[0]))
      {
        v330 = *(v674 + 336);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->connections_count";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v330;
        v331 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_522:
        _os_log_impl(&dword_181A37000, v328, v329, v331, buf, 0x2Au);
      }
    }

    else if (aBlock[0] == 1)
    {
      v332 = __nw_create_backtrace_string();
      v328 = __nwlog_obj();
      v329 = type[0];
      v333 = os_log_type_enabled(v328, type[0]);
      if (v332)
      {
        if (v333)
        {
          v334 = *(v674 + 336);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->connections_count";
          HIWORD(buf[2]) = 2048;
          v695 = 1;
          *v696 = 2048;
          *&v696[2] = v334;
          *&v696[10] = 2082;
          *&v696[12] = v332;
          _os_log_impl(&dword_181A37000, v328, v329, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v332);
        v324 = v673;
        goto LABEL_523;
      }

      v324 = v673;
      if (v333)
      {
        v340 = *(v674 + 336);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->connections_count";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v340;
        v331 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_522;
      }
    }

    else
    {
      v328 = __nwlog_obj();
      v329 = type[0];
      if (os_log_type_enabled(v328, type[0]))
      {
        v338 = *(v674 + 336);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->connections_count";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v338;
        v331 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_522;
      }
    }
  }

LABEL_523:
  if (v327)
  {
    free(v327);
  }

  v307 = v674;
  *(v674 + 336) = -1;
  v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v278 = v672;
LABEL_526:
  v341 = *(v307 + 360) + 1;
  *(v307 + 360) = v341;
  if (v341 == v341 << 31 >> 31)
  {
    goto LABEL_544;
  }

  v342 = v307;
  __nwlog_obj();
  v343 = *(v342 + 360);
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = "http1->next_connection_log_num";
  HIWORD(buf[2]) = 2048;
  v695 = 1;
  *v696 = 2048;
  *&v696[2] = v343;
  v344 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (__nwlog_fault(v344, type, aBlock))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v345 = __nwlog_obj();
      v346 = type[0];
      if (os_log_type_enabled(v345, type[0]))
      {
        v347 = *(v674 + 360);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->next_connection_log_num";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v347;
        v348 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_540:
        _os_log_impl(&dword_181A37000, v345, v346, v348, buf, 0x2Au);
      }
    }

    else if (aBlock[0] == 1)
    {
      v349 = __nw_create_backtrace_string();
      v345 = __nwlog_obj();
      v346 = type[0];
      v350 = os_log_type_enabled(v345, type[0]);
      if (v349)
      {
        if (v350)
        {
          v351 = *(v674 + 360);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->next_connection_log_num";
          HIWORD(buf[2]) = 2048;
          v695 = 1;
          *v696 = 2048;
          *&v696[2] = v351;
          *&v696[10] = 2082;
          *&v696[12] = v349;
          _os_log_impl(&dword_181A37000, v345, v346, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v349);
        v324 = v673;
        goto LABEL_541;
      }

      v324 = v673;
      if (v350)
      {
        v353 = *(v674 + 360);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->next_connection_log_num";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v353;
        v348 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_540;
      }
    }

    else
    {
      v345 = __nwlog_obj();
      v346 = type[0];
      if (os_log_type_enabled(v345, type[0]))
      {
        v352 = *(v674 + 360);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->next_connection_log_num";
        HIWORD(buf[2]) = 2048;
        v695 = 1;
        *v696 = 2048;
        *&v696[2] = v352;
        v348 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_540;
      }
    }
  }

LABEL_541:
  if (v344)
  {
    free(v344);
  }

  LODWORD(v341) = -1;
  *(v674 + 360) = -1;
  v308 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v278 = v672;
LABEL_544:
  *(v282 + 860) = v341;
  if ((*(v282 + 158) & 1) == 0 && BYTE1(v308[82].isa) == 1)
  {
    v603 = __nwlog_obj();
    if (os_log_type_enabled(v603, OS_LOG_TYPE_DEBUG))
    {
      v604 = *(v282 + 488);
      v605 = *(*(v282 + 480) + 372);
      v606 = *(v282 + 860);
      if (v604)
      {
        LODWORD(v604) = *(v604 + 424);
      }

      v607 = *(v674 + 336);
      LODWORD(buf[0]) = 136448002;
      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v282 + 74;
      HIWORD(buf[2]) = 2080;
      v695 = " ";
      *v696 = 1024;
      *&v696[2] = v605;
      *&v696[6] = 1024;
      *&v696[8] = v606;
      *&v696[12] = 1024;
      *&v696[14] = v604;
      *&v696[18] = 2048;
      *&v696[20] = v282;
      *&v696[28] = 1024;
      *&v696[30] = v607;
      _os_log_impl(&dword_181A37000, v603, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
      v324 = v673;
      v278 = v672;
    }
  }

  if (!*(v324 + 248))
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    v595 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    LOBYTE(v693[0]) = 0;
    if (__nwlog_fault(v595, aBlock, v693))
    {
      if (aBlock[0] == 17)
      {
        v596 = __nwlog_obj();
        v597 = aBlock[0];
        if (os_log_type_enabled(v596, aBlock[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v598 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1116:
          _os_log_impl(&dword_181A37000, v596, v597, v598, buf, 0xCu);
        }
      }

      else if (LOBYTE(v693[0]) == 1)
      {
        v633 = __nw_create_backtrace_string();
        v596 = __nwlog_obj();
        v597 = aBlock[0];
        v634 = os_log_type_enabled(v596, aBlock[0]);
        if (v633)
        {
          if (v634)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v633;
            _os_log_impl(&dword_181A37000, v596, v597, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v633);
          goto LABEL_1117;
        }

        if (v634)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v598 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
          goto LABEL_1116;
        }
      }

      else
      {
        v596 = __nwlog_obj();
        v597 = aBlock[0];
        if (os_log_type_enabled(v596, aBlock[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v598 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
          goto LABEL_1116;
        }
      }
    }

LABEL_1117:
    if (v595)
    {
      free(v595);
    }

    v478 = 0;
    goto LABEL_1120;
  }

  if (*(v282 + 488))
  {
    __nwlog_obj();
    v354 = *(v282 + 488);
    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v282;
    HIWORD(buf[2]) = 2048;
    v695 = v354;
    v355 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    LOBYTE(v693[0]) = 0;
    if (!__nwlog_fault(v355, aBlock, v693))
    {
      goto LABEL_579;
    }

    if (aBlock[0] == 17)
    {
      v356 = __nwlog_obj();
      v357 = aBlock[0];
      if (!os_log_type_enabled(v356, aBlock[0]))
      {
        goto LABEL_579;
      }

      v358 = *(v282 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v282;
      HIWORD(buf[2]) = 2048;
      v695 = v358;
      v359 = "%{public}s Connection %p already has a stream (%p)";
    }

    else if (LOBYTE(v693[0]) == 1)
    {
      v366 = __nw_create_backtrace_string();
      v356 = __nwlog_obj();
      v357 = aBlock[0];
      v367 = os_log_type_enabled(v356, aBlock[0]);
      if (v366)
      {
        if (v367)
        {
          v368 = *(v282 + 488);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v282;
          HIWORD(buf[2]) = 2048;
          v695 = v368;
          *v696 = 2082;
          *&v696[2] = v366;
          _os_log_impl(&dword_181A37000, v356, v357, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v366);
        goto LABEL_579;
      }

      if (!v367)
      {
LABEL_579:
        if (v355)
        {
          free(v355);
        }

        goto LABEL_743;
      }

      v378 = *(v282 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v282;
      HIWORD(buf[2]) = 2048;
      v695 = v378;
      v359 = "%{public}s Connection %p already has a stream (%p), no backtrace";
    }

    else
    {
      v356 = __nwlog_obj();
      v357 = aBlock[0];
      if (!os_log_type_enabled(v356, aBlock[0]))
      {
        goto LABEL_579;
      }

      v369 = *(v282 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v282;
      HIWORD(buf[2]) = 2048;
      v695 = v369;
      v359 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v356, v357, v359, buf, 0x20u);
    goto LABEL_579;
  }

  *(v324 + 256) = v282;
  *(v282 + 488) = v324;
  v360 = *(v324 + 320);
  if (v360)
  {
    v360 = os_retain(v360);
  }

  buf[0] = v360;
  nw::retained_ptr<nw_endpoint *>::operator=(v282 + 736, buf);
  if ((*(*(v324 + 248) + 376) & 2) == 0)
  {
LABEL_715:
    v449 = *(v324 + 32);
    if (!v449 || v449 == *(v282 + 32))
    {
LABEL_733:
      nw_protocol_set_output_handler(v324, *(v282 + 32));
      nw_protocol_set_input_handler(v282, *(v324 + 48));
      *v324 = *v282;
      v466 = *(v324 + 96);
      v467 = *(v324 + 112);
      v468 = *(v324 + 128);
      *(v282 + 144) = *(v324 + 144);
      v469 = *(v324 + 80);
      *(v282 + 64) = *(v324 + 64);
      *(v282 + 80) = v469;
      *(v282 + 112) = v467;
      *(v282 + 128) = v468;
      *(v282 + 96) = v466;
      *(v282 + 872) &= 0xFFD7u;
      *(v282 + 864) = 1;
      if ((*(v282 + 158) & 1) == 0)
      {
        v470 = __nwlog_obj();
        if (os_log_type_enabled(v470, OS_LOG_TYPE_DEBUG))
        {
          v471 = *(v282 + 488);
          v472 = *(*(v282 + 480) + 372);
          v473 = *(v282 + 860);
          if (v471)
          {
            LODWORD(v471) = *(v471 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_update_connection_input_state";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v282 + 74;
          HIWORD(buf[2]) = 2080;
          v695 = " ";
          *v696 = 1024;
          *&v696[2] = v472;
          *&v696[6] = 1024;
          *&v696[8] = v473;
          *&v696[12] = 1024;
          *&v696[14] = v471;
          _os_log_impl(&dword_181A37000, v470, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
        }
      }

      if ((*(v324 + 158) & 1) == 0)
      {
        v474 = __nwlog_obj();
        if (os_log_type_enabled(v474, OS_LOG_TYPE_INFO))
        {
          v475 = *(v324 + 256);
          v476 = *(*(v324 + 248) + 372);
          if (v475)
          {
            LODWORD(v475) = *(v475 + 860);
          }

          v477 = *(v324 + 424);
          LODWORD(buf[0]) = 136448002;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v324 + 74;
          HIWORD(buf[2]) = 2080;
          v695 = " ";
          *v696 = 1024;
          *&v696[2] = v476;
          *&v696[6] = 1024;
          *&v696[8] = v475;
          *&v696[12] = 1024;
          *&v696[14] = v477;
          *&v696[18] = 2048;
          *&v696[20] = v324;
          *&v696[28] = 2048;
          *&v696[30] = v282;
          _os_log_impl(&dword_181A37000, v474, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
        }
      }

      goto LABEL_743;
    }

    __nwlog_obj();
    v450 = *(v324 + 32);
    v451 = *(v282 + 32);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v450;
    HIWORD(buf[2]) = 2048;
    v695 = v324;
    *v696 = 2048;
    *&v696[2] = v451;
    v452 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    LOBYTE(v693[0]) = 0;
    if (__nwlog_fault(v452, aBlock, v693))
    {
      if (aBlock[0] == 17)
      {
        v453 = __nwlog_obj();
        v454 = aBlock[0];
        if (!os_log_type_enabled(v453, aBlock[0]))
        {
          goto LABEL_731;
        }

        v455 = *(v324 + 32);
        v456 = *(v282 + 32);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_stream_associate_with_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v455;
        HIWORD(buf[2]) = 2048;
        v695 = v324;
        *v696 = 2048;
        *&v696[2] = v456;
        v457 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
        goto LABEL_730;
      }

      if (LOBYTE(v693[0]) != 1)
      {
        v453 = __nwlog_obj();
        v454 = aBlock[0];
        if (!os_log_type_enabled(v453, aBlock[0]))
        {
          goto LABEL_731;
        }

        v462 = *(v324 + 32);
        v463 = *(v282 + 32);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_stream_associate_with_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v462;
        HIWORD(buf[2]) = 2048;
        v695 = v324;
        *v696 = 2048;
        *&v696[2] = v463;
        v457 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
        goto LABEL_730;
      }

      v458 = __nw_create_backtrace_string();
      v453 = __nwlog_obj();
      v454 = aBlock[0];
      v459 = os_log_type_enabled(v453, aBlock[0]);
      if (v458)
      {
        if (v459)
        {
          v460 = *(v324 + 32);
          v461 = *(v282 + 32);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v460;
          HIWORD(buf[2]) = 2048;
          v695 = v324;
          *v696 = 2048;
          *&v696[2] = v461;
          *&v696[10] = 2082;
          *&v696[12] = v458;
          _os_log_impl(&dword_181A37000, v453, v454, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v458);
        goto LABEL_731;
      }

      if (v459)
      {
        v464 = *(v324 + 32);
        v465 = *(v282 + 32);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_stream_associate_with_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v464;
        HIWORD(buf[2]) = 2048;
        v695 = v324;
        *v696 = 2048;
        *&v696[2] = v465;
        v457 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_730:
        _os_log_impl(&dword_181A37000, v453, v454, v457, buf, 0x2Au);
      }
    }

LABEL_731:
    if (v452)
    {
      free(v452);
    }

    goto LABEL_733;
  }

  v361 = nw_parameters_copy_default_protocol_stack(*(v324 + 320));
  *aBlock = 0;
  *&aBlock[8] = aBlock;
  *&aBlock[16] = 0x2000000000;
  LOBYTE(v689) = 0;
  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x3802000000;
  v695 = __Block_byref_object_copy__42960;
  *v696 = __Block_byref_object_dispose__42961;
  *&v696[8] = 0;
  v696[16] |= 1u;
  *type = MEMORY[0x1E69E9820];
  v682 = 0x40000000;
  v683 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
  v684 = &unk_1E6A32930;
  v685 = aBlock;
  v686 = buf;
  v687 = v324;
  nw_protocol_stack_iterate_application_protocols(v361, type);
  if (*(buf[1] + 40))
  {
    v362 = v282;
    while (1)
    {
      v362 = *(v362 + 32);
      if (!v362)
      {
        break;
      }

      if (nw_protocol_is_tls_over_stream(v362))
      {
        v363 = *(buf[1] + 40);
        v364 = nw_protocol_boringssl_copy_definition();
        nw_parameters_set_protocol_instance(v363, v365, v362);
        if (v364)
        {
          os_release(v364);
        }

        goto LABEL_702;
      }
    }

    __nwlog_obj();
    LODWORD(v693[0]) = 136446210;
    *(v693 + 4) = "nw_http1_stream_associate_with_connection";
    v374 = _os_log_send_and_compose_impl();
    v676[0] = OS_LOG_TYPE_ERROR;
    v680 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v374, v676, &v680))
    {
      goto LABEL_706;
    }

    if (v676[0] == OS_LOG_TYPE_FAULT)
    {
      v375 = __nwlog_obj();
      v376 = v676[0];
      if (os_log_type_enabled(v375, v676[0]))
      {
        LODWORD(v693[0]) = 136446210;
        *(v693 + 4) = "nw_http1_stream_associate_with_connection";
        v377 = "%{public}s tls should have been in the stack but could not find it";
LABEL_705:
        _os_log_impl(&dword_181A37000, v375, v376, v377, v693, 0xCu);
      }
    }

    else if (v680 == OS_LOG_TYPE_INFO)
    {
      v381 = __nw_create_backtrace_string();
      v375 = __nwlog_obj();
      v376 = v676[0];
      v382 = os_log_type_enabled(v375, v676[0]);
      if (v381)
      {
        if (v382)
        {
          LODWORD(v693[0]) = 136446466;
          *(v693 + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(v693[1]) = 2082;
          *(&v693[1] + 6) = v381;
          _os_log_impl(&dword_181A37000, v375, v376, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v693, 0x16u);
        }

        free(v381);
        v324 = v673;
        goto LABEL_706;
      }

      v324 = v673;
      if (v382)
      {
        LODWORD(v693[0]) = 136446210;
        *(v693 + 4) = "nw_http1_stream_associate_with_connection";
        v377 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
        goto LABEL_705;
      }
    }

    else
    {
      v375 = __nwlog_obj();
      v376 = v676[0];
      if (os_log_type_enabled(v375, v676[0]))
      {
        LODWORD(v693[0]) = 136446210;
        *(v693 + 4) = "nw_http1_stream_associate_with_connection";
        v377 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
        goto LABEL_705;
      }
    }

LABEL_706:
    if (v374)
    {
      free(v374);
    }

    v448 = 0;
    goto LABEL_709;
  }

  __nwlog_obj();
  LODWORD(v693[0]) = 136446210;
  *(v693 + 4) = "nw_http1_stream_associate_with_connection";
  v370 = _os_log_send_and_compose_impl();
  v676[0] = OS_LOG_TYPE_ERROR;
  v680 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v370, v676, &v680))
  {
    if (v676[0] == OS_LOG_TYPE_FAULT)
    {
      v371 = __nwlog_obj();
      v372 = v676[0];
      if (os_log_type_enabled(v371, v676[0]))
      {
        LODWORD(v693[0]) = 136446210;
        *(v693 + 4) = "nw_http1_stream_associate_with_connection";
        v373 = "%{public}s unable to find tls options";
LABEL_699:
        _os_log_impl(&dword_181A37000, v371, v372, v373, v693, 0xCu);
      }
    }

    else if (v680 == OS_LOG_TYPE_INFO)
    {
      v379 = __nw_create_backtrace_string();
      v371 = __nwlog_obj();
      v372 = v676[0];
      v380 = os_log_type_enabled(v371, v676[0]);
      if (v379)
      {
        if (v380)
        {
          LODWORD(v693[0]) = 136446466;
          *(v693 + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(v693[1]) = 2082;
          *(&v693[1] + 6) = v379;
          _os_log_impl(&dword_181A37000, v371, v372, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v693, 0x16u);
        }

        free(v379);
        v324 = v673;
      }

      else
      {
        v324 = v673;
        if (v380)
        {
          LODWORD(v693[0]) = 136446210;
          *(v693 + 4) = "nw_http1_stream_associate_with_connection";
          v373 = "%{public}s unable to find tls options, no backtrace";
          goto LABEL_699;
        }
      }
    }

    else
    {
      v371 = __nwlog_obj();
      v372 = v676[0];
      if (os_log_type_enabled(v371, v676[0]))
      {
        LODWORD(v693[0]) = 136446210;
        *(v693 + 4) = "nw_http1_stream_associate_with_connection";
        v373 = "%{public}s unable to find tls options, backtrace limit exceeded";
        goto LABEL_699;
      }
    }
  }

  if (v370)
  {
    free(v370);
  }

LABEL_702:
  v448 = 1;
LABEL_709:
  _Block_object_dispose(buf, 8);
  if ((v696[16] & 1) != 0 && *&v696[8])
  {
    os_release(*&v696[8]);
  }

  _Block_object_dispose(aBlock, 8);
  if (v361)
  {
    os_release(v361);
  }

  if (v448)
  {
    goto LABEL_715;
  }

LABEL_743:
  v478 = 0;
  if (*(v324 + 158))
  {
    goto LABEL_748;
  }

LABEL_744:
  v479 = __nwlog_obj();
  if (os_log_type_enabled(v479, OS_LOG_TYPE_DEBUG))
  {
    v480 = *(v324 + 256);
    v481 = *(*(v324 + 248) + 372);
    if (v480)
    {
      LODWORD(v480) = *(v480 + 860);
    }

    v482 = *(v324 + 424);
    LODWORD(buf[0]) = 136448258;
    *(buf + 4) = "nw_http1_start_new_connection_for_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v324 + 74;
    HIWORD(buf[2]) = 2080;
    v695 = " ";
    *v696 = 1024;
    *&v696[2] = v481;
    *&v696[6] = 1024;
    *&v696[8] = v480;
    *&v696[12] = 1024;
    *&v696[14] = v482;
    *&v696[18] = 2048;
    *&v696[20] = v282;
    *&v696[28] = 1024;
    *&v696[30] = v482;
    *&v696[34] = 2048;
    *&v696[36] = v324;
    _os_log_impl(&dword_181A37000, v479, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
  }

LABEL_748:
  *(v324 + 428) |= 1u;
  v483 = nw_protocol_copy_info(v278);
  v283 = v483;
  if (!v483)
  {
    v485 = 0;
    goto LABEL_754;
  }

  v484 = _nw_array_copy_last_object(v483);
  v485 = v484;
  if (!v484)
  {
LABEL_754:
    v486 = 1;
    goto LABEL_755;
  }

  if (nw_protocol_metadata_is_tls(v484))
  {
    v485 = v485;
    nw_http_connection_metadata_set_sec_metadata(*(v282 + 768), v485);
    os_release(v485);
  }

  v486 = 0;
LABEL_755:
  if (!v478)
  {
    goto LABEL_756;
  }

  __nwlog_obj();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "nw_http1_get_output_protocol";
  v571 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (__nwlog_fault(v571, type, aBlock))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v572 = __nwlog_obj();
      v573 = type[0];
      if (os_log_type_enabled(v572, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_output_protocol";
        v574 = "%{public}s called with null connection";
LABEL_1057:
        _os_log_impl(&dword_181A37000, v572, v573, v574, buf, 0xCu);
      }
    }

    else if (aBlock[0] == 1)
    {
      v623 = __nw_create_backtrace_string();
      v572 = __nwlog_obj();
      v573 = type[0];
      v624 = os_log_type_enabled(v572, type[0]);
      if (v623)
      {
        if (v624)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_get_output_protocol";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v623;
          _os_log_impl(&dword_181A37000, v572, v573, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v623);
        goto LABEL_1058;
      }

      if (v624)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_output_protocol";
        v574 = "%{public}s called with null connection, no backtrace";
        goto LABEL_1057;
      }
    }

    else
    {
      v572 = __nwlog_obj();
      v573 = type[0];
      if (os_log_type_enabled(v572, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_output_protocol";
        v574 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_1057;
      }
    }
  }

LABEL_1058:
  if (v571)
  {
    free(v571);
  }

  v282 = 0;
  v278 = v672;
LABEL_756:
  nw_protocol_connect(v278, v282);
  if ((v486 & 1) == 0)
  {
    os_release(v485);
  }

  if (v283)
  {
LABEL_759:
    os_release(v283);
  }
}
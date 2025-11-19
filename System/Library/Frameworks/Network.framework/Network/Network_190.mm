uint64_t nw_protocol_http1_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v53[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_get_http1_protocol";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v15, &type, &v42))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null protocol";
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v26 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v45 = "nw_http1_get_http1_protocol";
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_90:
        if (!v15)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      if (!v26)
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_89;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_get_http1_protocol";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v15, &type, &v42))
    {
      goto LABEL_90;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v16, type))
        {
          goto LABEL_90;
        }

        *buf = 136446210;
        v45 = "nw_http1_get_http1_protocol";
        v18 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_89;
      }

      v27 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v28 = os_log_type_enabled(v16, type);
      if (!v27)
      {
        if (!v28)
        {
          goto LABEL_90;
        }

        *buf = 136446210;
        v45 = "nw_http1_get_http1_protocol";
        v18 = "%{public}s called with null handle, no backtrace";
        goto LABEL_89;
      }

      if (!v28)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v45 = "nw_http1_get_http1_protocol";
      v46 = 2082;
      v47 = v27;
      v29 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v16 = __nwlog_obj();
    v17 = type;
    if (!os_log_type_enabled(v16, type))
    {
      goto LABEL_90;
    }

    *buf = 136446210;
    v45 = "nw_http1_get_http1_protocol";
    v18 = "%{public}s called with null handle";
LABEL_89:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    goto LABEL_90;
  }

  v3 = handle[6];
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_92;
    }

    v4 = *(handle + 2);
    if (v4)
    {
      handle = (v4 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_get_http1_protocol";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v15, &type, &v42))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null handle->http1_connection";
      goto LABEL_89;
    }

    if (v42 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_89;
    }

    v27 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v31 = os_log_type_enabled(v16, type);
    if (!v27)
    {
      if (!v31)
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_89;
    }

    if (v31)
    {
      *buf = 136446466;
      v45 = "nw_http1_get_http1_protocol";
      v46 = 2082;
      v47 = v27;
      v29 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

LABEL_55:
    free(v27);
    if (!v15)
    {
      goto LABEL_92;
    }

LABEL_91:
    free(v15);
    goto LABEL_92;
  }

  v5 = *(handle + 1);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_get_http1_protocol";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v15, &type, &v42))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null handle->http1_stream";
      goto LABEL_89;
    }

    if (v42 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_89;
    }

    v27 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v30 = os_log_type_enabled(v16, type);
    if (!v27)
    {
      if (!v30)
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v45 = "nw_http1_get_http1_protocol";
      v18 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_89;
    }

    if (!v30)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v45 = "nw_http1_get_http1_protocol";
    v46 = 2082;
    v47 = v27;
    v29 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v16, v17, v29, buf, 0x16u);
    goto LABEL_55;
  }

  handle = (v5 + 248);
LABEL_10:
  v6 = *handle;
  if (*handle)
  {
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v19 = a2;
      v20 = __nwlog_obj();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      a2 = v19;
      if (v21)
      {
        v22 = *(v6 + 372);
        *buf = 136447234;
        v45 = "nw_protocol_http1_remove_listen_handler";
        v46 = 2082;
        v47 = (v6 + 74);
        v48 = 2080;
        v49 = " ";
        v50 = 1024;
        v51 = v22;
        v52 = 2048;
        v53[0] = v19;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with listen_protocol %p", buf, 0x30u);
        a2 = v19;
      }
    }

    if (*(v6 + 328) == a2)
    {
      *(v6 + 328) = 0;
      a2->protocol_handler = 0;
    }

    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v6 + 372);
        *buf = 136446978;
        v45 = "nw_protocol_http1_remove_listen_handler";
        v46 = 2082;
        v47 = (v6 + 74);
        v48 = 2080;
        v49 = " ";
        v50 = 1024;
        v51 = v24;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed protocol listen handler", buf, 0x26u);
      }
    }

    if ((*(v6 + 376) & 1) == 0)
    {
      *(v6 + 376) |= 0x10u;
      v7 = *(v6 + 208);
      while (v7)
      {
        v8 = v7;
        v7 = *(v7 + 592);
        v9 = *(v8 + 784);
        if (v9)
        {
          if (*v9)
          {
            dispatch_source_set_timer(*v9, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            *(v9 + 32) = xmmword_182B08D40;
            if (*(v9 + 48) == 1 && *(v9 + 49) == 1)
            {
              nw_queue_source_run_timer(v9, a2);
            }
          }
        }

        else if ((*(v8 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v11 = *(v8 + 488);
            if (v11)
            {
              LODWORD(v11) = *(v11 + 424);
            }

            v12 = *(*(v8 + 480) + 372);
            v13 = *(v8 + 860);
            *buf = 136447490;
            v45 = "nw_protocol_http1_remove_listen_handler";
            v46 = 2082;
            v47 = (v8 + 74);
            v48 = 2080;
            v49 = " ";
            v50 = 1024;
            v51 = v12;
            v52 = 1024;
            LODWORD(v53[0]) = v13;
            WORD2(v53[0]) = 1024;
            *(v53 + 6) = v11;
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> no destroy timer on idle http1 connection when listen handler removed", buf, 0x32u);
          }
        }
      }
    }

    return 1;
  }

LABEL_92:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v45 = "nw_protocol_http1_remove_listen_handler";
  v32 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v32, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v45 = "nw_protocol_http1_remove_listen_handler";
        v35 = "%{public}s called with null http1";
LABEL_103:
        v40 = v33;
        v41 = v34;
LABEL_104:
        _os_log_impl(&dword_181A37000, v40, v41, v35, buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      v36 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      v39 = os_log_type_enabled(gLogObj, type);
      if (v36)
      {
        if (v39)
        {
          *buf = 136446466;
          v45 = "nw_protocol_http1_remove_listen_handler";
          v46 = 2082;
          v47 = v36;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        goto LABEL_105;
      }

      if (v39)
      {
        *buf = 136446210;
        v45 = "nw_protocol_http1_remove_listen_handler";
        v35 = "%{public}s called with null http1, no backtrace";
        v40 = v37;
        v41 = v38;
        goto LABEL_104;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v45 = "nw_protocol_http1_remove_listen_handler";
        v35 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_103;
      }
    }
  }

LABEL_105:
  if (v32)
  {
    free(v32);
  }

  return 0;
}

BOOL nw_protocol_http1_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_get_http1_protocol";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v11, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_get_http1_protocol";
      v14 = "%{public}s called with null protocol";
    }

    else
    {
      if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v16 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (!v16)
          {
            goto LABEL_75;
          }

          *buf = 136446210;
          v42 = "nw_http1_get_http1_protocol";
          v14 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_74;
        }

        if (v16)
        {
          *buf = 136446466;
          v42 = "nw_http1_get_http1_protocol";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_75;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_get_http1_protocol";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_get_http1_protocol";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v11, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_get_http1_protocol";
        v14 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_74;
      }

      v17 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!v17)
      {
        if (!v18)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_get_http1_protocol";
        v14 = "%{public}s called with null handle, no backtrace";
        goto LABEL_74;
      }

      if (!v18)
      {
        goto LABEL_38;
      }

      *buf = 136446466;
      v42 = "nw_http1_get_http1_protocol";
      v43 = 2082;
      v44 = v17;
      v19 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v42 = "nw_http1_get_http1_protocol";
    v14 = "%{public}s called with null handle";
LABEL_74:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_75;
  }

  v4 = handle[6];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_77;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      handle = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_get_http1_protocol";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v11, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_get_http1_protocol";
        v14 = "%{public}s called with null handle->http1_connection";
        goto LABEL_74;
      }

      if (v39 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (!os_log_type_enabled(v12, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_get_http1_protocol";
        v14 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_74;
      }

      v17 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v28 = os_log_type_enabled(v12, type);
      if (!v17)
      {
        if (!v28)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v42 = "nw_http1_get_http1_protocol";
        v14 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_74;
      }

      if (v28)
      {
        *buf = 136446466;
        v42 = "nw_http1_get_http1_protocol";
        v43 = 2082;
        v44 = v17;
        v19 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

LABEL_38:
      free(v17);
      if (!v11)
      {
LABEL_77:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v42 = "nw_protocol_http1_add_listen_handler";
        v29 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v39 = 0;
        if (!__nwlog_fault(v29, &type, &v39))
        {
          goto LABEL_90;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          v31 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_90;
          }

          *buf = 136446210;
          v42 = "nw_protocol_http1_add_listen_handler";
          v32 = "%{public}s called with null http1";
        }

        else
        {
          if (v39 == 1)
          {
            v33 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v35 = type;
            v36 = os_log_type_enabled(gLogObj, type);
            if (v33)
            {
              if (v36)
              {
                *buf = 136446466;
                v42 = "nw_protocol_http1_add_listen_handler";
                v43 = 2082;
                v44 = v33;
                _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v33);
              goto LABEL_90;
            }

            if (!v36)
            {
LABEL_90:
              if (v29)
              {
                free(v29);
              }

              return 0;
            }

            *buf = 136446210;
            v42 = "nw_protocol_http1_add_listen_handler";
            v32 = "%{public}s called with null http1, no backtrace";
            v37 = v34;
            v38 = v35;
LABEL_89:
            _os_log_impl(&dword_181A37000, v37, v38, v32, buf, 0xCu);
            goto LABEL_90;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          v31 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_90;
          }

          *buf = 136446210;
          v42 = "nw_protocol_http1_add_listen_handler";
          v32 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        v37 = v30;
        v38 = v31;
        goto LABEL_89;
      }

LABEL_76:
      free(v11);
      goto LABEL_77;
    }

LABEL_75:
    if (!v11)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_http1_get_http1_protocol";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v11, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_get_http1_protocol";
      v14 = "%{public}s called with null handle->http1_stream";
      goto LABEL_74;
    }

    if (v39 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_get_http1_protocol";
      v14 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_74;
    }

    v17 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v27 = os_log_type_enabled(v12, type);
    if (!v17)
    {
      if (!v27)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v42 = "nw_http1_get_http1_protocol";
      v14 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_74;
    }

    if (!v27)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v42 = "nw_http1_get_http1_protocol";
    v43 = 2082;
    v44 = v17;
    v19 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v12, v13, v19, buf, 0x16u);
    goto LABEL_38;
  }

  handle = (v6 + 248);
LABEL_10:
  v7 = *handle;
  if (!*handle)
  {
    goto LABEL_77;
  }

  if (*(v7 + 328))
  {
    if ((*(v7 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v10 = *(v7 + 372);
      *buf = 136446978;
      v42 = "nw_protocol_http1_add_listen_handler";
      v43 = 2082;
      v44 = (v7 + 74);
      v45 = 2080;
      v46 = " ";
      v47 = 1024;
      v48 = v10;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> already have a listen handler, ignoring add", buf, 0x26u);
    }

    return 0;
  }

  if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v20 = a1;
    v21 = a3;
    v22 = a2;
    v23 = __nwlog_obj();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    a2 = v22;
    a3 = v21;
    v25 = v24;
    a1 = v20;
    if (v25)
    {
      v26 = *(v7 + 372);
      *buf = 136446978;
      v42 = "nw_protocol_http1_add_listen_handler";
      v43 = 2082;
      v44 = (v7 + 74);
      v45 = 2080;
      v46 = " ";
      v47 = 1024;
      v48 = v26;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol listen handler", buf, 0x26u);
      a2 = v22;
      a3 = v21;
      a1 = v20;
    }
  }

  *(v7 + 328) = a2;
  a2->protocol_handler = v7;
  if (a3)
  {
    nw_protocol_remove_instance(a1);
  }

  return 1;
}

uint64_t nw_protocol_http1_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_http1_get_http1_protocol";
    v34 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v79) = 0;
    if (!__nwlog_fault(v34, type, &v79))
    {
      goto LABEL_163;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (!os_log_type_enabled(v35, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v90 = "nw_http1_get_http1_protocol";
      v37 = "%{public}s called with null protocol";
    }

    else
    {
      if (v79 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = type[0];
        v43 = os_log_type_enabled(v35, type[0]);
        if (!backtrace_string)
        {
          if (!v43)
          {
            goto LABEL_163;
          }

          *buf = 136446210;
          v90 = "nw_http1_get_http1_protocol";
          v37 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_162;
        }

        if (v43)
        {
          *buf = 136446466;
          v90 = "nw_http1_get_http1_protocol";
          v91 = 2082;
          v92 = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_163;
      }

      v35 = __nwlog_obj();
      v36 = type[0];
      if (!os_log_type_enabled(v35, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v90 = "nw_http1_get_http1_protocol";
      v37 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_162;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_http1_get_http1_protocol";
    v34 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v79) = 0;
    if (!__nwlog_fault(v34, type, &v79))
    {
      goto LABEL_163;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v79 != 1)
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (!os_log_type_enabled(v35, type[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v90 = "nw_http1_get_http1_protocol";
        v37 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_162;
      }

      v44 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type[0];
      v45 = os_log_type_enabled(v35, type[0]);
      if (!v44)
      {
        if (!v45)
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v90 = "nw_http1_get_http1_protocol";
        v37 = "%{public}s called with null handle, no backtrace";
        goto LABEL_162;
      }

      if (!v45)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v90 = "nw_http1_get_http1_protocol";
      v91 = 2082;
      v92 = v44;
      v46 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v35 = __nwlog_obj();
    v36 = type[0];
    if (!os_log_type_enabled(v35, type[0]))
    {
      goto LABEL_163;
    }

    *buf = 136446210;
    v90 = "nw_http1_get_http1_protocol";
    v37 = "%{public}s called with null handle";
LABEL_162:
    _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
    goto LABEL_163;
  }

  v4 = handle[6];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_165;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      handle = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_http1_get_http1_protocol";
    v34 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v79) = 0;
    if (__nwlog_fault(v34, type, &v79))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (!os_log_type_enabled(v35, type[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v90 = "nw_http1_get_http1_protocol";
        v37 = "%{public}s called with null handle->http1_connection";
        goto LABEL_162;
      }

      if (v79 != 1)
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (!os_log_type_enabled(v35, type[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v90 = "nw_http1_get_http1_protocol";
        v37 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_162;
      }

      v44 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type[0];
      v64 = os_log_type_enabled(v35, type[0]);
      if (!v44)
      {
        if (!v64)
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v90 = "nw_http1_get_http1_protocol";
        v37 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_162;
      }

      if (v64)
      {
        *buf = 136446466;
        v90 = "nw_http1_get_http1_protocol";
        v91 = 2082;
        v92 = v44;
        v46 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_71;
      }

LABEL_72:
      free(v44);
      if (!v34)
      {
LABEL_165:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v38 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v79) = 0;
        if (__nwlog_fault(v38, type, &v79))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            v40 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446210;
              v90 = "nw_protocol_http1_finalize_output_frames";
              v41 = "%{public}s called with null http1";
              goto LABEL_176;
            }
          }

          else if (v79 == 1)
          {
            v65 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v66 = gLogObj;
            v67 = type[0];
            v68 = os_log_type_enabled(gLogObj, type[0]);
            if (v65)
            {
              if (v68)
              {
                *buf = 136446466;
                v90 = "nw_protocol_http1_finalize_output_frames";
                v91 = 2082;
                v92 = v65;
                _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v65);
              goto LABEL_178;
            }

            if (v68)
            {
              *buf = 136446210;
              v90 = "nw_protocol_http1_finalize_output_frames";
              v41 = "%{public}s called with null http1, no backtrace";
              v69 = v66;
              v70 = v67;
              goto LABEL_177;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            v40 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446210;
              v90 = "nw_protocol_http1_finalize_output_frames";
              v41 = "%{public}s called with null http1, backtrace limit exceeded";
              goto LABEL_176;
            }
          }
        }

        goto LABEL_178;
      }

LABEL_164:
      free(v34);
      goto LABEL_165;
    }

LABEL_163:
    if (!v34)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_http1_get_http1_protocol";
    v34 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v79) = 0;
    if (!__nwlog_fault(v34, type, &v79))
    {
      goto LABEL_163;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (!os_log_type_enabled(v35, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v90 = "nw_http1_get_http1_protocol";
      v37 = "%{public}s called with null handle->http1_stream";
      goto LABEL_162;
    }

    if (v79 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (!os_log_type_enabled(v35, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v90 = "nw_http1_get_http1_protocol";
      v37 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_162;
    }

    v44 = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type[0];
    v63 = os_log_type_enabled(v35, type[0]);
    if (!v44)
    {
      if (!v63)
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v90 = "nw_http1_get_http1_protocol";
      v37 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_162;
    }

    if (!v63)
    {
      goto LABEL_72;
    }

    *buf = 136446466;
    v90 = "nw_http1_get_http1_protocol";
    v91 = 2082;
    v92 = v44;
    v46 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_71:
    _os_log_impl(&dword_181A37000, v35, v36, v46, buf, 0x16u);
    goto LABEL_72;
  }

  handle = (v6 + 248);
LABEL_10:
  v7 = *handle;
  if (!v7)
  {
    goto LABEL_165;
  }

  if (a2)
  {
    *type = 0;
    v84 = type;
    v85 = 0x2000000000;
    v86 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x2000000000;
    v82 = 0;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 0x40000000;
    v73 = ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v74 = &unk_1E6A32CB8;
    v77 = v7;
    v78 = a2;
    v75 = type;
    v76 = &v79;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v9 = *(tqh_first + 4);
      v10 = v73(v72);
      tqh_first = v9;
    }

    while ((v10 & 1) != 0);
    if (!a2->tqh_first)
    {
      goto LABEL_46;
    }

    if (*(v84 + 3))
    {
      v11 = v80[3];
      if (v11)
      {
        if ((*(v11 + 428) & 4) != 0)
        {
          if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v16 = __nwlog_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = v80[3];
              v18 = (v17 + 74);
              v19 = *(v17 + 256);
              v20 = *(*(v17 + 248) + 372);
              if (v19)
              {
                LODWORD(v19) = *(v19 + 860);
              }

              v21 = *(v17 + 424);
              *buf = 136447490;
              v90 = "nw_protocol_http1_finalize_output_frames";
              v91 = 2082;
              v92 = v18;
              v93 = 2080;
              v94 = " ";
              v95 = 1024;
              v96 = v20;
              v97 = 1024;
              v98 = v19;
              v99 = 1024;
              v100 = v21;
              _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> passing through frames", buf, 0x32u);
            }
          }

LABEL_40:
          v28 = a2->tqh_first;
          do
          {
            if (!v28)
            {
              break;
            }

            v29 = *(v28 + 4);
            v30 = ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_146(&__block_literal_global_149, v28);
            v28 = v29;
          }

          while ((v30 & 1) != 0);
          v31 = *(v84 + 3);
          if (v31)
          {
            v32 = *(v31 + 32);
LABEL_45:
            nw_protocol_finalize_output_frames(v32, a2);
LABEL_46:
            v33 = 1;
LABEL_47:
            _Block_object_dispose(&v79, 8);
            _Block_object_dispose(type, 8);
            return v33;
          }

          __nwlog_obj();
          *buf = 136446210;
          v90 = "nw_http1_get_output_handler";
          v51 = _os_log_send_and_compose_impl();
          v88 = OS_LOG_TYPE_ERROR;
          v87 = 0;
          if (__nwlog_fault(v51, &v88, &v87))
          {
            if (v88 == OS_LOG_TYPE_FAULT)
            {
              v52 = __nwlog_obj();
              v53 = v88;
              if (os_log_type_enabled(v52, v88))
              {
                *buf = 136446210;
                v90 = "nw_http1_get_output_handler";
                v54 = "%{public}s called with null connection";
LABEL_154:
                _os_log_impl(&dword_181A37000, v52, v53, v54, buf, 0xCu);
              }
            }

            else if (v87 == 1)
            {
              v61 = __nw_create_backtrace_string();
              v52 = __nwlog_obj();
              v53 = v88;
              v62 = os_log_type_enabled(v52, v88);
              if (v61)
              {
                if (v62)
                {
                  *buf = 136446466;
                  v90 = "nw_http1_get_output_handler";
                  v91 = 2082;
                  v92 = v61;
                  _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v61);
                goto LABEL_155;
              }

              if (v62)
              {
                *buf = 136446210;
                v90 = "nw_http1_get_output_handler";
                v54 = "%{public}s called with null connection, no backtrace";
                goto LABEL_154;
              }
            }

            else
            {
              v52 = __nwlog_obj();
              v53 = v88;
              if (os_log_type_enabled(v52, v88))
              {
                *buf = 136446210;
                v90 = "nw_http1_get_output_handler";
                v54 = "%{public}s called with null connection, backtrace limit exceeded";
                goto LABEL_154;
              }
            }
          }

LABEL_155:
          if (v51)
          {
            free(v51);
          }

          v32 = 0;
          goto LABEL_45;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v12 = _os_log_send_and_compose_impl();
        v88 = OS_LOG_TYPE_ERROR;
        v87 = 0;
        if (__nwlog_fault(v12, &v88, &v87))
        {
          if (v88 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = v88;
            if (!os_log_type_enabled(gLogObj, v88))
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v90 = "nw_protocol_http1_finalize_output_frames";
            v15 = "%{public}s haven't sent headers, but we have someone else's frames to finalize";
LABEL_36:
            v26 = v13;
            v27 = v14;
LABEL_37:
            _os_log_impl(&dword_181A37000, v26, v27, v15, buf, 0xCu);
            goto LABEL_38;
          }

          if (v87 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = v88;
            if (!os_log_type_enabled(gLogObj, v88))
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v90 = "nw_protocol_http1_finalize_output_frames";
            v15 = "%{public}s haven't sent headers, but we have someone else's frames to finalize, backtrace limit exceeded";
            goto LABEL_36;
          }

          v22 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = v88;
          v25 = os_log_type_enabled(gLogObj, v88);
          if (v22)
          {
            if (v25)
            {
              *buf = 136446466;
              v90 = "nw_protocol_http1_finalize_output_frames";
              v91 = 2082;
              v92 = v22;
              _os_log_impl(&dword_181A37000, v23, v24, "%{public}s haven't sent headers, but we have someone else's frames to finalize, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v22);
            goto LABEL_38;
          }

          if (v25)
          {
            *buf = 136446210;
            v90 = "nw_protocol_http1_finalize_output_frames";
            v15 = "%{public}s haven't sent headers, but we have someone else's frames to finalize, no backtrace";
            v26 = v23;
            v27 = v24;
            goto LABEL_37;
          }
        }

LABEL_38:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_40;
      }

      __nwlog_obj();
      *buf = 136446210;
      v90 = "nw_protocol_http1_finalize_output_frames";
      v47 = _os_log_send_and_compose_impl();
      v88 = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (!__nwlog_fault(v47, &v88, &v87))
      {
        goto LABEL_149;
      }

      if (v88 == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = v88;
        if (os_log_type_enabled(v48, v88))
        {
          *buf = 136446210;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v50 = "%{public}s called with null http1_stream";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      if (v87 != 1)
      {
        v48 = __nwlog_obj();
        v49 = v88;
        if (os_log_type_enabled(v48, v88))
        {
          *buf = 136446210;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v50 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      v57 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = v88;
      v60 = os_log_type_enabled(v48, v88);
      if (!v57)
      {
        if (v60)
        {
          *buf = 136446210;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v50 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      if (v60)
      {
        *buf = 136446466;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v91 = 2082;
        v92 = v57;
        v59 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        goto LABEL_111;
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v90 = "nw_protocol_http1_finalize_output_frames";
      v47 = _os_log_send_and_compose_impl();
      v88 = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (!__nwlog_fault(v47, &v88, &v87))
      {
        goto LABEL_149;
      }

      if (v88 == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = v88;
        if (os_log_type_enabled(v48, v88))
        {
          *buf = 136446210;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v50 = "%{public}s called with null http1_connection";
LABEL_148:
          _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
        }

LABEL_149:
        if (v47)
        {
          free(v47);
        }

        v33 = 0;
        goto LABEL_47;
      }

      if (v87 != 1)
      {
        v48 = __nwlog_obj();
        v49 = v88;
        if (os_log_type_enabled(v48, v88))
        {
          *buf = 136446210;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v50 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      v57 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = v88;
      v58 = os_log_type_enabled(v48, v88);
      if (!v57)
      {
        if (v58)
        {
          *buf = 136446210;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v50 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      if (v58)
      {
        *buf = 136446466;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v91 = 2082;
        v92 = v57;
        v59 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
LABEL_111:
        _os_log_impl(&dword_181A37000, v48, v49, v59, buf, 0x16u);
      }
    }

    free(v57);
    goto LABEL_149;
  }

  __nwlog_obj();
  *buf = 136446210;
  v90 = "nw_protocol_http1_finalize_output_frames";
  v38 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v79) = 0;
  if (__nwlog_fault(v38, type, &v79))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v41 = "%{public}s called with null frames";
LABEL_176:
        v69 = v39;
        v70 = v40;
LABEL_177:
        _os_log_impl(&dword_181A37000, v69, v70, v41, buf, 0xCu);
      }
    }

    else if (v79 == 1)
    {
      v55 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type[0];
      v56 = os_log_type_enabled(v39, type[0]);
      if (v55)
      {
        if (v56)
        {
          *buf = 136446466;
          v90 = "nw_protocol_http1_finalize_output_frames";
          v91 = 2082;
          v92 = v55;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v55);
        goto LABEL_178;
      }

      if (v56)
      {
        *buf = 136446210;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v41 = "%{public}s called with null frames, no backtrace";
        goto LABEL_176;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        v90 = "nw_protocol_http1_finalize_output_frames";
        v41 = "%{public}s called with null frames, backtrace limit exceeded";
        goto LABEL_176;
      }
    }
  }

LABEL_178:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

uint64_t ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v174 = *MEMORY[0x1E69E9840];
  if (nw_frame_get_finalizer_context(a2) != a1[6])
  {
    finalizer_context = nw_frame_get_finalizer_context(a2);
    if (!finalizer_context)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v12 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v166 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, type, &v166))
      {
        goto LABEL_95;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no context";
        goto LABEL_94;
      }

      if (v166 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no context, backtrace limit exceeded";
        goto LABEL_94;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      v17 = os_log_type_enabled(gLogObj, type[0]);
      if (!backtrace_string)
      {
        if (!v17)
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no context, no backtrace";
        goto LABEL_94;
      }

      if (v17)
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2082;
        v168 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s frame %p has no context, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
LABEL_95:
      if (!v12)
      {
LABEL_98:
        nw_frame_finalize(a2);
        return 1;
      }

      goto LABEL_96;
    }

    *(*(a1[4] + 8) + 24) = finalizer_context[1];
    *(*(a1[5] + 8) + 24) = *finalizer_context;
    *finalizer_context = 0;
    finalizer_context[1] = 0;
    if (a2)
    {
      *(a2 + 80) = *(finalizer_context + 1);
      goto LABEL_5;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_frame_unwrap_context";
    v87 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v166 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v87, type, &v166))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_frame_unwrap_context";
          v90 = "%{public}s called with null frame";
LABEL_204:
          _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
        }
      }

      else if (v166 == OS_LOG_TYPE_INFO)
      {
        v91 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v89 = type[0];
        v92 = os_log_type_enabled(v88, type[0]);
        if (v91)
        {
          if (v92)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_frame_unwrap_context";
            *&buf[12] = 2082;
            *&buf[14] = v91;
            _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v91);
          goto LABEL_205;
        }

        if (v92)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_frame_unwrap_context";
          v90 = "%{public}s called with null frame, no backtrace";
          goto LABEL_204;
        }
      }

      else
      {
        v88 = __nwlog_obj();
        v89 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_frame_unwrap_context";
          v90 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_204;
        }
      }
    }

LABEL_205:
    if (!v87)
    {
LABEL_6:
      v5 = *(*(a1[4] + 8) + 24);
      if (v5)
      {
        v6 = *(a1[5] + 8);
        v7 = *(v6 + 24);
        if (v7)
        {
          if ((*(v7 + 428) & 0x200) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_28;
        }

        v18 = *(v5 + 488);
        if (v18)
        {
          *(v6 + 24) = v18;
          if ((*(*(*(a1[5] + 8) + 24) + 428) & 0x200) == 0)
          {
LABEL_110:
            v163[0] = MEMORY[0x1E69E9820];
            v163[1] = 0x40000000;
            v163[2] = ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_143;
            v163[3] = &__block_descriptor_tmp_144_43461;
            v65 = a1[6];
            v163[4] = a2;
            v163[5] = v65;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
            v168 = &unk_1E6A303F0;
            *&v169[8] = 3;
            LOBYTE(v170) = 1;
            *v169 = v163;
            os_unfair_lock_lock(&lock);
            (*&buf[16])(buf);
            os_unfair_lock_unlock(&lock);
            v66 = *(*(*(a1[5] + 8) + 24) + 352);
            v67 = nw_frame_unclaimed_length(a2);
            nw_http_transaction_metadata_increment_outbound_body_transfer_size(v66, v67);
            v68 = *(*(a1[5] + 8) + 24);
            v69 = nw_frame_unclaimed_length(a2);
            v70 = *(v68 + 176);
            *(v68 + 176) = &v69[v70];
            if (__CFADD__(v70, v69))
            {
              if (gLogDatapath == 1)
              {
                v106 = __nwlog_obj();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                {
                  v107 = *(v68 + 176);
                  *buf = 136446978;
                  *&buf[4] = "increment_outbound_body_size";
                  *&buf[12] = 2082;
                  *&buf[14] = "outbound_body_size";
                  *&buf[22] = 2048;
                  v168 = v69;
                  *v169 = 2048;
                  *&v169[2] = v107;
                  _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                }
              }

              *(v68 + 176) = -1;
            }

            if (!nw_frame_is_metadata_complete(a2))
            {
              return 1;
            }

            v71 = *(*(a1[5] + 8) + 24);
            *(v71 + 428) |= 0x800u;
            v72 = *(*(*(a1[5] + 8) + 24) + 256);
            *(v72 + 872) |= 0x20u;
            nw_http_transaction_metadata_mark_outbound_message_end(*(*(*(a1[5] + 8) + 24) + 352));
            v73 = a1[5];
            v74 = *(*(v73 + 8) + 24);
            if (*(v74 + 168) != 1 || *(v74 + 160) == *(v74 + 176))
            {
              return 1;
            }

            if ((*(v74 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v76 = gLogObj;
              v77 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
              v73 = a1[5];
              if (v77)
              {
                v78 = *(*(v73 + 8) + 24);
                v79 = v78 + 74;
                v80 = *(v78 + 256);
                if (v80)
                {
                  LODWORD(v80) = *(v80 + 860);
                }

                v81 = *(*(v78 + 248) + 372);
                v82 = *(v78 + 424);
                if (*(v78 + 168) == 1)
                {
                  v83 = *(v78 + 160);
                }

                else
                {
                  v83 = -1;
                }

                v84 = *(v78 + 176);
                *buf = 136448002;
                *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = v79;
                *&buf[22] = 2080;
                v168 = " ";
                *v169 = 1024;
                *&v169[2] = v81;
                *&v169[6] = 1024;
                *&v169[8] = v80;
                LOWORD(v170) = 1024;
                *(&v170 + 2) = v82;
                HIWORD(v170) = 2048;
                v171 = v83;
                v172 = 2048;
                v173 = v84;
                _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                v73 = a1[5];
              }
            }

            nw_protocol_error(*(*(*(v73 + 8) + 24) + 48), *(*(v73 + 8) + 24));
            v85 = *(*(a1[5] + 8) + 24);
            nw_protocol_disconnected(*(v85 + 48), v85);
            return 0;
          }

LABEL_28:
          v19 = nw_frame_unclaimed_length(a2);
          *type = 0;
          nw_frame_get_buffer(a2, type);
          if (*(*(a1[4] + 8) + 24))
          {
            v21 = *type;
            if (*type)
            {
              v22 = -1;
              do
              {
                ++v22;
                v23 = v21 > 0xF;
                v21 >>= 4;
              }

              while (v23);
              v24 = v22 + 3;
              v25 = 7;
            }

            else
            {
              v25 = 7;
              v24 = 2;
            }

            goto LABEL_42;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
          v93 = _os_log_send_and_compose_impl();
          v166 = OS_LOG_TYPE_ERROR;
          v165 = 0;
          if (__nwlog_fault(v93, &v166, &v165))
          {
            if (v166 == OS_LOG_TYPE_FAULT)
            {
              v94 = __nwlog_obj();
              v95 = v166;
              if (os_log_type_enabled(v94, v166))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                v96 = "%{public}s called with null http1_connection";
LABEL_252:
                _os_log_impl(&dword_181A37000, v94, v95, v96, buf, 0xCu);
              }
            }

            else if (v165 == 1)
            {
              v119 = __nw_create_backtrace_string();
              v94 = __nwlog_obj();
              v95 = v166;
              v120 = os_log_type_enabled(v94, v166);
              if (v119)
              {
                if (v120)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                  *&buf[12] = 2082;
                  *&buf[14] = v119;
                  _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v119);
                goto LABEL_253;
              }

              if (v120)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                v96 = "%{public}s called with null http1_connection, no backtrace";
                goto LABEL_252;
              }
            }

            else
            {
              v94 = __nwlog_obj();
              v95 = v166;
              if (os_log_type_enabled(v94, v166))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                v96 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                goto LABEL_252;
              }
            }
          }

LABEL_253:
          if (v93)
          {
            free(v93);
          }

          v24 = 0;
          v25 = 0;
LABEL_42:
          nw_frame_unclaim(a2, v20, v24, v25);
          v28 = nw_frame_unclaimed_bytes(a2, 0);
          is_metadata_complete = nw_frame_is_metadata_complete(a2);
          v31 = is_metadata_complete;
          if (*(*(a1[4] + 8) + 24))
          {
            if (v19)
            {
              v32 = -1;
              v33 = v19;
              do
              {
                ++v32;
                v23 = v33 > 0xF;
                v33 >>= 4;
              }

              while (v23);
              v34 = v32 + 3;
            }

            else
            {
              v34 = 2;
            }

            if (is_metadata_complete)
            {
              v35 = 7;
            }

            else
            {
              v35 = 2;
            }

            if (v19)
            {
              goto LABEL_52;
            }

            goto LABEL_270;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
          v97 = _os_log_send_and_compose_impl();
          v166 = OS_LOG_TYPE_ERROR;
          v165 = 0;
          if (__nwlog_fault(v97, &v166, &v165))
          {
            if (v166 == OS_LOG_TYPE_FAULT)
            {
              v98 = __nwlog_obj();
              v99 = v166;
              if (!os_log_type_enabled(v98, v166))
              {
                goto LABEL_213;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
              v100 = "%{public}s called with null http1_connection";
LABEL_211:
              v135 = v98;
LABEL_212:
              _os_log_impl(&dword_181A37000, v135, v99, v100, buf, 0xCu);
              goto LABEL_213;
            }

            if (v165 != 1)
            {
              v98 = __nwlog_obj();
              v99 = v166;
              if (!os_log_type_enabled(v98, v166))
              {
                goto LABEL_213;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
              v100 = "%{public}s called with null http1_connection, backtrace limit exceeded";
              goto LABEL_211;
            }

            v121 = __nw_create_backtrace_string();
            v122 = __nwlog_obj();
            v99 = v166;
            log = v122;
            v123 = os_log_type_enabled(v122, v166);
            if (v121)
            {
              if (v123)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                *&buf[12] = 2082;
                *&buf[14] = v121;
                _os_log_impl(&dword_181A37000, log, v99, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v121);
            }

            else if (v123)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
              v100 = "%{public}s called with null http1_connection, no backtrace";
              v135 = log;
              goto LABEL_212;
            }
          }

LABEL_213:
          if (v97)
          {
            free(v97);
          }

          if (*(*(a1[4] + 8) + 24))
          {
            v35 = 0;
            v34 = 0;
            if (v19)
            {
LABEL_52:
              if (v28)
              {
                if (v34)
                {
                  v36 = v28 + v34 - 1;
                  *(v36 - 1) = 2573;
                  v37 = (v36 - 2);
                  v38 = v19;
                  do
                  {
                    if ((v38 & 0xF) >= 0xA)
                    {
                      v39 = (v38 & 0xF) + 55;
                    }

                    else
                    {
                      v39 = v38 & 0xF | 0x30;
                    }

                    *v37-- = v39;
                    v23 = v38 > 0xF;
                    v38 >>= 4;
                  }

                  while (v23);
                  goto LABEL_59;
                }

                v162 = v35;
                v159 = v19;
                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v114 = _os_log_send_and_compose_impl();
                v166 = OS_LOG_TYPE_ERROR;
                v165 = 0;
                v115 = v114;
                if (!__nwlog_fault(v114, &v166, &v165))
                {
                  goto LABEL_247;
                }

                if (v166 == OS_LOG_TYPE_FAULT)
                {
                  v116 = __nwlog_obj();
                  v117 = v166;
                  if (os_log_type_enabled(v116, v166))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    v118 = "%{public}s called with null usable_size";
LABEL_245:
                    v145 = v116;
                    v146 = v117;
LABEL_246:
                    _os_log_impl(&dword_181A37000, v145, v146, v118, buf, 0xCu);
                  }
                }

                else if (v165 == 1)
                {
                  v132 = __nw_create_backtrace_string();
                  v133 = __nwlog_obj();
                  v155 = v166;
                  v134 = os_log_type_enabled(v133, v166);
                  if (v132)
                  {
                    if (v134)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_connection_write_chunk_header";
                      *&buf[12] = 2082;
                      *&buf[14] = v132;
                      _os_log_impl(&dword_181A37000, v133, v155, "%{public}s called with null usable_size, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v132);
                    goto LABEL_247;
                  }

                  if (v134)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    v118 = "%{public}s called with null usable_size, no backtrace";
                    v145 = v133;
                    v146 = v155;
                    goto LABEL_246;
                  }
                }

                else
                {
                  v116 = __nwlog_obj();
                  v117 = v166;
                  if (os_log_type_enabled(v116, v166))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    v118 = "%{public}s called with null usable_size, backtrace limit exceeded";
                    goto LABEL_245;
                  }
                }

LABEL_247:
                if (v115)
                {
                  free(v115);
                }

                v34 = 0;
                goto LABEL_285;
              }

              v162 = v35;
              v159 = v19;
              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v108 = _os_log_send_and_compose_impl();
              v166 = OS_LOG_TYPE_ERROR;
              v165 = 0;
              v109 = v108;
              if (__nwlog_fault(v108, &v166, &v165))
              {
                if (v166 == OS_LOG_TYPE_FAULT)
                {
                  v110 = __nwlog_obj();
                  v111 = v166;
                  v112 = v110;
                  if (!os_log_type_enabled(v110, v166))
                  {
                    goto LABEL_283;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  v113 = "%{public}s called with null buffer";
LABEL_281:
                  v151 = v112;
                  v152 = v111;
LABEL_282:
                  _os_log_impl(&dword_181A37000, v151, v152, v113, buf, 0xCu);
                  goto LABEL_283;
                }

                if (v165 != 1)
                {
                  v112 = __nwlog_obj();
                  v111 = v166;
                  if (!os_log_type_enabled(v112, v166))
                  {
                    goto LABEL_283;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  v113 = "%{public}s called with null buffer, backtrace limit exceeded";
                  goto LABEL_281;
                }

                v130 = __nw_create_backtrace_string();
                v154 = __nwlog_obj();
                v153 = v166;
                v131 = os_log_type_enabled(v154, v166);
                if (v130)
                {
                  if (v131)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    *&buf[12] = 2082;
                    *&buf[14] = v130;
                    _os_log_impl(&dword_181A37000, v154, v153, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v130);
                  if (!v109)
                  {
                    goto LABEL_285;
                  }

                  goto LABEL_284;
                }

                if (v131)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  v113 = "%{public}s called with null buffer, no backtrace";
LABEL_288:
                  v151 = v154;
                  v152 = v153;
                  goto LABEL_282;
                }
              }

              goto LABEL_283;
            }

LABEL_270:
            v162 = v35;
            v159 = v19;
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_header";
            v147 = _os_log_send_and_compose_impl();
            v166 = OS_LOG_TYPE_ERROR;
            v165 = 0;
            v109 = v147;
            if (!__nwlog_fault(v147, &v166, &v165))
            {
              goto LABEL_283;
            }

            if (v166 == OS_LOG_TYPE_FAULT)
            {
              v148 = __nwlog_obj();
              v111 = v166;
              v112 = v148;
              if (!os_log_type_enabled(v148, v166))
              {
                goto LABEL_283;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v113 = "%{public}s called with null size";
              goto LABEL_281;
            }

            if (v165 != 1)
            {
              v112 = __nwlog_obj();
              v111 = v166;
              if (!os_log_type_enabled(v112, v166))
              {
                goto LABEL_283;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v113 = "%{public}s called with null size, backtrace limit exceeded";
              goto LABEL_281;
            }

            v149 = __nw_create_backtrace_string();
            v154 = __nwlog_obj();
            v153 = v166;
            v150 = os_log_type_enabled(v154, v166);
            if (v149)
            {
              if (v150)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                *&buf[12] = 2082;
                *&buf[14] = v149;
                _os_log_impl(&dword_181A37000, v154, v153, "%{public}s called with null size, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v149);
            }

            else if (v150)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v113 = "%{public}s called with null size, no backtrace";
              goto LABEL_288;
            }

LABEL_283:
            if (!v109)
            {
LABEL_285:
              v19 = v159;
              v35 = v162;
              goto LABEL_59;
            }

LABEL_284:
            free(v109);
            goto LABEL_285;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_write_chunk_header";
          v136 = _os_log_send_and_compose_impl();
          v166 = OS_LOG_TYPE_ERROR;
          v165 = 0;
          if (__nwlog_fault(v136, &v166, &v165))
          {
            if (v166 == OS_LOG_TYPE_FAULT)
            {
              v137 = __nwlog_obj();
              v138 = v166;
              if (os_log_type_enabled(v137, v166))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v139 = "%{public}s called with null http1_connection";
LABEL_229:
                v143 = v137;
LABEL_230:
                _os_log_impl(&dword_181A37000, v143, v138, v139, buf, 0xCu);
              }
            }

            else if (v165 == 1)
            {
              v140 = __nw_create_backtrace_string();
              v141 = __nwlog_obj();
              v138 = v166;
              logb = v141;
              v142 = os_log_type_enabled(v141, v166);
              if (v140)
              {
                if (v142)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  *&buf[12] = 2082;
                  *&buf[14] = v140;
                  _os_log_impl(&dword_181A37000, logb, v138, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v140);
                goto LABEL_231;
              }

              if (v142)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v139 = "%{public}s called with null http1_connection, no backtrace";
                v143 = logb;
                goto LABEL_230;
              }
            }

            else
            {
              v137 = __nwlog_obj();
              v138 = v166;
              if (os_log_type_enabled(v137, v166))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v139 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                goto LABEL_229;
              }
            }
          }

LABEL_231:
          if (v136)
          {
            free(v136);
          }

          v35 = 0;
          v34 = 0;
LABEL_59:
          v40 = v34;
          if (v24 == v34)
          {
            v41 = 0;
            v42 = v19;
          }

          else
          {
            v42 = v19;
            memmove((v28 + v40), (v28 + v24), v19);
            v41 = v24 - v40;
          }

          if (*(*(a1[4] + 8) + 24))
          {
            if (v28)
            {
              v43 = v28 + v40 + v42;
              *v43 = 2573;
              if (v31)
              {
                *(v43 + 6) = 10;
                *(v43 + 2) = 218762544;
              }

LABEL_66:
              v44 = v41 + v25 - v35;
              if (!__CFADD__(v41, v25 - v35))
              {
                if (!v44)
                {
                  goto LABEL_110;
                }

                goto LABEL_109;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446978;
              *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
              v160 = v35;
              v45 = v25 - v35;
              *&buf[12] = 2082;
              *&buf[14] = "unused_bytes";
              *&buf[22] = 2048;
              v168 = v45;
              *v169 = 2048;
              *&v169[2] = v44;
              v46 = _os_log_send_and_compose_impl();
              v166 = OS_LOG_TYPE_ERROR;
              v165 = 0;
              if (__nwlog_fault(v46, &v166, &v165))
              {
                if (v166 == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v47 = gLogObj;
                  v48 = v166;
                  if (os_log_type_enabled(gLogObj, v166))
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "unused_bytes";
                    *&buf[22] = 2048;
                    v168 = v45;
                    *v169 = 2048;
                    *&v169[2] = v44;
                    v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_105:
                    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x2Au);
                  }
                }

                else if (v165 == 1)
                {
                  v56 = __nw_create_backtrace_string();
                  v47 = __nwlog_obj();
                  v48 = v166;
                  v57 = os_log_type_enabled(v47, v166);
                  if (v56)
                  {
                    if (v57)
                    {
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "unused_bytes";
                      *&buf[22] = 2048;
                      v168 = v45;
                      *v169 = 2048;
                      *&v169[2] = v44;
                      *&v169[10] = 2082;
                      v170 = v56;
                      _os_log_impl(&dword_181A37000, v47, v48, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v56);
                    goto LABEL_106;
                  }

                  if (v57)
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "unused_bytes";
                    *&buf[22] = 2048;
                    v168 = v45;
                    *v169 = 2048;
                    *&v169[2] = v44;
                    v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_105;
                  }
                }

                else
                {
                  v47 = __nwlog_obj();
                  v48 = v166;
                  if (os_log_type_enabled(v47, v166))
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "unused_bytes";
                    *&buf[22] = 2048;
                    v168 = v45;
                    *v169 = 2048;
                    *&v169[2] = v44;
                    v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_105;
                  }
                }
              }

LABEL_106:
              if (v46)
              {
                free(v46);
              }

              v35 = v160;
LABEL_109:
              v63 = v19 + v35;
              nw_frame_claim(a2, v30, v40 + v63, 0);
              nw_frame_collapse(a2);
              nw_frame_unclaim(a2, v64, v40 + v63, 0);
              goto LABEL_110;
            }

            v161 = v35;
            v101 = v19;
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            v102 = _os_log_send_and_compose_impl();
            v166 = OS_LOG_TYPE_ERROR;
            v165 = 0;
            if (__nwlog_fault(v102, &v166, &v165))
            {
              if (v166 == OS_LOG_TYPE_FAULT)
              {
                v103 = __nwlog_obj();
                v104 = v166;
                if (!os_log_type_enabled(v103, v166))
                {
                  goto LABEL_238;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                v105 = "%{public}s called with null buffer";
                goto LABEL_236;
              }

              if (v165 != 1)
              {
                v103 = __nwlog_obj();
                v104 = v166;
                if (!os_log_type_enabled(v103, v166))
                {
                  goto LABEL_238;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                v105 = "%{public}s called with null buffer, backtrace limit exceeded";
                goto LABEL_236;
              }

              v127 = __nw_create_backtrace_string();
              v128 = __nwlog_obj();
              v104 = v166;
              loga = v128;
              v129 = os_log_type_enabled(v128, v166);
              if (v127)
              {
                if (v129)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                  *&buf[12] = 2082;
                  *&buf[14] = v127;
                  _os_log_impl(&dword_181A37000, loga, v104, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v127);
                if (!v102)
                {
                  goto LABEL_240;
                }

                goto LABEL_239;
              }

              if (v129)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                v105 = "%{public}s called with null buffer, no backtrace";
                goto LABEL_264;
              }
            }
          }

          else
          {
            v161 = v35;
            v101 = v19;
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            v102 = _os_log_send_and_compose_impl();
            v166 = OS_LOG_TYPE_ERROR;
            v165 = 0;
            if (!__nwlog_fault(v102, &v166, &v165))
            {
              goto LABEL_238;
            }

            if (v166 == OS_LOG_TYPE_FAULT)
            {
              v103 = __nwlog_obj();
              v104 = v166;
              if (!os_log_type_enabled(v103, v166))
              {
                goto LABEL_238;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_trailer";
              v105 = "%{public}s called with null http1_connection";
LABEL_236:
              v144 = v103;
LABEL_237:
              _os_log_impl(&dword_181A37000, v144, v104, v105, buf, 0xCu);
              goto LABEL_238;
            }

            if (v165 != 1)
            {
              v103 = __nwlog_obj();
              v104 = v166;
              if (!os_log_type_enabled(v103, v166))
              {
                goto LABEL_238;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_trailer";
              v105 = "%{public}s called with null http1_connection, backtrace limit exceeded";
              goto LABEL_236;
            }

            v124 = __nw_create_backtrace_string();
            v125 = __nwlog_obj();
            v104 = v166;
            loga = v125;
            v126 = os_log_type_enabled(v125, v166);
            if (v124)
            {
              if (v126)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                *&buf[12] = 2082;
                *&buf[14] = v124;
                _os_log_impl(&dword_181A37000, loga, v104, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v124);
            }

            else if (v126)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_trailer";
              v105 = "%{public}s called with null http1_connection, no backtrace";
LABEL_264:
              v144 = loga;
              goto LABEL_237;
            }
          }

LABEL_238:
          if (!v102)
          {
LABEL_240:
            v19 = v101;
            v35 = v161;
            goto LABEL_66;
          }

LABEL_239:
          free(v102);
          goto LABEL_240;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v50 = *(*(a1[4] + 8) + 24);
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v50;
        v51 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v166 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v51, type, &v166))
        {
          goto LABEL_131;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v52 = __nwlog_obj();
          v53 = type[0];
          if (os_log_type_enabled(v52, type[0]))
          {
            v54 = *(*(a1[4] + 8) + 24);
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v54;
            v55 = "%{public}s stream not found for connection %p";
LABEL_130:
            _os_log_impl(&dword_181A37000, v52, v53, v55, buf, 0x16u);
          }
        }

        else if (v166 == OS_LOG_TYPE_INFO)
        {
          v58 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = type[0];
          v59 = os_log_type_enabled(v52, type[0]);
          if (v58)
          {
            if (v59)
            {
              v60 = *(*(a1[4] + 8) + 24);
              *buf = 136446722;
              *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
              *&buf[12] = 2048;
              *&buf[14] = v60;
              *&buf[22] = 2082;
              v168 = v58;
              _os_log_impl(&dword_181A37000, v52, v53, "%{public}s stream not found for connection %p, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v58);
            goto LABEL_131;
          }

          if (v59)
          {
            v86 = *(*(a1[4] + 8) + 24);
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v86;
            v55 = "%{public}s stream not found for connection %p, no backtrace";
            goto LABEL_130;
          }
        }

        else
        {
          v52 = __nwlog_obj();
          v53 = type[0];
          if (os_log_type_enabled(v52, type[0]))
          {
            v62 = *(*(a1[4] + 8) + 24);
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v62;
            v55 = "%{public}s stream not found for connection %p, backtrace limit exceeded";
            goto LABEL_130;
          }
        }

LABEL_131:
        if (!v51)
        {
          goto LABEL_98;
        }

        v61 = v51;
        goto LABEL_97;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v12 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v166 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, type, &v166))
      {
        goto LABEL_95;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no connection in its context";
        goto LABEL_94;
      }

      if (v166 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no connection in its context, backtrace limit exceeded";
        goto LABEL_94;
      }

      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      v27 = os_log_type_enabled(gLogObj, type[0]);
      if (v26)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2082;
          v168 = v26;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s frame %p has no connection in its context, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v26);
        if (!v12)
        {
          goto LABEL_98;
        }

LABEL_96:
        v61 = v12;
LABEL_97:
        free(v61);
        goto LABEL_98;
      }

      if (v27)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no connection in its context, no backtrace";
LABEL_94:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0x16u);
        goto LABEL_95;
      }

      goto LABEL_95;
    }

    finalizer_context = v87;
LABEL_5:
    free(finalizer_context);
    goto LABEL_6;
  }

  v8 = (a1[7] + 8);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v9)
  {
    v8 = (v9 + 40);
  }

  *v8 = v10;
  *v10 = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = 1;
  nw_frame_finalize(a2);
  return v11;
}

uint64_t ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_146(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v3)
  {
    v5 = (a2 + 120);
    do
    {
      v6 = *v3;
      v7 = v3[6];
      v8 = *v3;
      if (v7)
      {
        os_release(v7);
        v3[6] = 0;
        v8 = *v3;
      }

      v9 = v3[1];
      v10 = v8 + 1;
      if (!v8)
      {
        v10 = (a2 + 72);
      }

      *v10 = v9;
      *v9 = v8;
      if (v3 != v5)
      {
        free(v3);
      }

      v3 = v6;
    }

    while (v6);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = v4;
  v11 = *(a2 + 168);
  if (v11)
  {
    os_release(v11);
  }

  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  return 1;
}

void ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_143(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v2 = nw_frame_unclaimed_bytes(*(a1 + 32), &v5);
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v3 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40) + 74;
    *buf = 136446978;
    v7 = v4;
    v8 = 2080;
    v9 = " ";
    v10 = 1040;
    v11 = v5;
    v12 = 2096;
    v13 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s%sH1 Outbound Body Data:\n%{network:data}.*P", buf, 0x26u);
  }
}

BOOL nw_protocol_http1_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, size_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v204 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v119, &v191, &v190))
    {
      goto LABEL_311;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v120 = __nwlog_obj();
      v121 = v191;
      if (!os_log_type_enabled(v120, v191))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null protocol";
    }

    else if (v190 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = v191;
      v124 = os_log_type_enabled(v120, v191);
      if (backtrace_string)
      {
        if (v124)
        {
          *buf = 136446466;
          v193 = "nw_http1_get_http1_protocol";
          v194 = 2082;
          *v195 = backtrace_string;
          _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_311:
        if (!v119)
        {
          goto LABEL_313;
        }

LABEL_312:
        free(v119);
        goto LABEL_313;
      }

      if (!v124)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v120 = __nwlog_obj();
      v121 = v191;
      if (!os_log_type_enabled(v120, v191))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_310;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v119, &v191, &v190))
    {
      goto LABEL_311;
    }

    if (v191 != OS_LOG_TYPE_FAULT)
    {
      if (v190 != 1)
      {
        v120 = __nwlog_obj();
        v121 = v191;
        if (!os_log_type_enabled(v120, v191))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v193 = "nw_http1_get_http1_protocol";
        v122 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_310;
      }

      v125 = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = v191;
      v126 = os_log_type_enabled(v120, v191);
      if (!v125)
      {
        if (!v126)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v193 = "nw_http1_get_http1_protocol";
        v122 = "%{public}s called with null handle, no backtrace";
        goto LABEL_310;
      }

      if (!v126)
      {
        goto LABEL_229;
      }

      *buf = 136446466;
      v193 = "nw_http1_get_http1_protocol";
      v194 = 2082;
      *v195 = v125;
      v127 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_228;
    }

    v120 = __nwlog_obj();
    v121 = v191;
    if (!os_log_type_enabled(v120, v191))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v193 = "nw_http1_get_http1_protocol";
    v122 = "%{public}s called with null handle";
LABEL_310:
    _os_log_impl(&dword_181A37000, v120, v121, v122, buf, 0xCu);
    goto LABEL_311;
  }

  v9 = *(handle + 6);
  v10 = a1->handle;
  if (v9 == 1)
  {
    goto LABEL_10;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
LABEL_313:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v193 = "nw_protocol_http1_get_output_frames";
      v66 = _os_log_send_and_compose_impl();
      v191 = OS_LOG_TYPE_ERROR;
      v190 = 0;
      if (!__nwlog_fault(v66, &v191, &v190))
      {
        goto LABEL_344;
      }

      if (v191 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        v68 = v191;
        if (os_log_type_enabled(gLogObj, v191))
        {
          *buf = 136446210;
          v193 = "nw_protocol_http1_get_output_frames";
          v69 = "%{public}s called with null http1";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      if (v190 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        v68 = v191;
        if (os_log_type_enabled(gLogObj, v191))
        {
          *buf = 136446210;
          v193 = "nw_protocol_http1_get_output_frames";
          v69 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      v156 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v157 = gLogObj;
      v158 = v191;
      v159 = os_log_type_enabled(gLogObj, v191);
      if (v156)
      {
        if (v159)
        {
          *buf = 136446466;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = v156;
          v160 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_338:
          _os_log_impl(&dword_181A37000, v157, v158, v160, buf, 0x16u);
        }

LABEL_339:
        free(v156);
        goto LABEL_344;
      }

      if (!v159)
      {
        goto LABEL_344;
      }

      *buf = 136446210;
      v193 = "nw_protocol_http1_get_output_frames";
      v69 = "%{public}s called with null http1, no backtrace";
LABEL_351:
      v162 = v157;
      v163 = v158;
      goto LABEL_343;
    }

    v11 = *(handle + 2);
    if (v11)
    {
      v10 = (v11 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v119, &v191, &v190))
    {
      goto LABEL_311;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v120 = __nwlog_obj();
      v121 = v191;
      if (!os_log_type_enabled(v120, v191))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_connection";
      goto LABEL_310;
    }

    if (v190 != 1)
    {
      v120 = __nwlog_obj();
      v121 = v191;
      if (!os_log_type_enabled(v120, v191))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_310;
    }

    v125 = __nw_create_backtrace_string();
    v120 = __nwlog_obj();
    v121 = v191;
    v142 = os_log_type_enabled(v120, v191);
    if (!v125)
    {
      if (!v142)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_310;
    }

    if (v142)
    {
      *buf = 136446466;
      v193 = "nw_http1_get_http1_protocol";
      v194 = 2082;
      *v195 = v125;
      v127 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_228;
    }

LABEL_229:
    free(v125);
    if (!v119)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

  v12 = *(handle + 1);
  if (!v12)
  {
    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_http1_get_http1_protocol";
    v119 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v119, &v191, &v190))
    {
      goto LABEL_311;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v120 = __nwlog_obj();
      v121 = v191;
      if (!os_log_type_enabled(v120, v191))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_stream";
      goto LABEL_310;
    }

    if (v190 != 1)
    {
      v120 = __nwlog_obj();
      v121 = v191;
      if (!os_log_type_enabled(v120, v191))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_310;
    }

    v125 = __nw_create_backtrace_string();
    v120 = __nwlog_obj();
    v121 = v191;
    v141 = os_log_type_enabled(v120, v191);
    if (!v125)
    {
      if (!v141)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v193 = "nw_http1_get_http1_protocol";
      v122 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_310;
    }

    if (!v141)
    {
      goto LABEL_229;
    }

    *buf = 136446466;
    v193 = "nw_http1_get_http1_protocol";
    v194 = 2082;
    *v195 = v125;
    v127 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_228:
    _os_log_impl(&dword_181A37000, v120, v121, v127, buf, 0x16u);
    goto LABEL_229;
  }

  v10 = (v12 + 248);
LABEL_10:
  v13 = *v10;
  if (!*v10)
  {
    goto LABEL_313;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_protocol_http1_get_output_frames";
    v66 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v66, &v191, &v190))
    {
      goto LABEL_344;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = v191;
      if (os_log_type_enabled(v67, v191))
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s called with null input_protocol";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v190 != 1)
    {
      v67 = __nwlog_obj();
      v68 = v191;
      if (os_log_type_enabled(v67, v191))
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    v74 = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = v191;
    v135 = os_log_type_enabled(v67, v191);
    if (!v74)
    {
      if (v135)
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v135)
    {
      *buf = 136446466;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v74;
      v76 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_104;
    }

LABEL_105:
    free(v74);
    goto LABEL_344;
  }

  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_protocol_http1_get_output_frames";
    v66 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v66, &v191, &v190))
    {
      goto LABEL_344;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = v191;
      if (os_log_type_enabled(v67, v191))
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s called with null return_array";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v190 != 1)
    {
      v67 = __nwlog_obj();
      v68 = v191;
      if (os_log_type_enabled(v67, v191))
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s called with null return_array, backtrace limit exceeded";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    v74 = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = v191;
    v136 = os_log_type_enabled(v67, v191);
    if (!v74)
    {
      if (v136)
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s called with null return_array, no backtrace";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v136)
    {
      *buf = 136446466;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v74;
      v76 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
LABEL_330:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v193 = "nw_protocol_http1_get_output_frames";
      v66 = _os_log_send_and_compose_impl();
      v191 = OS_LOG_TYPE_ERROR;
      v190 = 0;
      if (!__nwlog_fault(v66, &v191, &v190))
      {
        goto LABEL_344;
      }

      if (v191 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        v68 = v191;
        if (os_log_type_enabled(gLogObj, v191))
        {
          *buf = 136446210;
          v193 = "nw_protocol_http1_get_output_frames";
          v69 = "%{public}s called with null http1_stream";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      if (v190 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v67 = gLogObj;
        v68 = v191;
        if (os_log_type_enabled(gLogObj, v191))
        {
          *buf = 136446210;
          v193 = "nw_protocol_http1_get_output_frames";
          v69 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      v156 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v157 = gLogObj;
      v158 = v191;
      v161 = os_log_type_enabled(gLogObj, v191);
      if (v156)
      {
        if (v161)
        {
          *buf = 136446466;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = v156;
          v160 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
          goto LABEL_338;
        }

        goto LABEL_339;
      }

      if (!v161)
      {
        goto LABEL_344;
      }

      *buf = 136446210;
      v193 = "nw_protocol_http1_get_output_frames";
      v69 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_351;
    }

    v14 = *(handle + 2);
    if (v14)
    {
      v15 = (v14 + 488);
      goto LABEL_18;
    }

    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_http1_get_stream_for_protocol";
    v137 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (__nwlog_fault(v137, &v191, &v190))
    {
      if (v191 == OS_LOG_TYPE_FAULT)
      {
        v138 = __nwlog_obj();
        v139 = v191;
        if (!os_log_type_enabled(v138, v191))
        {
          goto LABEL_328;
        }

        *buf = 136446210;
        v193 = "nw_http1_get_stream_for_protocol";
        v140 = "%{public}s called with null handle->http1_connection";
        goto LABEL_327;
      }

      if (v190 != 1)
      {
        v138 = __nwlog_obj();
        v139 = v191;
        if (!os_log_type_enabled(v138, v191))
        {
          goto LABEL_328;
        }

        *buf = 136446210;
        v193 = "nw_http1_get_stream_for_protocol";
        v140 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_327;
      }

      v143 = __nw_create_backtrace_string();
      v138 = __nwlog_obj();
      v139 = v191;
      v144 = os_log_type_enabled(v138, v191);
      if (v143)
      {
        if (v144)
        {
          *buf = 136446466;
          v193 = "nw_http1_get_stream_for_protocol";
          v194 = 2082;
          *v195 = v143;
          _os_log_impl(&dword_181A37000, v138, v139, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v143);
        goto LABEL_328;
      }

      if (v144)
      {
        *buf = 136446210;
        v193 = "nw_http1_get_stream_for_protocol";
        v140 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_327:
        _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0xCu);
      }
    }

LABEL_328:
    if (v137)
    {
      free(v137);
    }

    goto LABEL_330;
  }

  v15 = (handle + 8);
LABEL_18:
  v16 = *v15;
  if (!*v15)
  {
    goto LABEL_330;
  }

  if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v128 = a6;
    v129 = a2;
    v130 = __nwlog_obj();
    v131 = os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG);
    a2 = v129;
    a6 = v128;
    if (v131)
    {
      v132 = *(v16 + 256);
      v133 = *(*(v16 + 248) + 372);
      if (v132)
      {
        v134 = *(v132 + 860);
      }

      else
      {
        v134 = 0;
      }

      v145 = *(v16 + 424);
      *buf = 136448258;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v16 + 74;
      *&v195[8] = 2080;
      *&v195[10] = " ";
      v196 = 1024;
      *v197 = v133;
      *&v197[4] = 1024;
      *&v197[6] = v134;
      LOWORD(v198) = 1024;
      *(&v198 + 2) = v145;
      HIWORD(v198) = 1024;
      v199 = a3;
      v200 = 1024;
      v201 = a4;
      v202 = 1024;
      v203 = a5;
      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called with min bytes %u, max bytes %u, max frames %u", buf, 0x44u);
      a6 = v128;
      a2 = v129;
    }
  }

  v18 = *(v16 + 256);
  if (!v18)
  {
    if ((*(v16 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v25 = *(v16 + 256);
      v26 = *(*(v16 + 248) + 372);
      if (v25)
      {
        LODWORD(v25) = *(v25 + 860);
      }

      v27 = *(v16 + 424);
      *buf = 136447490;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v16 + 74;
      *&v195[8] = 2080;
      *&v195[10] = " ";
      v196 = 1024;
      *v197 = v26;
      *&v197[4] = 1024;
      *&v197[6] = v25;
      LOWORD(v198) = 1024;
      *(&v198 + 2) = v27;
      v24 = "%{public}s %{public}s%s<i%u:c%u:s%u> no connection, returning 0 frames";
      goto LABEL_33;
    }

    return 0;
  }

  if (v18[81])
  {
    if ((*(v16 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v21 = *(v16 + 256);
      v22 = *(*(v16 + 248) + 372);
      if (v21)
      {
        LODWORD(v21) = *(v21 + 860);
      }

      v23 = *(v16 + 424);
      *buf = 136447490;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v16 + 74;
      *&v195[8] = 2080;
      *&v195[10] = " ";
      v196 = 1024;
      *v197 = v22;
      *&v197[4] = 1024;
      *&v197[6] = v21;
      LOWORD(v198) = 1024;
      *(&v198 + 2) = v23;
      v24 = "%{public}s %{public}s%s<i%u:c%u:s%u> still sending the initial frame, returning 0 frames";
LABEL_33:
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, v24, buf, 0x32u);
      return 0;
    }

    return 0;
  }

  if ((*(v16 + 428) & 4) == 0)
  {
    if ((*(v16 + 428) & 0x100) != 0)
    {
      if ((*(v16 + 158) & 1) != 0 || gLogDatapath != 1)
      {
        return 0;
      }

      v19 = __nwlog_obj();
      result = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v50 = *(v16 + 256);
      v51 = *(*(v16 + 248) + 372);
      if (v50)
      {
        LODWORD(v50) = *(v50 + 860);
      }

      v52 = *(v16 + 424);
      *buf = 136447490;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v16 + 74;
      *&v195[8] = 2080;
      *&v195[10] = " ";
      v196 = 1024;
      *v197 = v51;
      *&v197[4] = 1024;
      *&v197[6] = v50;
      LOWORD(v198) = 1024;
      *(&v198 + 2) = v52;
      v24 = "%{public}s %{public}s%s<i%u:c%u:s%u> already vended initial outbound frame, cannot send more";
      goto LABEL_33;
    }

    if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v148 = a6;
      v149 = __nwlog_obj();
      v150 = os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG);
      a6 = v148;
      if (v150)
      {
        v151 = *(v16 + 256);
        v152 = *(*(v16 + 248) + 372);
        if (v151)
        {
          LODWORD(v151) = *(v151 + 860);
        }

        v153 = *(v16 + 424);
        *buf = 136447490;
        v193 = "nw_protocol_http1_get_output_frames";
        v194 = 2082;
        *v195 = v16 + 74;
        *&v195[8] = 2080;
        *&v195[10] = " ";
        v196 = 1024;
        *v197 = v152;
        *&v197[4] = 1024;
        *&v197[6] = v151;
        LOWORD(v198) = 1024;
        *(&v198 + 2) = v153;
        _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound headers not yet complete, creating frame", buf, 0x32u);
        a6 = v148;
      }
    }

    a6->tqh_first = 0;
    a6->tqh_last = &a6->tqh_first;
    if (a4 >= 0x20000)
    {
      v28 = 0x20000;
    }

    else
    {
      v28 = a4;
    }

    v185 = a6;
    if (a4 <= 0x20000)
    {
      if (!a4)
      {
        v54 = 0;
        v53 = 0;
        goto LABEL_78;
      }
    }

    else if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v29 = __nwlog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(v13 + 372);
        *buf = 136447490;
        v193 = "nw_protocol_http1_get_output_frames";
        v194 = 2082;
        *v195 = v13 + 74;
        *&v195[8] = 2080;
        *&v195[10] = " ";
        v196 = 1024;
        *v197 = v30;
        *&v197[4] = 1024;
        *&v197[6] = v28;
        LOWORD(v198) = 1024;
        *(&v198 + 2) = a4;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> capping output frame size to %u, original request was %u", buf, 0x32u);
      }
    }

    a4 = (v28 + 17);
    if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1 && (v154 = __nwlog_obj(), os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG)))
    {
      v155 = *(v13 + 372);
      *buf = 136447746;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v13 + 74;
      *&v195[8] = 2080;
      *&v195[10] = " ";
      v196 = 1024;
      *v197 = v155;
      *&v197[4] = 1024;
      *&v197[6] = v28 + 17;
      v198 = 0x4000000000A0400;
      v54 = 10;
      v53 = 7;
      v199 = 7;
      _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> adjusted output frame size is %u (start: %u, end: %u)", buf, 0x38u);
    }

    else
    {
      v53 = 7;
      v54 = 10;
    }

LABEL_78:
    frame = nw_frame_cache_create_frame(v18 + 87, a4);
    if (frame)
    {
      v57 = frame;
      if ((*(frame + 204) & 4) != 0)
      {
        v70 = *(frame + 216);
        *(frame + 208) = v18;
        *(frame + 216) = v70 & 0xFC;
LABEL_127:
        if (a4)
        {
          nw_frame_claim(v57, v56, v54, v53);
          if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v173 = __nwlog_obj();
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
            {
              v174 = *(v13 + 372);
              *buf = 136447746;
              v193 = "nw_protocol_http1_get_output_frames";
              v194 = 2082;
              *v195 = v13 + 74;
              *&v195[8] = 2080;
              *&v195[10] = " ";
              v196 = 1024;
              *v197 = v174;
              *&v197[4] = 1024;
              *&v197[6] = v54;
              LOWORD(v198) = 1024;
              *(&v198 + 2) = v53;
              HIWORD(v198) = 1024;
              v199 = a4;
              _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> claiming chunked encoding size (start: %u, end: %u) from frame of %u bytes", buf, 0x38u);
            }
          }
        }

        v57[2] = 0;
        v84 = v18[86];
        v57[3] = v84;
        *v84 = v57;
        v18[86] = v57 + 2;
        v57[10] = nw_http1_connection_output_frame_finalizer;
        v57[11] = v13;
        if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v164 = __nwlog_obj();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
          {
            v165 = *(v16 + 256);
            v166 = *(*(v16 + 248) + 372);
            if (v165)
            {
              LODWORD(v165) = *(v165 + 860);
            }

            v167 = *(v16 + 424);
            *buf = 136447746;
            v193 = "nw_protocol_http1_get_output_frames";
            v194 = 2082;
            *v195 = v16 + 74;
            *&v195[8] = 2080;
            *&v195[10] = " ";
            v196 = 1024;
            *v197 = v166;
            *&v197[4] = 1024;
            *&v197[6] = v165;
            LOWORD(v198) = 1024;
            *(&v198 + 2) = v167;
            HIWORD(v198) = 1024;
            v199 = a4;
            _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> returning 1 frame of %u bytes", buf, 0x38u);
          }
        }

        v57[4] = 0;
        tqh_last = v185->tqh_last;
        v57[5] = tqh_last;
        *tqh_last = v57;
        v185->tqh_last = (v57 + 4);
        *(v16 + 428) |= 0x100u;
        return 1;
      }

      typea = v54;
      v183 = v53;
      __nwlog_obj();
      *buf = 136446466;
      v193 = "nw_http1_frame_metadata_reset";
      v194 = 2048;
      *v195 = v57;
      v58 = _os_log_send_and_compose_impl();
      v191 = OS_LOG_TYPE_ERROR;
      v190 = 0;
      if (__nwlog_fault(v58, &v191, &v190))
      {
        if (v191 == OS_LOG_TYPE_FAULT)
        {
          v59 = __nwlog_obj();
          v60 = v191;
          if (os_log_type_enabled(v59, v191))
          {
            *buf = 136446466;
            v193 = "nw_http1_frame_metadata_reset";
            v194 = 2048;
            *v195 = v57;
            v61 = "%{public}s frame %p has no metadata";
LABEL_122:
            v83 = v59;
LABEL_123:
            _os_log_impl(&dword_181A37000, v83, v60, v61, buf, 0x16u);
          }
        }

        else if (v190 == 1)
        {
          v77 = __nw_create_backtrace_string();
          v78 = __nwlog_obj();
          v60 = v191;
          log = v78;
          v79 = os_log_type_enabled(v78, v191);
          if (v77)
          {
            if (v79)
            {
              *buf = 136446722;
              v193 = "nw_http1_frame_metadata_reset";
              v194 = 2048;
              *v195 = v57;
              *&v195[8] = 2082;
              *&v195[10] = v77;
              _os_log_impl(&dword_181A37000, log, v60, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v77);
            goto LABEL_124;
          }

          if (v79)
          {
            *buf = 136446466;
            v193 = "nw_http1_frame_metadata_reset";
            v194 = 2048;
            *v195 = v57;
            v61 = "%{public}s frame %p has no metadata, no backtrace";
            v83 = log;
            goto LABEL_123;
          }
        }

        else
        {
          v59 = __nwlog_obj();
          v60 = v191;
          if (os_log_type_enabled(v59, v191))
          {
            *buf = 136446466;
            v193 = "nw_http1_frame_metadata_reset";
            v194 = 2048;
            *v195 = v57;
            v61 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
            goto LABEL_122;
          }
        }
      }

LABEL_124:
      v53 = v183;
      if (v58)
      {
        free(v58);
      }

      v54 = typea;
      goto LABEL_127;
    }

    __nwlog_obj();
    *buf = 136446466;
    v193 = "nw_protocol_http1_get_output_frames";
    v194 = 1024;
    *v195 = a4;
    v62 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v62, &v191, &v190))
    {
      goto LABEL_191;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = v191;
      if (os_log_type_enabled(v63, v191))
      {
        *buf = 136446466;
        v193 = "nw_protocol_http1_get_output_frames";
        v194 = 1024;
        *v195 = a4;
        v65 = "%{public}s failed to create/reuse output frame of length %u";
LABEL_190:
        _os_log_impl(&dword_181A37000, v63, v64, v65, buf, 0x12u);
      }
    }

    else if (v190 == 1)
    {
      v72 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v64 = v191;
      v73 = os_log_type_enabled(v63, v191);
      if (v72)
      {
        if (v73)
        {
          *buf = 136446722;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 1024;
          *v195 = a4;
          *&v195[4] = 2082;
          *&v195[6] = v72;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s failed to create/reuse output frame of length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v72);
        goto LABEL_191;
      }

      if (v73)
      {
        *buf = 136446466;
        v193 = "nw_protocol_http1_get_output_frames";
        v194 = 1024;
        *v195 = a4;
        v65 = "%{public}s failed to create/reuse output frame of length %u, no backtrace";
        goto LABEL_190;
      }
    }

    else
    {
      v63 = __nwlog_obj();
      v64 = v191;
      if (os_log_type_enabled(v63, v191))
      {
        *buf = 136446466;
        v193 = "nw_protocol_http1_get_output_frames";
        v194 = 1024;
        *v195 = a4;
        v65 = "%{public}s failed to create/reuse output frame of length %u, backtrace limit exceeded";
        goto LABEL_190;
      }
    }

LABEL_191:
    if (!v62)
    {
      return 0;
    }

    v118 = v62;
LABEL_346:
    free(v118);
    return 0;
  }

  if (a4 | a3 || (*(v16 + 428) & 0x200) == 0)
  {
    v38 = v18[4];
    if (!v38 || (v39 = *(v38 + 24)) == 0 || !*(v39 + 88))
    {
      __nwlog_obj();
      *buf = 136446210;
      v193 = "nw_protocol_http1_get_output_frames";
      v66 = _os_log_send_and_compose_impl();
      v191 = OS_LOG_TYPE_ERROR;
      v190 = 0;
      if (__nwlog_fault(v66, &v191, &v190))
      {
        if (v191 == OS_LOG_TYPE_FAULT)
        {
          v67 = __nwlog_obj();
          v68 = v191;
          if (os_log_type_enabled(v67, v191))
          {
            *buf = 136446210;
            v193 = "nw_protocol_http1_get_output_frames";
            v69 = "%{public}s cannot get output frames, output handler missing callback";
            goto LABEL_342;
          }
        }

        else
        {
          if (v190 != 1)
          {
            v67 = __nwlog_obj();
            v68 = v191;
            if (!os_log_type_enabled(v67, v191))
            {
              goto LABEL_344;
            }

            *buf = 136446210;
            v193 = "nw_protocol_http1_get_output_frames";
            v69 = "%{public}s cannot get output frames, output handler missing callback, backtrace limit exceeded";
            goto LABEL_342;
          }

          v146 = __nw_create_backtrace_string();
          v67 = __nwlog_obj();
          v68 = v191;
          v147 = os_log_type_enabled(v67, v191);
          if (v146)
          {
            if (v147)
            {
              *buf = 136446466;
              v193 = "nw_protocol_http1_get_output_frames";
              v194 = 2082;
              *v195 = v146;
              _os_log_impl(&dword_181A37000, v67, v68, "%{public}s cannot get output frames, output handler missing callback, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v146);
            goto LABEL_344;
          }

          if (v147)
          {
            *buf = 136446210;
            v193 = "nw_protocol_http1_get_output_frames";
            v69 = "%{public}s cannot get output frames, output handler missing callback, no backtrace";
            goto LABEL_342;
          }
        }
      }

      goto LABEL_344;
    }

    v40 = a5;
    if ((*(v16 + 428) & 0x200) == 0)
    {
LABEL_175:
      v108 = a6;
      output_frames = nw_protocol_get_output_frames(v18[4], a2, a3, a4, v40, a6);
      if ((*(v16 + 428) & 0x200) != 0)
      {
        v110 = v189;
        v189[0] = MEMORY[0x1E69E9820];
        v189[1] = 0x40000000;
        v189[2] = ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v189[3] = &__block_descriptor_tmp_125_43472;
        v189[4] = v16;
        v189[5] = v18;
        v189[6] = v108;
        v189[7] = v13;
      }

      else
      {
        v110 = v188;
        v188[0] = MEMORY[0x1E69E9820];
        v188[1] = 0x40000000;
        v188[2] = ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_126;
        v188[3] = &__block_descriptor_tmp_127;
        v188[4] = v16;
        v188[5] = v18;
      }

      tqh_first = v108->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v112 = *(tqh_first + 4);
        v113 = (v110[2])(v110);
        tqh_first = v112;
      }

      while ((v113 & 1) != 0);
      if ((*(v16 + 158) & 1) == 0)
      {
        result = output_frames;
        if (gLogDatapath != 1)
        {
          return result;
        }

        v114 = __nwlog_obj();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
        {
          v115 = *(v16 + 256);
          v116 = *(*(v16 + 248) + 372);
          if (v115)
          {
            LODWORD(v115) = *(v115 + 860);
          }

          v117 = *(v16 + 424);
          *buf = 136447746;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = v16 + 74;
          *&v195[8] = 2080;
          *&v195[10] = " ";
          v196 = 1024;
          *v197 = v116;
          *&v197[4] = 1024;
          *&v197[6] = v115;
          LOWORD(v198) = 1024;
          *(&v198 + 2) = v117;
          HIWORD(v198) = 1024;
          v199 = output_frames;
          _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound headers complete, returning %u frames from below", buf, 0x38u);
        }
      }

      return output_frames;
    }

    if (!a3)
    {
      goto LABEL_154;
    }

    v41 = 0;
    if (a4)
    {
      v42 = a4;
      do
      {
        ++v41;
        v43 = v42 > 0xF;
        v42 >>= 4;
      }

      while (v43);
    }

    v44 = __CFADD__(a3, v41 + 9);
    a3 = (a3 + v41 + 9);
    if (!v44)
    {
LABEL_154:
      if (!a4)
      {
        goto LABEL_175;
      }

      v96 = -1;
      v97 = a4;
      do
      {
        ++v96;
        v43 = v97 > 0xF;
        v97 >>= 4;
      }

      while (v43);
      v98 = (v96 + 10);
      v44 = __CFADD__(a4, v98);
      a4 = (a4 + v98);
      if (!v44)
      {
        goto LABEL_175;
      }

      v184 = a2;
      v187 = a6;
      __nwlog_obj();
      *buf = 136446978;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = "maximum_bytes";
      *&v195[8] = 2048;
      *&v195[10] = v98;
      v196 = 2048;
      *v197 = a4;
      v99 = _os_log_send_and_compose_impl();
      v191 = OS_LOG_TYPE_ERROR;
      v190 = 0;
      typec = v99;
      if (!__nwlog_fault(v99, &v191, &v190))
      {
        goto LABEL_172;
      }

      if (v191 == OS_LOG_TYPE_FAULT)
      {
        v100 = __nwlog_obj();
        v101 = v191;
        if (os_log_type_enabled(v100, v191))
        {
          *buf = 136446978;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = "maximum_bytes";
          *&v195[8] = 2048;
          *&v195[10] = v98;
          v196 = 2048;
          *v197 = a4;
          v102 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_170:
          v106 = v100;
          v107 = v101;
LABEL_171:
          _os_log_impl(&dword_181A37000, v106, v107, v102, buf, 0x2Au);
        }
      }

      else if (v190 == 1)
      {
        v103 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        logb = v191;
        v105 = os_log_type_enabled(v104, v191);
        if (v103)
        {
          if (v105)
          {
            *buf = 136447234;
            v193 = "nw_protocol_http1_get_output_frames";
            v194 = 2082;
            *v195 = "maximum_bytes";
            *&v195[8] = 2048;
            *&v195[10] = v98;
            v196 = 2048;
            *v197 = a4;
            *&v197[8] = 2082;
            v198 = v103;
            _os_log_impl(&dword_181A37000, v104, logb, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v103);
          goto LABEL_172;
        }

        if (v105)
        {
          *buf = 136446978;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = "maximum_bytes";
          *&v195[8] = 2048;
          *&v195[10] = v98;
          v196 = 2048;
          *v197 = a4;
          v102 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          v106 = v104;
          v107 = logb;
          goto LABEL_171;
        }
      }

      else
      {
        v100 = __nwlog_obj();
        v101 = v191;
        if (os_log_type_enabled(v100, v191))
        {
          *buf = 136446978;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = "maximum_bytes";
          *&v195[8] = 2048;
          *&v195[10] = v98;
          v196 = 2048;
          *v197 = a4;
          v102 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_170;
        }
      }

LABEL_172:
      if (typec)
      {
        free(typec);
      }

      a4 = 0xFFFFFFFFLL;
      a6 = v187;
      v40 = a5;
      a2 = v184;
      goto LABEL_175;
    }

    v182 = a2;
    v186 = a6;
    v45 = (v41 + 2);
    __nwlog_obj();
    *buf = 136446978;
    v193 = "nw_protocol_http1_get_output_frames";
    v194 = 2082;
    *v195 = "minimum_bytes";
    *&v195[8] = 2048;
    *type = v45 + 7;
    *&v195[10] = v45 + 7;
    v196 = 2048;
    *v197 = a3;
    v46 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (__nwlog_fault(v46, &v191, &v190))
    {
      if (v191 == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = v191;
        if (os_log_type_enabled(v47, v191))
        {
          *buf = 136446978;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = "minimum_bytes";
          *&v195[8] = 2048;
          *&v195[10] = *type;
          v196 = 2048;
          *v197 = a3;
          v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_149:
          v94 = v47;
          v95 = v48;
LABEL_150:
          _os_log_impl(&dword_181A37000, v94, v95, v49, buf, 0x2Au);
        }
      }

      else if (v190 == 1)
      {
        v91 = __nw_create_backtrace_string();
        v92 = __nwlog_obj();
        loga = v191;
        v93 = os_log_type_enabled(v92, v191);
        if (v91)
        {
          if (v93)
          {
            *buf = 136447234;
            v193 = "nw_protocol_http1_get_output_frames";
            v194 = 2082;
            *v195 = "minimum_bytes";
            *&v195[8] = 2048;
            *&v195[10] = *type;
            v196 = 2048;
            *v197 = a3;
            *&v197[8] = 2082;
            v198 = v91;
            _os_log_impl(&dword_181A37000, v92, loga, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v91);
          goto LABEL_151;
        }

        if (v93)
        {
          *buf = 136446978;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = "minimum_bytes";
          *&v195[8] = 2048;
          *&v195[10] = *type;
          v196 = 2048;
          *v197 = a3;
          v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          v94 = v92;
          v95 = loga;
          goto LABEL_150;
        }
      }

      else
      {
        v47 = __nwlog_obj();
        v48 = v191;
        if (os_log_type_enabled(v47, v191))
        {
          *buf = 136446978;
          v193 = "nw_protocol_http1_get_output_frames";
          v194 = 2082;
          *v195 = "minimum_bytes";
          *&v195[8] = 2048;
          *&v195[10] = *type;
          v196 = 2048;
          *v197 = a3;
          v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_149;
        }
      }
    }

LABEL_151:
    if (v46)
    {
      free(v46);
    }

    a3 = 0xFFFFFFFFLL;
    a6 = v186;
    v40 = a5;
    a2 = v182;
    goto LABEL_154;
  }

  v31 = a6;
  v32 = nw_frame_cache_create_frame(v18 + 87, 0);
  if (!v32)
  {
    __nwlog_obj();
    *buf = 136446210;
    v193 = "nw_protocol_http1_get_output_frames";
    v66 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v66, &v191, &v190))
    {
      goto LABEL_344;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = v191;
      if (os_log_type_enabled(v67, v191))
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s failed to create/reuse potential final output frame of length 0";
LABEL_342:
        v162 = v67;
        v163 = v68;
LABEL_343:
        _os_log_impl(&dword_181A37000, v162, v163, v69, buf, 0xCu);
        goto LABEL_344;
      }

      goto LABEL_344;
    }

    if (v190 != 1)
    {
      v67 = __nwlog_obj();
      v68 = v191;
      if (os_log_type_enabled(v67, v191))
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s failed to create/reuse potential final output frame of length 0, backtrace limit exceeded";
        goto LABEL_342;
      }

LABEL_344:
      if (!v66)
      {
        return 0;
      }

      v118 = v66;
      goto LABEL_346;
    }

    v74 = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = v191;
    v75 = os_log_type_enabled(v67, v191);
    if (!v74)
    {
      if (v75)
      {
        *buf = 136446210;
        v193 = "nw_protocol_http1_get_output_frames";
        v69 = "%{public}s failed to create/reuse potential final output frame of length 0, no backtrace";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v75)
    {
      *buf = 136446466;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v74;
      v76 = "%{public}s failed to create/reuse potential final output frame of length 0, dumping backtrace:%{public}s";
LABEL_104:
      _os_log_impl(&dword_181A37000, v67, v68, v76, buf, 0x16u);
      goto LABEL_105;
    }

    goto LABEL_105;
  }

  v33 = v32;
  if ((*(v32 + 204) & 4) == 0)
  {
    __nwlog_obj();
    *buf = 136446466;
    v193 = "nw_http1_frame_metadata_reset";
    v194 = 2048;
    *v195 = v33;
    v34 = _os_log_send_and_compose_impl();
    v191 = OS_LOG_TYPE_ERROR;
    v190 = 0;
    if (!__nwlog_fault(v34, &v191, &v190))
    {
      goto LABEL_137;
    }

    if (v191 == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = v191;
      if (!os_log_type_enabled(v35, v191))
      {
        goto LABEL_137;
      }

      *buf = 136446466;
      v193 = "nw_http1_frame_metadata_reset";
      v194 = 2048;
      *v195 = v33;
      v37 = "%{public}s frame %p has no metadata";
    }

    else
    {
      if (v190 == 1)
      {
        v80 = __nw_create_backtrace_string();
        v81 = __nwlog_obj();
        typeb = v191;
        v82 = os_log_type_enabled(v81, v191);
        if (v80)
        {
          if (v82)
          {
            *buf = 136446722;
            v193 = "nw_http1_frame_metadata_reset";
            v194 = 2048;
            *v195 = v33;
            *&v195[8] = 2082;
            *&v195[10] = v80;
            _os_log_impl(&dword_181A37000, v81, typeb, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v80);
          goto LABEL_137;
        }

        if (!v82)
        {
LABEL_137:
          if (v34)
          {
            free(v34);
          }

          goto LABEL_139;
        }

        *buf = 136446466;
        v193 = "nw_http1_frame_metadata_reset";
        v194 = 2048;
        *v195 = v33;
        v37 = "%{public}s frame %p has no metadata, no backtrace";
        v86 = v81;
        v87 = typeb;
LABEL_136:
        _os_log_impl(&dword_181A37000, v86, v87, v37, buf, 0x16u);
        goto LABEL_137;
      }

      v35 = __nwlog_obj();
      v36 = v191;
      if (!os_log_type_enabled(v35, v191))
      {
        goto LABEL_137;
      }

      *buf = 136446466;
      v193 = "nw_http1_frame_metadata_reset";
      v194 = 2048;
      *v195 = v33;
      v37 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
    }

    v86 = v35;
    v87 = v36;
    goto LABEL_136;
  }

  v71 = *(v32 + 216);
  *(v32 + 208) = v18;
  *(v32 + 216) = v71 & 0xFC | 2;
LABEL_139:
  v88 = v31;
  v33[2] = 0;
  v89 = v18[86];
  v33[3] = v89;
  *v89 = v33;
  v18[86] = v33 + 2;
  v33[10] = nw_http1_connection_output_frame_finalizer;
  v33[11] = v13;
  if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v168 = __nwlog_obj();
    v169 = os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG);
    v88 = v31;
    if (v169)
    {
      v170 = *(v16 + 256);
      v171 = *(*(v16 + 248) + 372);
      if (v170)
      {
        LODWORD(v170) = *(v170 + 860);
      }

      v172 = *(v16 + 424);
      *buf = 136447490;
      v193 = "nw_protocol_http1_get_output_frames";
      v194 = 2082;
      *v195 = v16 + 74;
      *&v195[8] = 2080;
      *&v195[10] = " ";
      v196 = 1024;
      *v197 = v171;
      *&v197[4] = 1024;
      *&v197[6] = v170;
      LOWORD(v198) = 1024;
      *(&v198 + 2) = v172;
      _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> returning 1 frame of 0 bytes for potential complete context", buf, 0x32u);
      v88 = v31;
    }
  }

  v33[4] = 0;
  v90 = v88->tqh_last;
  v33[5] = v90;
  *v90 = v33;
  v88->tqh_last = (v33 + 4);
  return 1;
}

uint64_t ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_http1_get_output_frames_block_invoke";
    v37 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v37, &type, &v51))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v54 = "nw_protocol_http1_get_output_frames_block_invoke";
      v40 = "%{public}s called with null frame";
    }

    else if (v51 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v46 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          v54 = "nw_protocol_http1_get_output_frames_block_invoke";
          v55 = 2082;
          v56 = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_69;
      }

      if (!v46)
      {
LABEL_69:
        if (v37)
        {
          free(v37);
        }

        return a2 != 0;
      }

      *buf = 136446210;
      v54 = "nw_protocol_http1_get_output_frames_block_invoke";
      v40 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v54 = "nw_protocol_http1_get_output_frames_block_invoke";
      v40 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
    goto LABEL_69;
  }

  v50 = *(a1 + 32);
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x22D95518uLL);
  if (v5)
  {
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v54 = "nw_http1_frame_wrap_context";
  v55 = 2048;
  v56 = 1;
  v57 = 2048;
  v58 = 32;
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
LABEL_5:
    v8 = *(a2 + 80);
    *v5 = v50;
    v5[1] = v8;
    *(a2 + 80) = nw_http1_wrapped_frame_finalizer;
    *(a2 + 88) = v5;
    if ((*(a2 + 205) & 1) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, v5))
    {
      return a2 != 0;
    }

    v9 = *(a2 + 48);
    if (!v9)
    {
      return a2 != 0;
    }

    if (*(a1 + 40))
    {
      v10 = -1;
      v11 = *(a2 + 48);
      do
      {
        ++v10;
        v12 = v11 > 0xF;
        v11 >>= 4;
      }

      while (v12);
      v13 = v10 + 3;
      v14 = 7;
      goto LABEL_13;
    }

    __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_http1_connection_get_chunked_extra_size";
    v41 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v41, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v54 = "nw_http1_connection_get_chunked_extra_size";
          v44 = "%{public}s called with null http1_connection";
LABEL_73:
          _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        v47 = v9;
        v48 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v43 = type;
        v49 = os_log_type_enabled(v42, type);
        if (v48)
        {
          if (v49)
          {
            *buf = 136446466;
            v54 = "nw_http1_connection_get_chunked_extra_size";
            v55 = 2082;
            v56 = v48;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          v9 = v47;
          goto LABEL_74;
        }

        v9 = v47;
        if (v49)
        {
          *buf = 136446210;
          v54 = "nw_http1_connection_get_chunked_extra_size";
          v44 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v54 = "nw_http1_connection_get_chunked_extra_size";
          v44 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v41)
    {
      free(v41);
    }

    v13 = 0;
    v14 = 0;
LABEL_13:
    if (v9 >= v14 + v13)
    {
      nw_frame_claim(a2, v4, v13, v14);
      if ((*(*(a1 + 56) + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v25 = __nwlog_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(a1 + 56);
          v27 = v26 + 74;
          LODWORD(v26) = *(v26 + 372);
          *buf = 136447746;
          v54 = "nw_protocol_http1_get_output_frames_block_invoke";
          v55 = 2082;
          v56 = v27;
          v57 = 2080;
          v58 = " ";
          v59 = 1024;
          v60 = v26;
          v61 = 2048;
          *v62 = a2;
          *&v62[8] = 1024;
          *v63 = v13;
          *&v63[4] = 1024;
          *&v63[6] = v14;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> claimed chunk header from frame %p (start: %u, end: %u)", buf, 0x3Cu);
        }
      }

      return a2 != 0;
    }

    if ((*(*(a1 + 40) + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        v17 = v16 + 74;
        v18 = *(v16 + 488);
        v19 = *(*(v16 + 480) + 372);
        v20 = *(v16 + 860);
        if (v18)
        {
          LODWORD(v18) = *(v18 + 424);
        }

        *buf = 136448514;
        v54 = "nw_protocol_http1_get_output_frames_block_invoke";
        v55 = 2082;
        v56 = v17;
        v57 = 2080;
        v58 = " ";
        v59 = 1024;
        v60 = v19;
        v61 = 1024;
        *v62 = v20;
        *&v62[4] = 1024;
        *&v62[6] = v18;
        *v63 = 2048;
        *&v63[2] = a2;
        v64 = 1024;
        v65 = v9;
        v66 = 1024;
        v67 = v13;
        v68 = 1024;
        v69 = v14;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> frame is too small to fit chunk header: %p, raw length: %u, start space: %u, end space: %u", buf, 0x4Eu);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v54 = "nw_protocol_http1_get_output_frames_block_invoke";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v21, &type, &v51))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v54 = "nw_protocol_http1_get_output_frames_block_invoke";
        v24 = "%{public}s frame is too small to fit chunk header";
LABEL_34:
        v32 = v22;
        v33 = v23;
LABEL_35:
        _os_log_impl(&dword_181A37000, v32, v33, v24, buf, 0xCu);
      }
    }

    else if (v51 == 1)
    {
      v28 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = type;
      v31 = os_log_type_enabled(gLogObj, type);
      if (v28)
      {
        if (v31)
        {
          *buf = 136446466;
          v54 = "nw_protocol_http1_get_output_frames_block_invoke";
          v55 = 2082;
          v56 = v28;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s frame is too small to fit chunk header, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_36;
      }

      if (v31)
      {
        *buf = 136446210;
        v54 = "nw_protocol_http1_get_output_frames_block_invoke";
        v24 = "%{public}s frame is too small to fit chunk header, no backtrace";
        v32 = v29;
        v33 = v30;
        goto LABEL_35;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v54 = "nw_protocol_http1_get_output_frames_block_invoke";
        v24 = "%{public}s frame is too small to fit chunk header, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_36:
    if (v21)
    {
      free(v21);
    }

    v34 = (*(a1 + 48) + 8);
    v35 = *(a2 + 32);
    v36 = *(a2 + 40);
    if (v35)
    {
      v34 = (v35 + 40);
    }

    *v34 = v36;
    *v36 = v35;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    return a2 != 0;
  }

  __break(1u);
  return result;
}

uint64_t ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_126(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http1_get_output_frames_block_invoke";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v7, &type, &v14))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http1_get_output_frames_block_invoke";
      v10 = "%{public}s called with null frame";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http1_get_output_frames_block_invoke";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v12)
      {
LABEL_21:
        if (v7)
        {
          free(v7);
        }

        return a2 != 0;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http1_get_output_frames_block_invoke";
      v10 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http1_get_output_frames_block_invoke";
      v10 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_21;
  }

  v13 = *(a1 + 32);
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x22D95518uLL);
  if (v3)
  {
LABEL_5:
    v6 = *(a2 + 80);
    *v3 = v13;
    v3[1] = v6;
    *(a2 + 80) = nw_http1_wrapped_frame_finalizer;
    *(a2 + 88) = v3;
    return a2 != 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v17 = "nw_http1_frame_wrap_context";
  v18 = 2048;
  v19 = 1;
  v20 = 2048;
  v21 = 32;
  v4 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
    v3 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void nw_http1_wrapped_frame_finalizer(nw_frame *a1, BOOL a2, _OWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_http1_wrapped_frame_finalizer";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_http1_wrapped_frame_finalizer";
      v7 = "%{public}s called with null frame";
    }

    else if (v12 == 1)
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
          v15 = "nw_http1_wrapped_frame_finalizer";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v4)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v9)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_http1_wrapped_frame_finalizer";
      v7 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_http1_wrapped_frame_finalizer";
      v7 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_34;
  }

  if (a3)
  {
    *(a1 + 5) = a3[1];
    free(a3);

    nw_frame_finalize(a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http1_wrapped_frame_finalizer";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v15 = "nw_http1_wrapped_frame_finalizer";
    v7 = "%{public}s called with null context";
    goto LABEL_33;
  }

  if (v12 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v15 = "nw_http1_wrapped_frame_finalizer";
    v7 = "%{public}s called with null context, backtrace limit exceeded";
    goto LABEL_33;
  }

  v10 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v11 = os_log_type_enabled(v5, type);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v15 = "nw_http1_wrapped_frame_finalizer";
    v7 = "%{public}s called with null context, no backtrace";
    goto LABEL_33;
  }

  if (v11)
  {
    *buf = 136446466;
    v15 = "nw_http1_wrapped_frame_finalizer";
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v4)
  {
LABEL_35:
    free(v4);
  }
}

void nw_http1_connection_output_frame_finalizer(nw_frame *a1, uint64_t a2, void *a3)
{
  v640 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v161 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v161, &v635, &v629))
    {
      goto LABEL_891;
    }

    if (v635 == 17)
    {
      v162 = __nwlog_obj();
      v163 = v635;
      if (!os_log_type_enabled(v162, v635))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null frame";
    }

    else if (v629 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v162 = __nwlog_obj();
      v163 = v635;
      v189 = os_log_type_enabled(v162, v635);
      if (backtrace_string)
      {
        if (v189)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_output_frame_finalizer";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v162, v163, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_891:
        if (!v161)
        {
          return;
        }

        goto LABEL_892;
      }

      if (!v189)
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v162 = __nwlog_obj();
      v163 = v635;
      if (!os_log_type_enabled(v162, v635))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    goto LABEL_890;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v161 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v161, &v635, &v629))
    {
      goto LABEL_891;
    }

    if (v635 != 17)
    {
      if (v629 != 1)
      {
        v162 = __nwlog_obj();
        v163 = v635;
        if (!os_log_type_enabled(v162, v635))
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v164 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_890;
      }

      v190 = __nw_create_backtrace_string();
      v162 = __nwlog_obj();
      v163 = v635;
      v191 = os_log_type_enabled(v162, v635);
      if (!v190)
      {
        if (!v191)
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v164 = "%{public}s called with null context, no backtrace";
        goto LABEL_890;
      }

      if (!v191)
      {
        goto LABEL_845;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v190;
      v192 = "%{public}s called with null context, dumping backtrace:%{public}s";
      goto LABEL_844;
    }

    v162 = __nwlog_obj();
    v163 = v635;
    if (!os_log_type_enabled(v162, v635))
    {
      goto LABEL_891;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v164 = "%{public}s called with null context";
LABEL_890:
    _os_log_impl(&dword_181A37000, v162, v163, v164, buf, 0xCu);
    goto LABEL_891;
  }

  v4 = *(a1 + 102);
  if ((v4 & 4) != 0)
  {
    v5 = a1 + 208;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 4) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v161 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v161, &v635, &v629))
    {
      goto LABEL_891;
    }

    if (v635 != 17)
    {
      if (v629 != 1)
      {
        v162 = __nwlog_obj();
        v163 = v635;
        if (!os_log_type_enabled(v162, v635))
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v164 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_890;
      }

      v190 = __nw_create_backtrace_string();
      v162 = __nwlog_obj();
      v163 = v635;
      v193 = os_log_type_enabled(v162, v635);
      if (!v190)
      {
        if (!v193)
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v164 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_890;
      }

      if (!v193)
      {
        goto LABEL_845;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v190;
      v192 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_844;
    }

    v162 = __nwlog_obj();
    v163 = v635;
    if (!os_log_type_enabled(v162, v635))
    {
      goto LABEL_891;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v164 = "%{public}s called with null metadata";
    goto LABEL_890;
  }

  v6 = *v5;
  if (!*v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v161 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v161, &v635, &v629))
    {
      goto LABEL_891;
    }

    if (v635 == 17)
    {
      v162 = __nwlog_obj();
      v163 = v635;
      if (!os_log_type_enabled(v162, v635))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null http1_connection";
      goto LABEL_890;
    }

    if (v629 != 1)
    {
      v162 = __nwlog_obj();
      v163 = v635;
      if (!os_log_type_enabled(v162, v635))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_890;
    }

    v190 = __nw_create_backtrace_string();
    v162 = __nwlog_obj();
    v163 = v635;
    v194 = os_log_type_enabled(v162, v635);
    if (!v190)
    {
      if (!v194)
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_890;
    }

    if (!v194)
    {
      goto LABEL_845;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    *&buf[12] = 2082;
    *&buf[14] = v190;
    v192 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
LABEL_844:
    _os_log_impl(&dword_181A37000, v162, v163, v192, buf, 0x16u);
    goto LABEL_845;
  }

  v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v165 = a2;
    v166 = __nwlog_obj();
    v167 = os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG);
    a2 = v165;
    if (v167)
    {
      v168 = *(v6 + 488);
      v169 = *(*(v6 + 480) + 372);
      v170 = *(v6 + 860);
      if (v168)
      {
        LODWORD(v168) = *(v168 + 424);
      }

      *buf = 136448002;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      if (v165)
      {
        v171 = "true";
      }

      else
      {
        v171 = "false";
      }

      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v169;
      *&v626[4] = 1024;
      *&v626[6] = v170;
      *v627 = 1024;
      *&v627[2] = v168;
      *&v627[6] = 2048;
      *&v627[8] = a1;
      *&v627[16] = 2080;
      v628 = v171;
      _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing output frame %p, success: %s", buf, 0x46u);
      a2 = v165;
    }
  }

  v8 = (v6 + 688);
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  if (v9)
  {
    v8 = (v9 + 24);
  }

  *v8 = v10;
  *v10 = v9;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v11 = *(v6 + 488);
  v615 = v6;
  if (!v11 || (*(v11 + 428) & 0x100) == 0)
  {
    v12 = 0;
    if (a2)
    {
      goto LABEL_15;
    }

LABEL_27:
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v195 = __nwlog_obj();
      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
      {
        v196 = *(v6 + 488);
        v197 = *(*(v6 + 480) + 372);
        v198 = *(v6 + 860);
        if (v196)
        {
          LODWORD(v196) = *(v196 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v626 = v197;
        *&v626[4] = 1024;
        *&v626[6] = v198;
        *v627 = 1024;
        *&v627[2] = v196;
        _os_log_impl(&dword_181A37000, v195, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> disposing of output frame, finalizer called with success == false", buf, 0x32u);
      }
    }

    if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 11)))
    {
      v17 = *(a1 + 14);
      if (v17)
      {
        free(v17);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
    return;
  }

  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v199 = a2;
    v200 = __nwlog_obj();
    v201 = os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG);
    v11 = *(v6 + 488);
    if (v201)
    {
      v202 = *(*(v6 + 480) + 372);
      v203 = *(v6 + 860);
      if (v11)
      {
        LODWORD(v11) = *(v11 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v202;
      *&v626[4] = 1024;
      *&v626[6] = v203;
      *v627 = 1024;
      *&v627[2] = v11;
      *&v627[6] = 1024;
      *&v627[8] = v199;
      _os_log_impl(&dword_181A37000, v200, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> initial outbound frame finalized, success %u", buf, 0x38u);
      a2 = v199;
      v11 = *(v6 + 488);
    }

    else
    {
      a2 = v199;
    }
  }

  *(v11 + 428) &= ~0x100u;
  v12 = 1;
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_15:
  v13 = *(v6 + 488);
  if (!v13)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v161 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v161, &v635, &v629))
    {
      goto LABEL_891;
    }

    if (v635 == 17)
    {
      v162 = __nwlog_obj();
      v163 = v635;
      if (!os_log_type_enabled(v162, v635))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null http1_connection->current_stream";
      goto LABEL_890;
    }

    if (v629 != 1)
    {
      v162 = __nwlog_obj();
      v163 = v635;
      if (!os_log_type_enabled(v162, v635))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
      goto LABEL_890;
    }

    v190 = __nw_create_backtrace_string();
    v162 = __nwlog_obj();
    v163 = v635;
    v473 = os_log_type_enabled(v162, v635);
    if (!v190)
    {
      if (!v473)
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v164 = "%{public}s called with null http1_connection->current_stream, no backtrace";
      goto LABEL_890;
    }

    if (v473)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v190;
      v192 = "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s";
      goto LABEL_844;
    }

LABEL_845:
    free(v190);
    if (!v161)
    {
      return;
    }

LABEL_892:
    free(v161);
    return;
  }

  v14 = *(v13 + 428);
  if ((v5[8] & 2) != 0 && (v14 & 4) != 0)
  {
    v15 = *(a1 + 13);
    if (!v15 || v15 == *(a1 + 14) + *(a1 + 15))
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        if ((*(v16 + 66) & 0x40) != 0)
        {
          nw_protocol_output_finished(*(v6 + 488), *(v13 + 48));
        }
      }
    }

    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    nw_frame_cache_return_frame(v6 + 696, a1);
    return;
  }

  if ((v14 & 4) != 0)
  {
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v480 = __nwlog_obj();
      if (os_log_type_enabled(v480, OS_LOG_TYPE_DEBUG))
      {
        v481 = *(v6 + 488);
        v482 = *(*(v6 + 480) + 372);
        v483 = *(v6 + 860);
        if (v481)
        {
          LODWORD(v481) = *(v481 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v626 = v482;
        *&v626[4] = 1024;
        *&v626[6] = v483;
        *v627 = 1024;
        *&v627[2] = v481;
        *&v627[6] = 2048;
        *&v627[8] = a1;
        _os_log_impl(&dword_181A37000, v480, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound headers are already complete, sending contents of frame %p", buf, 0x3Cu);
      }
    }

    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v6 + 488);
        v25 = *(*(v6 + 480) + 372);
        v26 = *(v6 + 860);
        if (v24)
        {
          LODWORD(v24) = *(v24 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_http1_connection_enqueue_outbound_frame";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v626 = v25;
        *&v626[4] = 1024;
        *&v626[6] = v26;
        *v627 = 1024;
        *&v627[2] = v24;
        *&v627[6] = 2048;
        *&v627[8] = a1;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> enqueuing outbound frame %p", buf, 0x3Cu);
      }
    }

    goto LABEL_420;
  }

  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v475 = __nwlog_obj();
    v476 = os_log_type_enabled(v475, OS_LOG_TYPE_DEBUG);
    v13 = *(v6 + 488);
    if (v476)
    {
      v477 = *(*(v6 + 480) + 372);
      v478 = *(v6 + 860);
      if (v13)
      {
        v479 = *(v13 + 424);
      }

      else
      {
        v479 = 0;
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v477;
      *&v626[4] = 1024;
      *&v626[6] = v478;
      *v627 = 1024;
      *&v627[2] = v479;
      _os_log_impl(&dword_181A37000, v475, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending outbound message", buf, 0x32u);
      v13 = *(v6 + 488);
    }

    if (!v13)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      v522 = _os_log_send_and_compose_impl();
      LOBYTE(v635) = 16;
      LOBYTE(v629) = 0;
      if (!__nwlog_fault(v522, &v635, &v629))
      {
        goto LABEL_937;
      }

      if (v635 == 17)
      {
        v523 = __nwlog_obj();
        v524 = v635;
        if (!os_log_type_enabled(v523, v635))
        {
          goto LABEL_937;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v525 = "%{public}s called with null http1_stream";
      }

      else
      {
        if (v629 == 1)
        {
          v526 = __nw_create_backtrace_string();
          v527 = __nwlog_obj();
          v528 = v635;
          v529 = os_log_type_enabled(v527, v635);
          if (v526)
          {
            if (v529)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              *&buf[12] = 2082;
              *&buf[14] = v526;
              _os_log_impl(&dword_181A37000, v527, v528, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v526);
            goto LABEL_937;
          }

          if (!v529)
          {
LABEL_937:
            if (v522)
            {
              free(v522);
            }

            goto LABEL_939;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v525 = "%{public}s called with null http1_stream, no backtrace";
          v530 = v527;
          v531 = v528;
LABEL_936:
          _os_log_impl(&dword_181A37000, v530, v531, v525, buf, 0xCu);
          goto LABEL_937;
        }

        v523 = __nwlog_obj();
        v524 = v635;
        if (!os_log_type_enabled(v523, v635))
        {
          goto LABEL_937;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v525 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      }

      v530 = v523;
      v531 = v524;
      goto LABEL_936;
    }
  }

  v604 = v12;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v18 = nw_protocol_copy_http_definition_http_definition;
  v19 = *(v13 + 384);
  v20 = nw_frame_copy_metadata_for_protocol(a1, v18);
  v21 = v20;
  if (!v19)
  {
    if (v20)
    {
      v21 = v20;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v27 = nw_protocol_metadata_matches_definition(v21, nw_protocol_copy_http_definition_http_definition);

      if (v27)
      {
        if (*(*(v13 + 248) + 376))
        {
          v44 = nw_http_metadata_copy_response(v21);
          if (v44)
          {
            v29 = v44;
            v30 = nw_http_response_copy(v44);
            metadata_for_response = nw_http_create_metadata_for_response(v30);
LABEL_77:
            *buf = metadata_for_response;
            nw::retained_ptr<nw_endpoint *>::operator=(v13 + 384, buf);
            if (v30)
            {
              os_release(v30);
            }

            os_release(v29);
            if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v546 = __nwlog_obj();
              if (os_log_type_enabled(v546, OS_LOG_TYPE_DEBUG))
              {
                v547 = *(v13 + 256);
                v548 = *(*(v13 + 248) + 372);
                if (v547)
                {
                  LODWORD(v547) = *(v547 + 860);
                }

                v549 = *(v13 + 424);
                *buf = 136447490;
                *&buf[4] = "nw_http1_stream_save_outbound_message";
                *&buf[12] = 2082;
                *&buf[14] = v13 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *v626 = v548;
                *&v626[4] = 1024;
                *&v626[6] = v547;
                *v627 = 1024;
                *&v627[2] = v549;
                _os_log_impl(&dword_181A37000, v546, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> saved outbound message", buf, 0x32u);
              }
            }

            v45 = *(a1 + 13);
            if ((!v45 || v45 == *(a1 + 14) + *(a1 + 15)) && (v46 = *(a1 + 8)) != 0)
            {
              v47 = (*(v46 + 66) >> 6) & 1;
            }

            else
            {
              LOBYTE(v47) = 0;
            }

            v48 = *(v13 + 384);
            if (v48)
            {
              if ((*(*(v13 + 248) + 376) & 1) == 0)
              {
                v49 = nw_http_metadata_copy_request(v48);
                if (nw_http_request_has_method(v49, "CONNECT"))
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2000000000;
                  buf[24] = 0;
                  v635 = MEMORY[0x1E69E9820];
                  v636 = 0x40000000;
                  v637 = ___ZL40nw_http1_stream_process_outbound_messageP15nw_http1_streamb_block_invoke;
                  v638 = &unk_1E6A32C30;
                  v639 = buf;
                  nw_http_request_access_extended_connect_protocol(v49, &v635);
                  if (*(*&buf[8] + 24) == 1)
                  {
                    nw_http_request_set_method(v49, "GET");
                    nw_http_request_set_extended_connect_protocol(v49, 0);
                    nw_http_fields_append(v49, "Connection", "Upgrade");
                    nw_http_fields_append(v49, "Upgrade", "websocket");
                    if ((nw_http_fields_have_field_with_name(v49, "Sec-WebSocket-Key") & 1) == 0)
                    {
                      arc4random_buf(&__buf, 0x10uLL);
                      v50 = dispatch_data_create(&__buf, 0x10uLL, 0, *MEMORY[0x1E69E9658]);
                      v51 = dispatch_data_create_with_transform();
                      v629 = 0;
                      v630 = 0;
                      LOBYTE(v632) = 0;
                      v631 = 0;
                      nw_dispatch_data_copyout(v51, &v629, 24);
                      nw_http_fields_append(v49, "Sec-WebSocket-Key", &v629);
                      if (v51)
                      {
                        dispatch_release(v51);
                      }

                      if (v50)
                      {
                        dispatch_release(v50);
                      }
                    }
                  }

                  _Block_object_dispose(buf, 8);
                }

                if (!v49)
                {
                  has_method = 0;
                  v57 = 0;
                  goto LABEL_151;
                }

                if (nw_http_request_has_method(v49, "GET"))
                {
                  has_method = 1;
                }

                else
                {
                  has_method = nw_http_request_has_method(v49, "HEAD");
                }

                if ((*(*(v13 + 248) + 376) & 4) != 0)
                {
                  v71 = nw_parameters_copy_url_endpoint(*(v13 + 320));
                  if (v71)
                  {
                    v72 = v71;
                    url = nw_endpoint_get_url(v71);
                    nw_http_request_set_path(v49, url);
                    os_release(v72);
                  }
                }

                v57 = 0;
                goto LABEL_150;
              }

              v49 = nw_http_metadata_copy_response(v48);
              status_code = nw_http_response_get_status_code(v49);
              v56 = nw_http_metadata_copy_request(*(v13 + 368));
              if (status_code == 101)
              {
                *(v13 + 428) &= ~0x1000u;
                v57 = 1;
                goto LABEL_109;
              }

              v66 = v56;
              v67 = nw_http_request_has_method(v56, "CONNECT");
              if (status_code == 200)
              {
                v57 = v67;
              }

              else
              {
                v57 = 0;
              }

              if (((status_code - 200) < 0xFFFFFF9C) | v57 & 1)
              {
                v68 = 0;
              }

              else
              {
                v68 = 4096;
              }

              *(v13 + 428) = v68 | *(v13 + 428) & 0xEFFF;
              has_method = 1;
              if (status_code == 204 || status_code == 304)
              {
                v56 = v66;
                v6 = v615;
                if (!v56)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v56 = v66;
                if (((status_code - 200) < 0xFFFFFF9C) | v57 & 1)
                {
                  v6 = v615;
LABEL_109:
                  has_method = v57;
                  if (!v56)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_110;
                }

                v6 = v615;
                if (!v56)
                {
LABEL_111:
                  if (!v49)
                  {
LABEL_151:
                    v74 = nw_http_metadata_copy_header_fields(*(v13 + 384));
                    if ((nw_http_fields_have_field_with_name(v74, "Connection") & 1) == 0 && (*(v13 + 428) & 0x1000) == 0)
                    {
                      nw_http_fields_append(v74, "Connection", "keep-alive");
                    }

                    if (!(has_method & 1 | ((v47 & 1) == 0)) && (nw_http_fields_have_field_with_name(v74, "Content-Length") & 1) == 0)
                    {
                      nw_http_fields_append(v74, "Content-Length", "0");
                    }

                    if ((v47 & 1) == 0)
                    {
                      if ((nw_http_fields_have_field_with_name(v74, "Content-Length") | v57))
                      {
                        v75 = 0;
                      }

                      else
                      {
                        v75 = 512;
                      }

                      *(v13 + 428) = *(v13 + 428) & 0xFDFF | v75;
                      if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
                      {
                        v572 = __nwlog_obj();
                        if (os_log_type_enabled(v572, OS_LOG_TYPE_DEBUG))
                        {
                          v573 = *(v13 + 256);
                          v574 = *(*(v13 + 248) + 372);
                          if (v573)
                          {
                            LODWORD(v573) = *(v573 + 860);
                          }

                          v575 = *(v13 + 424);
                          v576 = "uses";
                          if ((*(v13 + 428) & 0x200) == 0)
                          {
                            v576 = "does not use";
                          }

                          *buf = 136447746;
                          *&buf[4] = "nw_http1_stream_process_outbound_message";
                          *&buf[12] = 2082;
                          *&buf[14] = v13 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *v626 = v574;
                          *&v626[4] = 1024;
                          *&v626[6] = v573;
                          *v627 = 1024;
                          *&v627[2] = v575;
                          *&v627[6] = 2080;
                          *&v627[8] = v576;
                          _os_log_impl(&dword_181A37000, v572, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound data %s chunked encoding", buf, 0x3Cu);
                          v6 = v615;
                        }
                      }

                      if ((*(v13 + 428) & 0x200) != 0)
                      {
                        nw_http_fields_set_value_by_name(v74, "Transfer-Encoding", "chunked");
                      }
                    }

                    if (v57)
                    {
                      v76 = 512;
                    }

                    else
                    {
                      v76 = 0;
                    }

                    *(*(v13 + 256) + 872) = *(*(v13 + 256) + 872) & 0xFDFF | v76;
                    if (v74)
                    {
                      os_release(v74);
                    }

LABEL_170:
                    nw_http_transaction_metadata_set_outbound_message(*(v13 + 352), *(v13 + 384), v13 + 74);
                    nw::http::content_length_manager::set_outbound_message((v13 + 160), *(v13 + 384));
                    os_release(v21);
                    v22 = 1;
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    goto LABEL_197;
                  }

LABEL_150:
                  os_release(v49);
                  goto LABEL_151;
                }
              }

LABEL_110:
              os_release(v56);
              goto LABEL_111;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_process_outbound_message";
            v542 = _os_log_send_and_compose_impl();
            LOBYTE(v635) = 16;
            LOBYTE(v629) = 0;
            if (__nwlog_fault(v542, &v635, &v629))
            {
              if (v635 == 17)
              {
                v543 = __nwlog_obj();
                v544 = v635;
                if (!os_log_type_enabled(v543, v635))
                {
                  goto LABEL_1061;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_process_outbound_message";
                v545 = "%{public}s called with null http1_stream->outbound_message";
LABEL_1059:
                v591 = v543;
                v592 = v544;
LABEL_1060:
                _os_log_impl(&dword_181A37000, v591, v592, v545, buf, 0xCu);
                goto LABEL_1061;
              }

              if (v629 != 1)
              {
                v543 = __nwlog_obj();
                v544 = v635;
                if (!os_log_type_enabled(v543, v635))
                {
                  goto LABEL_1061;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_process_outbound_message";
                v545 = "%{public}s called with null http1_stream->outbound_message, backtrace limit exceeded";
                goto LABEL_1059;
              }

              v568 = __nw_create_backtrace_string();
              v569 = __nwlog_obj();
              v570 = v635;
              v571 = os_log_type_enabled(v569, v635);
              if (v568)
              {
                if (v571)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_process_outbound_message";
                  *&buf[12] = 2082;
                  *&buf[14] = v568;
                  _os_log_impl(&dword_181A37000, v569, v570, "%{public}s called with null http1_stream->outbound_message, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v568);
                goto LABEL_1061;
              }

              if (v571)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_process_outbound_message";
                v545 = "%{public}s called with null http1_stream->outbound_message, no backtrace";
                v591 = v569;
                v592 = v570;
                goto LABEL_1060;
              }
            }

LABEL_1061:
            if (v542)
            {
              free(v542);
            }

            goto LABEL_170;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v62 = _os_log_send_and_compose_impl();
          LOBYTE(v635) = 16;
          LOBYTE(v629) = 0;
          if (__nwlog_fault(v62, &v635, &v629))
          {
            if (v635 == 17)
            {
              v63 = __nwlog_obj();
              v64 = v635;
              if (!os_log_type_enabled(v63, v635))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v65 = "%{public}s did not find response on frame";
              goto LABEL_190;
            }

            if (v629 != 1)
            {
              v63 = __nwlog_obj();
              v64 = v635;
              if (!os_log_type_enabled(v63, v635))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v65 = "%{public}s did not find response on frame, backtrace limit exceeded";
              goto LABEL_190;
            }

            v81 = __nw_create_backtrace_string();
            v78 = __nwlog_obj();
            v79 = v635;
            v82 = os_log_type_enabled(v78, v635);
            if (v81)
            {
              if (v82)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_save_outbound_message";
                *&buf[12] = 2082;
                *&buf[14] = v81;
                _os_log_impl(&dword_181A37000, v78, v79, "%{public}s did not find response on frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v81);
            }

            else if (v82)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v65 = "%{public}s did not find response on frame, no backtrace";
              goto LABEL_327;
            }
          }
        }

        else
        {
          v28 = nw_http_metadata_copy_request(v21);
          if (v28)
          {
            v29 = v28;
            v30 = nw_http_request_copy(v28);
            metadata_for_response = nw_http_create_metadata_for_request(v30);
            goto LABEL_77;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v62 = _os_log_send_and_compose_impl();
          LOBYTE(v635) = 16;
          LOBYTE(v629) = 0;
          if (__nwlog_fault(v62, &v635, &v629))
          {
            if (v635 == 17)
            {
              v63 = __nwlog_obj();
              v64 = v635;
              if (!os_log_type_enabled(v63, v635))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v65 = "%{public}s did not find request on frame";
LABEL_190:
              v83 = v63;
              v84 = v64;
LABEL_191:
              _os_log_impl(&dword_181A37000, v83, v84, v65, buf, 0xCu);
              goto LABEL_192;
            }

            if (v629 != 1)
            {
              v63 = __nwlog_obj();
              v64 = v635;
              if (!os_log_type_enabled(v63, v635))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v65 = "%{public}s did not find request on frame, backtrace limit exceeded";
              goto LABEL_190;
            }

            v77 = __nw_create_backtrace_string();
            v78 = __nwlog_obj();
            v79 = v635;
            v80 = os_log_type_enabled(v78, v635);
            if (v77)
            {
              if (v80)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_save_outbound_message";
                *&buf[12] = 2082;
                *&buf[14] = v77;
                _os_log_impl(&dword_181A37000, v78, v79, "%{public}s did not find request on frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v77);
              if (!v62)
              {
                goto LABEL_194;
              }

              goto LABEL_193;
            }

            if (v80)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v65 = "%{public}s did not find request on frame, no backtrace";
LABEL_327:
              v83 = v78;
              v84 = v79;
              goto LABEL_191;
            }
          }
        }

LABEL_192:
        if (!v62)
        {
LABEL_194:
          v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_195:
          os_release(v21);
LABEL_196:
          v22 = 0;
          goto LABEL_197;
        }

LABEL_193:
        free(v62);
        goto LABEL_194;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      v518 = _os_log_send_and_compose_impl();
      LOBYTE(v635) = 16;
      LOBYTE(v629) = 0;
      if (__nwlog_fault(v518, &v635, &v629))
      {
        if (v635 == 17)
        {
          v519 = __nwlog_obj();
          v520 = v635;
          if (!os_log_type_enabled(v519, v635))
          {
            goto LABEL_1027;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v521 = "%{public}s metadata must be http";
LABEL_1025:
          v579 = v519;
          v580 = v520;
LABEL_1026:
          _os_log_impl(&dword_181A37000, v579, v580, v521, buf, 0xCu);
          goto LABEL_1027;
        }

        if (v629 != 1)
        {
          v519 = __nwlog_obj();
          v520 = v635;
          if (!os_log_type_enabled(v519, v635))
          {
            goto LABEL_1027;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v521 = "%{public}s metadata must be http, backtrace limit exceeded";
          goto LABEL_1025;
        }

        v552 = __nw_create_backtrace_string();
        v553 = __nwlog_obj();
        v554 = v635;
        v555 = os_log_type_enabled(v553, v635);
        if (v552)
        {
          if (v555)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_save_outbound_message";
            *&buf[12] = 2082;
            *&buf[14] = v552;
            _os_log_impl(&dword_181A37000, v553, v554, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v552);
          goto LABEL_1027;
        }

        if (v555)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v521 = "%{public}s metadata must be http, no backtrace";
          v579 = v553;
          v580 = v554;
          goto LABEL_1026;
        }
      }

LABEL_1027:
      if (v518)
      {
        free(v518);
      }

      goto LABEL_194;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_save_outbound_message";
    v40 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (__nwlog_fault(v40, &v635, &v629))
    {
      if (v635 == 17)
      {
        v41 = __nwlog_obj();
        v42 = v635;
        if (!os_log_type_enabled(v41, v635))
        {
          goto LABEL_140;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v43 = "%{public}s did not find outbound message on frame, dropping";
LABEL_138:
        v69 = v41;
        v70 = v42;
LABEL_139:
        _os_log_impl(&dword_181A37000, v69, v70, v43, buf, 0xCu);
        goto LABEL_140;
      }

      if (v629 != 1)
      {
        v41 = __nwlog_obj();
        v42 = v635;
        if (!os_log_type_enabled(v41, v635))
        {
          goto LABEL_140;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v43 = "%{public}s did not find outbound message on frame, dropping, backtrace limit exceeded";
        goto LABEL_138;
      }

      v58 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v60 = v635;
      v61 = os_log_type_enabled(v59, v635);
      if (v58)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          *&buf[12] = 2082;
          *&buf[14] = v58;
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s did not find outbound message on frame, dropping, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v58);
        goto LABEL_140;
      }

      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v43 = "%{public}s did not find outbound message on frame, dropping, no backtrace";
        v69 = v59;
        v70 = v60;
        goto LABEL_139;
      }
    }

LABEL_140:
    if (v40)
    {
      free(v40);
    }

    goto LABEL_196;
  }

  v635 = 0;
  v636 = 0;
  nw_protocol_metadata_copy_identifier(v20, &v635);
  v629 = 0;
  v630 = 0;
  nw_protocol_metadata_copy_identifier(*(v13 + 384), &v629);
  if (v629 != v635 || v630 != v636)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447234;
    *&buf[4] = "nw_http1_stream_save_outbound_message";
    *&buf[12] = 1040;
    *&buf[14] = 16;
    *&buf[18] = 2096;
    *&buf[20] = &v629;
    *&buf[28] = 1040;
    *&buf[30] = 16;
    *v626 = 2096;
    *&v626[2] = &v635;
    v32 = _os_log_send_and_compose_impl();
    LOBYTE(__buf) = 16;
    LOBYTE(v623) = 0;
    if (!__nwlog_fault(v32, &__buf, &v623))
    {
      goto LABEL_103;
    }

    if (__buf == 17)
    {
      v33 = __nwlog_obj();
      v34 = __buf;
      if (!os_log_type_enabled(v33, __buf))
      {
        goto LABEL_103;
      }

      *buf = 136447234;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v629;
      *&buf[28] = 1040;
      *&buf[30] = 16;
      *v626 = 2096;
      *&v626[2] = &v635;
      v35 = "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P)";
    }

    else
    {
      if (v623 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = __buf;
        v39 = os_log_type_enabled(v37, __buf);
        if (v36)
        {
          if (v39)
          {
            *buf = 136447490;
            *&buf[4] = "nw_http1_stream_save_outbound_message";
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = &v629;
            *&buf[28] = 1040;
            *&buf[30] = 16;
            *v626 = 2096;
            *&v626[2] = &v635;
            *v627 = 2082;
            *&v627[2] = v36;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P), dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v36);
        }

        else if (v39)
        {
          *buf = 136447234;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v629;
          *&buf[28] = 1040;
          *&buf[30] = 16;
          *v626 = 2096;
          *&v626[2] = &v635;
          v35 = "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P), no backtrace";
          v53 = v37;
          v54 = v38;
          goto LABEL_102;
        }

LABEL_103:
        if (v32)
        {
          free(v32);
        }

        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (!v21)
        {
          goto LABEL_196;
        }

        goto LABEL_195;
      }

      v33 = __nwlog_obj();
      v34 = __buf;
      if (!os_log_type_enabled(v33, __buf))
      {
        goto LABEL_103;
      }

      *buf = 136447234;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v629;
      *&buf[28] = 1040;
      *&buf[30] = 16;
      *v626 = 2096;
      *&v626[2] = &v635;
      v35 = "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P), backtrace limit exceeded";
    }

    v53 = v33;
    v54 = v34;
LABEL_102:
    _os_log_impl(&dword_181A37000, v53, v54, v35, buf, 0x2Cu);
    goto LABEL_103;
  }

  if (v21)
  {
    os_release(v21);
  }

  v22 = 1;
LABEL_197:
  if (v18)
  {
    os_release(v18);
  }

  if ((v22 & 1) == 0)
  {
LABEL_939:
    if ((*(v6 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v532 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v533 = *(v6 + 488);
        v534 = *(*(v6 + 480) + 372);
        v535 = *(v6 + 860);
        if (v533)
        {
          LODWORD(v533) = *(v533 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v626 = v534;
        *&v626[4] = 1024;
        *&v626[6] = v535;
        *v627 = 1024;
        *&v627[2] = v533;
        _os_log_impl(&dword_181A37000, v532, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> invalid message supplied to http1_connection, dropping", buf, 0x32u);
      }
    }

    if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 11)))
    {
      v536 = *(a1 + 14);
      if (v536)
      {
        free(v536);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
    v537 = *(v6 + 488);
    if (v537)
    {
      v538 = *(v537 + 48);
    }

    else
    {
      v538 = 0;
    }

    nw_protocol_error(v538, v537);
    v539 = *(v6 + 488);
    if (v539)
    {
      nw_protocol_disconnected(*(v539 + 48), v539);
    }

    else
    {
      nw_protocol_disconnected(0, 0);
    }

    return;
  }

  *(*(v6 + 488) + 428) |= 0x4000u;
  v85 = *(a1 + 13);
  if (v85 && v85 != *(a1 + 14) + *(a1 + 15) || (v86 = *(a1 + 8)) == 0 || (*(v86 + 66) & 0x40) == 0)
  {
    v616 = 0;
    v87 = *(v6 + 488);
    if (v87)
    {
      goto LABEL_205;
    }

LABEL_294:
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v141 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v141, &v635, &v629))
    {
      goto LABEL_979;
    }

    if (v635 == 17)
    {
      v142 = __nwlog_obj();
      v143 = v635;
      if (os_log_type_enabled(v142, v635))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v144 = "%{public}s called with null http1_stream";
LABEL_977:
        v550 = v142;
        v551 = v143;
LABEL_978:
        _os_log_impl(&dword_181A37000, v550, v551, v144, buf, 0xCu);
      }

LABEL_979:
      if (v141)
      {
        free(v141);
      }

      v6 = v615;
      goto LABEL_417;
    }

    if (v629 != 1)
    {
      v142 = __nwlog_obj();
      v143 = v635;
      if (os_log_type_enabled(v142, v635))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v144 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_977;
      }

      goto LABEL_979;
    }

    v512 = __nw_create_backtrace_string();
    v513 = __nwlog_obj();
    v514 = v635;
    v515 = os_log_type_enabled(v513, v635);
    if (v512)
    {
      if (v515)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        *&buf[12] = 2082;
        *&buf[14] = v512;
        v516 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_915:
        _os_log_impl(&dword_181A37000, v513, v514, v516, buf, 0x16u);
      }

LABEL_916:
      free(v512);
      goto LABEL_979;
    }

    if (!v515)
    {
      goto LABEL_979;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v144 = "%{public}s called with null http1_stream, no backtrace";
LABEL_1050:
    v550 = v513;
    v551 = v514;
    goto LABEL_978;
  }

  if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v556 = __nwlog_obj();
    if (os_log_type_enabled(v556, OS_LOG_TYPE_DEBUG))
    {
      v557 = *(v615 + 488);
      v558 = *(*(v615 + 480) + 372);
      v559 = *(v615 + 860);
      if (v557)
      {
        LODWORD(v557) = *(v557 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v615 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v558;
      *&v626[4] = 1024;
      *&v626[6] = v559;
      *v627 = 1024;
      *&v627[2] = v557;
      _os_log_impl(&dword_181A37000, v556, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound message is headers only, setting complete for headers", buf, 0x32u);
    }

    v616 = 1;
    v6 = v615;
    v87 = *(v615 + 488);
    if (!v87)
    {
      goto LABEL_294;
    }
  }

  else
  {
    v616 = 1;
    v87 = *(v6 + 488);
    if (!v87)
    {
      goto LABEL_294;
    }
  }

LABEL_205:
  if (!*(v87 + 248))
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v141 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v141, &v635, &v629))
    {
      goto LABEL_979;
    }

    if (v635 == 17)
    {
      v142 = __nwlog_obj();
      v143 = v635;
      if (os_log_type_enabled(v142, v635))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v144 = "%{public}s called with null http1_stream->protocol_http1";
        goto LABEL_977;
      }

      goto LABEL_979;
    }

    if (v629 != 1)
    {
      v142 = __nwlog_obj();
      v143 = v635;
      if (os_log_type_enabled(v142, v635))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v144 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
        goto LABEL_977;
      }

      goto LABEL_979;
    }

    v512 = __nw_create_backtrace_string();
    v513 = __nwlog_obj();
    v514 = v635;
    v517 = os_log_type_enabled(v513, v635);
    if (v512)
    {
      if (v517)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        *&buf[12] = 2082;
        *&buf[14] = v512;
        v516 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
        goto LABEL_915;
      }

      goto LABEL_916;
    }

    if (!v517)
    {
      goto LABEL_979;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v144 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
    goto LABEL_1050;
  }

  if (!*(v87 + 256))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v89 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v89, &v635, &v629))
    {
      goto LABEL_415;
    }

    if (v635 == 17)
    {
      v134 = __nwlog_obj();
      v135 = v635;
      if (!os_log_type_enabled(v134, v635))
      {
        goto LABEL_415;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      v136 = "%{public}s Stream asked to send outbound headers without current connection";
    }

    else
    {
      if (v629 == 1)
      {
        v145 = __nw_create_backtrace_string();
        v146 = __nwlog_obj();
        v147 = v635;
        v148 = os_log_type_enabled(v146, v635);
        if (v145)
        {
          if (v148)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_send_outbound_headers";
            *&buf[12] = 2082;
            *&buf[14] = v145;
            _os_log_impl(&dword_181A37000, v146, v147, "%{public}s Stream asked to send outbound headers without current connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v145);
          if (v89)
          {
            goto LABEL_416;
          }

          goto LABEL_417;
        }

        if (!v148)
        {
          goto LABEL_415;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v136 = "%{public}s Stream asked to send outbound headers without current connection, no backtrace";
        v149 = v146;
        v150 = v147;
LABEL_307:
        _os_log_impl(&dword_181A37000, v149, v150, v136, buf, 0xCu);
        goto LABEL_415;
      }

      v134 = __nwlog_obj();
      v135 = v635;
      if (!os_log_type_enabled(v134, v635))
      {
        goto LABEL_415;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      v136 = "%{public}s Stream asked to send outbound headers without current connection, backtrace limit exceeded";
    }

    v149 = v134;
    v150 = v135;
    goto LABEL_307;
  }

  if ((*(v87 + 428) & 4) != 0)
  {
    if ((*(v87 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
    {
      v137 = __nwlog_obj();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        v138 = *(v87 + 256);
        v139 = *(*(v87 + 248) + 372);
        if (v138)
        {
          LODWORD(v138) = *(v138 + 860);
        }

        v140 = *(v87 + 424);
        *buf = 136447490;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        *&buf[12] = 2082;
        *&buf[14] = v87 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v626 = v139;
        *&v626[4] = 1024;
        *&v626[6] = v138;
        *v627 = 1024;
        *&v627[2] = v140;
        _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already sent, skipping", buf, 0x32u);
        v6 = v615;
      }
    }

    goto LABEL_417;
  }

  v88 = *(v87 + 384);
  if (!v88)
  {
    goto LABEL_417;
  }

  v621 = 0;
  v89 = nw_http_metadata_legacy_serialize(v88, &v621);
  if ((*(v87 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v560 = __nwlog_obj();
    if (os_log_type_enabled(v560, OS_LOG_TYPE_DEBUG))
    {
      v561 = *(v87 + 256);
      v562 = *(*(v87 + 248) + 372);
      if (v561)
      {
        LODWORD(v561) = *(v561 + 860);
      }

      v563 = *(v87 + 424);
      *buf = 136448002;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      *&buf[12] = 2082;
      *&buf[14] = v87 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v562;
      *&v626[4] = 1024;
      *&v626[6] = v561;
      *v627 = 1024;
      *&v627[2] = v563;
      *&v627[6] = 2048;
      *&v627[8] = v89;
      *&v627[16] = 2048;
      v628 = v621;
      _os_log_impl(&dword_181A37000, v560, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> got buffer %p of length %zu bytes", buf, 0x46u);
      v6 = v615;
    }
  }

  v90 = v621;
  if (!v89 || !v621)
  {
    goto LABEL_365;
  }

  v91 = *(v87 + 256);
  v605 = v89;
  if (!v91)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v581 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v581, &v635, &v629))
    {
      goto LABEL_1099;
    }

    if (v635 == 17)
    {
      v582 = __nwlog_obj();
      v583 = v635;
      if (!os_log_type_enabled(v582, v635))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null http1_connection";
LABEL_1097:
      v601 = v582;
      v602 = v583;
LABEL_1098:
      _os_log_impl(&dword_181A37000, v601, v602, v584, buf, 0xCu);
      goto LABEL_1099;
    }

    if (v629 != 1)
    {
      v582 = __nwlog_obj();
      v583 = v635;
      if (!os_log_type_enabled(v582, v635))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_1097;
    }

    v593 = __nw_create_backtrace_string();
    v594 = __nwlog_obj();
    v595 = v635;
    v596 = os_log_type_enabled(v594, v635);
    if (v593)
    {
      if (v596)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = v593;
        _os_log_impl(&dword_181A37000, v594, v595, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v593);
      goto LABEL_1099;
    }

    if (!v596)
    {
      goto LABEL_1099;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v584 = "%{public}s called with null http1_connection, no backtrace";
LABEL_1110:
    v601 = v594;
    v602 = v595;
    goto LABEL_1098;
  }

  if (!v621)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v581 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v581, &v635, &v629))
    {
      goto LABEL_1099;
    }

    if (v635 == 17)
    {
      v582 = __nwlog_obj();
      v583 = v635;
      if (!os_log_type_enabled(v582, v635))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null length";
      goto LABEL_1097;
    }

    if (v629 != 1)
    {
      v582 = __nwlog_obj();
      v583 = v635;
      if (!os_log_type_enabled(v582, v635))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null length, backtrace limit exceeded";
      goto LABEL_1097;
    }

    v597 = __nw_create_backtrace_string();
    v594 = __nwlog_obj();
    v595 = v635;
    v598 = os_log_type_enabled(v594, v635);
    if (v597)
    {
      if (!v598)
      {
        goto LABEL_1078;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v597;
      v599 = "%{public}s called with null length, dumping backtrace:%{public}s";
      goto LABEL_1077;
    }

    if (!v598)
    {
      goto LABEL_1099;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v584 = "%{public}s called with null length, no backtrace";
    goto LABEL_1110;
  }

  v620 = *(v91 + 32);
  if (!v620)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v581 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (!__nwlog_fault(v581, &v635, &v629))
    {
      goto LABEL_1099;
    }

    if (v635 == 17)
    {
      v582 = __nwlog_obj();
      v583 = v635;
      if (!os_log_type_enabled(v582, v635))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null output_handler";
      goto LABEL_1097;
    }

    if (v629 != 1)
    {
      v582 = __nwlog_obj();
      v583 = v635;
      if (!os_log_type_enabled(v582, v635))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null output_handler, backtrace limit exceeded";
      goto LABEL_1097;
    }

    v597 = __nw_create_backtrace_string();
    v594 = __nwlog_obj();
    v595 = v635;
    v600 = os_log_type_enabled(v594, v635);
    if (v597)
    {
      if (!v600)
      {
        goto LABEL_1078;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v597;
      v599 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
LABEL_1077:
      _os_log_impl(&dword_181A37000, v594, v595, v599, buf, 0x16u);
LABEL_1078:
      free(v597);
      if (!v581)
      {
        goto LABEL_1101;
      }

      goto LABEL_1100;
    }

    if (v600)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v584 = "%{public}s called with null output_handler, no backtrace";
      goto LABEL_1110;
    }

LABEL_1099:
    if (!v581)
    {
LABEL_1101:
      LODWORD(v90) = 0;
      v6 = v615;
      goto LABEL_364;
    }

LABEL_1100:
    free(v581);
    goto LABEL_1101;
  }

  v603 = v87;
  v613 = v621;
  v619 = *(v87 + 256);
  if ((*(v91 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v585 = __nwlog_obj();
    if (os_log_type_enabled(v585, OS_LOG_TYPE_DEBUG))
    {
      v586 = *(v91 + 488);
      v587 = *(*(v91 + 480) + 372);
      v588 = *(v91 + 860);
      if (v586)
      {
        LODWORD(v586) = *(v586 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v91 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v587;
      *&v626[4] = 1024;
      *&v626[6] = v588;
      *v627 = 1024;
      *&v627[2] = v586;
      *&v627[6] = 1024;
      v90 = v613;
      *&v627[8] = v613;
      _os_log_impl(&dword_181A37000, v585, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending %u bytes", buf, 0x38u);
    }
  }

  v611 = v91 + 74;
  v92 = v89;
  v93 = v90;
  while (1)
  {
    __buf = 0;
    p_buf = &__buf;
    v623 = 0;
    v624 = &v623;
    output_frames = nw_protocol_get_output_frames(v620, v91, 1, v90, 0xFFFFFFFFLL, &__buf);
    v98 = __buf;
    if (!__buf || output_frames == 0)
    {
      break;
    }

    while (1)
    {
      v100 = *(v98 + 32);
      if (v100 || *(v98 + 40))
      {
        v101 = *(v98 + 112);
        if (!v101)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v100 = 0;
        v101 = *(v98 + 112);
        if (!v101)
        {
          goto LABEL_236;
        }
      }

      if ((*(v98 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v98, *(v98 + 88)))
      {
        LODWORD(v101) = 0;
LABEL_236:
        v103 = 0;
        goto LABEL_237;
      }

      LODWORD(v101) = *(v98 + 52);
      v102 = *(v98 + 56);
      if (v101)
      {
        LODWORD(v101) = v101 - (v102 + *(v98 + 60));
      }

      v103 = (*(v98 + 112) + v102);
LABEL_237:
      v104 = v101 >= v93 ? v93 : v101;
      memcpy(v103, v92, v104);
      v93 -= v104;
      v92 += v104;
      if (!nw_frame_claim(v98, v105, v104, 0))
      {
        break;
      }

      nw_frame_collapse(v98);
      nw_frame_unclaim(v98, v106, v104, 0);
      v107 = *(v98 + 32);
      v108 = *(v98 + 40);
      p_p_buf = (v107 + 40);
      if (!v107)
      {
        p_p_buf = &p_buf;
      }

      *p_p_buf = v108;
      *v108 = v107;
      v110 = v624;
      *(v98 + 32) = 0;
      *(v98 + 40) = v110;
      *v110 = v98;
      v624 = (v98 + 32);
      if (v100)
      {
        v98 = v100;
        if (v93)
        {
          continue;
        }
      }

      goto LABEL_263;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_send_bytes";
    *&buf[12] = 1024;
    *&buf[14] = v104;
    v111 = _os_log_send_and_compose_impl();
    LOBYTE(v629) = 16;
    v622 = 0;
    if (!__nwlog_fault(v111, &v629, &v622))
    {
      goto LABEL_261;
    }

    if (v629 == 17)
    {
      v112 = __nwlog_obj();
      v113 = v629;
      if (os_log_type_enabled(v112, v629))
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v104;
        v114 = v112;
        v115 = v113;
        v116 = "%{public}s claiming frame with %u bytes failed";
        goto LABEL_260;
      }

      goto LABEL_261;
    }

    if (v622 != 1)
    {
      v120 = __nwlog_obj();
      v121 = v629;
      if (!os_log_type_enabled(v120, v629))
      {
        goto LABEL_261;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 1024;
      *&buf[14] = v104;
      v114 = v120;
      v115 = v121;
      v116 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
      goto LABEL_260;
    }

    v117 = __nw_create_backtrace_string();
    v118 = __nwlog_obj();
    type = v629;
    v119 = os_log_type_enabled(v118, v629);
    if (v117)
    {
      if (v119)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v104;
        *&buf[18] = 2082;
        *&buf[20] = v117;
        _os_log_impl(&dword_181A37000, v118, type, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v117);
      goto LABEL_261;
    }

    if (v119)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 1024;
      *&buf[14] = v104;
      v114 = v118;
      v115 = type;
      v116 = "%{public}s claiming frame with %u bytes failed, no backtrace";
LABEL_260:
      _os_log_impl(&dword_181A37000, v114, v115, v116, buf, 0x12u);
    }

LABEL_261:
    if (v111)
    {
      free(v111);
    }

LABEL_263:
    v122 = v624[1];
    v123 = *v122;
    if (*v122)
    {
      nw_frame_set_metadata(*v122, 0, 0, v616);
      if (v616)
      {
        if ((*(v619 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v130 = __nwlog_obj();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
          {
            v131 = *(v619 + 488);
            if (v131)
            {
              LODWORD(v131) = *(v131 + 424);
            }

            v132 = *(*(v619 + 480) + 372);
            v133 = *(v619 + 860);
            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_send_bytes";
            *&buf[12] = 2082;
            *&buf[14] = v611;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *v626 = v132;
            *&v626[4] = 1024;
            *&v626[6] = v133;
            *v627 = 1024;
            *&v627[2] = v131;
            *&v627[6] = 2048;
            *&v627[8] = v123;
            _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> setting complete on last output frame %p", buf, 0x3Cu);
          }
        }
      }
    }

    nw_protocol_finalize_output_frames(v620, &v623);
    v90 = v613;
    v91 = v619;
    if (__buf)
    {
      v629 = 0;
      v630 = &v629;
      v631 = 0x2000000000;
      v632 = 0;
      v635 = MEMORY[0x1E69E9820];
      v636 = 0x40000000;
      v637 = ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke;
      v638 = &unk_1E6A32B10;
      v639 = &v629;
      do
      {
        v124 = __buf;
        if (!__buf)
        {
          break;
        }

        v125 = *(__buf + 32);
        v126 = *(__buf + 40);
        v127 = (v125 + 40);
        if (!v125)
        {
          v127 = &p_buf;
        }

        *v127 = v126;
        *v126 = v125;
        *(v124 + 32) = 0;
        *(v124 + 40) = 0;
      }

      while ((v637(&v635) & 1) != 0);
      if ((*(v619 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v128 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v129 = *(v619 + 488);
          if (v129)
          {
            LODWORD(v129) = *(v129 + 424);
          }

          v94 = *(*(v619 + 480) + 372);
          v95 = *(v619 + 860);
          v96 = *(v630 + 6);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_send_bytes";
          *&buf[12] = 2082;
          *&buf[14] = v611;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *v626 = v94;
          *&v626[4] = 1024;
          *&v626[6] = v95;
          *v627 = 1024;
          *&v627[2] = v129;
          *&v627[6] = 1024;
          *&v627[8] = v96;
          _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to use %u frames, marking as failed", buf, 0x38u);
        }
      }

      _Block_object_dispose(&v629, 8);
    }

    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    if (!v93)
    {
      v6 = v615;
      goto LABEL_364;
    }
  }

  v6 = v615;
  if (output_frames)
  {
    v151 = output_frames;
    __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_send_bytes";
    *&buf[12] = 1024;
    v152 = v151;
    *&buf[14] = v151;
    v153 = _os_log_send_and_compose_impl();
    LOBYTE(v629) = 16;
    v622 = 0;
    if (!__nwlog_fault(v153, &v629, &v622))
    {
      goto LABEL_355;
    }

    if (v629 != 17)
    {
      if (v622 == 1)
      {
        v157 = __nw_create_backtrace_string();
        v158 = __nwlog_obj();
        v159 = v629;
        v160 = os_log_type_enabled(v158, v629);
        if (v157)
        {
          if (v160)
          {
            *buf = 136446722;
            *&buf[4] = "nw_http1_connection_send_bytes";
            *&buf[12] = 1024;
            *&buf[14] = v151;
            *&buf[18] = 2082;
            *&buf[20] = v157;
            _os_log_impl(&dword_181A37000, v158, v159, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v157);
          v6 = v615;
          goto LABEL_355;
        }

        v6 = v615;
        if (!v160)
        {
          goto LABEL_355;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v151;
        v156 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
        v172 = v158;
        v173 = v159;
      }

      else
      {
        v154 = __nwlog_obj();
        v155 = v629;
        if (!os_log_type_enabled(v154, v629))
        {
          goto LABEL_355;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v152;
        v156 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
LABEL_353:
        v172 = v154;
        v173 = v155;
      }

      _os_log_impl(&dword_181A37000, v172, v173, v156, buf, 0x12u);
      goto LABEL_355;
    }

    v154 = __nwlog_obj();
    v155 = v629;
    if (os_log_type_enabled(v154, v629))
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 1024;
      *&buf[14] = v152;
      v156 = "%{public}s output handler reported %u frames to write, but array is empty";
      goto LABEL_353;
    }

LABEL_355:
    if (v153)
    {
      free(v153);
    }

    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    LODWORD(v90) = v613;
  }

  v87 = v603;
  if ((*(v619 + 158) & 1) == 0)
  {
    v174 = __nwlog_obj();
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
    {
      v175 = *(v619 + 488);
      v176 = *(*(v619 + 480) + 372);
      v177 = *(v619 + 860);
      if (v175)
      {
        LODWORD(v175) = *(v175 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v611;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v176;
      *&v626[4] = 1024;
      *&v626[6] = v177;
      *v627 = 1024;
      *&v627[2] = v175;
      *&v627[6] = 1024;
      *&v627[8] = v90;
      _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
    }
  }

  LODWORD(v90) = v90 - v93;
LABEL_364:
  v90 = v90;
  v89 = v605;
  if (v621 == v90)
  {
LABEL_365:
    nw_http_transaction_metadata_increment_outbound_header_size(*(v87 + 352), v90);
    v178 = *(v87 + 428);
    if ((v178 & 0x1000) != 0)
    {
      *buf = 0;
      nw::retained_ptr<nw_endpoint *>::operator=(v87 + 384, buf);
    }

    else
    {
      *(v87 + 428) = v178 | 4;
      if (v616)
      {
        *(v87 + 428) = v178 | 0x804;
        *(*(v87 + 256) + 872) |= 0x20u;
        nw_http_transaction_metadata_mark_outbound_message_end(*(v87 + 352));
        if (*(v87 + 168) == 1 && *(v87 + 160) != *(v87 + 176))
        {
          if ((*(v87 + 158) & 1) == 0)
          {
            v179 = __nwlog_obj();
            if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
            {
              v180 = *(v87 + 256);
              if (v180)
              {
                LODWORD(v180) = *(v180 + 860);
              }

              v181 = *(*(v87 + 248) + 372);
              v182 = *(v87 + 424);
              if (*(v87 + 168) == 1)
              {
                v183 = *(v87 + 160);
              }

              else
              {
                v183 = -1;
              }

              v204 = *(v87 + 176);
              *buf = 136448002;
              *&buf[4] = "nw_http1_stream_send_outbound_headers";
              *&buf[12] = 2082;
              *&buf[14] = v87 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *v626 = v181;
              *&v626[4] = 1024;
              *&v626[6] = v180;
              *v627 = 1024;
              *&v627[2] = v182;
              *&v627[6] = 2048;
              *&v627[8] = v183;
              *&v627[16] = 2048;
              v628 = v204;
              _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
            }
          }

          nw_protocol_error(*(v87 + 48), v87);
          nw_protocol_disconnected(*(v87 + 48), v87);
        }
      }
    }
  }

  else if ((*(v87 + 158) & 1) == 0)
  {
    v184 = __nwlog_obj();
    if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
    {
      v185 = *(v87 + 256);
      v186 = *(*(v87 + 248) + 372);
      if (v185)
      {
        LODWORD(v185) = *(v185 + 860);
      }

      v187 = *(v87 + 424);
      *buf = 136447746;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      *&buf[12] = 2082;
      *&buf[14] = v87 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v186;
      *&v626[4] = 1024;
      *&v626[6] = v185;
      *v627 = 1024;
      *&v627[2] = v187;
      *&v627[6] = 2048;
      *&v627[8] = v621;
      _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to send outbound headers of length %zu", buf, 0x3Cu);
    }
  }

LABEL_415:
  if (v89)
  {
LABEL_416:
    free(v89);
  }

LABEL_417:
  if (!nw_frame_unclaimed_length(a1))
  {
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    nw_frame_cache_return_frame(v6 + 696, a1);
    goto LABEL_751;
  }

  v12 = v604;
  if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v508 = __nwlog_obj();
    v12 = v604;
    if (os_log_type_enabled(v508, OS_LOG_TYPE_DEBUG))
    {
      v509 = *(v6 + 488);
      v510 = *(*(v6 + 480) + 372);
      v511 = *(v6 + 860);
      if (v509)
      {
        LODWORD(v509) = *(v509 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_enqueue_outbound_frame";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v510;
      *&v626[4] = 1024;
      *&v626[6] = v511;
      *v627 = 1024;
      *&v627[2] = v509;
      *&v627[6] = 2048;
      *&v627[8] = a1;
      _os_log_impl(&dword_181A37000, v508, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> enqueuing outbound frame %p", buf, 0x3Cu);
      v6 = v615;
      v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v12 = v604;
    }
  }

LABEL_420:
  *(a1 + 4) = 0;
  v205 = *(v6 + 656);
  *(a1 + 5) = v205;
  *v205 = a1;
  *(v6 + 656) = a1 + 32;
  if ((*(*(v6 + 488) + 428) & 4) == 0)
  {
    goto LABEL_771;
  }

  if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v492 = __nwlog_obj();
    if (os_log_type_enabled(v492, OS_LOG_TYPE_DEBUG))
    {
      v493 = *(v6 + 488);
      v494 = *(*(v6 + 480) + 372);
      v495 = *(v6 + 860);
      if (v493)
      {
        LODWORD(v493) = *(v493 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v626 = v494;
      *&v626[4] = 1024;
      *&v626[6] = v495;
      *v627 = 1024;
      *&v627[2] = v493;
      _os_log_impl(&dword_181A37000, v492, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining pending outbound frames", buf, 0x32u);
      v6 = v615;
      v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }
  }

  if (*(v6 + 480))
  {
    v604 = v12;
    if (!*(v6 + 488))
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v496 = _os_log_send_and_compose_impl();
      LOBYTE(v635) = 16;
      LOBYTE(v629) = 0;
      if (!__nwlog_fault(v496, &v635, &v629))
      {
        goto LABEL_1084;
      }

      if (v635 == 17)
      {
        v497 = __nwlog_obj();
        v498 = v635;
        if (os_log_type_enabled(v497, v635))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          v499 = "%{public}s called with null http1_connection->current_stream";
          goto LABEL_1082;
        }

        goto LABEL_1084;
      }

      if (v629 != 1)
      {
        v497 = __nwlog_obj();
        v498 = v635;
        if (os_log_type_enabled(v497, v635))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          v499 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
          goto LABEL_1082;
        }

        goto LABEL_1084;
      }

      v504 = __nw_create_backtrace_string();
      v505 = __nwlog_obj();
      v506 = v635;
      v507 = os_log_type_enabled(v505, v635);
      if (v504)
      {
        if (v507)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = v504;
          _os_log_impl(&dword_181A37000, v505, v506, "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v504);
        goto LABEL_1084;
      }

      if (!v507)
      {
        goto LABEL_1084;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v499 = "%{public}s called with null http1_connection->current_stream, no backtrace";
      goto LABEL_1022;
    }

    v206 = (v6 + 648);
    v207 = *(v6 + 648);
    if (!v207)
    {
      goto LABEL_769;
    }

    v612 = (v6 + 656);
    v614 = v6 + 74;
    *typea = v6 + 648;
    while (2)
    {
      while (2)
      {
        v208 = *(v207 + 32);
        v209 = *(v207 + 40);
        v210 = (v208 + 40);
        if (!v208)
        {
          v210 = v612;
        }

        *v210 = v209;
        *v209 = v208;
        *(v207 + 32) = 0;
        *(v207 + 40) = 0;
        if (!*(v207 + 112) || (*(v207 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v207, *(v207 + 88)))
        {
          v213 = 0;
          v214 = 0;
        }

        else
        {
          v212 = *(v207 + 52);
          v211 = *(v207 + 56);
          if (v212)
          {
            v213 = (v212 - (v211 + *(v207 + 60)));
          }

          else
          {
            v213 = 0;
          }

          v214 = (*(v207 + 112) + v211);
        }

        if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
        {
          v354 = __nwlog_obj();
          if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
          {
            v355 = *(v6 + 488);
            if (v355)
            {
              LODWORD(v355) = *(v355 + 424);
            }

            v356 = *(*(v6 + 480) + 372);
            v357 = *(v6 + 860);
            *buf = 136448002;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2082;
            *&buf[14] = v614;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *v626 = v356;
            *&v626[4] = 1024;
            *&v626[6] = v357;
            *v627 = 1024;
            *&v627[2] = v355;
            *&v627[6] = 2048;
            *&v627[8] = v207;
            *&v627[16] = 1024;
            LODWORD(v628) = v213;
            _os_log_impl(&dword_181A37000, v354, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining frame %p with length %u", buf, 0x42u);
          }
        }

        if (!v214 || !v213)
        {
          goto LABEL_427;
        }

        if ((*(*(v6 + 488) + 428) & 0x200) == 0)
        {
          goto LABEL_444;
        }

        if ((*(v207 + 204) & 4) == 0)
        {
          v224 = v206;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2048;
          v225 = v207;
          *&buf[14] = v207;
          v226 = _os_log_send_and_compose_impl();
          LOBYTE(v635) = 16;
          LOBYTE(v629) = 0;
          if (!__nwlog_fault(v226, &v635, &v629))
          {
            goto LABEL_597;
          }

          if (v635 == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v227 = gLogObj;
            v228 = v635;
            if (os_log_type_enabled(gLogObj, v635))
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_drain_outbound_frames";
              *&buf[12] = 2048;
              *&buf[14] = v225;
              v229 = v227;
              v230 = v228;
              v231 = "%{public}s frame %p has no metadata";
              goto LABEL_596;
            }

LABEL_597:
            if (v226)
            {
              free(v226);
            }

            v207 = v225;
            v206 = v224;
            if (!v225)
            {
              goto LABEL_769;
            }

            continue;
          }

          if (v629 == 1)
          {
            v290 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v291 = gLogObj;
            v292 = v635;
            v293 = os_log_type_enabled(gLogObj, v635);
            if (v290)
            {
              if (v293)
              {
                *buf = 136446722;
                *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                *&buf[12] = 2048;
                *&buf[14] = v225;
                *&buf[22] = 2082;
                *&buf[24] = v290;
                _os_log_impl(&dword_181A37000, v291, v292, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v290);
              goto LABEL_597;
            }

            if (!v293)
            {
              goto LABEL_597;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2048;
            *&buf[14] = v225;
            v229 = v291;
            v230 = v292;
            v231 = "%{public}s frame %p has no metadata, no backtrace";
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v298 = gLogObj;
            v299 = v635;
            if (!os_log_type_enabled(gLogObj, v635))
            {
              goto LABEL_597;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2048;
            *&buf[14] = v225;
            v229 = v298;
            v230 = v299;
            v231 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
          }

LABEL_596:
          _os_log_impl(&dword_181A37000, v229, v230, v231, buf, 0x16u);
          goto LABEL_597;
        }

        break;
      }

      if (*(v207 + 216))
      {
        goto LABEL_444;
      }

      nw_frame_unclaim(v207, a2, 0xAu, 7u);
      v285 = *(v207 + 112);
      if (!v285)
      {
        goto LABEL_556;
      }

      if ((*(v207 + 204) & 0x100) != 0 && g_channel_check_validity)
      {
        if (g_channel_check_validity(v207, *(v207 + 88)))
        {
          v285 = *(v207 + 112);
          goto LABEL_540;
        }

LABEL_556:
        v286 = 0;
        v287 = *(v207 + 64);
        if (!v287)
        {
LABEL_557:
          v288 = v213;
          v289 = 0;
          goto LABEL_558;
        }
      }

      else
      {
LABEL_540:
        v286 = v285 + *(v207 + 56);
        v287 = *(v207 + 64);
        if (!v287)
        {
          goto LABEL_557;
        }
      }

      v288 = v213;
      v289 = (*(v287 + 66) >> 6) & 1;
LABEL_558:
      v302 = -1;
      v303 = v288;
      do
      {
        v304 = v302++;
        v305 = v303 > 0xF;
        v303 >>= 4;
      }

      while (v305);
      if (v286)
      {
        v306 = (v286 + v302);
        *(v306 + 1) = 2573;
        v307 = v288;
        do
        {
          if ((v307 & 0xF) >= 0xA)
          {
            v308 = (v307 & 0xF) + 55;
          }

          else
          {
            v308 = v307 & 0xF | 0x30;
          }

          *v306-- = v308;
          v305 = v307 > 0xF;
          v307 >>= 4;
        }

        while (v305);
        goto LABEL_566;
      }

      v610 = v207;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_write_chunk_header";
      v391 = _os_log_send_and_compose_impl();
      LOBYTE(v635) = 16;
      LOBYTE(v629) = 0;
      if (!__nwlog_fault(v391, &v635, &v629))
      {
        goto LABEL_741;
      }

      if (v635 == 17)
      {
        v392 = __nwlog_obj();
        v393 = v635;
        if (os_log_type_enabled(v392, v635))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_write_chunk_header";
          v394 = v392;
          v395 = v393;
          v396 = "%{public}s called with null buffer";
          goto LABEL_740;
        }

        goto LABEL_741;
      }

      if (v629 != 1)
      {
        v416 = __nwlog_obj();
        v417 = v635;
        if (!os_log_type_enabled(v416, v635))
        {
          goto LABEL_741;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_write_chunk_header";
        v394 = v416;
        v395 = v417;
        v396 = "%{public}s called with null buffer, backtrace limit exceeded";
LABEL_740:
        _os_log_impl(&dword_181A37000, v394, v395, v396, buf, 0xCu);
        goto LABEL_741;
      }

      v404 = __nw_create_backtrace_string();
      v405 = __nwlog_obj();
      v406 = v635;
      v407 = os_log_type_enabled(v405, v635);
      if (v404)
      {
        if (v407)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_write_chunk_header";
          *&buf[12] = 2082;
          *&buf[14] = v404;
          _os_log_impl(&dword_181A37000, v405, v406, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v404);
        goto LABEL_741;
      }

      if (v407)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_write_chunk_header";
        v394 = v405;
        v395 = v406;
        v396 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_740;
      }

LABEL_741:
      if (v391)
      {
        free(v391);
      }

      v207 = v610;
LABEL_566:
      v309 = v302 + 3;
      if (v304 == 6)
      {
        v310 = 0;
        v311 = v288;
      }

      else
      {
        v311 = v288;
        memmove((v286 + v309), (v286 + 10), v288);
        v310 = 7 - v302;
      }

      v6 = v615;
      if (v286)
      {
        v312 = v286 + v309 + v311;
        *v312 = 2573;
        if (v289)
        {
          *(v312 + 6) = 10;
          *(v312 + 2) = 218762544;
          goto LABEL_572;
        }

        goto LABEL_578;
      }

      v397 = v207;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_write_chunk_trailer";
      v398 = _os_log_send_and_compose_impl();
      LOBYTE(v635) = 16;
      LOBYTE(v629) = 0;
      if (__nwlog_fault(v398, &v635, &v629))
      {
        if (v635 != 17)
        {
          if (v629 == 1)
          {
            v408 = __nw_create_backtrace_string();
            v409 = __nwlog_obj();
            v410 = v635;
            v411 = os_log_type_enabled(v409, v635);
            if (v408)
            {
              if (v411)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                *&buf[12] = 2082;
                *&buf[14] = v408;
                _os_log_impl(&dword_181A37000, v409, v410, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v408);
              goto LABEL_747;
            }

            if (!v411)
            {
              goto LABEL_747;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            v401 = v409;
            v402 = v410;
            v403 = "%{public}s called with null buffer, no backtrace";
          }

          else
          {
            v418 = __nwlog_obj();
            v419 = v635;
            if (!os_log_type_enabled(v418, v635))
            {
              goto LABEL_747;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            v401 = v418;
            v402 = v419;
            v403 = "%{public}s called with null buffer, backtrace limit exceeded";
          }

LABEL_746:
          _os_log_impl(&dword_181A37000, v401, v402, v403, buf, 0xCu);
          goto LABEL_747;
        }

        v399 = __nwlog_obj();
        v400 = v635;
        if (os_log_type_enabled(v399, v635))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_write_chunk_trailer";
          v401 = v399;
          v402 = v400;
          v403 = "%{public}s called with null buffer";
          goto LABEL_746;
        }
      }

LABEL_747:
      if (v398)
      {
        free(v398);
      }

      v6 = v615;
      v207 = v397;
LABEL_572:
      v313 = v289 ^ 1;
      if (*(v6 + 872) >= 0)
      {
        v313 = 1;
      }

      if ((v313 & 1) == 0)
      {
        if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v412 = __nwlog_obj();
          if (os_log_type_enabled(v412, OS_LOG_TYPE_DEBUG))
          {
            v413 = *(v6 + 488);
            if (v413)
            {
              LODWORD(v413) = *(v413 + 424);
            }

            v6 = v615;
            v414 = *(*(v615 + 480) + 372);
            v415 = *(v615 + 860);
            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2082;
            *&buf[14] = v614;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *v626 = v414;
            *&v626[4] = 1024;
            *&v626[6] = v415;
            *v627 = 1024;
            *&v627[2] = v413;
            *&v627[6] = 2048;
            *&v627[8] = v207;
            _os_log_impl(&dword_181A37000, v412, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> pending final chunk written to frame %p", buf, 0x3Cu);
          }
        }

        *(v6 + 872) &= ~0x8000u;
      }

LABEL_578:
      if (v289)
      {
        v314 = 0;
      }

      else
      {
        v314 = 5;
      }

      v315 = v310 + v314;
      if (!__CFADD__(v310, v314))
      {
        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v322 = *typea;
        v213 = v288;
        if (!v315)
        {
LABEL_630:
          if (*(v207 + 112))
          {
            v206 = v322;
            if ((*(v207 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v207, *(v207 + 88)))
            {
              v213 = 0;
              v214 = 0;
              if ((*(v207 + 204) & 4) == 0)
              {
                goto LABEL_640;
              }
            }

            else
            {
              v339 = *(v207 + 52);
              v338 = *(v207 + 56);
              if (v339)
              {
                v213 = (v339 - (v338 + *(v207 + 60)));
              }

              else
              {
                v213 = 0;
              }

              v214 = (*(v207 + 112) + v338);
              if ((*(v207 + 204) & 4) == 0)
              {
LABEL_640:
                v618 = v213;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                *buf = 136446466;
                *&buf[4] = "nw_http1_frame_metadata_reset";
                *&buf[12] = 2048;
                v341 = v207;
                *&buf[14] = v207;
                v342 = _os_log_send_and_compose_impl();
                LOBYTE(v635) = 16;
                LOBYTE(v629) = 0;
                if (!__nwlog_fault(v342, &v635, &v629))
                {
                  goto LABEL_654;
                }

                if (v635 != 17)
                {
                  if (v629 == 1)
                  {
                    v348 = __nw_create_backtrace_string();
                    v349 = __nwlog_obj();
                    v350 = v635;
                    v351 = os_log_type_enabled(v349, v635);
                    if (v348)
                    {
                      if (v351)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_frame_metadata_reset";
                        *&buf[12] = 2048;
                        *&buf[14] = v341;
                        *&buf[22] = 2082;
                        *&buf[24] = v348;
                        _os_log_impl(&dword_181A37000, v349, v350, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v348);
                      goto LABEL_654;
                    }

                    if (!v351)
                    {
                      goto LABEL_654;
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http1_frame_metadata_reset";
                    *&buf[12] = 2048;
                    *&buf[14] = v341;
                    v345 = v349;
                    v346 = v350;
                    v347 = "%{public}s frame %p has no metadata, no backtrace";
                  }

                  else
                  {
                    v352 = __nwlog_obj();
                    v353 = v635;
                    if (!os_log_type_enabled(v352, v635))
                    {
                      goto LABEL_654;
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http1_frame_metadata_reset";
                    *&buf[12] = 2048;
                    *&buf[14] = v341;
                    v345 = v352;
                    v346 = v353;
                    v347 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
                  }

LABEL_653:
                  _os_log_impl(&dword_181A37000, v345, v346, v347, buf, 0x16u);
                  goto LABEL_654;
                }

                v343 = __nwlog_obj();
                v344 = v635;
                if (os_log_type_enabled(v343, v635))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_frame_metadata_reset";
                  *&buf[12] = 2048;
                  *&buf[14] = v341;
                  v345 = v343;
                  v346 = v344;
                  v347 = "%{public}s frame %p has no metadata";
                  goto LABEL_653;
                }

LABEL_654:
                if (v342)
                {
                  free(v342);
                }

                v207 = v341;
                v213 = v618;
                v206 = v322;
LABEL_444:
                v215 = *(v207 + 64);
                if (!v215)
                {
                  goto LABEL_459;
                }

                if ((*(v215 + 66) & 0x40) != 0 && (*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
                {
                  v381 = __nwlog_obj();
                  if (os_log_type_enabled(v381, OS_LOG_TYPE_DEBUG))
                  {
                    v382 = *(v6 + 488);
                    if (v382)
                    {
                      LODWORD(v382) = *(v382 + 424);
                    }

                    v6 = v615;
                    v383 = *(*(v615 + 480) + 372);
                    v384 = *(v615 + 860);
                    *buf = 136447746;
                    *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v614;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *v626 = v383;
                    *&v626[4] = 1024;
                    *&v626[6] = v384;
                    *v627 = 1024;
                    *&v627[2] = v382;
                    *&v627[6] = 2048;
                    *&v627[8] = v207;
                    _os_log_impl(&dword_181A37000, v381, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining output frame %p, complete", buf, 0x3Cu);
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v206 = *typea;
                  }
                }

                v216 = *(v207 + 64);
                if (v216)
                {
                  v617 = (*(v216 + 66) >> 6) & 1;
                  v608 = v207;
                  if (!v214)
                  {
                    goto LABEL_450;
                  }

LABEL_460:
                  if (v213)
                  {
                    v232 = *(v6 + 32);
                    if (v232)
                    {
                      if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
                      {
                        v362 = __nwlog_obj();
                        if (os_log_type_enabled(v362, OS_LOG_TYPE_DEBUG))
                        {
                          v363 = *(v6 + 488);
                          if (v363)
                          {
                            LODWORD(v363) = *(v363 + 424);
                          }

                          v364 = *(*(v6 + 480) + 372);
                          v365 = *(v6 + 860);
                          *buf = 136447746;
                          *&buf[4] = "nw_http1_connection_send_bytes";
                          *&buf[12] = 2082;
                          *&buf[14] = v614;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *v626 = v364;
                          *&v626[4] = 1024;
                          *&v626[6] = v365;
                          *v627 = 1024;
                          *&v627[2] = v363;
                          *&v627[6] = 1024;
                          *&v627[8] = v213;
                          _os_log_impl(&dword_181A37000, v362, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending %u bytes", buf, 0x38u);
                        }
                      }

                      v233 = v213;
LABEL_468:
                      __buf = 0;
                      p_buf = &__buf;
                      v623 = 0;
                      v624 = &v623;
                      v237 = v213;
                      v238 = nw_protocol_get_output_frames(v232, v6, 1, v213, 0xFFFFFFFFLL, &__buf);
                      v239 = __buf;
                      if (__buf)
                      {
                        v240 = v238 == 0;
                      }

                      else
                      {
                        v240 = 1;
                      }

                      if (v240)
                      {
                        if (v238)
                        {
                          v276 = v238;
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_connection_send_bytes";
                          *&buf[12] = 1024;
                          v277 = v276;
                          *&buf[14] = v276;
                          v278 = _os_log_send_and_compose_impl();
                          LOBYTE(v629) = 16;
                          LOBYTE(v621) = 0;
                          if (!__nwlog_fault(v278, &v629, &v621))
                          {
                            goto LABEL_604;
                          }

                          if (v629 != 17)
                          {
                            if (v621 == 1)
                            {
                              v294 = __nw_create_backtrace_string();
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v295 = gLogObj;
                              v296 = v629;
                              v297 = os_log_type_enabled(gLogObj, v629);
                              if (v294)
                              {
                                if (v297)
                                {
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_connection_send_bytes";
                                  *&buf[12] = 1024;
                                  *&buf[14] = v276;
                                  *&buf[18] = 2082;
                                  *&buf[20] = v294;
                                  _os_log_impl(&dword_181A37000, v295, v296, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v294);
                                goto LABEL_604;
                              }

                              if (!v297)
                              {
                                goto LABEL_604;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v276;
                              v281 = v295;
                              v282 = v296;
                              v283 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                            }

                            else
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v300 = gLogObj;
                              v301 = v629;
                              if (!os_log_type_enabled(gLogObj, v629))
                              {
                                goto LABEL_604;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v277;
                              v281 = v300;
                              v282 = v301;
                              v283 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
                            }

LABEL_603:
                            _os_log_impl(&dword_181A37000, v281, v282, v283, buf, 0x12u);
                            goto LABEL_604;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v279 = gLogObj;
                          v280 = v629;
                          if (os_log_type_enabled(gLogObj, v629))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 1024;
                            *&buf[14] = v277;
                            v281 = v279;
                            v282 = v280;
                            v283 = "%{public}s output handler reported %u frames to write, but array is empty";
                            goto LABEL_603;
                          }

LABEL_604:
                          if (v278)
                          {
                            free(v278);
                          }
                        }

                        v206 = *typea;
                        LODWORD(v213) = v237;
                        if ((*(v6 + 158) & 1) == 0)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v327 = gLogObj;
                          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                          {
                            v328 = *(v6 + 488);
                            if (v328)
                            {
                              LODWORD(v328) = *(v328 + 424);
                            }

                            v329 = *(*(v6 + 480) + 372);
                            v330 = *(v6 + 860);
                            *buf = 136447746;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 2082;
                            *&buf[14] = v614;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *v626 = v329;
                            *&v626[4] = 1024;
                            *&v626[6] = v330;
                            *v627 = 1024;
                            *&v627[2] = v328;
                            *&v627[6] = 1024;
                            *&v627[8] = v237;
                            _os_log_impl(&dword_181A37000, v327, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                          }
                        }

                        v331 = v237 - v233;
                        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        if (v331 == v237)
                        {
LABEL_612:
                          nw_http_transaction_metadata_increment_outbound_body_transfer_size(*(*(v6 + 488) + 352), v213);
                          v332 = *(v6 + 488);
                          v333 = *(v332 + 176);
                          *(v332 + 176) = v333 + v213;
                          if (__CFADD__(v333, v213))
                          {
                            if (BYTE1(v7[82].isa) == 1)
                            {
                              v379 = __nwlog_obj();
                              if (os_log_type_enabled(v379, OS_LOG_TYPE_DEBUG))
                              {
                                v380 = *(v332 + 176);
                                *buf = 136446978;
                                *&buf[4] = "increment_outbound_body_size";
                                *&buf[12] = 2082;
                                *&buf[14] = "outbound_body_size";
                                *&buf[22] = 2048;
                                *&buf[24] = v213;
                                *&buf[32] = 2048;
                                *v626 = v380;
                                _os_log_impl(&dword_181A37000, v379, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                              }
                            }

                            *(v332 + 176) = -1;
                          }

                          v207 = v608;
                          v334 = *(v608 + 64);
                          if (v334)
                          {
                            if ((*(v334 + 66) & 0x40) != 0)
                            {
                              *(*(v6 + 488) + 428) |= 0x800u;
                              *(v6 + 872) |= 0x20u;
                              nw_http_transaction_metadata_mark_outbound_message_end(*(*(v6 + 488) + 352));
                              v335 = *(v6 + 488);
                              if (*(v335 + 168) == 1 && *(v335 + 160) != *(v335 + 176))
                              {
                                if ((*(v335 + 158) & 1) == 0)
                                {
                                  v426 = __nwlog_obj();
                                  v427 = os_log_type_enabled(v426, OS_LOG_TYPE_ERROR);
                                  v335 = *(v6 + 488);
                                  if (v427)
                                  {
                                    v428 = *(v335 + 256);
                                    if (v428)
                                    {
                                      LODWORD(v428) = *(v428 + 860);
                                    }

                                    v429 = *(*(v335 + 248) + 372);
                                    v430 = *(v335 + 424);
                                    if (*(v335 + 168) == 1)
                                    {
                                      v431 = *(v335 + 160);
                                    }

                                    else
                                    {
                                      v431 = -1;
                                    }

                                    v432 = *(v335 + 176);
                                    *buf = 136448002;
                                    *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v335 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *v626 = v429;
                                    *&v626[4] = 1024;
                                    *&v626[6] = v428;
                                    *v627 = 1024;
                                    *&v627[2] = v430;
                                    *&v627[6] = 2048;
                                    *&v627[8] = v431;
                                    *&v627[16] = 2048;
                                    v628 = v432;
                                    _os_log_impl(&dword_181A37000, v426, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                    v335 = *(v6 + 488);
                                  }
                                }

                                nw_protocol_error(*(v335 + 48), v335);
                                nw_protocol_disconnected(*(*(v6 + 488) + 48), *(v6 + 488));
                                v424 = v608;
                                v425 = v213;
LABEL_768:
                                nw_frame_claim(v424, v218, v425, 0);
                                nw_frame_array_prepend(v206, 1, v207);
LABEL_769:
                                v433 = *(v6 + 872);
                                v12 = v604;
                                if ((v433 & 0x80000000) == 0 || *v206)
                                {
LABEL_771:
                                  if (v12)
                                  {
                                    goto LABEL_772;
                                  }

                                  return;
                                }

                                *(v6 + 872) = v433 & 0x7FFF;
                                if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
                                {
                                  v564 = __nwlog_obj();
                                  if (os_log_type_enabled(v564, OS_LOG_TYPE_DEBUG))
                                  {
                                    v565 = *(v6 + 488);
                                    v566 = *(*(v6 + 480) + 372);
                                    v567 = *(v6 + 860);
                                    if (v565)
                                    {
                                      LODWORD(v565) = *(v565 + 424);
                                    }

                                    *buf = 136447490;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v6 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *v626 = v566;
                                    *&v626[4] = 1024;
                                    *&v626[6] = v567;
                                    *v627 = 1024;
                                    *&v627[2] = v565;
                                    _os_log_impl(&dword_181A37000, v564, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new frame for final chunk", buf, 0x32u);
                                    v6 = v615;
                                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                                  }
                                }

                                v435 = *(v6 + 32);
                                if (v435)
                                {
                                  v635 = 0;
                                  v636 = &v635;
                                  v436 = nw_protocol_get_output_frames(v435, v6, 5, 5, 1, &v635);
                                  v437 = v436;
                                  v438 = v635;
                                  if (v635 && v436)
                                  {
                                    LODWORD(v629) = 0;
                                    v439 = nw_frame_unclaimed_bytes(v635, &v629);
                                    *v439 = 218762544;
                                    *(v439 + 4) = 10;
                                    if (nw_frame_claim(v438, v440, 5, 0))
                                    {
                                      nw_frame_collapse(v438);
                                      nw_frame_unclaim(v438, v441, 5u, 0);
                                      if (nw_protocol_finalize_output_frames(v435, &v635))
                                      {
                                        *(*(v6 + 488) + 428) |= 0x800u;
                                        *(v6 + 872) |= 0x20u;
                                        nw_http_transaction_metadata_mark_outbound_message_end(*(*(v6 + 488) + 352));
                                        v442 = *(v6 + 488);
                                        if (*(v442 + 168) == 1 && *(v442 + 160) != *(v442 + 176))
                                        {
                                          if ((*(v442 + 158) & 1) == 0)
                                          {
                                            v443 = __nwlog_obj();
                                            v444 = os_log_type_enabled(v443, OS_LOG_TYPE_ERROR);
                                            v442 = *(v6 + 488);
                                            if (v444)
                                            {
                                              v445 = *(v442 + 256);
                                              if (v445)
                                              {
                                                LODWORD(v445) = *(v445 + 860);
                                              }

                                              v446 = *(*(v442 + 248) + 372);
                                              v447 = *(v442 + 424);
                                              if (*(v442 + 168) == 1)
                                              {
                                                v448 = *(v442 + 160);
                                              }

                                              else
                                              {
                                                v448 = -1;
                                              }

                                              v474 = *(v442 + 176);
                                              *buf = 136448002;
                                              *&buf[4] = "nw_http1_connection_send_final_chunk";
                                              *&buf[12] = 2082;
                                              *&buf[14] = v442 + 74;
                                              *&buf[22] = 2080;
                                              *&buf[24] = " ";
                                              *&buf[32] = 1024;
                                              *v626 = v446;
                                              *&v626[4] = 1024;
                                              *&v626[6] = v445;
                                              *v627 = 1024;
                                              *&v627[2] = v447;
                                              *&v627[6] = 2048;
                                              *&v627[8] = v448;
                                              *&v627[16] = 2048;
                                              v628 = v474;
                                              _os_log_impl(&dword_181A37000, v443, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                              v442 = *(v6 + 488);
                                            }
                                          }

                                          nw_protocol_error(*(v442 + 48), v442);
                                          nw_protocol_disconnected(*(*(v6 + 488) + 48), *(v6 + 488));
                                        }
                                      }

                                      goto LABEL_751;
                                    }

                                    __nwlog_obj();
                                    *buf = 136446466;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    *&buf[12] = 1024;
                                    *&buf[14] = 5;
                                    v453 = _os_log_send_and_compose_impl();
                                    LOBYTE(__buf) = 16;
                                    LOBYTE(v623) = 0;
                                    if (__nwlog_fault(v453, &__buf, &v623))
                                    {
                                      if (__buf != 17)
                                      {
                                        if (v623 == 1)
                                        {
                                          v461 = __nw_create_backtrace_string();
                                          v462 = __nwlog_obj();
                                          v463 = __buf;
                                          v464 = os_log_type_enabled(v462, __buf);
                                          if (v461)
                                          {
                                            if (v464)
                                            {
                                              *buf = 136446722;
                                              *&buf[4] = "nw_http1_connection_send_final_chunk";
                                              *&buf[12] = 1024;
                                              *&buf[14] = 5;
                                              *&buf[18] = 2082;
                                              *&buf[20] = v461;
                                              _os_log_impl(&dword_181A37000, v462, v463, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                                            }

                                            free(v461);
                                            goto LABEL_826;
                                          }

                                          if (!v464)
                                          {
                                            goto LABEL_826;
                                          }

                                          *buf = 136446466;
                                          *&buf[4] = "nw_http1_connection_send_final_chunk";
                                          *&buf[12] = 1024;
                                          *&buf[14] = 5;
                                          v456 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                                          v471 = v462;
                                          v472 = v463;
                                        }

                                        else
                                        {
                                          v454 = __nwlog_obj();
                                          v455 = __buf;
                                          if (!os_log_type_enabled(v454, __buf))
                                          {
                                            goto LABEL_826;
                                          }

                                          *buf = 136446466;
                                          *&buf[4] = "nw_http1_connection_send_final_chunk";
                                          *&buf[12] = 1024;
                                          *&buf[14] = 5;
                                          v456 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
LABEL_824:
                                          v471 = v454;
                                          v472 = v455;
                                        }

                                        _os_log_impl(&dword_181A37000, v471, v472, v456, buf, 0x12u);
                                        goto LABEL_826;
                                      }

                                      v454 = __nwlog_obj();
                                      v455 = __buf;
                                      if (os_log_type_enabled(v454, __buf))
                                      {
                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_connection_send_final_chunk";
                                        *&buf[12] = 1024;
                                        *&buf[14] = 5;
                                        v456 = "%{public}s claiming frame with %u bytes failed";
                                        goto LABEL_824;
                                      }
                                    }

LABEL_826:
                                    if (v453)
                                    {
                                      free(v453);
                                    }

LABEL_751:
                                    if (v604)
                                    {
                                      goto LABEL_772;
                                    }

                                    return;
                                  }

                                  if (v436)
                                  {
                                    __nwlog_obj();
                                    *buf = 136446466;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    *&buf[12] = 1024;
                                    *&buf[14] = v437;
                                    v449 = _os_log_send_and_compose_impl();
                                    LOBYTE(v629) = 16;
                                    LOBYTE(__buf) = 0;
                                    if (!__nwlog_fault(v449, &v629, &__buf))
                                    {
                                      goto LABEL_815;
                                    }

                                    if (v629 != 17)
                                    {
                                      if (__buf == 1)
                                      {
                                        v457 = __nw_create_backtrace_string();
                                        v458 = __nwlog_obj();
                                        v459 = v629;
                                        v460 = os_log_type_enabled(v458, v629);
                                        if (v457)
                                        {
                                          if (v460)
                                          {
                                            *buf = 136446722;
                                            *&buf[4] = "nw_http1_connection_send_final_chunk";
                                            *&buf[12] = 1024;
                                            *&buf[14] = v437;
                                            *&buf[18] = 2082;
                                            *&buf[20] = v457;
                                            _os_log_impl(&dword_181A37000, v458, v459, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                          }

                                          free(v457);
                                          goto LABEL_815;
                                        }

                                        if (!v460)
                                        {
                                          goto LABEL_815;
                                        }

                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_connection_send_final_chunk";
                                        *&buf[12] = 1024;
                                        *&buf[14] = v437;
                                        v452 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                                        v465 = v458;
                                        v466 = v459;
                                      }

                                      else
                                      {
                                        v450 = __nwlog_obj();
                                        v451 = v629;
                                        if (!os_log_type_enabled(v450, v629))
                                        {
                                          goto LABEL_815;
                                        }

                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_connection_send_final_chunk";
                                        *&buf[12] = 1024;
                                        *&buf[14] = v437;
                                        v452 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
LABEL_813:
                                        v465 = v450;
                                        v466 = v451;
                                      }

                                      _os_log_impl(&dword_181A37000, v465, v466, v452, buf, 0x12u);
                                      goto LABEL_815;
                                    }

                                    v450 = __nwlog_obj();
                                    v451 = v629;
                                    if (os_log_type_enabled(v450, v629))
                                    {
                                      *buf = 136446466;
                                      *&buf[4] = "nw_http1_connection_send_final_chunk";
                                      *&buf[12] = 1024;
                                      *&buf[14] = v437;
                                      v452 = "%{public}s output handler reported %u frames to write, but array is empty";
                                      goto LABEL_813;
                                    }

LABEL_815:
                                    if (v449)
                                    {
                                      free(v449);
                                    }
                                  }

                                  if ((*(v6 + 158) & 1) == 0)
                                  {
                                    v467 = __nwlog_obj();
                                    if (os_log_type_enabled(v467, OS_LOG_TYPE_DEBUG))
                                    {
                                      v468 = *(v6 + 488);
                                      v469 = *(*(v6 + 480) + 372);
                                      v470 = *(v6 + 860);
                                      if (v468)
                                      {
                                        LODWORD(v468) = *(v468 + 424);
                                      }

                                      *buf = 136447746;
                                      *&buf[4] = "nw_http1_connection_send_final_chunk";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v6 + 74;
                                      *&buf[22] = 2080;
                                      *&buf[24] = " ";
                                      *&buf[32] = 1024;
                                      *v626 = v469;
                                      *&v626[4] = 1024;
                                      *&v626[6] = v470;
                                      *v627 = 1024;
                                      *&v627[2] = v468;
                                      *&v627[6] = 1024;
                                      *&v627[8] = 5;
                                      _os_log_impl(&dword_181A37000, v467, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                                    }
                                  }

                                  goto LABEL_751;
                                }

                                __nwlog_obj();
                                *buf = 136446210;
                                *&buf[4] = "nw_http1_connection_send_final_chunk";
                                v496 = _os_log_send_and_compose_impl();
                                LOBYTE(v635) = 16;
                                LOBYTE(v629) = 0;
                                if (!__nwlog_fault(v496, &v635, &v629))
                                {
                                  goto LABEL_1084;
                                }

                                if (v635 == 17)
                                {
                                  v497 = __nwlog_obj();
                                  v498 = v635;
                                  if (os_log_type_enabled(v497, v635))
                                  {
                                    *buf = 136446210;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    v499 = "%{public}s called with null output_handler";
                                    goto LABEL_1082;
                                  }

LABEL_1084:
                                  if (v496)
                                  {
LABEL_1085:
                                    free(v496);
                                  }

LABEL_1086:
                                  v6 = v615;
                                  v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                                  goto LABEL_751;
                                }

                                if (v629 == 1)
                                {
                                  v589 = __nw_create_backtrace_string();
                                  v505 = __nwlog_obj();
                                  v506 = v635;
                                  v590 = os_log_type_enabled(v505, v635);
                                  if (v589)
                                  {
                                    if (v590)
                                    {
                                      *buf = 136446466;
                                      *&buf[4] = "nw_http1_connection_send_final_chunk";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v589;
                                      _os_log_impl(&dword_181A37000, v505, v506, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                                    }

                                    free(v589);
                                    if (v496)
                                    {
                                      goto LABEL_1085;
                                    }

                                    goto LABEL_1086;
                                  }

                                  if (!v590)
                                  {
                                    goto LABEL_1084;
                                  }

                                  *buf = 136446210;
                                  *&buf[4] = "nw_http1_connection_send_final_chunk";
                                  v499 = "%{public}s called with null output_handler, no backtrace";
LABEL_1022:
                                  v577 = v505;
                                  v578 = v506;
                                }

                                else
                                {
                                  v497 = __nwlog_obj();
                                  v498 = v635;
                                  if (!os_log_type_enabled(v497, v635))
                                  {
                                    goto LABEL_1084;
                                  }

                                  *buf = 136446210;
                                  *&buf[4] = "nw_http1_connection_send_final_chunk";
                                  v499 = "%{public}s called with null output_handler, backtrace limit exceeded";
LABEL_1082:
                                  v577 = v497;
                                  v578 = v498;
                                }

                                _os_log_impl(&dword_181A37000, v577, v578, v499, buf, 0xCu);
                                goto LABEL_1084;
                              }
                            }
                          }

LABEL_427:
                          *(v207 + 80) = 0;
                          *(v207 + 88) = 0;
                          nw_frame_cache_return_frame(v6 + 696, v207);
                          v207 = *v206;
                          if (!*v206)
                          {
                            goto LABEL_769;
                          }

                          continue;
                        }

LABEL_753:
                        if ((*(v6 + 158) & 1) == 0)
                        {
                          v420 = __nwlog_obj();
                          if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
                          {
                            v421 = *(v6 + 488);
                            v422 = *(*(v6 + 480) + 372);
                            v423 = *(v6 + 860);
                            if (v421)
                            {
                              LODWORD(v421) = *(v421 + 424);
                            }

                            *buf = 136448002;
                            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                            *&buf[12] = 2082;
                            *&buf[14] = v614;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *v626 = v422;
                            *&v626[4] = 1024;
                            *&v626[6] = v423;
                            *v627 = 1024;
                            *&v627[2] = v421;
                            *&v627[6] = 1024;
                            *&v627[8] = v213;
                            *&v627[12] = 1024;
                            *&v627[14] = v331;
                            _os_log_impl(&dword_181A37000, v420, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> could not send pending output frame of length %u sent %u", buf, 0x3Eu);
                          }
                        }

                        v207 = v608;
                        v424 = v608;
                        v425 = v331;
                        goto LABEL_768;
                      }

                      while (1)
                      {
                        v241 = *(v239 + 32);
                        if (v241 || *(v239 + 40))
                        {
                          v242 = *(v239 + 112);
                          if (!v242)
                          {
                            goto LABEL_482;
                          }
                        }

                        else
                        {
                          v241 = 0;
                          v242 = *(v239 + 112);
                          if (!v242)
                          {
                            goto LABEL_482;
                          }
                        }

                        if ((*(v239 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v239, *(v239 + 88)))
                        {
                          LODWORD(v242) = 0;
LABEL_482:
                          v244 = 0;
                          goto LABEL_483;
                        }

                        LODWORD(v242) = *(v239 + 52);
                        v243 = *(v239 + 56);
                        if (v242)
                        {
                          LODWORD(v242) = v242 - (v243 + *(v239 + 60));
                        }

                        v244 = (*(v239 + 112) + v243);
LABEL_483:
                        if (v242 >= v233)
                        {
                          v245 = v233;
                        }

                        else
                        {
                          v245 = v242;
                        }

                        memcpy(v244, v214, v245);
                        v233 -= v245;
                        v214 += v245;
                        if (!nw_frame_claim(v239, v246, v245, 0))
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_connection_send_bytes";
                          *&buf[12] = 1024;
                          *&buf[14] = v245;
                          v252 = _os_log_send_and_compose_impl();
                          LOBYTE(v629) = 16;
                          LOBYTE(v621) = 0;
                          if (!__nwlog_fault(v252, &v629, &v621))
                          {
                            goto LABEL_507;
                          }

                          if (v629 == 17)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v253 = gLogObj;
                            v254 = v629;
                            if (os_log_type_enabled(gLogObj, v629))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v245;
                              v255 = v253;
                              v256 = v254;
                              v257 = "%{public}s claiming frame with %u bytes failed";
                              goto LABEL_506;
                            }

                            goto LABEL_507;
                          }

                          if (v621 != 1)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v262 = gLogObj;
                            v263 = v629;
                            if (!os_log_type_enabled(gLogObj, v629))
                            {
                              goto LABEL_507;
                            }

                            *buf = 136446466;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 1024;
                            *&buf[14] = v245;
                            v255 = v262;
                            v256 = v263;
                            v257 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
LABEL_506:
                            _os_log_impl(&dword_181A37000, v255, v256, v257, buf, 0x12u);
                            goto LABEL_507;
                          }

                          v258 = __nw_create_backtrace_string();
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v259 = gLogObj;
                          v260 = v629;
                          v261 = os_log_type_enabled(gLogObj, v629);
                          if (v258)
                          {
                            if (v261)
                            {
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v245;
                              *&buf[18] = 2082;
                              *&buf[20] = v258;
                              _os_log_impl(&dword_181A37000, v259, v260, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                            }

                            free(v258);
                            goto LABEL_507;
                          }

                          if (v261)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 1024;
                            *&buf[14] = v245;
                            v255 = v259;
                            v256 = v260;
                            v257 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                            goto LABEL_506;
                          }

LABEL_507:
                          if (v252)
                          {
                            free(v252);
                          }

                          v6 = v615;
LABEL_510:
                          v264 = v624[1];
                          v265 = *v264;
                          v213 = v237;
                          if (*v264)
                          {
                            nw_frame_set_metadata(*v264, 0, 0, v617);
                            if (v617)
                            {
                              if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
                              {
                                v272 = __nwlog_obj();
                                if (os_log_type_enabled(v272, OS_LOG_TYPE_DEBUG))
                                {
                                  v273 = *(v6 + 488);
                                  if (v273)
                                  {
                                    LODWORD(v273) = *(v273 + 424);
                                  }

                                  v274 = *(*(v6 + 480) + 372);
                                  v275 = *(v6 + 860);
                                  *buf = 136447746;
                                  *&buf[4] = "nw_http1_connection_send_bytes";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v614;
                                  *&buf[22] = 2080;
                                  *&buf[24] = " ";
                                  *&buf[32] = 1024;
                                  *v626 = v274;
                                  *&v626[4] = 1024;
                                  *&v626[6] = v275;
                                  *v627 = 1024;
                                  *&v627[2] = v273;
                                  *&v627[6] = 2048;
                                  *&v627[8] = v265;
                                  _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> setting complete on last output frame %p", buf, 0x3Cu);
                                }
                              }
                            }
                          }

                          nw_protocol_finalize_output_frames(v232, &v623);
                          if (__buf)
                          {
                            v629 = 0;
                            v630 = &v629;
                            v631 = 0x2000000000;
                            v632 = 0;
                            v635 = MEMORY[0x1E69E9820];
                            v636 = 0x40000000;
                            v637 = ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke;
                            v638 = &unk_1E6A32B10;
                            v639 = &v629;
                            do
                            {
                              v266 = __buf;
                              if (!__buf)
                              {
                                break;
                              }

                              v267 = *(__buf + 32);
                              v268 = *(__buf + 40);
                              v269 = (v267 + 40);
                              if (!v267)
                              {
                                v269 = &p_buf;
                              }

                              *v269 = v268;
                              *v268 = v267;
                              *(v266 + 32) = 0;
                              *(v266 + 40) = 0;
                            }

                            while ((v637(&v635) & 1) != 0);
                            if ((*(v6 + 158) & 1) == 0)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v270 = gLogObj;
                              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                              {
                                v271 = *(v6 + 488);
                                if (v271)
                                {
                                  LODWORD(v271) = *(v271 + 424);
                                }

                                v234 = *(*(v6 + 480) + 372);
                                v235 = *(v6 + 860);
                                v236 = *(v630 + 6);
                                *buf = 136447746;
                                *&buf[4] = "nw_http1_connection_send_bytes";
                                *&buf[12] = 2082;
                                *&buf[14] = v614;
                                *&buf[22] = 2080;
                                *&buf[24] = " ";
                                *&buf[32] = 1024;
                                *v626 = v234;
                                *&v626[4] = 1024;
                                *&v626[6] = v235;
                                *v627 = 1024;
                                *&v627[2] = v271;
                                *&v627[6] = 1024;
                                *&v627[8] = v236;
                                _os_log_impl(&dword_181A37000, v270, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to use %u frames, marking as failed", buf, 0x38u);
                              }
                            }

                            _Block_object_dispose(&v629, 8);
                          }

                          if (!v233)
                          {
                            v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            v206 = *typea;
                            goto LABEL_612;
                          }

                          goto LABEL_468;
                        }

                        nw_frame_collapse(v239);
                        nw_frame_unclaim(v239, v247, v245, 0);
                        v248 = *(v239 + 32);
                        v249 = *(v239 + 40);
                        v250 = (v248 + 40);
                        if (!v248)
                        {
                          v250 = &p_buf;
                        }

                        *v250 = v249;
                        *v249 = v248;
                        v251 = v624;
                        *(v239 + 32) = 0;
                        *(v239 + 40) = v251;
                        *v251 = v239;
                        v624 = (v239 + 32);
                        if (v241)
                        {
                          v239 = v241;
                          if (v233)
                          {
                            continue;
                          }
                        }

                        goto LABEL_510;
                      }
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v217 = _os_log_send_and_compose_impl();
                    LOBYTE(v629) = 16;
                    LOBYTE(__buf) = 0;
                    if (__nwlog_fault(v217, &v629, &__buf))
                    {
                      if (v629 == 17)
                      {
                        v360 = __nwlog_obj();
                        v361 = v629;
                        if (!os_log_type_enabled(v360, v629))
                        {
                          goto LABEL_714;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        v221 = v360;
                        v222 = v361;
                        v223 = "%{public}s called with null output_handler";
                        goto LABEL_713;
                      }

                      if (__buf != 1)
                      {
                        v389 = __nwlog_obj();
                        v390 = v629;
                        if (!os_log_type_enabled(v389, v629))
                        {
                          goto LABEL_714;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        v221 = v389;
                        v222 = v390;
                        v223 = "%{public}s called with null output_handler, backtrace limit exceeded";
                        goto LABEL_713;
                      }

                      v366 = __nw_create_backtrace_string();
                      v376 = __nwlog_obj();
                      v377 = v629;
                      v378 = os_log_type_enabled(v376, v629);
                      if (!v366)
                      {
                        v6 = v615;
                        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        v206 = *typea;
                        if (!v378)
                        {
                          goto LABEL_714;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        v221 = v376;
                        v222 = v377;
                        v223 = "%{public}s called with null output_handler, no backtrace";
                        goto LABEL_713;
                      }

                      if (v378)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        *&buf[12] = 2082;
                        *&buf[14] = v366;
                        v370 = v376;
                        v371 = v377;
                        v372 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                        goto LABEL_685;
                      }

LABEL_686:
                      free(v366);
                      v6 = v615;
                      v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                      v206 = *typea;
                    }

LABEL_714:
                    if (v217)
                    {
                      free(v217);
                    }

                    v331 = 0;
                    if (!v213)
                    {
                      goto LABEL_612;
                    }

                    goto LABEL_753;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  v217 = _os_log_send_and_compose_impl();
                  LOBYTE(v629) = 16;
                  LOBYTE(__buf) = 0;
                  if (!__nwlog_fault(v217, &v629, &__buf))
                  {
                    goto LABEL_714;
                  }

                  if (v629 == 17)
                  {
                    v358 = __nwlog_obj();
                    v359 = v629;
                    if (!os_log_type_enabled(v358, v629))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v221 = v358;
                    v222 = v359;
                    v223 = "%{public}s called with null length";
                    goto LABEL_713;
                  }

                  if (__buf != 1)
                  {
                    v387 = __nwlog_obj();
                    v388 = v629;
                    if (!os_log_type_enabled(v387, v629))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v221 = v387;
                    v222 = v388;
                    v223 = "%{public}s called with null length, backtrace limit exceeded";
                    goto LABEL_713;
                  }

                  v366 = __nw_create_backtrace_string();
                  v373 = __nwlog_obj();
                  v374 = v629;
                  v375 = os_log_type_enabled(v373, v629);
                  if (!v366)
                  {
                    v6 = v615;
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v206 = *typea;
                    if (!v375)
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v221 = v373;
                    v222 = v374;
                    v223 = "%{public}s called with null length, no backtrace";
                    goto LABEL_713;
                  }

                  if (!v375)
                  {
                    goto LABEL_686;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  *&buf[12] = 2082;
                  *&buf[14] = v366;
                  v370 = v373;
                  v371 = v374;
                  v372 = "%{public}s called with null length, dumping backtrace:%{public}s";
                }

                else
                {
LABEL_459:
                  v617 = 0;
                  v608 = v207;
                  if (v214)
                  {
                    goto LABEL_460;
                  }

LABEL_450:
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  v217 = _os_log_send_and_compose_impl();
                  LOBYTE(v629) = 16;
                  LOBYTE(__buf) = 0;
                  if (!__nwlog_fault(v217, &v629, &__buf))
                  {
                    goto LABEL_714;
                  }

                  if (v629 == 17)
                  {
                    v219 = __nwlog_obj();
                    v220 = v629;
                    if (!os_log_type_enabled(v219, v629))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v221 = v219;
                    v222 = v220;
                    v223 = "%{public}s called with null buffer";
LABEL_713:
                    _os_log_impl(&dword_181A37000, v221, v222, v223, buf, 0xCu);
                    goto LABEL_714;
                  }

                  if (__buf != 1)
                  {
                    v385 = __nwlog_obj();
                    v386 = v629;
                    if (!os_log_type_enabled(v385, v629))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v221 = v385;
                    v222 = v386;
                    v223 = "%{public}s called with null buffer, backtrace limit exceeded";
                    goto LABEL_713;
                  }

                  v366 = __nw_create_backtrace_string();
                  v367 = __nwlog_obj();
                  v368 = v629;
                  v369 = os_log_type_enabled(v367, v629);
                  if (!v366)
                  {
                    v6 = v615;
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v206 = *typea;
                    if (!v369)
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v221 = v367;
                    v222 = v368;
                    v223 = "%{public}s called with null buffer, no backtrace";
                    goto LABEL_713;
                  }

                  if (!v369)
                  {
                    goto LABEL_686;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  *&buf[12] = 2082;
                  *&buf[14] = v366;
                  v370 = v367;
                  v371 = v368;
                  v372 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
                }

LABEL_685:
                _os_log_impl(&dword_181A37000, v370, v371, v372, buf, 0x16u);
                goto LABEL_686;
              }
            }
          }

          else
          {
            v214 = 0;
            v206 = v322;
            if ((*(v207 + 204) & 4) == 0)
            {
              goto LABEL_640;
            }
          }

          v340 = *(v207 + 216);
          *(v207 + 208) = v6;
          *(v207 + 216) = v340 & 0xFC | 1;
          goto LABEL_444;
        }

LABEL_629:
        nw_frame_claim(v207, v284, 0, v315);
        goto LABEL_630;
      }

      break;
    }

    v609 = v207;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_drain_outbound_frames";
    *&buf[12] = 2082;
    *&buf[14] = "unused_bytes";
    *&buf[22] = 2048;
    *&buf[24] = v314;
    *&buf[32] = 2048;
    *v626 = v310 + v314;
    v316 = _os_log_send_and_compose_impl();
    LOBYTE(v635) = 16;
    LOBYTE(v629) = 0;
    if (__nwlog_fault(v316, &v635, &v629))
    {
      if (v635 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v317 = gLogObj;
        v318 = v635;
        if (os_log_type_enabled(gLogObj, v635))
        {
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = "unused_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v314;
          *&buf[32] = 2048;
          *v626 = v310 + v314;
          v319 = v317;
          v320 = v318;
          v321 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_625:
          _os_log_impl(&dword_181A37000, v319, v320, v321, buf, 0x2Au);
        }
      }

      else if (v629 == 1)
      {
        v323 = __nw_create_backtrace_string();
        v324 = __nwlog_obj();
        v325 = v635;
        v326 = os_log_type_enabled(v324, v635);
        if (v323)
        {
          if (v326)
          {
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2082;
            *&buf[14] = "unused_bytes";
            *&buf[22] = 2048;
            *&buf[24] = v314;
            *&buf[32] = 2048;
            *v626 = v315;
            *&v626[8] = 2082;
            *v627 = v323;
            _os_log_impl(&dword_181A37000, v324, v325, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v323);
          goto LABEL_626;
        }

        if (v326)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = "unused_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v314;
          *&buf[32] = 2048;
          *v626 = v315;
          v319 = v324;
          v320 = v325;
          v321 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_625;
        }
      }

      else
      {
        v336 = __nwlog_obj();
        v337 = v635;
        if (os_log_type_enabled(v336, v635))
        {
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = "unused_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v314;
          *&buf[32] = 2048;
          *v626 = v310 + v314;
          v319 = v336;
          v320 = v337;
          v321 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_625;
        }
      }
    }

LABEL_626:
    if (v316)
    {
      free(v316);
    }

    LODWORD(v315) = -1;
    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v322 = *typea;
    v207 = v609;
    v213 = v288;
    goto LABEL_629;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_connection_drain_outbound_frames";
  v488 = _os_log_send_and_compose_impl();
  LOBYTE(v635) = 16;
  LOBYTE(v629) = 0;
  if (__nwlog_fault(v488, &v635, &v629))
  {
    if (v635 == 17)
    {
      v489 = __nwlog_obj();
      v490 = v635;
      if (!os_log_type_enabled(v489, v635))
      {
        goto LABEL_959;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v491 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_957:
      v540 = v489;
      v541 = v490;
LABEL_958:
      _os_log_impl(&dword_181A37000, v540, v541, v491, buf, 0xCu);
      goto LABEL_959;
    }

    if (v629 != 1)
    {
      v489 = __nwlog_obj();
      v490 = v635;
      if (!os_log_type_enabled(v489, v635))
      {
        goto LABEL_959;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v491 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
      goto LABEL_957;
    }

    v500 = __nw_create_backtrace_string();
    v501 = __nwlog_obj();
    v502 = v635;
    v503 = os_log_type_enabled(v501, v635);
    if (v500)
    {
      if (v503)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_drain_outbound_frames";
        *&buf[12] = 2082;
        *&buf[14] = v500;
        _os_log_impl(&dword_181A37000, v501, v502, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v500);
    }

    else if (v503)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v491 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
      v540 = v501;
      v541 = v502;
      goto LABEL_958;
    }
  }

LABEL_959:
  if (v488)
  {
    free(v488);
  }

  v6 = v615;
  v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (v12)
  {
LABEL_772:
    if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
    {
      v484 = __nwlog_obj();
      if (os_log_type_enabled(v484, OS_LOG_TYPE_DEBUG))
      {
        v485 = *(v6 + 488);
        v486 = *(*(v6 + 480) + 372);
        v487 = *(v6 + 860);
        if (v485)
        {
          LODWORD(v485) = *(v485 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v626 = v486;
        *&v626[4] = 1024;
        *&v626[6] = v487;
        *v627 = 1024;
        *&v627[2] = v485;
        _os_log_impl(&dword_181A37000, v484, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> initial outbound frame finalized, triggering output_available", buf, 0x32u);
        v6 = v615;
      }
    }

    v434 = *(v6 + 488);
    if (v434)
    {
      nw_protocol_output_available(*(v434 + 48), v434);
    }

    else
    {
      nw_protocol_output_available(0, 0);
    }
  }
}